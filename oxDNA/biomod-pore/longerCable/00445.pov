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
	<24.417587, 35.057827, 35.228867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.149714, 35.020626, 34.934147>,  <23.988989, 34.998306, 34.757317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.149714, 35.020626, 34.934147>,  <24.417587, 35.057827, 35.228867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.149714, 35.020626, 34.934147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137123, -0.959583, 0.245759,
		-0.729878, 0.265613, 0.629864,
		-0.669683, -0.093005, -0.736800,
		23.948809, 34.992725, 34.713108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.955917, 35.166946, 35.737930>,  <24.417587, 35.057827, 35.228867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.955917, 35.166946, 35.737930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180321, 34.847652, 35.650215>,  <25.314962, 34.656075, 35.597588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.180321, 34.847652, 35.650215>,  <24.955917, 35.166946, 35.737930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.180321, 34.847652, 35.650215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428539, 0.053401, 0.901944,
		-0.708256, -0.599970, 0.372035,
		0.561006, -0.798238, -0.219289,
		25.348623, 34.608181, 35.584427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.781363, 34.545116, 36.093704>,  <24.955917, 35.166946, 35.737930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.781363, 34.545116, 36.093704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177561, 34.540668, 36.038868>,  <25.415279, 34.538002, 36.005966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177561, 34.540668, 36.038868>,  <24.781363, 34.545116, 36.093704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.177561, 34.540668, 36.038868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134182, -0.140696, 0.980918,
		-0.030190, -0.989991, -0.137868,
		0.990496, -0.011114, -0.137087,
		25.474710, 34.537334, 35.997742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.982353, 34.132721, 36.602520>,  <24.781363, 34.545116, 36.093704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.982353, 34.132721, 36.602520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323704, 34.307190, 36.488327>,  <25.528515, 34.411873, 36.419811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323704, 34.307190, 36.488327>,  <24.982353, 34.132721, 36.602520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.323704, 34.307190, 36.488327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304743, 0.026897, 0.952055,
		0.422943, -0.899459, -0.109968,
		0.853376, 0.436177, -0.285480,
		25.579716, 34.438042, 36.402683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.659897, 33.724319, 36.897934>,  <24.982353, 34.132721, 36.602520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.659897, 33.724319, 36.897934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714188, 34.117233, 36.846237>,  <25.746761, 34.352982, 36.815220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.714188, 34.117233, 36.846237>,  <25.659897, 33.724319, 36.897934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.714188, 34.117233, 36.846237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413414, 0.062401, 0.908403,
		0.900371, -0.176725, -0.397618,
		0.135725, 0.982280, -0.129245,
		25.754906, 34.411919, 36.807465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.406107, 33.952785, 36.955639>,  <25.659897, 33.724319, 36.897934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.406107, 33.952785, 36.955639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156889, 34.245770, 37.065418>,  <26.007359, 34.421558, 37.131287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156889, 34.245770, 37.065418>,  <26.406107, 33.952785, 36.955639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.156889, 34.245770, 37.065418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394781, -0.008438, 0.918737,
		0.675251, 0.680761, -0.283903,
		-0.623044, 0.732457, 0.274449,
		25.969976, 34.465508, 37.147755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.821846, 34.556667, 37.282227>,  <26.406107, 33.952785, 36.955639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.821846, 34.556667, 37.282227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455957, 34.560509, 37.443817>,  <26.236425, 34.562813, 37.540771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455957, 34.560509, 37.443817>,  <26.821846, 34.556667, 37.282227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455957, 34.560509, 37.443817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401003, -0.101724, 0.910411,
		0.049836, 0.994766, 0.089199,
		-0.914720, 0.009602, 0.403973,
		26.181541, 34.563389, 37.565010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.747938, 34.994877, 37.869732>,  <26.821846, 34.556667, 37.282227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.747938, 34.994877, 37.869732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497484, 34.685097, 37.905910>,  <26.347212, 34.499229, 37.927616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497484, 34.685097, 37.905910>,  <26.747938, 34.994877, 37.869732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497484, 34.685097, 37.905910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426308, -0.242904, 0.871354,
		-0.652850, 0.584145, 0.482246,
		-0.626137, -0.774449, 0.090446,
		26.309643, 34.452763, 37.933044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.552311, 34.996559, 38.539135>,  <26.747938, 34.994877, 37.869732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.552311, 34.996559, 38.539135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496241, 34.625214, 38.401447>,  <26.462599, 34.402405, 38.318836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.496241, 34.625214, 38.401447>,  <26.552311, 34.996559, 38.539135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.496241, 34.625214, 38.401447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376297, -0.371516, 0.848750,
		-0.915833, -0.010553, 0.401419,
		-0.140177, -0.928366, -0.344218,
		26.454187, 34.346703, 38.298183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.106453, 34.650002, 39.078835>,  <26.552311, 34.996559, 38.539135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.106453, 34.650002, 39.078835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310619, 34.376537, 38.870186>,  <26.433119, 34.212460, 38.744995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.310619, 34.376537, 38.870186>,  <26.106453, 34.650002, 39.078835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.310619, 34.376537, 38.870186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377476, -0.366894, 0.850236,
		-0.772649, -0.630874, 0.070796,
		0.510417, -0.683657, -0.521620,
		26.463745, 34.171440, 38.713699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.929249, 33.982845, 39.341805>,  <26.106453, 34.650002, 39.078835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.929249, 33.982845, 39.341805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277962, 33.921333, 39.155750>,  <26.487188, 33.884426, 39.044117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277962, 33.921333, 39.155750>,  <25.929249, 33.982845, 39.341805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277962, 33.921333, 39.155750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423737, -0.239800, 0.873466,
		-0.245904, -0.958558, -0.143867,
		0.871767, -0.153827, -0.465145,
		26.539495, 33.875202, 39.016209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.308615, 33.299274, 39.531384>,  <25.929249, 33.982845, 39.341805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.308615, 33.299274, 39.531384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592808, 33.550922, 39.405254>,  <26.763323, 33.701912, 39.329578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592808, 33.550922, 39.405254>,  <26.308615, 33.299274, 39.531384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592808, 33.550922, 39.405254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434956, -0.040341, 0.899548,
		0.553200, -0.776263, -0.302300,
		0.710480, 0.629117, -0.315324,
		26.805952, 33.739658, 39.310658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945541, 32.948730, 39.567936>,  <26.308615, 33.299274, 39.531384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945541, 32.948730, 39.567936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.988668, 33.344807, 39.603477>,  <27.014545, 33.582455, 39.624802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.988668, 33.344807, 39.603477>,  <26.945541, 32.948730, 39.567936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.988668, 33.344807, 39.603477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413956, -0.125971, 0.901539,
		0.903889, -0.060422, -0.423478,
		0.107819, 0.990192, 0.088852,
		27.021013, 33.641865, 39.630135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565413, 33.477180, 39.568554>,  <26.945541, 32.948730, 39.567936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565413, 33.477180, 39.568554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343172, 33.715080, 39.800961>,  <27.209827, 33.857819, 39.940407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343172, 33.715080, 39.800961>,  <27.565413, 33.477180, 39.568554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343172, 33.715080, 39.800961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747149, 0.663732, 0.035052,
		-0.364794, 0.453582, -0.813135,
		-0.555602, 0.594746, 0.581019,
		27.176491, 33.893505, 39.975266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.415833, 34.252022, 39.380402>,  <27.565413, 33.477180, 39.568554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.415833, 34.252022, 39.380402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436024, 34.196072, 39.775955>,  <27.448137, 34.162502, 40.013287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436024, 34.196072, 39.775955>,  <27.415833, 34.252022, 39.380402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436024, 34.196072, 39.775955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772470, 0.633071, 0.050117,
		-0.633042, 0.761352, 0.140005,
		0.050476, -0.139876, 0.988882,
		27.451166, 34.154110, 40.072620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741459, 34.221630, 38.669754>,  <27.415833, 34.252022, 39.380402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741459, 34.221630, 38.669754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521364, 33.911221, 38.793056>,  <27.389307, 33.724976, 38.867039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.521364, 33.911221, 38.793056>,  <27.741459, 34.221630, 38.669754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.521364, 33.911221, 38.793056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633862, 0.147872, -0.759179,
		0.543560, -0.613122, -0.573258,
		-0.550238, -0.776025, 0.308257,
		27.356293, 33.678413, 38.885532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.604523, 33.613445, 38.194206>,  <27.741459, 34.221630, 38.669754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.604523, 33.613445, 38.194206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298027, 33.677547, 38.443104>,  <27.114130, 33.716011, 38.592445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.298027, 33.677547, 38.443104>,  <27.604523, 33.613445, 38.194206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298027, 33.677547, 38.443104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611678, 0.114659, -0.782754,
		-0.196790, -0.980393, 0.010172,
		-0.766239, 0.160260, 0.622248,
		27.068155, 33.725624, 38.629780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013460, 33.145424, 38.044556>,  <27.604523, 33.613445, 38.194206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013460, 33.145424, 38.044556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850307, 33.463223, 38.224514>,  <26.752417, 33.653904, 38.332489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850307, 33.463223, 38.224514>,  <27.013460, 33.145424, 38.044556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.850307, 33.463223, 38.224514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541467, 0.186260, -0.819830,
		-0.735151, -0.577995, 0.354224,
		-0.407879, 0.794499, 0.449895,
		26.727943, 33.701572, 38.359482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371840, 33.141346, 37.799870>,  <27.013460, 33.145424, 38.044556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371840, 33.141346, 37.799870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407505, 33.504944, 37.962734>,  <26.428905, 33.723103, 38.060452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.407505, 33.504944, 37.962734>,  <26.371840, 33.141346, 37.799870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.407505, 33.504944, 37.962734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530654, 0.389293, -0.752899,
		-0.842885, -0.148927, 0.517074,
		0.089166, 0.908995, 0.407158,
		26.434256, 33.777641, 38.084881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726748, 33.432278, 37.805862>,  <26.371840, 33.141346, 37.799870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.726748, 33.432278, 37.805862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.981552, 33.739799, 37.783367>,  <26.134436, 33.924313, 37.769871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.981552, 33.739799, 37.783367>,  <25.726748, 33.432278, 37.805862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.981552, 33.739799, 37.783367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545256, 0.397813, -0.737862,
		-0.544897, 0.500690, 0.672604,
		0.637011, 0.768800, -0.056237,
		26.172655, 33.970440, 37.766495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.545986, 34.055916, 38.183498>,  <25.726748, 33.432278, 37.805862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.545986, 34.055916, 38.183498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648722, 34.437557, 38.245110>,  <25.710363, 34.666542, 38.282078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.648722, 34.437557, 38.245110>,  <25.545986, 34.055916, 38.183498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.648722, 34.437557, 38.245110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088727, 0.135425, -0.986807,
		-0.962373, 0.267115, -0.049872,
		0.256837, 0.954102, 0.154030,
		25.725773, 34.723789, 38.291317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.228275, 34.490631, 37.756031>,  <25.545986, 34.055916, 38.183498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.228275, 34.490631, 37.756031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563936, 34.685955, 37.851849>,  <25.765333, 34.803150, 37.909340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563936, 34.685955, 37.851849>,  <25.228275, 34.490631, 37.756031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.563936, 34.685955, 37.851849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178126, 0.169392, -0.969318,
		-0.513905, 0.856072, 0.055165,
		0.839150, 0.488311, 0.239540,
		25.815681, 34.832447, 37.923710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.268345, 35.245308, 37.420162>,  <25.228275, 34.490631, 37.756031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.268345, 35.245308, 37.420162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.626228, 35.083527, 37.495972>,  <25.840958, 34.986458, 37.541458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.626228, 35.083527, 37.495972>,  <25.268345, 35.245308, 37.420162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.626228, 35.083527, 37.495972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156737, -0.113031, -0.981151,
		0.418250, 0.907548, -0.037737,
		0.894707, -0.404452, 0.189522,
		25.894640, 34.962193, 37.552830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.867695, 35.635712, 37.034050>,  <25.268345, 35.245308, 37.420162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.867695, 35.635712, 37.034050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944868, 35.247849, 37.094101>,  <25.991173, 35.015129, 37.130131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944868, 35.247849, 37.094101>,  <25.867695, 35.635712, 37.034050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944868, 35.247849, 37.094101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069850, -0.139042, -0.987820,
		0.978722, 0.201071, 0.040905,
		0.192935, -0.969659, 0.150128,
		26.002748, 34.956951, 37.139141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.338926, 35.534042, 36.518459>,  <25.867695, 35.635712, 37.034050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.338926, 35.534042, 36.518459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.183590, 35.178329, 36.615101>,  <26.090389, 34.964901, 36.673088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.183590, 35.178329, 36.615101>,  <26.338926, 35.534042, 36.518459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.183590, 35.178329, 36.615101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008158, -0.258857, -0.965881,
		0.921480, -0.377061, 0.093269,
		-0.388340, -0.889279, 0.241608,
		26.067087, 34.911545, 36.687584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744299, 35.013042, 36.205505>,  <26.338926, 35.534042, 36.518459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.744299, 35.013042, 36.205505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.387196, 34.836960, 36.243874>,  <26.172934, 34.731312, 36.266895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.387196, 34.836960, 36.243874>,  <26.744299, 35.013042, 36.205505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.387196, 34.836960, 36.243874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025000, -0.164173, -0.986115,
		0.449841, -0.882760, 0.135561,
		-0.892759, -0.440206, 0.095921,
		26.119368, 34.704899, 36.272652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.825693, 34.457088, 35.828987>,  <26.744299, 35.013042, 36.205505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.825693, 34.457088, 35.828987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429632, 34.485672, 35.877136>,  <26.191996, 34.502823, 35.906025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.429632, 34.485672, 35.877136>,  <26.825693, 34.457088, 35.828987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.429632, 34.485672, 35.877136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110262, 0.131656, -0.985144,
		-0.086248, -0.988716, -0.122480,
		-0.990153, 0.071462, 0.120373,
		26.132586, 34.507111, 35.913250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359657, 33.985989, 35.448761>,  <26.825693, 34.457088, 35.828987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359657, 33.985989, 35.448761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130110, 34.312626, 35.473587>,  <25.992380, 34.508606, 35.488483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.130110, 34.312626, 35.473587>,  <26.359657, 33.985989, 35.448761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.130110, 34.312626, 35.473587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033568, 0.099175, -0.994504,
		-0.818258, -0.568633, -0.084324,
		-0.573870, 0.816591, 0.062063,
		25.957949, 34.557602, 35.492207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.724087, 33.928772, 35.071785>,  <26.359657, 33.985989, 35.448761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.724087, 33.928772, 35.071785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811150, 34.319183, 35.071846>,  <25.863388, 34.553429, 35.071880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.811150, 34.319183, 35.071846>,  <25.724087, 33.928772, 35.071785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.811150, 34.319183, 35.071846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152267, 0.034108, -0.987751,
		-0.964074, 0.214969, 0.156041,
		0.217658, 0.976025, 0.000150,
		25.876448, 34.611992, 35.071892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.302050, 34.305603, 34.546757>,  <25.724087, 33.928772, 35.071785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.302050, 34.305603, 34.546757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587692, 34.574741, 34.624046>,  <25.759077, 34.736225, 34.670422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.587692, 34.574741, 34.624046>,  <25.302050, 34.305603, 34.546757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.587692, 34.574741, 34.624046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071173, 0.204805, -0.976212,
		-0.696411, 0.710870, 0.098364,
		0.714105, 0.672844, 0.193223,
		25.801924, 34.776596, 34.682014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.010324, 35.024750, 34.360359>,  <25.302050, 34.305603, 34.546757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.010324, 35.024750, 34.360359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.405285, 34.974812, 34.321480>,  <25.642262, 34.944847, 34.298153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.405285, 34.974812, 34.321480>,  <25.010324, 35.024750, 34.360359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.405285, 34.974812, 34.321480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052688, 0.319812, -0.946015,
		0.149195, 0.939219, 0.309206,
		0.987403, -0.124849, -0.097200,
		25.701506, 34.937355, 34.292320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.277987, 35.565514, 34.004322>,  <25.010324, 35.024750, 34.360359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.277987, 35.565514, 34.004322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.541302, 35.273998, 33.928928>,  <25.699291, 35.099091, 33.883694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.541302, 35.273998, 33.928928>,  <25.277987, 35.565514, 34.004322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.541302, 35.273998, 33.928928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045521, 0.288472, -0.956406,
		0.751387, 0.621012, 0.223073,
		0.658290, -0.728786, -0.188485,
		25.738789, 35.055363, 33.872383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.875818, 35.903553, 33.706249>,  <25.277987, 35.565514, 34.004322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.875818, 35.903553, 33.706249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.888319, 35.522022, 33.586754>,  <25.895821, 35.293106, 33.515057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.888319, 35.522022, 33.586754>,  <25.875818, 35.903553, 33.706249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.888319, 35.522022, 33.586754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040670, 0.299849, -0.953119,
		0.998684, 0.017639, 0.048163,
		0.031253, -0.953824, -0.298737,
		25.897696, 35.235874, 33.497131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454613, 35.767925, 33.217846>,  <25.875818, 35.903553, 33.706249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.454613, 35.767925, 33.217846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.209040, 35.459286, 33.151245>,  <26.061695, 35.274101, 33.111286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.209040, 35.459286, 33.151245>,  <26.454613, 35.767925, 33.217846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.209040, 35.459286, 33.151245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066287, 0.260586, -0.963172,
		0.786571, -0.580286, -0.211129,
		-0.613932, -0.771598, -0.166504,
		26.024860, 35.227806, 33.101295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.674141, 35.526775, 32.535313>,  <26.454613, 35.767925, 33.217846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.674141, 35.526775, 32.535313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298153, 35.414062, 32.612316>,  <26.072561, 35.346436, 32.658516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298153, 35.414062, 32.612316>,  <26.674141, 35.526775, 32.535313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298153, 35.414062, 32.612316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253700, 0.199710, -0.946442,
		0.228249, -0.938463, -0.259210,
		-0.939968, -0.281786, 0.192504,
		26.016163, 35.329529, 32.670067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691900, 35.159481, 31.822672>,  <26.674141, 35.526775, 32.535313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.691900, 35.159481, 31.822672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700188, 34.891560, 31.525770>,  <26.705160, 34.730808, 31.347630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700188, 34.891560, 31.525770>,  <26.691900, 35.159481, 31.822672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.700188, 34.891560, 31.525770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170518, 0.729167, -0.662751,
		0.985137, 0.140300, -0.099104,
		0.020721, -0.669799, -0.742253,
		26.706404, 34.690620, 31.303095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783529, 34.685539, 32.526592>,  <26.691900, 35.159481, 31.822672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.783529, 34.685539, 32.526592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383936, 34.669777, 32.535343>,  <26.144180, 34.660320, 32.540592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383936, 34.669777, 32.535343>,  <26.783529, 34.685539, 32.526592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383936, 34.669777, 32.535343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035041, 0.373862, -0.926822,
		0.028345, -0.926647, -0.374863,
		-0.998984, -0.039406, 0.021873,
		26.084240, 34.657955, 32.541904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.593082, 34.364895, 31.934105>,  <26.783529, 34.685539, 32.526592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.593082, 34.364895, 31.934105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256762, 34.549034, 32.048038>,  <26.054970, 34.659519, 32.116398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256762, 34.549034, 32.048038>,  <26.593082, 34.364895, 31.934105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.256762, 34.549034, 32.048038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131123, 0.337309, -0.932218,
		-0.525222, -0.821159, -0.223248,
		-0.840803, 0.460348, 0.284835,
		26.004520, 34.687138, 32.133488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.077341, 34.026745, 31.551348>,  <26.593082, 34.364895, 31.934105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.077341, 34.026745, 31.551348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965626, 34.393406, 31.665709>,  <25.898598, 34.613403, 31.734325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965626, 34.393406, 31.665709>,  <26.077341, 34.026745, 31.551348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.965626, 34.393406, 31.665709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012597, 0.301223, -0.953471,
		-0.960125, -0.262689, -0.095675,
		-0.279286, 0.916657, 0.285902,
		25.881840, 34.668404, 31.751480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.618916, 34.188953, 31.091661>,  <26.077341, 34.026745, 31.551348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.618916, 34.188953, 31.091661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.731934, 34.542976, 31.239634>,  <25.799744, 34.755390, 31.328417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.731934, 34.542976, 31.239634>,  <25.618916, 34.188953, 31.091661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.731934, 34.542976, 31.239634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228412, 0.436626, -0.870164,
		-0.931663, 0.161363, 0.325523,
		0.282545, 0.885053, 0.369931,
		25.816696, 34.808491, 31.350613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.025658, 34.742165, 30.872913>,  <25.618916, 34.188953, 31.091661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.025658, 34.742165, 30.872913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.756639, 35.036751, 30.843773>,  <25.595228, 35.213501, 30.826288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.756639, 35.036751, 30.843773>,  <26.025658, 34.742165, 30.872913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.756639, 35.036751, 30.843773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036575, 0.131394, 0.990655,
		0.739152, 0.663596, -0.115305,
		-0.672545, 0.736462, -0.072849,
		25.554876, 35.257690, 30.821918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.218334, 35.343636, 31.216097>,  <26.025658, 34.742165, 30.872913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.218334, 35.343636, 31.216097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.818510, 35.350094, 31.206173>,  <25.578615, 35.353970, 31.200218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.818510, 35.350094, 31.206173>,  <26.218334, 35.343636, 31.216097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.818510, 35.350094, 31.206173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025902, -0.071397, 0.997112,
		0.014332, 0.997317, 0.071784,
		-0.999562, 0.016150, -0.024810,
		25.518642, 35.354939, 31.198730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912439, 35.828251, 31.559557>,  <26.218334, 35.343636, 31.216097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912439, 35.828251, 31.559557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684784, 35.499466, 31.550961>,  <25.548191, 35.302197, 31.545803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.684784, 35.499466, 31.550961>,  <25.912439, 35.828251, 31.559557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.684784, 35.499466, 31.550961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059795, -0.067441, 0.995930,
		-0.820064, 0.565538, 0.087533,
		-0.569139, -0.821960, -0.021490,
		25.514042, 35.252876, 31.544514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.288885, 35.849926, 32.027889>,  <25.912439, 35.828251, 31.559557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.288885, 35.849926, 32.027889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.448914, 35.488430, 31.966967>,  <25.544930, 35.271534, 31.930412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.448914, 35.488430, 31.966967>,  <25.288885, 35.849926, 32.027889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.448914, 35.488430, 31.966967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108673, -0.118239, 0.987021,
		-0.910019, -0.411428, 0.050908,
		0.400069, -0.903740, -0.152310,
		25.568933, 35.217308, 31.921274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.021883, 35.397720, 32.593700>,  <25.288885, 35.849926, 32.027889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.021883, 35.397720, 32.593700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.355286, 35.222824, 32.458591>,  <25.555326, 35.117886, 32.377525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.355286, 35.222824, 32.458591>,  <25.021883, 35.397720, 32.593700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.355286, 35.222824, 32.458591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150740, -0.408189, 0.900366,
		-0.531551, -0.801376, -0.274318,
		0.833505, -0.437240, -0.337772,
		25.605337, 35.091652, 32.357262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.906979, 34.740562, 32.772552>,  <25.021883, 35.397720, 32.593700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.906979, 34.740562, 32.772552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300566, 34.787819, 32.719116>,  <25.536718, 34.816174, 32.687054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.300566, 34.787819, 32.719116>,  <24.906979, 34.740562, 32.772552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.300566, 34.787819, 32.719116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169310, -0.383498, 0.907889,
		0.056031, -0.915954, -0.397354,
		0.983969, 0.118146, -0.133592,
		25.595757, 34.823261, 32.679039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.276033, 34.178905, 32.941776>,  <24.906979, 34.740562, 32.772552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.276033, 34.178905, 32.941776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513813, 34.496864, 32.990391>,  <25.656481, 34.687637, 33.019562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.513813, 34.496864, 32.990391>,  <25.276033, 34.178905, 32.941776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.513813, 34.496864, 32.990391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266296, -0.337213, 0.902981,
		0.758759, -0.504411, -0.412133,
		0.594450, 0.794894, 0.121541,
		25.692148, 34.735332, 33.026852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072605, 33.930576, 33.189217>,  <25.276033, 34.178905, 32.941776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072605, 33.930576, 33.189217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009626, 34.314781, 33.280972>,  <25.971840, 34.545303, 33.336025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009626, 34.314781, 33.280972>,  <26.072605, 33.930576, 33.189217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.009626, 34.314781, 33.280972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292416, -0.176522, 0.939858,
		0.943241, 0.215052, -0.253078,
		-0.157445, 0.960517, 0.229388,
		25.962393, 34.602936, 33.349789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.530727, 34.070148, 33.571999>,  <26.072605, 33.930576, 33.189217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.530727, 34.070148, 33.571999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282341, 34.369789, 33.664303>,  <26.133310, 34.549572, 33.719685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.282341, 34.369789, 33.664303>,  <26.530727, 34.070148, 33.571999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.282341, 34.369789, 33.664303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254547, -0.085730, 0.963253,
		0.741356, 0.656886, -0.137446,
		-0.620964, 0.749100, 0.230764,
		26.096052, 34.594521, 33.733532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.979942, 34.432095, 33.946404>,  <26.530727, 34.070148, 33.571999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.979942, 34.432095, 33.946404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941656, 34.040260, 34.017109>,  <26.918684, 33.805161, 34.059532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.941656, 34.040260, 34.017109>,  <26.979942, 34.432095, 33.946404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.941656, 34.040260, 34.017109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981185, -0.122759, -0.149017,
		0.167674, 0.159170, 0.972908,
		-0.095714, -0.979589, 0.176759,
		26.912941, 33.746384, 34.070137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463730, 34.087048, 34.525879>,  <26.979942, 34.432095, 33.946404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463730, 34.087048, 34.525879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365641, 33.850266, 34.218777>,  <27.306787, 33.708195, 34.034515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.365641, 33.850266, 34.218777>,  <27.463730, 34.087048, 34.525879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.365641, 33.850266, 34.218777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965684, -0.219037, -0.139558,
		-0.085555, -0.775635, 0.625356,
		-0.245222, -0.591956, -0.767759,
		27.292074, 33.672680, 33.988449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.850800, 33.458675, 34.521576>,  <27.463730, 34.087048, 34.525879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.850800, 33.458675, 34.521576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.747633, 33.576092, 34.153378>,  <27.685734, 33.646542, 33.932457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.747633, 33.576092, 34.153378>,  <27.850800, 33.458675, 34.521576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747633, 33.576092, 34.153378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962004, -0.010326, -0.272840,
		-0.089594, -0.955891, -0.279723,
		-0.257917, 0.293540, -0.920496,
		27.670258, 33.664154, 33.877228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281189, 33.095367, 34.168148>,  <27.850800, 33.458675, 34.521576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281189, 33.095367, 34.168148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154106, 33.401924, 33.944828>,  <28.077856, 33.585857, 33.810837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154106, 33.401924, 33.944828>,  <28.281189, 33.095367, 34.168148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154106, 33.401924, 33.944828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846322, -0.036295, -0.531433,
		-0.427551, -0.641344, -0.637086,
		-0.317708, 0.766395, -0.558302,
		28.058794, 33.631844, 33.777336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.503174, 32.939457, 33.504059>,  <28.281189, 33.095367, 34.168148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.503174, 32.939457, 33.504059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431999, 33.333073, 33.503426>,  <28.389294, 33.569241, 33.503044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.431999, 33.333073, 33.503426>,  <28.503174, 32.939457, 33.504059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.431999, 33.333073, 33.503426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742123, 0.133134, -0.656909,
		-0.646214, -0.118067, -0.753968,
		-0.177938, 0.984041, -0.001587,
		28.378618, 33.628284, 33.502949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275249, 33.343071, 32.836578>,  <28.503174, 32.939457, 33.504059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275249, 33.343071, 32.836578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529509, 33.538651, 33.075535>,  <28.682064, 33.655998, 33.218910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529509, 33.538651, 33.075535>,  <28.275249, 33.343071, 32.836578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.529509, 33.538651, 33.075535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625601, 0.127129, -0.769715,
		-0.452297, 0.862999, -0.225077,
		0.635650, 0.488949, 0.597393,
		28.720203, 33.685333, 33.254753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293858, 33.923779, 32.529144>,  <28.275249, 33.343071, 32.836578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293858, 33.923779, 32.529144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623390, 33.859657, 32.746624>,  <28.821110, 33.821182, 32.877110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.623390, 33.859657, 32.746624>,  <28.293858, 33.923779, 32.529144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623390, 33.859657, 32.746624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566003, 0.284620, -0.773713,
		-0.030715, 0.945142, 0.325213,
		0.823831, -0.160307, 0.543695,
		28.870539, 33.811565, 32.909733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051943, 34.155571, 31.770452>,  <28.293858, 33.923779, 32.529144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051943, 34.155571, 31.770452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074606, 34.506886, 31.960356>,  <28.088203, 34.717674, 32.074299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.074606, 34.506886, 31.960356>,  <28.051943, 34.155571, 31.770452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074606, 34.506886, 31.960356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927282, 0.129958, -0.351083,
		-0.370052, 0.460126, -0.807060,
		0.056659, 0.878291, 0.474758,
		28.091604, 34.770374, 32.102783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756802, 34.232544, 31.872261>,  <28.051943, 34.155571, 31.770452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756802, 34.232544, 31.872261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593758, 34.596889, 31.898155>,  <28.495932, 34.815495, 31.913691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.593758, 34.596889, 31.898155>,  <28.756802, 34.232544, 31.872261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593758, 34.596889, 31.898155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910482, 0.410813, -0.047474,
		-0.069836, 0.039588, -0.996773,
		-0.407608, 0.910860, 0.064734,
		28.471476, 34.870148, 31.917576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126785, 34.651138, 31.412651>,  <28.756802, 34.232544, 31.872261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126785, 34.651138, 31.412651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966280, 34.883404, 31.696009>,  <28.869978, 35.022762, 31.866024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.966280, 34.883404, 31.696009>,  <29.126785, 34.651138, 31.412651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.966280, 34.883404, 31.696009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831888, 0.554697, 0.016536,
		-0.383343, 0.595941, -0.705622,
		-0.401261, 0.580660, 0.708395,
		28.845901, 35.057602, 31.908527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524366, 35.285671, 31.372400>,  <29.126785, 34.651138, 31.412651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524366, 35.285671, 31.372400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321268, 35.312923, 31.715923>,  <29.199409, 35.329273, 31.922037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.321268, 35.312923, 31.715923>,  <29.524366, 35.285671, 31.372400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321268, 35.312923, 31.715923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675089, 0.650768, 0.347500,
		-0.535209, 0.756214, -0.376420,
		-0.507747, 0.068132, 0.858808,
		29.168943, 35.333363, 31.973566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.447386, 36.058907, 31.499786>,  <29.524366, 35.285671, 31.372400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.447386, 36.058907, 31.499786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422012, 35.854233, 31.842516>,  <29.406788, 35.731426, 32.048153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422012, 35.854233, 31.842516>,  <29.447386, 36.058907, 31.499786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422012, 35.854233, 31.842516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579909, 0.679834, 0.448923,
		-0.812208, 0.525358, 0.253609,
		-0.063434, -0.511689, 0.856826,
		29.402983, 35.700726, 32.099564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491495, 36.647270, 31.951330>,  <29.447386, 36.058907, 31.499786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491495, 36.647270, 31.951330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595957, 36.319393, 32.155254>,  <29.658634, 36.122665, 32.277607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.595957, 36.319393, 32.155254>,  <29.491495, 36.647270, 31.951330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.595957, 36.319393, 32.155254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751605, 0.504068, 0.425447,
		-0.605714, 0.272069, 0.747722,
		0.261152, -0.819691, 0.509810,
		29.674303, 36.073486, 32.308197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000799, 36.915855, 32.448433>,  <29.491495, 36.647270, 31.951330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000799, 36.915855, 32.448433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030348, 36.520500, 32.501553>,  <30.048077, 36.283287, 32.533424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030348, 36.520500, 32.501553>,  <30.000799, 36.915855, 32.448433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030348, 36.520500, 32.501553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851150, 0.131884, 0.508085,
		-0.519699, 0.075500, 0.851007,
		0.073874, -0.988386, 0.132802,
		30.052509, 36.223984, 32.541393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236822, 36.791325, 33.109859>,  <30.000799, 36.915855, 32.448433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.236822, 36.791325, 33.109859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337805, 36.454529, 32.919147>,  <30.398394, 36.252453, 32.804722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337805, 36.454529, 32.919147>,  <30.236822, 36.791325, 33.109859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337805, 36.454529, 32.919147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866712, -0.022301, 0.498310,
		-0.430204, -0.539032, 0.724133,
		0.252456, -0.841990, -0.476780,
		30.413542, 36.201931, 32.776112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565207, 36.397675, 33.650677>,  <30.236822, 36.791325, 33.109859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565207, 36.397675, 33.650677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676647, 36.266621, 33.289558>,  <30.743511, 36.187988, 33.072887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.676647, 36.266621, 33.289558>,  <30.565207, 36.397675, 33.650677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676647, 36.266621, 33.289558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953165, -0.020885, 0.301728,
		-0.117711, -0.944573, 0.306472,
		0.278604, -0.327635, -0.902793,
		30.760229, 36.168331, 33.018719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.073786, 35.919868, 33.766827>,  <30.565207, 36.397675, 33.650677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.073786, 35.919868, 33.766827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.136885, 36.038891, 33.390194>,  <31.174744, 36.110302, 33.164215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.136885, 36.038891, 33.390194>,  <31.073786, 35.919868, 33.766827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136885, 36.038891, 33.390194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964017, -0.253024, 0.081547,
		-0.213978, -0.920565, -0.326761,
		0.157747, 0.297554, -0.941583,
		31.184208, 36.128159, 33.107719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604904, 35.520119, 33.492172>,  <31.073786, 35.919868, 33.766827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604904, 35.520119, 33.492172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595091, 35.828049, 33.237061>,  <31.589203, 36.012806, 33.083992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595091, 35.828049, 33.237061>,  <31.604904, 35.520119, 33.492172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595091, 35.828049, 33.237061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985746, -0.087588, -0.143642,
		-0.166442, -0.632216, -0.756704,
		-0.024534, 0.769826, -0.637783,
		31.587730, 36.058998, 33.045727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.757984, 35.372456, 32.858139>,  <31.604904, 35.520119, 33.492172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.757984, 35.372456, 32.858139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853430, 35.757114, 32.912235>,  <31.910696, 35.987911, 32.944695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.853430, 35.757114, 32.912235>,  <31.757984, 35.372456, 32.858139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.853430, 35.757114, 32.912235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869749, -0.149674, -0.470250,
		-0.431974, 0.229837, -0.872109,
		0.238613, 0.961651, 0.135245,
		31.925014, 36.045609, 32.952808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007595, 35.581310, 32.221264>,  <31.757984, 35.372456, 32.858139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007595, 35.581310, 32.221264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149841, 35.835720, 32.495201>,  <32.235191, 35.988365, 32.659565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149841, 35.835720, 32.495201>,  <32.007595, 35.581310, 32.221264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149841, 35.835720, 32.495201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860658, 0.062857, -0.505289,
		-0.364423, 0.769105, -0.525046,
		0.355617, 0.636024, 0.684843,
		32.256527, 36.026527, 32.700653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.122978, 36.223625, 31.850166>,  <32.007595, 35.581310, 32.221264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.122978, 36.223625, 31.850166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354012, 36.202267, 32.175999>,  <32.492630, 36.189453, 32.371498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354012, 36.202267, 32.175999>,  <32.122978, 36.223625, 31.850166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354012, 36.202267, 32.175999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784107, 0.313882, -0.535401,
		-0.227095, 0.947960, 0.223160,
		0.577585, -0.053394, 0.814583,
		32.527287, 36.186249, 32.420372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568680, 36.863064, 31.826372>,  <32.122978, 36.223625, 31.850166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568680, 36.863064, 31.826372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765381, 36.617264, 32.073132>,  <32.883404, 36.469784, 32.221188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765381, 36.617264, 32.073132>,  <32.568680, 36.863064, 31.826372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765381, 36.617264, 32.073132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867773, 0.404240, -0.289069,
		-0.071742, 0.677479, 0.732035,
		0.491756, -0.614501, 0.616899,
		32.912907, 36.432915, 32.258202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182652, 37.204571, 31.826496>,  <32.568680, 36.863064, 31.826372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182652, 37.204571, 31.826496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273602, 36.845314, 31.977037>,  <33.328171, 36.629761, 32.067360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273602, 36.845314, 31.977037>,  <33.182652, 37.204571, 31.826496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273602, 36.845314, 31.977037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885793, 0.030200, -0.463097,
		0.404561, 0.438668, 0.802434,
		0.227379, -0.898142, 0.376352,
		33.341816, 36.575871, 32.089943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892208, 37.292690, 32.108219>,  <33.182652, 37.204571, 31.826496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892208, 37.292690, 32.108219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816868, 36.901482, 32.072468>,  <33.771664, 36.666756, 32.051018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816868, 36.901482, 32.072468>,  <33.892208, 37.292690, 32.108219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816868, 36.901482, 32.072468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868305, -0.123316, -0.480457,
		0.458878, -0.168104, 0.872452,
		-0.188354, -0.978026, -0.089379,
		33.760361, 36.608074, 32.045654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629501, 36.975319, 32.149220>,  <33.892208, 37.292690, 32.108219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629501, 36.975319, 32.149220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400959, 36.669994, 32.028622>,  <34.263832, 36.486797, 31.956263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400959, 36.669994, 32.028622>,  <34.629501, 36.975319, 32.149220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400959, 36.669994, 32.028622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708066, -0.272726, -0.651355,
		0.414963, -0.585636, 0.696302,
		-0.571356, -0.763316, -0.301497,
		34.229553, 36.440998, 31.938173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056435, 36.374748, 32.211945>,  <34.629501, 36.975319, 32.149220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056435, 36.374748, 32.211945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764362, 36.309490, 31.946548>,  <34.589119, 36.270336, 31.787312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.764362, 36.309490, 31.946548>,  <35.056435, 36.374748, 32.211945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.764362, 36.309490, 31.946548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677103, -0.302790, -0.670709,
		-0.091475, -0.938990, 0.331558,
		-0.730181, -0.163146, -0.663490,
		34.545307, 36.260548, 31.747501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039787, 35.560322, 31.976171>,  <35.056435, 36.374748, 32.211945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039787, 35.560322, 31.976171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904022, 35.816299, 31.700411>,  <34.822563, 35.969887, 31.534954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904022, 35.816299, 31.700411>,  <35.039787, 35.560322, 31.976171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904022, 35.816299, 31.700411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503559, -0.495426, -0.707801,
		-0.794497, -0.587393, -0.154092,
		-0.339416, 0.639939, -0.689401,
		34.802197, 36.008282, 31.493591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178574, 35.132076, 31.392147>,  <35.039787, 35.560322, 31.976171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178574, 35.132076, 31.392147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057793, 35.481937, 31.240456>,  <34.985325, 35.691853, 31.149441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.057793, 35.481937, 31.240456>,  <35.178574, 35.132076, 31.392147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057793, 35.481937, 31.240456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565355, -0.156007, -0.809960,
		-0.767593, -0.458968, -0.447380,
		-0.301952, 0.874649, -0.379230,
		34.967209, 35.744331, 31.126686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072254, 34.993805, 30.743206>,  <35.178574, 35.132076, 31.392147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072254, 34.993805, 30.743206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113781, 35.391140, 30.723194>,  <35.138699, 35.629539, 30.711187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.113781, 35.391140, 30.723194>,  <35.072254, 34.993805, 30.743206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113781, 35.391140, 30.723194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410293, -0.088597, -0.907640,
		-0.906025, 0.073704, -0.416758,
		0.103821, 0.993337, -0.050031,
		35.144928, 35.689140, 30.708185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843777, 35.189720, 30.060431>,  <35.072254, 34.993805, 30.743206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843777, 35.189720, 30.060431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091579, 35.475033, 30.191540>,  <35.240261, 35.646221, 30.270206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.091579, 35.475033, 30.191540>,  <34.843777, 35.189720, 30.060431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091579, 35.475033, 30.191540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382616, 0.090219, -0.919492,
		-0.685428, 0.695047, -0.217021,
		0.619511, 0.713281, 0.327774,
		35.277431, 35.689018, 30.289871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781204, 35.693146, 29.522179>,  <34.843777, 35.189720, 30.060431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781204, 35.693146, 29.522179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114090, 35.798817, 29.717169>,  <35.313820, 35.862217, 29.834164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114090, 35.798817, 29.717169>,  <34.781204, 35.693146, 29.522179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114090, 35.798817, 29.717169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490272, 0.060001, -0.869501,
		-0.258948, 0.962607, -0.079583,
		0.832213, 0.264173, 0.487477,
		35.363754, 35.878067, 29.863411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063095, 36.349083, 29.127102>,  <34.781204, 35.693146, 29.522179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063095, 36.349083, 29.127102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384773, 36.262527, 29.348532>,  <35.577782, 36.210594, 29.481390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384773, 36.262527, 29.348532>,  <35.063095, 36.349083, 29.127102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384773, 36.262527, 29.348532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593579, 0.340252, -0.729310,
		-0.030536, 0.915097, 0.402075,
		0.804196, -0.216393, 0.553573,
		35.626034, 36.197609, 29.514603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503124, 36.935314, 29.357128>,  <35.063095, 36.349083, 29.127102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503124, 36.935314, 29.357128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720600, 36.603828, 29.304003>,  <35.851086, 36.404938, 29.272127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720600, 36.603828, 29.304003>,  <35.503124, 36.935314, 29.357128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720600, 36.603828, 29.304003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495109, 0.444466, -0.746537,
		0.677694, 0.340127, 0.651954,
		0.543688, -0.828712, -0.132812,
		35.883705, 36.355213, 29.264158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135727, 37.214256, 29.147907>,  <35.503124, 36.935314, 29.357128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135727, 37.214256, 29.147907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171906, 36.824844, 29.063942>,  <36.193615, 36.591198, 29.013563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171906, 36.824844, 29.063942>,  <36.135727, 37.214256, 29.147907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171906, 36.824844, 29.063942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413457, 0.228461, -0.881396,
		0.906020, -0.007069, 0.423176,
		0.090449, -0.973527, -0.209913,
		36.199039, 36.532787, 29.000969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810738, 37.071411, 28.870098>,  <36.135727, 37.214256, 29.147907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810738, 37.071411, 28.870098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597038, 36.776337, 28.704983>,  <36.468819, 36.599293, 28.605913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.597038, 36.776337, 28.704983>,  <36.810738, 37.071411, 28.870098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597038, 36.776337, 28.704983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395098, 0.213788, -0.893416,
		0.747310, -0.640401, 0.177242,
		-0.534252, -0.737687, -0.412787,
		36.436764, 36.555031, 28.581146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209633, 36.858479, 28.358082>,  <36.810738, 37.071411, 28.870098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209633, 36.858479, 28.358082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849369, 36.709789, 28.268078>,  <36.633209, 36.620575, 28.214075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849369, 36.709789, 28.268078>,  <37.209633, 36.858479, 28.358082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849369, 36.709789, 28.268078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150652, 0.218582, -0.964119,
		0.407571, -0.902243, -0.140868,
		-0.900661, -0.371725, -0.225012,
		36.579170, 36.598270, 28.200575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318954, 36.396877, 27.925976>,  <37.209633, 36.858479, 28.358082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318954, 36.396877, 27.925976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931957, 36.483112, 27.873079>,  <36.699760, 36.534851, 27.841341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931957, 36.483112, 27.873079>,  <37.318954, 36.396877, 27.925976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931957, 36.483112, 27.873079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153573, 0.085331, -0.984446,
		-0.200948, -0.972749, -0.115665,
		-0.967489, 0.215586, -0.132241,
		36.641712, 36.547787, 27.833406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072502, 35.973381, 27.337677>,  <37.318954, 36.396877, 27.925976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072502, 35.973381, 27.337677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843327, 36.295910, 27.396441>,  <36.705822, 36.489426, 27.431698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843327, 36.295910, 27.396441>,  <37.072502, 35.973381, 27.337677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843327, 36.295910, 27.396441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175460, 0.295759, -0.939010,
		-0.800593, -0.512223, -0.310930,
		-0.572943, 0.806322, 0.146908,
		36.671444, 36.537807, 27.440514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497017, 35.995758, 26.800074>,  <37.072502, 35.973381, 27.337677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497017, 35.995758, 26.800074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549183, 36.372272, 26.924629>,  <36.580482, 36.598183, 26.999363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.549183, 36.372272, 26.924629>,  <36.497017, 35.995758, 26.800074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549183, 36.372272, 26.924629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191252, 0.284290, -0.939469,
		-0.972838, 0.182077, -0.142947,
		0.130417, 0.941290, 0.311391,
		36.588306, 36.654659, 27.018047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219452, 36.274448, 26.260826>,  <36.497017, 35.995758, 26.800074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219452, 36.274448, 26.260826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416210, 36.564949, 26.452908>,  <36.534264, 36.739250, 26.568157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416210, 36.564949, 26.452908>,  <36.219452, 36.274448, 26.260826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416210, 36.564949, 26.452908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226926, 0.425538, -0.876026,
		-0.840563, 0.539881, 0.044513,
		0.491892, 0.726255, 0.480205,
		36.563778, 36.782825, 26.596970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.896259, 36.901516, 26.024210>,  <36.219452, 36.274448, 26.260826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.896259, 36.901516, 26.024210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249207, 37.011925, 26.176655>,  <36.460976, 37.078171, 26.268122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249207, 37.011925, 26.176655>,  <35.896259, 36.901516, 26.024210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249207, 37.011925, 26.176655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211720, 0.490421, -0.845377,
		-0.420248, 0.826619, 0.374290,
		0.882364, 0.276024, 0.381110,
		36.513916, 37.094730, 26.290987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923481, 37.556286, 25.873051>,  <35.896259, 36.901516, 26.024210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923481, 37.556286, 25.873051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303173, 37.445751, 25.933195>,  <36.530987, 37.379429, 25.969282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.303173, 37.445751, 25.933195>,  <35.923481, 37.556286, 25.873051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303173, 37.445751, 25.933195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275716, 0.500575, -0.820613,
		0.151496, 0.820404, 0.551349,
		0.949226, -0.276336, 0.150363,
		36.587940, 37.362850, 25.978304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202061, 38.185944, 25.779961>,  <35.923481, 37.556286, 25.873051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202061, 38.185944, 25.779961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465462, 37.888878, 25.731255>,  <36.623501, 37.710640, 25.702032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465462, 37.888878, 25.731255>,  <36.202061, 38.185944, 25.779961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465462, 37.888878, 25.731255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307371, 0.413088, -0.857252,
		0.686950, 0.527074, 0.500292,
		0.658500, -0.742665, -0.121763,
		36.663013, 37.666077, 25.694725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802467, 38.534794, 25.528069>,  <36.202061, 38.185944, 25.779961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802467, 38.534794, 25.528069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890614, 38.153023, 25.447559>,  <36.943501, 37.923962, 25.399254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.890614, 38.153023, 25.447559>,  <36.802467, 38.534794, 25.528069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890614, 38.153023, 25.447559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485172, 0.286261, -0.826234,
		0.846195, 0.084424, 0.526143,
		0.220368, -0.954425, -0.201273,
		36.956722, 37.866695, 25.387178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536983, 38.486599, 25.465788>,  <36.802467, 38.534794, 25.528069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536983, 38.486599, 25.465788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401669, 38.164860, 25.270411>,  <37.320480, 37.971817, 25.153185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401669, 38.164860, 25.270411>,  <37.536983, 38.486599, 25.465788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401669, 38.164860, 25.270411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554257, 0.249156, -0.794179,
		0.760499, -0.539386, 0.361530,
		-0.338291, -0.804353, -0.488442,
		37.300182, 37.923553, 25.123878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061489, 38.140038, 25.191908>,  <37.536983, 38.486599, 25.465788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061489, 38.140038, 25.191908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753822, 38.023735, 24.964279>,  <37.569221, 37.953953, 24.827702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753822, 38.023735, 24.964279>,  <38.061489, 38.140038, 25.191908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753822, 38.023735, 24.964279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537386, 0.187624, -0.822201,
		0.345834, -0.938220, 0.011935,
		-0.769166, -0.290758, -0.569073,
		37.523071, 37.936508, 24.793558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341137, 37.654064, 24.796654>,  <38.061489, 38.140038, 25.191908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341137, 37.654064, 24.796654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009811, 37.771397, 24.605719>,  <37.811016, 37.841797, 24.491158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.009811, 37.771397, 24.605719>,  <38.341137, 37.654064, 24.796654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009811, 37.771397, 24.605719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556969, 0.338906, -0.758240,
		-0.060643, -0.893924, -0.444098,
		-0.828316, 0.293331, -0.477336,
		37.761318, 37.859394, 24.462519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.501198, 37.516685, 24.158037>,  <38.341137, 37.654064, 24.796654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.501198, 37.516685, 24.158037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179741, 37.753860, 24.137714>,  <37.986866, 37.896164, 24.125521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.179741, 37.753860, 24.137714>,  <38.501198, 37.516685, 24.158037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.179741, 37.753860, 24.137714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386845, 0.455613, -0.801728,
		-0.452226, -0.663958, -0.595525,
		-0.803643, 0.592939, -0.050809,
		37.938648, 37.931744, 24.122471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199879, 37.392448, 23.484955>,  <38.501198, 37.516685, 24.158037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199879, 37.392448, 23.484955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113873, 37.750179, 23.641901>,  <38.062267, 37.964817, 23.736069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113873, 37.750179, 23.641901>,  <38.199879, 37.392448, 23.484955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113873, 37.750179, 23.641901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273437, 0.440822, -0.854932,
		-0.937550, -0.076538, -0.339326,
		-0.215017, 0.894326, 0.392364,
		38.049366, 38.018478, 23.759611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881374, 37.671284, 22.883219>,  <38.199879, 37.392448, 23.484955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881374, 37.671284, 22.883219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977619, 37.970070, 23.131138>,  <38.035366, 38.149342, 23.279888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.977619, 37.970070, 23.131138>,  <37.881374, 37.671284, 22.883219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977619, 37.970070, 23.131138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518742, 0.440748, -0.732563,
		-0.820373, 0.497778, -0.281432,
		0.240613, 0.746966, 0.619797,
		38.049805, 38.194160, 23.317078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797318, 38.203690, 22.488152>,  <37.881374, 37.671284, 22.883219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797318, 38.203690, 22.488152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023228, 38.337299, 22.790001>,  <38.158775, 38.417465, 22.971111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023228, 38.337299, 22.790001>,  <37.797318, 38.203690, 22.488152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023228, 38.337299, 22.790001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526169, 0.558695, -0.641097,
		-0.635749, 0.759134, 0.139781,
		0.564774, 0.334028, 0.754623,
		38.192661, 38.437508, 23.016388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841496, 38.925152, 22.367401>,  <37.797318, 38.203690, 22.488152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841496, 38.925152, 22.367401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145748, 38.810936, 22.600607>,  <38.328300, 38.742409, 22.740530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145748, 38.810936, 22.600607>,  <37.841496, 38.925152, 22.367401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145748, 38.810936, 22.600607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644555, 0.439196, -0.625824,
		-0.077361, 0.851808, 0.518111,
		0.760634, -0.285536, 0.583014,
		38.373940, 38.725273, 22.775511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209923, 39.489246, 22.385750>,  <37.841496, 38.925152, 22.367401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209923, 39.489246, 22.385750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485981, 39.244839, 22.540857>,  <38.651615, 39.098194, 22.633921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485981, 39.244839, 22.540857>,  <38.209923, 39.489246, 22.385750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485981, 39.244839, 22.540857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711589, 0.475462, -0.517279,
		0.131696, 0.632927, 0.762928,
		0.690143, -0.611015, 0.387767,
		38.693024, 39.061535, 22.657188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670734, 39.909103, 22.776665>,  <38.209923, 39.489246, 22.385750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670734, 39.909103, 22.776665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854641, 39.582325, 22.637400>,  <38.964985, 39.386257, 22.553841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854641, 39.582325, 22.637400>,  <38.670734, 39.909103, 22.776665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854641, 39.582325, 22.637400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586422, 0.573720, -0.571799,
		0.666874, 0.058727, 0.742852,
		0.459770, -0.816943, -0.348160,
		38.992573, 39.337242, 22.532951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413750, 40.109673, 22.828205>,  <38.670734, 39.909103, 22.776665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413750, 40.109673, 22.828205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365414, 39.794674, 22.586464>,  <39.336411, 39.605675, 22.441420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365414, 39.794674, 22.586464>,  <39.413750, 40.109673, 22.828205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365414, 39.794674, 22.586464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692969, 0.368997, -0.619383,
		0.710768, -0.493646, 0.501122,
		-0.120843, -0.787499, -0.604352,
		39.329163, 39.558426, 22.405159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045292, 40.018642, 22.565584>,  <39.413750, 40.109673, 22.828205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045292, 40.018642, 22.565584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829052, 39.802681, 22.307514>,  <39.699306, 39.673103, 22.152672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.829052, 39.802681, 22.307514>,  <40.045292, 40.018642, 22.565584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829052, 39.802681, 22.307514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620866, 0.261458, -0.739030,
		0.567691, -0.800090, 0.193863,
		-0.540604, -0.539903, -0.645176,
		39.666870, 39.640709, 22.113962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497272, 39.606304, 22.115993>,  <40.045292, 40.018642, 22.565584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497272, 39.606304, 22.115993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156475, 39.636940, 21.908827>,  <39.951996, 39.655319, 21.784527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156475, 39.636940, 21.908827>,  <40.497272, 39.606304, 22.115993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156475, 39.636940, 21.908827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518608, 0.259011, -0.814837,
		0.071739, -0.962833, -0.260395,
		-0.851997, 0.076588, -0.517914,
		39.900875, 39.659916, 21.753452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715950, 39.352135, 21.472277>,  <40.497272, 39.606304, 22.115993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715950, 39.352135, 21.472277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371510, 39.539097, 21.392242>,  <40.164845, 39.651276, 21.344223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.371510, 39.539097, 21.392242>,  <40.715950, 39.352135, 21.472277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371510, 39.539097, 21.392242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361183, 0.285387, -0.887751,
		-0.357839, -0.836711, -0.414567,
		-0.861103, 0.467407, -0.200084,
		40.113178, 39.679317, 21.332218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486588, 39.108307, 20.832623>,  <40.715950, 39.352135, 21.472277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486588, 39.108307, 20.832623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310833, 39.463699, 20.885586>,  <40.205379, 39.676937, 20.917364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.310833, 39.463699, 20.885586>,  <40.486588, 39.108307, 20.832623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310833, 39.463699, 20.885586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372541, 0.314359, -0.873151,
		-0.817405, -0.334325, -0.469123,
		-0.439389, 0.888485, 0.132409,
		40.179016, 39.730244, 20.925308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050491, 39.099648, 20.330147>,  <40.486588, 39.108307, 20.832623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050491, 39.099648, 20.330147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076027, 39.484600, 20.435791>,  <40.091347, 39.715572, 20.499178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.076027, 39.484600, 20.435791>,  <40.050491, 39.099648, 20.330147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076027, 39.484600, 20.435791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124945, 0.254861, -0.958871,
		-0.990108, 0.094210, -0.103975,
		0.063836, 0.962377, 0.264111,
		40.095177, 39.773312, 20.515024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509850, 39.588871, 19.884514>,  <40.050491, 39.099648, 20.330147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509850, 39.588871, 19.884514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811485, 39.812973, 20.021603>,  <39.992466, 39.947433, 20.103855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811485, 39.812973, 20.021603>,  <39.509850, 39.588871, 19.884514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811485, 39.812973, 20.021603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243834, 0.245706, -0.938176,
		-0.609829, 0.791037, 0.048675,
		0.754091, 0.560258, 0.342720,
		40.037712, 39.981049, 20.124418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511620, 40.359188, 19.591696>,  <39.509850, 39.588871, 19.884514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511620, 40.359188, 19.591696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879311, 40.261181, 19.714981>,  <40.099926, 40.202377, 19.788952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879311, 40.261181, 19.714981>,  <39.511620, 40.359188, 19.591696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879311, 40.261181, 19.714981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346435, 0.131293, -0.928841,
		0.187112, 0.960588, 0.205569,
		0.919223, -0.245014, 0.308215,
		40.155079, 40.187675, 19.807446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054958, 40.934132, 19.687040>,  <39.511620, 40.359188, 19.591696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.054958, 40.934132, 19.687040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200134, 40.574986, 19.587343>,  <40.287239, 40.359497, 19.527525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.200134, 40.574986, 19.587343>,  <40.054958, 40.934132, 19.687040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200134, 40.574986, 19.587343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261780, 0.354954, -0.897485,
		0.894286, 0.260485, 0.363868,
		0.362938, -0.897861, -0.249241,
		40.309017, 40.305626, 19.512571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714703, 41.056873, 19.320208>,  <40.054958, 40.934132, 19.687040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714703, 41.056873, 19.320208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547112, 40.710251, 19.211731>,  <40.446556, 40.502277, 19.146645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.547112, 40.710251, 19.211731>,  <40.714703, 41.056873, 19.320208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.547112, 40.710251, 19.211731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234942, 0.185038, -0.954234,
		0.877075, -0.463517, 0.126062,
		-0.418978, -0.866552, -0.271192,
		40.421417, 40.450287, 19.130373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213650, 40.602764, 18.935474>,  <40.714703, 41.056873, 19.320208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213650, 40.602764, 18.935474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844372, 40.526169, 18.802181>,  <40.622807, 40.480209, 18.722206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844372, 40.526169, 18.802181>,  <41.213650, 40.602764, 18.935474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844372, 40.526169, 18.802181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359792, -0.125742, -0.924521,
		0.135136, -0.973407, 0.184981,
		-0.923194, -0.191491, -0.333231,
		40.567413, 40.468723, 18.702211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409470, 41.200706, 19.460806>,  <41.213650, 40.602764, 18.935474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409470, 41.200706, 19.460806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571083, 41.541664, 19.593580>,  <41.668053, 41.746239, 19.673244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.571083, 41.541664, 19.593580>,  <41.409470, 41.200706, 19.460806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.571083, 41.541664, 19.593580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499142, 0.098648, -0.860887,
		-0.766559, 0.513512, -0.385608,
		0.404036, 0.852393, 0.331934,
		41.692295, 41.797382, 19.693161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135418, 41.195179, 19.173058>,  <41.409470, 41.200706, 19.460806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135418, 41.195179, 19.173058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072178, 40.802822, 19.218401>,  <42.034233, 40.567406, 19.245607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072178, 40.802822, 19.218401>,  <42.135418, 41.195179, 19.173058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072178, 40.802822, 19.218401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029993, -0.119520, -0.992379,
		0.986968, -0.153491, 0.048315,
		-0.158096, -0.980895, 0.113358,
		42.024750, 40.508553, 19.252409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872643, 41.376560, 19.151901>,  <42.135418, 41.195179, 19.173058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872643, 41.376560, 19.151901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794296, 41.768768, 19.146080>,  <42.747288, 42.004093, 19.142588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794296, 41.768768, 19.146080>,  <42.872643, 41.376560, 19.151901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.794296, 41.768768, 19.146080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744142, -0.138947, 0.653411,
		0.638663, 0.138807, 0.756863,
		-0.195862, 0.980524, -0.014552,
		42.735538, 42.062927, 19.141714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.906277, 41.658772, 19.915169>,  <42.872643, 41.376560, 19.151901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.906277, 41.658772, 19.915169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688190, 41.844135, 19.635744>,  <42.557339, 41.955353, 19.468090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688190, 41.844135, 19.635744>,  <42.906277, 41.658772, 19.915169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688190, 41.844135, 19.635744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789223, -0.002830, 0.614101,
		0.282605, 0.886138, 0.367278,
		-0.545217, 0.463412, -0.698561,
		42.524624, 41.983158, 19.426176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704887, 42.173428, 20.229624>,  <42.906277, 41.658772, 19.915169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704887, 42.173428, 20.229624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432667, 42.160362, 19.936836>,  <42.269333, 42.152523, 19.761164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.432667, 42.160362, 19.936836>,  <42.704887, 42.173428, 20.229624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432667, 42.160362, 19.936836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732604, 0.046210, 0.679084,
		0.011644, 0.998398, -0.055376,
		-0.680555, -0.032662, -0.731969,
		42.228500, 42.150562, 19.717245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.280128, 42.830326, 20.156683>,  <42.704887, 42.173428, 20.229624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.280128, 42.830326, 20.156683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082680, 42.509239, 20.022825>,  <41.964211, 42.316589, 19.942511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082680, 42.509239, 20.022825>,  <42.280128, 42.830326, 20.156683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082680, 42.509239, 20.022825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666254, 0.101725, 0.738755,
		-0.558967, 0.587624, -0.585025,
		-0.493622, -0.802714, -0.334645,
		41.934593, 42.268425, 19.922432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651306, 43.087715, 19.951674>,  <42.280128, 42.830326, 20.156683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651306, 43.087715, 19.951674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623966, 42.697735, 20.036335>,  <41.607563, 42.463745, 20.087132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623966, 42.697735, 20.036335>,  <41.651306, 43.087715, 19.951674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623966, 42.697735, 20.036335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657556, 0.203572, 0.725381,
		-0.750299, -0.089598, -0.654999,
		-0.068347, -0.974952, 0.211656,
		41.603462, 42.405251, 20.099833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997631, 42.938396, 19.834858>,  <41.651306, 43.087715, 19.951674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997631, 42.938396, 19.834858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125553, 42.657169, 20.088923>,  <41.202305, 42.488434, 20.241362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.125553, 42.657169, 20.088923>,  <40.997631, 42.938396, 19.834858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125553, 42.657169, 20.088923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789994, 0.172247, 0.588422,
		-0.523103, -0.689950, -0.500332,
		0.319801, -0.703065, 0.635160,
		41.221493, 42.446251, 20.279470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360188, 42.692913, 20.159399>,  <40.997631, 42.938396, 19.834858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360188, 42.692913, 20.159399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636566, 42.533665, 20.400759>,  <40.802391, 42.438114, 20.545574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636566, 42.533665, 20.400759>,  <40.360188, 42.692913, 20.159399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636566, 42.533665, 20.400759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607984, 0.131532, 0.782978,
		-0.391090, -0.907852, -0.151172,
		0.690944, -0.398125, 0.603401,
		40.843849, 42.414227, 20.581779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952911, 42.305271, 20.492168>,  <40.360188, 42.692913, 20.159399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952911, 42.305271, 20.492168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275658, 42.324177, 20.727703>,  <40.469307, 42.335522, 20.869024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275658, 42.324177, 20.727703>,  <39.952911, 42.305271, 20.492168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275658, 42.324177, 20.727703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589728, 0.006366, 0.807577,
		0.034429, -0.998862, 0.033015,
		0.806867, 0.047274, 0.588838,
		40.517719, 42.338356, 20.904354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941452, 41.674015, 21.000040>,  <39.952911, 42.305271, 20.492168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941452, 41.674015, 21.000040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190098, 41.943047, 21.160654>,  <40.339287, 42.104465, 21.257023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190098, 41.943047, 21.160654>,  <39.941452, 41.674015, 21.000040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190098, 41.943047, 21.160654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483278, -0.074121, 0.872324,
		0.616469, -0.736304, 0.278968,
		0.621617, 0.672579, 0.401533,
		40.376583, 42.144821, 21.281115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084751, 41.410469, 21.782116>,  <39.941452, 41.674015, 21.000040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084751, 41.410469, 21.782116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203419, 41.792290, 21.770626>,  <40.274620, 42.021381, 21.763733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203419, 41.792290, 21.770626>,  <40.084751, 41.410469, 21.782116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203419, 41.792290, 21.770626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264893, 0.111150, 0.957850,
		0.917507, -0.276555, 0.285828,
		0.296668, 0.954549, -0.028723,
		40.292419, 42.078655, 21.762009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473343, 41.441254, 22.380066>,  <40.084751, 41.410469, 21.782116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473343, 41.441254, 22.380066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325256, 41.799595, 22.281771>,  <40.236404, 42.014599, 22.222794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.325256, 41.799595, 22.281771>,  <40.473343, 41.441254, 22.380066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325256, 41.799595, 22.281771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383491, 0.093549, 0.918795,
		0.846094, 0.434391, 0.308918,
		-0.370217, 0.895854, -0.245736,
		40.214191, 42.068352, 22.208050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.740437, 41.869026, 22.916842>,  <40.473343, 41.441254, 22.380066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.740437, 41.869026, 22.916842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433128, 42.075375, 22.765242>,  <40.248745, 42.199184, 22.674282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433128, 42.075375, 22.765242>,  <40.740437, 41.869026, 22.916842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433128, 42.075375, 22.765242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435199, 0.013257, 0.900237,
		0.469434, 0.856562, 0.214324,
		-0.768267, 0.515875, -0.378998,
		40.202648, 42.230137, 22.651543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554604, 42.350536, 23.362165>,  <40.740437, 41.869026, 22.916842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554604, 42.350536, 23.362165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218109, 42.300785, 23.151699>,  <40.016212, 42.270935, 23.025419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.218109, 42.300785, 23.151699>,  <40.554604, 42.350536, 23.362165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.218109, 42.300785, 23.151699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527080, -0.028155, 0.849349,
		-0.120455, 0.991835, -0.041873,
		-0.841235, -0.124379, -0.526168,
		39.965740, 42.263470, 22.993849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062489, 42.911495, 23.529610>,  <40.554604, 42.350536, 23.362165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062489, 42.911495, 23.529610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862591, 42.585312, 23.412794>,  <39.742653, 42.389603, 23.342705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862591, 42.585312, 23.412794>,  <40.062489, 42.911495, 23.529610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862591, 42.585312, 23.412794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421976, -0.065240, 0.904256,
		-0.756434, 0.575131, -0.311500,
		-0.499743, -0.815456, -0.292041,
		39.712669, 42.340675, 23.325182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421154, 42.968208, 23.912193>,  <40.062489, 42.911495, 23.529610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421154, 42.968208, 23.912193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417877, 42.582153, 23.807552>,  <39.415913, 42.350521, 23.744768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.417877, 42.582153, 23.807552>,  <39.421154, 42.968208, 23.912193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.417877, 42.582153, 23.807552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577898, -0.208932, 0.788911,
		-0.816068, 0.157640, -0.556042,
		-0.008189, -0.965141, -0.261603,
		39.415421, 42.292610, 23.729071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679958, 42.809261, 23.941282>,  <39.421154, 42.968208, 23.912193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679958, 42.809261, 23.941282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903709, 42.481121, 23.988832>,  <39.037960, 42.284237, 24.017363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903709, 42.481121, 23.988832>,  <38.679958, 42.809261, 23.941282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903709, 42.481121, 23.988832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608420, -0.308937, 0.731015,
		-0.562961, -0.481237, -0.671927,
		0.559375, -0.820346, 0.118875,
		39.071522, 42.235016, 24.024494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196018, 42.268307, 23.969910>,  <38.679958, 42.809261, 23.941282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196018, 42.268307, 23.969910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500923, 42.067577, 24.133436>,  <38.683865, 41.947140, 24.231552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.500923, 42.067577, 24.133436>,  <38.196018, 42.268307, 23.969910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500923, 42.067577, 24.133436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612414, -0.354695, 0.706499,
		-0.209531, -0.788903, -0.577693,
		0.762264, -0.501821, 0.408815,
		38.729603, 41.917030, 24.256081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008392, 41.533794, 24.124149>,  <38.196018, 42.268307, 23.969910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008392, 41.533794, 24.124149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317616, 41.624519, 24.361109>,  <38.503151, 41.678955, 24.503284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317616, 41.624519, 24.361109>,  <38.008392, 41.533794, 24.124149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317616, 41.624519, 24.361109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451412, -0.459402, 0.764968,
		0.445650, -0.858782, -0.252762,
		0.773061, 0.226808, 0.592398,
		38.549534, 41.692562, 24.538828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183445, 40.866898, 24.477167>,  <38.008392, 41.533794, 24.124149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183445, 40.866898, 24.477167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330608, 41.179188, 24.679201>,  <38.418907, 41.366562, 24.800423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330608, 41.179188, 24.679201>,  <38.183445, 40.866898, 24.477167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330608, 41.179188, 24.679201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524489, -0.274294, 0.806024,
		0.767825, -0.561454, 0.308568,
		0.367907, 0.780726, 0.505086,
		38.440979, 41.413406, 24.830727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367744, 40.616501, 25.034128>,  <38.183445, 40.866898, 24.477167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367744, 40.616501, 25.034128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393539, 40.992947, 25.166876>,  <38.409016, 41.218815, 25.246525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393539, 40.992947, 25.166876>,  <38.367744, 40.616501, 25.034128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393539, 40.992947, 25.166876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450435, -0.269304, 0.851225,
		0.890477, -0.204378, 0.406547,
		0.064487, 0.941119, 0.331868,
		38.412884, 41.275284, 25.266436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617840, 40.684875, 25.734682>,  <38.367744, 40.616501, 25.034128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617840, 40.684875, 25.734682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438541, 41.042114, 25.719402>,  <38.330963, 41.256458, 25.710234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438541, 41.042114, 25.719402>,  <38.617840, 40.684875, 25.734682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438541, 41.042114, 25.719402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306879, -0.113605, 0.944944,
		0.839585, 0.435288, 0.324995,
		-0.448244, 0.893095, -0.038199,
		38.304070, 41.310043, 25.707943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685829, 41.035297, 26.503782>,  <38.617840, 40.684875, 25.734682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685829, 41.035297, 26.503782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374409, 41.171494, 26.292906>,  <38.187557, 41.253212, 26.166380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374409, 41.171494, 26.292906>,  <38.685829, 41.035297, 26.503782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374409, 41.171494, 26.292906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616253, -0.255848, 0.744832,
		0.118727, 0.904770, 0.409018,
		-0.778547, 0.340490, -0.527191,
		38.140846, 41.273640, 26.134748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.303299, 41.453697, 26.937866>,  <38.685829, 41.035297, 26.503782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.303299, 41.453697, 26.937866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030918, 41.351219, 26.663446>,  <37.867489, 41.289734, 26.498795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030918, 41.351219, 26.663446>,  <38.303299, 41.453697, 26.937866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030918, 41.351219, 26.663446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685243, -0.107571, 0.720326,
		-0.258343, 0.960621, -0.102304,
		-0.680955, -0.256194, -0.686050,
		37.826630, 41.274361, 26.457632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695911, 41.941223, 27.037432>,  <38.303299, 41.453697, 26.937866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695911, 41.941223, 27.037432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570061, 41.632439, 26.816496>,  <37.494549, 41.447166, 26.683935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570061, 41.632439, 26.816496>,  <37.695911, 41.941223, 27.037432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570061, 41.632439, 26.816496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741968, -0.162914, 0.650341,
		-0.592024, 0.614434, -0.521516,
		-0.314630, -0.771965, -0.552339,
		37.475674, 41.400848, 26.650795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.002007, 42.034657, 26.992859>,  <37.695911, 41.941223, 27.037432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.002007, 42.034657, 26.992859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054829, 41.651230, 26.891891>,  <37.086521, 41.421173, 26.831310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054829, 41.651230, 26.891891>,  <37.002007, 42.034657, 26.992859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054829, 41.651230, 26.891891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691499, -0.271534, 0.669401,
		-0.710205, 0.086153, -0.698703,
		0.132051, -0.958565, -0.252420,
		37.094444, 41.363659, 26.816166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275593, 41.828896, 26.902636>,  <37.002007, 42.034657, 26.992859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275593, 41.828896, 26.902636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495518, 41.499706, 26.959810>,  <36.627472, 41.302193, 26.994114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495518, 41.499706, 26.959810>,  <36.275593, 41.828896, 26.902636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495518, 41.499706, 26.959810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588689, -0.260377, 0.765277,
		-0.592582, -0.504901, -0.627631,
		0.549810, -0.822970, 0.142935,
		36.660461, 41.252815, 27.002691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807068, 41.274837, 26.897152>,  <36.275593, 41.828896, 26.902636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807068, 41.274837, 26.897152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131031, 41.133553, 27.084469>,  <36.325409, 41.048782, 27.196859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131031, 41.133553, 27.084469>,  <35.807068, 41.274837, 26.897152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131031, 41.133553, 27.084469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577697, -0.342066, 0.741118,
		-0.101584, -0.870766, -0.481090,
		0.809906, -0.353210, 0.468291,
		36.374004, 41.027588, 27.224957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617657, 40.620430, 27.203581>,  <35.807068, 41.274837, 26.897152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617657, 40.620430, 27.203581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939663, 40.739063, 27.409098>,  <36.132866, 40.810242, 27.532408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939663, 40.739063, 27.409098>,  <35.617657, 40.620430, 27.203581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939663, 40.739063, 27.409098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454602, -0.248046, 0.855459,
		0.381156, -0.922233, -0.064856,
		0.805019, 0.296580, 0.513794,
		36.181168, 40.828037, 27.563236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692131, 40.178623, 27.777716>,  <35.617657, 40.620430, 27.203581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692131, 40.178623, 27.777716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946880, 40.454784, 27.914972>,  <36.099728, 40.620480, 27.997326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946880, 40.454784, 27.914972>,  <35.692131, 40.178623, 27.777716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946880, 40.454784, 27.914972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293375, -0.194577, 0.935987,
		0.712972, -0.696771, 0.078626,
		0.636870, 0.690399, 0.343143,
		36.137939, 40.661903, 28.017916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077583, 39.813541, 28.207251>,  <35.692131, 40.178623, 27.777716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077583, 39.813541, 28.207251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053772, 40.201256, 28.302696>,  <36.039486, 40.433884, 28.359964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053772, 40.201256, 28.302696>,  <36.077583, 39.813541, 28.207251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053772, 40.201256, 28.302696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343566, -0.244329, 0.906789,
		0.937240, -0.027998, 0.347560,
		-0.059531, 0.969288, 0.238614,
		36.035912, 40.492043, 28.374281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294136, 39.960968, 28.949638>,  <36.077583, 39.813541, 28.207251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294136, 39.960968, 28.949638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113628, 40.311306, 28.881227>,  <36.005322, 40.521507, 28.840181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113628, 40.311306, 28.881227>,  <36.294136, 39.960968, 28.949638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113628, 40.311306, 28.881227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528022, -0.107566, 0.842391,
		0.719407, 0.470452, 0.511007,
		-0.451271, 0.875845, -0.171025,
		35.978249, 40.574059, 28.829920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410328, 40.364513, 29.527042>,  <36.294136, 39.960968, 28.949638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410328, 40.364513, 29.527042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087269, 40.535034, 29.364082>,  <35.893433, 40.637344, 29.266306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.087269, 40.535034, 29.364082>,  <36.410328, 40.364513, 29.527042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087269, 40.535034, 29.364082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405088, 0.100940, 0.908689,
		0.428495, 0.898934, 0.091164,
		-0.807648, 0.426298, -0.407400,
		35.844975, 40.662922, 29.241863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103889, 40.822403, 29.996431>,  <36.410328, 40.364513, 29.527042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103889, 40.822403, 29.996431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808964, 40.732677, 29.741541>,  <35.632008, 40.678841, 29.588608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808964, 40.732677, 29.741541>,  <36.103889, 40.822403, 29.996431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808964, 40.732677, 29.741541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643716, -0.052880, 0.763435,
		-0.204947, 0.973081, -0.105407,
		-0.737310, -0.224316, -0.637225,
		35.587772, 40.665382, 29.550373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509525, 41.208931, 30.173386>,  <36.103889, 40.822403, 29.996431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509525, 41.208931, 30.173386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378464, 40.880573, 29.986292>,  <35.299828, 40.683559, 29.874035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378464, 40.880573, 29.986292>,  <35.509525, 41.208931, 30.173386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378464, 40.880573, 29.986292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595365, -0.205010, 0.776860,
		-0.733611, 0.533012, -0.421560,
		-0.327652, -0.820895, -0.467734,
		35.280167, 40.634304, 29.845972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823353, 41.124577, 30.377754>,  <35.509525, 41.208931, 30.173386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823353, 41.124577, 30.377754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911995, 40.765968, 30.224319>,  <34.965179, 40.550804, 30.132259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911995, 40.765968, 30.224319>,  <34.823353, 41.124577, 30.377754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911995, 40.765968, 30.224319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628185, -0.432116, 0.647039,
		-0.745839, 0.097579, -0.658940,
		0.221601, -0.896523, -0.383587,
		34.978474, 40.497013, 30.109243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238518, 40.796726, 30.494949>,  <34.823353, 41.124577, 30.377754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238518, 40.796726, 30.494949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491669, 40.494339, 30.428036>,  <34.643559, 40.312908, 30.387888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491669, 40.494339, 30.428036>,  <34.238518, 40.796726, 30.494949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491669, 40.494339, 30.428036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433607, -0.525059, 0.732324,
		-0.641446, -0.390935, -0.660089,
		0.632876, -0.755966, -0.167285,
		34.681530, 40.267548, 30.377850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847343, 40.167789, 30.376015>,  <34.238518, 40.796726, 30.494949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847343, 40.167789, 30.376015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208500, 40.048637, 30.499989>,  <34.425194, 39.977146, 30.574373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.208500, 40.048637, 30.499989>,  <33.847343, 40.167789, 30.376015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208500, 40.048637, 30.499989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427009, -0.538333, 0.726540,
		-0.049574, -0.788330, -0.613253,
		0.902887, -0.297882, 0.309936,
		34.479366, 39.959274, 30.592970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789719, 39.423061, 30.443027>,  <33.847343, 40.167789, 30.376015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789719, 39.423061, 30.443027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091808, 39.553474, 30.670481>,  <34.273060, 39.631721, 30.806953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091808, 39.553474, 30.670481>,  <33.789719, 39.423061, 30.443027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091808, 39.553474, 30.670481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311417, -0.584884, 0.748953,
		0.576768, -0.742707, -0.340184,
		0.755221, 0.326033, 0.568633,
		34.318375, 39.651283, 30.841070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065144, 38.809761, 30.877808>,  <33.789719, 39.423061, 30.443027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065144, 38.809761, 30.877808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197212, 39.131069, 31.076097>,  <34.276455, 39.323853, 31.195072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197212, 39.131069, 31.076097>,  <34.065144, 38.809761, 30.877808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197212, 39.131069, 31.076097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342385, -0.387495, 0.855933,
		0.879635, -0.452336, 0.147086,
		0.330175, 0.803268, 0.495727,
		34.296265, 39.372051, 31.224815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392418, 38.532944, 31.427092>,  <34.065144, 38.809761, 30.877808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392418, 38.532944, 31.427092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291397, 38.896057, 31.561041>,  <34.230785, 39.113926, 31.641411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291397, 38.896057, 31.561041>,  <34.392418, 38.532944, 31.427092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291397, 38.896057, 31.561041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096407, -0.367977, 0.924824,
		0.962768, 0.201283, 0.180451,
		-0.252553, 0.907788, 0.334871,
		34.215630, 39.168392, 31.661503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644573, 38.522331, 32.132683>,  <34.392418, 38.532944, 31.427092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644573, 38.522331, 32.132683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392818, 38.832531, 32.112785>,  <34.241768, 39.018650, 32.100845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392818, 38.832531, 32.112785>,  <34.644573, 38.522331, 32.132683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392818, 38.832531, 32.112785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252246, -0.143333, 0.956989,
		0.735017, 0.614859, 0.285829,
		-0.629382, 0.775502, -0.049744,
		34.204002, 39.065182, 32.097862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701057, 38.881214, 32.785816>,  <34.644573, 38.522331, 32.132683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701057, 38.881214, 32.785816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341408, 38.961643, 32.630310>,  <34.125618, 39.009899, 32.537006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341408, 38.961643, 32.630310>,  <34.701057, 38.881214, 32.785816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341408, 38.961643, 32.630310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427099, -0.208879, 0.879748,
		0.095688, 0.957047, 0.273686,
		-0.899128, 0.201072, -0.388767,
		34.071671, 39.021965, 32.513680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439808, 39.269501, 33.252422>,  <34.701057, 38.881214, 32.785816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439808, 39.269501, 33.252422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122337, 39.145271, 33.043186>,  <33.931854, 39.070732, 32.917645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.122337, 39.145271, 33.043186>,  <34.439808, 39.269501, 33.252422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.122337, 39.145271, 33.043186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392489, -0.395548, 0.830358,
		-0.464797, 0.864341, 0.192038,
		-0.793673, -0.310575, -0.523093,
		33.884235, 39.052097, 32.886257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725479, 39.716568, 32.720806>,  <34.439808, 39.269501, 33.252422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725479, 39.716568, 32.720806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882786, 39.447041, 32.971027>,  <34.977169, 39.285324, 33.121159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.882786, 39.447041, 32.971027>,  <34.725479, 39.716568, 32.720806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882786, 39.447041, 32.971027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901268, 0.417065, -0.117359,
		-0.181817, 0.609942, 0.771306,
		0.393267, -0.673815, 0.625551,
		35.000767, 39.244896, 33.158691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180969, 40.085728, 33.143036>,  <34.725479, 39.716568, 32.720806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180969, 40.085728, 33.143036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320744, 39.712852, 33.180824>,  <35.404606, 39.489128, 33.203499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320744, 39.712852, 33.180824>,  <35.180969, 40.085728, 33.143036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320744, 39.712852, 33.180824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921540, 0.323712, -0.214415,
		0.169293, 0.161986, 0.972163,
		0.349433, -0.932186, 0.094474,
		35.425575, 39.433197, 33.209167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694859, 40.139999, 33.543324>,  <35.180969, 40.085728, 33.143036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694859, 40.139999, 33.543324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776745, 39.802017, 33.345684>,  <35.825874, 39.599228, 33.227100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776745, 39.802017, 33.345684>,  <35.694859, 40.139999, 33.543324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776745, 39.802017, 33.345684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941192, 0.308545, -0.137691,
		0.268796, -0.436858, 0.858431,
		0.204713, -0.844959, -0.494103,
		35.838158, 39.548531, 33.197453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396961, 40.013329, 33.743633>,  <35.694859, 40.139999, 33.543324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396961, 40.013329, 33.743633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332386, 39.795269, 33.414574>,  <36.293640, 39.664433, 33.217136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332386, 39.795269, 33.414574>,  <36.396961, 40.013329, 33.743633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332386, 39.795269, 33.414574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932496, 0.188639, -0.308004,
		0.323091, -0.816841, 0.477894,
		-0.161441, -0.545148, -0.822649,
		36.283955, 39.631725, 33.167778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022659, 39.633053, 33.635738>,  <36.396961, 40.013329, 33.743633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022659, 39.633053, 33.635738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846199, 39.643448, 33.276917>,  <36.740322, 39.649685, 33.061623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.846199, 39.643448, 33.276917>,  <37.022659, 39.633053, 33.635738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846199, 39.643448, 33.276917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887508, 0.160876, -0.431798,
		0.133092, -0.986633, -0.094038,
		-0.441154, 0.025990, -0.897055,
		36.713852, 39.651245, 33.007801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582306, 39.281204, 33.155724>,  <37.022659, 39.633053, 33.635738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582306, 39.281204, 33.155724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336437, 39.456463, 32.893364>,  <37.188915, 39.561619, 32.735947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336437, 39.456463, 32.893364>,  <37.582306, 39.281204, 33.155724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336437, 39.456463, 32.893364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784005, 0.247971, -0.569075,
		-0.086696, -0.864022, -0.495933,
		-0.614671, 0.438150, -0.655900,
		37.152035, 39.587906, 32.696594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738785, 39.096760, 32.468868>,  <37.582306, 39.281204, 33.155724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738785, 39.096760, 32.468868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526562, 39.429455, 32.403481>,  <37.399227, 39.629074, 32.364250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526562, 39.429455, 32.403481>,  <37.738785, 39.096760, 32.468868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526562, 39.429455, 32.403481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630900, 0.258683, -0.731470,
		-0.566107, -0.491215, -0.661990,
		-0.530554, 0.831740, -0.163465,
		37.367397, 39.678978, 32.354443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.717155, 39.211216, 31.727501>,  <37.738785, 39.096760, 32.468868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.717155, 39.211216, 31.727501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644440, 39.573174, 31.881449>,  <37.600811, 39.790348, 31.973818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.644440, 39.573174, 31.881449>,  <37.717155, 39.211216, 31.727501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644440, 39.573174, 31.881449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455813, 0.424348, -0.782409,
		-0.871313, 0.033192, -0.489604,
		-0.181792, 0.904891, 0.384869,
		37.589901, 39.844643, 31.996910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490166, 39.616486, 31.178511>,  <37.717155, 39.211216, 31.727501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490166, 39.616486, 31.178511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602127, 39.894596, 31.443312>,  <37.669304, 40.061462, 31.602192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.602127, 39.894596, 31.443312>,  <37.490166, 39.616486, 31.178511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602127, 39.894596, 31.443312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362717, 0.561866, -0.743467,
		-0.888870, 0.448219, -0.094919,
		0.279904, 0.695274, 0.662003,
		37.686100, 40.103180, 31.641912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337578, 40.166470, 30.792690>,  <37.490166, 39.616486, 31.178511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337578, 40.166470, 30.792690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597202, 40.314621, 31.058481>,  <37.752979, 40.403511, 31.217957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.597202, 40.314621, 31.058481>,  <37.337578, 40.166470, 30.792690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.597202, 40.314621, 31.058481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404853, 0.571326, -0.713919,
		-0.644058, 0.732395, 0.220877,
		0.649064, 0.370383, 0.664479,
		37.791920, 40.425735, 31.257826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463104, 40.876110, 30.647625>,  <37.337578, 40.166470, 30.792690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463104, 40.876110, 30.647625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779930, 40.766441, 30.865788>,  <37.970024, 40.700642, 30.996685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779930, 40.766441, 30.865788>,  <37.463104, 40.876110, 30.647625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779930, 40.766441, 30.865788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606994, 0.448552, -0.656018,
		-0.064784, 0.850666, 0.521700,
		0.792061, -0.274169, 0.545408,
		38.017548, 40.684189, 31.029409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969540, 41.414635, 30.737423>,  <37.463104, 40.876110, 30.647625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969540, 41.414635, 30.737423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217396, 41.110668, 30.815983>,  <38.366112, 40.928288, 30.863119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217396, 41.110668, 30.815983>,  <37.969540, 41.414635, 30.737423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217396, 41.110668, 30.815983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628230, 0.330189, -0.704487,
		0.470500, 0.559916, 0.682000,
		0.619643, -0.759914, 0.196402,
		38.403290, 40.882694, 30.874903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494728, 41.715202, 30.721657>,  <37.969540, 41.414635, 30.737423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494728, 41.715202, 30.721657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623539, 41.340733, 30.665260>,  <38.700825, 41.116051, 30.631422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.623539, 41.340733, 30.665260>,  <38.494728, 41.715202, 30.721657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.623539, 41.340733, 30.665260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685967, 0.333365, -0.646774,
		0.652495, 0.111560, 0.749536,
		0.322023, -0.936174, -0.140992,
		38.720146, 41.059879, 30.622963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239040, 41.798531, 30.837687>,  <38.494728, 41.715202, 30.721657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239040, 41.798531, 30.837687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168205, 41.473782, 30.615152>,  <39.125702, 41.278934, 30.481632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168205, 41.473782, 30.615152>,  <39.239040, 41.798531, 30.837687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168205, 41.473782, 30.615152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605212, 0.355929, -0.712062,
		0.776117, -0.462799, 0.428322,
		-0.177090, -0.811869, -0.556334,
		39.115078, 41.230221, 30.448252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894520, 41.580055, 30.605890>,  <39.239040, 41.798531, 30.837687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894520, 41.580055, 30.605890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630863, 41.398365, 30.366152>,  <39.472668, 41.289352, 30.222309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.630863, 41.398365, 30.366152>,  <39.894520, 41.580055, 30.605890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.630863, 41.398365, 30.366152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543536, 0.263035, -0.797108,
		0.519712, -0.851173, 0.073509,
		-0.659142, -0.454222, -0.599346,
		39.433121, 41.262100, 30.186348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279461, 41.226521, 30.108885>,  <39.894520, 41.580055, 30.605890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279461, 41.226521, 30.108885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914101, 41.246906, 29.947342>,  <39.694885, 41.259136, 29.850416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.914101, 41.246906, 29.947342>,  <40.279461, 41.226521, 30.108885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914101, 41.246906, 29.947342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404820, 0.009775, -0.914344,
		-0.042651, -0.998653, -0.029560,
		-0.913401, 0.050964, -0.403858,
		39.640079, 41.262196, 29.826185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303688, 40.714130, 29.493956>,  <40.279461, 41.226521, 30.108885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303688, 40.714130, 29.493956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998379, 40.965218, 29.432795>,  <39.815193, 41.115871, 29.396099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.998379, 40.965218, 29.432795>,  <40.303688, 40.714130, 29.493956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.998379, 40.965218, 29.432795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194499, -0.002427, -0.980900,
		-0.616099, -0.778437, -0.120238,
		-0.763277, 0.627718, -0.152901,
		39.769394, 41.153534, 29.386925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170040, 40.624161, 28.814991>,  <40.303688, 40.714130, 29.493956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170040, 40.624161, 28.814991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967575, 40.959225, 28.897085>,  <39.846096, 41.160263, 28.946342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.967575, 40.959225, 28.897085>,  <40.170040, 40.624161, 28.814991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967575, 40.959225, 28.897085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122299, 0.305283, -0.944376,
		-0.853725, -0.452903, -0.256967,
		-0.506158, 0.837664, 0.205238,
		39.815727, 41.210526, 28.958656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705753, 40.727173, 28.222609>,  <40.170040, 40.624161, 28.814991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705753, 40.727173, 28.222609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728184, 41.083740, 28.402489>,  <39.741642, 41.297680, 28.510416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.728184, 41.083740, 28.402489>,  <39.705753, 40.727173, 28.222609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.728184, 41.083740, 28.402489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081250, 0.444839, -0.891918,
		-0.995115, 0.086553, -0.047483,
		0.056076, 0.891419, 0.449698,
		39.745007, 41.351166, 28.537397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222637, 41.080776, 27.946959>,  <39.705753, 40.727173, 28.222609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222637, 41.080776, 27.946959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473377, 41.354042, 28.096809>,  <39.623821, 41.518002, 28.186720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473377, 41.354042, 28.096809>,  <39.222637, 41.080776, 27.946959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473377, 41.354042, 28.096809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187289, 0.334604, -0.923560,
		-0.756291, 0.649101, 0.081800,
		0.626854, 0.683160, 0.374627,
		39.661434, 41.558990, 28.209198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142124, 41.634796, 27.532475>,  <39.222637, 41.080776, 27.946959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142124, 41.634796, 27.532475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500179, 41.694485, 27.700506>,  <39.715012, 41.730297, 27.801325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.500179, 41.694485, 27.700506>,  <39.142124, 41.634796, 27.532475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500179, 41.694485, 27.700506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334548, 0.397950, -0.854233,
		-0.294637, 0.905190, 0.306299,
		0.895135, 0.149217, 0.420080,
		39.768719, 41.739250, 27.826530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374630, 42.217793, 27.240078>,  <39.142124, 41.634796, 27.532475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374630, 42.217793, 27.240078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685516, 41.996273, 27.359568>,  <39.872047, 41.863361, 27.431261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.685516, 41.996273, 27.359568>,  <39.374630, 42.217793, 27.240078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685516, 41.996273, 27.359568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473082, 0.201273, -0.857719,
		0.414880, 0.807957, 0.418426,
		0.777218, -0.553801, 0.298726,
		39.918682, 41.830132, 27.449184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954403, 42.691639, 27.061594>,  <39.374630, 42.217793, 27.240078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954403, 42.691639, 27.061594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072720, 42.310810, 27.092743>,  <40.143711, 42.082314, 27.111433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072720, 42.310810, 27.092743>,  <39.954403, 42.691639, 27.061594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072720, 42.310810, 27.092743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569260, 0.110220, -0.814736,
		0.767105, 0.285322, 0.574579,
		0.295793, -0.952073, 0.077872,
		40.161457, 42.025188, 27.116104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673943, 42.751266, 26.847980>,  <39.954403, 42.691639, 27.061594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673943, 42.751266, 26.847980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556522, 42.369781, 26.821882>,  <40.486069, 42.140892, 26.806223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556522, 42.369781, 26.821882>,  <40.673943, 42.751266, 26.847980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556522, 42.369781, 26.821882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501436, -0.095516, -0.859906,
		0.813872, -0.285143, 0.506266,
		-0.293553, -0.953714, -0.065243,
		40.468456, 42.083668, 26.802309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357117, 42.438564, 26.725492>,  <40.673943, 42.751266, 26.847980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357117, 42.438564, 26.725492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079910, 42.179005, 26.599850>,  <40.913586, 42.023270, 26.524464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079910, 42.179005, 26.599850>,  <41.357117, 42.438564, 26.725492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079910, 42.179005, 26.599850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577741, -0.239284, -0.780358,
		0.431210, -0.722273, 0.540721,
		-0.693017, -0.648895, -0.314105,
		40.872005, 41.984337, 26.505617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747078, 41.868481, 26.558548>,  <41.357117, 42.438564, 26.725492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747078, 41.868481, 26.558548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412663, 41.780277, 26.357584>,  <41.212013, 41.727356, 26.237005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412663, 41.780277, 26.357584>,  <41.747078, 41.868481, 26.558548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412663, 41.780277, 26.357584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547690, -0.280685, -0.788195,
		0.032785, -0.934126, 0.355435,
		-0.836039, -0.220509, -0.502409,
		41.161850, 41.714123, 26.206861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.858006, 41.148239, 26.295410>,  <41.747078, 41.868481, 26.558548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.858006, 41.148239, 26.295410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547588, 41.265961, 26.072290>,  <41.361336, 41.336594, 25.938419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547588, 41.265961, 26.072290>,  <41.858006, 41.148239, 26.295410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547588, 41.265961, 26.072290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395269, -0.462220, -0.793798,
		-0.491443, -0.836503, 0.242375,
		-0.776045, 0.294303, -0.557799,
		41.314774, 41.354252, 25.904951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.481125, 40.555477, 25.927410>,  <41.858006, 41.148239, 26.295410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.481125, 40.555477, 25.927410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391125, 40.879467, 25.710775>,  <41.337124, 41.073860, 25.580795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.391125, 40.879467, 25.710775>,  <41.481125, 40.555477, 25.927410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.391125, 40.879467, 25.710775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286576, -0.476242, -0.831304,
		-0.931262, -0.342251, -0.124964,
		-0.225002, 0.809974, -0.541587,
		41.323624, 41.122459, 25.548300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284969, 40.262436, 25.367426>,  <41.481125, 40.555477, 25.927410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284969, 40.262436, 25.367426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381283, 40.632736, 25.250799>,  <41.439072, 40.854916, 25.180822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.381283, 40.632736, 25.250799>,  <41.284969, 40.262436, 25.367426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381283, 40.632736, 25.250799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174017, -0.336713, -0.925388,
		-0.954853, 0.172077, -0.242170,
		0.240780, 0.925750, -0.291567,
		41.453518, 40.910461, 25.163328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987659, 40.402172, 24.634897>,  <41.284969, 40.262436, 25.367426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987659, 40.402172, 24.634897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235256, 40.716217, 24.643436>,  <41.383812, 40.904644, 24.648560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.235256, 40.716217, 24.643436>,  <40.987659, 40.402172, 24.634897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.235256, 40.716217, 24.643436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145243, -0.087716, -0.985500,
		-0.771853, 0.613114, -0.168327,
		0.618989, 0.785110, 0.021347,
		41.420952, 40.951752, 24.649841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811813, 40.881886, 24.041471>,  <40.987659, 40.402172, 24.634897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811813, 40.881886, 24.041471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187996, 40.970348, 24.144726>,  <41.413704, 41.023426, 24.206678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187996, 40.970348, 24.144726>,  <40.811813, 40.881886, 24.041471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187996, 40.970348, 24.144726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269919, -0.024288, -0.962577,
		-0.206613, 0.974935, -0.082537,
		0.940454, 0.221160, 0.258136,
		41.470131, 41.036697, 24.222166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060120, 41.479816, 23.613701>,  <40.811813, 40.881886, 24.041471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060120, 41.479816, 23.613701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387989, 41.290260, 23.742428>,  <41.584709, 41.176529, 23.819664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.387989, 41.290260, 23.742428>,  <41.060120, 41.479816, 23.613701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.387989, 41.290260, 23.742428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400638, 0.072721, -0.913346,
		0.409421, 0.877577, 0.249465,
		0.819673, -0.473888, 0.321818,
		41.633892, 41.148094, 23.838974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698318, 41.844357, 23.240234>,  <41.060120, 41.479816, 23.613701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698318, 41.844357, 23.240234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831364, 41.486275, 23.358883>,  <41.911190, 41.271427, 23.430073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831364, 41.486275, 23.358883>,  <41.698318, 41.844357, 23.240234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831364, 41.486275, 23.358883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498257, -0.100235, -0.861216,
		0.800694, 0.434242, 0.412702,
		0.332609, -0.895202, 0.296622,
		41.931145, 41.217712, 23.447870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423866, 41.816952, 23.001698>,  <41.698318, 41.844357, 23.240234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423866, 41.816952, 23.001698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311634, 41.439728, 23.073164>,  <42.244297, 41.213394, 23.116043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311634, 41.439728, 23.073164>,  <42.423866, 41.816952, 23.001698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311634, 41.439728, 23.073164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467887, -0.296912, -0.832421,
		0.838068, -0.149963, 0.524550,
		-0.280577, -0.943056, 0.178667,
		42.227463, 41.156811, 23.126764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015060, 41.365494, 22.752720>,  <42.423866, 41.816952, 23.001698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.015060, 41.365494, 22.752720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680412, 41.146614, 22.742573>,  <42.479626, 41.015285, 22.736485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680412, 41.146614, 22.742573>,  <43.015060, 41.365494, 22.752720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680412, 41.146614, 22.742573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304501, -0.426055, -0.851913,
		0.455361, -0.720449, 0.523068,
		-0.836616, -0.547203, -0.025368,
		42.429428, 40.982452, 22.734962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.220257, 40.708733, 22.697104>,  <43.015060, 41.365494, 22.752720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.220257, 40.708733, 22.697104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842068, 40.661598, 22.575653>,  <42.615154, 40.633320, 22.502783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.842068, 40.661598, 22.575653>,  <43.220257, 40.708733, 22.697104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.842068, 40.661598, 22.575653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301696, -0.668070, -0.680192,
		-0.122694, -0.734709, 0.667195,
		-0.945476, -0.117835, -0.303627,
		42.558426, 40.626247, 22.484564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108406, 39.961620, 22.599920>,  <43.220257, 40.708733, 22.697104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108406, 39.961620, 22.599920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829185, 40.152012, 22.385941>,  <42.661655, 40.266247, 22.257553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829185, 40.152012, 22.385941>,  <43.108406, 39.961620, 22.599920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829185, 40.152012, 22.385941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204505, -0.583445, -0.785983,
		-0.686227, -0.658053, 0.309932,
		-0.698047, 0.475980, -0.534951,
		42.619770, 40.294804, 22.225456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883068, 39.444401, 22.182417>,  <43.108406, 39.961620, 22.599920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883068, 39.444401, 22.182417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763271, 39.785217, 22.010683>,  <42.691395, 39.989708, 21.907642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.763271, 39.785217, 22.010683>,  <42.883068, 39.444401, 22.182417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763271, 39.785217, 22.010683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115733, -0.414222, -0.902787,
		-0.947054, -0.320065, 0.025447,
		-0.299491, 0.852043, -0.429333,
		42.673424, 40.040829, 21.881884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248577, 38.853138, 21.856258>,  <42.883068, 39.444401, 22.182417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248577, 38.853138, 21.856258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450329, 38.515678, 21.929871>,  <43.571381, 38.313202, 21.974037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.450329, 38.515678, 21.929871>,  <43.248577, 38.853138, 21.856258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450329, 38.515678, 21.929871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508610, -0.118032, 0.852869,
		-0.697797, -0.523767, -0.488618,
		0.504376, -0.843645, 0.184030,
		43.601643, 38.262585, 21.985081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779743, 38.341923, 22.055145>,  <43.248577, 38.853138, 21.856258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779743, 38.341923, 22.055145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122185, 38.203159, 22.208372>,  <43.327648, 38.119900, 22.300308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.122185, 38.203159, 22.208372>,  <42.779743, 38.341923, 22.055145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122185, 38.203159, 22.208372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412035, -0.010754, 0.911104,
		-0.311950, -0.937837, -0.152145,
		0.856104, -0.346908, 0.383067,
		43.379017, 38.099087, 22.323292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550919, 37.827175, 22.493233>,  <42.779743, 38.341923, 22.055145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550919, 37.827175, 22.493233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927101, 37.894882, 22.611141>,  <43.152809, 37.935509, 22.681887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927101, 37.894882, 22.611141>,  <42.550919, 37.827175, 22.493233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927101, 37.894882, 22.611141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298322, -0.004655, 0.954454,
		0.162933, -0.985559, 0.046119,
		0.940455, 0.169271, 0.294772,
		43.209236, 37.945663, 22.699574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.597134, 37.344784, 23.004871>,  <42.550919, 37.827175, 22.493233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.597134, 37.344784, 23.004871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849007, 37.652248, 23.049873>,  <43.000130, 37.836727, 23.076874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849007, 37.652248, 23.049873>,  <42.597134, 37.344784, 23.004871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849007, 37.652248, 23.049873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374990, 0.173915, 0.910569,
		0.680353, -0.615560, 0.397752,
		0.629685, 0.768661, 0.112505,
		43.037910, 37.882847, 23.083626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.770531, 37.276848, 23.623964>,  <42.597134, 37.344784, 23.004871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.770531, 37.276848, 23.623964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875076, 37.655640, 23.549210>,  <42.937801, 37.882915, 23.504356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.875076, 37.655640, 23.549210>,  <42.770531, 37.276848, 23.623964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875076, 37.655640, 23.549210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384565, 0.279746, 0.879688,
		0.885325, -0.158045, 0.437289,
		0.261360, 0.946976, -0.186888,
		42.953484, 37.939732, 23.493143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.132366, 37.467224, 24.195578>,  <42.770531, 37.276848, 23.623964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.132366, 37.467224, 24.195578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.027073, 37.809235, 24.016853>,  <42.963898, 38.014442, 23.909618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.027073, 37.809235, 24.016853>,  <43.132366, 37.467224, 24.195578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.027073, 37.809235, 24.016853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318123, 0.360309, 0.876913,
		0.910773, 0.372970, 0.177160,
		-0.263230, 0.855027, -0.446810,
		42.948105, 38.065742, 23.882811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402458, 38.095028, 24.648273>,  <43.132366, 37.467224, 24.195578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402458, 38.095028, 24.648273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098106, 38.209526, 24.415335>,  <42.915497, 38.278225, 24.275572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098106, 38.209526, 24.415335>,  <43.402458, 38.095028, 24.648273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098106, 38.209526, 24.415335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450313, 0.413242, 0.791485,
		0.467207, 0.864463, -0.185529,
		-0.760878, 0.286241, -0.582349,
		42.869843, 38.295399, 24.240629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.542294, 38.817657, 24.578176>,  <43.402458, 38.095028, 24.648273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.542294, 38.817657, 24.578176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163960, 38.698208, 24.527239>,  <42.936958, 38.626537, 24.496677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163960, 38.698208, 24.527239>,  <43.542294, 38.817657, 24.578176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.163960, 38.698208, 24.527239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278127, 0.543065, 0.792292,
		-0.167440, 0.784797, -0.596706,
		-0.945838, -0.298621, -0.127343,
		42.880207, 38.608620, 24.489037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.091652, 39.456818, 24.679722>,  <43.542294, 38.817657, 24.578176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.091652, 39.456818, 24.679722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.854637, 39.138130, 24.727301>,  <42.712429, 38.946918, 24.755848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.854637, 39.138130, 24.727301>,  <43.091652, 39.456818, 24.679722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.854637, 39.138130, 24.727301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405680, 0.422703, 0.810399,
		-0.695935, 0.431935, -0.573677,
		-0.592535, -0.796715, 0.118946,
		42.676876, 38.899117, 24.762985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528442, 39.730320, 24.864906>,  <43.091652, 39.456818, 24.679722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528442, 39.730320, 24.864906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490574, 39.348278, 24.977205>,  <42.467854, 39.119053, 25.044584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.490574, 39.348278, 24.977205>,  <42.528442, 39.730320, 24.864906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.490574, 39.348278, 24.977205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351466, 0.295922, 0.888201,
		-0.931402, -0.014588, -0.363700,
		-0.094670, -0.955101, 0.280749,
		42.462173, 39.061749, 25.061430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.829540, 39.656017, 25.124308>,  <42.528442, 39.730320, 24.864906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.829540, 39.656017, 25.124308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020180, 39.343910, 25.286312>,  <42.134563, 39.156647, 25.383514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.020180, 39.343910, 25.286312>,  <41.829540, 39.656017, 25.124308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.020180, 39.343910, 25.286312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416077, 0.205632, 0.885774,
		-0.774427, -0.590672, -0.226649,
		0.476596, -0.780270, 0.405012,
		42.163158, 39.109829, 25.407816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352715, 39.201168, 25.464647>,  <41.829540, 39.656017, 25.124308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352715, 39.201168, 25.464647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699726, 39.063675, 25.608452>,  <41.907932, 38.981178, 25.694735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.699726, 39.063675, 25.608452>,  <41.352715, 39.201168, 25.464647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.699726, 39.063675, 25.608452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372794, 0.029156, 0.927456,
		-0.329278, -0.938615, -0.102848,
		0.867525, -0.343733, 0.359510,
		41.959984, 38.960556, 25.716305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089958, 38.931545, 26.009302>,  <41.352715, 39.201168, 25.464647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089958, 38.931545, 26.009302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.482208, 38.957928, 26.083078>,  <41.717560, 38.973759, 26.127344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.482208, 38.957928, 26.083078>,  <41.089958, 38.931545, 26.009302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.482208, 38.957928, 26.083078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180486, -0.061664, 0.981643,
		0.076123, -0.995915, -0.048564,
		0.980627, 0.065961, 0.184443,
		41.776398, 38.977715, 26.138411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193062, 38.404633, 26.436838>,  <41.089958, 38.931545, 26.009302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193062, 38.404633, 26.436838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495262, 38.659042, 26.499701>,  <41.676582, 38.811687, 26.537418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495262, 38.659042, 26.499701>,  <41.193062, 38.404633, 26.436838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495262, 38.659042, 26.499701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215094, 0.014219, 0.976490,
		0.618837, -0.771538, 0.147547,
		0.755497, 0.636025, 0.157154,
		41.721912, 38.849850, 26.546846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669556, 38.123074, 26.942562>,  <41.193062, 38.404633, 26.436838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669556, 38.123074, 26.942562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744232, 38.515690, 26.959196>,  <41.789040, 38.751259, 26.969177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744232, 38.515690, 26.959196>,  <41.669556, 38.123074, 26.942562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744232, 38.515690, 26.959196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200935, -0.003287, 0.979599,
		0.961651, -0.191238, 0.196612,
		0.186691, 0.981538, 0.041587,
		41.800240, 38.810150, 26.971672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078541, 38.222534, 27.546085>,  <41.669556, 38.123074, 26.942562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078541, 38.222534, 27.546085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923180, 38.586205, 27.486027>,  <41.829964, 38.804405, 27.449991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.923180, 38.586205, 27.486027>,  <42.078541, 38.222534, 27.546085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923180, 38.586205, 27.486027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294256, 0.032039, 0.955189,
		0.873245, 0.415180, 0.255086,
		-0.388403, 0.909175, -0.150147,
		41.806660, 38.858955, 27.440983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469570, 38.672009, 27.999905>,  <42.078541, 38.222534, 27.546085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469570, 38.672009, 27.999905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115284, 38.839806, 27.920382>,  <41.902710, 38.940483, 27.872667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.115284, 38.839806, 27.920382>,  <42.469570, 38.672009, 27.999905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115284, 38.839806, 27.920382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174615, 0.095748, 0.979970,
		0.430130, 0.902693, -0.011555,
		-0.885719, 0.419497, -0.198807,
		41.849567, 38.965656, 27.860739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543255, 39.442894, 28.231937>,  <42.469570, 38.672009, 27.999905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543255, 39.442894, 28.231937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163372, 39.318066, 28.221615>,  <41.935444, 39.243168, 28.215422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163372, 39.318066, 28.221615>,  <42.543255, 39.442894, 28.231937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163372, 39.318066, 28.221615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144221, 0.362762, 0.920654,
		-0.277948, 0.878075, -0.389525,
		-0.949708, -0.312072, -0.025808,
		41.878460, 39.224445, 28.213873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247326, 39.889984, 28.682367>,  <42.543255, 39.442894, 28.231937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247326, 39.889984, 28.682367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962746, 39.613819, 28.629944>,  <41.791996, 39.448120, 28.598490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962746, 39.613819, 28.629944>,  <42.247326, 39.889984, 28.682367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962746, 39.613819, 28.629944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354761, 0.191869, 0.915058,
		-0.606617, 0.697512, -0.381435,
		-0.711449, -0.690408, -0.131059,
		41.749310, 39.406696, 28.590626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539017, 40.137905, 28.898643>,  <42.247326, 39.889984, 28.682367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539017, 40.137905, 28.898643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518921, 39.738667, 28.912909>,  <41.506863, 39.499123, 28.921467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518921, 39.738667, 28.912909>,  <41.539017, 40.137905, 28.898643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518921, 39.738667, 28.912909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606333, 0.058856, 0.793029,
		-0.793622, 0.018222, -0.608139,
		-0.050243, -0.998100, 0.035661,
		41.503849, 39.439236, 28.923607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885918, 40.141167, 28.974581>,  <41.539017, 40.137905, 28.898643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885918, 40.141167, 28.974581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051388, 39.790596, 29.073166>,  <41.150669, 39.580254, 29.132317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.051388, 39.790596, 29.073166>,  <40.885918, 40.141167, 28.974581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.051388, 39.790596, 29.073166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364408, 0.088683, 0.927007,
		-0.834312, -0.473296, -0.282691,
		0.413679, -0.876428, 0.246463,
		41.175491, 39.527668, 29.147104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343792, 39.781265, 29.189659>,  <40.885918, 40.141167, 28.974581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343792, 39.781265, 29.189659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658970, 39.591431, 29.346582>,  <40.848076, 39.477531, 29.440737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.658970, 39.591431, 29.346582>,  <40.343792, 39.781265, 29.189659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658970, 39.591431, 29.346582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477688, -0.069130, 0.875805,
		-0.388524, -0.877491, -0.281174,
		0.787948, -0.474585, 0.392309,
		40.895355, 39.449055, 29.464275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127762, 39.108490, 29.457354>,  <40.343792, 39.781265, 29.189659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127762, 39.108490, 29.457354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472374, 39.158085, 29.654285>,  <40.679142, 39.187840, 29.772444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.472374, 39.158085, 29.654285>,  <40.127762, 39.108490, 29.457354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472374, 39.158085, 29.654285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400778, -0.429211, 0.809417,
		0.311666, -0.894654, -0.320091,
		0.861535, 0.123983, 0.492328,
		40.730835, 39.195278, 29.801983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.282543, 38.417767, 29.755226>,  <40.127762, 39.108490, 29.457354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.282543, 38.417767, 29.755226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490250, 38.669304, 29.986715>,  <40.614872, 38.820225, 30.125610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.490250, 38.669304, 29.986715>,  <40.282543, 38.417767, 29.755226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.490250, 38.669304, 29.986715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367941, -0.446702, 0.815522,
		0.771351, -0.636410, -0.000582,
		0.519266, 0.628839, 0.578725,
		40.646030, 38.857956, 30.160334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495346, 38.017349, 30.374632>,  <40.282543, 38.417767, 29.755226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495346, 38.017349, 30.374632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560322, 38.392437, 30.497467>,  <40.599308, 38.617489, 30.571167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560322, 38.392437, 30.497467>,  <40.495346, 38.017349, 30.374632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560322, 38.392437, 30.497467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170776, -0.279805, 0.944746,
		0.971827, -0.205910, 0.114687,
		0.162443, 0.937716, 0.307087,
		40.609055, 38.673752, 30.589594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.850300, 37.953011, 30.958260>,  <40.495346, 38.017349, 30.374632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.850300, 37.953011, 30.958260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694504, 38.319073, 30.999815>,  <40.601025, 38.538708, 31.024748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694504, 38.319073, 30.999815>,  <40.850300, 37.953011, 30.958260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694504, 38.319073, 30.999815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252677, -0.214641, 0.943442,
		0.885691, 0.341215, 0.314839,
		-0.389494, 0.915151, 0.103889,
		40.577656, 38.593616, 31.030981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971073, 38.193268, 31.610115>,  <40.850300, 37.953011, 30.958260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971073, 38.193268, 31.610115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678753, 38.440308, 31.493845>,  <40.503361, 38.588531, 31.424082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.678753, 38.440308, 31.493845>,  <40.971073, 38.193268, 31.610115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678753, 38.440308, 31.493845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356195, 0.018218, 0.934234,
		0.582280, 0.786280, 0.206673,
		-0.730804, 0.617602, -0.290677,
		40.459511, 38.625587, 31.406643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.010227, 38.851757, 31.994404>,  <40.971073, 38.193268, 31.610115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.010227, 38.851757, 31.994404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626751, 38.811001, 31.888176>,  <40.396664, 38.786545, 31.824438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.626751, 38.811001, 31.888176>,  <41.010227, 38.851757, 31.994404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.626751, 38.811001, 31.888176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278792, 0.151331, 0.948353,
		-0.056442, 0.983217, -0.173487,
		-0.958691, -0.101894, -0.265572,
		40.339142, 38.780434, 31.808504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669991, 39.450748, 32.301384>,  <41.010227, 38.851757, 31.994404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669991, 39.450748, 32.301384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404266, 39.160393, 32.230076>,  <40.244831, 38.986179, 32.187290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.404266, 39.160393, 32.230076>,  <40.669991, 39.450748, 32.301384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404266, 39.160393, 32.230076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330704, 0.071554, 0.941018,
		-0.670315, 0.684084, -0.287587,
		-0.664314, -0.725885, -0.178266,
		40.204971, 38.942627, 32.176598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111855, 39.673775, 32.563450>,  <40.669991, 39.450748, 32.301384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111855, 39.673775, 32.563450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041000, 39.280952, 32.537586>,  <39.998486, 39.045258, 32.522068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041000, 39.280952, 32.537586>,  <40.111855, 39.673775, 32.563450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041000, 39.280952, 32.537586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298180, -0.009062, 0.954467,
		-0.937929, 0.188353, -0.291225,
		-0.177137, -0.982060, -0.064662,
		39.987858, 38.986336, 32.518188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492989, 39.567196, 33.022240>,  <40.111855, 39.673775, 32.563450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492989, 39.567196, 33.022240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640228, 39.202930, 32.947193>,  <39.728573, 38.984371, 32.902164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.640228, 39.202930, 32.947193>,  <39.492989, 39.567196, 33.022240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640228, 39.202930, 32.947193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051370, -0.221400, 0.973829,
		-0.928365, -0.348830, -0.128279,
		0.368101, -0.910659, -0.187621,
		39.750660, 38.929733, 32.890907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108582, 39.098408, 33.444374>,  <39.492989, 39.567196, 33.022240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108582, 39.098408, 33.444374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453175, 38.921383, 33.344791>,  <39.659931, 38.815166, 33.285042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453175, 38.921383, 33.344791>,  <39.108582, 39.098408, 33.444374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453175, 38.921383, 33.344791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200767, -0.153464, 0.967544,
		-0.466404, -0.883509, -0.043355,
		0.861487, -0.442562, -0.248955,
		39.711620, 38.788616, 33.270103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069408, 38.484291, 33.780102>,  <39.108582, 39.098408, 33.444374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069408, 38.484291, 33.780102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460346, 38.551960, 33.729237>,  <39.694908, 38.592564, 33.698719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460346, 38.551960, 33.729237>,  <39.069408, 38.484291, 33.780102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460346, 38.551960, 33.729237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171348, -0.279844, 0.944631,
		0.124223, -0.945022, -0.302493,
		0.977348, 0.169176, -0.127164,
		39.753551, 38.602715, 33.691086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298927, 37.923462, 34.175400>,  <39.069408, 38.484291, 33.780102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298927, 37.923462, 34.175400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623203, 38.155048, 34.140579>,  <39.817768, 38.293999, 34.119686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623203, 38.155048, 34.140579>,  <39.298927, 37.923462, 34.175400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623203, 38.155048, 34.140579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277432, -0.248954, 0.927930,
		0.515569, -0.776415, -0.362448,
		0.810691, 0.578966, -0.087049,
		39.866409, 38.328739, 34.114464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973518, 37.517876, 34.423477>,  <39.298927, 37.923462, 34.175400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973518, 37.517876, 34.423477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061489, 37.907013, 34.452370>,  <40.114269, 38.140495, 34.469704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061489, 37.907013, 34.452370>,  <39.973518, 37.517876, 34.423477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061489, 37.907013, 34.452370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393655, -0.156248, 0.905882,
		0.892563, -0.170793, -0.417326,
		0.219924, 0.972839, 0.072228,
		40.127468, 38.198864, 34.474037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566273, 37.562027, 34.852047>,  <39.973518, 37.517876, 34.423477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566273, 37.562027, 34.852047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448544, 37.943893, 34.869835>,  <40.377907, 38.173016, 34.880508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.448544, 37.943893, 34.869835>,  <40.566273, 37.562027, 34.852047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448544, 37.943893, 34.869835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375935, 0.072867, 0.923777,
		0.878662, 0.288607, -0.380340,
		-0.294323, 0.954671, 0.044472,
		40.360249, 38.230293, 34.883175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041603, 38.000217, 35.241600>,  <40.566273, 37.562027, 34.852047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041603, 38.000217, 35.241600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694546, 38.194286, 35.285061>,  <40.486313, 38.310726, 35.311138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694546, 38.194286, 35.285061>,  <41.041603, 38.000217, 35.241600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694546, 38.194286, 35.285061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201831, 0.143988, 0.968779,
		0.454380, 0.862482, -0.222852,
		-0.867642, 0.485172, 0.108650,
		40.434254, 38.339836, 35.317657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236576, 38.498917, 35.732388>,  <41.041603, 38.000217, 35.241600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236576, 38.498917, 35.732388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837212, 38.489231, 35.752758>,  <40.597595, 38.483418, 35.764980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.837212, 38.489231, 35.752758>,  <41.236576, 38.498917, 35.732388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.837212, 38.489231, 35.752758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038676, 0.363242, 0.930892,
		-0.041043, 0.931380, -0.361727,
		-0.998409, -0.024217, 0.050931,
		40.537689, 38.481968, 35.768036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023781, 39.062080, 36.138435>,  <41.236576, 38.498917, 35.732388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023781, 39.062080, 36.138435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702766, 38.824757, 36.163483>,  <40.510159, 38.682362, 36.178509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702766, 38.824757, 36.163483>,  <41.023781, 39.062080, 36.138435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702766, 38.824757, 36.163483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210768, 0.380137, 0.900596,
		-0.558133, 0.709564, -0.430124,
		-0.802536, -0.593309, 0.062614,
		40.462006, 38.646763, 36.182266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433605, 39.440205, 36.525101>,  <41.023781, 39.062080, 36.138435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433605, 39.440205, 36.525101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333172, 39.055027, 36.564480>,  <40.272911, 38.823921, 36.588108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333172, 39.055027, 36.564480>,  <40.433605, 39.440205, 36.525101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333172, 39.055027, 36.564480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325474, 0.179767, 0.928305,
		-0.911606, 0.201039, -0.358550,
		-0.251081, -0.962947, 0.098444,
		40.257847, 38.766144, 36.594013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742405, 39.472363, 36.824059>,  <40.433605, 39.440205, 36.525101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742405, 39.472363, 36.824059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889496, 39.108128, 36.899536>,  <39.977749, 38.889587, 36.944820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889496, 39.108128, 36.899536>,  <39.742405, 39.472363, 36.824059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889496, 39.108128, 36.899536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406402, 0.025143, 0.913348,
		-0.836429, -0.412547, -0.360820,
		0.367727, -0.910589, 0.188690,
		39.999813, 38.834949, 36.956142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254200, 39.124393, 37.137089>,  <39.742405, 39.472363, 36.824059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254200, 39.124393, 37.137089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541874, 38.857754, 37.215485>,  <39.714478, 38.697769, 37.262524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.541874, 38.857754, 37.215485>,  <39.254200, 39.124393, 37.137089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541874, 38.857754, 37.215485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363578, -0.120675, 0.923715,
		-0.592097, -0.735582, -0.329149,
		0.719188, -0.666600, 0.195990,
		39.757629, 38.657772, 37.274281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876736, 38.606434, 37.369892>,  <39.254200, 39.124393, 37.137089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876736, 38.606434, 37.369892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245255, 38.540062, 37.510559>,  <39.466366, 38.500240, 37.594959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245255, 38.540062, 37.510559>,  <38.876736, 38.606434, 37.369892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245255, 38.540062, 37.510559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375208, -0.141878, 0.916018,
		-0.102096, -0.975879, -0.192969,
		0.921301, -0.165925, 0.351672,
		39.521645, 38.490284, 37.616062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673893, 38.474915, 37.979584>,  <38.876736, 38.606434, 37.369892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673893, 38.474915, 37.979584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066616, 38.404488, 38.008034>,  <39.302250, 38.362232, 38.025105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066616, 38.404488, 38.008034>,  <38.673893, 38.474915, 37.979584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066616, 38.404488, 38.008034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117978, -0.272114, 0.955005,
		-0.148792, -0.946020, -0.287935,
		0.981806, -0.176068, 0.071121,
		39.361156, 38.351665, 38.029369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830093, 37.680683, 37.867287>,  <38.673893, 38.474915, 37.979584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830093, 37.680683, 37.867287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064583, 37.924244, 38.081047>,  <39.205276, 38.070381, 38.209305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.064583, 37.924244, 38.081047>,  <38.830093, 37.680683, 37.867287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064583, 37.924244, 38.081047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549483, -0.185887, 0.814564,
		0.595325, -0.771161, 0.225608,
		0.586222, 0.608899, 0.534402,
		39.240448, 38.106915, 38.241367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991955, 37.341591, 38.431515>,  <38.830093, 37.680683, 37.867287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991955, 37.341591, 38.431515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024601, 37.735806, 38.490921>,  <39.044189, 37.972336, 38.526566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024601, 37.735806, 38.490921>,  <38.991955, 37.341591, 38.431515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024601, 37.735806, 38.490921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517500, -0.085452, 0.851406,
		0.851782, -0.146345, 0.503041,
		0.081613, 0.985536, 0.148520,
		39.049084, 38.031467, 38.535477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109436, 37.426132, 39.102272>,  <38.991955, 37.341591, 38.431515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109436, 37.426132, 39.102272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007286, 37.799351, 39.000919>,  <38.945995, 38.023281, 38.940109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007286, 37.799351, 39.000919>,  <39.109436, 37.426132, 39.102272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007286, 37.799351, 39.000919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644735, 0.030949, 0.763780,
		0.720487, 0.358411, 0.593667,
		-0.255374, 0.933051, -0.253378,
		38.930676, 38.079266, 38.924908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983414, 37.728790, 39.752342>,  <39.109436, 37.426132, 39.102272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983414, 37.728790, 39.752342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825272, 37.985695, 39.489681>,  <38.730385, 38.139839, 39.332085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825272, 37.985695, 39.489681>,  <38.983414, 37.728790, 39.752342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825272, 37.985695, 39.489681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618385, 0.342504, 0.707313,
		0.679187, 0.685704, 0.261755,
		-0.395355, 0.642263, -0.656653,
		38.706665, 38.178375, 39.292686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259274, 38.517197, 39.789429>,  <38.983414, 37.728790, 39.752342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259274, 38.517197, 39.789429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874355, 38.425587, 39.730728>,  <38.643406, 38.370621, 39.695507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.874355, 38.425587, 39.730728>,  <39.259274, 38.517197, 39.789429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.874355, 38.425587, 39.730728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222548, 0.352722, 0.908878,
		-0.156393, 0.907268, -0.390392,
		-0.962296, -0.229023, -0.146748,
		38.585667, 38.356880, 39.686703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868816, 38.978947, 40.100906>,  <39.259274, 38.517197, 39.789429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868816, 38.978947, 40.100906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608616, 38.675747, 40.081829>,  <38.452496, 38.493828, 40.070381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608616, 38.675747, 40.081829>,  <38.868816, 38.978947, 40.100906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608616, 38.675747, 40.081829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168511, 0.082814, 0.982215,
		-0.740573, 0.646972, -0.181603,
		-0.650504, -0.758003, -0.047692,
		38.413464, 38.448345, 40.067520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335335, 39.231392, 40.451939>,  <38.868816, 38.978947, 40.100906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335335, 39.231392, 40.451939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311485, 38.833416, 40.484276>,  <38.297176, 38.594631, 40.503677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311485, 38.833416, 40.484276>,  <38.335335, 39.231392, 40.451939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311485, 38.833416, 40.484276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441313, 0.098911, 0.891885,
		-0.895370, 0.017502, -0.444978,
		-0.059623, -0.994942, 0.080839,
		38.293598, 38.534935, 40.508526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686291, 39.232616, 40.653748>,  <38.335335, 39.231392, 40.451939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686291, 39.232616, 40.653748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910374, 38.916153, 40.751923>,  <38.044823, 38.726276, 40.810829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910374, 38.916153, 40.751923>,  <37.686291, 39.232616, 40.653748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910374, 38.916153, 40.751923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419044, -0.015085, 0.907841,
		-0.714541, -0.611428, -0.339980,
		0.560208, -0.791156, 0.245436,
		38.078438, 38.678806, 40.825554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147522, 38.846901, 41.036652>,  <37.686291, 39.232616, 40.653748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147522, 38.846901, 41.036652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490704, 38.655293, 41.110901>,  <37.696613, 38.540329, 41.155449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490704, 38.655293, 41.110901>,  <37.147522, 38.846901, 41.036652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490704, 38.655293, 41.110901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232267, -0.039412, 0.971853,
		-0.458218, -0.876921, -0.145074,
		0.857956, -0.479017, 0.185621,
		37.748089, 38.511589, 41.166588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019482, 38.282764, 41.528156>,  <37.147522, 38.846901, 41.036652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019482, 38.282764, 41.528156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415340, 38.323906, 41.568192>,  <37.652855, 38.348591, 41.592213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415340, 38.323906, 41.568192>,  <37.019482, 38.282764, 41.528156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415340, 38.323906, 41.568192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092459, -0.076427, 0.992779,
		0.109762, -0.991756, -0.066126,
		0.989648, 0.102856, 0.100085,
		37.712234, 38.354763, 41.598217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142273, 37.867401, 42.043354>,  <37.019482, 38.282764, 41.528156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142273, 37.867401, 42.043354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456875, 38.114025, 42.057552>,  <37.645638, 38.262001, 42.066071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.456875, 38.114025, 42.057552>,  <37.142273, 37.867401, 42.043354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456875, 38.114025, 42.057552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038776, -0.106661, 0.993539,
		0.616362, -0.780049, -0.107797,
		0.786507, 0.616560, 0.035495,
		37.692825, 38.298992, 42.068199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795601, 37.608170, 42.314304>,  <37.142273, 37.867401, 42.043354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795601, 37.608170, 42.314304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776230, 38.004791, 42.362442>,  <37.764606, 38.242764, 42.391327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.776230, 38.004791, 42.362442>,  <37.795601, 37.608170, 42.314304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776230, 38.004791, 42.362442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077383, -0.123851, 0.989279,
		0.995825, 0.038598, 0.082727,
		-0.048430, 0.991550, 0.120347,
		37.761700, 38.302258, 42.398544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955833, 37.526031, 42.973167>,  <37.795601, 37.608170, 42.314304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955833, 37.526031, 42.973167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873322, 37.915806, 42.937561>,  <37.823814, 38.149670, 42.916199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873322, 37.915806, 42.937561>,  <37.955833, 37.526031, 42.973167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873322, 37.915806, 42.937561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054324, 0.079428, 0.995359,
		0.976984, 0.210158, 0.036551,
		-0.206280, 0.974436, -0.089017,
		37.811440, 38.208138, 42.910854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446304, 37.810825, 43.385521>,  <37.955833, 37.526031, 42.973167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446304, 37.810825, 43.385521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195499, 38.116882, 43.326977>,  <38.045017, 38.300518, 43.291851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195499, 38.116882, 43.326977>,  <38.446304, 37.810825, 43.385521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195499, 38.116882, 43.326977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081580, 0.251333, 0.964457,
		0.774729, 0.592783, -0.220008,
		-0.627008, 0.765141, -0.146356,
		38.007397, 38.346424, 43.283070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853352, 38.457096, 43.476006>,  <38.446304, 37.810825, 43.385521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853352, 38.457096, 43.476006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464241, 38.501122, 43.557575>,  <38.230774, 38.527538, 43.606518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464241, 38.501122, 43.557575>,  <38.853352, 38.457096, 43.476006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464241, 38.501122, 43.557575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215907, 0.110862, 0.970100,
		0.084163, 0.987723, -0.131608,
		-0.972780, 0.110062, 0.203926,
		38.172405, 38.534142, 43.618752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883904, 39.083206, 43.956978>,  <38.853352, 38.457096, 43.476006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883904, 39.083206, 43.956978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524437, 38.911297, 43.992062>,  <38.308758, 38.808151, 44.013111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524437, 38.911297, 43.992062>,  <38.883904, 39.083206, 43.956978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524437, 38.911297, 43.992062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001831, 0.196283, 0.980546,
		-0.438627, 0.881345, -0.175607,
		-0.898668, -0.429772, 0.087709,
		38.254837, 38.782364, 44.018375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272041, 39.508041, 44.113579>,  <38.883904, 39.083206, 43.956978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272041, 39.508041, 44.113579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296505, 39.132915, 44.250259>,  <38.311184, 38.907841, 44.332268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.296505, 39.132915, 44.250259>,  <38.272041, 39.508041, 44.113579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296505, 39.132915, 44.250259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248439, 0.345871, 0.904794,
		-0.966715, 0.029559, 0.254142,
		0.061156, -0.937816, 0.341702,
		38.314854, 38.851570, 44.352772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015430, 39.600613, 44.716698>,  <38.272041, 39.508041, 44.113579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015430, 39.600613, 44.716698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212837, 39.252716, 44.716343>,  <38.331280, 39.043980, 44.716129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212837, 39.252716, 44.716343>,  <38.015430, 39.600613, 44.716698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212837, 39.252716, 44.716343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181473, 0.101977, 0.978094,
		-0.850596, -0.482862, 0.208161,
		0.493512, -0.869738, -0.000885,
		38.360889, 38.991795, 44.716076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627209, 39.049118, 44.816601>,  <38.015430, 39.600613, 44.716698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627209, 39.049118, 44.816601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819012, 38.781513, 45.043755>,  <37.934093, 38.620949, 45.180046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819012, 38.781513, 45.043755>,  <37.627209, 39.049118, 44.816601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819012, 38.781513, 45.043755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861100, -0.234059, 0.451356,
		-0.169043, -0.705437, -0.688319,
		0.479511, -0.669010, 0.567886,
		37.962864, 38.580811, 45.214119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208714, 38.573730, 45.083637>,  <37.627209, 39.049118, 44.816601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208714, 38.573730, 45.083637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487633, 38.553543, 45.369640>,  <37.654984, 38.541431, 45.541241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.487633, 38.553543, 45.369640>,  <37.208714, 38.573730, 45.083637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487633, 38.553543, 45.369640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715456, -0.109750, 0.689984,
		0.043653, -0.992677, -0.112633,
		0.697293, -0.050464, 0.715007,
		37.696819, 38.538403, 45.584141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216438, 37.858616, 44.783638>,  <37.208714, 38.573730, 45.083637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216438, 37.858616, 44.783638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149261, 37.836075, 45.177311>,  <37.108955, 37.822548, 45.413517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149261, 37.836075, 45.177311>,  <37.216438, 37.858616, 44.783638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149261, 37.836075, 45.177311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773901, -0.610882, -0.167037,
		0.610634, -0.789714, 0.058975,
		-0.167938, -0.056357, 0.984185,
		37.098881, 37.819168, 45.472565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074955, 38.452206, 44.247536>,  <37.216438, 37.858616, 44.783638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074955, 38.452206, 44.247536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430634, 38.607613, 44.150883>,  <37.644039, 38.700855, 44.092892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.430634, 38.607613, 44.150883>,  <37.074955, 38.452206, 44.247536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430634, 38.607613, 44.150883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256812, -0.013251, -0.966370,
		-0.378650, 0.921348, 0.087993,
		0.889197, 0.388514, -0.241631,
		37.697392, 38.724167, 44.078392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937771, 38.918297, 43.801979>,  <37.074955, 38.452206, 44.247536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937771, 38.918297, 43.801979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321827, 38.817230, 43.754177>,  <37.552261, 38.756592, 43.725494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321827, 38.817230, 43.754177>,  <36.937771, 38.918297, 43.801979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321827, 38.817230, 43.754177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110766, 0.048599, -0.992657,
		0.256619, 0.966332, 0.018675,
		0.960145, -0.252666, -0.119509,
		37.609871, 38.741432, 43.718323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070156, 39.255955, 43.189808>,  <36.937771, 38.918297, 43.801979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070156, 39.255955, 43.189808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361885, 38.983051, 43.210236>,  <37.536922, 38.819309, 43.222492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361885, 38.983051, 43.210236>,  <37.070156, 39.255955, 43.189808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361885, 38.983051, 43.210236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078030, 0.008792, -0.996912,
		0.679701, 0.731060, 0.059649,
		0.729327, -0.682257, 0.051068,
		37.580685, 38.778374, 43.225555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647213, 39.522400, 42.807980>,  <37.070156, 39.255955, 43.189808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647213, 39.522400, 42.807980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677074, 39.124039, 42.828396>,  <37.694992, 38.885021, 42.840645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677074, 39.124039, 42.828396>,  <37.647213, 39.522400, 42.807980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677074, 39.124039, 42.828396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066925, -0.046061, -0.996694,
		0.994961, 0.077826, 0.063212,
		0.074657, -0.995902, 0.051038,
		37.699471, 38.825268, 42.843708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312782, 39.393806, 42.476704>,  <37.647213, 39.522400, 42.807980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312782, 39.393806, 42.476704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147316, 39.029636, 42.476643>,  <38.048035, 38.811134, 42.476608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147316, 39.029636, 42.476643>,  <38.312782, 39.393806, 42.476704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147316, 39.029636, 42.476643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310250, -0.140813, -0.940168,
		0.855935, -0.388963, 0.340710,
		-0.413667, -0.910428, -0.000149,
		38.023216, 38.756508, 42.476597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.818665, 38.973598, 42.266109>,  <38.312782, 39.393806, 42.476704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.818665, 38.973598, 42.266109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473255, 38.787327, 42.188690>,  <38.266010, 38.675564, 42.142239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473255, 38.787327, 42.188690>,  <38.818665, 38.973598, 42.266109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473255, 38.787327, 42.188690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224605, -0.011521, -0.974382,
		0.451522, -0.884877, 0.114543,
		-0.863528, -0.465682, -0.193546,
		38.214195, 38.647621, 42.130627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.973457, 38.684361, 41.732101>,  <38.818665, 38.973598, 42.266109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.973457, 38.684361, 41.732101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586533, 38.588886, 41.697845>,  <38.354378, 38.531601, 41.677292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586533, 38.588886, 41.697845>,  <38.973457, 38.684361, 41.732101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586533, 38.588886, 41.697845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118562, -0.127148, -0.984772,
		0.224161, -0.962737, 0.151291,
		-0.967313, -0.238685, -0.085643,
		38.296337, 38.517281, 41.672153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885006, 38.013641, 41.331474>,  <38.973457, 38.684361, 41.732101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885006, 38.013641, 41.331474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529133, 38.192276, 41.293453>,  <38.315609, 38.299458, 41.270641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529133, 38.192276, 41.293453>,  <38.885006, 38.013641, 41.331474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529133, 38.192276, 41.293453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063793, -0.327712, -0.942622,
		-0.452107, -0.832568, 0.320047,
		-0.889680, 0.446582, -0.095049,
		38.262230, 38.326252, 41.264938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336491, 37.449184, 41.132851>,  <38.885006, 38.013641, 41.331474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336491, 37.449184, 41.132851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198956, 37.803448, 41.008030>,  <38.116436, 38.016006, 40.933136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.198956, 37.803448, 41.008030>,  <38.336491, 37.449184, 41.132851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198956, 37.803448, 41.008030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065831, -0.308766, -0.948857,
		-0.936720, -0.346794, 0.047860,
		-0.343835, 0.885662, -0.312057,
		38.095806, 38.069145, 40.914413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777756, 37.426205, 40.571884>,  <38.336491, 37.449184, 41.132851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777756, 37.426205, 40.571884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961521, 37.779469, 40.533997>,  <38.071781, 37.991428, 40.511265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961521, 37.779469, 40.533997>,  <37.777756, 37.426205, 40.571884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961521, 37.779469, 40.533997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014945, -0.098939, -0.994981,
		-0.888099, 0.458519, -0.032255,
		0.459409, 0.883160, -0.094720,
		38.099342, 38.044418, 40.505581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485214, 37.547371, 39.925350>,  <37.777756, 37.426205, 40.571884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485214, 37.547371, 39.925350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777905, 37.815067, 39.977051>,  <37.953518, 37.975685, 40.008072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.777905, 37.815067, 39.977051>,  <37.485214, 37.547371, 39.925350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777905, 37.815067, 39.977051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048228, 0.138325, -0.989212,
		-0.679896, 0.730061, 0.068939,
		0.731721, 0.669236, 0.129256,
		37.997421, 38.015839, 40.015827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346474, 38.099907, 39.353592>,  <37.485214, 37.547371, 39.925350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346474, 38.099907, 39.353592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729767, 38.168461, 39.445164>,  <37.959743, 38.209595, 39.500107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729767, 38.168461, 39.445164>,  <37.346474, 38.099907, 39.353592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729767, 38.168461, 39.445164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175966, 0.277671, -0.944423,
		-0.225428, 0.945265, 0.235917,
		0.958237, 0.171386, 0.228929,
		38.017239, 38.219875, 39.513844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628082, 38.675838, 38.957542>,  <37.346474, 38.099907, 39.353592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628082, 38.675838, 38.957542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941170, 38.462429, 39.085735>,  <38.129021, 38.334385, 39.162651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.941170, 38.462429, 39.085735>,  <37.628082, 38.675838, 38.957542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941170, 38.462429, 39.085735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442947, 0.115809, -0.889037,
		0.437206, 0.837821, 0.326968,
		0.782719, -0.533522, 0.320478,
		38.175987, 38.302372, 39.181877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054199, 38.751350, 38.368759>,  <37.628082, 38.675838, 38.957542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054199, 38.751350, 38.368759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258541, 38.582458, 38.668293>,  <38.381145, 38.481121, 38.848011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258541, 38.582458, 38.668293>,  <38.054199, 38.751350, 38.368759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258541, 38.582458, 38.668293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854679, 0.155750, -0.495243,
		0.092478, 0.893006, 0.440440,
		0.510854, -0.422234, 0.748830,
		38.411797, 38.455788, 38.892941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512356, 39.255844, 38.604336>,  <38.054199, 38.751350, 38.368759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512356, 39.255844, 38.604336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633793, 38.882225, 38.679588>,  <38.706654, 38.658054, 38.724739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.633793, 38.882225, 38.679588>,  <38.512356, 39.255844, 38.604336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633793, 38.882225, 38.679588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878323, 0.197822, -0.435219,
		0.369298, 0.297368, 0.880450,
		0.303592, -0.934044, 0.188130,
		38.724869, 38.602013, 38.736027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247047, 39.285240, 38.791515>,  <38.512356, 39.255844, 38.604336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247047, 39.285240, 38.791515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158863, 38.911766, 38.678646>,  <39.105953, 38.687679, 38.610924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158863, 38.911766, 38.678646>,  <39.247047, 39.285240, 38.791515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158863, 38.911766, 38.678646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840940, -0.035371, -0.539970,
		0.494183, -0.356336, 0.792974,
		-0.220459, -0.933688, -0.282177,
		39.092724, 38.631660, 38.593994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882320, 39.033531, 38.920422>,  <39.247047, 39.285240, 38.791515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882320, 39.033531, 38.920422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686073, 38.755672, 38.709988>,  <39.568325, 38.588959, 38.583729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.686073, 38.755672, 38.709988>,  <39.882320, 39.033531, 38.920422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686073, 38.755672, 38.709988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674100, 0.080003, -0.734294,
		0.552161, -0.714891, 0.429009,
		-0.490619, -0.694644, -0.526083,
		39.538887, 38.547279, 38.552162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340145, 38.434109, 38.770920>,  <39.882320, 39.033531, 38.920422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340145, 38.434109, 38.770920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049934, 38.433247, 38.495644>,  <39.875809, 38.432728, 38.330479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049934, 38.433247, 38.495644>,  <40.340145, 38.434109, 38.770920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049934, 38.433247, 38.495644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687902, -0.031353, -0.725126,
		-0.020017, -0.999506, 0.024227,
		-0.725527, -0.002151, -0.688190,
		39.832275, 38.432602, 38.289188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766815, 38.368145, 38.177753>,  <40.340145, 38.434109, 38.770920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.766815, 38.368145, 38.177753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400677, 38.390335, 38.018227>,  <40.180992, 38.403648, 37.922508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400677, 38.390335, 38.018227>,  <40.766815, 38.368145, 38.177753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400677, 38.390335, 38.018227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399140, -0.005679, -0.916873,
		-0.053129, -0.998444, -0.016944,
		-0.915350, 0.055476, -0.398820,
		40.126072, 38.406979, 37.898579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705975, 37.889004, 37.625809>,  <40.766815, 38.368145, 38.177753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705975, 37.889004, 37.625809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402790, 38.130264, 37.526440>,  <40.220879, 38.275021, 37.466816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.402790, 38.130264, 37.526440>,  <40.705975, 37.889004, 37.625809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402790, 38.130264, 37.526440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240600, -0.095488, -0.965916,
		-0.606311, -0.791894, -0.072742,
		-0.757957, 0.603147, -0.248425,
		40.175404, 38.311207, 37.451912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419319, 37.565456, 37.145103>,  <40.705975, 37.889004, 37.625809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.419319, 37.565456, 37.145103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297798, 37.941303, 37.082085>,  <40.224884, 38.166813, 37.044273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.297798, 37.941303, 37.082085>,  <40.419319, 37.565456, 37.145103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297798, 37.941303, 37.082085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104936, -0.131355, -0.985766,
		-0.946939, -0.316010, -0.058694,
		-0.303802, 0.939619, -0.157546,
		40.206657, 38.223190, 37.034821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.107338, 37.605110, 36.831165>,  <40.419319, 37.565456, 37.145103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.107338, 37.605110, 36.831165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484093, 37.512791, 36.733524>,  <41.710144, 37.457397, 36.674938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484093, 37.512791, 36.733524>,  <41.107338, 37.605110, 36.831165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484093, 37.512791, 36.733524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003391, -0.733131, 0.680079,
		-0.335923, -0.639728, -0.691306,
		0.941884, -0.230798, -0.244106,
		41.766659, 37.443550, 36.660294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.262760, 36.832397, 36.819565>,  <41.107338, 37.605110, 36.831165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.262760, 36.832397, 36.819565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613232, 37.007877, 36.899426>,  <41.823513, 37.113163, 36.947342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.613232, 37.007877, 36.899426>,  <41.262760, 36.832397, 36.819565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613232, 37.007877, 36.899426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142081, -0.630893, 0.762750,
		0.460575, -0.639936, -0.615104,
		0.876176, 0.438698, 0.199650,
		41.876083, 37.139488, 36.959320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878601, 36.587025, 37.187828>,  <41.262760, 36.832397, 36.819565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878601, 36.587025, 37.187828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042694, 36.695175, 37.536221>,  <42.141148, 36.760063, 37.745255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.042694, 36.695175, 37.536221>,  <41.878601, 36.587025, 37.187828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.042694, 36.695175, 37.536221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851507, 0.455545, 0.259645,
		-0.326570, -0.848161, 0.417103,
		0.410229, 0.270373, 0.870982,
		42.165764, 36.776287, 37.797516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.660961, 36.332703, 37.897850>,  <41.878601, 36.587025, 37.187828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.660961, 36.332703, 37.897850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757042, 36.718952, 37.937584>,  <41.814690, 36.950703, 37.961422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.757042, 36.718952, 37.937584>,  <41.660961, 36.332703, 37.897850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.757042, 36.718952, 37.937584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969076, 0.232581, 0.082456,
		0.056519, -0.116066, 0.991632,
		0.240205, 0.965627, 0.099332,
		41.829102, 37.008640, 37.967384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368633, 35.931419, 37.700146>,  <41.660961, 36.332703, 37.897850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368633, 35.931419, 37.700146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682789, 35.686943, 37.739353>,  <42.871281, 35.540257, 37.762878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682789, 35.686943, 37.739353>,  <42.368633, 35.931419, 37.700146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682789, 35.686943, 37.739353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616429, 0.757836, -0.213777,
		0.056376, 0.228321, 0.971952,
		0.785390, -0.611192, 0.098020,
		42.918407, 35.503586, 37.768761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931198, 36.203857, 38.183670>,  <42.368633, 35.931419, 37.700146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931198, 36.203857, 38.183670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161098, 35.946259, 37.981709>,  <43.299038, 35.791698, 37.860531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.161098, 35.946259, 37.981709>,  <42.931198, 36.203857, 38.183670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.161098, 35.946259, 37.981709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656130, 0.731376, -0.185964,
		0.489032, -0.224397, 0.842908,
		0.574753, -0.644000, -0.504899,
		43.333523, 35.753059, 37.830238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.431248, 36.451702, 38.391117>,  <42.931198, 36.203857, 38.183670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.431248, 36.451702, 38.391117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558739, 36.239758, 38.076752>,  <43.635235, 36.112591, 37.888134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558739, 36.239758, 38.076752>,  <43.431248, 36.451702, 38.391117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.558739, 36.239758, 38.076752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608726, 0.749992, -0.258776,
		0.726543, -0.395926, 0.561585,
		0.318728, -0.529863, -0.785912,
		43.654358, 36.080799, 37.840977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.167866, 36.477066, 38.395973>,  <43.431248, 36.451702, 38.391117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.167866, 36.477066, 38.395973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.071598, 36.386147, 38.018528>,  <44.013836, 36.331593, 37.792061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.071598, 36.386147, 38.018528>,  <44.167866, 36.477066, 38.395973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.071598, 36.386147, 38.018528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576975, 0.748269, -0.327405,
		0.780498, -0.623239, -0.048940,
		-0.240672, -0.227302, -0.943616,
		43.999397, 36.317955, 37.735443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.762043, 36.232578, 37.956646>,  <44.167866, 36.477066, 38.395973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.762043, 36.232578, 37.956646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501305, 36.421360, 37.719208>,  <44.344860, 36.534630, 37.576744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501305, 36.421360, 37.719208>,  <44.762043, 36.232578, 37.956646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.501305, 36.421360, 37.719208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736609, 0.580124, -0.347654,
		0.180282, -0.663864, -0.725798,
		-0.651848, 0.471954, -0.593594,
		44.305752, 36.562946, 37.541130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.895359, 36.276913, 37.181953>,  <44.762043, 36.232578, 37.956646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.895359, 36.276913, 37.181953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.688278, 36.606953, 37.272457>,  <44.564030, 36.804977, 37.326759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.688278, 36.606953, 37.272457>,  <44.895359, 36.276913, 37.181953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.688278, 36.606953, 37.272457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631116, 0.546841, -0.550144,
		-0.577653, -0.142014, -0.803834,
		-0.517697, 0.825104, 0.226257,
		44.532970, 36.854485, 37.340336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.371597, 35.976124, 37.473858>,  <44.895359, 36.276913, 37.181953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.371597, 35.976124, 37.473858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701248, 35.952057, 37.248577>,  <45.899036, 35.937618, 37.113407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701248, 35.952057, 37.248577>,  <45.371597, 35.976124, 37.473858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.701248, 35.952057, 37.248577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228598, 0.874434, -0.427912,
		0.518230, 0.481400, 0.706888,
		0.824124, -0.060164, -0.563205,
		45.948486, 35.934010, 37.079617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.670685, 36.617413, 37.550785>,  <45.371597, 35.976124, 37.473858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.670685, 36.617413, 37.550785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801624, 36.450039, 37.211903>,  <45.880188, 36.349613, 37.008575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801624, 36.450039, 37.211903>,  <45.670685, 36.617413, 37.550785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.801624, 36.450039, 37.211903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159521, 0.859262, -0.486027,
		0.931340, 0.294248, 0.214531,
		0.327351, -0.418434, -0.847204,
		45.899830, 36.324509, 36.957741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.283302, 36.984417, 37.313671>,  <45.670685, 36.617413, 37.550785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.283302, 36.984417, 37.313671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.017719, 36.835529, 37.054253>,  <45.858368, 36.746197, 36.898602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.017719, 36.835529, 37.054253>,  <46.283302, 36.984417, 37.313671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.017719, 36.835529, 37.054253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074352, 0.895871, -0.438048,
		0.744060, -0.242627, -0.622501,
		-0.663963, -0.372218, -0.648542,
		45.818531, 36.723866, 36.859692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.968060, 36.792000, 36.931355>,  <46.283302, 36.984417, 37.313671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.968060, 36.792000, 36.931355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.341354, 36.691460, 37.034027>,  <47.565331, 36.631138, 37.095631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.341354, 36.691460, 37.034027>,  <46.968060, 36.792000, 36.931355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.341354, 36.691460, 37.034027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116134, 0.887203, 0.446523,
		-0.339965, -0.386903, 0.857164,
		0.933240, -0.251348, 0.256686,
		47.621326, 36.616055, 37.111034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.026115, 37.201763, 37.534454>,  <46.968060, 36.792000, 36.931355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.026115, 37.201763, 37.534454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.388302, 37.079254, 37.416931>,  <47.605614, 37.005749, 37.346416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.388302, 37.079254, 37.416931>,  <47.026115, 37.201763, 37.534454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.388302, 37.079254, 37.416931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409491, 0.812387, 0.415144,
		0.111542, -0.496213, 0.861006,
		0.905470, -0.306268, -0.293810,
		47.659943, 36.987373, 37.328789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.848152, 36.460667, 37.659649>,  <47.026115, 37.201763, 37.534454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.848152, 36.460667, 37.659649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.566422, 36.274853, 37.444939>,  <46.397385, 36.163364, 37.316113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.566422, 36.274853, 37.444939>,  <46.848152, 36.460667, 37.659649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.566422, 36.274853, 37.444939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690473, -0.272710, -0.669983,
		0.164847, -0.842517, 0.512826,
		-0.704325, -0.464537, -0.536780,
		46.355125, 36.135490, 37.283905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.039257, 35.745331, 37.569141>,  <46.848152, 36.460667, 37.659649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.039257, 35.745331, 37.569141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.848515, 35.912071, 37.259602>,  <46.734070, 36.012115, 37.073879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.848515, 35.912071, 37.259602>,  <47.039257, 35.745331, 37.569141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.848515, 35.912071, 37.259602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718372, -0.322493, -0.616393,
		-0.506506, -0.849842, -0.145672,
		-0.476859, 0.416853, -0.773847,
		46.705456, 36.037128, 37.027447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.988243, 35.276352, 37.077023>,  <47.039257, 35.745331, 37.569141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.988243, 35.276352, 37.077023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.964294, 35.639343, 36.910702>,  <46.949924, 35.857140, 36.810909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.964294, 35.639343, 36.910702>,  <46.988243, 35.276352, 37.077023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.964294, 35.639343, 36.910702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840995, -0.178532, -0.510738,
		-0.537719, -0.380268, -0.752499,
		-0.059872, 0.907481, -0.415804,
		46.946331, 35.911587, 36.785961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.972660, 35.307957, 36.359264>,  <46.988243, 35.276352, 37.077023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.972660, 35.307957, 36.359264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.104664, 35.676228, 36.442631>,  <47.183865, 35.897190, 36.492653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.104664, 35.676228, 36.442631>,  <46.972660, 35.307957, 36.359264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.104664, 35.676228, 36.442631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533078, 0.000451, -0.846066,
		-0.779052, 0.390314, -0.490646,
		0.330010, 0.920682, 0.208419,
		47.203667, 35.952431, 36.505157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.470192, 35.438423, 35.836212>,  <46.972660, 35.307957, 36.359264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.470192, 35.438423, 35.836212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.669205, 35.118702, 35.701408>,  <47.788612, 34.926868, 35.620525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.669205, 35.118702, 35.701408>,  <47.470192, 35.438423, 35.836212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.669205, 35.118702, 35.701408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716585, 0.597663, -0.359590,
		0.488841, -0.062591, 0.870124,
		0.497534, -0.799301, -0.337014,
		47.818466, 34.878910, 35.600304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.561699, 35.437351, 35.062920>,  <47.470192, 35.438423, 35.836212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.561699, 35.437351, 35.062920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.705566, 35.070869, 34.992252>,  <47.791889, 34.850983, 34.949852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.705566, 35.070869, 34.992252>,  <47.561699, 35.437351, 35.062920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.705566, 35.070869, 34.992252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152497, 0.244510, -0.957580,
		0.920533, 0.317474, 0.227661,
		0.359672, -0.916201, -0.176666,
		47.813469, 34.796009, 34.939251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.722149, 34.092960, 26.798214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.354656, 34.208515, 26.690527>,  <39.134163, 34.277847, 26.625916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.354656, 34.208515, 26.690527>,  <39.722149, 34.092960, 26.798214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354656, 34.208515, 26.690527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329384, -0.184593, 0.925976,
		0.217810, 0.939397, 0.264747,
		-0.918730, 0.288891, -0.269217,
		39.079037, 34.295181, 26.609762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520706, 34.569653, 27.303173>,  <39.722149, 34.092960, 26.798214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520706, 34.569653, 27.303173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.184490, 34.471985, 27.109728>,  <38.982761, 34.413383, 26.993662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.184490, 34.471985, 27.109728>,  <39.520706, 34.569653, 27.303173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184490, 34.471985, 27.109728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506054, 0.035173, 0.861784,
		-0.193408, 0.969096, -0.153125,
		-0.840537, -0.244165, -0.483612,
		38.932327, 34.398735, 26.964643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.027332, 34.986252, 27.489120>,  <39.520706, 34.569653, 27.303173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.027332, 34.986252, 27.489120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822411, 34.663448, 27.371628>,  <38.699459, 34.469765, 27.301132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822411, 34.663448, 27.371628>,  <39.027332, 34.986252, 27.489120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822411, 34.663448, 27.371628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548329, 0.044133, 0.835098,
		-0.660971, 0.588883, -0.465118,
		-0.512302, -0.807012, -0.293731,
		38.668720, 34.421345, 27.283508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376945, 35.103683, 27.625799>,  <39.027332, 34.986252, 27.489120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376945, 35.103683, 27.625799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.386768, 34.704365, 27.604633>,  <38.392662, 34.464775, 27.591934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.386768, 34.704365, 27.604633>,  <38.376945, 35.103683, 27.625799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386768, 34.704365, 27.604633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534272, -0.057842, 0.843331,
		-0.844956, 0.007564, -0.534782,
		0.024553, -0.998297, -0.052915,
		38.394135, 34.404877, 27.588758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796581, 34.888996, 28.053989>,  <38.376945, 35.103683, 27.625799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796581, 34.888996, 28.053989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.000980, 34.545540, 28.037888>,  <38.123619, 34.339466, 28.028227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.000980, 34.545540, 28.037888>,  <37.796581, 34.888996, 28.053989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000980, 34.545540, 28.037888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335089, -0.242109, 0.910549,
		-0.791576, -0.451803, -0.411438,
		0.511001, -0.858637, -0.040254,
		38.154282, 34.287949, 28.025812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286388, 34.405224, 28.248556>,  <37.796581, 34.888996, 28.053989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286388, 34.405224, 28.248556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.640705, 34.234104, 28.320503>,  <37.853294, 34.131432, 28.363672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.640705, 34.234104, 28.320503>,  <37.286388, 34.405224, 28.248556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640705, 34.234104, 28.320503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227053, -0.061479, 0.971940,
		-0.404738, -0.901780, -0.151591,
		0.885796, -0.427800, 0.179869,
		37.906445, 34.105762, 28.374464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114059, 33.825737, 28.681065>,  <37.286388, 34.405224, 28.248556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114059, 33.825737, 28.681065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495117, 33.938976, 28.725464>,  <37.723751, 34.006920, 28.752104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.495117, 33.938976, 28.725464>,  <37.114059, 33.825737, 28.681065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495117, 33.938976, 28.725464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111667, -0.013828, 0.993649,
		0.282833, -0.958992, 0.018439,
		0.952647, 0.283096, 0.110999,
		37.780910, 34.023903, 28.758764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243702, 33.466652, 29.293261>,  <37.114059, 33.825737, 28.681065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243702, 33.466652, 29.293261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.562534, 33.705708, 29.258673>,  <37.753834, 33.849140, 29.237919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.562534, 33.705708, 29.258673>,  <37.243702, 33.466652, 29.293261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562534, 33.705708, 29.258673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020906, 0.170420, 0.985150,
		0.603505, -0.783441, 0.148333,
		0.797085, 0.597644, -0.086471,
		37.801659, 33.885002, 29.232731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784767, 33.281467, 29.806587>,  <37.243702, 33.466652, 29.293261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784767, 33.281467, 29.806587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.844158, 33.667072, 29.718380>,  <37.879791, 33.898438, 29.665455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.844158, 33.667072, 29.718380>,  <37.784767, 33.281467, 29.806587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844158, 33.667072, 29.718380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152267, 0.198044, 0.968294,
		0.977123, -0.177347, -0.117383,
		0.148477, 0.964016, -0.220517,
		37.888702, 33.956276, 29.652225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302807, 33.529629, 30.260267>,  <37.784767, 33.281467, 29.806587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302807, 33.529629, 30.260267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.130741, 33.871956, 30.145346>,  <38.027504, 34.077351, 30.076393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.130741, 33.871956, 30.145346>,  <38.302807, 33.529629, 30.260267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130741, 33.871956, 30.145346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065689, 0.347084, 0.935531,
		0.900359, 0.383556, -0.205520,
		-0.430161, 0.855814, -0.287305,
		38.001694, 34.128700, 30.059155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648026, 34.101772, 30.597160>,  <38.302807, 33.529629, 30.260267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648026, 34.101772, 30.597160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.291645, 34.251732, 30.494663>,  <38.077816, 34.341709, 30.433165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.291645, 34.251732, 30.494663>,  <38.648026, 34.101772, 30.597160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291645, 34.251732, 30.494663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087187, 0.412558, 0.906749,
		0.445655, 0.830208, -0.334882,
		-0.890949, 0.374900, -0.256242,
		38.024361, 34.364201, 30.417791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741604, 34.870537, 30.813137>,  <38.648026, 34.101772, 30.597160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741604, 34.870537, 30.813137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.350586, 34.806213, 30.758659>,  <38.115974, 34.767620, 30.725973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.350586, 34.806213, 30.758659>,  <38.741604, 34.870537, 30.813137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350586, 34.806213, 30.758659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196079, 0.457296, 0.867429,
		-0.077210, 0.874655, -0.478558,
		-0.977544, -0.160809, -0.136193,
		38.057323, 34.757969, 30.717802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375698, 35.544735, 30.981607>,  <38.741604, 34.870537, 30.813137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375698, 35.544735, 30.981607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.080299, 35.275387, 30.995440>,  <37.903061, 35.113777, 31.003738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.080299, 35.275387, 30.995440>,  <38.375698, 35.544735, 30.981607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080299, 35.275387, 30.995440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430553, 0.510418, 0.744377,
		-0.518891, 0.534832, -0.666863,
		-0.738496, -0.673371, 0.034578,
		37.858749, 35.073376, 31.005814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866291, 35.950100, 31.169077>,  <38.375698, 35.544735, 30.981607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866291, 35.950100, 31.169077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.716774, 35.588234, 31.250919>,  <37.627064, 35.371113, 31.300026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.716774, 35.588234, 31.250919>,  <37.866291, 35.950100, 31.169077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716774, 35.588234, 31.250919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225890, 0.302748, 0.925914,
		-0.899586, 0.299879, -0.317519,
		-0.373790, -0.904663, 0.204608,
		37.604637, 35.316833, 31.312302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167107, 36.001446, 31.371555>,  <37.866291, 35.950100, 31.169077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167107, 36.001446, 31.371555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.277737, 35.657654, 31.543512>,  <37.344116, 35.451378, 31.646687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.277737, 35.657654, 31.543512>,  <37.167107, 36.001446, 31.371555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277737, 35.657654, 31.543512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319389, 0.339700, 0.884644,
		-0.906364, -0.381974, -0.180554,
		0.276577, -0.859476, 0.429890,
		37.360710, 35.399811, 31.672480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552383, 35.808743, 31.740610>,  <37.167107, 36.001446, 31.371555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552383, 35.808743, 31.740610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.875858, 35.624928, 31.887497>,  <37.069942, 35.514637, 31.975630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.875858, 35.624928, 31.887497>,  <36.552383, 35.808743, 31.740610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875858, 35.624928, 31.887497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367296, 0.093153, 0.925428,
		-0.459479, -0.883258, -0.093456,
		0.808686, -0.459541, 0.367219,
		37.118465, 35.487064, 31.997663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325714, 35.339439, 32.153301>,  <36.552383, 35.808743, 31.740610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325714, 35.339439, 32.153301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.692287, 35.416439, 32.293644>,  <36.912231, 35.462639, 32.377850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.692287, 35.416439, 32.293644>,  <36.325714, 35.339439, 32.153301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692287, 35.416439, 32.293644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371094, 0.080551, 0.925095,
		0.149826, -0.977984, 0.145257,
		0.916428, 0.192507, 0.350855,
		36.967216, 35.474190, 32.398899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338200, 35.061104, 32.783531>,  <36.325714, 35.339439, 32.153301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338200, 35.061104, 32.783531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.644577, 35.315792, 32.819141>,  <36.828403, 35.468605, 32.840508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.644577, 35.315792, 32.819141>,  <36.338200, 35.061104, 32.783531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644577, 35.315792, 32.819141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167558, 0.064020, 0.983781,
		0.620694, -0.768433, 0.155723,
		0.765939, 0.636720, 0.089021,
		36.874359, 35.506809, 32.845848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810753, 34.948353, 33.382378>,  <36.338200, 35.061104, 32.783531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810753, 34.948353, 33.382378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.900562, 35.329247, 33.299580>,  <36.954449, 35.557781, 33.249901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.900562, 35.329247, 33.299580>,  <36.810753, 34.948353, 33.382378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900562, 35.329247, 33.299580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116434, 0.237109, 0.964481,
		0.967488, -0.192446, 0.164108,
		0.224522, 0.952231, -0.206992,
		36.967918, 35.614918, 33.237480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364346, 35.137344, 33.943092>,  <36.810753, 34.948353, 33.382378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364346, 35.137344, 33.943092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.230835, 35.487972, 33.804398>,  <37.150730, 35.698349, 33.721180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.230835, 35.487972, 33.804398>,  <37.364346, 35.137344, 33.943092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230835, 35.487972, 33.804398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262790, 0.266723, 0.927254,
		0.905283, 0.400610, 0.141329,
		-0.333772, 0.876567, -0.346736,
		37.130703, 35.750942, 33.700378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658634, 35.584255, 34.389919>,  <37.364346, 35.137344, 33.943092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658634, 35.584255, 34.389919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368618, 35.789017, 34.205631>,  <37.194607, 35.911873, 34.095058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.368618, 35.789017, 34.205631>,  <37.658634, 35.584255, 34.389919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368618, 35.789017, 34.205631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341991, 0.313049, 0.886027,
		0.597791, 0.799970, -0.051907,
		-0.725044, 0.511907, -0.460720,
		37.151104, 35.942589, 34.067417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637486, 36.233540, 34.785862>,  <37.658634, 35.584255, 34.389919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637486, 36.233540, 34.785862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.280117, 36.225613, 34.606350>,  <37.065697, 36.220856, 34.498642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.280117, 36.225613, 34.606350>,  <37.637486, 36.233540, 34.785862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280117, 36.225613, 34.606350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425951, 0.354678, 0.832327,
		0.142680, 0.934778, -0.325317,
		-0.893425, -0.019813, -0.448776,
		37.012089, 36.219669, 34.471718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319691, 36.167286, 34.748974>,  <37.637486, 36.233540, 34.785862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319691, 36.167286, 34.748974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.638481, 36.085918, 34.976467>,  <38.829754, 36.037098, 35.112961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.638481, 36.085918, 34.976467>,  <38.319691, 36.167286, 34.748974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638481, 36.085918, 34.976467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600874, 0.171132, -0.780810,
		0.061503, 0.964020, 0.258617,
		0.796974, -0.203418, 0.568730,
		38.877575, 36.024895, 35.147087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803749, 36.795719, 34.641888>,  <38.319691, 36.167286, 34.748974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803749, 36.795719, 34.641888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.971870, 36.452103, 34.758781>,  <39.072742, 36.245934, 34.828918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.971870, 36.452103, 34.758781>,  <38.803749, 36.795719, 34.641888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971870, 36.452103, 34.758781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477580, -0.064418, -0.876223,
		0.771534, 0.507843, 0.383185,
		0.420300, -0.859038, 0.292236,
		39.097961, 36.194393, 34.846451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314030, 36.873180, 34.312782>,  <38.803749, 36.795719, 34.641888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314030, 36.873180, 34.312782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.356098, 36.485958, 34.403824>,  <39.381340, 36.253624, 34.458450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.356098, 36.485958, 34.403824>,  <39.314030, 36.873180, 34.312782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356098, 36.485958, 34.403824> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413401, -0.165603, -0.895363,
		0.904455, 0.188257, 0.382779,
		0.105169, -0.968057, 0.227606,
		39.387650, 36.195541, 34.472107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018642, 36.764229, 34.280407>,  <39.314030, 36.873180, 34.312782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018642, 36.764229, 34.280407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.835526, 36.408859, 34.266941>,  <39.725655, 36.195637, 34.258862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.835526, 36.408859, 34.266941>,  <40.018642, 36.764229, 34.280407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835526, 36.408859, 34.266941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518017, -0.235772, -0.822234,
		0.722556, -0.393847, 0.568153,
		-0.457789, -0.888423, -0.033661,
		39.698189, 36.142334, 34.256844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545383, 36.213566, 34.134151>,  <40.018642, 36.764229, 34.280407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545383, 36.213566, 34.134151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.179260, 36.093513, 34.026722>,  <39.959587, 36.021481, 33.962265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.179260, 36.093513, 34.026722>,  <40.545383, 36.213566, 34.134151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179260, 36.093513, 34.026722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373706, -0.384255, -0.844211,
		0.150175, -0.873080, 0.463873,
		-0.915309, -0.300131, -0.268570,
		39.904667, 36.003475, 33.946152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602119, 35.533989, 33.812569>,  <40.545383, 36.213566, 34.134151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602119, 35.533989, 33.812569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.247883, 35.663555, 33.679420>,  <40.035339, 35.741295, 33.599533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.247883, 35.663555, 33.679420>,  <40.602119, 35.533989, 33.812569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247883, 35.663555, 33.679420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204654, -0.371211, -0.905715,
		-0.416942, -0.870218, 0.262451,
		-0.885593, 0.323919, -0.332867,
		39.982204, 35.760731, 33.579559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.311382, 34.935371, 33.472717>,  <40.602119, 35.533989, 33.812569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.311382, 34.935371, 33.472717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.115341, 35.255104, 33.333656>,  <39.997715, 35.446945, 33.250221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.115341, 35.255104, 33.333656>,  <40.311382, 34.935371, 33.472717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.115341, 35.255104, 33.333656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167871, -0.304814, -0.937501,
		-0.855345, -0.517835, 0.015206,
		-0.490106, 0.799334, -0.347651,
		39.968307, 35.494904, 33.229362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867027, 34.649540, 32.947060>,  <40.311382, 34.935371, 33.472717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867027, 34.649540, 32.947060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.892551, 35.041916, 32.873634>,  <39.907867, 35.277340, 32.829578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.892551, 35.041916, 32.873634>,  <39.867027, 34.649540, 32.947060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892551, 35.041916, 32.873634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370755, -0.194073, -0.908227,
		-0.926536, -0.010102, -0.376070,
		0.063810, 0.980935, -0.183561,
		39.911694, 35.336197, 32.818565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565845, 34.638988, 32.262421>,  <39.867027, 34.649540, 32.947060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565845, 34.638988, 32.262421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.727493, 35.001450, 32.312325>,  <39.824482, 35.218925, 32.342266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.727493, 35.001450, 32.312325>,  <39.565845, 34.638988, 32.262421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727493, 35.001450, 32.312325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289595, 0.002631, -0.957146,
		-0.867652, 0.422934, -0.261355,
		0.404122, 0.906157, 0.124763,
		39.848728, 35.273296, 32.349754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360306, 34.982620, 31.701647>,  <39.565845, 34.638988, 32.262421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360306, 34.982620, 31.701647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.683632, 35.182747, 31.825783>,  <39.877628, 35.302822, 31.900265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.683632, 35.182747, 31.825783>,  <39.360306, 34.982620, 31.701647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683632, 35.182747, 31.825783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336906, 0.039206, -0.940722,
		-0.482822, 0.864956, -0.136867,
		0.808317, 0.500313, 0.310339,
		39.926128, 35.332840, 31.918884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411198, 35.498108, 31.311251>,  <39.360306, 34.982620, 31.701647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411198, 35.498108, 31.311251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.790169, 35.465290, 31.434963>,  <40.017551, 35.445599, 31.509190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.790169, 35.465290, 31.434963>,  <39.411198, 35.498108, 31.311251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790169, 35.465290, 31.434963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309846, -0.006047, -0.950767,
		0.079879, 0.996610, 0.019693,
		0.947425, -0.082048, 0.309279,
		40.074398, 35.440674, 31.527746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784901, 36.068233, 30.987398>,  <39.411198, 35.498108, 31.311251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784901, 36.068233, 30.987398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.064896, 35.797825, 31.079491>,  <40.232895, 35.635578, 31.134747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.064896, 35.797825, 31.079491>,  <39.784901, 36.068233, 30.987398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.064896, 35.797825, 31.079491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371110, 0.068892, -0.926030,
		0.610157, 0.733653, 0.299103,
		0.699990, -0.676023, 0.230231,
		40.274891, 35.595016, 31.148560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387882, 36.365322, 30.798569>,  <39.784901, 36.068233, 30.987398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387882, 36.365322, 30.798569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.460415, 35.971962, 30.801195>,  <40.503937, 35.735947, 30.802771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.460415, 35.971962, 30.801195>,  <40.387882, 36.365322, 30.798569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460415, 35.971962, 30.801195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212909, 0.032739, -0.976524,
		0.960098, 0.178475, 0.215311,
		0.181334, -0.983400, 0.006566,
		40.514816, 35.676941, 30.803165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140991, 36.320835, 30.580330>,  <40.387882, 36.365322, 30.798569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140991, 36.320835, 30.580330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.959175, 35.971668, 30.509432>,  <40.850086, 35.762169, 30.466892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.959175, 35.971668, 30.509432>,  <41.140991, 36.320835, 30.580330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959175, 35.971668, 30.509432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300602, 0.036985, -0.953032,
		0.838471, -0.486470, 0.245589,
		-0.454538, -0.872914, -0.177245,
		40.822815, 35.709793, 30.456259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.551971, 35.968437, 30.102501>,  <41.140991, 36.320835, 30.580330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.551971, 35.968437, 30.102501> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.218571, 35.752186, 30.056913>,  <41.018528, 35.622437, 30.029560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.218571, 35.752186, 30.056913>,  <41.551971, 35.968437, 30.102501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218571, 35.752186, 30.056913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178252, -0.067880, -0.981641,
		0.522967, -0.838518, 0.152946,
		-0.833506, -0.540629, -0.113968,
		40.968517, 35.589996, 30.022722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.693390, 35.452187, 29.655626>,  <41.551971, 35.968437, 30.102501>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.693390, 35.452187, 29.655626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.295052, 35.476906, 29.628901>,  <41.056049, 35.491737, 29.612865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.295052, 35.476906, 29.628901>,  <41.693390, 35.452187, 29.655626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295052, 35.476906, 29.628901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044354, -0.311486, -0.949215,
		-0.079470, -0.948239, 0.307453,
		-0.995850, 0.061797, -0.066812,
		40.996296, 35.495445, 29.608856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.520920, 34.803379, 29.278282>,  <41.693390, 35.452187, 29.655626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.520920, 34.803379, 29.278282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.217766, 35.060150, 29.231749>,  <41.035873, 35.214214, 29.203829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.217766, 35.060150, 29.231749>,  <41.520920, 34.803379, 29.278282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217766, 35.060150, 29.231749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044493, -0.228764, -0.972465,
		-0.650866, -0.731843, 0.201939,
		-0.757888, 0.641929, -0.116333,
		40.990398, 35.252728, 29.196848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976479, 34.425091, 28.931288>,  <41.520920, 34.803379, 29.278282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976479, 34.425091, 28.931288> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.910282, 34.814713, 28.869539>,  <40.870564, 35.048485, 28.832491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.910282, 34.814713, 28.869539>,  <40.976479, 34.425091, 28.931288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910282, 34.814713, 28.869539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091447, -0.171010, -0.981016,
		-0.981963, -0.148229, 0.117375,
		-0.165488, 0.974055, -0.154370,
		40.860638, 35.106930, 28.823229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.297783, 34.472290, 28.329199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.474457, 34.829422, 28.364441>,  <40.580460, 35.043701, 28.385586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.474457, 34.829422, 28.364441>,  <40.297783, 34.472290, 28.329199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474457, 34.829422, 28.364441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078627, 0.059304, -0.995139,
		-0.893719, 0.446463, -0.044007,
		0.441683, 0.892835, 0.088105,
		40.606960, 35.097271, 28.390873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.910915, 34.919838, 27.877789>,  <40.297783, 34.472290, 28.329199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.910915, 34.919838, 27.877789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.273354, 35.078293, 27.937202>,  <40.490818, 35.173367, 27.972851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.273354, 35.078293, 27.937202>,  <39.910915, 34.919838, 27.877789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273354, 35.078293, 27.937202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131709, 0.069514, -0.988848,
		-0.402044, 0.915557, 0.010812,
		0.906098, 0.396136, 0.148535,
		40.545181, 35.197132, 27.981764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961609, 35.499374, 27.435093>,  <39.910915, 34.919838, 27.877789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961609, 35.499374, 27.435093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.337799, 35.434952, 27.554798>,  <40.563515, 35.396297, 27.626621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.337799, 35.434952, 27.554798>,  <39.961609, 35.499374, 27.435093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337799, 35.434952, 27.554798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321269, 0.134144, -0.937439,
		0.110836, 0.977786, 0.177902,
		0.940480, -0.161056, 0.299264,
		40.619942, 35.386635, 27.644577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274643, 35.876915, 26.944736>,  <39.961609, 35.499374, 27.435093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274643, 35.876915, 26.944736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.582001, 35.662891, 27.085178>,  <40.766415, 35.534477, 27.169443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.582001, 35.662891, 27.085178>,  <40.274643, 35.876915, 26.944736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582001, 35.662891, 27.085178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498365, 0.156092, -0.852800,
		0.401496, 0.830267, 0.386597,
		0.768397, -0.535062, 0.351106,
		40.812519, 35.502373, 27.190510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778049, 36.067650, 26.544052>,  <40.274643, 35.876915, 26.944736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778049, 36.067650, 26.544052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.944424, 35.739902, 26.701851>,  <41.044247, 35.543255, 26.796530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.944424, 35.739902, 26.701851>,  <40.778049, 36.067650, 26.544052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944424, 35.739902, 26.701851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553661, -0.115973, -0.824627,
		0.721427, 0.561410, 0.405417,
		0.415936, -0.819371, 0.394497,
		41.069206, 35.494091, 26.820200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496147, 36.115223, 26.392826>,  <40.778049, 36.067650, 26.544052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496147, 36.115223, 26.392826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.393623, 35.732925, 26.450603>,  <41.332108, 35.503548, 26.485270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.393623, 35.732925, 26.450603>,  <41.496147, 36.115223, 26.392826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393623, 35.732925, 26.450603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476037, -0.254870, -0.841683,
		0.841245, -0.146971, 0.520294,
		-0.256311, -0.955741, 0.144444,
		41.316730, 35.446201, 26.493937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067471, 35.675705, 26.372648>,  <41.496147, 36.115223, 26.392826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067471, 35.675705, 26.372648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.760990, 35.430061, 26.296957>,  <41.577103, 35.282673, 26.251543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.760990, 35.430061, 26.296957>,  <42.067471, 35.675705, 26.372648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760990, 35.430061, 26.296957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510553, -0.402938, -0.759590,
		0.390226, -0.678607, 0.622267,
		-0.766198, -0.614112, -0.189228,
		41.531132, 35.245827, 26.240189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400513, 35.012966, 26.244287>,  <42.067471, 35.675705, 26.372648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400513, 35.012966, 26.244287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.035942, 34.995571, 26.080620>,  <41.817200, 34.985134, 25.982420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.035942, 34.995571, 26.080620>,  <42.400513, 35.012966, 26.244287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035942, 34.995571, 26.080620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376141, -0.491187, -0.785655,
		-0.166815, -0.869968, 0.464035,
		-0.911423, -0.043484, -0.409167,
		41.762516, 34.982525, 25.957869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250565, 34.374798, 26.081181>,  <42.400513, 35.012966, 26.244287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250565, 34.374798, 26.081181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.014332, 34.592102, 25.842491>,  <41.872593, 34.722485, 25.699278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.014332, 34.592102, 25.842491>,  <42.250565, 34.374798, 26.081181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014332, 34.592102, 25.842491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365666, -0.479023, -0.798013,
		-0.719376, -0.689492, 0.084248,
		-0.590581, 0.543265, -0.596722,
		41.837158, 34.755081, 25.663475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266579, 33.992466, 25.418034>,  <42.250565, 34.374798, 26.081181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266579, 33.992466, 25.418034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.108707, 34.347942, 25.324688>,  <42.013985, 34.561226, 25.268681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.108707, 34.347942, 25.324688>,  <42.266579, 33.992466, 25.418034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108707, 34.347942, 25.324688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366996, -0.080370, -0.926744,
		-0.842343, -0.451412, -0.294425,
		-0.394680, 0.888689, -0.233366,
		41.990303, 34.614548, 25.254679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.967049, 33.863083, 24.777271>,  <42.266579, 33.992466, 25.418034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.967049, 33.863083, 24.777271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.014618, 34.259853, 24.794857>,  <42.043159, 34.497917, 24.805408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.014618, 34.259853, 24.794857>,  <41.967049, 33.863083, 24.777271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014618, 34.259853, 24.794857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222554, 0.016521, -0.974780,
		-0.967640, 0.125712, -0.218793,
		0.118927, 0.991929, 0.043964,
		42.050297, 34.557430, 24.808046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649082, 34.131176, 24.144821>,  <41.967049, 33.863083, 24.777271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649082, 34.131176, 24.144821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.898872, 34.417416, 24.270006>,  <42.048748, 34.589161, 24.345118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.898872, 34.417416, 24.270006>,  <41.649082, 34.131176, 24.144821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898872, 34.417416, 24.270006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262201, 0.185372, -0.947042,
		-0.735716, 0.673466, -0.071870,
		0.624478, 0.715598, 0.312965,
		42.086216, 34.632095, 24.363895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.519638, 34.750343, 23.724392>,  <41.649082, 34.131176, 24.144821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.519638, 34.750343, 23.724392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.886917, 34.796700, 23.875908>,  <42.107285, 34.824512, 23.966818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.886917, 34.796700, 23.875908>,  <41.519638, 34.750343, 23.724392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.886917, 34.796700, 23.875908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349912, 0.210921, -0.912729,
		-0.185672, 0.970609, 0.153116,
		0.918198, 0.115891, 0.378789,
		42.162376, 34.831467, 23.989544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.788177, 35.453442, 23.441324>,  <41.519638, 34.750343, 23.724392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.788177, 35.453442, 23.441324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.108360, 35.255825, 23.577087>,  <42.300468, 35.137257, 23.658546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.108360, 35.255825, 23.577087>,  <41.788177, 35.453442, 23.441324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.108360, 35.255825, 23.577087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526569, 0.309079, -0.791957,
		0.286353, 0.812647, 0.507549,
		0.800454, -0.494039, 0.339409,
		42.348495, 35.107613, 23.678909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239063, 35.883957, 23.368273>,  <41.788177, 35.453442, 23.441324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239063, 35.883957, 23.368273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.448387, 35.543247, 23.378229>,  <42.573982, 35.338821, 23.384203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.448387, 35.543247, 23.378229>,  <42.239063, 35.883957, 23.368273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448387, 35.543247, 23.378229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586180, 0.338627, -0.736019,
		0.618496, 0.399759, 0.676503,
		0.523313, -0.851777, 0.024892,
		42.605381, 35.287716, 23.385696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904896, 36.091866, 23.295511>,  <42.239063, 35.883957, 23.368273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904896, 36.091866, 23.295511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.904720, 35.707767, 23.183851>,  <42.904613, 35.477306, 23.116856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.904720, 35.707767, 23.183851>,  <42.904896, 36.091866, 23.295511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.904720, 35.707767, 23.183851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436085, 0.251023, -0.864186,
		0.899905, -0.122114, 0.418638,
		-0.000441, -0.960248, -0.279149,
		42.904587, 35.419693, 23.100107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546661, 35.977592, 23.013271>,  <42.904896, 36.091866, 23.295511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546661, 35.977592, 23.013271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.299431, 35.701107, 22.863491>,  <43.151093, 35.535217, 22.773623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.299431, 35.701107, 22.863491>,  <43.546661, 35.977592, 23.013271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.299431, 35.701107, 22.863491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205390, 0.317795, -0.925646,
		0.758816, -0.649025, -0.054452,
		-0.618072, -0.691211, -0.374451,
		43.114010, 35.493744, 22.751156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.877060, 35.910294, 22.515635>,  <43.546661, 35.977592, 23.013271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.877060, 35.910294, 22.515635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.516060, 35.755066, 22.440920>,  <43.299458, 35.661930, 22.396091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.516060, 35.755066, 22.440920>,  <43.877060, 35.910294, 22.515635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.516060, 35.755066, 22.440920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030235, 0.489719, -0.871356,
		0.429617, -0.780755, -0.453708,
		-0.902505, -0.388067, -0.186785,
		43.245308, 35.638645, 22.384884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940090, 35.663017, 21.814091>,  <43.877060, 35.910294, 22.515635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940090, 35.663017, 21.814091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.554531, 35.733215, 21.894201>,  <43.323196, 35.775333, 21.942268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.554531, 35.733215, 21.894201>,  <43.940090, 35.663017, 21.814091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.554531, 35.733215, 21.894201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067693, 0.565910, -0.821683,
		-0.257541, -0.805572, -0.533597,
		-0.963893, 0.175496, 0.200276,
		43.265362, 35.785866, 21.954285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613876, 35.465015, 21.110676>,  <43.940090, 35.663017, 21.814091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613876, 35.465015, 21.110676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.347103, 35.689331, 21.306925>,  <43.187038, 35.823921, 21.424675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.347103, 35.689331, 21.306925>,  <43.613876, 35.465015, 21.110676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.347103, 35.689331, 21.306925> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342463, 0.354083, -0.870255,
		-0.661755, -0.748422, -0.044099,
		-0.666933, 0.560793, 0.490623,
		43.147022, 35.857571, 21.454111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001461, 35.420418, 20.733061>,  <43.613876, 35.465015, 21.110676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001461, 35.420418, 20.733061> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.946884, 35.743477, 20.962528>,  <42.914139, 35.937313, 21.100208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.946884, 35.743477, 20.962528>,  <43.001461, 35.420418, 20.733061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946884, 35.743477, 20.962528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254306, 0.531122, -0.808231,
		-0.957451, -0.256163, 0.132922,
		-0.136441, 0.807645, 0.573667,
		42.905952, 35.985771, 21.134628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.439289, 35.783855, 20.496540>,  <43.001461, 35.420418, 20.733061>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.439289, 35.783855, 20.496540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.659283, 36.060795, 20.683378>,  <42.791279, 36.226959, 20.795481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.659283, 36.060795, 20.683378>,  <42.439289, 35.783855, 20.496540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.659283, 36.060795, 20.683378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224176, 0.661133, -0.715995,
		-0.804529, 0.289071, 0.518817,
		0.549981, 0.692345, 0.467098,
		42.824276, 36.268497, 20.823507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978485, 36.401535, 20.503540>,  <42.439289, 35.783855, 20.496540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978485, 36.401535, 20.503540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.373859, 36.456631, 20.528908>,  <42.611084, 36.489689, 20.544128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.373859, 36.456631, 20.528908>,  <41.978485, 36.401535, 20.503540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373859, 36.456631, 20.528908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034038, 0.609085, -0.792374,
		-0.147773, 0.781052, 0.606730,
		0.988435, 0.137744, 0.063421,
		42.670391, 36.497955, 20.547934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022861, 37.099869, 20.437447>,  <41.978485, 36.401535, 20.503540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022861, 37.099869, 20.437447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.362511, 36.914135, 20.336740>,  <42.566299, 36.802692, 20.276318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.362511, 36.914135, 20.336740>,  <42.022861, 37.099869, 20.437447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.362511, 36.914135, 20.336740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083958, 0.589236, -0.803587,
		0.521485, 0.661204, 0.539317,
		0.849120, -0.464338, -0.251765,
		42.617249, 36.774834, 20.261211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764240, 36.888752, 19.690239>,  <42.022861, 37.099869, 20.437447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764240, 36.888752, 19.690239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.426727, 36.902336, 19.475996>,  <41.224220, 36.910488, 19.347450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.426727, 36.902336, 19.475996>,  <41.764240, 36.888752, 19.690239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.426727, 36.902336, 19.475996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493198, 0.344450, 0.798818,
		0.211621, 0.938190, -0.273891,
		-0.843785, 0.033964, -0.535606,
		41.173592, 36.912525, 19.315313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384460, 37.482948, 19.964705>,  <41.764240, 36.888752, 19.690239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384460, 37.482948, 19.964705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.103809, 37.263809, 19.782465>,  <40.935417, 37.132324, 19.673120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.103809, 37.263809, 19.782465>,  <41.384460, 37.482948, 19.964705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103809, 37.263809, 19.782465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598422, 0.105979, 0.794141,
		-0.386787, 0.829836, -0.402204,
		-0.701632, -0.547850, -0.455601,
		40.893318, 37.099453, 19.645784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.694950, 37.789097, 20.127705>,  <41.384460, 37.482948, 19.964705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.694950, 37.789097, 20.127705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.634895, 37.405960, 20.029734>,  <40.598862, 37.176079, 19.970951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.634895, 37.405960, 20.029734>,  <40.694950, 37.789097, 20.127705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.634895, 37.405960, 20.029734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593336, -0.110869, 0.797283,
		-0.790830, 0.265025, -0.551679,
		-0.150136, -0.957846, -0.244927,
		40.589855, 37.118607, 19.956255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976173, 37.685329, 20.324024>,  <40.694950, 37.789097, 20.127705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976173, 37.685329, 20.324024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.124115, 37.320061, 20.255522>,  <40.212879, 37.100899, 20.214420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.124115, 37.320061, 20.255522>,  <39.976173, 37.685329, 20.324024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124115, 37.320061, 20.255522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447137, -0.336525, 0.828745,
		-0.814418, -0.229938, -0.532777,
		0.369853, -0.913170, -0.171258,
		40.235069, 37.046108, 20.204144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429359, 37.256962, 20.389898>,  <39.976173, 37.685329, 20.324024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429359, 37.256962, 20.389898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.744225, 37.020596, 20.460558>,  <39.933144, 36.878777, 20.502953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.744225, 37.020596, 20.460558>,  <39.429359, 37.256962, 20.389898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744225, 37.020596, 20.460558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330563, -0.162418, 0.929704,
		-0.520683, -0.790217, -0.323183,
		0.787158, -0.590913, 0.176648,
		39.980373, 36.843323, 20.513552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198952, 36.570942, 20.672184>,  <39.429359, 37.256962, 20.389898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198952, 36.570942, 20.672184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.570232, 36.627026, 20.810047>,  <39.792999, 36.660675, 20.892765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.570232, 36.627026, 20.810047>,  <39.198952, 36.570942, 20.672184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570232, 36.627026, 20.810047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296847, -0.279462, 0.913117,
		0.224343, -0.949865, -0.217777,
		0.928198, 0.140205, 0.344660,
		39.848690, 36.669086, 20.913445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124115, 36.064026, 21.164762>,  <39.198952, 36.570942, 20.672184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124115, 36.064026, 21.164762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.464378, 36.251331, 21.260349>,  <39.668537, 36.363716, 21.317701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.464378, 36.251331, 21.260349>,  <39.124115, 36.064026, 21.164762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464378, 36.251331, 21.260349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117037, -0.274461, 0.954449,
		0.512523, -0.839880, -0.178668,
		0.850660, 0.468266, 0.238965,
		39.719578, 36.391811, 21.332039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.419147, 35.739258, 21.812351>,  <39.124115, 36.064026, 21.164762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.419147, 35.739258, 21.812351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.611290, 36.088573, 21.844904>,  <39.726574, 36.298164, 21.864435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.611290, 36.088573, 21.844904>,  <39.419147, 35.739258, 21.812351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611290, 36.088573, 21.844904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144006, -0.170056, 0.974856,
		0.865172, -0.456556, -0.207446,
		0.480353, 0.873291, 0.081381,
		39.755398, 36.350559, 21.869318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960377, 35.629250, 22.408865>,  <39.419147, 35.739258, 21.812351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960377, 35.629250, 22.408865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.946613, 36.027737, 22.376953>,  <39.938354, 36.266830, 22.357807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.946613, 36.027737, 22.376953>,  <39.960377, 35.629250, 22.408865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946613, 36.027737, 22.376953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087910, 0.076498, 0.993187,
		0.995534, 0.041187, 0.084945,
		-0.034408, 0.996218, -0.079777,
		39.936291, 36.326603, 22.353020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577839, 35.953537, 22.705166>,  <39.960377, 35.629250, 22.408865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577839, 35.953537, 22.705166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.273472, 36.211708, 22.731775>,  <40.090851, 36.366611, 22.747742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.273472, 36.211708, 22.731775>,  <40.577839, 35.953537, 22.705166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273472, 36.211708, 22.731775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063776, -0.176425, 0.982246,
		0.645706, 0.743166, 0.175408,
		-0.760918, 0.645429, 0.066523,
		40.045197, 36.405338, 22.751732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683514, 36.203548, 23.305643>,  <40.577839, 35.953537, 22.705166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683514, 36.203548, 23.305643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.296860, 36.288151, 23.247841>,  <40.064869, 36.338913, 23.213160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.296860, 36.288151, 23.247841>,  <40.683514, 36.203548, 23.305643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.296860, 36.288151, 23.247841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168323, -0.099232, 0.980724,
		0.193091, 0.972326, 0.131523,
		-0.966635, 0.211507, -0.144504,
		40.006870, 36.351604, 23.204491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538326, 36.723030, 23.733456>,  <40.683514, 36.203548, 23.305643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538326, 36.723030, 23.733456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.194336, 36.540661, 23.641747>,  <39.987942, 36.431240, 23.586721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.194336, 36.540661, 23.641747>,  <40.538326, 36.723030, 23.733456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194336, 36.540661, 23.641747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181895, -0.145918, 0.972431,
		-0.476811, 0.877975, 0.042557,
		-0.859980, -0.455925, -0.229275,
		39.936340, 36.403885, 23.572964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055000, 36.780308, 24.379396>,  <40.538326, 36.723030, 23.733456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055000, 36.780308, 24.379396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.818718, 36.553394, 24.149876>,  <39.676949, 36.417244, 24.012163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.818718, 36.553394, 24.149876>,  <40.055000, 36.780308, 24.379396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818718, 36.553394, 24.149876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447269, -0.361675, 0.818011,
		-0.671576, 0.739850, -0.040085,
		-0.590708, -0.567285, -0.573804,
		39.641506, 36.383209, 23.977734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356667, 36.863842, 24.649797>,  <40.055000, 36.780308, 24.379396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356667, 36.863842, 24.649797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.415222, 36.512386, 24.468004>,  <39.450356, 36.301514, 24.358929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.415222, 36.512386, 24.468004>,  <39.356667, 36.863842, 24.649797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415222, 36.512386, 24.468004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464659, -0.466671, 0.752536,
		-0.873305, 0.101018, -0.476585,
		0.146389, -0.878643, -0.454485,
		39.459137, 36.248795, 24.331659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802052, 36.479427, 25.004105>,  <39.356667, 36.863842, 24.649797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802052, 36.479427, 25.004105> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.046326, 36.200825, 24.853403>,  <39.192890, 36.033661, 24.762981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.046326, 36.200825, 24.853403>,  <38.802052, 36.479427, 25.004105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046326, 36.200825, 24.853403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246463, -0.619320, 0.745452,
		-0.752546, -0.362377, -0.549870,
		0.610680, -0.696510, -0.376754,
		39.229530, 35.991871, 24.740377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434517, 35.782578, 25.168367>,  <38.802052, 36.479427, 25.004105>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434517, 35.782578, 25.168367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.796680, 35.641018, 25.074568>,  <39.013981, 35.556084, 25.018288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.796680, 35.641018, 25.074568>,  <38.434517, 35.782578, 25.168367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796680, 35.641018, 25.074568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037749, -0.617288, 0.785831,
		-0.422855, -0.702648, -0.572259,
		0.905411, -0.353895, -0.234499,
		39.068302, 35.534851, 25.004219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375401, 34.983234, 24.952457>,  <38.434517, 35.782578, 25.168367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375401, 34.983234, 24.952457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.756851, 35.058521, 25.046406>,  <38.985722, 35.103695, 25.102776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.756851, 35.058521, 25.046406>,  <38.375401, 34.983234, 24.952457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756851, 35.058521, 25.046406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100408, -0.536704, 0.837775,
		0.283740, -0.822510, -0.492918,
		0.953630, 0.188217, 0.234872,
		39.042938, 35.114986, 25.116867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790199, 34.368122, 24.970757>,  <38.375401, 34.983234, 24.952457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790199, 34.368122, 24.970757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.973091, 34.635433, 25.205481>,  <39.082829, 34.795818, 25.346315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.973091, 34.635433, 25.205481>,  <38.790199, 34.368122, 24.970757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973091, 34.635433, 25.205481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099890, -0.617057, 0.780553,
		0.883719, -0.415511, -0.215386,
		0.457234, 0.668274, 0.586811,
		39.110260, 34.835915, 25.381523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192673, 33.899673, 25.414696>,  <38.790199, 34.368122, 24.970757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192673, 33.899673, 25.414696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.160172, 34.252335, 25.600639>,  <39.140671, 34.463932, 25.712206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.160172, 34.252335, 25.600639>,  <39.192673, 33.899673, 25.414696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160172, 34.252335, 25.600639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127283, -0.471760, 0.872491,
		0.988533, 0.011725, 0.150552,
		-0.081254, 0.881649, 0.464858,
		39.135796, 34.516830, 25.740097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673187, 33.851383, 26.036478>,  <39.192673, 33.899673, 25.414696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673187, 33.851383, 26.036478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.399632, 34.138805, 26.087013>,  <39.235497, 34.311260, 26.117334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.399632, 34.138805, 26.087013>,  <39.673187, 33.851383, 26.036478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399632, 34.138805, 26.087013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175745, -0.330316, 0.927365,
		0.708098, 0.612015, 0.352184,
		-0.683893, 0.718560, 0.126338,
		39.194462, 34.354374, 26.124914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.187202, 34.693260, 31.375839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.909824, 34.973282, 31.307648>,  <40.743397, 35.141293, 31.266733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.909824, 34.973282, 31.307648>,  <41.187202, 34.693260, 31.375839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909824, 34.973282, 31.307648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109673, 0.131295, 0.985258,
		0.712115, 0.701918, -0.014269,
		-0.693443, 0.700052, -0.170479,
		40.701790, 35.183296, 31.256504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.301308, 35.271187, 31.889503>,  <41.187202, 34.693260, 31.375839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.301308, 35.271187, 31.889503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.918705, 35.336769, 31.792992>,  <40.689144, 35.376118, 31.735085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.918705, 35.336769, 31.792992>,  <41.301308, 35.271187, 31.889503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918705, 35.336769, 31.792992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203337, 0.218335, 0.954455,
		0.209171, 0.962002, -0.175500,
		-0.956505, 0.163958, -0.241280,
		40.631752, 35.385956, 31.720608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080772, 35.817371, 32.269566>,  <41.301308, 35.271187, 31.889503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.080772, 35.817371, 32.269566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.722466, 35.684158, 32.151791>,  <40.507481, 35.604229, 32.081127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.722466, 35.684158, 32.151791>,  <41.080772, 35.817371, 32.269566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722466, 35.684158, 32.151791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368297, 0.185099, 0.911096,
		-0.248928, 0.924567, -0.288461,
		-0.895763, -0.333037, -0.294439,
		40.453735, 35.584248, 32.063457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596046, 36.339294, 32.536934>,  <41.080772, 35.817371, 32.269566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596046, 36.339294, 32.536934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.365910, 36.018570, 32.472324>,  <40.227829, 35.826138, 32.433559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.365910, 36.018570, 32.472324>,  <40.596046, 36.339294, 32.536934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365910, 36.018570, 32.472324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517802, 0.204186, 0.830776,
		-0.633140, 0.561617, -0.532653,
		-0.575339, -0.801807, -0.161528,
		40.193310, 35.778027, 32.423866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900928, 36.573612, 32.444061>,  <40.596046, 36.339294, 32.536934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900928, 36.573612, 32.444061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.900772, 36.190014, 32.557426>,  <39.900677, 35.959854, 32.625446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.900772, 36.190014, 32.557426>,  <39.900928, 36.573612, 32.444061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900772, 36.190014, 32.557426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540738, 0.238611, 0.806639,
		-0.841191, -0.152938, -0.518660,
		-0.000392, -0.958997, 0.283416,
		39.900654, 35.902313, 32.642452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252258, 36.494400, 32.791931>,  <39.900928, 36.573612, 32.444061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252258, 36.494400, 32.791931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.455418, 36.172749, 32.915493>,  <39.577312, 35.979759, 32.989628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.455418, 36.172749, 32.915493>,  <39.252258, 36.494400, 32.791931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455418, 36.172749, 32.915493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445557, 0.061668, 0.893127,
		-0.737235, -0.591253, -0.326962,
		0.507901, -0.804125, 0.308901,
		39.607788, 35.931511, 33.008163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.748203, 36.031116, 33.106480>,  <39.252258, 36.494400, 32.791931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.748203, 36.031116, 33.106480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.119297, 35.968113, 33.241825>,  <39.341953, 35.930309, 33.323032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.119297, 35.968113, 33.241825>,  <38.748203, 36.031116, 33.106480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119297, 35.968113, 33.241825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319806, 0.131910, 0.938256,
		-0.192423, -0.978667, 0.072004,
		0.927738, -0.157515, 0.338366,
		39.397617, 35.920860, 33.343334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679642, 35.620403, 33.678974>,  <38.748203, 36.031116, 33.106480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679642, 35.620403, 33.678974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.053062, 35.747604, 33.745129>,  <39.277115, 35.823925, 33.784821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.053062, 35.747604, 33.745129>,  <38.679642, 35.620403, 33.678974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053062, 35.747604, 33.745129> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193845, 0.059797, 0.979208,
		0.301506, -0.946200, 0.117468,
		0.933551, 0.318008, 0.165387,
		39.333126, 35.843006, 33.794746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974964, 35.120457, 34.134514>,  <38.679642, 35.620403, 33.678974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974964, 35.120457, 34.134514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.240108, 35.417336, 34.174034>,  <39.399193, 35.595463, 34.197746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.240108, 35.417336, 34.174034>,  <38.974964, 35.120457, 34.134514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240108, 35.417336, 34.174034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049344, -0.088369, 0.994865,
		0.747119, -0.664328, -0.021953,
		0.662856, 0.742199, 0.098803,
		39.438965, 35.639996, 34.203674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453228, 34.942703, 34.636837>,  <38.974964, 35.120457, 34.134514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453228, 34.942703, 34.636837> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.427872, 35.339100, 34.589638>,  <39.412659, 35.576939, 34.561317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.427872, 35.339100, 34.589638>,  <39.453228, 34.942703, 34.636837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427872, 35.339100, 34.589638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186297, 0.104408, 0.976930,
		0.980446, 0.083910, 0.178000,
		-0.063390, 0.990988, -0.117999,
		39.408855, 35.636398, 34.554237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767357, 35.201126, 35.268547>,  <39.453228, 34.942703, 34.636837>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767357, 35.201126, 35.268547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.573841, 35.525673, 35.137314>,  <39.457733, 35.720402, 35.058575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.573841, 35.525673, 35.137314>,  <39.767357, 35.201126, 35.268547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573841, 35.525673, 35.137314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356154, 0.159907, 0.920644,
		0.799440, 0.562244, 0.211610,
		-0.483788, 0.811364, -0.328081,
		39.428703, 35.769081, 35.038891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040981, 35.854561, 35.645344>,  <39.767357, 35.201126, 35.268547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040981, 35.854561, 35.645344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.669579, 35.917168, 35.510654>,  <39.446735, 35.954731, 35.429840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.669579, 35.917168, 35.510654>,  <40.040981, 35.854561, 35.645344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669579, 35.917168, 35.510654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296412, 0.233760, 0.926011,
		0.223645, 0.959614, -0.170655,
		-0.928506, 0.156514, -0.336720,
		39.391026, 35.964123, 35.409637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804920, 36.458565, 35.827438>,  <40.040981, 35.854561, 35.645344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804920, 36.458565, 35.827438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.479618, 36.226105, 35.815548>,  <39.284439, 36.086628, 35.808414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.479618, 36.226105, 35.815548>,  <39.804920, 36.458565, 35.827438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479618, 36.226105, 35.815548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253868, 0.308357, 0.916770,
		-0.523616, 0.753112, -0.398308,
		-0.813251, -0.581153, -0.029730,
		39.235641, 36.051758, 35.806629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359848, 37.024250, 36.171021>,  <39.804920, 36.458565, 35.827438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.359848, 37.024250, 36.171021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.201317, 36.657005, 36.171585>,  <39.106197, 36.436661, 36.171925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.201317, 36.657005, 36.171585>,  <39.359848, 37.024250, 36.171021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201317, 36.657005, 36.171585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584386, 0.253449, 0.770881,
		-0.708109, 0.304697, -0.636978,
		-0.396326, -0.918109, 0.001409,
		39.082420, 36.381573, 36.172009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788078, 37.630409, 36.599667>,  <39.359848, 37.024250, 36.171021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788078, 37.630409, 36.599667> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.951717, 37.995296, 36.608551>,  <40.049900, 38.214230, 36.613884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.951717, 37.995296, 36.608551>,  <39.788078, 37.630409, 36.599667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951717, 37.995296, 36.608551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102548, -0.021771, -0.994490,
		-0.906711, 0.409119, -0.102453,
		0.409095, 0.912221, 0.022215,
		40.074448, 38.268963, 36.615215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384476, 37.926704, 36.120911>,  <39.788078, 37.630409, 36.599667>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384476, 37.926704, 36.120911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.718441, 38.145927, 36.141136>,  <39.918819, 38.277462, 36.153271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.718441, 38.145927, 36.141136>,  <39.384476, 37.926704, 36.120911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718441, 38.145927, 36.141136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077943, -0.026784, -0.996598,
		-0.544841, 0.836010, -0.065080,
		0.834909, 0.548060, 0.050568,
		39.968914, 38.310345, 36.156307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195404, 38.556805, 35.858330>,  <39.384476, 37.926704, 36.120911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195404, 38.556805, 35.858330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.591820, 38.541809, 35.807056>,  <39.829670, 38.532810, 35.776291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.591820, 38.541809, 35.807056>,  <39.195404, 38.556805, 35.858330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591820, 38.541809, 35.807056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119774, 0.175102, -0.977238,
		0.059085, 0.983836, 0.169043,
		0.991041, -0.037493, -0.128184,
		39.889133, 38.530560, 35.768600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320744, 39.014381, 35.333378>,  <39.195404, 38.556805, 35.858330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320744, 39.014381, 35.333378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.653034, 38.792442, 35.351437>,  <39.852409, 38.659279, 35.362270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.653034, 38.792442, 35.351437>,  <39.320744, 39.014381, 35.333378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653034, 38.792442, 35.351437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112140, 0.087354, -0.989845,
		0.545272, 0.827352, 0.134788,
		0.830724, -0.554850, 0.045147,
		39.902252, 38.625988, 35.364983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791019, 39.417912, 34.984097>,  <39.320744, 39.014381, 35.333378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791019, 39.417912, 34.984097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.947262, 39.051685, 34.945793>,  <40.041008, 38.831951, 34.922810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.947262, 39.051685, 34.945793>,  <39.791019, 39.417912, 34.984097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.947262, 39.051685, 34.945793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003706, 0.102456, -0.994731,
		0.920552, 0.388899, 0.036626,
		0.390602, -0.915566, -0.095757,
		40.064442, 38.777016, 34.917065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305344, 39.443890, 34.527889>,  <39.791019, 39.417912, 34.984097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305344, 39.443890, 34.527889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.221725, 39.053127, 34.510227>,  <40.171555, 38.818668, 34.499630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.221725, 39.053127, 34.510227>,  <40.305344, 39.443890, 34.527889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.221725, 39.053127, 34.510227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029365, 0.038859, -0.998813,
		0.977466, -0.210089, 0.020564,
		-0.209041, -0.976910, -0.044153,
		40.159012, 38.760056, 34.496983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804497, 39.185917, 34.128048>,  <40.305344, 39.443890, 34.527889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804497, 39.185917, 34.128048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.516624, 38.909069, 34.106014>,  <40.343903, 38.742962, 34.092793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.516624, 38.909069, 34.106014>,  <40.804497, 39.185917, 34.128048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516624, 38.909069, 34.106014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085024, -0.009107, -0.996337,
		0.689080, -0.721728, 0.065400,
		-0.719680, -0.692117, -0.055088,
		40.300720, 38.701435, 34.089489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001652, 38.689739, 33.496475>,  <40.804497, 39.185917, 34.128048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001652, 38.689739, 33.496475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.611340, 38.660069, 33.578785>,  <40.377151, 38.642265, 33.628170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.611340, 38.660069, 33.578785>,  <41.001652, 38.689739, 33.496475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.611340, 38.660069, 33.578785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199685, -0.081938, -0.976428,
		0.089290, -0.993873, 0.065142,
		-0.975784, -0.074177, 0.205778,
		40.318604, 38.637817, 33.640518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834751, 38.148819, 33.083366>,  <41.001652, 38.689739, 33.496475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834751, 38.148819, 33.083366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.482571, 38.329998, 33.139435>,  <40.271263, 38.438705, 33.173077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.482571, 38.329998, 33.139435>,  <40.834751, 38.148819, 33.083366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.482571, 38.329998, 33.139435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154179, 0.006054, -0.988025,
		-0.448369, -0.891518, 0.064504,
		-0.880451, 0.452945, 0.140168,
		40.218433, 38.465881, 33.181484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387802, 37.842659, 32.650681>,  <40.834751, 38.148819, 33.083366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387802, 37.842659, 32.650681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.195255, 38.182159, 32.738228>,  <40.079727, 38.385860, 32.790756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.195255, 38.182159, 32.738228>,  <40.387802, 37.842659, 32.650681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195255, 38.182159, 32.738228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242125, 0.111227, -0.963848,
		-0.842412, -0.516962, 0.151963,
		-0.481371, 0.848751, 0.218869,
		40.050842, 38.436783, 32.803890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.679096, 37.752369, 32.371418>,  <40.387802, 37.842659, 32.650681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.679096, 37.752369, 32.371418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.781166, 38.136906, 32.412804>,  <39.842407, 38.367626, 32.437637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.781166, 38.136906, 32.412804>,  <39.679096, 37.752369, 32.371418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781166, 38.136906, 32.412804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126084, 0.139180, -0.982208,
		-0.958638, 0.237591, 0.156725,
		0.255176, 0.961342, 0.103467,
		39.857719, 38.425308, 32.443844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.251595, 38.119022, 31.933601>,  <39.679096, 37.752369, 32.371418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.251595, 38.119022, 31.933601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.581757, 38.337334, 31.991322>,  <39.779854, 38.468323, 32.025955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.581757, 38.337334, 31.991322>,  <39.251595, 38.119022, 31.933601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581757, 38.337334, 31.991322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009696, 0.269277, -0.963014,
		-0.564453, 0.793480, 0.227555,
		0.825408, 0.545782, 0.144301,
		39.829380, 38.501068, 32.034611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095287, 38.766319, 31.505896>,  <39.251595, 38.119022, 31.933601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095287, 38.766319, 31.505896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.487770, 38.743774, 31.579718>,  <39.723259, 38.730247, 31.624012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.487770, 38.743774, 31.579718>,  <39.095287, 38.766319, 31.505896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487770, 38.743774, 31.579718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191755, 0.391976, -0.899769,
		-0.021632, 0.918247, 0.395416,
		0.981204, -0.056359, 0.184557,
		39.782131, 38.726868, 31.635084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471386, 39.364769, 31.183485>,  <39.095287, 38.766319, 31.505896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471386, 39.364769, 31.183485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.784576, 39.121536, 31.235922>,  <39.972492, 38.975597, 31.267384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.784576, 39.121536, 31.235922>,  <39.471386, 39.364769, 31.183485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784576, 39.121536, 31.235922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401821, 0.333541, -0.852813,
		0.474855, 0.720409, 0.505494,
		0.782977, -0.608080, 0.131092,
		40.019470, 38.939114, 31.275249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301888, 40.086761, 31.258671>,  <39.471386, 39.364769, 31.183485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301888, 40.086761, 31.258671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.012768, 40.324585, 31.117781>,  <38.839294, 40.467278, 31.033247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.012768, 40.324585, 31.117781>,  <39.301888, 40.086761, 31.258671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012768, 40.324585, 31.117781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597357, -0.281277, 0.751031,
		0.347459, 0.753248, 0.558471,
		-0.722798, 0.594559, -0.352226,
		38.795929, 40.502953, 31.012114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989273, 40.205284, 31.816931>,  <39.301888, 40.086761, 31.258671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989273, 40.205284, 31.816931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.699776, 40.359657, 31.588104>,  <38.526077, 40.452282, 31.450809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.699776, 40.359657, 31.588104>,  <38.989273, 40.205284, 31.816931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699776, 40.359657, 31.588104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658800, -0.139689, 0.739236,
		0.205383, 0.911891, 0.355350,
		-0.723740, 0.385931, -0.572064,
		38.482655, 40.475437, 31.416485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576080, 40.637730, 32.253944>,  <38.989273, 40.205284, 31.816931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576080, 40.637730, 32.253944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.352505, 40.595688, 31.924936>,  <38.218357, 40.570461, 31.727531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.352505, 40.595688, 31.924936>,  <38.576080, 40.637730, 32.253944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352505, 40.595688, 31.924936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769347, -0.304307, 0.561697,
		-0.309336, 0.946758, 0.089227,
		-0.558943, -0.105106, -0.822518,
		38.184822, 40.564156, 31.678181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937519, 40.994507, 32.457062>,  <38.576080, 40.637730, 32.253944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937519, 40.994507, 32.457062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.868587, 40.736050, 32.159660>,  <37.827229, 40.580975, 31.981218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.868587, 40.736050, 32.159660>,  <37.937519, 40.994507, 32.457062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868587, 40.736050, 32.159660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810131, -0.336405, 0.480124,
		-0.560348, 0.685077, -0.465489,
		-0.172329, -0.646143, -0.743506,
		37.816891, 40.542206, 31.936609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264072, 40.985340, 32.539932>,  <37.937519, 40.994507, 32.457062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264072, 40.985340, 32.539932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.363209, 40.636665, 32.370819>,  <37.422691, 40.427460, 32.269352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.363209, 40.636665, 32.370819>,  <37.264072, 40.985340, 32.539932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363209, 40.636665, 32.370819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767559, -0.442945, 0.463306,
		-0.591126, 0.209686, -0.778846,
		0.247837, -0.871683, -0.422783,
		37.437561, 40.375160, 32.243984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667812, 40.724560, 32.352345>,  <37.264072, 40.985340, 32.539932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667812, 40.724560, 32.352345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.890450, 40.394650, 32.312431>,  <37.024033, 40.196705, 32.288483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.890450, 40.394650, 32.312431>,  <36.667812, 40.724560, 32.352345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890450, 40.394650, 32.312431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786335, -0.561758, 0.257111,
		-0.268112, -0.064642, -0.961217,
		0.556591, -0.824772, -0.099784,
		37.057426, 40.147217, 32.282497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247581, 40.208347, 31.966074>,  <36.667812, 40.724560, 32.352345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247581, 40.208347, 31.966074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.526154, 40.033993, 32.194107>,  <36.693295, 39.929382, 32.330929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.526154, 40.033993, 32.194107>,  <36.247581, 40.208347, 31.966074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526154, 40.033993, 32.194107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673862, -0.670386, 0.310632,
		0.246777, -0.600490, -0.760600,
		0.696427, -0.435883, 0.570084,
		36.735081, 39.903229, 32.365131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202076, 39.589451, 31.843739>,  <36.247581, 40.208347, 31.966074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202076, 39.589451, 31.843739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.360825, 39.608078, 32.210415>,  <36.456074, 39.619255, 32.430420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.360825, 39.608078, 32.210415>,  <36.202076, 39.589451, 31.843739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360825, 39.608078, 32.210415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800203, -0.471675, 0.370402,
		0.449627, -0.880542, -0.149936,
		0.396876, 0.046564, 0.916691,
		36.479889, 39.622047, 32.485420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046398, 38.973175, 32.037716>,  <36.202076, 39.589451, 31.843739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046398, 38.973175, 32.037716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.127525, 39.174549, 32.373672>,  <36.176201, 39.295372, 32.575245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.127525, 39.174549, 32.373672>,  <36.046398, 38.973175, 32.037716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127525, 39.174549, 32.373672> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768757, -0.449412, 0.455018,
		0.606529, -0.737959, 0.295870,
		0.202817, 0.503434, 0.839893,
		36.188370, 39.325581, 32.625641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141071, 38.479134, 32.518581>,  <36.046398, 38.973175, 32.037716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141071, 38.479134, 32.518581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.043995, 38.812393, 32.717365>,  <35.985748, 39.012348, 32.836636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.043995, 38.812393, 32.717365>,  <36.141071, 38.479134, 32.518581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.043995, 38.812393, 32.717365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822903, -0.448088, 0.349352,
		0.513744, -0.324169, 0.794343,
		-0.242687, 0.833145, 0.496963,
		35.971188, 39.062336, 32.866455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865761, 38.220383, 33.167576>,  <36.141071, 38.479134, 32.518581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865761, 38.220383, 33.167576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.726589, 38.595177, 33.180302>,  <35.643085, 38.820053, 33.187939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.726589, 38.595177, 33.180302>,  <35.865761, 38.220383, 33.167576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726589, 38.595177, 33.180302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859488, -0.332337, 0.388370,
		0.374470, 0.107777, 0.920954,
		-0.347924, 0.936982, 0.031818,
		35.622211, 38.876270, 33.189846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707176, 38.450375, 33.803585>,  <35.865761, 38.220383, 33.167576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707176, 38.450375, 33.803585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.456650, 38.669025, 33.581261>,  <35.306335, 38.800217, 33.447865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.456650, 38.669025, 33.581261>,  <35.707176, 38.450375, 33.803585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.456650, 38.669025, 33.581261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772367, -0.338428, 0.537508,
		0.105711, 0.765943, 0.634158,
		-0.626318, 0.546623, -0.555814,
		35.268753, 38.833012, 33.414516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.901192, 42.066944, 28.334242> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555656, 41.958920, 28.164137>,  <40.348335, 41.894104, 28.062075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555656, 41.958920, 28.164137>,  <40.901192, 42.066944, 28.334242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555656, 41.958920, 28.164137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410738, -0.111189, 0.904948,
		-0.291673, 0.956402, -0.014874,
		-0.863841, -0.270059, -0.425262,
		40.296505, 41.877903, 28.036558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504223, 42.375698, 28.803379>,  <40.901192, 42.066944, 28.334242>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504223, 42.375698, 28.803379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252945, 42.127407, 28.615730>,  <40.102177, 41.978432, 28.503141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252945, 42.127407, 28.615730>,  <40.504223, 42.375698, 28.803379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252945, 42.127407, 28.615730> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562461, -0.054304, 0.825039,
		-0.537597, 0.782146, -0.315020,
		-0.628194, -0.620724, -0.469120,
		40.064487, 41.941189, 28.474995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888721, 42.509598, 29.115370>,  <40.504223, 42.375698, 28.803379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888721, 42.509598, 29.115370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846035, 42.152405, 28.940470>,  <39.820423, 41.938087, 28.835529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846035, 42.152405, 28.940470>,  <39.888721, 42.509598, 29.115370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846035, 42.152405, 28.940470> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684520, -0.252970, 0.683695,
		-0.721142, 0.372266, -0.584271,
		-0.106714, -0.892986, -0.437250,
		39.814022, 41.884510, 28.809294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177528, 42.353271, 29.113544>,  <39.888721, 42.509598, 29.115370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.177528, 42.353271, 29.113544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384384, 42.013039, 29.075451>,  <39.508499, 41.808899, 29.052595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384384, 42.013039, 29.075451>,  <39.177528, 42.353271, 29.113544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384384, 42.013039, 29.075451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575177, -0.427767, 0.697271,
		-0.633826, -0.305812, -0.710453,
		0.517142, -0.850585, -0.095234,
		39.539528, 41.757862, 29.046881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699791, 41.856560, 29.252684>,  <39.177528, 42.353271, 29.113544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699791, 41.856560, 29.252684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043453, 41.654270, 29.283901>,  <39.249653, 41.532898, 29.302631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043453, 41.654270, 29.283901>,  <38.699791, 41.856560, 29.252684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043453, 41.654270, 29.283901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414355, -0.598066, 0.686023,
		-0.300263, -0.621740, -0.723382,
		0.859158, -0.505724, 0.078044,
		39.301201, 41.502552, 29.307314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601315, 41.094173, 29.038660>,  <38.699791, 41.856560, 29.252684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601315, 41.094173, 29.038660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910072, 41.137478, 29.289246>,  <39.095329, 41.163460, 29.439596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910072, 41.137478, 29.289246>,  <38.601315, 41.094173, 29.038660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910072, 41.137478, 29.289246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373841, -0.719728, 0.585008,
		0.514216, -0.685763, -0.515083,
		0.771897, 0.108261, 0.626462,
		39.141640, 41.169956, 29.477184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721153, 40.526676, 29.371630>,  <38.601315, 41.094173, 29.038660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721153, 40.526676, 29.371630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924469, 40.754642, 29.629883>,  <39.046459, 40.891422, 29.784836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924469, 40.754642, 29.629883>,  <38.721153, 40.526676, 29.371630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.924469, 40.754642, 29.629883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392905, -0.513665, 0.762741,
		0.766337, -0.641363, -0.037166,
		0.508285, 0.569914, 0.645635,
		39.076954, 40.925617, 29.823574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044411, 40.105461, 29.848948>,  <38.721153, 40.526676, 29.371630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044411, 40.105461, 29.848948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052876, 40.461620, 30.030823>,  <39.057953, 40.675316, 30.139948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052876, 40.461620, 30.030823>,  <39.044411, 40.105461, 29.848948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052876, 40.461620, 30.030823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385909, -0.412271, 0.825292,
		0.922294, -0.192935, 0.334888,
		0.021163, 0.890399, 0.454690,
		39.059223, 40.728741, 30.167231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397961, 40.010796, 30.540701>,  <39.044411, 40.105461, 29.848948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397961, 40.010796, 30.540701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157204, 40.327881, 30.579348>,  <39.012749, 40.518131, 30.602535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157204, 40.327881, 30.579348>,  <39.397961, 40.010796, 30.540701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157204, 40.327881, 30.579348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419652, -0.416904, 0.806278,
		0.679426, 0.444745, 0.583593,
		-0.601891, 0.792712, 0.096617,
		38.976635, 40.565693, 30.608334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011116, 39.839458, 30.894381>,  <39.397961, 40.010796, 30.540701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011116, 39.839458, 30.894381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207268, 39.494648, 30.945660>,  <40.324959, 39.287762, 30.976427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207268, 39.494648, 30.945660>,  <40.011116, 39.839458, 30.894381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207268, 39.494648, 30.945660> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422230, 0.106317, -0.900232,
		0.762394, 0.495588, 0.416110,
		0.490384, -0.862026, 0.128196,
		40.354382, 39.236038, 30.984119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693779, 39.979240, 30.642689>,  <40.011116, 39.839458, 30.894381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693779, 39.979240, 30.642689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697990, 39.580471, 30.673780>,  <40.700516, 39.341209, 30.692436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697990, 39.580471, 30.673780>,  <40.693779, 39.979240, 30.642689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697990, 39.580471, 30.673780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668583, -0.050784, -0.741902,
		0.743563, 0.059781, 0.665988,
		0.010530, -0.996919, 0.077729,
		40.701149, 39.281395, 30.697100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380070, 39.670021, 30.800468>,  <40.693779, 39.979240, 30.642689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380070, 39.670021, 30.800468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148426, 39.417877, 30.593674>,  <41.009438, 39.266590, 30.469597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148426, 39.417877, 30.593674>,  <41.380070, 39.670021, 30.800468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.148426, 39.417877, 30.593674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633325, 0.051457, -0.772173,
		0.513350, -0.774595, 0.369424,
		-0.579112, -0.630360, -0.516986,
		40.974693, 39.228767, 30.438578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.843918, 39.364910, 30.428230>,  <41.380070, 39.670021, 30.800468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.843918, 39.364910, 30.428230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496662, 39.317593, 30.235420>,  <41.288311, 39.289204, 30.119734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496662, 39.317593, 30.235420>,  <41.843918, 39.364910, 30.428230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496662, 39.317593, 30.235420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487689, -0.022890, -0.872717,
		0.092203, -0.992715, 0.077562,
		-0.868135, -0.118293, -0.482026,
		41.236221, 39.282104, 30.090813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.991505, 38.879906, 29.941757>,  <41.843918, 39.364910, 30.428230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.991505, 38.879906, 29.941757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657097, 39.055607, 29.810228>,  <41.456451, 39.161030, 29.731312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657097, 39.055607, 29.810228>,  <41.991505, 38.879906, 29.941757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657097, 39.055607, 29.810228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279633, -0.174534, -0.944110,
		-0.472096, -0.881245, 0.023084,
		-0.836021, 0.439256, -0.328822,
		41.406292, 39.187382, 29.711582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697865, 38.332600, 29.495232>,  <41.991505, 38.879906, 29.941757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697865, 38.332600, 29.495232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564907, 38.700584, 29.412113>,  <41.485134, 38.921375, 29.362242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564907, 38.700584, 29.412113>,  <41.697865, 38.332600, 29.495232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564907, 38.700584, 29.412113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156446, -0.163490, -0.974062,
		-0.930074, -0.356282, -0.089581,
		-0.332395, 0.919964, -0.207797,
		41.465187, 38.976574, 29.349773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401505, 38.150745, 28.909246>,  <41.697865, 38.332600, 29.495232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401505, 38.150745, 28.909246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399364, 38.550686, 28.915817>,  <41.398079, 38.790649, 28.919760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.399364, 38.550686, 28.915817>,  <41.401505, 38.150745, 28.909246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.399364, 38.550686, 28.915817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096030, 0.016867, -0.995236,
		-0.995364, -0.003750, -0.096106,
		-0.005353, 0.999851, 0.016428,
		41.397758, 38.850639, 28.920746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817345, 38.527607, 28.550283>,  <41.401505, 38.150745, 28.909246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817345, 38.527607, 28.550283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109287, 38.801033, 28.553360>,  <41.284451, 38.965088, 28.555206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109287, 38.801033, 28.553360>,  <40.817345, 38.527607, 28.550283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109287, 38.801033, 28.553360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033997, 0.047530, -0.998291,
		-0.682759, 0.728344, 0.057929,
		0.729853, 0.683561, 0.007690,
		41.328243, 39.006100, 28.555668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606274, 39.078064, 28.076071>,  <40.817345, 38.527607, 28.550283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606274, 39.078064, 28.076071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000805, 39.109474, 28.134037>,  <41.237522, 39.128319, 28.168816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000805, 39.109474, 28.134037>,  <40.606274, 39.078064, 28.076071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000805, 39.109474, 28.134037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141495, 0.047513, -0.988798,
		-0.084527, 0.995780, 0.035753,
		0.986324, 0.078522, 0.144914,
		41.296703, 39.133030, 28.177511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.744862, 39.596859, 27.640884>,  <40.606274, 39.078064, 28.076071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.744862, 39.596859, 27.640884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092007, 39.408192, 27.703306>,  <41.300293, 39.294991, 27.740759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092007, 39.408192, 27.703306>,  <40.744862, 39.596859, 27.640884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.092007, 39.408192, 27.703306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207975, 0.059652, -0.976313,
		0.451183, 0.879758, 0.149864,
		0.867860, -0.471664, 0.156054,
		41.352364, 39.266693, 27.750122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.220188, 39.968391, 27.128618>,  <40.744862, 39.596859, 27.640884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.220188, 39.968391, 27.128618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403870, 39.628307, 27.231588>,  <41.514080, 39.424255, 27.293371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403870, 39.628307, 27.231588>,  <41.220188, 39.968391, 27.128618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403870, 39.628307, 27.231588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383730, -0.071505, -0.920673,
		0.801176, 0.521558, 0.293417,
		0.459203, -0.850214, 0.257426,
		41.541630, 39.373241, 27.308817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042362, 40.074287, 27.003292>,  <41.220188, 39.968391, 27.128618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042362, 40.074287, 27.003292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938530, 39.688648, 26.980923>,  <41.876232, 39.457264, 26.967501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938530, 39.688648, 26.980923>,  <42.042362, 40.074287, 27.003292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.938530, 39.688648, 26.980923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398291, -0.054121, -0.915661,
		0.879764, -0.259958, 0.398042,
		-0.259576, -0.964102, -0.055925,
		41.860657, 39.399418, 26.964146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540234, 39.889889, 26.628868>,  <42.042362, 40.074287, 27.003292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540234, 39.889889, 26.628868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312454, 39.561127, 26.623177>,  <42.175789, 39.363869, 26.619761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312454, 39.561127, 26.623177>,  <42.540234, 39.889889, 26.628868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312454, 39.561127, 26.623177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302965, -0.193749, -0.933099,
		0.764162, -0.535660, 0.359339,
		-0.569446, -0.821906, -0.014231,
		42.141621, 39.314556, 26.618908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.981716, 39.285645, 26.583311>,  <42.540234, 39.889889, 26.628868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.981716, 39.285645, 26.583311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619884, 39.223984, 26.424328>,  <42.402786, 39.186985, 26.328938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619884, 39.223984, 26.424328>,  <42.981716, 39.285645, 26.583311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619884, 39.223984, 26.424328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425463, -0.267844, -0.864431,
		0.026801, -0.951050, 0.307873,
		-0.904579, -0.154157, -0.397458,
		42.348511, 39.177738, 26.305090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.577320, 37.456146, 23.999327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.867096, 37.599716, 24.234735>,  <37.040962, 37.685860, 24.375980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.867096, 37.599716, 24.234735>,  <36.577320, 37.456146, 23.999327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867096, 37.599716, 24.234735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388426, -0.492761, 0.778660,
		0.569482, -0.792690, -0.217561,
		0.724442, 0.358927, 0.588520,
		37.084427, 37.707394, 24.411291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858311, 36.904785, 24.413620>,  <36.577320, 37.456146, 23.999327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858311, 36.904785, 24.413620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.985828, 37.216637, 24.629234>,  <37.062340, 37.403748, 24.758602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.985828, 37.216637, 24.629234>,  <36.858311, 36.904785, 24.413620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985828, 37.216637, 24.629234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155866, -0.517843, 0.841156,
		0.934921, -0.352171, -0.043567,
		0.318791, 0.779624, 0.539034,
		37.081467, 37.450523, 24.790945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302288, 36.624672, 24.977205>,  <36.858311, 36.904785, 24.413620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302288, 36.624672, 24.977205> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.185040, 36.987915, 25.096821>,  <37.114689, 37.205860, 25.168591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.185040, 36.987915, 25.096821>,  <37.302288, 36.624672, 24.977205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185040, 36.987915, 25.096821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157158, -0.354290, 0.921835,
		0.943070, 0.223213, 0.246567,
		-0.293122, 0.908105, 0.299041,
		37.097103, 37.260345, 25.186533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575275, 36.720276, 25.548105>,  <37.302288, 36.624672, 24.977205>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575275, 36.720276, 25.548105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.299580, 37.006157, 25.595692>,  <37.134163, 37.177685, 25.624243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.299580, 37.006157, 25.595692>,  <37.575275, 36.720276, 25.548105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299580, 37.006157, 25.595692> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100784, -0.257171, 0.961096,
		0.717494, 0.650431, 0.249282,
		-0.689235, 0.714704, 0.118966,
		37.092808, 37.220570, 25.631382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.794476, 37.065617, 26.257706>,  <37.575275, 36.720276, 25.548105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.794476, 37.065617, 26.257706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.417572, 37.151154, 26.154621>,  <37.191429, 37.202477, 26.092770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.417572, 37.151154, 26.154621>,  <37.794476, 37.065617, 26.257706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417572, 37.151154, 26.154621> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309408, -0.261540, 0.914256,
		0.128106, 0.941206, 0.312604,
		-0.942261, 0.213844, -0.257712,
		37.134895, 37.215305, 26.077307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645538, 37.366177, 26.768724>,  <37.794476, 37.065617, 26.257706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645538, 37.366177, 26.768724> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.276878, 37.322197, 26.619877>,  <37.055683, 37.295811, 26.530569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.276878, 37.322197, 26.619877>,  <37.645538, 37.366177, 26.768724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276878, 37.322197, 26.619877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370030, -0.039590, 0.928176,
		-0.116785, 0.993149, -0.004197,
		-0.921650, -0.109950, -0.372118,
		37.000381, 37.289211, 26.508242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134388, 37.797066, 27.216070>,  <37.645538, 37.366177, 26.768724>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134388, 37.797066, 27.216070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.958141, 37.494289, 27.023029>,  <36.852394, 37.312626, 26.907206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.958141, 37.494289, 27.023029>,  <37.134388, 37.797066, 27.216070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958141, 37.494289, 27.023029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542849, -0.203502, 0.814802,
		-0.714964, 0.620994, -0.321236,
		-0.440615, -0.756936, -0.482603,
		36.825958, 37.267208, 26.878248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491459, 37.894112, 27.432100>,  <37.134388, 37.797066, 27.216070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491459, 37.894112, 27.432100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.528160, 37.520027, 27.295305>,  <36.550182, 37.295574, 27.213228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.528160, 37.520027, 27.295305>,  <36.491459, 37.894112, 27.432100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528160, 37.520027, 27.295305> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499271, -0.340356, 0.796798,
		-0.861574, 0.097635, -0.498154,
		0.091754, -0.935214, -0.341988,
		36.555687, 37.239464, 27.192709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763969, 37.477573, 27.516418>,  <36.491459, 37.894112, 27.432100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763969, 37.477573, 27.516418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.053200, 37.201904, 27.497684>,  <36.226738, 37.036503, 27.486444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.053200, 37.201904, 27.497684>,  <35.763969, 37.477573, 27.516418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053200, 37.201904, 27.497684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465966, -0.536689, 0.703449,
		-0.509933, -0.486829, -0.709202,
		0.723080, -0.689175, -0.046830,
		36.270123, 36.995152, 27.483635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439228, 36.819027, 27.623890>,  <35.763969, 37.477573, 27.516418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439228, 36.819027, 27.623890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.825638, 36.742138, 27.692997>,  <36.057484, 36.696003, 27.734461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.825638, 36.742138, 27.692997>,  <35.439228, 36.819027, 27.623890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825638, 36.742138, 27.692997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256137, -0.622719, 0.739334,
		-0.034530, -0.758467, -0.650796,
		0.966023, -0.192222, 0.172769,
		36.115444, 36.684471, 27.744827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375278, 36.200039, 27.919386>,  <35.439228, 36.819027, 27.623890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375278, 36.200039, 27.919386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.762051, 36.284466, 27.976646>,  <35.994114, 36.335121, 28.011003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.762051, 36.284466, 27.976646>,  <35.375278, 36.200039, 27.919386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762051, 36.284466, 27.976646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017699, -0.504429, 0.863272,
		0.254415, -0.837260, -0.484014,
		0.966934, 0.211063, 0.143153,
		36.052132, 36.347786, 28.019592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739349, 35.614952, 28.086330>,  <35.375278, 36.200039, 27.919386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739349, 35.614952, 28.086330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.941170, 35.919430, 28.249306>,  <36.062263, 36.102116, 28.347092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.941170, 35.919430, 28.249306>,  <35.739349, 35.614952, 28.086330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941170, 35.919430, 28.249306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176057, -0.371285, 0.911675,
		0.845240, -0.531721, -0.053319,
		0.504553, 0.761196, 0.407438,
		36.092537, 36.147789, 28.371536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332268, 35.331940, 28.627047>,  <35.739349, 35.614952, 28.086330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332268, 35.331940, 28.627047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.288891, 35.700897, 28.775333>,  <36.262863, 35.922272, 28.864305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.288891, 35.700897, 28.775333>,  <36.332268, 35.331940, 28.627047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288891, 35.700897, 28.775333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215573, -0.385863, 0.897016,
		0.970448, 0.017358, 0.240687,
		-0.108442, 0.922393, 0.370718,
		36.256359, 35.977615, 28.886549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692093, 35.318352, 29.321033>,  <36.332268, 35.331940, 28.627047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692093, 35.318352, 29.321033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.442200, 35.630558, 29.312124>,  <36.292263, 35.817883, 29.306778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.442200, 35.630558, 29.312124>,  <36.692093, 35.318352, 29.321033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.442200, 35.630558, 29.312124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257486, -0.178997, 0.949558,
		0.737163, 0.598956, 0.312798,
		-0.624734, 0.780520, -0.022273,
		36.254780, 35.864716, 29.305443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476673, 35.242393, 29.573032>,  <36.692093, 35.318352, 29.321033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476673, 35.242393, 29.573032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.649643, 34.912533, 29.718884>,  <37.753426, 34.714615, 29.806395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.649643, 34.912533, 29.718884>,  <37.476673, 35.242393, 29.573032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649643, 34.912533, 29.718884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041246, -0.385875, -0.921628,
		0.900724, 0.413578, -0.132850,
		0.432429, -0.824654, 0.364626,
		37.779373, 34.665138, 29.828272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205498, 35.154064, 29.401733>,  <37.476673, 35.242393, 29.573032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205498, 35.154064, 29.401733> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.122929, 34.769680, 29.475420>,  <38.073387, 34.539047, 29.519632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.122929, 34.769680, 29.475420>,  <38.205498, 35.154064, 29.401733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122929, 34.769680, 29.475420> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332584, -0.245973, -0.910431,
		0.920205, -0.126666, 0.370376,
		-0.206424, -0.960964, 0.184218,
		38.061001, 34.481392, 29.530685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828388, 34.695995, 29.294596>,  <38.205498, 35.154064, 29.401733>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828388, 34.695995, 29.294596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.508415, 34.459351, 29.254396>,  <38.316433, 34.317364, 29.230276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.508415, 34.459351, 29.254396>,  <38.828388, 34.695995, 29.294596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508415, 34.459351, 29.254396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300629, -0.250141, -0.920354,
		0.519358, -0.766433, 0.377953,
		-0.799931, -0.591617, -0.100499,
		38.268436, 34.281864, 29.224247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094540, 34.186451, 28.850746>,  <38.828388, 34.695995, 29.294596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094540, 34.186451, 28.850746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.695892, 34.155327, 28.840141>,  <38.456703, 34.136654, 28.833778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.695892, 34.155327, 28.840141>,  <39.094540, 34.186451, 28.850746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695892, 34.155327, 28.840141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042226, -0.207834, -0.977252,
		0.070532, -0.975065, 0.210416,
		-0.996616, -0.077812, -0.026514,
		38.396908, 34.131985, 28.832188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034790, 33.479404, 28.637125>,  <39.094540, 34.186451, 28.850746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034790, 33.479404, 28.637125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.701355, 33.682919, 28.551081>,  <38.501293, 33.805027, 28.499454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.701355, 33.682919, 28.551081>,  <39.034790, 33.479404, 28.637125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701355, 33.682919, 28.551081> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212005, -0.064925, -0.975110,
		-0.510092, -0.858439, -0.053746,
		-0.833583, 0.508790, -0.215111,
		38.451279, 33.835556, 28.486547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914280, 33.215893, 28.050329>,  <39.034790, 33.479404, 28.637125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914280, 33.215893, 28.050329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.645317, 33.509567, 28.012741>,  <38.483940, 33.685772, 27.990189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.645317, 33.509567, 28.012741>,  <38.914280, 33.215893, 28.050329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645317, 33.509567, 28.012741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246785, 0.102682, -0.963615,
		-0.697828, -0.671133, -0.250232,
		-0.672408, 0.734191, -0.093972,
		38.443596, 33.729824, 27.984550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473465, 33.115719, 27.362667>,  <38.914280, 33.215893, 28.050329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473465, 33.115719, 27.362667> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.449116, 33.506027, 27.446730>,  <38.434505, 33.740211, 27.497168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.449116, 33.506027, 27.446730>,  <38.473465, 33.115719, 27.362667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449116, 33.506027, 27.446730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105352, 0.215653, -0.970770,
		-0.992570, -0.036957, -0.115927,
		-0.060877, 0.975770, 0.210157,
		38.430851, 33.798759, 27.509777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929150, 33.444000, 26.903650>,  <38.473465, 33.115719, 27.362667>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929150, 33.444000, 26.903650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.170578, 33.739388, 27.023891>,  <38.315434, 33.916622, 27.096037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.170578, 33.739388, 27.023891>,  <37.929150, 33.444000, 26.903650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.170578, 33.739388, 27.023891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107757, 0.298009, -0.948461,
		-0.789993, 0.604856, 0.100294,
		0.603572, 0.738471, 0.300603,
		38.351650, 33.960930, 27.114073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891579, 33.904060, 26.329254>,  <37.929150, 33.444000, 26.903650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891579, 33.904060, 26.329254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.184246, 34.080235, 26.537359>,  <38.359848, 34.185940, 26.662222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.184246, 34.080235, 26.537359>,  <37.891579, 33.904060, 26.329254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184246, 34.080235, 26.537359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311135, 0.463310, -0.829782,
		-0.606511, 0.768999, 0.201954,
		0.731669, 0.440437, 0.520265,
		38.403748, 34.212364, 26.693439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922806, 34.628059, 26.095585>,  <37.891579, 33.904060, 26.329254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922806, 34.628059, 26.095585> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.279884, 34.554287, 26.260061>,  <38.494133, 34.510025, 26.358747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.279884, 34.554287, 26.260061>,  <37.922806, 34.628059, 26.095585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279884, 34.554287, 26.260061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438980, 0.562228, -0.700854,
		-0.101927, 0.806155, 0.582859,
		0.892697, -0.184427, 0.411192,
		38.547695, 34.498959, 26.383419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251183, 35.338291, 26.178732>,  <37.922806, 34.628059, 26.095585>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251183, 35.338291, 26.178732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.532310, 35.053856, 26.186655>,  <38.700989, 34.883194, 26.191408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.532310, 35.053856, 26.186655>,  <38.251183, 35.338291, 26.178732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532310, 35.053856, 26.186655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523313, 0.497967, -0.691500,
		0.481855, 0.496368, 0.722105,
		0.702823, -0.711089, 0.019808,
		38.743156, 34.840530, 26.192598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941376, 35.640617, 26.335691>,  <38.251183, 35.338291, 26.178732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941376, 35.640617, 26.335691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.989037, 35.289623, 26.149866>,  <39.017632, 35.079025, 26.038372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.989037, 35.289623, 26.149866>,  <38.941376, 35.640617, 26.335691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989037, 35.289623, 26.149866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427988, 0.467586, -0.773427,
		0.895895, -0.106670, 0.431269,
		0.119154, -0.877488, -0.464562,
		39.024784, 35.026379, 26.010498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530270, 35.762383, 26.138344>,  <38.941376, 35.640617, 26.335691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530270, 35.762383, 26.138344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.414276, 35.450268, 25.916691>,  <39.344681, 35.263000, 25.783699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.414276, 35.450268, 25.916691>,  <39.530270, 35.762383, 26.138344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414276, 35.450268, 25.916691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498118, 0.371345, -0.783570,
		0.817182, -0.503247, 0.280989,
		-0.289985, -0.780285, -0.554133,
		39.327282, 35.216183, 25.750450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104427, 35.623123, 25.676941>,  <39.530270, 35.762383, 26.138344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104427, 35.623123, 25.676941> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.791523, 35.463150, 25.485895>,  <39.603779, 35.367165, 25.371267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.791523, 35.463150, 25.485895>,  <40.104427, 35.623123, 25.676941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791523, 35.463150, 25.485895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398687, 0.267689, -0.877149,
		0.478655, -0.876581, -0.049955,
		-0.782265, -0.399936, -0.477613,
		39.556843, 35.343170, 25.342611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510765, 35.056301, 25.495371>,  <40.104427, 35.623123, 25.676941>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510765, 35.056301, 25.495371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.884834, 35.018223, 25.631830>,  <41.109276, 34.995377, 25.713705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.884834, 35.018223, 25.631830>,  <40.510765, 35.056301, 25.495371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.884834, 35.018223, 25.631830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348452, -0.074724, 0.934343,
		-0.063447, -0.992651, -0.103049,
		0.935177, -0.095189, 0.341150,
		41.165386, 34.989662, 25.734175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.517941, 34.528465, 25.972549>,  <40.510765, 35.056301, 25.495371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.517941, 34.528465, 25.972549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.846436, 34.736935, 26.065451>,  <41.043533, 34.862015, 26.121191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.846436, 34.736935, 26.065451>,  <40.517941, 34.528465, 25.972549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846436, 34.736935, 26.065451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262765, -0.015864, 0.964729,
		0.506475, -0.853304, 0.123918,
		0.821241, 0.521173, 0.232253,
		41.092808, 34.893288, 26.135126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878986, 34.205395, 26.579075>,  <40.517941, 34.528465, 25.972549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878986, 34.205395, 26.579075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.042282, 34.570404, 26.568882>,  <41.140259, 34.789410, 26.562767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.042282, 34.570404, 26.568882>,  <40.878986, 34.205395, 26.579075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042282, 34.570404, 26.568882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175614, 0.105895, 0.978747,
		0.895825, -0.395086, 0.203482,
		0.408237, 0.912520, -0.025481,
		41.164753, 34.844162, 26.561237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385517, 34.281784, 27.135525>,  <40.878986, 34.205395, 26.579075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385517, 34.281784, 27.135525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.311710, 34.661247, 27.032755>,  <41.267426, 34.888924, 26.971092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.311710, 34.661247, 27.032755>,  <41.385517, 34.281784, 27.135525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311710, 34.661247, 27.032755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244809, 0.208812, 0.946819,
		0.951852, 0.237601, 0.193709,
		-0.184516, 0.948654, -0.256925,
		41.256355, 34.945843, 26.955677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.639706, 34.708515, 27.647247>,  <41.385517, 34.281784, 27.135525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.639706, 34.708515, 27.647247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.368618, 34.942333, 27.468813>,  <41.205963, 35.082626, 27.361752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.368618, 34.942333, 27.468813>,  <41.639706, 34.708515, 27.647247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368618, 34.942333, 27.468813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301975, 0.331888, 0.893679,
		0.670450, 0.740374, -0.048409,
		-0.677723, 0.584549, -0.446088,
		41.165302, 35.117699, 27.334986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875587, 35.215210, 28.052814>,  <41.639706, 34.708515, 27.647247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875587, 35.215210, 28.052814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.512104, 35.286537, 27.901846>,  <41.294014, 35.329334, 27.811266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.512104, 35.286537, 27.901846>,  <41.875587, 35.215210, 28.052814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.512104, 35.286537, 27.901846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339702, 0.209533, 0.916896,
		0.242586, 0.961404, -0.129828,
		-0.908711, 0.178323, -0.377420,
		41.239491, 35.340034, 27.788620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673462, 35.782848, 28.326611>,  <41.875587, 35.215210, 28.052814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673462, 35.782848, 28.326611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.326656, 35.625748, 28.203947>,  <41.118572, 35.531487, 28.130348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.326656, 35.625748, 28.203947>,  <41.673462, 35.782848, 28.326611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326656, 35.625748, 28.203947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419063, 0.241766, 0.875177,
		-0.269584, 0.887299, -0.374200,
		-0.867012, -0.392747, -0.306658,
		41.066551, 35.507923, 28.111950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249649, 36.221176, 28.607878>,  <41.673462, 35.782848, 28.326611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249649, 36.221176, 28.607878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.046936, 35.889050, 28.515137>,  <40.925308, 35.689774, 28.459492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.046936, 35.889050, 28.515137>,  <41.249649, 36.221176, 28.607878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046936, 35.889050, 28.515137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474995, 0.044505, 0.878862,
		-0.719412, 0.555518, -0.416948,
		-0.506780, -0.830313, -0.231851,
		40.894901, 35.639957, 28.445581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.565254, 36.331593, 28.683672>,  <41.249649, 36.221176, 28.607878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.565254, 36.331593, 28.683672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.622761, 35.940960, 28.747688>,  <40.657265, 35.706581, 28.786098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.622761, 35.940960, 28.747688>,  <40.565254, 36.331593, 28.683672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622761, 35.940960, 28.747688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075901, 0.150362, 0.985713,
		-0.986696, -0.153862, -0.052506,
		0.143769, -0.976585, 0.160040,
		40.665890, 35.647984, 28.795700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.060169, 36.151031, 29.184406>,  <40.565254, 36.331593, 28.683672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.060169, 36.151031, 29.184406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.316830, 35.844280, 29.178934>,  <40.470825, 35.660229, 29.175652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.316830, 35.844280, 29.178934>,  <40.060169, 36.151031, 29.184406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316830, 35.844280, 29.178934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096041, -0.098029, 0.990538,
		-0.760962, -0.634264, -0.136552,
		0.641649, -0.766876, -0.013681,
		40.509323, 35.614216, 29.174829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.714653, 35.614895, 29.503214>,  <40.060169, 36.151031, 29.184406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.714653, 35.614895, 29.503214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.111103, 35.583111, 29.545832>,  <40.348972, 35.564041, 29.571402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.111103, 35.583111, 29.545832>,  <39.714653, 35.614895, 29.503214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111103, 35.583111, 29.545832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120457, -0.198215, 0.972729,
		-0.056173, -0.976932, -0.206028,
		0.991128, -0.079458, 0.106544,
		40.408440, 35.559273, 29.577795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821682, 34.921669, 29.858698>,  <39.714653, 35.614895, 29.503214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821682, 34.921669, 29.858698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.156696, 35.128937, 29.928028>,  <40.357704, 35.253296, 29.969625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.156696, 35.128937, 29.928028>,  <39.821682, 34.921669, 29.858698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156696, 35.128937, 29.928028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062695, -0.223985, 0.972574,
		0.542781, -0.825427, -0.155108,
		0.837531, 0.518170, 0.173325,
		40.407955, 35.284389, 29.980026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119350, 34.544735, 30.360289>,  <39.821682, 34.921669, 29.858698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119350, 34.544735, 30.360289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.325077, 34.887669, 30.368898>,  <40.448513, 35.093430, 30.374063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.325077, 34.887669, 30.368898>,  <40.119350, 34.544735, 30.360289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325077, 34.887669, 30.368898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019101, -0.036542, 0.999150,
		0.857389, -0.513465, -0.035170,
		0.514314, 0.857332, 0.021523,
		40.479370, 35.144867, 30.375355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656464, 34.416054, 30.905401>,  <40.119350, 34.544735, 30.360289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656464, 34.416054, 30.905401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.598583, 34.808376, 30.853136>,  <40.563854, 35.043770, 30.821777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.598583, 34.808376, 30.853136>,  <40.656464, 34.416054, 30.905401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598583, 34.808376, 30.853136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003892, 0.131487, 0.991310,
		0.989468, 0.143953, -0.015209,
		-0.144702, 0.980810, -0.130662,
		40.555172, 35.102619, 30.813938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.061050, 38.583736, 26.233232> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.707432, 38.714031, 26.099148>,  <42.495262, 38.792206, 26.018696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.707432, 38.714031, 26.099148>,  <43.061050, 38.583736, 26.233232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.707432, 38.714031, 26.099148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140780, -0.498312, -0.855492,
		-0.445702, -0.803482, 0.394672,
		-0.884042, 0.325732, -0.335213,
		42.442219, 38.811752, 25.998583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787960, 38.064835, 25.828541>,  <43.061050, 38.583736, 26.233232>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787960, 38.064835, 25.828541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.572681, 38.374088, 25.694313>,  <42.443516, 38.559639, 25.613777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.572681, 38.374088, 25.694313>,  <42.787960, 38.064835, 25.828541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.572681, 38.374088, 25.694313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031033, -0.416058, -0.908808,
		-0.842247, -0.478705, 0.247915,
		-0.538198, 0.773135, -0.335568,
		42.411221, 38.606030, 25.593643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262794, 37.763199, 25.415062>,  <42.787960, 38.064835, 25.828541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262794, 37.763199, 25.415062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.305115, 38.145493, 25.305244>,  <42.330509, 38.374870, 25.239353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.305115, 38.145493, 25.305244>,  <42.262794, 37.763199, 25.415062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305115, 38.145493, 25.305244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032222, -0.279245, -0.959679,
		-0.993865, 0.092692, -0.060341,
		0.105804, 0.955736, -0.274545,
		42.336857, 38.432213, 25.222881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.828571, 37.915234, 24.800421>,  <42.262794, 37.763199, 25.415062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.828571, 37.915234, 24.800421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.081322, 38.224838, 24.784277>,  <42.232971, 38.410603, 24.774591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.081322, 38.224838, 24.784277>,  <41.828571, 37.915234, 24.800421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081322, 38.224838, 24.784277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097560, -0.131086, -0.986559,
		-0.768902, 0.619449, -0.158343,
		0.631879, 0.774015, -0.040359,
		42.270885, 38.457043, 24.772169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643932, 38.365234, 24.177912>,  <41.828571, 37.915234, 24.800421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643932, 38.365234, 24.177912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.021812, 38.441086, 24.284929>,  <42.248543, 38.486595, 24.349140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.021812, 38.441086, 24.284929>,  <41.643932, 38.365234, 24.177912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.021812, 38.441086, 24.284929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290482, -0.105299, -0.951069,
		-0.152177, 0.976193, -0.154559,
		0.944702, 0.189628, 0.267542,
		42.305222, 38.497974, 24.365192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.973213, 38.960438, 23.630604>,  <41.643932, 38.365234, 24.177912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.973213, 38.960438, 23.630604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.246353, 38.733131, 23.814247>,  <42.410236, 38.596748, 23.924433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.246353, 38.733131, 23.814247>,  <41.973213, 38.960438, 23.630604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246353, 38.733131, 23.814247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452559, -0.164292, -0.876469,
		0.573500, 0.806273, 0.144989,
		0.682853, -0.568271, 0.459108,
		42.451210, 38.562649, 23.951979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601231, 39.141441, 23.284485>,  <41.973213, 38.960438, 23.630604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601231, 39.141441, 23.284485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.677803, 38.794346, 23.467958>,  <42.723747, 38.586090, 23.578043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.677803, 38.794346, 23.467958>,  <42.601231, 39.141441, 23.284485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.677803, 38.794346, 23.467958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676730, -0.221797, -0.702027,
		0.710908, 0.444795, 0.544764,
		0.191431, -0.867735, 0.458683,
		42.735233, 38.534027, 23.605564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364361, 39.098797, 23.110783>,  <42.601231, 39.141441, 23.284485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.364361, 39.098797, 23.110783> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.234615, 38.736271, 23.219133>,  <43.156769, 38.518753, 23.284143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.234615, 38.736271, 23.219133>,  <43.364361, 39.098797, 23.110783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234615, 38.736271, 23.219133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505883, -0.408177, -0.759917,
		0.799292, -0.109460, 0.590890,
		-0.324368, -0.906317, 0.270879,
		43.137306, 38.464375, 23.300398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.974621, 38.782314, 23.315504>,  <43.364361, 39.098797, 23.110783>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.974621, 38.782314, 23.315504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.703720, 38.499294, 23.234804>,  <43.541180, 38.329483, 23.186384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.703720, 38.499294, 23.234804>,  <43.974621, 38.782314, 23.315504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703720, 38.499294, 23.234804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594280, -0.364392, -0.716973,
		0.433782, -0.605464, 0.667268,
		-0.677248, -0.707554, -0.201748,
		43.500546, 38.287029, 23.174280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.384945, 38.233288, 23.114784>,  <43.974621, 38.782314, 23.315504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.384945, 38.233288, 23.114784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.018364, 38.131538, 22.991226>,  <43.798416, 38.070488, 22.917091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.018364, 38.131538, 22.991226>,  <44.384945, 38.233288, 23.114784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.018364, 38.131538, 22.991226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362458, -0.200625, -0.910151,
		0.169550, -0.946067, 0.276064,
		-0.916448, -0.254377, -0.308893,
		43.743431, 38.055225, 22.898558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.434475, 37.554047, 22.794466>,  <44.384945, 38.233288, 23.114784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.434475, 37.554047, 22.794466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.105957, 37.730595, 22.649879>,  <43.908844, 37.836525, 22.563128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.105957, 37.730595, 22.649879>,  <44.434475, 37.554047, 22.794466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.105957, 37.730595, 22.649879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302002, -0.201177, -0.931838,
		-0.484008, -0.874481, 0.031931,
		-0.821299, 0.441373, -0.361466,
		43.859566, 37.863007, 22.541439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.266109, 37.163860, 22.239264>,  <44.434475, 37.554047, 22.794466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.266109, 37.163860, 22.239264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.084766, 37.513405, 22.169031>,  <43.975960, 37.723133, 22.126892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.084766, 37.513405, 22.169031>,  <44.266109, 37.163860, 22.239264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.084766, 37.513405, 22.169031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281436, -0.046567, -0.958449,
		-0.845731, -0.483934, -0.224825,
		-0.453357, 0.873864, -0.175580,
		43.948761, 37.775566, 22.116358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.146317, 37.127323, 21.590992>,  <44.266109, 37.163860, 22.239264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.146317, 37.127323, 21.590992> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.047428, 37.514503, 21.608650>,  <43.988094, 37.746811, 21.619246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.047428, 37.514503, 21.608650>,  <44.146317, 37.127323, 21.590992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.047428, 37.514503, 21.608650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223912, 0.101395, -0.969321,
		-0.942733, -0.229750, -0.241803,
		-0.247219, 0.967954, 0.044144,
		43.973263, 37.804890, 21.621893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.692909, 37.276806, 20.874950>,  <44.146317, 37.127323, 21.590992>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.692909, 37.276806, 20.874950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.368729, 37.055672, 20.797441>,  <43.174221, 36.922993, 20.750937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.368729, 37.055672, 20.797441>,  <43.692909, 37.276806, 20.874950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.368729, 37.055672, 20.797441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021815, -0.302068, 0.953037,
		-0.585401, 0.776616, 0.232751,
		-0.810450, -0.552832, -0.193773,
		43.125595, 36.889824, 20.739309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.293999, 37.271713, 21.433903>,  <43.692909, 37.276806, 20.874950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.293999, 37.271713, 21.433903> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.162228, 36.944366, 21.245543>,  <43.083164, 36.747959, 21.132526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.162228, 36.944366, 21.245543>,  <43.293999, 37.271713, 21.433903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.162228, 36.944366, 21.245543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140034, -0.450877, 0.881533,
		-0.933738, 0.356345, 0.033933,
		-0.329429, -0.818369, -0.470902,
		43.063400, 36.698856, 21.104273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954166, 36.966770, 21.968828>,  <43.293999, 37.271713, 21.433903>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954166, 36.966770, 21.968828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.919224, 36.683613, 21.688471>,  <42.898258, 36.513718, 21.520256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.919224, 36.683613, 21.688471>,  <42.954166, 36.966770, 21.968828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.919224, 36.683613, 21.688471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131427, -0.689245, 0.712508,
		-0.987470, 0.154356, -0.032828,
		-0.087353, -0.707895, -0.700895,
		42.893017, 36.471245, 21.478203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340576, 36.572105, 22.195152>,  <42.954166, 36.966770, 21.968828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340576, 36.572105, 22.195152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.551678, 36.336281, 21.950565>,  <42.678337, 36.194786, 21.803812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.551678, 36.336281, 21.950565>,  <42.340576, 36.572105, 22.195152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551678, 36.336281, 21.950565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037652, -0.702939, 0.710253,
		-0.848564, -0.397860, -0.348779,
		0.527751, -0.589563, -0.611469,
		42.710003, 36.159412, 21.767124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.990719, 35.899181, 21.940771>,  <42.340576, 36.572105, 22.195152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.990719, 35.899181, 21.940771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.389263, 35.895931, 21.974716>,  <42.628391, 35.893982, 21.995083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.389263, 35.895931, 21.974716>,  <41.990719, 35.899181, 21.940771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.389263, 35.895931, 21.974716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073060, -0.594387, 0.800854,
		0.043932, -0.804138, -0.592817,
		0.996360, -0.008128, 0.084863,
		42.688171, 35.893494, 22.000175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023270, 35.244785, 22.274014>,  <41.990719, 35.899181, 21.940771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023270, 35.244785, 22.274014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.403713, 35.367195, 22.290726>,  <42.631977, 35.440639, 22.300753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.403713, 35.367195, 22.290726>,  <42.023270, 35.244785, 22.274014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403713, 35.367195, 22.290726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170378, -0.632664, 0.755452,
		0.257620, -0.711397, -0.653871,
		0.951106, 0.306024, 0.041781,
		42.689045, 35.459003, 22.303259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324482, 34.621086, 22.259436>,  <42.023270, 35.244785, 22.274014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324482, 34.621086, 22.259436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.548409, 34.908157, 22.425108>,  <42.682766, 35.080399, 22.524511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.548409, 34.908157, 22.425108>,  <42.324482, 34.621086, 22.259436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548409, 34.908157, 22.425108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266836, -0.629357, 0.729869,
		0.784477, -0.298074, -0.543826,
		0.559816, 0.717678, 0.414180,
		42.716354, 35.123459, 22.549362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733784, 34.193550, 22.786976>,  <42.324482, 34.621086, 22.259436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733784, 34.193550, 22.786976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.804798, 34.569405, 22.903984>,  <42.847404, 34.794918, 22.974188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.804798, 34.569405, 22.903984>,  <42.733784, 34.193550, 22.786976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.804798, 34.569405, 22.903984> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067745, -0.284867, 0.956170,
		0.981780, -0.189569, 0.013082,
		0.177533, 0.939635, 0.292519,
		42.858059, 34.851295, 22.991739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262028, 34.157848, 23.313154>,  <42.733784, 34.193550, 22.786976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262028, 34.157848, 23.313154> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.040569, 34.488045, 23.357058>,  <42.907696, 34.686161, 23.383400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.040569, 34.488045, 23.357058>,  <43.262028, 34.157848, 23.313154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.040569, 34.488045, 23.357058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183956, -0.249782, 0.950668,
		0.812180, 0.506143, 0.290144,
		-0.553647, 0.825487, 0.109760,
		42.874474, 34.735691, 23.389986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321465, 34.331039, 23.991543>,  <43.262028, 34.157848, 23.313154>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321465, 34.331039, 23.991543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.013256, 34.564800, 23.889748>,  <42.828331, 34.705055, 23.828671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.013256, 34.564800, 23.889748>,  <43.321465, 34.331039, 23.991543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.013256, 34.564800, 23.889748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357512, -0.065694, 0.931595,
		0.527708, 0.808801, 0.259550,
		-0.770525, 0.584402, -0.254489,
		42.782097, 34.740120, 23.813400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337727, 34.981651, 24.507030>,  <43.321465, 34.331039, 23.991543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.337727, 34.981651, 24.507030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.979156, 34.905819, 24.346788>,  <42.764015, 34.860321, 24.250643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.979156, 34.905819, 24.346788>,  <43.337727, 34.981651, 24.507030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979156, 34.905819, 24.346788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414094, 0.036101, 0.909518,
		-0.157965, 0.981201, -0.110866,
		-0.896422, -0.189581, -0.400607,
		42.710228, 34.848946, 24.226606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957649, 35.527195, 24.707308>,  <43.337727, 34.981651, 24.507030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.957649, 35.527195, 24.707308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.692425, 35.242519, 24.614485>,  <42.533291, 35.071716, 24.558790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.692425, 35.242519, 24.614485>,  <42.957649, 35.527195, 24.707308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.692425, 35.242519, 24.614485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502539, 0.193450, 0.842633,
		-0.554797, 0.675339, -0.485919,
		-0.663064, -0.711684, -0.232058,
		42.493507, 35.029015, 24.544867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319096, 35.748539, 24.893681>,  <42.957649, 35.527195, 24.707308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319096, 35.748539, 24.893681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.195400, 35.370468, 24.851711>,  <42.121181, 35.143627, 24.826530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.195400, 35.370468, 24.851711>,  <42.319096, 35.748539, 24.893681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.195400, 35.370468, 24.851711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640848, 0.125603, 0.757322,
		-0.702626, 0.301435, -0.644557,
		-0.309242, -0.945178, -0.104922,
		42.102627, 35.086914, 24.820234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616844, 35.833347, 25.005047>,  <42.319096, 35.748539, 24.893681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616844, 35.833347, 25.005047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.745533, 35.460632, 25.072298>,  <41.822746, 35.237003, 25.112648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.745533, 35.460632, 25.072298>,  <41.616844, 35.833347, 25.005047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745533, 35.460632, 25.072298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480109, -0.007496, 0.877177,
		-0.816082, -0.362927, -0.449771,
		0.321723, -0.931787, 0.168127,
		41.842049, 35.181095, 25.122736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985462, 35.488365, 25.068087>,  <41.616844, 35.833347, 25.005047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985462, 35.488365, 25.068087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.251465, 35.247410, 25.244677>,  <41.411064, 35.102837, 25.350632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.251465, 35.247410, 25.244677>,  <40.985462, 35.488365, 25.068087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251465, 35.247410, 25.244677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533105, 0.031111, 0.845477,
		-0.523038, -0.797599, -0.300445,
		0.665004, -0.602385, 0.441476,
		41.450966, 35.066696, 25.377119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.305599, 35.188084, 24.786106>,  <40.985462, 35.488365, 25.068087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.305599, 35.188084, 24.786106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.926632, 35.302078, 24.844324>,  <39.699253, 35.370476, 24.879255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.926632, 35.302078, 24.844324>,  <40.305599, 35.188084, 24.786106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926632, 35.302078, 24.844324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001627, 0.459116, -0.888375,
		-0.319997, -0.841425, -0.435438,
		-0.947417, 0.284985, 0.145547,
		39.642406, 35.387573, 24.887989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922981, 35.088284, 24.127464>,  <40.305599, 35.188084, 24.786106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922981, 35.088284, 24.127464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.724087, 35.365612, 24.336102>,  <39.604752, 35.532009, 24.461285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.724087, 35.365612, 24.336102>,  <39.922981, 35.088284, 24.127464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724087, 35.365612, 24.336102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155721, 0.520100, -0.839790,
		-0.853526, -0.498797, -0.150648,
		-0.497236, 0.693323, 0.521592,
		39.574917, 35.573608, 24.492579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267498, 35.082424, 23.878073>,  <39.922981, 35.088284, 24.127464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267498, 35.082424, 23.878073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.361668, 35.437134, 24.037172>,  <39.418171, 35.649960, 24.132631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.361668, 35.437134, 24.037172>,  <39.267498, 35.082424, 23.878073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361668, 35.437134, 24.037172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083099, 0.426118, -0.900843,
		-0.968334, 0.179028, 0.174009,
		0.235424, 0.886777, 0.397747,
		39.432297, 35.703167, 24.156496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942047, 35.489506, 23.328779>,  <39.267498, 35.082424, 23.878073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942047, 35.489506, 23.328779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.182625, 35.739468, 23.527880>,  <39.326973, 35.889446, 23.647341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.182625, 35.739468, 23.527880>,  <38.942047, 35.489506, 23.328779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182625, 35.739468, 23.527880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063965, 0.583368, -0.809685,
		-0.796349, 0.518820, 0.310892,
		0.601445, 0.624906, 0.497751,
		39.363060, 35.926941, 23.677204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668877, 36.105549, 23.176361>,  <38.942047, 35.489506, 23.328779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668877, 36.105549, 23.176361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.039074, 36.179825, 23.308413>,  <39.261192, 36.224388, 23.387644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.039074, 36.179825, 23.308413>,  <38.668877, 36.105549, 23.176361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039074, 36.179825, 23.308413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117205, 0.688416, -0.715784,
		-0.360179, 0.701145, 0.615359,
		0.925491, 0.185687, 0.330130,
		39.316723, 36.235531, 23.407452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736473, 36.812740, 23.007538>,  <38.668877, 36.105549, 23.176361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736473, 36.812740, 23.007538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.110020, 36.679546, 23.059706>,  <39.334148, 36.599628, 23.091007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.110020, 36.679546, 23.059706>,  <38.736473, 36.812740, 23.007538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110020, 36.679546, 23.059706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269636, 0.416063, -0.868440,
		0.234916, 0.846175, 0.478333,
		0.933869, -0.332986, 0.130419,
		39.390179, 36.579651, 23.098831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195610, 37.327679, 22.715063>,  <38.736473, 36.812740, 23.007538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195610, 37.327679, 22.715063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.444332, 37.014980, 22.733982>,  <39.593563, 36.827362, 22.745333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.444332, 37.014980, 22.733982>,  <39.195610, 37.327679, 22.715063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.444332, 37.014980, 22.733982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342284, 0.216941, -0.914209,
		0.704418, 0.584646, 0.402473,
		0.621802, -0.781745, 0.047298,
		39.630871, 36.780457, 22.748171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455147, 38.127281, 22.920284>,  <39.195610, 37.327679, 22.715063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455147, 38.127281, 22.920284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.244530, 38.463821, 22.871498>,  <39.118160, 38.665745, 22.842226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.244530, 38.463821, 22.871498>,  <39.455147, 38.127281, 22.920284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244530, 38.463821, 22.871498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548019, -0.226230, 0.805292,
		0.649941, 0.490865, 0.580197,
		-0.526547, 0.841351, -0.121967,
		39.086567, 38.716228, 22.834908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369823, 38.477039, 23.575014>,  <39.455147, 38.127281, 22.920284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369823, 38.477039, 23.575014> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.069710, 38.544785, 23.319395>,  <38.889641, 38.585434, 23.166023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.069710, 38.544785, 23.319395>,  <39.369823, 38.477039, 23.575014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069710, 38.544785, 23.319395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654261, -0.329027, 0.680944,
		-0.094935, 0.929008, 0.357676,
		-0.750287, 0.169368, -0.639049,
		38.844624, 38.595596, 23.127680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920719, 38.822392, 23.991173>,  <39.369823, 38.477039, 23.575014>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920719, 38.822392, 23.991173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.693928, 38.694469, 23.687525>,  <38.557854, 38.617718, 23.505337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.693928, 38.694469, 23.687525>,  <38.920719, 38.822392, 23.991173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693928, 38.694469, 23.687525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735455, -0.218525, 0.641368,
		-0.370997, 0.921940, -0.111301,
		-0.566980, -0.319803, -0.759118,
		38.523834, 38.598530, 23.459789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289967, 39.269058, 24.071699>,  <38.920719, 38.822392, 23.991173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289967, 39.269058, 24.071699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.241852, 38.926353, 23.871107>,  <38.212982, 38.720730, 23.750751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.241852, 38.926353, 23.871107>,  <38.289967, 39.269058, 24.071699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.241852, 38.926353, 23.871107> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758584, -0.246525, 0.603138,
		-0.640376, 0.452964, -0.620276,
		-0.120286, -0.856766, -0.501480,
		38.205765, 38.669323, 23.720663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550598, 39.191414, 23.896503>,  <38.289967, 39.269058, 24.071699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550598, 39.191414, 23.896503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.719574, 38.828968, 23.887556>,  <37.820957, 38.611500, 23.882187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.719574, 38.828968, 23.887556>,  <37.550598, 39.191414, 23.896503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719574, 38.828968, 23.887556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727105, -0.353509, 0.588514,
		-0.541171, -0.232343, -0.808177,
		0.422435, -0.906117, -0.022371,
		37.846306, 38.557133, 23.880844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971157, 38.718746, 23.859938>,  <37.550598, 39.191414, 23.896503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971157, 38.718746, 23.859938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.270981, 38.470928, 23.953173>,  <37.450874, 38.322239, 24.009113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.270981, 38.470928, 23.953173>,  <36.971157, 38.718746, 23.859938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270981, 38.470928, 23.953173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649148, -0.619109, 0.441940,
		-0.129494, -0.482568, -0.866233,
		0.749558, -0.619542, 0.233087,
		37.495850, 38.285065, 24.023098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.650223, 38.178051, 23.912336>,  <36.971157, 38.718746, 23.859938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.650223, 38.178051, 23.912336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.007263, 38.068562, 24.055637>,  <37.221485, 38.002869, 24.141619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.007263, 38.068562, 24.055637>,  <36.650223, 38.178051, 23.912336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007263, 38.068562, 24.055637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442275, -0.685893, 0.577878,
		0.087543, -0.674259, -0.733288,
		0.892597, -0.273726, 0.358253,
		37.275043, 37.986443, 24.163113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.339066, 40.950436, 21.265409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.318428, 40.596516, 21.450653>,  <42.306046, 40.384163, 21.561800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.318428, 40.596516, 21.450653>,  <42.339066, 40.950436, 21.265409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318428, 40.596516, 21.450653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355559, 0.449615, 0.819405,
		-0.933229, -0.122390, -0.337793,
		-0.051590, -0.884797, 0.463111,
		42.302952, 40.331078, 21.589586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602921, 40.783867, 21.574671>,  <42.339066, 40.950436, 21.265409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602921, 40.783867, 21.574671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.908447, 40.621967, 21.775768>,  <42.091763, 40.524826, 21.896427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.908447, 40.621967, 21.775768>,  <41.602921, 40.783867, 21.574671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908447, 40.621967, 21.775768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296618, 0.471672, 0.830387,
		-0.573232, -0.783391, 0.240216,
		0.763821, -0.404752, 0.502746,
		42.137592, 40.500542, 21.926592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339176, 40.556301, 22.136255>,  <41.602921, 40.783867, 21.574671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339176, 40.556301, 22.136255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.726215, 40.582157, 22.233881>,  <41.958439, 40.597672, 22.292456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.726215, 40.582157, 22.233881>,  <41.339176, 40.556301, 22.136255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726215, 40.582157, 22.233881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247504, 0.433814, 0.866341,
		-0.049877, -0.898680, 0.435758,
		0.967602, 0.064641, 0.244064,
		42.016495, 40.601551, 22.307100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504395, 40.141064, 22.743319>,  <41.339176, 40.556301, 22.136255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504395, 40.141064, 22.743319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.784752, 40.426365, 22.745205>,  <41.952969, 40.597546, 22.746338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.784752, 40.426365, 22.745205>,  <41.504395, 40.141064, 22.743319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784752, 40.426365, 22.745205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248971, 0.238450, 0.938699,
		0.668401, -0.659104, 0.344706,
		0.700895, 0.713249, 0.004717,
		41.995022, 40.640339, 22.746620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997604, 39.915859, 23.275896>,  <41.504395, 40.141064, 22.743319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997604, 39.915859, 23.275896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.069351, 40.308140, 23.244799>,  <42.112400, 40.543510, 23.226139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.069351, 40.308140, 23.244799>,  <41.997604, 39.915859, 23.275896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.069351, 40.308140, 23.244799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173425, 0.109309, 0.978762,
		0.968376, -0.162073, 0.189685,
		0.179365, 0.980706, -0.077744,
		42.123161, 40.602352, 23.221476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426899, 40.087250, 23.825233>,  <41.997604, 39.915859, 23.275896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426899, 40.087250, 23.825233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.294636, 40.450771, 23.723454>,  <42.215279, 40.668884, 23.662386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.294636, 40.450771, 23.723454>,  <42.426899, 40.087250, 23.825233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.294636, 40.450771, 23.723454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255050, 0.173531, 0.951229,
		0.908633, 0.379429, 0.174410,
		-0.330658, 0.908801, -0.254450,
		42.195438, 40.723412, 23.647120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652603, 40.547112, 24.368538>,  <42.426899, 40.087250, 23.825233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652603, 40.547112, 24.368538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.361259, 40.758850, 24.194510>,  <42.186455, 40.885895, 24.090092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.361259, 40.758850, 24.194510>,  <42.652603, 40.547112, 24.368538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.361259, 40.758850, 24.194510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352767, 0.254647, 0.900395,
		0.587411, 0.809288, 0.001262,
		-0.728358, 0.529347, -0.435072,
		42.142754, 40.917656, 24.063988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.701767, 41.120792, 24.786180>,  <42.652603, 40.547112, 24.368538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.701767, 41.120792, 24.786180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.352688, 41.122349, 24.590883>,  <42.143242, 41.123283, 24.473705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.352688, 41.122349, 24.590883>,  <42.701767, 41.120792, 24.786180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352688, 41.122349, 24.590883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467053, 0.284855, 0.837089,
		0.142334, 0.958562, -0.246777,
		-0.872698, 0.003889, -0.488244,
		42.090878, 41.123516, 24.444410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370949, 41.735001, 24.935871>,  <42.701767, 41.120792, 24.786180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370949, 41.735001, 24.935871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.071697, 41.500347, 24.811827>,  <41.892147, 41.359554, 24.737400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.071697, 41.500347, 24.811827>,  <42.370949, 41.735001, 24.935871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071697, 41.500347, 24.811827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589454, 0.372926, 0.716568,
		-0.304715, 0.718879, -0.624789,
		-0.748126, -0.586633, -0.310110,
		41.847260, 41.324356, 24.718794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667694, 42.150772, 24.743017>,  <42.370949, 41.735001, 24.935871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667694, 42.150772, 24.743017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.606434, 41.776409, 24.869902>,  <41.569679, 41.551792, 24.946033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.606434, 41.776409, 24.869902>,  <41.667694, 42.150772, 24.743017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606434, 41.776409, 24.869902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479902, 0.351045, 0.804028,
		-0.863851, -0.029095, -0.502906,
		-0.153149, -0.935907, 0.317213,
		41.560490, 41.495636, 24.965065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051193, 42.207050, 24.970995>,  <41.667694, 42.150772, 24.743017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051193, 42.207050, 24.970995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.164932, 41.858387, 25.130674>,  <41.233177, 41.649189, 25.226482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.164932, 41.858387, 25.130674>,  <41.051193, 42.207050, 24.970995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164932, 41.858387, 25.130674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577230, 0.176800, 0.797212,
		-0.765474, -0.457115, -0.452875,
		0.284349, -0.871658, 0.399196,
		41.250237, 41.596889, 25.250433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403950, 41.765644, 25.127954>,  <41.051193, 42.207050, 24.970995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403950, 41.765644, 25.127954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.682777, 41.628914, 25.380064>,  <40.850075, 41.546875, 25.531330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.682777, 41.628914, 25.380064>,  <40.403950, 41.765644, 25.127954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682777, 41.628914, 25.380064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592310, 0.220839, 0.774854,
		-0.404053, -0.913447, -0.048525,
		0.697072, -0.341825, 0.630274,
		40.891899, 41.526367, 25.569147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789227, 41.416954, 24.821505>,  <40.403950, 41.765644, 25.127954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789227, 41.416954, 24.821505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.468605, 41.588020, 24.654360>,  <39.276234, 41.690662, 24.554073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.468605, 41.588020, 24.654360>,  <39.789227, 41.416954, 24.821505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468605, 41.588020, 24.654360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437289, -0.057324, -0.897492,
		-0.407784, -0.902116, -0.141067,
		-0.801555, 0.427670, -0.417861,
		39.228138, 41.716320, 24.529001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610123, 41.088940, 24.191696>,  <39.789227, 41.416954, 24.821505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610123, 41.088940, 24.191696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.440842, 41.444950, 24.123873>,  <39.339275, 41.658558, 24.083179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.440842, 41.444950, 24.123873>,  <39.610123, 41.088940, 24.191696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.440842, 41.444950, 24.123873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397048, 0.013963, -0.917692,
		-0.814405, -0.455689, -0.359294,
		-0.423199, 0.890029, -0.169559,
		39.313881, 41.711960, 24.073006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340004, 41.072929, 23.405640>,  <39.610123, 41.088940, 24.191696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340004, 41.072929, 23.405640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.375324, 41.457031, 23.511555>,  <39.396519, 41.687492, 23.575104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.375324, 41.457031, 23.511555>,  <39.340004, 41.072929, 23.405640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375324, 41.457031, 23.511555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441353, 0.200591, -0.874626,
		-0.892978, 0.194098, -0.406099,
		0.088303, 0.960255, 0.264789,
		39.401814, 41.745110, 23.590992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960220, 41.388535, 22.875786>,  <39.340004, 41.072929, 23.405640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960220, 41.388535, 22.875786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.204235, 41.662594, 23.034998>,  <39.350643, 41.827030, 23.130526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.204235, 41.662594, 23.034998>,  <38.960220, 41.388535, 22.875786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204235, 41.662594, 23.034998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313625, 0.252524, -0.915353,
		-0.727661, 0.683234, -0.060828,
		0.610040, 0.685144, 0.398031,
		39.387245, 41.868137, 23.154408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.019360, 41.827881, 22.241693>,  <38.960220, 41.388535, 22.875786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.019360, 41.827881, 22.241693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.297298, 41.982178, 22.484476>,  <39.464062, 42.074757, 22.630146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.297298, 41.982178, 22.484476>,  <39.019360, 41.827881, 22.241693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297298, 41.982178, 22.484476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477510, 0.383617, -0.790457,
		-0.537753, 0.839071, 0.082357,
		0.694843, 0.385744, 0.606955,
		39.505753, 42.097900, 22.666563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048046, 42.609009, 22.153641>,  <39.019360, 41.827881, 22.241693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048046, 42.609009, 22.153641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.409233, 42.497292, 22.284264>,  <39.625946, 42.430260, 22.362637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.409233, 42.497292, 22.284264>,  <39.048046, 42.609009, 22.153641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409233, 42.497292, 22.284264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407469, 0.315249, -0.857081,
		0.136433, 0.906980, 0.398465,
		0.902970, -0.279296, 0.326555,
		39.680122, 42.413502, 22.382231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535629, 43.136539, 22.087950>,  <39.048046, 42.609009, 22.153641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535629, 43.136539, 22.087950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.755745, 42.802624, 22.094910>,  <39.887814, 42.602272, 22.099087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.755745, 42.802624, 22.094910>,  <39.535629, 43.136539, 22.087950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755745, 42.802624, 22.094910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553441, 0.349061, -0.756214,
		0.625208, 0.425767, 0.654093,
		0.550289, -0.834793, 0.017401,
		39.920830, 42.552185, 22.100130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307743, 43.320171, 22.004509>,  <39.535629, 43.136539, 22.087950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307743, 43.320171, 22.004509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.308990, 42.936062, 21.892899>,  <40.309738, 42.705597, 21.825932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.308990, 42.936062, 21.892899>,  <40.307743, 43.320171, 22.004509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308990, 42.936062, 21.892899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624998, 0.219689, -0.749076,
		0.780620, -0.172056, 0.600857,
		0.003119, -0.960278, -0.279028,
		40.309925, 42.647980, 21.809191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065578, 43.104237, 21.818630>,  <40.307743, 43.320171, 22.004509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.065578, 43.104237, 21.818630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.842739, 42.815659, 21.654112>,  <40.709034, 42.642513, 21.555401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.842739, 42.815659, 21.654112>,  <41.065578, 43.104237, 21.818630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842739, 42.815659, 21.654112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618707, -0.030211, -0.785040,
		0.553934, -0.691817, 0.463191,
		-0.557098, -0.721441, -0.411297,
		40.675610, 42.599228, 21.530724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513866, 42.527424, 21.744642>,  <41.065578, 43.104237, 21.818630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513866, 42.527424, 21.744642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.231689, 42.465454, 21.467989>,  <41.062386, 42.428272, 21.301998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.231689, 42.465454, 21.467989>,  <41.513866, 42.527424, 21.744642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231689, 42.465454, 21.467989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699186, -0.312047, -0.643246,
		-0.116168, -0.937351, 0.328450,
		-0.705439, -0.154923, -0.691633,
		41.020058, 42.418976, 21.260500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643936, 41.910278, 21.473206>,  <41.513866, 42.527424, 21.744642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643936, 41.910278, 21.473206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.412617, 42.072456, 21.190029>,  <41.273827, 42.169765, 21.020123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.412617, 42.072456, 21.190029>,  <41.643936, 41.910278, 21.473206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412617, 42.072456, 21.190029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670635, -0.257884, -0.695518,
		-0.464564, -0.876988, -0.122774,
		-0.578299, 0.405449, -0.707942,
		41.239128, 42.194092, 20.977646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735954, 41.472950, 21.004034>,  <41.643936, 41.910278, 21.473206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735954, 41.472950, 21.004034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.575516, 41.771313, 20.791336>,  <41.479252, 41.950329, 20.663717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.575516, 41.771313, 20.791336>,  <41.735954, 41.472950, 21.004034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.575516, 41.771313, 20.791336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548499, -0.269357, -0.791578,
		-0.733669, -0.609160, -0.301088,
		-0.401098, 0.745902, -0.531743,
		41.455185, 41.995083, 20.631813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530670, 41.143780, 20.344250>,  <41.735954, 41.472950, 21.004034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530670, 41.143780, 20.344250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.544205, 41.538494, 20.280863>,  <41.552326, 41.775322, 20.242830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.544205, 41.538494, 20.280863>,  <41.530670, 41.143780, 20.344250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544205, 41.538494, 20.280863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483702, -0.154921, -0.861413,
		-0.874578, -0.047502, -0.482552,
		0.033838, 0.986784, -0.158467,
		41.554356, 41.834530, 20.233322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880116, 40.909679, 20.537830>,  <41.530670, 41.143780, 20.344250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880116, 40.909679, 20.537830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.645096, 40.615757, 20.402273>,  <40.504082, 40.439404, 20.320940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.645096, 40.615757, 20.402273>,  <40.880116, 40.909679, 20.537830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645096, 40.615757, 20.402273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422111, -0.078987, 0.903097,
		-0.690365, 0.673667, -0.263759,
		-0.587553, -0.734802, -0.338892,
		40.468830, 40.395317, 20.300606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239365, 41.091721, 20.715725>,  <40.880116, 40.909679, 20.537830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239365, 41.091721, 20.715725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.179920, 40.699566, 20.663940>,  <40.144253, 40.464275, 20.632870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.179920, 40.699566, 20.663940>,  <40.239365, 41.091721, 20.715725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179920, 40.699566, 20.663940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462084, -0.046896, 0.885595,
		-0.874295, 0.191432, -0.446051,
		-0.148613, -0.980385, -0.129459,
		40.135338, 40.405449, 20.625103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699703, 40.892239, 21.173710>,  <40.239365, 41.091721, 20.715725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699703, 40.892239, 21.173710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.851204, 40.533993, 21.080397>,  <39.942104, 40.319046, 21.024408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.851204, 40.533993, 21.080397>,  <39.699703, 40.892239, 21.173710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851204, 40.533993, 21.080397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524763, -0.415447, 0.742986,
		-0.762346, -0.158988, -0.627337,
		0.378751, -0.895615, -0.233284,
		39.964828, 40.265308, 21.010412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077213, 40.482239, 21.248129>,  <39.699703, 40.892239, 21.173710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077213, 40.482239, 21.248129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.389542, 40.232487, 21.256832>,  <39.576939, 40.082634, 21.262054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.389542, 40.232487, 21.256832>,  <39.077213, 40.482239, 21.248129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389542, 40.232487, 21.256832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436029, -0.519671, 0.734725,
		-0.447439, -0.583175, -0.678016,
		0.780818, -0.624379, 0.021760,
		39.623787, 40.045174, 21.263359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763603, 39.832638, 21.113308>,  <39.077213, 40.482239, 21.248129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763603, 39.832638, 21.113308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.105301, 39.784290, 21.315556>,  <39.310322, 39.755280, 21.436905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.105301, 39.784290, 21.315556>,  <38.763603, 39.832638, 21.113308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105301, 39.784290, 21.315556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496417, -0.478472, 0.724317,
		0.154375, -0.869744, -0.468737,
		0.854247, -0.120873, 0.505620,
		39.361576, 39.748028, 21.467241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893982, 39.128696, 21.207718>,  <38.763603, 39.832638, 21.113308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893982, 39.128696, 21.207718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.115841, 39.289536, 21.499111>,  <39.248955, 39.386040, 21.673946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.115841, 39.289536, 21.499111>,  <38.893982, 39.128696, 21.207718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115841, 39.289536, 21.499111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370696, -0.664401, 0.648966,
		0.744951, -0.629992, -0.219451,
		0.554647, 0.402097, 0.728481,
		39.282234, 39.410164, 21.717655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157001, 38.608543, 21.511536>,  <38.893982, 39.128696, 21.207718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157001, 38.608543, 21.511536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.208065, 38.894043, 21.787001>,  <39.238705, 39.065342, 21.952280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.208065, 38.894043, 21.787001>,  <39.157001, 38.608543, 21.511536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208065, 38.894043, 21.787001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297071, -0.634951, 0.713152,
		0.946283, -0.295625, 0.130976,
		0.127662, 0.713753, 0.688665,
		39.246365, 39.108170, 21.993601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505459, 38.271591, 22.023714>,  <39.157001, 38.608543, 21.511536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505459, 38.271591, 22.023714> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.335453, 38.585804, 22.203625>,  <39.233448, 38.774330, 22.311571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.335453, 38.585804, 22.203625>,  <39.505459, 38.271591, 22.023714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335453, 38.585804, 22.203625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405437, -0.609463, 0.681304,
		0.809309, 0.107210, 0.577516,
		-0.425018, 0.785532, 0.449777,
		39.207947, 38.821465, 22.338558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843994, 37.628376, 22.438231>,  <39.505459, 38.271591, 22.023714>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843994, 37.628376, 22.438231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.857056, 37.229847, 22.406527>,  <39.864891, 36.990730, 22.387505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.857056, 37.229847, 22.406527>,  <39.843994, 37.628376, 22.438231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857056, 37.229847, 22.406527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105223, 0.082287, -0.991038,
		0.993912, 0.024020, 0.107522,
		0.032652, -0.996319, -0.079259,
		39.866852, 36.930950, 22.382750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450722, 37.454868, 21.932632>,  <39.843994, 37.628376, 22.438231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450722, 37.454868, 21.932632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.240410, 37.114624, 21.934582>,  <40.114223, 36.910477, 21.935751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.240410, 37.114624, 21.934582>,  <40.450722, 37.454868, 21.932632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240410, 37.114624, 21.934582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150514, -0.098672, -0.983671,
		0.837200, -0.516458, 0.179908,
		-0.525777, -0.850609, 0.004874,
		40.082676, 36.859440, 21.936045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860321, 37.011681, 21.606745>,  <40.450722, 37.454868, 21.932632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860321, 37.011681, 21.606745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.507847, 36.844486, 21.518375>,  <40.296364, 36.744171, 21.465353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.507847, 36.844486, 21.518375>,  <40.860321, 37.011681, 21.606745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507847, 36.844486, 21.518375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270586, -0.062690, -0.960652,
		0.387686, -0.906290, 0.168341,
		-0.881182, -0.417982, -0.220926,
		40.243492, 36.719093, 21.452097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060307, 36.600761, 21.219934>,  <40.860321, 37.011681, 21.606745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060307, 36.600761, 21.219934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.672768, 36.633602, 21.126476>,  <40.440243, 36.653309, 21.070402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.672768, 36.633602, 21.126476>,  <41.060307, 36.600761, 21.219934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672768, 36.633602, 21.126476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231743, -0.032092, -0.972247,
		-0.087327, -0.996107, 0.012064,
		-0.968849, 0.082108, -0.233644,
		40.382114, 36.658234, 21.056383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.028698, 36.046764, 20.794796>,  <41.060307, 36.600761, 21.219934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.028698, 36.046764, 20.794796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.712204, 36.273670, 20.703440>,  <40.522308, 36.409813, 20.648626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.712204, 36.273670, 20.703440>,  <41.028698, 36.046764, 20.794796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712204, 36.273670, 20.703440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224030, -0.078623, -0.971406,
		-0.568998, -0.819776, -0.064874,
		-0.791234, 0.567262, -0.228391,
		40.474834, 36.443848, 20.634922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815948, 35.903614, 20.119204>,  <41.028698, 36.046764, 20.794796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815948, 35.903614, 20.119204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.618019, 36.249989, 20.148340>,  <40.499264, 36.457813, 20.165821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.618019, 36.249989, 20.148340>,  <40.815948, 35.903614, 20.119204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618019, 36.249989, 20.148340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165443, 0.176163, -0.970358,
		-0.853101, -0.468102, -0.230432,
		-0.494820, 0.865938, 0.072840,
		40.469574, 36.509769, 20.170193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326405, 35.916615, 19.607521>,  <40.815948, 35.903614, 20.119204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326405, 35.916615, 19.607521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.424618, 36.291302, 19.707346>,  <40.483543, 36.516113, 19.767241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.424618, 36.291302, 19.707346>,  <40.326405, 35.916615, 19.607521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424618, 36.291302, 19.707346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184092, 0.207701, -0.960713,
		-0.951749, 0.281825, -0.121446,
		0.245529, 0.936715, 0.249561,
		40.498276, 36.572315, 19.782215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960022, 36.278332, 19.137781>,  <40.326405, 35.916615, 19.607521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960022, 36.278332, 19.137781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.247993, 36.519505, 19.275286>,  <40.420776, 36.664207, 19.357788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.247993, 36.519505, 19.275286>,  <39.960022, 36.278332, 19.137781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247993, 36.519505, 19.275286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249073, 0.237860, -0.938821,
		-0.647811, 0.761509, 0.021069,
		0.719933, 0.602931, 0.343760,
		40.463974, 36.700382, 19.378414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952442, 36.852745, 18.626575>,  <39.960022, 36.278332, 19.137781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952442, 36.852745, 18.626575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.303661, 36.881470, 18.815840>,  <40.514393, 36.898705, 18.929399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.303661, 36.881470, 18.815840>,  <39.952442, 36.852745, 18.626575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303661, 36.881470, 18.815840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466625, 0.091142, -0.879747,
		-0.106300, 0.993245, 0.046518,
		0.878044, 0.071811, 0.473162,
		40.567074, 36.903011, 18.957788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.864353, 36.215897, 33.960114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.230743, 36.266708, 34.112350>,  <36.450577, 36.297195, 34.203693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.230743, 36.266708, 34.112350>,  <35.864353, 36.215897, 33.960114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230743, 36.266708, 34.112350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388569, -0.044445, -0.920347,
		-0.099994, 0.990903, -0.090070,
		0.915978, 0.127028, 0.380590,
		36.505535, 36.304817, 34.226528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210201, 36.754353, 33.613960>,  <35.864353, 36.215897, 33.960114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210201, 36.754353, 33.613960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.493179, 36.506824, 33.750538>,  <36.662964, 36.358307, 33.832485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.493179, 36.506824, 33.750538>,  <36.210201, 36.754353, 33.613960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493179, 36.506824, 33.750538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347577, -0.116041, -0.930444,
		0.615400, 0.776914, 0.132995,
		0.707442, -0.618821, 0.341448,
		36.705410, 36.321178, 33.852974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819138, 36.979725, 33.352139>,  <36.210201, 36.754353, 33.613960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819138, 36.979725, 33.352139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.906254, 36.605358, 33.462868>,  <36.958523, 36.380737, 33.529305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.906254, 36.605358, 33.462868>,  <36.819138, 36.979725, 33.352139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906254, 36.605358, 33.462868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431333, -0.162136, -0.887504,
		0.875511, 0.312693, 0.368379,
		0.217789, -0.935914, 0.276826,
		36.971592, 36.324585, 33.545918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404190, 36.728989, 32.909142>,  <36.819138, 36.979725, 33.352139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404190, 36.728989, 32.909142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.277161, 36.376698, 33.049698>,  <37.200943, 36.165325, 33.134029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.277161, 36.376698, 33.049698>,  <37.404190, 36.728989, 32.909142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277161, 36.376698, 33.049698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516587, -0.471444, -0.714758,
		0.795163, -0.045468, 0.604689,
		-0.317575, -0.880723, 0.351386,
		37.181889, 36.112480, 33.155113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906826, 36.229160, 32.963291>,  <37.404190, 36.728989, 32.909142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906826, 36.229160, 32.963291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.579453, 36.001938, 32.928680>,  <37.383030, 35.865604, 32.907913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.579453, 36.001938, 32.928680>,  <37.906826, 36.229160, 32.963291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579453, 36.001938, 32.928680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383731, -0.428244, -0.818142,
		0.427694, -0.702796, 0.568468,
		-0.818430, -0.568053, -0.086528,
		37.333923, 35.831520, 32.902721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091072, 35.604385, 32.969799>,  <37.906826, 36.229160, 32.963291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091072, 35.604385, 32.969799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.739826, 35.580482, 32.779919>,  <37.529079, 35.566139, 32.665993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.739826, 35.580482, 32.779919>,  <38.091072, 35.604385, 32.969799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739826, 35.580482, 32.779919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439337, -0.493593, -0.750566,
		-0.189455, -0.867638, 0.459686,
		-0.878117, -0.059758, -0.474699,
		37.476391, 35.562553, 32.637508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072571, 34.970127, 32.632504>,  <38.091072, 35.604385, 32.969799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072571, 34.970127, 32.632504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.769646, 35.144794, 32.438267>,  <37.587891, 35.249596, 32.321724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.769646, 35.144794, 32.438267>,  <38.072571, 34.970127, 32.632504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769646, 35.144794, 32.438267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293009, -0.437325, -0.850231,
		-0.583633, -0.786171, 0.203242,
		-0.757310, 0.436671, -0.485592,
		37.542454, 35.275795, 32.292587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866837, 34.340683, 32.178719>,  <38.072571, 34.970127, 32.632504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866837, 34.340683, 32.178719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.696541, 34.668331, 32.024948>,  <37.594364, 34.864922, 31.932686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.696541, 34.668331, 32.024948>,  <37.866837, 34.340683, 32.178719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696541, 34.668331, 32.024948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027030, -0.436179, -0.899454,
		-0.904444, -0.372539, 0.207838,
		-0.425736, 0.819123, -0.384430,
		37.568821, 34.914066, 31.909618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408470, 34.086742, 31.680809>,  <37.866837, 34.340683, 32.178719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408470, 34.086742, 31.680809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.456993, 34.468449, 31.571512>,  <37.486107, 34.697472, 31.505934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.456993, 34.468449, 31.571512>,  <37.408470, 34.086742, 31.680809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456993, 34.468449, 31.571512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017930, -0.277338, -0.960605,
		-0.992453, 0.111627, -0.050753,
		0.121305, 0.954265, -0.273243,
		37.493385, 34.754730, 31.489540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817009, 34.333942, 31.183662>,  <37.408470, 34.086742, 31.680809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817009, 34.333942, 31.183662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.158661, 34.532570, 31.121849>,  <37.363651, 34.651749, 31.084761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.158661, 34.532570, 31.121849>,  <36.817009, 34.333942, 31.183662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158661, 34.532570, 31.121849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004759, -0.289667, -0.957116,
		-0.520040, 0.818236, -0.245050,
		0.854129, 0.496572, -0.154533,
		37.414898, 34.681541, 31.075489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750397, 34.590565, 30.547827>,  <36.817009, 34.333942, 31.183662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750397, 34.590565, 30.547827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.145233, 34.624569, 30.602135>,  <37.382133, 34.644970, 30.634720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.145233, 34.624569, 30.602135>,  <36.750397, 34.590565, 30.547827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145233, 34.624569, 30.602135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151591, -0.221786, -0.963240,
		-0.051775, 0.971382, -0.231809,
		0.987086, 0.085012, 0.135770,
		37.441360, 34.650074, 30.642866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964794, 34.990662, 30.012136>,  <36.750397, 34.590565, 30.547827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964794, 34.990662, 30.012136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.288887, 34.791618, 30.136013>,  <37.483341, 34.672192, 30.210339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.288887, 34.791618, 30.136013>,  <36.964794, 34.990662, 30.012136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288887, 34.791618, 30.136013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272002, -0.148807, -0.950722,
		0.519170, 0.854543, 0.014781,
		0.810233, -0.497607, 0.309694,
		37.531956, 34.642338, 30.228922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666569, 35.633694, 30.057690>,  <36.964794, 34.990662, 30.012136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666569, 35.633694, 30.057690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.343250, 35.817425, 29.910357>,  <36.149258, 35.927662, 29.821957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.343250, 35.817425, 29.910357>,  <36.666569, 35.633694, 30.057690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343250, 35.817425, 29.910357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425199, -0.022672, 0.904816,
		0.407254, 0.887978, 0.213631,
		-0.808300, 0.459326, -0.368335,
		36.100761, 35.955223, 29.799856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498638, 36.150833, 30.474104>,  <36.666569, 35.633694, 30.057690>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498638, 36.150833, 30.474104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.151466, 36.069248, 30.292953>,  <35.943165, 36.020298, 30.184263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.151466, 36.069248, 30.292953>,  <36.498638, 36.150833, 30.474104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151466, 36.069248, 30.292953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467806, 0.029299, 0.883345,
		-0.166896, 0.978541, -0.120842,
		-0.867930, -0.203958, -0.452878,
		35.891087, 36.008060, 30.157091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051811, 36.688271, 30.650896>,  <36.498638, 36.150833, 30.474104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051811, 36.688271, 30.650896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.824249, 36.370152, 30.567131>,  <35.687714, 36.179279, 30.516872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.824249, 36.370152, 30.567131>,  <36.051811, 36.688271, 30.650896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824249, 36.370152, 30.567131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667232, 0.297482, 0.682866,
		-0.480784, 0.528212, -0.699885,
		-0.568901, -0.795297, -0.209415,
		35.653580, 36.131561, 30.504307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410301, 36.977627, 30.713661>,  <36.051811, 36.688271, 30.650896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410301, 36.977627, 30.713661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.327084, 36.586411, 30.708876>,  <35.277153, 36.351681, 30.706003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.327084, 36.586411, 30.708876>,  <35.410301, 36.977627, 30.713661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327084, 36.586411, 30.708876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747550, 0.151104, 0.646790,
		-0.630782, 0.143509, -0.762575,
		-0.208048, -0.978046, -0.011966,
		35.264668, 36.292995, 30.705286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713081, 36.927982, 30.734312>,  <35.410301, 36.977627, 30.713661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713081, 36.927982, 30.734312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.807064, 36.560619, 30.861635>,  <34.863453, 36.340202, 30.938028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.807064, 36.560619, 30.861635>,  <34.713081, 36.927982, 30.734312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807064, 36.560619, 30.861635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739985, 0.043324, 0.671227,
		-0.630251, -0.393252, -0.669430,
		0.234958, -0.918410, 0.318306,
		34.877552, 36.285095, 30.957127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076988, 36.574455, 30.539473>,  <34.713081, 36.927982, 30.734312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076988, 36.574455, 30.539473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.296612, 36.409187, 30.830078>,  <34.428387, 36.310028, 31.004442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.296612, 36.409187, 30.830078>,  <34.076988, 36.574455, 30.539473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296612, 36.409187, 30.830078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795405, 0.008600, 0.606017,
		-0.256634, -0.910615, -0.323913,
		0.549062, -0.413167, 0.726515,
		34.461330, 36.285236, 31.048033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728985, 36.002838, 30.762535>,  <34.076988, 36.574455, 30.539473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728985, 36.002838, 30.762535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.978130, 36.067261, 31.068766>,  <34.127617, 36.105915, 31.252504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.978130, 36.067261, 31.068766>,  <33.728985, 36.002838, 30.762535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978130, 36.067261, 31.068766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760678, -0.103970, 0.640748,
		0.182793, -0.981454, 0.057753,
		0.622860, 0.161056, 0.765576,
		34.164989, 36.115578, 31.298439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499126, 35.574112, 31.285389>,  <33.728985, 36.002838, 30.762535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499126, 35.574112, 31.285389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.727268, 35.809483, 31.514631>,  <33.864155, 35.950706, 31.652176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.727268, 35.809483, 31.514631>,  <33.499126, 35.574112, 31.285389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727268, 35.809483, 31.514631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721772, 0.025970, 0.691643,
		0.392100, -0.808131, 0.439525,
		0.570352, 0.588430, 0.573104,
		33.898373, 35.986012, 31.686563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579147, 35.288803, 31.974295>,  <33.499126, 35.574112, 31.285389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579147, 35.288803, 31.974295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.619228, 35.686668, 31.984077>,  <33.643276, 35.925388, 31.989946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.619228, 35.686668, 31.984077>,  <33.579147, 35.288803, 31.974295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619228, 35.686668, 31.984077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559920, 0.036051, 0.827762,
		0.822466, -0.096634, 0.560546,
		0.100198, 0.994667, 0.024457,
		33.649288, 35.985069, 31.991415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768314, 35.452038, 32.640972>,  <33.579147, 35.288803, 31.974295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768314, 35.452038, 32.640972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.637180, 35.793922, 32.479980>,  <33.558498, 35.999054, 32.383385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.637180, 35.793922, 32.479980>,  <33.768314, 35.452038, 32.640972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637180, 35.793922, 32.479980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639607, 0.112738, 0.760390,
		0.695289, 0.506715, 0.509719,
		-0.327837, 0.854711, -0.402483,
		33.538830, 36.050335, 32.359234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595684, 35.847832, 33.182411>,  <33.768314, 35.452038, 32.640972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595684, 35.847832, 33.182411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391335, 36.038380, 32.896172>,  <33.268726, 36.152706, 32.724426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391335, 36.038380, 32.896172>,  <33.595684, 35.847832, 33.182411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391335, 36.038380, 32.896172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796031, 0.052142, 0.603006,
		0.324565, 0.877699, 0.352566,
		-0.510874, 0.476368, -0.715599,
		33.238071, 36.181290, 32.681492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218960, 36.360741, 33.548946>,  <33.595684, 35.847832, 33.182411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218960, 36.360741, 33.548946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.038200, 36.294987, 33.198231>,  <32.929745, 36.255535, 32.987801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.038200, 36.294987, 33.198231>,  <33.218960, 36.360741, 33.548946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038200, 36.294987, 33.198231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890051, 0.149147, 0.430772,
		0.059960, 0.975055, -0.213709,
		-0.451901, -0.164383, -0.876792,
		32.902630, 36.245670, 32.935192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.725063, 36.825912, 33.613705>,  <33.218960, 36.360741, 33.548946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.725063, 36.825912, 33.613705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.589825, 36.577713, 33.330673>,  <32.508682, 36.428791, 33.160854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.589825, 36.577713, 33.330673>,  <32.725063, 36.825912, 33.613705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589825, 36.577713, 33.330673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922703, 0.070569, 0.378998,
		-0.185236, 0.781023, -0.596398,
		-0.338093, -0.620502, -0.707580,
		32.488396, 36.391563, 33.118401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388107, 37.276314, 33.158337>,  <32.725063, 36.825912, 33.613705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388107, 37.276314, 33.158337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.245277, 36.906025, 33.108486>,  <32.159580, 36.683853, 33.078575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.245277, 36.906025, 33.108486>,  <32.388107, 37.276314, 33.158337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245277, 36.906025, 33.108486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912202, 0.316893, 0.259744,
		-0.200957, 0.206433, -0.957602,
		-0.357077, -0.925724, -0.124627,
		32.138153, 36.628307, 33.071098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873550, 37.706516, 33.413322>,  <32.388107, 37.276314, 33.158337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873550, 37.706516, 33.413322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.216000, 37.911800, 33.389114>,  <33.421471, 38.034973, 33.374588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.216000, 37.911800, 33.389114>,  <32.873550, 37.706516, 33.413322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216000, 37.911800, 33.389114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252524, -0.517657, -0.817474,
		-0.450868, 0.684576, -0.572777,
		0.856125, 0.513213, -0.060523,
		33.472836, 38.065765, 33.370956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930161, 38.022087, 32.681396>,  <32.873550, 37.706516, 33.413322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930161, 38.022087, 32.681396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265617, 37.922337, 32.875092>,  <33.466892, 37.862488, 32.991310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265617, 37.922337, 32.875092>,  <32.930161, 38.022087, 32.681396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265617, 37.922337, 32.875092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252234, -0.610158, -0.751056,
		0.482756, 0.752011, -0.448805,
		0.838644, -0.249373, 0.484241,
		33.517212, 37.847527, 33.020363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865353, 38.693146, 32.202763>,  <32.930161, 38.022087, 32.681396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865353, 38.693146, 32.202763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.191071, 38.792553, 32.412582>,  <33.386501, 38.852200, 32.538475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.191071, 38.792553, 32.412582>,  <32.865353, 38.693146, 32.202763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191071, 38.792553, 32.412582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140251, 0.792684, -0.593280,
		-0.563248, 0.556676, 0.610626,
		0.814298, 0.248523, 0.524552,
		33.435360, 38.867111, 32.569946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886604, 39.382175, 32.136299>,  <32.865353, 38.693146, 32.202763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886604, 39.382175, 32.136299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.259388, 39.309586, 32.261856>,  <33.483059, 39.266033, 32.337189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.259388, 39.309586, 32.261856>,  <32.886604, 39.382175, 32.136299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259388, 39.309586, 32.261856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360169, 0.562904, -0.743920,
		-0.041692, 0.806354, 0.589961,
		0.931955, -0.181470, 0.313893,
		33.538975, 39.255146, 32.356026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312607, 39.998421, 32.135006>,  <32.886604, 39.382175, 32.136299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312607, 39.998421, 32.135006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.599384, 39.720039, 32.118767>,  <33.771450, 39.553009, 32.109024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.599384, 39.720039, 32.118767>,  <33.312607, 39.998421, 32.135006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599384, 39.720039, 32.118767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449451, 0.505948, -0.736214,
		0.532909, 0.509575, 0.675530,
		0.716939, -0.695953, -0.040595,
		33.814465, 39.511253, 32.106586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.955963, 40.389717, 32.045715>,  <33.312607, 39.998421, 32.135006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.955963, 40.389717, 32.045715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.032490, 40.020248, 31.912912>,  <34.078407, 39.798569, 31.833231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.032490, 40.020248, 31.912912>,  <33.955963, 40.389717, 32.045715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032490, 40.020248, 31.912912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315430, 0.378168, -0.870341,
		0.929464, 0.061786, 0.363703,
		0.191316, -0.923673, -0.332004,
		34.089886, 39.743145, 31.813311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720966, 40.406818, 31.813034>,  <33.955963, 40.389717, 32.045715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720966, 40.406818, 31.813034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.588581, 40.074913, 31.633276>,  <34.509151, 39.875771, 31.525421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.588581, 40.074913, 31.633276>,  <34.720966, 40.406818, 31.813034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588581, 40.074913, 31.633276> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464958, 0.271019, -0.842831,
		0.821144, -0.487897, 0.296107,
		-0.330964, -0.829762, -0.449397,
		34.489292, 39.825985, 31.498457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337170, 40.129543, 31.489082>,  <34.720966, 40.406818, 31.813034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337170, 40.129543, 31.489082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.021778, 39.977726, 31.295488>,  <34.832542, 39.886635, 31.179333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.021778, 39.977726, 31.295488>,  <35.337170, 40.129543, 31.489082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021778, 39.977726, 31.295488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470186, 0.135331, -0.872130,
		0.396512, -0.915221, 0.071752,
		-0.788482, -0.379546, -0.483984,
		34.785233, 39.863861, 31.150293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647533, 39.613983, 30.966053>,  <35.337170, 40.129543, 31.489082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647533, 39.613983, 30.966053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.281235, 39.708363, 30.835981>,  <35.061455, 39.764992, 30.757938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.281235, 39.708363, 30.835981>,  <35.647533, 39.613983, 30.966053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281235, 39.708363, 30.835981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366644, 0.159836, -0.916529,
		-0.164282, -0.958529, -0.232879,
		-0.915742, 0.235953, -0.325180,
		35.006512, 39.779148, 30.738428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544064, 39.245049, 30.269751>,  <35.647533, 39.613983, 30.966053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544064, 39.245049, 30.269751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.295773, 39.556633, 30.305351>,  <35.146797, 39.743584, 30.326712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.295773, 39.556633, 30.305351>,  <35.544064, 39.245049, 30.269751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295773, 39.556633, 30.305351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265520, 0.315667, -0.910963,
		-0.737698, -0.541827, -0.402772,
		-0.620726, 0.778959, 0.089000,
		35.109554, 39.790321, 30.332052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166676, 39.324253, 29.611172>,  <35.544064, 39.245049, 30.269751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166676, 39.324253, 29.611172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.126774, 39.678204, 29.793180>,  <35.102833, 39.890575, 29.902386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.126774, 39.678204, 29.793180>,  <35.166676, 39.324253, 29.611172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126774, 39.678204, 29.793180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312099, 0.462050, -0.830123,
		-0.944798, 0.059203, -0.322261,
		-0.099755, 0.884876, 0.455021,
		35.096848, 39.943665, 29.929688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810917, 39.683670, 29.121704>,  <35.166676, 39.324253, 29.611172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810917, 39.683670, 29.121704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.951759, 39.986240, 29.342188>,  <35.036266, 40.167782, 29.474478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.951759, 39.986240, 29.342188>,  <34.810917, 39.683670, 29.121704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951759, 39.986240, 29.342188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322683, 0.454710, -0.830129,
		-0.878576, 0.470161, -0.083980,
		0.352108, 0.756430, 0.551210,
		35.057392, 40.213169, 29.507551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620758, 40.371712, 28.740334>,  <34.810917, 39.683670, 29.121704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620758, 40.371712, 28.740334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.920914, 40.434464, 28.997175>,  <35.101009, 40.472115, 29.151281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.920914, 40.434464, 28.997175>,  <34.620758, 40.371712, 28.740334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920914, 40.434464, 28.997175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568193, 0.343266, -0.747881,
		-0.337739, 0.926044, 0.168447,
		0.750392, 0.156878, 0.642106,
		35.146030, 40.481525, 29.189808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839111, 41.066692, 28.600430>,  <34.620758, 40.371712, 28.740334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839111, 41.066692, 28.600430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.146305, 40.960903, 28.833755>,  <35.330620, 40.897430, 28.973751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.146305, 40.960903, 28.833755>,  <34.839111, 41.066692, 28.600430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146305, 40.960903, 28.833755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640430, 0.307083, -0.703953,
		0.007050, 0.914196, 0.405210,
		0.767984, -0.264472, 0.583314,
		35.376701, 40.881561, 29.008749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352264, 41.658314, 28.539026>,  <34.839111, 41.066692, 28.600430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352264, 41.658314, 28.539026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.563412, 41.335075, 28.643591>,  <35.690102, 41.141132, 28.706329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.563412, 41.335075, 28.643591>,  <35.352264, 41.658314, 28.539026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563412, 41.335075, 28.643591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668168, 0.205108, -0.715180,
		0.524317, 0.552187, 0.648214,
		0.527867, -0.808096, 0.261412,
		35.721771, 41.092648, 28.722015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123657, 41.800732, 28.585745>,  <35.352264, 41.658314, 28.539026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123657, 41.800732, 28.585745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.118382, 41.403500, 28.539066>,  <36.115215, 41.165161, 28.511059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.118382, 41.403500, 28.539066>,  <36.123657, 41.800732, 28.585745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118382, 41.403500, 28.539066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605627, 0.084929, -0.791203,
		0.795639, -0.081109, 0.600316,
		-0.013189, -0.993080, -0.116695,
		36.114426, 41.105576, 28.504057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776619, 41.696190, 28.452793>,  <36.123657, 41.800732, 28.585745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776619, 41.696190, 28.452793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590164, 41.368843, 28.318336>,  <36.478291, 41.172436, 28.237663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.590164, 41.368843, 28.318336>,  <36.776619, 41.696190, 28.452793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590164, 41.368843, 28.318336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765241, -0.182284, -0.617397,
		0.443984, -0.545022, 0.711217,
		-0.466138, -0.818366, -0.336142,
		36.450321, 41.123333, 28.217493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254879, 41.144150, 28.225264>,  <36.776619, 41.696190, 28.452793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254879, 41.144150, 28.225264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.925869, 41.033192, 28.026667>,  <36.728462, 40.966618, 27.907509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.925869, 41.033192, 28.026667>,  <37.254879, 41.144150, 28.225264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925869, 41.033192, 28.026667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532765, -0.070288, -0.843339,
		0.199044, -0.958180, 0.205602,
		-0.822522, -0.277400, -0.496494,
		36.679111, 40.949970, 27.877718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403267, 40.529900, 27.825640>,  <37.254879, 41.144150, 28.225264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403267, 40.529900, 27.825640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.077961, 40.669918, 27.639706>,  <36.882778, 40.753929, 27.528145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.077961, 40.669918, 27.639706>,  <37.403267, 40.529900, 27.825640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077961, 40.669918, 27.639706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507855, 0.037020, -0.860647,
		-0.284060, -0.936000, -0.207881,
		-0.813261, 0.350048, -0.464836,
		36.833984, 40.774933, 27.500256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320232, 40.142815, 27.149647>,  <37.403267, 40.529900, 27.825640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320232, 40.142815, 27.149647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.132870, 40.494385, 27.113689>,  <37.020451, 40.705326, 27.092115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.132870, 40.494385, 27.113689>,  <37.320232, 40.142815, 27.149647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132870, 40.494385, 27.113689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428670, 0.137117, -0.892995,
		-0.772551, -0.456822, -0.440996,
		-0.468408, 0.878927, -0.089896,
		36.992348, 40.758064, 27.086721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093998, 40.146217, 26.495131>,  <37.320232, 40.142815, 27.149647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093998, 40.146217, 26.495131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.116146, 40.528252, 26.611570>,  <37.129433, 40.757473, 26.681435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.116146, 40.528252, 26.611570>,  <37.093998, 40.146217, 26.495131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116146, 40.528252, 26.611570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474579, 0.231334, -0.849270,
		-0.878470, 0.185170, -0.440458,
		0.055366, 0.955090, 0.291097,
		37.132755, 40.814777, 26.698900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966202, 40.516266, 25.845930>,  <37.093998, 40.146217, 26.495131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966202, 40.516266, 25.845930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.145805, 40.778786, 26.088472>,  <37.253567, 40.936298, 26.233997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.145805, 40.778786, 26.088472>,  <36.966202, 40.516266, 25.845930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145805, 40.778786, 26.088472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460824, 0.411308, -0.786427,
		-0.765527, 0.632536, -0.117756,
		0.449009, 0.656296, 0.606355,
		37.280510, 40.975674, 26.270378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.990284, 41.118275, 25.506191>,  <36.966202, 40.516266, 25.845930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.990284, 41.118275, 25.506191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.246613, 41.188034, 25.805239>,  <37.400410, 41.229889, 25.984667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.246613, 41.188034, 25.805239>,  <36.990284, 41.118275, 25.506191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246613, 41.188034, 25.805239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582295, 0.524217, -0.621393,
		-0.500283, 0.833537, 0.234379,
		0.640819, 0.174394, 0.747621,
		37.438858, 41.240353, 26.029526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106350, 41.836296, 25.596684>,  <36.990284, 41.118275, 25.506191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106350, 41.836296, 25.596684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.433113, 41.663143, 25.749140>,  <37.629169, 41.559250, 25.840614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.433113, 41.663143, 25.749140>,  <37.106350, 41.836296, 25.596684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433113, 41.663143, 25.749140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570665, 0.510769, -0.643006,
		0.083674, 0.742782, 0.664285,
		0.816909, -0.432887, 0.381141,
		37.678185, 41.533276, 25.863482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639412, 42.384655, 25.456221>,  <37.106350, 41.836296, 25.596684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639412, 42.384655, 25.456221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.837360, 42.048256, 25.543705>,  <37.956127, 41.846416, 25.596195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.837360, 42.048256, 25.543705>,  <37.639412, 42.384655, 25.456221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837360, 42.048256, 25.543705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726920, 0.262740, -0.634472,
		0.476122, 0.472968, 0.741357,
		0.494869, -0.840993, 0.218713,
		37.985821, 41.795959, 25.609320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331936, 42.562439, 25.628555>,  <37.639412, 42.384655, 25.456221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331936, 42.562439, 25.628555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.357590, 42.177433, 25.523144>,  <38.372982, 41.946430, 25.459898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.357590, 42.177433, 25.523144>,  <38.331936, 42.562439, 25.628555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357590, 42.177433, 25.523144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633872, 0.243247, -0.734191,
		0.770775, -0.119959, 0.625713,
		0.064130, -0.962518, -0.263527,
		38.376827, 41.888680, 25.444086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981960, 42.395996, 25.543028>,  <38.331936, 42.562439, 25.628555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981960, 42.395996, 25.543028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.818676, 42.097164, 25.333179>,  <38.720703, 41.917866, 25.207270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.818676, 42.097164, 25.333179>,  <38.981960, 42.395996, 25.543028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818676, 42.097164, 25.333179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662170, 0.153277, -0.733511,
		0.628406, -0.646818, 0.432126,
		-0.408213, -0.747083, -0.524623,
		38.696213, 41.873039, 25.175793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602791, 41.960320, 25.287130>,  <38.981960, 42.395996, 25.543028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602791, 41.960320, 25.287130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.272213, 41.890110, 25.073149>,  <39.073864, 41.847984, 24.944759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.272213, 41.890110, 25.073149>,  <39.602791, 41.960320, 25.287130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.272213, 41.890110, 25.073149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510807, 0.165821, -0.843552,
		0.236771, -0.970409, -0.047383,
		-0.826448, -0.175525, -0.534953,
		39.024277, 41.837452, 24.912663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.037731, 41.378220, 25.606932>,  <39.602791, 41.960320, 25.287130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.037731, 41.378220, 25.606932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.379742, 41.465828, 25.794958>,  <40.584949, 41.518394, 25.907774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.379742, 41.465828, 25.794958>,  <40.037731, 41.378220, 25.606932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379742, 41.465828, 25.794958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515016, 0.252439, 0.819166,
		0.060753, -0.942499, 0.328642,
		0.855025, 0.219022, 0.470066,
		40.636250, 41.531536, 25.935978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.976040, 41.102657, 26.280979>,  <40.037731, 41.378220, 25.606932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.976040, 41.102657, 26.280979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.273827, 41.362793, 26.341404>,  <40.452499, 41.518875, 26.377659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.273827, 41.362793, 26.341404>,  <39.976040, 41.102657, 26.280979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273827, 41.362793, 26.341404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394078, 0.245379, 0.885715,
		0.538950, -0.718919, 0.438963,
		0.744470, 0.650342, 0.151063,
		40.497166, 41.557896, 26.386723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401234, 40.826988, 26.742964>,  <39.976040, 41.102657, 26.280979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401234, 40.826988, 26.742964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.435974, 41.223808, 26.779390>,  <40.456818, 41.461899, 26.801247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.435974, 41.223808, 26.779390>,  <40.401234, 40.826988, 26.742964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435974, 41.223808, 26.779390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349348, -0.055277, 0.935361,
		0.932959, -0.113050, 0.341770,
		0.086851, 0.992050, 0.091065,
		40.462029, 41.521423, 26.806709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.845928, 40.928787, 27.294458>,  <40.401234, 40.826988, 26.742964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.845928, 40.928787, 27.294458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.614777, 41.252319, 27.250904>,  <40.476086, 41.446438, 27.224771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.614777, 41.252319, 27.250904>,  <40.845928, 40.928787, 27.294458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614777, 41.252319, 27.250904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392322, -0.158318, 0.906101,
		0.715641, 0.566332, 0.408810,
		-0.577876, 0.808828, -0.108885,
		40.441414, 41.494968, 27.218239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872253, 41.103054, 27.862099>,  <40.845928, 40.928787, 27.294458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872253, 41.103054, 27.862099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.576141, 41.313911, 27.695196>,  <40.398472, 41.440426, 27.595055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.576141, 41.313911, 27.695196>,  <40.872253, 41.103054, 27.862099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576141, 41.313911, 27.695196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565839, -0.153377, 0.810125,
		0.363052, 0.835822, 0.411819,
		-0.740283, 0.527141, -0.417257,
		40.354057, 41.472054, 27.570019>
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
