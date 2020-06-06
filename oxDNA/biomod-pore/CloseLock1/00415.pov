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
	<24.461990, 34.855110, 35.550167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.421713, 34.955273, 35.165012>,  <24.397547, 35.015369, 34.933918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.421713, 34.955273, 35.165012>,  <24.461990, 34.855110, 35.550167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.421713, 34.955273, 35.165012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979434, 0.195029, -0.051706,
		0.174844, -0.948294, -0.264894,
		-0.100694, 0.250405, -0.962890,
		24.391504, 35.030396, 34.876144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.106073, 34.714973, 35.923008>,  <24.461990, 34.855110, 35.550167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.106073, 34.714973, 35.923008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321547, 34.722153, 36.259933>,  <25.450830, 34.726460, 36.462090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.321547, 34.722153, 36.259933>,  <25.106073, 34.714973, 35.923008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.321547, 34.722153, 36.259933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207332, 0.966204, -0.153178,
		-0.816598, 0.257154, 0.516759,
		0.538685, 0.017944, 0.842316,
		25.483152, 34.727535, 36.512627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.867502, 35.230724, 36.417850>,  <25.106073, 34.714973, 35.923008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.867502, 35.230724, 36.417850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.261658, 35.176880, 36.459595>,  <25.498150, 35.144573, 36.484642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.261658, 35.176880, 36.459595>,  <24.867502, 35.230724, 36.417850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.261658, 35.176880, 36.459595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157974, 0.951350, -0.264531,
		-0.063678, 0.277152, 0.958714,
		0.985388, -0.134607, 0.104363,
		25.557274, 35.136497, 36.490902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.130919, 35.532391, 36.952827>,  <24.867502, 35.230724, 36.417850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.130919, 35.532391, 36.952827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407820, 35.527660, 36.664204>,  <25.573959, 35.524822, 36.491028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.407820, 35.527660, 36.664204>,  <25.130919, 35.532391, 36.952827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.407820, 35.527660, 36.664204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097792, 0.992181, 0.077554,
		0.715000, -0.124249, 0.687995,
		0.692251, -0.011830, -0.721560,
		25.615496, 35.524113, 36.447735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.747503, 35.885975, 37.206951>,  <25.130919, 35.532391, 36.952827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.747503, 35.885975, 37.206951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701488, 35.913525, 36.810562>,  <25.673880, 35.930054, 36.572727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.701488, 35.913525, 36.810562>,  <25.747503, 35.885975, 37.206951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.701488, 35.913525, 36.810562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024981, 0.997479, 0.066426,
		0.993047, -0.017114, -0.116465,
		-0.115035, 0.068873, -0.990971,
		25.666979, 35.934185, 36.513271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.396479, 36.442684, 37.191666>,  <25.747503, 35.885975, 37.206951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.396479, 36.442684, 37.191666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.787073, 36.418476, 37.108902>,  <27.021431, 36.403950, 37.059246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.787073, 36.418476, 37.108902>,  <26.396479, 36.442684, 37.191666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.787073, 36.418476, 37.108902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176498, 0.775547, 0.606115,
		0.123779, -0.628381, 0.767994,
		0.976487, -0.060525, -0.206905,
		27.080019, 36.400318, 37.046829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777224, 36.531975, 37.871536>,  <26.396479, 36.442684, 37.191666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777224, 36.531975, 37.871536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032784, 36.616619, 37.575691>,  <27.186119, 36.667404, 37.398186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.032784, 36.616619, 37.575691>,  <26.777224, 36.531975, 37.871536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.032784, 36.616619, 37.575691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407978, 0.721882, 0.558963,
		0.652195, -0.658868, 0.374880,
		0.638902, 0.211611, -0.739611,
		27.224453, 36.680103, 37.353809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490871, 36.573730, 38.221611>,  <26.777224, 36.531975, 37.871536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490871, 36.573730, 38.221611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524054, 36.773899, 37.876892>,  <27.543962, 36.894001, 37.670059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.524054, 36.773899, 37.876892>,  <27.490871, 36.573730, 38.221611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524054, 36.773899, 37.876892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370221, 0.787413, 0.492866,
		0.925232, -0.359941, -0.119949,
		0.082953, 0.500423, -0.861798,
		27.548939, 36.924026, 37.618351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104149, 36.820614, 38.307510>,  <27.490871, 36.573730, 38.221611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104149, 36.820614, 38.307510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968342, 37.043175, 38.004158>,  <27.886858, 37.176712, 37.822147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.968342, 37.043175, 38.004158>,  <28.104149, 36.820614, 38.307510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.968342, 37.043175, 38.004158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404489, 0.814285, 0.416328,
		0.849186, -0.165407, -0.501522,
		-0.339518, 0.556400, -0.758384,
		27.866486, 37.210094, 37.776642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.728373, 37.300888, 38.065090>,  <28.104149, 36.820614, 38.307510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.728373, 37.300888, 38.065090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396074, 37.470612, 37.920963>,  <28.196695, 37.572445, 37.834488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.396074, 37.470612, 37.920963>,  <28.728373, 37.300888, 38.065090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396074, 37.470612, 37.920963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302709, 0.887567, 0.347263,
		0.467151, 0.179416, -0.865783,
		-0.830745, 0.424304, -0.360317,
		28.146851, 37.597904, 37.812866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950716, 37.854267, 37.637615>,  <28.728373, 37.300888, 38.065090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950716, 37.854267, 37.637615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575405, 37.925293, 37.756344>,  <28.350218, 37.967911, 37.827579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.575405, 37.925293, 37.756344>,  <28.950716, 37.854267, 37.637615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.575405, 37.925293, 37.756344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267414, 0.916690, 0.296932,
		-0.219368, 0.357979, -0.907595,
		-0.938279, 0.177566, 0.296821,
		28.293921, 37.978561, 37.845390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.911547, 38.497032, 37.620750>,  <28.950716, 37.854267, 37.637615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.911547, 38.497032, 37.620750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608549, 38.439442, 37.875458>,  <28.426750, 38.404888, 38.028282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.608549, 38.439442, 37.875458>,  <28.911547, 38.497032, 37.620750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.608549, 38.439442, 37.875458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234189, 0.850537, 0.470895,
		-0.609390, 0.505824, -0.610561,
		-0.757495, -0.143972, 0.636768,
		28.381300, 38.396252, 38.066486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679518, 39.160069, 37.763439>,  <28.911547, 38.497032, 37.620750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679518, 39.160069, 37.763439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502474, 38.955166, 38.057835>,  <28.396248, 38.832222, 38.234474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502474, 38.955166, 38.057835>,  <28.679518, 39.160069, 37.763439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502474, 38.955166, 38.057835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094544, 0.789532, 0.606383,
		-0.891715, 0.337976, -0.301025,
		-0.442612, -0.512261, 0.735991,
		28.369690, 38.801487, 38.278633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193672, 39.591686, 37.962765>,  <28.679518, 39.160069, 37.763439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193672, 39.591686, 37.962765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300489, 39.349640, 38.262772>,  <28.364580, 39.204411, 38.442776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.300489, 39.349640, 38.262772>,  <28.193672, 39.591686, 37.962765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.300489, 39.349640, 38.262772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137379, 0.794232, 0.591880,
		-0.953843, -0.055020, 0.295223,
		0.267041, -0.605118, 0.750014,
		28.380602, 39.168106, 38.487778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984592, 39.966408, 38.522758>,  <28.193672, 39.591686, 37.962765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984592, 39.966408, 38.522758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231638, 39.697289, 38.685680>,  <28.379866, 39.535816, 38.783432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.231638, 39.697289, 38.685680>,  <27.984592, 39.966408, 38.522758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.231638, 39.697289, 38.685680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226508, 0.648104, 0.727087,
		-0.753157, -0.356802, 0.552672,
		0.617615, -0.672795, 0.407306,
		28.416924, 39.495449, 38.807873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.738886, 39.956013, 39.155045>,  <27.984592, 39.966408, 38.522758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.738886, 39.956013, 39.155045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.102404, 39.790257, 39.174511>,  <28.320515, 39.690804, 39.186192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.102404, 39.790257, 39.174511>,  <27.738886, 39.956013, 39.155045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.102404, 39.790257, 39.174511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298130, 0.726532, 0.619088,
		-0.291906, -0.548115, 0.783812,
		0.908796, -0.414393, 0.048670,
		28.375042, 39.665939, 39.189114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.008455, 39.880814, 39.837860>,  <27.738886, 39.956013, 39.155045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.008455, 39.880814, 39.837860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.317472, 39.924408, 39.587646>,  <28.502884, 39.950565, 39.437519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.317472, 39.924408, 39.587646>,  <28.008455, 39.880814, 39.837860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317472, 39.924408, 39.587646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384438, 0.703783, 0.597408,
		0.505355, -0.702004, 0.501804,
		0.772544, 0.108991, -0.625537,
		28.549236, 39.957104, 39.399986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.593555, 39.785202, 40.282627>,  <28.008455, 39.880814, 39.837860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.593555, 39.785202, 40.282627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731075, 39.965816, 39.953285>,  <28.813587, 40.074184, 39.755680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731075, 39.965816, 39.953285>,  <28.593555, 39.785202, 40.282627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731075, 39.965816, 39.953285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577304, 0.589903, 0.564566,
		0.740623, -0.669425, -0.057865,
		0.343800, 0.451536, -0.823357,
		28.834215, 40.101276, 39.706280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.173712, 39.895664, 40.512417>,  <28.593555, 39.785202, 40.282627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.173712, 39.895664, 40.512417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179573, 40.121563, 40.182365>,  <29.183090, 40.257103, 39.984333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.179573, 40.121563, 40.182365>,  <29.173712, 39.895664, 40.512417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.179573, 40.121563, 40.182365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781551, 0.508252, 0.361744,
		0.623670, -0.650184, -0.433932,
		0.014653, 0.564748, -0.825133,
		29.183969, 40.290989, 39.934826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898710, 39.908516, 40.285343>,  <29.173712, 39.895664, 40.512417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898710, 39.908516, 40.285343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709240, 40.221783, 40.124207>,  <29.595558, 40.409744, 40.027523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709240, 40.221783, 40.124207>,  <29.898710, 39.908516, 40.285343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709240, 40.221783, 40.124207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680476, 0.615833, 0.397117,
		0.559092, -0.086019, -0.824631,
		-0.473675, 0.783167, -0.402841,
		29.567137, 40.456734, 40.003353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414421, 40.316669, 40.025181>,  <29.898710, 39.908516, 40.285343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414421, 40.316669, 40.025181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104137, 40.555046, 40.108250>,  <29.917967, 40.698071, 40.158092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.104137, 40.555046, 40.108250>,  <30.414421, 40.316669, 40.025181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104137, 40.555046, 40.108250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618613, 0.652915, 0.437058,
		0.124868, 0.467500, -0.875130,
		-0.775710, 0.595941, 0.207673,
		29.871424, 40.733829, 40.170551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.648634, 40.970219, 39.837349>,  <30.414421, 40.316669, 40.025181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.648634, 40.970219, 39.837349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.331757, 41.018707, 40.076591>,  <30.141630, 41.047798, 40.220139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.331757, 41.018707, 40.076591>,  <30.648634, 40.970219, 39.837349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.331757, 41.018707, 40.076591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523664, 0.638301, 0.564223,
		-0.313380, 0.760182, -0.569136,
		-0.792193, 0.121220, 0.598111,
		30.094099, 41.055073, 40.256023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739918, 41.674923, 40.010460>,  <30.648634, 40.970219, 39.837349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739918, 41.674923, 40.010460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473551, 41.535461, 40.274277>,  <30.313730, 41.451782, 40.432568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473551, 41.535461, 40.274277>,  <30.739918, 41.674923, 40.010460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473551, 41.535461, 40.274277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540631, 0.383667, 0.748677,
		-0.514075, 0.855125, -0.066996,
		-0.665916, -0.348656, 0.659541,
		30.273775, 41.430866, 40.472137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.550310, 42.305748, 40.332520>,  <30.739918, 41.674923, 40.010460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.550310, 42.305748, 40.332520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481359, 41.980049, 40.554253>,  <30.439989, 41.784630, 40.687294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481359, 41.980049, 40.554253>,  <30.550310, 42.305748, 40.332520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481359, 41.980049, 40.554253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469880, 0.426631, 0.772787,
		-0.865736, 0.393679, 0.309058,
		-0.172376, -0.814250, 0.554332,
		30.429647, 41.735775, 40.720551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363140, 42.621719, 40.950508>,  <30.550310, 42.305748, 40.332520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363140, 42.621719, 40.950508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441994, 42.244125, 41.056358>,  <30.489305, 42.017567, 41.119869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441994, 42.244125, 41.056358>,  <30.363140, 42.621719, 40.950508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441994, 42.244125, 41.056358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376293, 0.322105, 0.868707,
		-0.905286, -0.071675, 0.418713,
		0.197134, -0.943987, 0.264627,
		30.501133, 41.960930, 41.135746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990599, 42.341949, 41.564697>,  <30.363140, 42.621719, 40.950508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990599, 42.341949, 41.564697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363647, 42.223099, 41.482784>,  <30.587477, 42.151787, 41.433636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.363647, 42.223099, 41.482784>,  <29.990599, 42.341949, 41.564697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363647, 42.223099, 41.482784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339489, 0.530041, 0.777048,
		-0.122341, -0.794211, 0.595198,
		0.932620, -0.297128, -0.204780,
		30.643433, 42.133961, 41.421349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333178, 42.076508, 42.252167>,  <29.990599, 42.341949, 41.564697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333178, 42.076508, 42.252167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574291, 42.242981, 41.979858>,  <30.718960, 42.342865, 41.816475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.574291, 42.242981, 41.979858>,  <30.333178, 42.076508, 42.252167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574291, 42.242981, 41.979858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500834, 0.466830, 0.728858,
		0.621144, -0.780293, 0.072956,
		0.602781, 0.416187, -0.680766,
		30.755125, 42.367836, 41.775627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079609, 41.892071, 42.343605>,  <30.333178, 42.076508, 42.252167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079609, 41.892071, 42.343605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008600, 42.257500, 42.197254>,  <30.965996, 42.476757, 42.109444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.008600, 42.257500, 42.197254>,  <31.079609, 41.892071, 42.343605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.008600, 42.257500, 42.197254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682039, 0.382226, 0.623479,
		0.709443, -0.138860, -0.690947,
		-0.177522, 0.913576, -0.365876,
		30.955343, 42.531574, 42.087490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715437, 41.448299, 42.345711>,  <31.079609, 41.892071, 42.343605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715437, 41.448299, 42.345711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623869, 41.738045, 42.085590>,  <31.568928, 41.911892, 41.929520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623869, 41.738045, 42.085590>,  <31.715437, 41.448299, 42.345711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623869, 41.738045, 42.085590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477019, 0.665810, 0.573716,
		0.848556, -0.178870, -0.497954,
		-0.228922, 0.724364, -0.650301,
		31.555193, 41.955353, 41.890499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313705, 42.027813, 42.002605>,  <31.715437, 41.448299, 42.345711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313705, 42.027813, 42.002605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936769, 42.118813, 42.100780>,  <31.710608, 42.173412, 42.159687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.936769, 42.118813, 42.100780>,  <32.313705, 42.027813, 42.002605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.936769, 42.118813, 42.100780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326507, 0.785901, 0.525121,
		-0.073427, 0.574980, -0.814866,
		-0.942338, 0.227501, 0.245441,
		31.654068, 42.187061, 42.174412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085224, 42.789379, 41.717907>,  <32.313705, 42.027813, 42.002605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085224, 42.789379, 41.717907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923851, 42.647839, 42.055435>,  <31.827026, 42.562916, 42.257950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923851, 42.647839, 42.055435>,  <32.085224, 42.789379, 41.717907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923851, 42.647839, 42.055435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479352, 0.703789, 0.524312,
		-0.779399, 0.616011, -0.114314,
		-0.403435, -0.353852, 0.843818,
		31.802820, 42.541683, 42.308582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769352, 42.575974, 41.488468>,  <32.085224, 42.789379, 41.717907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769352, 42.575974, 41.488468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153896, 42.469139, 41.461811>,  <33.384624, 42.405037, 41.445816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153896, 42.469139, 41.461811>,  <32.769352, 42.575974, 41.488468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153896, 42.469139, 41.461811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274132, -0.906844, -0.320135,
		0.025069, 0.326035, -0.945025,
		0.961365, -0.267087, -0.066643,
		33.442307, 42.389011, 41.441818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131287, 42.660908, 40.861782>,  <32.769352, 42.575974, 41.488468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131287, 42.660908, 40.861782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349709, 42.366707, 41.022205>,  <33.480762, 42.190186, 41.118458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349709, 42.366707, 41.022205>,  <33.131287, 42.660908, 40.861782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349709, 42.366707, 41.022205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237700, -0.595090, -0.767702,
		0.803317, 0.323879, -0.499785,
		0.546059, -0.735507, 0.401060,
		33.513527, 42.146053, 41.142525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680752, 42.388256, 40.337280>,  <33.131287, 42.660908, 40.861782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680752, 42.388256, 40.337280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596405, 42.106522, 40.608410>,  <33.545795, 41.937481, 40.771088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596405, 42.106522, 40.608410>,  <33.680752, 42.388256, 40.337280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596405, 42.106522, 40.608410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089265, -0.676644, -0.730879,
		0.973431, -0.214623, 0.079809,
		-0.210866, -0.704336, 0.677824,
		33.533146, 41.895222, 40.811756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084156, 41.790642, 40.197369>,  <33.680752, 42.388256, 40.337280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084156, 41.790642, 40.197369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758053, 41.667461, 40.393536>,  <33.562389, 41.593552, 40.511238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758053, 41.667461, 40.393536>,  <34.084156, 41.790642, 40.197369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758053, 41.667461, 40.393536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184305, -0.664858, -0.723875,
		0.548980, -0.680535, 0.485276,
		-0.815262, -0.307954, 0.490420,
		33.513474, 41.575077, 40.540661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058224, 41.015648, 40.302460>,  <34.084156, 41.790642, 40.197369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058224, 41.015648, 40.302460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674122, 41.116352, 40.350681>,  <33.443661, 41.176773, 40.379616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674122, 41.116352, 40.350681>,  <34.058224, 41.015648, 40.302460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674122, 41.116352, 40.350681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263687, -0.676472, -0.687645,
		-0.091570, -0.692100, 0.715969,
		-0.960252, 0.251760, 0.120553,
		33.386047, 41.191879, 40.386848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.646873, 40.414825, 40.324097>,  <34.058224, 41.015648, 40.302460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.646873, 40.414825, 40.324097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364330, 40.682766, 40.232563>,  <33.194805, 40.843529, 40.177643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364330, 40.682766, 40.232563>,  <33.646873, 40.414825, 40.324097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364330, 40.682766, 40.232563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375104, -0.628367, -0.681507,
		-0.600296, -0.395552, 0.695114,
		-0.706358, 0.669846, -0.228833,
		33.152424, 40.883720, 40.163914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045063, 40.019268, 40.217461>,  <33.646873, 40.414825, 40.324097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045063, 40.019268, 40.217461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976364, 40.368912, 40.035721>,  <32.935146, 40.578697, 39.926678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976364, 40.368912, 40.035721>,  <33.045063, 40.019268, 40.217461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976364, 40.368912, 40.035721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490784, -0.475814, -0.729885,
		-0.854187, 0.097636, 0.510717,
		-0.171743, 0.874110, -0.454352,
		32.924843, 40.631145, 39.899414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319271, 40.081562, 40.092075>,  <33.045063, 40.019268, 40.217461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319271, 40.081562, 40.092075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490768, 40.321854, 39.822170>,  <32.593666, 40.466030, 39.660229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490768, 40.321854, 39.822170>,  <32.319271, 40.081562, 40.092075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490768, 40.321854, 39.822170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395801, -0.546491, -0.738030,
		-0.812106, 0.583499, 0.003463,
		0.428748, 0.600730, -0.674759,
		32.619392, 40.502071, 39.619743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844971, 40.052788, 39.620869>,  <32.319271, 40.081562, 40.092075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844971, 40.052788, 39.620869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171471, 40.190235, 39.435108>,  <32.367371, 40.272701, 39.323654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171471, 40.190235, 39.435108>,  <31.844971, 40.052788, 39.620869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171471, 40.190235, 39.435108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260702, -0.498272, -0.826898,
		-0.515531, 0.796024, -0.317134,
		0.816249, 0.343614, -0.464399,
		32.416344, 40.293320, 39.295788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734465, 40.199921, 38.837494>,  <31.844971, 40.052788, 39.620869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734465, 40.199921, 38.837494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130444, 40.196659, 38.781010>,  <32.368031, 40.194702, 38.747120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.130444, 40.196659, 38.781010>,  <31.734465, 40.199921, 38.837494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130444, 40.196659, 38.781010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115218, -0.625609, -0.771582,
		-0.082048, 0.780095, -0.620259,
		0.989946, -0.008158, -0.141211,
		32.427429, 40.194210, 38.738647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.791273, 40.353745, 38.101097>,  <31.734465, 40.199921, 38.837494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.791273, 40.353745, 38.101097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111980, 40.170284, 38.254364>,  <32.304405, 40.060207, 38.346325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.111980, 40.170284, 38.254364>,  <31.791273, 40.353745, 38.101097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111980, 40.170284, 38.254364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134992, -0.763541, -0.631492,
		0.582193, 0.454585, -0.674095,
		0.801766, -0.458648, 0.383163,
		32.352509, 40.032688, 38.369312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223804, 40.196659, 37.560169>,  <31.791273, 40.353745, 38.101097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223804, 40.196659, 37.560169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334503, 39.944263, 37.850067>,  <32.400925, 39.792828, 38.024006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334503, 39.944263, 37.850067>,  <32.223804, 40.196659, 37.560169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334503, 39.944263, 37.850067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239062, -0.775704, -0.584066,
		0.930730, -0.011620, -0.365521,
		0.276750, -0.630990, 0.724749,
		32.417526, 39.754967, 38.067493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463615, 39.771729, 37.123058>,  <32.223804, 40.196659, 37.560169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463615, 39.771729, 37.123058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428074, 39.571564, 37.467545>,  <32.406750, 39.451466, 37.674236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.428074, 39.571564, 37.467545>,  <32.463615, 39.771729, 37.123058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428074, 39.571564, 37.467545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188866, -0.840484, -0.507855,
		0.977975, -0.207779, -0.019831,
		-0.088854, -0.500414, 0.861214,
		32.401417, 39.421440, 37.725910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929588, 39.129101, 37.147659>,  <32.463615, 39.771729, 37.123058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929588, 39.129101, 37.147659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610828, 39.079006, 37.384056>,  <32.419575, 39.048950, 37.525894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610828, 39.079006, 37.384056>,  <32.929588, 39.129101, 37.147659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610828, 39.079006, 37.384056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181440, -0.883496, -0.431873,
		0.576227, -0.451387, 0.681331,
		-0.796895, -0.125237, 0.590994,
		32.371761, 39.041435, 37.561356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901867, 38.381481, 37.178562>,  <32.929588, 39.129101, 37.147659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901867, 38.381481, 37.178562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540733, 38.503429, 37.299854>,  <32.324055, 38.576599, 37.372631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540733, 38.503429, 37.299854>,  <32.901867, 38.381481, 37.178562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540733, 38.503429, 37.299854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372277, -0.907104, -0.196398,
		0.215190, -0.290201, 0.932457,
		-0.902831, 0.304869, 0.303235,
		32.269886, 38.594891, 37.390823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629734, 37.824493, 37.388958>,  <32.901867, 38.381481, 37.178562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629734, 37.824493, 37.388958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318665, 38.070633, 37.337475>,  <32.132023, 38.218319, 37.306583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318665, 38.070633, 37.337475>,  <32.629734, 37.824493, 37.388958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318665, 38.070633, 37.337475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583763, -0.782815, -0.215456,
		-0.233336, -0.092420, 0.967994,
		-0.777673, 0.615353, -0.128708,
		32.085361, 38.255238, 37.298862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173363, 37.393288, 37.317612>,  <32.629734, 37.824493, 37.388958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173363, 37.393288, 37.317612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922804, 37.703278, 37.284035>,  <31.772469, 37.889271, 37.263889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922804, 37.703278, 37.284035>,  <32.173363, 37.393288, 37.317612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922804, 37.703278, 37.284035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750517, -0.628687, -0.203660,
		-0.210605, -0.064571, 0.975436,
		-0.626394, 0.774973, -0.083943,
		31.734886, 37.935768, 37.258850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670372, 37.178143, 37.715694>,  <32.173363, 37.393288, 37.317612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670372, 37.178143, 37.715694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545225, 37.456512, 37.457146>,  <31.470137, 37.623535, 37.302017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545225, 37.456512, 37.457146>,  <31.670372, 37.178143, 37.715694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545225, 37.456512, 37.457146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823940, -0.537402, -0.179783,
		-0.472477, 0.476324, 0.741540,
		-0.312870, 0.695928, -0.646372,
		31.451365, 37.665291, 37.263233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030373, 37.107128, 37.879372>,  <31.670372, 37.178143, 37.715694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030373, 37.107128, 37.879372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002426, 37.270950, 37.515530>,  <30.985659, 37.369244, 37.297222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.002426, 37.270950, 37.515530>,  <31.030373, 37.107128, 37.879372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.002426, 37.270950, 37.515530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672541, -0.692784, -0.260269,
		-0.736755, 0.593564, 0.323844,
		-0.069868, 0.409552, -0.909607,
		30.981466, 37.393818, 37.242649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.354853, 37.227852, 37.652798>,  <31.030373, 37.107128, 37.879372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.354853, 37.227852, 37.652798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566952, 37.189030, 37.315891>,  <30.694212, 37.165737, 37.113747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.566952, 37.189030, 37.315891>,  <30.354853, 37.227852, 37.652798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566952, 37.189030, 37.315891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659418, -0.671640, -0.337740,
		-0.532920, 0.734493, -0.420138,
		0.530249, -0.097058, -0.842268,
		30.726027, 37.159912, 37.063210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.811335, 37.318756, 37.168957>,  <30.354853, 37.227852, 37.652798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.811335, 37.318756, 37.168957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107138, 37.153191, 36.956615>,  <30.284618, 37.053852, 36.829208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107138, 37.153191, 36.956615>,  <29.811335, 37.318756, 37.168957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107138, 37.153191, 36.956615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613696, -0.738597, -0.279019,
		-0.276599, 0.532120, -0.800213,
		0.739507, -0.413911, -0.530855,
		30.328989, 37.029018, 36.797359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578787, 37.134609, 36.515770>,  <29.811335, 37.318756, 37.168957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578787, 37.134609, 36.515770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895367, 36.895023, 36.564514>,  <30.085314, 36.751270, 36.593761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895367, 36.895023, 36.564514>,  <29.578787, 37.134609, 36.515770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895367, 36.895023, 36.564514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606542, -0.794266, 0.035344,
		0.075616, -0.101884, -0.991918,
		0.791448, -0.598967, 0.121856,
		30.132801, 36.715332, 36.601070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480051, 36.610138, 36.011383>,  <29.578787, 37.134609, 36.515770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480051, 36.610138, 36.011383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762117, 36.452244, 36.246983>,  <29.931358, 36.357506, 36.388344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.762117, 36.452244, 36.246983>,  <29.480051, 36.610138, 36.011383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762117, 36.452244, 36.246983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355633, -0.915559, -0.187819,
		0.613404, -0.077025, -0.786004,
		0.705167, -0.394738, 0.589001,
		29.973667, 36.333824, 36.423683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853111, 36.071541, 35.676704>,  <29.480051, 36.610138, 36.011383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853111, 36.071541, 35.676704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887213, 36.015430, 36.071278>,  <29.907673, 35.981766, 36.308022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887213, 36.015430, 36.071278>,  <29.853111, 36.071541, 35.676704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887213, 36.015430, 36.071278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360701, -0.927231, -0.100683,
		0.928777, -0.347224, -0.129648,
		0.085254, -0.140277, 0.986435,
		29.912788, 35.973347, 36.367207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.053785, 35.462887, 35.715637>,  <29.853111, 36.071541, 35.676704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.053785, 35.462887, 35.715637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922523, 35.488838, 36.092594>,  <29.843767, 35.504410, 36.318768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.922523, 35.488838, 36.092594>,  <30.053785, 35.462887, 35.715637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.922523, 35.488838, 36.092594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345908, -0.936598, -0.055968,
		0.879012, -0.344348, 0.329792,
		-0.328154, 0.064881, 0.942393,
		29.824078, 35.508301, 36.375313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.145725, 34.838306, 35.985416>,  <30.053785, 35.462887, 35.715637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.145725, 34.838306, 35.985416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863489, 34.996929, 36.220325>,  <29.694147, 35.092102, 36.361271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863489, 34.996929, 36.220325>,  <30.145725, 34.838306, 35.985416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863489, 34.996929, 36.220325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465370, -0.884301, 0.037996,
		0.534389, -0.246487, 0.808500,
		-0.705591, 0.396556, 0.587268,
		29.651812, 35.115894, 36.396507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021357, 34.312752, 36.431633>,  <30.145725, 34.838306, 35.985416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021357, 34.312752, 36.431633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693798, 34.539074, 36.470158>,  <29.497263, 34.674866, 36.493271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693798, 34.539074, 36.470158>,  <30.021357, 34.312752, 36.431633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693798, 34.539074, 36.470158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510643, -0.794853, 0.327799,
		0.262021, 0.219254, 0.939826,
		-0.818895, 0.565806, 0.096307,
		29.448130, 34.708817, 36.499050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123615, 34.014023, 37.100891>,  <30.021357, 34.312752, 36.431633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.123615, 34.014023, 37.100891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.230114, 33.761551, 36.809486>,  <30.294012, 33.610069, 36.634644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.230114, 33.761551, 36.809486>,  <30.123615, 34.014023, 37.100891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230114, 33.761551, 36.809486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700773, -0.645692, 0.303313,
		-0.661841, 0.429769, -0.614219,
		0.266242, -0.631174, -0.728516,
		30.309988, 33.572197, 36.590931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632442, 33.535252, 37.093441>,  <30.123615, 34.014023, 37.100891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632442, 33.535252, 37.093441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823261, 33.218552, 36.940830>,  <30.937752, 33.028534, 36.849262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.823261, 33.218552, 36.940830>,  <30.632442, 33.535252, 37.093441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.823261, 33.218552, 36.940830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477583, 0.130896, -0.868781,
		0.737795, 0.596661, -0.315681,
		0.477046, -0.791746, -0.381529,
		30.966375, 32.981030, 36.826370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877691, 33.659523, 36.398235>,  <30.632442, 33.535252, 37.093441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877691, 33.659523, 36.398235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853632, 33.260452, 36.385406>,  <30.839197, 33.021011, 36.377708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.853632, 33.260452, 36.385406>,  <30.877691, 33.659523, 36.398235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853632, 33.260452, 36.385406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411408, 0.054056, -0.909847,
		0.909465, -0.041529, -0.413702,
		-0.060148, -0.997674, -0.032076,
		30.835587, 32.961151, 36.375782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473049, 33.754742, 36.816154>,  <30.877691, 33.659523, 36.398235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473049, 33.754742, 36.816154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394583, 33.834656, 37.200157>,  <31.347502, 33.882603, 37.430557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.394583, 33.834656, 37.200157>,  <31.473049, 33.754742, 36.816154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394583, 33.834656, 37.200157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640475, -0.715228, 0.279717,
		0.742503, 0.669729, 0.012350,
		-0.196167, 0.199781, 0.960003,
		31.335733, 33.894588, 37.488159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264690, 33.924217, 36.830494>,  <31.473049, 33.754742, 36.816154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264690, 33.924217, 36.830494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210506, 33.530636, 36.876961>,  <32.177998, 33.294487, 36.904839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210506, 33.530636, 36.876961>,  <32.264690, 33.924217, 36.830494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210506, 33.530636, 36.876961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497111, 0.033922, 0.867024,
		-0.857048, 0.175192, 0.484537,
		-0.135459, -0.983950, 0.116163,
		32.169868, 33.235451, 36.911808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919786, 33.689610, 37.510521>,  <32.264690, 33.924217, 36.830494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919786, 33.689610, 37.510521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166309, 33.405495, 37.374489>,  <32.314224, 33.235023, 37.292870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166309, 33.405495, 37.374489>,  <31.919786, 33.689610, 37.510521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166309, 33.405495, 37.374489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498103, 0.017108, 0.866949,
		-0.609967, -0.703701, 0.364341,
		0.616306, -0.710290, -0.340081,
		32.351200, 33.192410, 37.272465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764030, 33.132168, 37.937508>,  <31.919786, 33.689610, 37.510521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764030, 33.132168, 37.937508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137383, 33.094090, 37.799095>,  <32.361393, 33.071243, 37.716049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137383, 33.094090, 37.799095>,  <31.764030, 33.132168, 37.937508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137383, 33.094090, 37.799095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349108, 0.017314, 0.936923,
		-0.083203, -0.995308, 0.049395,
		0.933382, -0.095199, -0.346029,
		32.417397, 33.065529, 37.695286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041218, 32.530781, 38.238811>,  <31.764030, 33.132168, 37.937508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041218, 32.530781, 38.238811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373112, 32.725380, 38.129364>,  <32.572247, 32.842140, 38.063694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.373112, 32.725380, 38.129364>,  <32.041218, 32.530781, 38.238811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.373112, 32.725380, 38.129364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368257, -0.108759, 0.923341,
		0.419445, -0.866886, -0.269397,
		0.829731, 0.486497, -0.273618,
		32.622032, 32.871330, 38.047279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521729, 32.155487, 38.525646>,  <32.041218, 32.530781, 38.238811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521729, 32.155487, 38.525646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713963, 32.497116, 38.446056>,  <32.829304, 32.702095, 38.398304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713963, 32.497116, 38.446056>,  <32.521729, 32.155487, 38.525646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713963, 32.497116, 38.446056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439411, -0.038176, 0.897474,
		0.758916, -0.518745, -0.393637,
		0.480588, 0.854076, -0.198970,
		32.858139, 32.753338, 38.386364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151867, 32.058750, 38.669514>,  <32.521729, 32.155487, 38.525646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151867, 32.058750, 38.669514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130424, 32.457993, 38.681553>,  <33.117558, 32.697540, 38.688774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130424, 32.457993, 38.681553>,  <33.151867, 32.058750, 38.669514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130424, 32.457993, 38.681553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257191, -0.015320, 0.966239,
		0.964872, 0.059540, -0.255883,
		-0.053610, 0.998108, 0.030095,
		33.114342, 32.757423, 38.690582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808857, 32.325127, 38.810402>,  <33.151867, 32.058750, 38.669514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808857, 32.325127, 38.810402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535572, 32.583004, 38.947571>,  <33.371601, 32.737728, 39.029873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.535572, 32.583004, 38.947571>,  <33.808857, 32.325127, 38.810402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535572, 32.583004, 38.947571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155439, -0.330458, 0.930933,
		0.713484, 0.689329, 0.125564,
		-0.683212, 0.644689, 0.342925,
		33.330608, 32.776409, 39.050449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137321, 32.661358, 39.434620>,  <33.808857, 32.325127, 38.810402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137321, 32.661358, 39.434620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743504, 32.729599, 39.450474>,  <33.507214, 32.770542, 39.459988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743504, 32.729599, 39.450474>,  <34.137321, 32.661358, 39.434620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743504, 32.729599, 39.450474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017247, -0.319629, 0.947386,
		0.174291, 0.932059, 0.317631,
		-0.984543, 0.170599, 0.039633,
		33.448139, 32.780777, 39.462364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084469, 32.986492, 40.061050>,  <34.137321, 32.661358, 39.434620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084469, 32.986492, 40.061050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704159, 32.900555, 39.971722>,  <33.475975, 32.848991, 39.918125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.704159, 32.900555, 39.971722>,  <34.084469, 32.986492, 40.061050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704159, 32.900555, 39.971722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114396, -0.426428, 0.897258,
		-0.287999, 0.878637, 0.380860,
		-0.950773, -0.214840, -0.223324,
		33.418926, 32.836102, 39.904724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664394, 33.389812, 40.577065>,  <34.084469, 32.986492, 40.061050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664394, 33.389812, 40.577065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473343, 33.074661, 40.421566>,  <33.358711, 32.885571, 40.328266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473343, 33.074661, 40.421566>,  <33.664394, 33.389812, 40.577065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473343, 33.074661, 40.421566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101518, -0.390027, 0.915190,
		-0.872677, 0.476586, 0.106305,
		-0.477629, -0.787873, -0.388749,
		33.330055, 32.838299, 40.304939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153065, 33.341698, 41.076679>,  <33.664394, 33.389812, 40.577065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153065, 33.341698, 41.076679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173897, 32.993721, 40.880520>,  <33.186394, 32.784935, 40.762825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173897, 32.993721, 40.880520>,  <33.153065, 33.341698, 41.076679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173897, 32.993721, 40.880520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099095, -0.493141, 0.864287,
		-0.993714, 0.003586, -0.111889,
		0.052078, -0.869942, -0.490397,
		33.189522, 32.732738, 40.733402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723492, 32.980663, 41.341576>,  <33.153065, 33.341698, 41.076679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723492, 32.980663, 41.341576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980888, 32.715252, 41.188919>,  <33.135326, 32.556004, 41.097324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980888, 32.715252, 41.188919>,  <32.723492, 32.980663, 41.341576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980888, 32.715252, 41.188919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047378, -0.463098, 0.885040,
		-0.763985, -0.587598, -0.266563,
		0.643493, -0.663528, -0.381639,
		33.173935, 32.516193, 41.074429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477039, 32.426914, 41.560791>,  <32.723492, 32.980663, 41.341576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477039, 32.426914, 41.560791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848499, 32.312679, 41.466087>,  <33.071377, 32.244141, 41.409264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.848499, 32.312679, 41.466087>,  <32.477039, 32.426914, 41.560791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.848499, 32.312679, 41.466087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072542, -0.486102, 0.870886,
		-0.363798, -0.825922, -0.430701,
		0.928649, -0.285583, -0.236758,
		33.127094, 32.227005, 41.395061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567657, 31.852131, 41.947155>,  <32.477039, 32.426914, 41.560791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567657, 31.852131, 41.947155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945877, 31.923349, 41.838169>,  <33.172810, 31.966080, 41.772778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945877, 31.923349, 41.838169>,  <32.567657, 31.852131, 41.947155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945877, 31.923349, 41.838169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325477, -0.522429, 0.788120,
		-0.002024, -0.833887, -0.551931,
		0.945548, 0.178046, -0.272468,
		33.229542, 31.976763, 41.756428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028870, 31.158426, 41.913021>,  <32.567657, 31.852131, 41.947155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028870, 31.158426, 41.913021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246387, 31.487957, 41.977024>,  <33.376896, 31.685675, 42.015427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246387, 31.487957, 41.977024>,  <33.028870, 31.158426, 41.913021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246387, 31.487957, 41.977024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585464, -0.509008, 0.630985,
		0.601269, -0.249442, -0.759114,
		0.543790, 0.823826, 0.160011,
		33.409523, 31.735106, 42.025028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713013, 30.944515, 41.898979>,  <33.028870, 31.158426, 41.913021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713013, 30.944515, 41.898979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685909, 31.272980, 42.125641>,  <33.669647, 31.470058, 42.261639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.685909, 31.272980, 42.125641>,  <33.713013, 30.944515, 41.898979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685909, 31.272980, 42.125641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465874, -0.476201, 0.745784,
		0.882253, 0.314524, -0.350293,
		-0.067757, 0.821162, 0.566658,
		33.665581, 31.519329, 42.295639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288342, 30.761276, 42.279446>,  <33.713013, 30.944515, 41.898979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288342, 30.761276, 42.279446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157181, 31.086899, 42.471195>,  <34.078484, 31.282272, 42.586246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157181, 31.086899, 42.471195>,  <34.288342, 30.761276, 42.279446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157181, 31.086899, 42.471195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338164, -0.372665, 0.864156,
		0.882115, 0.445462, -0.153088,
		-0.327898, 0.814055, 0.479372,
		34.058811, 31.331116, 42.615005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891933, 31.027533, 42.707932>,  <34.288342, 30.761276, 42.279446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891933, 31.027533, 42.707932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560608, 31.178865, 42.873222>,  <34.361813, 31.269665, 42.972397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.560608, 31.178865, 42.873222>,  <34.891933, 31.027533, 42.707932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560608, 31.178865, 42.873222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289442, -0.342549, 0.893803,
		0.479704, 0.859957, 0.174234,
		-0.828316, 0.378330, 0.413230,
		34.312115, 31.292364, 42.997192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.095901, 31.265127, 43.311726>,  <34.891933, 31.027533, 42.707932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.095901, 31.265127, 43.311726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700199, 31.227144, 43.356197>,  <34.462780, 31.204355, 43.382881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700199, 31.227144, 43.356197>,  <35.095901, 31.265127, 43.311726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700199, 31.227144, 43.356197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126097, -0.169161, 0.977489,
		-0.074011, 0.981003, 0.179317,
		-0.989253, -0.094957, 0.111182,
		34.403423, 31.198658, 43.389553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967049, 31.667130, 43.956566>,  <35.095901, 31.265127, 43.311726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967049, 31.667130, 43.956566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660294, 31.419373, 43.889359>,  <34.476238, 31.270718, 43.849033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660294, 31.419373, 43.889359>,  <34.967049, 31.667130, 43.956566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660294, 31.419373, 43.889359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035245, -0.302053, 0.952639,
		-0.640808, 0.724650, 0.253472,
		-0.766892, -0.619392, -0.168018,
		34.430225, 31.233555, 43.838955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689301, 31.709711, 44.535530>,  <34.967049, 31.667130, 43.956566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689301, 31.709711, 44.535530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540806, 31.371599, 44.381813>,  <34.451710, 31.168732, 44.289581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.540806, 31.371599, 44.381813>,  <34.689301, 31.709711, 44.535530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.540806, 31.371599, 44.381813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159517, -0.465778, 0.870405,
		-0.914733, 0.261827, 0.307751,
		-0.371239, -0.845280, -0.384297,
		34.429436, 31.118015, 44.266525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130329, 31.442957, 44.993786>,  <34.689301, 31.709711, 44.535530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130329, 31.442957, 44.993786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258926, 31.130724, 44.779373>,  <34.336086, 30.943384, 44.650726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258926, 31.130724, 44.779373>,  <34.130329, 31.442957, 44.993786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258926, 31.130724, 44.779373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109525, -0.531631, 0.839865,
		-0.940555, -0.328723, -0.085425,
		0.321497, -0.780583, -0.536031,
		34.355377, 30.896549, 44.618565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683815, 30.917482, 45.175068>,  <34.130329, 31.442957, 44.993786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683815, 30.917482, 45.175068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023510, 30.764359, 45.029598>,  <34.227325, 30.672483, 44.942318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.023510, 30.764359, 45.029598>,  <33.683815, 30.917482, 45.175068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023510, 30.764359, 45.029598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104538, -0.553225, 0.826446,
		-0.517565, -0.739864, -0.429800,
		0.849234, -0.382809, -0.363674,
		34.278278, 30.649515, 44.920494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600193, 30.169830, 45.204594>,  <33.683815, 30.917482, 45.175068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600193, 30.169830, 45.204594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997066, 30.217588, 45.190067>,  <34.235191, 30.246243, 45.181351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997066, 30.217588, 45.190067>,  <33.600193, 30.169830, 45.204594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997066, 30.217588, 45.190067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089304, -0.476030, 0.874883,
		0.087169, -0.871287, -0.482971,
		0.992183, 0.119394, -0.036314,
		34.294720, 30.253407, 45.179173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868195, 29.567650, 45.542152>,  <33.600193, 30.169830, 45.204594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868195, 29.567650, 45.542152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159264, 29.842018, 45.542648>,  <34.333904, 30.006639, 45.542946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159264, 29.842018, 45.542648>,  <33.868195, 29.567650, 45.542152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159264, 29.842018, 45.542648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278710, -0.297323, 0.913192,
		0.626747, -0.664161, -0.407527,
		0.727673, 0.685923, 0.001238,
		34.377567, 30.047794, 45.543018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140808, 29.303505, 46.060390>,  <33.868195, 29.567650, 45.542152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140808, 29.303505, 46.060390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343777, 29.643955, 46.006565>,  <34.465557, 29.848227, 45.974270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343777, 29.643955, 46.006565>,  <34.140808, 29.303505, 46.060390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343777, 29.643955, 46.006565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364914, -0.070780, 0.928347,
		0.780617, -0.520165, -0.346504,
		0.507419, 0.851128, -0.134563,
		34.496002, 29.899294, 45.966198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807312, 29.190866, 46.316185>,  <34.140808, 29.303505, 46.060390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807312, 29.190866, 46.316185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756893, 29.587639, 46.321693>,  <34.726643, 29.825703, 46.324997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756893, 29.587639, 46.321693>,  <34.807312, 29.190866, 46.316185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756893, 29.587639, 46.321693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439067, 0.043336, 0.897409,
		0.889569, 0.119161, -0.440985,
		-0.126046, 0.991929, 0.013769,
		34.719078, 29.885218, 46.325825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483047, 29.465406, 46.555500>,  <34.807312, 29.190866, 46.316185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483047, 29.465406, 46.555500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199268, 29.739498, 46.621410>,  <35.029003, 29.903954, 46.660957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199268, 29.739498, 46.621410>,  <35.483047, 29.465406, 46.555500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199268, 29.739498, 46.621410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414532, 0.216639, 0.883873,
		0.569959, 0.695362, -0.437742,
		-0.709444, 0.685229, 0.164775,
		34.986435, 29.945066, 46.670841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838486, 29.932276, 46.822502>,  <35.483047, 29.465406, 46.555500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838486, 29.932276, 46.822502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462399, 30.023745, 46.923458>,  <35.236748, 30.078627, 46.984032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462399, 30.023745, 46.923458>,  <35.838486, 29.932276, 46.822502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462399, 30.023745, 46.923458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272274, 0.059505, 0.960378,
		0.204594, 0.971683, -0.118210,
		-0.940217, 0.228673, 0.252390,
		35.180332, 30.092346, 46.999176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818920, 30.338243, 47.472023>,  <35.838486, 29.932276, 46.822502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818920, 30.338243, 47.472023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440601, 30.214588, 47.511818>,  <35.213608, 30.140396, 47.535694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440601, 30.214588, 47.511818>,  <35.818920, 30.338243, 47.472023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440601, 30.214588, 47.511818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149247, -0.141698, 0.978594,
		-0.288423, 0.940402, 0.180156,
		-0.945800, -0.309136, 0.099483,
		35.156860, 30.121847, 47.541664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709023, 30.512106, 48.089703>,  <35.818920, 30.338243, 47.472023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709023, 30.512106, 48.089703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444454, 30.219301, 48.024368>,  <35.285713, 30.043619, 47.985168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444454, 30.219301, 48.024368>,  <35.709023, 30.512106, 48.089703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444454, 30.219301, 48.024368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190302, -0.374451, 0.907508,
		-0.725469, 0.569163, 0.386974,
		-0.661423, -0.732011, -0.163340,
		35.246029, 29.999699, 47.975365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191246, 30.643560, 48.628712>,  <35.709023, 30.512106, 48.089703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191246, 30.643560, 48.628712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201366, 30.264618, 48.501038>,  <35.207439, 30.037252, 48.424431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201366, 30.264618, 48.501038>,  <35.191246, 30.643560, 48.628712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201366, 30.264618, 48.501038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175492, -0.310122, 0.934359,
		-0.984156, -0.079654, 0.158407,
		0.025300, -0.947354, -0.319187,
		35.208958, 29.980412, 48.405281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736645, 30.305008, 49.088737>,  <35.191246, 30.643560, 48.628712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736645, 30.305008, 49.088737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981178, 30.023954, 48.943092>,  <35.127899, 29.855322, 48.855705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981178, 30.023954, 48.943092>,  <34.736645, 30.305008, 49.088737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981178, 30.023954, 48.943092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202716, -0.305716, 0.930293,
		-0.764971, -0.642528, -0.044458,
		0.611331, -0.702634, -0.364114,
		35.164577, 29.813164, 48.833858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604183, 29.657808, 49.487709>,  <34.736645, 30.305008, 49.088737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604183, 29.657808, 49.487709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966091, 29.623980, 49.320736>,  <35.183235, 29.603683, 49.220554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966091, 29.623980, 49.320736>,  <34.604183, 29.657808, 49.487709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966091, 29.623980, 49.320736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353713, -0.396742, 0.847044,
		-0.237245, -0.914026, -0.329046,
		0.904766, -0.084569, -0.417428,
		35.237522, 29.598608, 49.195507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836941, 28.947441, 49.726227>,  <34.604183, 29.657808, 49.487709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836941, 28.947441, 49.726227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163460, 29.171982, 49.671753>,  <35.359371, 29.306705, 49.639069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.163460, 29.171982, 49.671753>,  <34.836941, 28.947441, 49.726227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163460, 29.171982, 49.671753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440336, -0.452135, 0.775679,
		0.373853, -0.693151, -0.616259,
		0.816295, 0.561351, -0.136187,
		35.408348, 29.340387, 49.630898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314674, 28.502241, 49.946560>,  <34.836941, 28.947441, 49.726227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314674, 28.502241, 49.946560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536846, 28.833624, 49.917824>,  <35.670147, 29.032454, 49.900581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536846, 28.833624, 49.917824>,  <35.314674, 28.502241, 49.946560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536846, 28.833624, 49.917824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662928, -0.388981, 0.639702,
		0.502023, -0.402930, -0.765258,
		0.555426, 0.828457, -0.071836,
		35.703476, 29.082161, 49.896275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061558, 28.314236, 49.675701>,  <35.314674, 28.502241, 49.946560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061558, 28.314236, 49.675701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059731, 28.673206, 49.852158>,  <36.058636, 28.888588, 49.958031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059731, 28.673206, 49.852158>,  <36.061558, 28.314236, 49.675701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059731, 28.673206, 49.852158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806803, -0.257325, 0.531839,
		0.590803, 0.358343, -0.722871,
		-0.004568, 0.897426, 0.441141,
		36.058361, 28.942434, 49.984501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740345, 28.613543, 49.572716>,  <36.061558, 28.314236, 49.675701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740345, 28.613543, 49.572716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588562, 28.793949, 49.895847>,  <36.497494, 28.902193, 50.089725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588562, 28.793949, 49.895847>,  <36.740345, 28.613543, 49.572716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588562, 28.793949, 49.895847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785787, -0.303825, 0.538730,
		0.488416, 0.839210, -0.239115,
		-0.379459, 0.451018, 0.807833,
		36.474724, 28.929255, 50.138199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207150, 29.033375, 49.909668>,  <36.740345, 28.613543, 49.572716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207150, 29.033375, 49.909668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964878, 28.977877, 50.223076>,  <36.819515, 28.944578, 50.411121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.964878, 28.977877, 50.223076>,  <37.207150, 29.033375, 49.909668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964878, 28.977877, 50.223076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720582, -0.513299, 0.466139,
		0.337504, 0.846921, 0.410872,
		-0.605683, -0.138744, 0.783517,
		36.783173, 28.936255, 50.458130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647373, 29.157583, 50.461456>,  <37.207150, 29.033375, 49.909668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647373, 29.157583, 50.461456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343571, 28.973061, 50.644909>,  <37.161289, 28.862347, 50.754982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343571, 28.973061, 50.644909>,  <37.647373, 29.157583, 50.461456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343571, 28.973061, 50.644909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648637, -0.483768, 0.587569,
		-0.049179, 0.743749, 0.666647,
		-0.759507, -0.461308, 0.458632,
		37.115719, 28.834667, 50.782497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728756, 29.302584, 51.160522>,  <37.647373, 29.157583, 50.461456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728756, 29.302584, 51.160522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482643, 28.987967, 51.181602>,  <37.334976, 28.799196, 51.194252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482643, 28.987967, 51.181602>,  <37.728756, 29.302584, 51.160522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482643, 28.987967, 51.181602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540889, -0.372591, 0.754066,
		-0.573468, 0.492471, 0.654681,
		-0.615284, -0.786542, 0.052704,
		37.298058, 28.752005, 51.197414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459301, 29.251562, 51.735428>,  <37.728756, 29.302584, 51.160522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459301, 29.251562, 51.735428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416279, 28.870426, 51.621922>,  <37.390465, 28.641745, 51.553818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.416279, 28.870426, 51.621922>,  <37.459301, 29.251562, 51.735428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416279, 28.870426, 51.621922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373418, -0.303243, 0.876700,
		-0.921407, -0.011673, 0.388423,
		-0.107552, -0.952842, -0.283769,
		37.384014, 28.584574, 51.536789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.117020, 28.915276, 52.295052>,  <37.459301, 29.251562, 51.735428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.117020, 28.915276, 52.295052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326202, 28.643156, 52.089642>,  <37.451714, 28.479883, 51.966396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326202, 28.643156, 52.089642>,  <37.117020, 28.915276, 52.295052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326202, 28.643156, 52.089642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458156, -0.283685, 0.842387,
		-0.718755, -0.675807, 0.163329,
		0.522957, -0.680300, -0.513525,
		37.483089, 28.439066, 51.935585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972641, 28.321016, 52.621456>,  <37.117020, 28.915276, 52.295052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972641, 28.321016, 52.621456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334461, 28.332478, 52.451294>,  <37.551552, 28.339354, 52.349197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.334461, 28.332478, 52.451294>,  <36.972641, 28.321016, 52.621456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334461, 28.332478, 52.451294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425568, -0.121814, 0.896690,
		-0.026128, -0.992139, -0.122381,
		0.904549, 0.028653, -0.425405,
		37.605827, 28.341074, 52.323673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304569, 27.735510, 52.981064>,  <36.972641, 28.321016, 52.621456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304569, 27.735510, 52.981064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554348, 28.003267, 52.820076>,  <37.704216, 28.163921, 52.723484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554348, 28.003267, 52.820076>,  <37.304569, 27.735510, 52.981064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554348, 28.003267, 52.820076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457583, 0.104069, 0.883056,
		0.632995, -0.735584, -0.241317,
		0.624448, 0.669392, -0.402465,
		37.741684, 28.204084, 52.699337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021992, 27.547174, 52.876545>,  <37.304569, 27.735510, 52.981064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021992, 27.547174, 52.876545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957523, 27.933592, 52.957325>,  <37.918842, 28.165442, 53.005795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.957523, 27.933592, 52.957325>,  <38.021992, 27.547174, 52.876545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957523, 27.933592, 52.957325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584879, -0.071327, 0.807978,
		0.794946, 0.248343, -0.553522,
		-0.161175, 0.966043, 0.201951,
		37.909172, 28.223404, 53.017910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548306, 27.248840, 53.403976>,  <38.021992, 27.547174, 52.876545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548306, 27.248840, 53.403976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744919, 27.447336, 53.690231>,  <38.862888, 27.566433, 53.861984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744919, 27.447336, 53.690231>,  <38.548306, 27.248840, 53.403976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744919, 27.447336, 53.690231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494932, -0.516969, 0.698416,
		0.716546, -0.697488, -0.008503,
		0.491533, 0.496239, 0.715641,
		38.892380, 27.596209, 53.904922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773674, 26.519152, 53.479816>,  <38.548306, 27.248840, 53.403976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773674, 26.519152, 53.479816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929733, 26.186226, 53.322319>,  <39.023369, 25.986469, 53.227821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.929733, 26.186226, 53.322319>,  <38.773674, 26.519152, 53.479816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929733, 26.186226, 53.322319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840636, -0.496456, 0.216478,
		-0.375655, 0.246537, -0.893366,
		0.390147, -0.832317, -0.393744,
		39.046776, 25.936531, 53.204197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301720, 26.283024, 52.973728>,  <38.773674, 26.519152, 53.479816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301720, 26.283024, 52.973728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508724, 25.975418, 53.123821>,  <38.632927, 25.790855, 53.213879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.508724, 25.975418, 53.123821>,  <38.301720, 26.283024, 52.973728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508724, 25.975418, 53.123821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854770, -0.484796, 0.185314,
		0.039402, -0.416640, -0.908217,
		0.517509, -0.769015, 0.375234,
		38.663979, 25.744713, 53.236393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411236, 26.039183, 52.285355>,  <38.301720, 26.283024, 52.973728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411236, 26.039183, 52.285355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475201, 25.682585, 52.115803>,  <38.513580, 25.468626, 52.014072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475201, 25.682585, 52.115803>,  <38.411236, 26.039183, 52.285355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475201, 25.682585, 52.115803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198220, 0.391655, -0.898507,
		0.967025, 0.227699, -0.114083,
		0.159908, -0.891493, -0.423875,
		38.523174, 25.415136, 51.988640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000900, 26.041420, 51.934162>,  <38.411236, 26.039183, 52.285355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000900, 26.041420, 51.934162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760593, 25.767542, 51.769104>,  <38.616409, 25.603214, 51.670071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760593, 25.767542, 51.769104>,  <39.000900, 26.041420, 51.934162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760593, 25.767542, 51.769104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001025, 0.515514, -0.856880,
		0.799425, -0.515206, -0.309001,
		-0.600765, -0.684695, -0.412643,
		38.580364, 25.562134, 51.645309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259369, 25.663778, 51.343445>,  <39.000900, 26.041420, 51.934162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259369, 25.663778, 51.343445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862041, 25.665094, 51.297302>,  <38.623646, 25.665884, 51.269615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862041, 25.665094, 51.297302>,  <39.259369, 25.663778, 51.343445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862041, 25.665094, 51.297302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111351, 0.289884, -0.950562,
		0.030314, -0.957056, -0.288314,
		-0.993319, 0.003289, -0.115357,
		38.564045, 25.666080, 51.262695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966801, 25.380941, 50.732914>,  <39.259369, 25.663778, 51.343445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966801, 25.380941, 50.732914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685413, 25.650108, 50.824398>,  <38.516579, 25.811609, 50.879288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685413, 25.650108, 50.824398>,  <38.966801, 25.380941, 50.732914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685413, 25.650108, 50.824398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097440, 0.410073, -0.906833,
		-0.704011, -0.615646, -0.354044,
		-0.703472, 0.672919, 0.228707,
		38.474373, 25.851984, 50.893009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387577, 25.477804, 50.147026>,  <38.966801, 25.380941, 50.732914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387577, 25.477804, 50.147026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405056, 25.809277, 50.370232>,  <38.415543, 26.008160, 50.504154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.405056, 25.809277, 50.370232>,  <38.387577, 25.477804, 50.147026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405056, 25.809277, 50.370232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113469, 0.550816, -0.826878,
		-0.992580, 0.099452, -0.069959,
		0.043700, 0.828680, 0.558013,
		38.418167, 26.057880, 50.537636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.865887, 25.986967, 49.872326>,  <38.387577, 25.477804, 50.147026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.865887, 25.986967, 49.872326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126053, 26.222258, 50.064556>,  <38.282154, 26.363432, 50.179893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.126053, 26.222258, 50.064556>,  <37.865887, 25.986967, 49.872326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126053, 26.222258, 50.064556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001172, 0.631906, -0.775045,
		-0.759579, 0.504664, 0.410311,
		0.650415, 0.588226, 0.480574,
		38.321178, 26.398726, 50.208729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547100, 26.611229, 49.888714>,  <37.865887, 25.986967, 49.872326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547100, 26.611229, 49.888714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935131, 26.690210, 49.945236>,  <38.167950, 26.737600, 49.979149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935131, 26.690210, 49.945236>,  <37.547100, 26.611229, 49.888714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935131, 26.690210, 49.945236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036006, 0.692515, -0.720504,
		-0.240125, 0.693855, 0.678901,
		0.970074, 0.197456, 0.141307,
		38.226154, 26.749447, 49.987629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491863, 27.267181, 49.894268>,  <37.547100, 26.611229, 49.888714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491863, 27.267181, 49.894268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870037, 27.157536, 49.823814>,  <38.096939, 27.091749, 49.781540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870037, 27.157536, 49.823814>,  <37.491863, 27.267181, 49.894268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870037, 27.157536, 49.823814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143795, 0.836117, -0.529369,
		0.292378, 0.475153, 0.829906,
		0.945430, -0.274112, -0.176138,
		38.153667, 27.075302, 49.770973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786446, 27.844120, 49.899899>,  <37.491863, 27.267181, 49.894268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786446, 27.844120, 49.899899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043301, 27.599499, 49.715000>,  <38.197414, 27.452726, 49.604061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043301, 27.599499, 49.715000>,  <37.786446, 27.844120, 49.899899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043301, 27.599499, 49.715000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241607, 0.733703, -0.635064,
		0.727522, 0.296116, 0.618891,
		0.642135, -0.611552, -0.462241,
		38.235943, 27.416033, 49.576328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403915, 28.279001, 49.771496>,  <37.786446, 27.844120, 49.899899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403915, 28.279001, 49.771496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375587, 27.980675, 49.506546>,  <38.358593, 27.801678, 49.347576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375587, 27.980675, 49.506546>,  <38.403915, 28.279001, 49.771496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375587, 27.980675, 49.506546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025689, 0.662459, -0.748658,
		0.997159, -0.070032, -0.027753,
		-0.070815, -0.745817, -0.662376,
		38.354343, 27.756929, 49.307835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932152, 28.364573, 49.318462>,  <38.403915, 28.279001, 49.771496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932152, 28.364573, 49.318462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695278, 28.119614, 49.108974>,  <38.553154, 27.972637, 48.983280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695278, 28.119614, 49.108974>,  <38.932152, 28.364573, 49.318462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695278, 28.119614, 49.108974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001241, 0.649246, -0.760578,
		0.805802, -0.451052, -0.383713,
		-0.592184, -0.612399, -0.523723,
		38.517624, 27.935894, 48.951859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316135, 28.259600, 48.770573>,  <38.932152, 28.364573, 49.318462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316135, 28.259600, 48.770573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934559, 28.194792, 48.669582>,  <38.705612, 28.155907, 48.608990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.934559, 28.194792, 48.669582>,  <39.316135, 28.259600, 48.770573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934559, 28.194792, 48.669582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135629, 0.517740, -0.844719,
		0.267576, -0.840056, -0.471920,
		-0.953943, -0.162020, -0.252471,
		38.648376, 28.146185, 48.593842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407730, 28.217535, 48.121052>,  <39.316135, 28.259600, 48.770573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407730, 28.217535, 48.121052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011841, 28.259649, 48.159737>,  <38.774307, 28.284918, 48.182949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011841, 28.259649, 48.159737>,  <39.407730, 28.217535, 48.121052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011841, 28.259649, 48.159737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001848, 0.685860, -0.727731,
		-0.142955, -0.720077, -0.679009,
		-0.989728, 0.105287, 0.096717,
		38.714924, 28.291235, 48.188751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108742, 28.204117, 47.422348>,  <39.407730, 28.217535, 48.121052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108742, 28.204117, 47.422348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807472, 28.381042, 47.617111>,  <38.626709, 28.487198, 47.733971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.807472, 28.381042, 47.617111>,  <39.108742, 28.204117, 47.422348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807472, 28.381042, 47.617111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194980, 0.556816, -0.807427,
		-0.628257, -0.703073, -0.333139,
		-0.753177, 0.442316, 0.486909,
		38.581520, 28.513737, 47.763184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512192, 28.139549, 47.031242>,  <39.108742, 28.204117, 47.422348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512192, 28.139549, 47.031242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445881, 28.456694, 47.265808>,  <38.406094, 28.646980, 47.406548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.445881, 28.456694, 47.265808>,  <38.512192, 28.139549, 47.031242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445881, 28.456694, 47.265808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082685, 0.581377, -0.809422,
		-0.982691, -0.182670, -0.030820,
		-0.165775, 0.792863, 0.586419,
		38.396149, 28.694553, 47.441734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955177, 28.471426, 46.780888>,  <38.512192, 28.139549, 47.031242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955177, 28.471426, 46.780888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094772, 28.767954, 47.010201>,  <38.178528, 28.945869, 47.147789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094772, 28.767954, 47.010201>,  <37.955177, 28.471426, 46.780888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094772, 28.767954, 47.010201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289408, 0.667101, -0.686455,
		-0.891319, 0.073652, 0.447354,
		0.348989, 0.741318, 0.573284,
		38.199471, 28.990349, 47.182186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531895, 28.963650, 46.656395>,  <37.955177, 28.471426, 46.780888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531895, 28.963650, 46.656395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845951, 29.160536, 46.806744>,  <38.034386, 29.278667, 46.896954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845951, 29.160536, 46.806744>,  <37.531895, 28.963650, 46.656395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845951, 29.160536, 46.806744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151246, 0.740925, -0.654335,
		-0.600568, 0.456895, 0.656175,
		0.785139, 0.492216, 0.375872,
		38.081493, 29.308201, 46.919506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272133, 29.654743, 46.869568>,  <37.531895, 28.963650, 46.656395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272133, 29.654743, 46.869568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666100, 29.670504, 46.802177>,  <37.902481, 29.679960, 46.761742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666100, 29.670504, 46.802177>,  <37.272133, 29.654743, 46.869568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666100, 29.670504, 46.802177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139985, 0.753774, -0.642050,
		0.101697, 0.655951, 0.747921,
		0.984917, 0.039403, -0.168480,
		37.961575, 29.682325, 46.751633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412872, 30.322666, 46.683163>,  <37.272133, 29.654743, 46.869568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.412872, 30.322666, 46.683163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746239, 30.145880, 46.550442>,  <37.946259, 30.039808, 46.470810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746239, 30.145880, 46.550442>,  <37.412872, 30.322666, 46.683163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746239, 30.145880, 46.550442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138658, 0.748395, -0.648598,
		0.534975, 0.494542, 0.685003,
		0.833412, -0.441965, -0.331801,
		37.996262, 30.013290, 46.450901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932388, 30.822565, 46.542446>,  <37.412872, 30.322666, 46.683163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932388, 30.822565, 46.542446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023418, 30.510269, 46.309669>,  <38.078037, 30.322891, 46.170002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023418, 30.510269, 46.309669>,  <37.932388, 30.822565, 46.542446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023418, 30.510269, 46.309669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215855, 0.623202, -0.751682,
		0.949534, 0.045453, 0.310354,
		0.227579, -0.780739, -0.581940,
		38.091694, 30.276047, 46.135086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326458, 31.140430, 46.098068>,  <37.932388, 30.822565, 46.542446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326458, 31.140430, 46.098068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243423, 30.793287, 45.917522>,  <38.193604, 30.585001, 45.809196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.243423, 30.793287, 45.917522>,  <38.326458, 31.140430, 46.098068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.243423, 30.793287, 45.917522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125870, 0.433884, -0.892133,
		0.970084, -0.242010, 0.019167,
		-0.207589, -0.867857, -0.451366,
		38.181149, 30.532930, 45.782112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735298, 31.094326, 45.418579>,  <38.326458, 31.140430, 46.098068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735298, 31.094326, 45.418579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463688, 30.810501, 45.343269>,  <38.300720, 30.640205, 45.298084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.463688, 30.810501, 45.343269>,  <38.735298, 31.094326, 45.418579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463688, 30.810501, 45.343269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105474, 0.159504, -0.981547,
		0.726499, -0.686353, -0.033467,
		-0.679025, -0.709562, -0.188272,
		38.259979, 30.597633, 45.286789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952667, 30.701561, 44.847836>,  <38.735298, 31.094326, 45.418579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952667, 30.701561, 44.847836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572033, 30.578753, 44.841923>,  <38.343651, 30.505068, 44.838375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572033, 30.578753, 44.841923>,  <38.952667, 30.701561, 44.847836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572033, 30.578753, 44.841923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020616, 0.111729, -0.993525,
		0.306684, -0.945122, -0.112649,
		-0.951588, -0.307021, -0.014781,
		38.286556, 30.486647, 44.837490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840725, 30.206163, 44.216267>,  <38.952667, 30.701561, 44.847836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840725, 30.206163, 44.216267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479958, 30.351360, 44.309883>,  <38.263496, 30.438478, 44.366051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479958, 30.351360, 44.309883>,  <38.840725, 30.206163, 44.216267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479958, 30.351360, 44.309883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285518, -0.094525, -0.953700,
		-0.324063, -0.926985, 0.188895,
		-0.901922, 0.362992, 0.234039,
		38.209381, 30.460258, 44.380096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411129, 29.760475, 43.844166>,  <38.840725, 30.206163, 44.216267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411129, 29.760475, 43.844166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213795, 30.099096, 43.924133>,  <38.095394, 30.302269, 43.972115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.213795, 30.099096, 43.924133>,  <38.411129, 29.760475, 43.844166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.213795, 30.099096, 43.924133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362957, 0.008520, -0.931767,
		-0.790493, -0.532237, 0.303059,
		-0.493338, 0.846552, 0.199914,
		38.065792, 30.353062, 43.984108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828743, 29.654572, 43.531670>,  <38.411129, 29.760475, 43.844166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828743, 29.654572, 43.531670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817337, 30.051805, 43.577225>,  <37.810493, 30.290146, 43.604557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.817337, 30.051805, 43.577225>,  <37.828743, 29.654572, 43.531670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817337, 30.051805, 43.577225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465890, 0.087596, -0.880496,
		-0.884383, -0.078167, 0.460170,
		-0.028517, 0.993085, 0.113886,
		37.808781, 30.349731, 43.611389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.217762, 29.825102, 43.490952>,  <37.828743, 29.654572, 43.531670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.217762, 29.825102, 43.490952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376431, 30.178835, 43.392479>,  <37.471630, 30.391075, 43.333397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376431, 30.178835, 43.392479>,  <37.217762, 29.825102, 43.490952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376431, 30.178835, 43.392479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578905, 0.032862, -0.814732,
		-0.712406, 0.465696, 0.524981,
		0.396669, 0.884334, -0.246183,
		37.495430, 30.444136, 43.318623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669022, 30.237467, 43.194832>,  <37.217762, 29.825102, 43.490952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669022, 30.237467, 43.194832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002499, 30.409185, 43.055889>,  <37.202583, 30.512217, 42.972523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002499, 30.409185, 43.055889>,  <36.669022, 30.237467, 43.194832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002499, 30.409185, 43.055889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444619, 0.148759, -0.883281,
		-0.327518, 0.890828, 0.314893,
		0.833694, 0.429298, -0.347358,
		37.252605, 30.537975, 42.951683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439247, 30.737579, 42.789089>,  <36.669022, 30.237467, 43.194832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439247, 30.737579, 42.789089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816509, 30.705572, 42.660065>,  <37.042866, 30.686367, 42.582649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.816509, 30.705572, 42.660065>,  <36.439247, 30.737579, 42.789089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816509, 30.705572, 42.660065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299479, 0.216176, -0.929290,
		0.144091, 0.973070, 0.179925,
		0.943160, -0.080019, -0.322563,
		37.099457, 30.681566, 42.563297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638966, 31.495739, 42.477577>,  <36.439247, 30.737579, 42.789089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638966, 31.495739, 42.477577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889420, 31.228142, 42.317375>,  <37.039692, 31.067583, 42.221256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889420, 31.228142, 42.317375>,  <36.638966, 31.495739, 42.477577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889420, 31.228142, 42.317375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325398, 0.242584, -0.913931,
		0.708569, 0.702567, -0.065799,
		0.626136, -0.668994, -0.400501,
		37.077259, 31.027443, 42.197224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844715, 31.858625, 41.942413>,  <36.638966, 31.495739, 42.477577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844715, 31.858625, 41.942413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948387, 31.480900, 41.861324>,  <37.010590, 31.254265, 41.812672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.948387, 31.480900, 41.861324>,  <36.844715, 31.858625, 41.942413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948387, 31.480900, 41.861324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281153, 0.127036, -0.951218,
		0.924001, 0.303533, -0.232572,
		0.259181, -0.944314, -0.202720,
		37.026142, 31.197605, 41.800507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287983, 31.848024, 41.293068>,  <36.844715, 31.858625, 41.942413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287983, 31.848024, 41.293068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113438, 31.491444, 41.341896>,  <37.008709, 31.277496, 41.371193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113438, 31.491444, 41.341896>,  <37.287983, 31.848024, 41.293068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113438, 31.491444, 41.341896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279657, 0.005426, -0.960085,
		0.855206, -0.453085, -0.251669,
		-0.436365, -0.891451, 0.122068,
		36.982529, 31.224009, 41.378517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525085, 31.514357, 40.759041>,  <37.287983, 31.848024, 41.293068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525085, 31.514357, 40.759041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226036, 31.280205, 40.884506>,  <37.046604, 31.139713, 40.959785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226036, 31.280205, 40.884506>,  <37.525085, 31.514357, 40.759041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226036, 31.280205, 40.884506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381229, -0.008452, -0.924442,
		0.543801, -0.810715, -0.216845,
		-0.747626, -0.585380, 0.313664,
		37.001747, 31.104591, 40.978607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574940, 30.847376, 40.359383>,  <37.525085, 31.514357, 40.759041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574940, 30.847376, 40.359383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204021, 30.908865, 40.495911>,  <36.981472, 30.945759, 40.577827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204021, 30.908865, 40.495911>,  <37.574940, 30.847376, 40.359383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204021, 30.908865, 40.495911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343747, 0.011330, -0.938994,
		-0.148215, -0.988049, 0.042336,
		-0.927292, 0.153726, 0.341318,
		36.925835, 30.954983, 40.598305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149239, 30.423201, 39.975109>,  <37.574940, 30.847376, 40.359383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149239, 30.423201, 39.975109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888054, 30.692348, 40.114185>,  <36.731342, 30.853836, 40.197632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888054, 30.692348, 40.114185>,  <37.149239, 30.423201, 39.975109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888054, 30.692348, 40.114185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343463, 0.146092, -0.927734,
		-0.675039, -0.725193, 0.135713,
		-0.652959, 0.672869, 0.347694,
		36.692165, 30.894209, 40.218494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471363, 30.188143, 39.768383>,  <37.149239, 30.423201, 39.975109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471363, 30.188143, 39.768383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428654, 30.572794, 39.869473>,  <36.403027, 30.803585, 39.930126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428654, 30.572794, 39.869473>,  <36.471363, 30.188143, 39.768383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428654, 30.572794, 39.869473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448690, 0.180220, -0.875327,
		-0.887286, -0.206858, 0.412230,
		-0.106776, 0.961629, 0.252722,
		36.396622, 30.861282, 39.945290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773254, 30.287565, 39.879463>,  <36.471363, 30.188143, 39.768383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773254, 30.287565, 39.879463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935421, 30.639091, 39.778809>,  <36.032722, 30.850008, 39.718418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935421, 30.639091, 39.778809>,  <35.773254, 30.287565, 39.879463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935421, 30.639091, 39.778809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670122, 0.098489, -0.735688,
		-0.621752, 0.466884, 0.628844,
		0.405415, 0.878817, -0.251633,
		36.057045, 30.902737, 39.703320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231251, 30.639797, 39.655659>,  <35.773254, 30.287565, 39.879463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231251, 30.639797, 39.655659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524090, 30.884403, 39.535599>,  <35.699791, 31.031166, 39.463562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524090, 30.884403, 39.535599>,  <35.231251, 30.639797, 39.655659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524090, 30.884403, 39.535599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503639, 0.189203, -0.842941,
		-0.458680, 0.768280, 0.446496,
		0.732093, 0.611513, -0.300152,
		35.743717, 31.067858, 39.445553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880795, 31.283503, 39.351177>,  <35.231251, 30.639797, 39.655659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880795, 31.283503, 39.351177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246658, 31.243935, 39.194405>,  <35.466175, 31.220194, 39.100342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246658, 31.243935, 39.194405>,  <34.880795, 31.283503, 39.351177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246658, 31.243935, 39.194405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388267, 0.054754, -0.919919,
		0.112460, 0.993588, 0.011674,
		0.914659, -0.098921, -0.391935,
		35.521057, 31.214258, 39.076824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935326, 31.733042, 38.835026>,  <34.880795, 31.283503, 39.351177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935326, 31.733042, 38.835026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217381, 31.462261, 38.750637>,  <35.386616, 31.299793, 38.700005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217381, 31.462261, 38.750637>,  <34.935326, 31.733042, 38.835026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217381, 31.462261, 38.750637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286591, 0.000056, -0.958053,
		0.648568, 0.736027, -0.193968,
		0.705142, -0.676953, -0.210975,
		35.428925, 31.259176, 38.687344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398621, 32.088856, 38.312477>,  <34.935326, 31.733042, 38.835026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398621, 32.088856, 38.312477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518105, 31.708509, 38.279919>,  <35.589794, 31.480301, 38.260384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518105, 31.708509, 38.279919>,  <35.398621, 32.088856, 38.312477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518105, 31.708509, 38.279919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156090, 0.035467, -0.987106,
		0.941493, 0.307561, -0.137827,
		0.298707, -0.950867, -0.081400,
		35.607716, 31.423250, 38.255497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941685, 32.045879, 37.832470>,  <35.398621, 32.088856, 38.312477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941685, 32.045879, 37.832470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789135, 31.676115, 37.833683>,  <35.697605, 31.454256, 37.834412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789135, 31.676115, 37.833683>,  <35.941685, 32.045879, 37.832470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789135, 31.676115, 37.833683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032017, 0.009929, -0.999438,
		0.923865, -0.381260, -0.033384,
		-0.381377, -0.924415, 0.003034,
		35.674721, 31.398790, 37.834595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412315, 31.621334, 37.486065>,  <35.941685, 32.045879, 37.832470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412315, 31.621334, 37.486065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062241, 31.430080, 37.456554>,  <35.852196, 31.315329, 37.438847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062241, 31.430080, 37.456554>,  <36.412315, 31.621334, 37.486065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062241, 31.430080, 37.456554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042481, 0.075965, -0.996205,
		0.481923, -0.874996, -0.046171,
		-0.875183, -0.478133, -0.073780,
		35.799686, 31.286640, 37.434422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752384, 31.893789, 37.072796>,  <36.412315, 31.621334, 37.486065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752384, 31.893789, 37.072796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068165, 31.869762, 36.828449>,  <37.257633, 31.855347, 36.681843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.068165, 31.869762, 36.828449>,  <36.752384, 31.893789, 37.072796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068165, 31.869762, 36.828449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571444, -0.291401, 0.767162,
		-0.224084, -0.954714, -0.195725,
		0.789455, -0.060063, -0.610863,
		37.305000, 31.851744, 36.645191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132744, 31.144913, 37.074093>,  <36.752384, 31.893789, 37.072796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132744, 31.144913, 37.074093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370098, 31.455173, 36.988064>,  <37.512508, 31.641331, 36.936447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.370098, 31.455173, 36.988064>,  <37.132744, 31.144913, 37.074093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370098, 31.455173, 36.988064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656287, -0.311519, 0.687200,
		0.466029, -0.548924, -0.693902,
		0.593384, 0.775654, -0.215075,
		37.548115, 31.687870, 36.923542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840401, 30.979830, 36.766735>,  <37.132744, 31.144913, 37.074093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840401, 30.979830, 36.766735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836319, 31.318943, 36.978832>,  <37.833870, 31.522411, 37.106091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836319, 31.318943, 36.978832>,  <37.840401, 30.979830, 36.766735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836319, 31.318943, 36.978832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744417, -0.347608, 0.570098,
		0.667637, 0.400544, -0.627555,
		-0.010207, 0.847782, 0.530248,
		37.833256, 31.573278, 37.137905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395111, 30.989609, 37.192753>,  <37.840401, 30.979830, 36.766735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395111, 30.989609, 37.192753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277847, 31.336966, 37.352730>,  <38.207489, 31.545380, 37.448715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.277847, 31.336966, 37.352730>,  <38.395111, 30.989609, 37.192753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277847, 31.336966, 37.352730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780506, -0.024208, 0.624679,
		0.552149, 0.495286, -0.670689,
		-0.293159, 0.868392, 0.399941,
		38.189899, 31.597483, 37.472713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901711, 31.571951, 37.172356>,  <38.395111, 30.989609, 37.192753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901711, 31.571951, 37.172356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660454, 31.621922, 37.487473>,  <38.515697, 31.651903, 37.676540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660454, 31.621922, 37.487473>,  <38.901711, 31.571951, 37.172356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660454, 31.621922, 37.487473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789537, -0.046840, 0.611913,
		0.113345, 0.991060, -0.070383,
		-0.603145, 0.124927, 0.787788,
		38.479511, 31.659399, 37.723808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297459, 32.001335, 37.627899>,  <38.901711, 31.571951, 37.172356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297459, 32.001335, 37.627899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014107, 31.858444, 37.871403>,  <38.844097, 31.772709, 38.017506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014107, 31.858444, 37.871403>,  <39.297459, 32.001335, 37.627899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014107, 31.858444, 37.871403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647112, 0.015719, 0.762233,
		-0.281861, 0.933884, 0.220033,
		-0.708378, -0.357230, 0.608758,
		38.801594, 31.751276, 38.054031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511654, 32.329201, 38.168068>,  <39.297459, 32.001335, 37.627899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511654, 32.329201, 38.168068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252407, 32.067928, 38.324677>,  <39.096859, 31.911163, 38.418644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.252407, 32.067928, 38.324677>,  <39.511654, 32.329201, 38.168068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252407, 32.067928, 38.324677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436397, 0.102779, 0.893865,
		-0.624099, 0.750191, 0.218435,
		-0.648119, -0.653184, 0.391525,
		39.057972, 31.871973, 38.442135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234310, 32.668858, 38.737877>,  <39.511654, 32.329201, 38.168068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234310, 32.668858, 38.737877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212536, 32.271648, 38.779716>,  <39.199471, 32.033321, 38.804821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.212536, 32.271648, 38.779716>,  <39.234310, 32.668858, 38.737877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212536, 32.271648, 38.779716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447790, 0.069354, 0.891445,
		-0.892480, 0.095366, 0.440891,
		-0.054436, -0.993023, 0.104600,
		39.196205, 31.973742, 38.811096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139439, 32.617290, 39.454277>,  <39.234310, 32.668858, 38.737877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139439, 32.617290, 39.454277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227955, 32.244328, 39.339985>,  <39.281067, 32.020550, 39.271412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227955, 32.244328, 39.339985>,  <39.139439, 32.617290, 39.454277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227955, 32.244328, 39.339985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359371, -0.194404, 0.912721,
		-0.906577, -0.304661, 0.292061,
		0.221292, -0.932410, -0.285729,
		39.294342, 31.964605, 39.254265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971706, 32.279228, 40.002934>,  <39.139439, 32.617290, 39.454277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971706, 32.279228, 40.002934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236187, 32.043331, 39.817455>,  <39.394875, 31.901793, 39.706169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.236187, 32.043331, 39.817455>,  <38.971706, 32.279228, 40.002934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236187, 32.043331, 39.817455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428083, -0.210997, 0.878763,
		-0.616085, -0.779539, 0.112948,
		0.661199, -0.589744, -0.463700,
		39.434547, 31.866407, 39.678345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929306, 31.565939, 40.336189>,  <38.971706, 32.279228, 40.002934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929306, 31.565939, 40.336189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285397, 31.618525, 40.161732>,  <39.499050, 31.650076, 40.057056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.285397, 31.618525, 40.161732>,  <38.929306, 31.565939, 40.336189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285397, 31.618525, 40.161732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453368, -0.162618, 0.876364,
		0.044287, -0.977892, -0.204368,
		0.890223, 0.131465, -0.436143,
		39.552464, 31.657965, 40.030888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272522, 31.014893, 40.521900>,  <38.929306, 31.565939, 40.336189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272522, 31.014893, 40.521900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565918, 31.262587, 40.409805>,  <39.741955, 31.411203, 40.342548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565918, 31.262587, 40.409805>,  <39.272522, 31.014893, 40.521900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565918, 31.262587, 40.409805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498236, -0.209395, 0.841376,
		0.462328, -0.756771, -0.462116,
		0.733494, 0.619235, -0.280241,
		39.785965, 31.448357, 40.325733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.836296, 30.678162, 40.624397>,  <39.272522, 31.014893, 40.521900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.836296, 30.678162, 40.624397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972672, 31.054180, 40.620956>,  <40.054497, 31.279791, 40.618893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972672, 31.054180, 40.620956>,  <39.836296, 30.678162, 40.624397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972672, 31.054180, 40.620956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521998, -0.181693, 0.833370,
		0.781841, -0.288623, -0.552649,
		0.340943, 0.940045, -0.008606,
		40.074955, 31.336193, 40.618374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.558064, 30.674587, 40.587948>,  <39.836296, 30.678162, 40.624397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.558064, 30.674587, 40.587948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479237, 31.029545, 40.754654>,  <40.431938, 31.242519, 40.854679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.479237, 31.029545, 40.754654>,  <40.558064, 30.674587, 40.587948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479237, 31.029545, 40.754654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485925, -0.280801, 0.827664,
		0.851493, 0.365626, -0.375870,
		-0.197071, 0.887394, 0.416766,
		40.420116, 31.295763, 40.879684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123920, 30.708340, 41.129452>,  <40.558064, 30.674587, 40.587948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123920, 30.708340, 41.129452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890320, 31.017059, 41.230061>,  <40.750160, 31.202291, 41.290428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.890320, 31.017059, 41.230061>,  <41.123920, 30.708340, 41.129452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890320, 31.017059, 41.230061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196358, -0.166340, 0.966320,
		0.787642, 0.613726, -0.054406,
		-0.584006, 0.771798, 0.251526,
		40.715118, 31.248598, 41.305519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537670, 31.111906, 41.613094>,  <41.123920, 30.708340, 41.129452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537670, 31.111906, 41.613094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156601, 31.202173, 41.694565>,  <40.927959, 31.256334, 41.743446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156601, 31.202173, 41.694565>,  <41.537670, 31.111906, 41.613094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156601, 31.202173, 41.694565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176462, -0.135033, 0.975001,
		0.247531, 0.964800, 0.088821,
		-0.952675, 0.225670, 0.203675,
		40.870800, 31.269875, 41.755669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552032, 31.542419, 42.229351>,  <41.537670, 31.111906, 41.613094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552032, 31.542419, 42.229351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186920, 31.379766, 42.213928>,  <40.967854, 31.282175, 42.204674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.186920, 31.379766, 42.213928>,  <41.552032, 31.542419, 42.229351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.186920, 31.379766, 42.213928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040441, -0.183909, 0.982111,
		-0.406450, 0.894890, 0.184313,
		-0.912778, -0.406633, -0.038560,
		40.913086, 31.257776, 42.202362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280666, 31.762018, 42.821697>,  <41.552032, 31.542419, 42.229351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280666, 31.762018, 42.821697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.027504, 31.470955, 42.715904>,  <40.875607, 31.296318, 42.652428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.027504, 31.470955, 42.715904>,  <41.280666, 31.762018, 42.821697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027504, 31.470955, 42.715904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093961, -0.266895, 0.959134,
		-0.768510, 0.631889, 0.100547,
		-0.632901, -0.727656, -0.264484,
		40.837635, 31.252659, 42.636559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865891, 31.678076, 43.408249>,  <41.280666, 31.762018, 42.821697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865891, 31.678076, 43.408249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788700, 31.343998, 43.202255>,  <40.742386, 31.143551, 43.078659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788700, 31.343998, 43.202255>,  <40.865891, 31.678076, 43.408249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788700, 31.343998, 43.202255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325893, -0.440499, 0.836513,
		-0.925502, 0.329256, -0.187180,
		-0.192974, -0.835195, -0.514985,
		40.730808, 31.093439, 43.047760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186329, 31.460062, 43.615204>,  <40.865891, 31.678076, 43.408249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186329, 31.460062, 43.615204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389236, 31.140408, 43.486172>,  <40.510983, 30.948614, 43.408752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.389236, 31.140408, 43.486172>,  <40.186329, 31.460062, 43.615204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389236, 31.140408, 43.486172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178975, -0.463843, 0.867651,
		-0.842997, -0.382400, -0.378320,
		0.507271, -0.799137, -0.322578,
		40.541416, 30.900667, 43.389397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.731663, 30.786312, 43.814041>,  <40.186329, 31.460062, 43.615204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.731663, 30.786312, 43.814041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093918, 30.630917, 43.746048>,  <40.311272, 30.537680, 43.705254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.093918, 30.630917, 43.746048>,  <39.731663, 30.786312, 43.814041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.093918, 30.630917, 43.746048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042965, -0.482852, 0.874647,
		-0.421865, -0.784812, -0.453982,
		0.905640, -0.388489, -0.169979,
		40.365608, 30.514370, 43.695053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744110, 30.027315, 44.009464>,  <39.731663, 30.786312, 43.814041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744110, 30.027315, 44.009464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112411, 30.182861, 44.022060>,  <40.333393, 30.276188, 44.029617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.112411, 30.182861, 44.022060>,  <39.744110, 30.027315, 44.009464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112411, 30.182861, 44.022060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141619, -0.408344, 0.901776,
		0.363526, -0.825857, -0.431056,
		0.920757, 0.388864, 0.031486,
		40.388638, 30.299520, 44.031506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.167313, 29.497126, 44.375492>,  <39.744110, 30.027315, 44.009464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.167313, 29.497126, 44.375492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398064, 29.822517, 44.405067>,  <40.536514, 30.017752, 44.422813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.398064, 29.822517, 44.405067>,  <40.167313, 29.497126, 44.375492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398064, 29.822517, 44.405067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221019, -0.242593, 0.944616,
		0.786361, -0.528585, -0.319740,
		0.576877, 0.813478, 0.073939,
		40.571125, 30.066561, 44.427250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667011, 29.209141, 44.779663>,  <40.167313, 29.497126, 44.375492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667011, 29.209141, 44.779663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702538, 29.606298, 44.811352>,  <40.723854, 29.844593, 44.830364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.702538, 29.606298, 44.811352>,  <40.667011, 29.209141, 44.779663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702538, 29.606298, 44.811352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075931, -0.086050, 0.993393,
		0.993149, -0.082217, -0.083035,
		0.088819, 0.992893, 0.079218,
		40.729183, 29.904167, 44.835117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058678, 29.280832, 45.387497>,  <40.667011, 29.209141, 44.779663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058678, 29.280832, 45.387497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869812, 29.629576, 45.335461>,  <40.756493, 29.838821, 45.304241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869812, 29.629576, 45.335461>,  <41.058678, 29.280832, 45.387497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869812, 29.629576, 45.335461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276353, -0.006268, 0.961036,
		0.837072, 0.489717, 0.243900,
		-0.472164, 0.871859, -0.130088,
		40.728165, 29.891134, 45.296432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.342884, 29.698177, 45.931862>,  <41.058678, 29.280832, 45.387497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.342884, 29.698177, 45.931862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002022, 29.886736, 45.840988>,  <40.797504, 29.999870, 45.786465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.002022, 29.886736, 45.840988>,  <41.342884, 29.698177, 45.931862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002022, 29.886736, 45.840988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097659, 0.283254, 0.954060,
		0.514090, 0.835197, -0.195341,
		-0.852159, 0.471395, -0.227183,
		40.746376, 30.028154, 45.772835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362514, 30.410053, 46.127598>,  <41.342884, 29.698177, 45.931862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362514, 30.410053, 46.127598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970177, 30.333309, 46.114105>,  <40.734776, 30.287264, 46.106010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.970177, 30.333309, 46.114105>,  <41.362514, 30.410053, 46.127598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970177, 30.333309, 46.114105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080271, 0.240305, 0.967373,
		-0.177493, 0.951548, -0.251103,
		-0.980843, -0.191859, -0.033729,
		40.675922, 30.275751, 46.103985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059540, 31.010656, 46.311455>,  <41.362514, 30.410053, 46.127598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.059540, 31.010656, 46.311455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825733, 30.698587, 46.400600>,  <40.685448, 30.511347, 46.454086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825733, 30.698587, 46.400600>,  <41.059540, 31.010656, 46.311455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825733, 30.698587, 46.400600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038112, 0.300768, 0.952935,
		-0.810484, 0.548515, -0.205539,
		-0.584519, -0.780173, 0.222863,
		40.650379, 30.464535, 46.467461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497200, 31.329348, 46.777134>,  <41.059540, 31.010656, 46.311455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497200, 31.329348, 46.777134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500278, 30.936701, 46.853416>,  <40.502125, 30.701113, 46.899185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.500278, 30.936701, 46.853416>,  <40.497200, 31.329348, 46.777134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500278, 30.936701, 46.853416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113023, 0.188633, 0.975522,
		-0.993563, -0.029065, -0.109493,
		0.007700, -0.981617, 0.190704,
		40.502590, 30.642216, 46.910629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.063637, 31.291912, 47.252930>,  <40.497200, 31.329348, 46.777134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.063637, 31.291912, 47.252930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284580, 30.962143, 47.302299>,  <40.417145, 30.764282, 47.331921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.284580, 30.962143, 47.302299>,  <40.063637, 31.291912, 47.252930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.284580, 30.962143, 47.302299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122558, 0.066137, 0.990255,
		-0.824551, -0.562098, -0.064509,
		0.552354, -0.824422, 0.123423,
		40.450287, 30.714817, 47.339325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672894, 30.879412, 47.739517>,  <40.063637, 31.291912, 47.252930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672894, 30.879412, 47.739517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048206, 30.742605, 47.760124>,  <40.273396, 30.660522, 47.772488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048206, 30.742605, 47.760124>,  <39.672894, 30.879412, 47.739517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048206, 30.742605, 47.760124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007152, 0.129723, 0.991525,
		-0.345799, -0.930697, 0.119271,
		0.938281, -0.342016, 0.051514,
		40.329689, 30.640001, 47.775578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641426, 30.441082, 48.326660>,  <39.672894, 30.879412, 47.739517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641426, 30.441082, 48.326660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032116, 30.466396, 48.244678>,  <40.266529, 30.481585, 48.195492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032116, 30.466396, 48.244678>,  <39.641426, 30.441082, 48.326660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032116, 30.466396, 48.244678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204189, 0.018351, 0.978760,
		0.065708, -0.997827, 0.005001,
		0.976724, 0.063291, -0.204951,
		40.325134, 30.485382, 48.183193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978279, 29.906906, 48.661781>,  <39.641426, 30.441082, 48.326660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978279, 29.906906, 48.661781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265442, 30.178936, 48.602314>,  <40.437740, 30.342154, 48.566635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265442, 30.178936, 48.602314>,  <39.978279, 29.906906, 48.661781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265442, 30.178936, 48.602314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233964, -0.034577, 0.971630,
		0.655642, -0.732326, -0.183936,
		0.717910, 0.680076, -0.148667,
		40.480816, 30.382959, 48.557713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446579, 29.670914, 49.150135>,  <39.978279, 29.906906, 48.661781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446579, 29.670914, 49.150135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570843, 30.044588, 49.079948>,  <40.645401, 30.268793, 49.037838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.570843, 30.044588, 49.079948>,  <40.446579, 29.670914, 49.150135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.570843, 30.044588, 49.079948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241674, 0.100905, 0.965097,
		0.919285, -0.342221, -0.194421,
		0.310658, 0.934186, -0.175466,
		40.664040, 30.324844, 49.027309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072590, 29.776117, 49.549488>,  <40.446579, 29.670914, 49.150135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072590, 29.776117, 49.549488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908722, 30.133167, 49.474236>,  <40.810402, 30.347397, 49.429085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908722, 30.133167, 49.474236>,  <41.072590, 29.776117, 49.549488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908722, 30.133167, 49.474236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171782, 0.278031, 0.945087,
		0.895915, 0.354854, -0.267237,
		-0.409668, 0.892624, -0.188134,
		40.785820, 30.400955, 49.417797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515347, 30.240513, 49.842968>,  <41.072590, 29.776117, 49.549488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515347, 30.240513, 49.842968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169258, 30.435392, 49.795601>,  <40.961605, 30.552320, 49.767181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169258, 30.435392, 49.795601>,  <41.515347, 30.240513, 49.842968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169258, 30.435392, 49.795601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019295, 0.203645, 0.978855,
		0.501011, 0.849215, -0.166798,
		-0.865226, 0.487199, -0.118414,
		40.909691, 30.581553, 49.760078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544991, 30.816887, 50.267681>,  <41.515347, 30.240513, 49.842968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544991, 30.816887, 50.267681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155281, 30.746140, 50.211823>,  <40.921455, 30.703691, 50.178307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.155281, 30.746140, 50.211823>,  <41.544991, 30.816887, 50.267681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.155281, 30.746140, 50.211823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158214, 0.095559, 0.982770,
		-0.160478, 0.979584, -0.121084,
		-0.974277, -0.176870, -0.139649,
		40.862999, 30.693079, 50.169930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184654, 31.335943, 50.626343>,  <41.544991, 30.816887, 50.267681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184654, 31.335943, 50.626343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992058, 30.988081, 50.582783>,  <40.876499, 30.779364, 50.556648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.992058, 30.988081, 50.582783>,  <41.184654, 31.335943, 50.626343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992058, 30.988081, 50.582783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467272, 0.149601, 0.871365,
		-0.741498, 0.470441, -0.478399,
		-0.481495, -0.869658, -0.108895,
		40.847610, 30.727184, 50.550114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381687, 31.628145, 51.222057>,  <41.184654, 31.335943, 50.626343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381687, 31.628145, 51.222057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226875, 31.955040, 51.392860>,  <41.133987, 32.151176, 51.495342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.226875, 31.955040, 51.392860>,  <41.381687, 31.628145, 51.222057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226875, 31.955040, 51.392860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055617, 0.482942, -0.873884,
		-0.920387, -0.314473, -0.232367,
		-0.387033, 0.817235, 0.427003,
		41.110764, 32.200211, 51.520962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.715504, 31.830900, 50.884415>,  <41.381687, 31.628145, 51.222057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.715504, 31.830900, 50.884415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891312, 32.151283, 51.047039>,  <40.996796, 32.343513, 51.144615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.891312, 32.151283, 51.047039>,  <40.715504, 31.830900, 50.884415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.891312, 32.151283, 51.047039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051916, 0.474519, -0.878713,
		-0.896733, 0.365102, 0.250141,
		0.439516, 0.800957, 0.406563,
		41.023167, 32.391571, 51.169006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328712, 32.390091, 50.710480>,  <40.715504, 31.830900, 50.884415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328712, 32.390091, 50.710480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686916, 32.548042, 50.792587>,  <40.901840, 32.642815, 50.841850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.686916, 32.548042, 50.792587>,  <40.328712, 32.390091, 50.710480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686916, 32.548042, 50.792587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033364, 0.400370, -0.915746,
		-0.443791, 0.826907, 0.345360,
		0.895509, 0.394877, 0.205270,
		40.955570, 32.666504, 50.854168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288338, 33.128750, 50.501507>,  <40.328712, 32.390091, 50.710480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288338, 33.128750, 50.501507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671497, 33.014992, 50.517197>,  <40.901394, 32.946735, 50.526611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.671497, 33.014992, 50.517197>,  <40.288338, 33.128750, 50.501507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671497, 33.014992, 50.517197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164442, 0.431529, -0.886984,
		0.235330, 0.856096, 0.460130,
		0.957903, -0.284399, 0.039226,
		40.958870, 32.929672, 50.528965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675640, 33.724312, 50.260818>,  <40.288338, 33.128750, 50.501507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675640, 33.724312, 50.260818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949402, 33.434292, 50.230103>,  <41.113659, 33.260281, 50.211674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949402, 33.434292, 50.230103>,  <40.675640, 33.724312, 50.260818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949402, 33.434292, 50.230103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108253, 0.205209, -0.972713,
		0.721021, 0.657417, 0.218935,
		0.684405, -0.725046, -0.076792,
		41.154724, 33.216778, 50.207066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.098976, 34.001606, 49.794716>,  <40.675640, 33.724312, 50.260818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.098976, 34.001606, 49.794716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205658, 33.616096, 49.793205>,  <41.269669, 33.384792, 49.792297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.205658, 33.616096, 49.793205>,  <41.098976, 34.001606, 49.794716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205658, 33.616096, 49.793205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393009, 0.112338, -0.912647,
		0.880007, 0.241921, 0.408732,
		0.266704, -0.963771, -0.003781,
		41.285667, 33.326965, 49.792072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613052, 33.974079, 49.331966>,  <41.098976, 34.001606, 49.794716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613052, 33.974079, 49.331966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513824, 33.586609, 49.336357>,  <41.454288, 33.354126, 49.338989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.513824, 33.586609, 49.336357>,  <41.613052, 33.974079, 49.331966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513824, 33.586609, 49.336357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038818, -0.021258, -0.999020,
		0.967964, -0.247402, 0.042876,
		-0.248072, -0.968679, 0.010973,
		41.439404, 33.296005, 49.339649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130016, 33.630474, 48.921776>,  <41.613052, 33.974079, 49.331966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130016, 33.630474, 48.921776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836899, 33.358353, 48.927540>,  <41.661030, 33.195080, 48.930996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836899, 33.358353, 48.927540>,  <42.130016, 33.630474, 48.921776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836899, 33.358353, 48.927540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110498, -0.139861, -0.983986,
		0.671424, -0.719463, 0.177661,
		-0.732789, -0.680303, 0.014407,
		41.617062, 33.154263, 48.931862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491249, 33.061905, 48.628990>,  <42.130016, 33.630474, 48.921776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491249, 33.061905, 48.628990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.093391, 33.053535, 48.588493>,  <41.854679, 33.048512, 48.564194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.093391, 33.053535, 48.588493>,  <42.491249, 33.061905, 48.628990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.093391, 33.053535, 48.588493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102608, -0.080118, -0.991490,
		0.012640, -0.996566, 0.081836,
		-0.994642, -0.020929, -0.101243,
		41.794998, 33.047256, 48.558121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256199, 32.480141, 48.168121>,  <42.491249, 33.061905, 48.628990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256199, 32.480141, 48.168121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961319, 32.748711, 48.137871>,  <41.784389, 32.909855, 48.119720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961319, 32.748711, 48.137871>,  <42.256199, 32.480141, 48.168121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961319, 32.748711, 48.137871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014670, -0.096000, -0.995273,
		-0.675515, -0.734825, 0.060921,
		-0.737201, 0.671428, -0.075630,
		41.740158, 32.950138, 48.115181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883839, 32.264759, 47.532745>,  <42.256199, 32.480141, 48.168121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.883839, 32.264759, 47.532745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.702576, 32.615601, 47.596420>,  <41.593819, 32.826103, 47.634624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.702576, 32.615601, 47.596420>,  <41.883839, 32.264759, 47.532745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702576, 32.615601, 47.596420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310377, 0.012156, -0.950536,
		-0.835650, -0.480153, 0.266723,
		-0.453160, 0.877100, 0.159186,
		41.566628, 32.878731, 47.644176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.383484, 32.261127, 47.009510>,  <41.883839, 32.264759, 47.532745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.383484, 32.261127, 47.009510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389645, 32.641548, 47.132969>,  <41.393341, 32.869801, 47.207043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.389645, 32.641548, 47.132969>,  <41.383484, 32.261127, 47.009510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389645, 32.641548, 47.132969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187532, 0.305953, -0.933394,
		-0.982138, -0.043503, 0.183065,
		0.015404, 0.951052, 0.308646,
		41.394264, 32.926865, 47.225563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759560, 32.580273, 46.762207>,  <41.383484, 32.261127, 47.009510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759560, 32.580273, 46.762207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058834, 32.841930, 46.806610>,  <41.238400, 32.998924, 46.833252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058834, 32.841930, 46.806610>,  <40.759560, 32.580273, 46.762207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058834, 32.841930, 46.806610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123788, 0.301991, -0.945240,
		-0.651843, 0.693470, 0.306919,
		0.748182, 0.654141, 0.111007,
		41.283287, 33.038174, 46.839912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555656, 33.316448, 46.462627>,  <40.759560, 32.580273, 46.762207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555656, 33.316448, 46.462627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953922, 33.341370, 46.490276>,  <41.192883, 33.356323, 46.506866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.953922, 33.341370, 46.490276>,  <40.555656, 33.316448, 46.462627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953922, 33.341370, 46.490276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028017, 0.507647, -0.861109,
		-0.088743, 0.859309, 0.503699,
		0.995660, 0.062306, 0.069125,
		41.252621, 33.360062, 46.511013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.629066, 33.969662, 46.242737>,  <40.555656, 33.316448, 46.462627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.629066, 33.969662, 46.242737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976425, 33.774357, 46.208138>,  <41.184841, 33.657173, 46.187378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.976425, 33.774357, 46.208138>,  <40.629066, 33.969662, 46.242737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976425, 33.774357, 46.208138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142864, 0.413405, -0.899269,
		0.474841, 0.768566, 0.428756,
		0.868399, -0.488264, -0.086501,
		41.236946, 33.627876, 46.182186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033577, 34.403679, 45.754467>,  <40.629066, 33.969662, 46.242737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033577, 34.403679, 45.754467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281521, 34.089931, 45.745075>,  <41.430286, 33.901684, 45.739441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281521, 34.089931, 45.745075>,  <41.033577, 34.403679, 45.754467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281521, 34.089931, 45.745075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033324, 0.003579, -0.999438,
		0.784008, 0.620290, -0.023920,
		0.619856, -0.784364, -0.023477,
		41.467476, 33.854622, 45.738033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691429, 34.593655, 45.290516>,  <41.033577, 34.403679, 45.754467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691429, 34.593655, 45.290516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635956, 34.197521, 45.290058>,  <41.602673, 33.959839, 45.289783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.635956, 34.197521, 45.290058>,  <41.691429, 34.593655, 45.290516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.635956, 34.197521, 45.290058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026921, -0.002617, -0.999634,
		0.989971, -0.138664, 0.027024,
		-0.138684, -0.990336, -0.001142,
		41.594349, 33.900421, 45.289715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091557, 34.338100, 44.784916>,  <41.691429, 34.593655, 45.290516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091557, 34.338100, 44.784916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853489, 34.022888, 44.847885>,  <41.710648, 33.833763, 44.885666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.853489, 34.022888, 44.847885>,  <42.091557, 34.338100, 44.784916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.853489, 34.022888, 44.847885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042611, -0.164676, -0.985427,
		0.802468, -0.593206, 0.064432,
		-0.595171, -0.788028, 0.157424,
		41.674938, 33.786480, 44.895111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365356, 33.803982, 44.397755>,  <42.091557, 34.338100, 44.784916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365356, 33.803982, 44.397755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978210, 33.715813, 44.446163>,  <41.745922, 33.662910, 44.475208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978210, 33.715813, 44.446163>,  <42.365356, 33.803982, 44.397755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978210, 33.715813, 44.446163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078639, -0.191828, -0.978273,
		0.238855, -0.956354, 0.168330,
		-0.967866, -0.220428, 0.121025,
		41.687851, 33.649685, 44.482471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202240, 33.191490, 44.009327>,  <42.365356, 33.803982, 44.397755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202240, 33.191490, 44.009327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828033, 33.320889, 44.066135>,  <41.603512, 33.398525, 44.100220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828033, 33.320889, 44.066135>,  <42.202240, 33.191490, 44.009327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828033, 33.320889, 44.066135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098428, 0.147423, -0.984164,
		-0.339307, -0.934676, -0.106075,
		-0.935512, 0.323492, 0.142020,
		41.547379, 33.417934, 44.108742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942459, 32.886478, 43.455841>,  <42.202240, 33.191490, 44.009327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942459, 32.886478, 43.455841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686413, 33.170486, 43.573227>,  <41.532784, 33.340893, 43.643658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686413, 33.170486, 43.573227>,  <41.942459, 32.886478, 43.455841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686413, 33.170486, 43.573227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088518, 0.311271, -0.946190,
		-0.763162, -0.631648, -0.136400,
		-0.640116, 0.710022, 0.293462,
		41.494377, 33.383492, 43.661266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286243, 32.720291, 43.095703>,  <41.942459, 32.886478, 43.455841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286243, 32.720291, 43.095703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.285248, 33.109444, 43.188213>,  <41.284649, 33.342937, 43.243721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.285248, 33.109444, 43.188213>,  <41.286243, 32.720291, 43.095703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.285248, 33.109444, 43.188213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254280, 0.223057, -0.941057,
		-0.967128, -0.061152, 0.246830,
		-0.002490, 0.972885, 0.231274,
		41.284500, 33.401310, 43.257595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622093, 32.917965, 42.920219>,  <41.286243, 32.720291, 43.095703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622093, 32.917965, 42.920219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856766, 33.241806, 42.912647>,  <40.997570, 33.436111, 42.908104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.856766, 33.241806, 42.912647>,  <40.622093, 32.917965, 42.920219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.856766, 33.241806, 42.912647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195722, 0.119067, -0.973404,
		-0.785812, 0.574781, 0.228310,
		0.586678, 0.809599, -0.018933,
		41.032768, 33.484684, 42.906967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290676, 33.288296, 42.417400>,  <40.622093, 32.917965, 42.920219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290676, 33.288296, 42.417400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638939, 33.477379, 42.471813>,  <40.847897, 33.590828, 42.504463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638939, 33.477379, 42.471813>,  <40.290676, 33.288296, 42.417400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638939, 33.477379, 42.471813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072501, 0.396860, -0.915011,
		-0.486518, 0.786798, 0.379800,
		0.870657, 0.472706, 0.136036,
		40.900135, 33.619190, 42.512623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163548, 33.935684, 42.128639>,  <40.290676, 33.288296, 42.417400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163548, 33.935684, 42.128639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560825, 33.889538, 42.122311>,  <40.799194, 33.861851, 42.118515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.560825, 33.889538, 42.122311>,  <40.163548, 33.935684, 42.128639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.560825, 33.889538, 42.122311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037699, 0.447136, -0.893672,
		0.110172, 0.886996, 0.448443,
		0.993197, -0.115363, -0.015823,
		40.858784, 33.854927, 42.117565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.427513, 34.523499, 41.858250>,  <40.163548, 33.935684, 42.128639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.427513, 34.523499, 41.858250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727718, 34.263050, 41.813057>,  <40.907841, 34.106781, 41.785942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727718, 34.263050, 41.813057>,  <40.427513, 34.523499, 41.858250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727718, 34.263050, 41.813057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175523, 0.361223, -0.915811,
		0.637115, 0.667501, 0.385391,
		0.750517, -0.651122, -0.112979,
		40.952873, 34.067715, 41.779163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.177822, 34.844959, 41.657143>,  <40.427513, 34.523499, 41.858250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.177822, 34.844959, 41.657143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140385, 34.470249, 41.522274>,  <41.117920, 34.245422, 41.441353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140385, 34.470249, 41.522274>,  <41.177822, 34.844959, 41.657143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140385, 34.470249, 41.522274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246361, 0.306338, -0.919491,
		0.964648, -0.169129, 0.202113,
		-0.093598, -0.936778, -0.337175,
		41.112305, 34.189217, 41.421120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756165, 34.731834, 41.258675>,  <41.177822, 34.844959, 41.657143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756165, 34.731834, 41.258675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521778, 34.430038, 41.140427>,  <41.381145, 34.248962, 41.069477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.521778, 34.430038, 41.140427>,  <41.756165, 34.731834, 41.258675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521778, 34.430038, 41.140427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239744, 0.187065, -0.952643,
		0.774057, -0.629092, 0.071269,
		-0.585968, -0.754486, -0.295620,
		41.345989, 34.203693, 41.051739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.076290, 34.415249, 40.726727>,  <41.756165, 34.731834, 41.258675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.076290, 34.415249, 40.726727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690250, 34.316845, 40.690807>,  <41.458626, 34.257805, 40.669258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.690250, 34.316845, 40.690807>,  <42.076290, 34.415249, 40.726727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690250, 34.316845, 40.690807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057268, 0.136330, -0.989007,
		0.255542, -0.959633, -0.117484,
		-0.965100, -0.246005, -0.089795,
		41.400719, 34.243042, 40.663868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123257, 33.967655, 40.230526>,  <42.076290, 34.415249, 40.726727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123257, 33.967655, 40.230526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729664, 34.038937, 40.232330>,  <41.493507, 34.081703, 40.233414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.729664, 34.038937, 40.232330>,  <42.123257, 33.967655, 40.230526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.729664, 34.038937, 40.232330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031343, 0.197884, -0.979724,
		-0.175481, -0.963891, -0.200300,
		-0.983984, 0.178201, 0.004514,
		41.434467, 34.092396, 40.233685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871193, 33.491440, 39.857868>,  <42.123257, 33.967655, 40.230526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871193, 33.491440, 39.857868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596249, 33.781956, 39.860378>,  <41.431282, 33.956264, 39.861885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596249, 33.781956, 39.860378>,  <41.871193, 33.491440, 39.857868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596249, 33.781956, 39.860378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090067, -0.076658, -0.992981,
		-0.720708, -0.683104, 0.118106,
		-0.687364, 0.726286, 0.006277,
		41.390038, 33.999840, 39.862263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289482, 33.199509, 39.419277>,  <41.871193, 33.491440, 39.857868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289482, 33.199509, 39.419277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221985, 33.592339, 39.452881>,  <41.181488, 33.828037, 39.473045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221985, 33.592339, 39.452881>,  <41.289482, 33.199509, 39.419277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221985, 33.592339, 39.452881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245555, 0.040662, -0.968529,
		-0.954583, -0.184064, 0.234292,
		-0.168744, 0.982073, 0.084013,
		41.171360, 33.886959, 39.478085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.742802, 33.248585, 39.006889>,  <41.289482, 33.199509, 39.419277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.742802, 33.248585, 39.006889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868877, 33.625721, 39.050156>,  <40.944523, 33.852005, 39.076115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868877, 33.625721, 39.050156>,  <40.742802, 33.248585, 39.006889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868877, 33.625721, 39.050156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382922, 0.230631, -0.894528,
		-0.868347, 0.240526, 0.433729,
		0.315189, 0.942845, 0.108165,
		40.963432, 33.908573, 39.082603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.186348, 33.760780, 38.919956>,  <40.742802, 33.248585, 39.006889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.186348, 33.760780, 38.919956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540352, 33.923714, 38.829765>,  <40.752754, 34.021473, 38.775650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.540352, 33.923714, 38.829765>,  <40.186348, 33.760780, 38.919956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540352, 33.923714, 38.829765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336527, 0.225019, -0.914394,
		-0.321725, 0.885126, 0.336222,
		0.885010, 0.407331, -0.225474,
		40.805855, 34.045914, 38.762123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.909222, 34.309380, 38.520573>,  <40.186348, 33.760780, 38.919956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.909222, 34.309380, 38.520573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301117, 34.280197, 38.445961>,  <40.536255, 34.262688, 38.401196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301117, 34.280197, 38.445961>,  <39.909222, 34.309380, 38.520573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301117, 34.280197, 38.445961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179985, 0.087867, -0.979737,
		0.087867, 0.993457, 0.072956,
		0.979737, -0.072956, -0.186528,
		40.595039, 34.258312, 38.390003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907593, 34.896713, 38.114758>,  <39.909222, 34.309380, 38.520573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907593, 34.896713, 38.114758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217823, 34.667233, 38.009426>,  <40.403961, 34.529545, 37.946228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217823, 34.667233, 38.009426>,  <39.907593, 34.896713, 38.114758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217823, 34.667233, 38.009426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228345, 0.133925, -0.964325,
		0.588506, 0.808038, -0.027134,
		0.775577, -0.573706, -0.263327,
		40.450497, 34.495121, 37.930428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.142921, 35.178661, 37.545891>,  <39.907593, 34.896713, 38.114758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.142921, 35.178661, 37.545891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290745, 34.808231, 37.515381>,  <40.379436, 34.585976, 37.497074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.290745, 34.808231, 37.515381>,  <40.142921, 35.178661, 37.545891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290745, 34.808231, 37.515381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228925, -0.011186, -0.973380,
		0.900567, 0.377179, -0.216135,
		0.369556, -0.926073, -0.076272,
		40.401611, 34.530411, 37.492500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401535, 35.238823, 36.906998>,  <40.142921, 35.178661, 37.545891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401535, 35.238823, 36.906998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380150, 34.844780, 36.972374>,  <40.367317, 34.608356, 37.011600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.380150, 34.844780, 36.972374>,  <40.401535, 35.238823, 36.906998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380150, 34.844780, 36.972374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122611, -0.155962, -0.980124,
		0.991014, -0.072443, -0.112446,
		-0.053466, -0.985103, 0.163443,
		40.364109, 34.549248, 37.021408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786144, 34.950741, 36.390739>,  <40.401535, 35.238823, 36.906998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786144, 34.950741, 36.390739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561611, 34.642155, 36.510571>,  <40.426891, 34.457005, 36.582470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561611, 34.642155, 36.510571>,  <40.786144, 34.950741, 36.390739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561611, 34.642155, 36.510571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382784, -0.078913, -0.920461,
		0.733742, -0.631362, -0.251007,
		-0.561337, -0.771462, 0.299578,
		40.393211, 34.410717, 36.600445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822456, 34.468735, 35.813370>,  <40.786144, 34.950741, 36.390739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822456, 34.468735, 35.813370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518105, 34.349720, 36.044033>,  <40.335491, 34.278313, 36.182430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518105, 34.349720, 36.044033>,  <40.822456, 34.468735, 35.813370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518105, 34.349720, 36.044033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504104, -0.288527, -0.814022,
		0.408578, -0.910070, 0.069548,
		-0.760883, -0.297532, 0.576655,
		40.289841, 34.260460, 36.217030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.772457, 33.708897, 35.677986>,  <40.822456, 34.468735, 35.813370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.772457, 33.708897, 35.677986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444809, 33.913151, 35.782520>,  <40.248222, 34.035706, 35.845242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444809, 33.913151, 35.782520>,  <40.772457, 33.708897, 35.677986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444809, 33.913151, 35.782520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448002, -0.284960, -0.847403,
		-0.358249, -0.811199, 0.462183,
		-0.819117, 0.510640, 0.261332,
		40.199074, 34.066341, 35.860920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.970257, 33.153164, 36.068855>,  <40.772457, 33.708897, 35.677986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.970257, 33.153164, 36.068855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165588, 33.501911, 36.083691>,  <41.282787, 33.711159, 36.092594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165588, 33.501911, 36.083691>,  <40.970257, 33.153164, 36.068855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165588, 33.501911, 36.083691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868546, -0.489710, 0.076234,
		0.084631, -0.005011, -0.996400,
		0.488329, 0.871871, 0.037092,
		41.312088, 33.763474, 36.094818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644371, 33.373287, 35.870281>,  <40.970257, 33.153164, 36.068855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644371, 33.373287, 35.870281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766636, 33.179386, 36.198082>,  <41.839996, 33.063046, 36.394760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766636, 33.179386, 36.198082>,  <41.644371, 33.373287, 35.870281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766636, 33.179386, 36.198082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647529, 0.736843, 0.194342,
		-0.698051, 0.471247, 0.539120,
		0.305664, -0.484757, 0.819500,
		41.858334, 33.033958, 36.443932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816929, 33.862583, 36.420452>,  <41.644371, 33.373287, 35.870281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816929, 33.862583, 36.420452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026752, 33.522869, 36.444275>,  <42.152645, 33.319038, 36.458569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.026752, 33.522869, 36.444275>,  <41.816929, 33.862583, 36.420452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026752, 33.522869, 36.444275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851200, 0.521751, -0.056867,
		0.017222, 0.080525, 0.996604,
		0.524558, -0.849289, 0.059558,
		42.184120, 33.268082, 36.462143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.533573, 33.946053, 36.959297>,  <41.816929, 33.862583, 36.420452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.533573, 33.946053, 36.959297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505749, 33.728554, 36.624752>,  <42.489052, 33.598057, 36.424026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505749, 33.728554, 36.624752>,  <42.533573, 33.946053, 36.959297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505749, 33.728554, 36.624752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789374, 0.482625, -0.379424,
		0.609959, -0.686597, 0.395645,
		-0.069563, -0.543745, -0.836363,
		42.484879, 33.565430, 36.373844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.294621, 33.749817, 36.831642>,  <42.533573, 33.946053, 36.959297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.294621, 33.749817, 36.831642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.054718, 33.769035, 36.512146>,  <42.910778, 33.780567, 36.320450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.054718, 33.769035, 36.512146>,  <43.294621, 33.749817, 36.831642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.054718, 33.769035, 36.512146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609609, 0.674040, -0.417189,
		0.518338, -0.737130, -0.433550,
		-0.599752, 0.048051, -0.798742,
		42.874794, 33.783451, 36.272522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.703209, 33.691475, 36.278831>,  <43.294621, 33.749817, 36.831642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.703209, 33.691475, 36.278831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369152, 33.895134, 36.195595>,  <43.168716, 34.017330, 36.145653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.369152, 33.895134, 36.195595>,  <43.703209, 33.691475, 36.278831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.369152, 33.895134, 36.195595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541271, 0.693514, -0.475462,
		-0.097768, -0.509713, -0.854771,
		-0.835145, 0.509148, -0.208090,
		43.118610, 34.047878, 36.133167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.990566, 34.442722, 36.302319>,  <43.703209, 33.691475, 36.278831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.990566, 34.442722, 36.302319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.285393, 34.501057, 36.566277>,  <44.462288, 34.536057, 36.724651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.285393, 34.501057, 36.566277>,  <43.990566, 34.442722, 36.302319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.285393, 34.501057, 36.566277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544259, 0.706944, 0.451677,
		-0.400642, -0.692072, 0.600435,
		0.737067, 0.145831, 0.659898,
		44.506512, 34.544807, 36.764244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.657112, 34.447166, 36.928669>,  <43.990566, 34.442722, 36.302319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.657112, 34.447166, 36.928669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005230, 34.643158, 36.948719>,  <44.214100, 34.760754, 36.960751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.005230, 34.643158, 36.948719>,  <43.657112, 34.447166, 36.928669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.005230, 34.643158, 36.948719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489382, 0.848740, 0.200363,
		0.055627, -0.198907, 0.978438,
		0.870294, 0.489976, 0.050128,
		44.266319, 34.790150, 36.963757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816643, 34.692390, 37.650925>,  <43.657112, 34.447166, 36.928669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816643, 34.692390, 37.650925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.951843, 34.937542, 37.365231>,  <44.032963, 35.084633, 37.193813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.951843, 34.937542, 37.365231>,  <43.816643, 34.692390, 37.650925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.951843, 34.937542, 37.365231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613585, 0.718942, 0.326552,
		0.713625, 0.327859, 0.619070,
		0.338012, 0.612888, -0.714224,
		44.053242, 35.121407, 37.150959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.056934, 35.284435, 37.934734>,  <43.816643, 34.692390, 37.650925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.056934, 35.284435, 37.934734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979263, 35.405319, 37.561432>,  <43.932663, 35.477848, 37.337452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.979263, 35.405319, 37.561432>,  <44.056934, 35.284435, 37.934734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979263, 35.405319, 37.561432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562218, 0.745328, 0.358326,
		0.803870, 0.594271, 0.025182,
		-0.194174, 0.302206, -0.933257,
		43.921013, 35.495979, 37.281456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.028824, 35.935898, 37.975052>,  <44.056934, 35.284435, 37.934734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.028824, 35.935898, 37.975052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805923, 35.863087, 37.650993>,  <43.672184, 35.819401, 37.456558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.805923, 35.863087, 37.650993>,  <44.028824, 35.935898, 37.975052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.805923, 35.863087, 37.650993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553395, 0.808817, 0.198920,
		0.619054, 0.559180, -0.551444,
		-0.557249, -0.182025, -0.810149,
		43.638748, 35.808479, 37.407948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.864922, 36.566044, 37.690350>,  <44.028824, 35.935898, 37.975052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.864922, 36.566044, 37.690350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599411, 36.321499, 37.518009>,  <43.440105, 36.174774, 37.414604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599411, 36.321499, 37.518009>,  <43.864922, 36.566044, 37.690350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.599411, 36.321499, 37.518009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700072, 0.710611, 0.070223,
		0.263238, 0.348242, -0.899685,
		-0.663781, -0.611359, -0.430854,
		43.400276, 36.138092, 37.388752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.531315, 36.954803, 37.203701>,  <43.864922, 36.566044, 37.690350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.531315, 36.954803, 37.203701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.271950, 36.655659, 37.260647>,  <43.116333, 36.476173, 37.294815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.271950, 36.655659, 37.260647>,  <43.531315, 36.954803, 37.203701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271950, 36.655659, 37.260647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738637, 0.663297, 0.120222,
		-0.184338, -0.027202, -0.982486,
		-0.648410, -0.747862, 0.142363,
		43.077427, 36.431301, 37.303356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970482, 37.111385, 36.792835>,  <43.531315, 36.954803, 37.203701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970482, 37.111385, 36.792835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809708, 36.864967, 37.063816>,  <42.713245, 36.717117, 37.226406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.809708, 36.864967, 37.063816>,  <42.970482, 37.111385, 36.792835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.809708, 36.864967, 37.063816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720967, 0.669017, 0.180619,
		-0.564496, -0.415825, -0.713045,
		-0.401934, -0.616041, 0.677454,
		42.689129, 36.680157, 37.267052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192341, 37.200787, 36.687782>,  <42.970482, 37.111385, 36.792835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192341, 37.200787, 36.687782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223175, 37.020962, 37.043751>,  <42.241676, 36.913067, 37.257332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.223175, 37.020962, 37.043751>,  <42.192341, 37.200787, 36.687782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223175, 37.020962, 37.043751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811200, 0.490657, 0.318135,
		-0.579665, -0.746424, -0.326862,
		0.077087, -0.449562, 0.889916,
		42.246300, 36.886093, 37.310726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607410, 36.747055, 36.859119>,  <42.192341, 37.200787, 36.687782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607410, 36.747055, 36.859119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771748, 36.883282, 37.197403>,  <41.870350, 36.965019, 37.400372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771748, 36.883282, 37.197403>,  <41.607410, 36.747055, 36.859119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771748, 36.883282, 37.197403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846226, 0.487646, 0.214717,
		-0.339281, -0.803875, 0.488542,
		0.410841, 0.340567, 0.845709,
		41.895000, 36.985451, 37.451115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039146, 36.955872, 37.289394>,  <41.607410, 36.747055, 36.859119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039146, 36.955872, 37.289394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.328022, 37.139969, 37.495937>,  <41.501347, 37.250427, 37.619865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.328022, 37.139969, 37.495937>,  <41.039146, 36.955872, 37.289394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328022, 37.139969, 37.495937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633253, 0.740252, 0.225872,
		-0.278282, -0.490109, 0.826046,
		0.722184, 0.460240, 0.516362,
		41.544678, 37.278042, 37.650845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689720, 37.208546, 37.905727>,  <41.039146, 36.955872, 37.289394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689720, 37.208546, 37.905727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032436, 37.408180, 37.853855>,  <41.238068, 37.527962, 37.822731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032436, 37.408180, 37.853855>,  <40.689720, 37.208546, 37.905727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032436, 37.408180, 37.853855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487222, 0.865885, 0.113388,
		0.168881, -0.033965, 0.985051,
		0.856792, 0.499088, -0.129684,
		41.289474, 37.557907, 37.814949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795967, 37.567448, 38.533260>,  <40.689720, 37.208546, 37.905727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795967, 37.567448, 38.533260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996601, 37.744755, 38.236092>,  <41.116982, 37.851139, 38.057793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.996601, 37.744755, 38.236092>,  <40.795967, 37.567448, 38.533260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996601, 37.744755, 38.236092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383013, 0.883790, 0.268732,
		0.775704, 0.149756, 0.613071,
		0.501582, 0.443271, -0.742918,
		41.147076, 37.877735, 38.013218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078728, 38.189877, 38.870594>,  <40.795967, 37.567448, 38.533260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078728, 38.189877, 38.870594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074696, 38.257854, 38.476433>,  <41.072277, 38.298641, 38.239937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.074696, 38.257854, 38.476433>,  <41.078728, 38.189877, 38.870594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.074696, 38.257854, 38.476433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144780, 0.974820, 0.169602,
		0.989413, 0.144376, 0.014781,
		-0.010077, 0.169947, -0.985402,
		41.071671, 38.308838, 38.180813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491959, 38.765923, 38.801685>,  <41.078728, 38.189877, 38.870594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491959, 38.765923, 38.801685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281307, 38.762978, 38.461658>,  <41.154915, 38.761211, 38.257645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281307, 38.762978, 38.461658>,  <41.491959, 38.765923, 38.801685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281307, 38.762978, 38.461658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120193, 0.990562, 0.065885,
		0.841555, 0.136869, -0.522545,
		-0.526630, -0.007361, -0.850062,
		41.123318, 38.760769, 38.206638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581131, 39.432625, 38.597900>,  <41.491959, 38.765923, 38.801685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581131, 39.432625, 38.597900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269447, 39.293789, 38.389145>,  <41.082436, 39.210487, 38.263893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269447, 39.293789, 38.389145>,  <41.581131, 39.432625, 38.597900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269447, 39.293789, 38.389145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387701, 0.921166, -0.033774,
		0.492466, 0.176019, -0.852347,
		-0.779208, -0.347088, -0.521886,
		41.035686, 39.189663, 38.232578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.566753, 39.899303, 37.994400>,  <41.581131, 39.432625, 38.597900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.566753, 39.899303, 37.994400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201763, 39.737244, 38.017136>,  <40.982769, 39.640007, 38.030777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201763, 39.737244, 38.017136>,  <41.566753, 39.899303, 37.994400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201763, 39.737244, 38.017136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409105, 0.902364, -0.135542,
		0.003627, -0.146932, -0.989140,
		-0.912480, -0.405154, 0.056838,
		40.928020, 39.615696, 38.034187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172798, 40.258766, 37.492867>,  <41.566753, 39.899303, 37.994400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172798, 40.258766, 37.492867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928925, 40.088886, 37.760571>,  <40.782600, 39.986958, 37.921192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.928925, 40.088886, 37.760571>,  <41.172798, 40.258766, 37.492867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.928925, 40.088886, 37.760571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500661, 0.860928, 0.090230,
		-0.614508, -0.280061, -0.737527,
		-0.609688, -0.424698, 0.669263,
		40.746017, 39.961475, 37.961349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487423, 40.485718, 37.292152>,  <41.172798, 40.258766, 37.492867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487423, 40.485718, 37.292152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476208, 40.373775, 37.676006>,  <40.469479, 40.306610, 37.906319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.476208, 40.373775, 37.676006>,  <40.487423, 40.485718, 37.292152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.476208, 40.373775, 37.676006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562678, 0.797891, 0.216248,
		-0.826201, -0.533900, -0.179841,
		-0.028039, -0.279857, 0.959632,
		40.467796, 40.289818, 37.963898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772026, 40.571308, 37.453255>,  <40.487423, 40.485718, 37.292152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772026, 40.571308, 37.453255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978127, 40.581627, 37.795918>,  <40.101788, 40.587818, 38.001514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978127, 40.581627, 37.795918>,  <39.772026, 40.571308, 37.453255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978127, 40.581627, 37.795918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528087, 0.796809, 0.293631,
		-0.675014, -0.603680, 0.424177,
		0.515247, 0.025797, 0.856653,
		40.132702, 40.589367, 38.052914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222198, 40.717213, 37.946342>,  <39.772026, 40.571308, 37.453255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222198, 40.717213, 37.946342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577328, 40.815758, 38.101814>,  <39.790405, 40.874886, 38.195099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.577328, 40.815758, 38.101814>,  <39.222198, 40.717213, 37.946342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577328, 40.815758, 38.101814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411465, 0.803208, 0.430759,
		-0.206072, -0.542368, 0.814476,
		0.887824, 0.246361, 0.388684,
		39.843674, 40.889668, 38.218418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015392, 40.963680, 38.586029>,  <39.222198, 40.717213, 37.946342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015392, 40.963680, 38.586029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389526, 41.101810, 38.555305>,  <39.614006, 41.184689, 38.536873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389526, 41.101810, 38.555305>,  <39.015392, 40.963680, 38.586029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389526, 41.101810, 38.555305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313634, 0.909883, 0.271562,
		0.163662, -0.229912, 0.959351,
		0.935333, 0.345329, -0.076805,
		39.670128, 41.205410, 38.532265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331421, 41.179775, 39.316849>,  <39.015392, 40.963680, 38.586029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331421, 41.179775, 39.316849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457443, 41.398991, 39.006908>,  <39.533058, 41.530521, 38.820946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457443, 41.398991, 39.006908>,  <39.331421, 41.179775, 39.316849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457443, 41.398991, 39.006908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352057, 0.825663, 0.440835,
		0.881359, 0.133902, 0.453075,
		0.315059, 0.548042, -0.774847,
		39.551960, 41.563404, 38.774456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717182, 41.754936, 39.641880>,  <39.331421, 41.179775, 39.316849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717182, 41.754936, 39.641880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581173, 41.831791, 39.273647>,  <39.499565, 41.877903, 39.052708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581173, 41.831791, 39.273647>,  <39.717182, 41.754936, 39.641880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581173, 41.831791, 39.273647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282560, 0.912802, 0.294876,
		0.896963, 0.360384, -0.256087,
		-0.340026, 0.192133, -0.920580,
		39.479164, 41.889431, 38.997475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149296, 41.863277, 40.135643>,  <39.717182, 41.754936, 39.641880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149296, 41.863277, 40.135643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234165, 41.542515, 40.359047>,  <39.285088, 41.350056, 40.493088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.234165, 41.542515, 40.359047>,  <39.149296, 41.863277, 40.135643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234165, 41.542515, 40.359047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972711, 0.228216, -0.041852,
		-0.093898, 0.552144, 0.828444,
		0.212173, -0.801907, 0.558506,
		39.297817, 41.301941, 40.526600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658146, 41.941681, 40.732365>,  <39.149296, 41.863277, 40.135643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658146, 41.941681, 40.732365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675091, 41.565411, 40.597702>,  <39.685257, 41.339649, 40.516907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.675091, 41.565411, 40.597702>,  <39.658146, 41.941681, 40.732365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.675091, 41.565411, 40.597702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983205, 0.099120, -0.153246,
		0.177524, -0.324507, 0.929075,
		0.042361, -0.940676, -0.336653,
		39.687798, 41.283207, 40.496708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260563, 41.537563, 41.244049>,  <39.658146, 41.941681, 40.732365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260563, 41.537563, 41.244049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197411, 41.401482, 40.873245>,  <40.159519, 41.319832, 40.650764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.197411, 41.401482, 40.873245>,  <40.260563, 41.537563, 41.244049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197411, 41.401482, 40.873245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985526, -0.112996, -0.126376,
		-0.061755, -0.933539, 0.353116,
		-0.157877, -0.340201, -0.927005,
		40.150047, 41.299423, 40.595142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623600, 40.843189, 41.175705>,  <40.260563, 41.537563, 41.244049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623600, 40.843189, 41.175705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577358, 41.114178, 40.885143>,  <40.549614, 41.276772, 40.710808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577358, 41.114178, 40.885143>,  <40.623600, 40.843189, 41.175705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577358, 41.114178, 40.885143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992415, 0.047998, -0.113170,
		-0.041804, -0.733978, -0.677886,
		-0.115602, 0.677475, -0.726405,
		40.542679, 41.317421, 40.667221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952461, 40.651829, 40.529156>,  <40.623600, 40.843189, 41.175705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952461, 40.651829, 40.529156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961025, 41.051533, 40.516315>,  <40.966164, 41.291355, 40.508614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961025, 41.051533, 40.516315>,  <40.952461, 40.651829, 40.529156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961025, 41.051533, 40.516315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989146, -0.025844, -0.144648,
		-0.145370, -0.028653, -0.988962,
		0.021414, 0.999255, -0.032099,
		40.967449, 41.351311, 40.506687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269901, 41.028885, 39.887363>,  <40.952461, 40.651829, 40.529156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269901, 41.028885, 39.887363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325962, 41.169731, 40.257526>,  <41.359600, 41.254238, 40.479622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325962, 41.169731, 40.257526>,  <41.269901, 41.028885, 39.887363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325962, 41.169731, 40.257526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976377, -0.204382, -0.070110,
		0.164450, 0.913370, -0.372441,
		0.140157, 0.352113, 0.925404,
		41.368008, 41.275364, 40.535149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812611, 41.599728, 39.886749>,  <41.269901, 41.028885, 39.887363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812611, 41.599728, 39.886749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801704, 41.382908, 40.222713>,  <41.795162, 41.252815, 40.424290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801704, 41.382908, 40.222713>,  <41.812611, 41.599728, 39.886749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801704, 41.382908, 40.222713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989957, -0.131236, -0.052562,
		0.138717, 0.830039, 0.540179,
		-0.027263, -0.542045, 0.839907,
		41.793526, 41.220295, 40.474686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378448, 41.785748, 40.405910>,  <41.812611, 41.599728, 39.886749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378448, 41.785748, 40.405910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285542, 41.396713, 40.410423>,  <42.229797, 41.163292, 40.413132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.285542, 41.396713, 40.410423>,  <42.378448, 41.785748, 40.405910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.285542, 41.396713, 40.410423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960080, -0.231106, -0.157598,
		0.155884, -0.025777, 0.987439,
		-0.232266, -0.972587, 0.011278,
		42.215862, 41.104939, 40.413807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811234, 41.238419, 40.813545>,  <42.378448, 41.785748, 40.405910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811234, 41.238419, 40.813545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.625137, 41.029461, 40.527702>,  <42.513481, 40.904087, 40.356197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.625137, 41.029461, 40.527702>,  <42.811234, 41.238419, 40.813545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.625137, 41.029461, 40.527702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885056, -0.260817, -0.385551,
		0.015028, -0.811838, 0.583689,
		-0.465241, -0.522392, -0.714603,
		42.485565, 40.872742, 40.313320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128925, 40.524197, 40.825474>,  <42.811234, 41.238419, 40.813545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128925, 40.524197, 40.825474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966019, 40.550838, 40.461121>,  <42.868275, 40.566822, 40.242508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966019, 40.550838, 40.461121>,  <43.128925, 40.524197, 40.825474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966019, 40.550838, 40.461121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791719, -0.471466, -0.388459,
		-0.455320, -0.879366, 0.139282,
		-0.407265, 0.066601, -0.910879,
		42.843842, 40.570820, 40.187859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199139, 39.883072, 40.500229>,  <43.128925, 40.524197, 40.825474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199139, 39.883072, 40.500229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148350, 40.131504, 40.190872>,  <43.117878, 40.280563, 40.005257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.148350, 40.131504, 40.190872>,  <43.199139, 39.883072, 40.500229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148350, 40.131504, 40.190872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785508, -0.413153, -0.460741,
		-0.605687, -0.666007, -0.435405,
		-0.126968, 0.621079, -0.773395,
		43.110260, 40.317829, 39.958855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299297, 39.513611, 40.018009>,  <43.199139, 39.883072, 40.500229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299297, 39.513611, 40.018009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.320026, 39.876717, 39.851501>,  <43.332466, 40.094582, 39.751598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.320026, 39.876717, 39.851501>,  <43.299297, 39.513611, 40.018009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.320026, 39.876717, 39.851501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749333, -0.310894, -0.584675,
		-0.660162, -0.281622, -0.696330,
		0.051828, 0.907763, -0.416269,
		43.335575, 40.149044, 39.726620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282948, 39.378456, 39.267529>,  <43.299297, 39.513611, 40.018009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.282948, 39.378456, 39.267529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.455082, 39.730644, 39.347107>,  <43.558361, 39.941956, 39.394855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.455082, 39.730644, 39.347107>,  <43.282948, 39.378456, 39.267529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.455082, 39.730644, 39.347107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815071, -0.284310, -0.504804,
		-0.387903, 0.379391, -0.839997,
		0.430337, 0.880472, 0.198946,
		43.584183, 39.994785, 39.406792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.452957, 39.650669, 38.636745>,  <43.282948, 39.378456, 39.267529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.452957, 39.650669, 38.636745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683781, 39.815643, 38.918709>,  <43.822273, 39.914627, 39.087887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.683781, 39.815643, 38.918709>,  <43.452957, 39.650669, 38.636745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683781, 39.815643, 38.918709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814384, -0.355603, -0.458611,
		0.061520, 0.838714, -0.541087,
		0.577056, 0.412439, 0.704912,
		43.856899, 39.939373, 39.130184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016857, 39.855034, 38.299911>,  <43.452957, 39.650669, 38.636745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016857, 39.855034, 38.299911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.153614, 39.848564, 38.675751>,  <44.235668, 39.844685, 38.901257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.153614, 39.848564, 38.675751>,  <44.016857, 39.855034, 38.299911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.153614, 39.848564, 38.675751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853281, -0.413573, -0.317599,
		0.393729, 0.910327, -0.127600,
		0.341891, -0.016170, 0.939600,
		44.256180, 39.843712, 38.957630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.662018, 40.262703, 38.285648>,  <44.016857, 39.855034, 38.299911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.662018, 40.262703, 38.285648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672253, 40.021854, 38.604847>,  <44.678394, 39.877346, 38.796368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672253, 40.021854, 38.604847>,  <44.662018, 40.262703, 38.285648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.672253, 40.021854, 38.604847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847313, -0.410536, -0.336930,
		0.530478, 0.684772, 0.499681,
		0.025583, -0.602120, 0.797996,
		44.679928, 39.841217, 38.844246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.397110, 40.251949, 38.545658>,  <44.662018, 40.262703, 38.285648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.397110, 40.251949, 38.545658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.257618, 39.923965, 38.727230>,  <45.173923, 39.727177, 38.836174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.257618, 39.923965, 38.727230>,  <45.397110, 40.251949, 38.545658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.257618, 39.923965, 38.727230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847234, -0.482892, -0.221382,
		0.400723, 0.307382, 0.863097,
		-0.348733, -0.819958, 0.453931,
		45.152996, 39.677979, 38.863411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.935951, 39.891941, 38.785301>,  <45.397110, 40.251949, 38.545658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.935951, 39.891941, 38.785301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.689293, 39.577660, 38.804974>,  <45.541298, 39.389091, 38.816776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.689293, 39.577660, 38.804974>,  <45.935951, 39.891941, 38.785301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.689293, 39.577660, 38.804974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717128, -0.586409, -0.376633,
		0.324763, -0.196978, 0.925056,
		-0.616649, -0.785700, 0.049185,
		45.504299, 39.341949, 38.819729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.332474, 39.341255, 38.948673>,  <45.935951, 39.891941, 38.785301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.332474, 39.341255, 38.948673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016521, 39.152786, 38.791653>,  <45.826950, 39.039707, 38.697441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.016521, 39.152786, 38.791653>,  <46.332474, 39.341255, 38.948673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.016521, 39.152786, 38.791653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613258, -0.609652, -0.502234,
		-0.002680, -0.637437, 0.770498,
		-0.789878, -0.471168, -0.392547,
		45.779556, 39.011436, 38.673889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.531303, 38.575481, 39.019760>,  <46.332474, 39.341255, 38.948673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.531303, 38.575481, 39.019760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.236698, 38.614326, 38.751991>,  <46.059937, 38.637634, 38.591331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.236698, 38.614326, 38.751991>,  <46.531303, 38.575481, 39.019760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.236698, 38.614326, 38.751991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365863, -0.775201, -0.514984,
		-0.568945, -0.624206, 0.535414,
		-0.736509, 0.097109, -0.669421,
		46.015747, 38.643459, 38.551167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.313057, 37.894947, 38.868755>,  <46.531303, 38.575481, 39.019760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.313057, 37.894947, 38.868755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.195293, 38.101974, 38.547398>,  <46.124638, 38.226192, 38.354584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.195293, 38.101974, 38.547398>,  <46.313057, 37.894947, 38.868755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.195293, 38.101974, 38.547398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187345, -0.793089, -0.579579,
		-0.937138, -0.321144, 0.136526,
		-0.294405, 0.517568, -0.803398,
		46.106972, 38.257244, 38.306377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.758121, 37.535172, 38.538136>,  <46.313057, 37.894947, 38.868755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.758121, 37.535172, 38.538136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.917446, 37.782475, 38.267109>,  <46.013042, 37.930859, 38.104492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.917446, 37.782475, 38.267109>,  <45.758121, 37.535172, 38.538136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.917446, 37.782475, 38.267109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204375, -0.779948, -0.591534,
		-0.894191, 0.097138, -0.437020,
		0.398314, 0.618261, -0.677569,
		46.036942, 37.967953, 38.063839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.497646, 37.326591, 37.918510>,  <45.758121, 37.535172, 38.538136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.497646, 37.326591, 37.918510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.809204, 37.533394, 37.776508>,  <45.996140, 37.657475, 37.691307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.809204, 37.533394, 37.776508>,  <45.497646, 37.326591, 37.918510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.809204, 37.533394, 37.776508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185935, -0.730972, -0.656588,
		-0.598961, 0.445403, -0.665479,
		0.778893, 0.517006, -0.355007,
		46.042873, 37.688496, 37.670006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437256, 37.285187, 37.243568>,  <45.497646, 37.326591, 37.918510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437256, 37.285187, 37.243568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.819633, 37.398949, 37.272652>,  <46.049061, 37.467205, 37.290104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.819633, 37.398949, 37.272652>,  <45.437256, 37.285187, 37.243568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.819633, 37.398949, 37.272652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275499, -0.783679, -0.556730,
		-0.101354, 0.552234, -0.827505,
		0.955943, 0.284404, 0.072711,
		46.106415, 37.484268, 37.294464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.593727, 37.370235, 36.618584>,  <45.437256, 37.285187, 37.243568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.593727, 37.370235, 36.618584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.939316, 37.328964, 36.815727>,  <46.146667, 37.304199, 36.934013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.939316, 37.328964, 36.815727>,  <45.593727, 37.370235, 36.618584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.939316, 37.328964, 36.815727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334317, -0.614388, -0.714674,
		0.376548, 0.782228, -0.496317,
		0.863970, -0.103182, 0.492859,
		46.198505, 37.298008, 36.963585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.107395, 37.358627, 36.145290>,  <45.593727, 37.370235, 36.618584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.107395, 37.358627, 36.145290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.288849, 37.195431, 36.462215>,  <46.397720, 37.097515, 36.652370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.288849, 37.195431, 36.462215>,  <46.107395, 37.358627, 36.145290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.288849, 37.195431, 36.462215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358945, -0.730106, -0.581466,
		0.815705, 0.548170, -0.184755,
		0.453633, -0.407988, 0.792315,
		46.424938, 37.073036, 36.699909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.746025, 37.069275, 35.896347>,  <46.107395, 37.358627, 36.145290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.746025, 37.069275, 35.896347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.696877, 36.887814, 36.249413>,  <46.667389, 36.778934, 36.461254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.696877, 36.887814, 36.249413>,  <46.746025, 37.069275, 35.896347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.696877, 36.887814, 36.249413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332100, -0.856924, -0.394197,
		0.935208, 0.244700, 0.255947,
		-0.122867, -0.453656, 0.882666,
		46.660015, 36.751717, 36.514214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.321625, 36.657082, 36.066929>,  <46.746025, 37.069275, 35.896347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.321625, 36.657082, 36.066929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.029076, 36.454617, 36.249744>,  <46.853546, 36.333138, 36.359436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.029076, 36.454617, 36.249744>,  <47.321625, 36.657082, 36.066929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.029076, 36.454617, 36.249744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343143, -0.852289, -0.394786,
		0.589360, -0.131905, 0.797029,
		-0.731373, -0.506167, 0.457043,
		46.809662, 36.302765, 36.386856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.643250, 36.067612, 36.446526>,  <47.321625, 36.657082, 36.066929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.643250, 36.067612, 36.446526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.252159, 35.991741, 36.410568>,  <47.017506, 35.946220, 36.388996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.252159, 35.991741, 36.410568>,  <47.643250, 36.067612, 36.446526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.252159, 35.991741, 36.410568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209884, -0.878645, -0.428873,
		0.002364, -0.438186, 0.898881,
		-0.977723, -0.189675, -0.089891,
		46.958843, 35.934837, 36.383602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.528999, 35.298706, 36.438549>,  <47.643250, 36.067612, 36.446526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.528999, 35.298706, 36.438549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.193119, 35.436474, 36.270607>,  <46.991592, 35.519135, 36.169842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.193119, 35.436474, 36.270607>,  <47.528999, 35.298706, 36.438549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.193119, 35.436474, 36.270607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040113, -0.731701, -0.680445,
		-0.541565, -0.588212, 0.600595,
		-0.839701, 0.344414, -0.419858,
		46.941208, 35.539799, 36.144650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.643555, 34.467636, 36.453777>,  <47.528999, 35.298706, 36.438549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.643555, 34.467636, 36.453777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.575851, 34.182968, 36.726505>,  <47.535229, 34.012165, 36.890141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.575851, 34.182968, 36.726505>,  <47.643555, 34.467636, 36.453777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.575851, 34.182968, 36.726505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985222, -0.103741, 0.136293,
		-0.026264, 0.694810, 0.718714,
		-0.169258, -0.711672, 0.681817,
		47.525074, 33.969467, 36.931049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.647606, 34.500168, 35.670238>,  <47.643555, 34.467636, 36.453777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.647606, 34.500168, 35.670238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.807739, 34.866180, 35.690071>,  <47.903820, 35.085789, 35.701969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.807739, 34.866180, 35.690071>,  <47.647606, 34.500168, 35.670238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.807739, 34.866180, 35.690071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170428, 0.127503, -0.977086,
		-0.900383, 0.382708, 0.206990,
		0.400330, 0.915029, 0.049577,
		47.927837, 35.140690, 35.704945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.178860, 34.906651, 35.266071>,  <47.647606, 34.500168, 35.670238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.178860, 34.906651, 35.266071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.551838, 35.050823, 35.276119>,  <47.775627, 35.137325, 35.282146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.551838, 35.050823, 35.276119>,  <47.178860, 34.906651, 35.266071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.551838, 35.050823, 35.276119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029300, 0.144728, -0.989038,
		-0.360114, 0.921490, 0.145512,
		0.932448, 0.360430, 0.025119,
		47.831573, 35.158951, 35.283653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.771469, 34.231007, 46.526619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.509216, 33.929424, 46.543072>,  <35.351864, 33.748474, 46.552944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.509216, 33.929424, 46.543072>,  <35.771469, 34.231007, 46.526619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509216, 33.929424, 46.543072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250734, 0.166003, -0.953717,
		0.712236, -0.635600, -0.297880,
		-0.655631, -0.753960, 0.041134,
		35.312527, 33.703236, 46.555412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866562, 33.850636, 45.858841>,  <35.771469, 34.231007, 46.526619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866562, 33.850636, 45.858841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.496876, 33.777248, 45.992805>,  <35.275063, 33.733215, 46.073185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.496876, 33.777248, 45.992805>,  <35.866562, 33.850636, 45.858841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496876, 33.777248, 45.992805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359495, 0.122228, -0.925107,
		0.128834, -0.975389, -0.178936,
		-0.924211, -0.183512, 0.334901,
		35.219612, 33.722206, 46.093277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677284, 33.299515, 45.459141>,  <35.866562, 33.850636, 45.858841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677284, 33.299515, 45.459141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.343292, 33.455475, 45.614464>,  <35.142895, 33.549049, 45.707657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.343292, 33.455475, 45.614464>,  <35.677284, 33.299515, 45.459141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343292, 33.455475, 45.614464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394384, 0.068094, -0.916420,
		-0.383750, -0.918338, 0.096911,
		-0.834983, 0.389896, 0.388308,
		35.092796, 33.572445, 45.730957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116512, 32.929874, 45.136875>,  <35.677284, 33.299515, 45.459141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116512, 32.929874, 45.136875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.956196, 33.275169, 45.259640>,  <34.860008, 33.482346, 45.333298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.956196, 33.275169, 45.259640>,  <35.116512, 32.929874, 45.136875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956196, 33.275169, 45.259640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319098, 0.182490, -0.929986,
		-0.858805, -0.470662, 0.202316,
		-0.400788, 0.863235, 0.306910,
		34.835960, 33.534142, 45.351711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571655, 32.921963, 44.744320>,  <35.116512, 32.929874, 45.136875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571655, 32.921963, 44.744320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.595840, 33.302692, 44.864574>,  <34.610352, 33.531128, 44.936726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.595840, 33.302692, 44.864574>,  <34.571655, 32.921963, 44.744320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595840, 33.302692, 44.864574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504962, 0.288973, -0.813332,
		-0.861021, -0.102630, 0.498106,
		0.060467, 0.951820, 0.300636,
		34.613979, 33.588238, 44.954765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858845, 33.231869, 44.600933>,  <34.571655, 32.921963, 44.744320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858845, 33.231869, 44.600933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.142437, 33.513729, 44.612377>,  <34.312592, 33.682846, 44.619244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.142437, 33.513729, 44.612377>,  <33.858845, 33.231869, 44.600933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142437, 33.513729, 44.612377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257010, 0.295937, -0.919982,
		-0.656729, 0.644897, 0.390915,
		0.708980, 0.704648, 0.028606,
		34.355129, 33.725124, 44.620960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618256, 33.752010, 44.272690>,  <33.858845, 33.231869, 44.600933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618256, 33.752010, 44.272690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.000866, 33.868050, 44.260696>,  <34.230434, 33.937672, 44.253502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.000866, 33.868050, 44.260696>,  <33.618256, 33.752010, 44.272690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000866, 33.868050, 44.260696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102791, 0.239141, -0.965529,
		-0.272927, 0.926637, 0.258564,
		0.956528, 0.290097, -0.029982,
		34.287823, 33.955078, 44.251701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496639, 34.385460, 43.917942>,  <33.618256, 33.752010, 44.272690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496639, 34.385460, 43.917942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.872704, 34.249939, 43.903469>,  <34.098343, 34.168625, 43.894783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.872704, 34.249939, 43.903469>,  <33.496639, 34.385460, 43.917942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872704, 34.249939, 43.903469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008375, 0.129147, -0.991590,
		0.340630, 0.931950, 0.124256,
		0.940160, -0.338806, -0.036186,
		34.154751, 34.148296, 43.892612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850540, 34.922493, 43.529305>,  <33.496639, 34.385460, 43.917942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850540, 34.922493, 43.529305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.060051, 34.582844, 43.502056>,  <34.185757, 34.379055, 43.485706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.060051, 34.582844, 43.502056>,  <33.850540, 34.922493, 43.529305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060051, 34.582844, 43.502056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195661, 0.197753, -0.960526,
		0.829079, 0.489774, 0.269720,
		0.523779, -0.849126, -0.068124,
		34.217186, 34.328106, 43.481621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485085, 35.129780, 43.121208>,  <33.850540, 34.922493, 43.529305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485085, 35.129780, 43.121208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.490726, 34.730457, 43.098640>,  <34.494110, 34.490864, 43.085102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.490726, 34.730457, 43.098640>,  <34.485085, 35.129780, 43.121208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490726, 34.730457, 43.098640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160232, 0.057948, -0.985377,
		0.986979, 0.004858, 0.160778,
		0.014104, -0.998308, -0.056415,
		34.494957, 34.430965, 43.081715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073032, 35.006531, 42.781513>,  <34.485085, 35.129780, 43.121208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073032, 35.006531, 42.781513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.886116, 34.653687, 42.757763>,  <34.773968, 34.441978, 42.743511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.886116, 34.653687, 42.757763>,  <35.073032, 35.006531, 42.781513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886116, 34.653687, 42.757763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212617, -0.046936, -0.976008,
		0.858159, -0.468700, 0.209484,
		-0.467287, -0.882109, -0.059375,
		34.745930, 34.389053, 42.739952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557838, 34.627548, 42.508930>,  <35.073032, 35.006531, 42.781513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557838, 34.627548, 42.508930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.196705, 34.482330, 42.416767>,  <34.980022, 34.395199, 42.361469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.196705, 34.482330, 42.416767>,  <35.557838, 34.627548, 42.508930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196705, 34.482330, 42.416767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299150, -0.145438, -0.943057,
		0.308859, -0.920352, 0.239911,
		-0.902837, -0.363042, -0.230404,
		34.925854, 34.373417, 42.347645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712215, 33.993145, 42.133553>,  <35.557838, 34.627548, 42.508930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712215, 33.993145, 42.133553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.341560, 34.095379, 42.023270>,  <35.119167, 34.156719, 41.957100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.341560, 34.095379, 42.023270>,  <35.712215, 33.993145, 42.133553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341560, 34.095379, 42.023270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270042, -0.057731, -0.961116,
		-0.261566, -0.965061, -0.015523,
		-0.926639, 0.255587, -0.275708,
		35.063568, 34.172054, 41.940556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596561, 33.614235, 41.548454>,  <35.712215, 33.993145, 42.133553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596561, 33.614235, 41.548454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.288261, 33.867920, 41.524101>,  <35.103279, 34.020130, 41.509487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.288261, 33.867920, 41.524101>,  <35.596561, 33.614235, 41.548454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288261, 33.867920, 41.524101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090387, 0.014245, -0.995805,
		-0.630688, -0.773025, -0.068304,
		-0.770755, 0.634216, -0.060887,
		35.057034, 34.058186, 41.505836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005005, 33.295364, 41.227058>,  <35.596561, 33.614235, 41.548454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005005, 33.295364, 41.227058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.998466, 33.691299, 41.170563>,  <34.994541, 33.928860, 41.136665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.998466, 33.691299, 41.170563>,  <35.005005, 33.295364, 41.227058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.998466, 33.691299, 41.170563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113411, -0.142180, -0.983322,
		-0.993414, -0.000057, 0.114583,
		-0.016348, 0.989841, -0.141237,
		34.993561, 33.988251, 41.128193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411514, 33.438320, 40.702267>,  <35.005005, 33.295364, 41.227058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411514, 33.438320, 40.702267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.659424, 33.752014, 40.713955>,  <34.808170, 33.940231, 40.720966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.659424, 33.752014, 40.713955>,  <34.411514, 33.438320, 40.702267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659424, 33.752014, 40.713955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059167, 0.083820, -0.994723,
		-0.782548, 0.614773, 0.098350,
		0.619772, 0.784238, 0.029219,
		34.845356, 33.987286, 40.722721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.174297, 33.879257, 40.258873>,  <34.411514, 33.438320, 40.702267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.174297, 33.879257, 40.258873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.550869, 34.009659, 40.293365>,  <34.776810, 34.087902, 40.314060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.550869, 34.009659, 40.293365>,  <34.174297, 33.879257, 40.258873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550869, 34.009659, 40.293365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116781, -0.075304, -0.990299,
		-0.316350, 0.942364, -0.108965,
		0.941427, 0.326006, 0.086228,
		34.833298, 34.107460, 40.319233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190174, 34.481266, 39.713123>,  <34.174297, 33.879257, 40.258873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190174, 34.481266, 39.713123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.570301, 34.374432, 39.777065>,  <34.798378, 34.310329, 39.815430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.570301, 34.374432, 39.777065>,  <34.190174, 34.481266, 39.713123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570301, 34.374432, 39.777065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186120, 0.075938, -0.979588,
		0.249496, 0.960676, 0.121876,
		0.950322, -0.267087, 0.159854,
		34.855396, 34.294304, 39.825020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522675, 34.803810, 39.179592>,  <34.190174, 34.481266, 39.713123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522675, 34.803810, 39.179592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.804714, 34.551659, 39.309486>,  <34.973938, 34.400368, 39.387421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.804714, 34.551659, 39.309486>,  <34.522675, 34.803810, 39.179592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804714, 34.551659, 39.309486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242692, -0.215761, -0.945805,
		0.666284, 0.745697, 0.000856,
		0.705100, -0.630383, 0.324733,
		35.016243, 34.362545, 39.406906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135597, 34.951527, 38.797031>,  <34.522675, 34.803810, 39.179592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135597, 34.951527, 38.797031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.183872, 34.572472, 38.915295>,  <35.212837, 34.345039, 38.986252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.183872, 34.572472, 38.915295>,  <35.135597, 34.951527, 38.797031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183872, 34.572472, 38.915295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198583, -0.268771, -0.942511,
		0.972625, 0.172463, 0.155747,
		0.120688, -0.947639, 0.295661,
		35.220078, 34.288181, 39.003994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.823261, 34.772800, 38.474991>,  <35.135597, 34.951527, 38.797031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.823261, 34.772800, 38.474991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.612175, 34.444786, 38.563595>,  <35.485523, 34.247978, 38.616756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.612175, 34.444786, 38.563595>,  <35.823261, 34.772800, 38.474991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612175, 34.444786, 38.563595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206437, -0.376768, -0.903011,
		0.823956, -0.430802, 0.368110,
		-0.527711, -0.820034, 0.221507,
		35.453861, 34.198776, 38.630047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262630, 34.216469, 38.275761>,  <35.823261, 34.772800, 38.474991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262630, 34.216469, 38.275761> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.879482, 34.101925, 38.284599>,  <35.649593, 34.033199, 38.289902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.879482, 34.101925, 38.284599>,  <36.262630, 34.216469, 38.275761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879482, 34.101925, 38.284599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105161, -0.421281, -0.900812,
		0.267270, -0.860534, 0.433646,
		-0.957866, -0.286363, 0.022101,
		35.592121, 34.016018, 38.291229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.994720, 34.358986, 37.976189>,  <36.262630, 34.216469, 38.275761>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.994720, 34.358986, 37.976189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.315784, 34.572968, 37.870686>,  <37.508423, 34.701359, 37.807384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.315784, 34.572968, 37.870686>,  <36.994720, 34.358986, 37.976189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315784, 34.572968, 37.870686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293233, 0.031143, 0.955534,
		0.519383, -0.844305, -0.131870,
		0.802655, 0.534957, -0.263753,
		37.556580, 34.733456, 37.791561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659946, 33.915108, 38.100609>,  <36.994720, 34.358986, 37.976189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659946, 33.915108, 38.100609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729706, 34.308777, 38.088032>,  <37.771561, 34.544979, 38.080486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.729706, 34.308777, 38.088032>,  <37.659946, 33.915108, 38.100609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729706, 34.308777, 38.088032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497486, -0.060508, 0.865359,
		0.849761, -0.166557, -0.500165,
		0.174396, 0.984174, -0.031443,
		37.782024, 34.604031, 38.078598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415501, 33.918076, 38.299507>,  <37.659946, 33.915108, 38.100609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415501, 33.918076, 38.299507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.231606, 34.267887, 38.361267>,  <38.121269, 34.477776, 38.398323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.231606, 34.267887, 38.361267>,  <38.415501, 33.918076, 38.299507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231606, 34.267887, 38.361267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372878, 0.032298, 0.927318,
		0.805981, 0.483894, -0.340941,
		-0.459735, 0.874530, 0.154402,
		38.093685, 34.530247, 38.407589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868042, 34.355396, 38.595112>,  <38.415501, 33.918076, 38.299507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868042, 34.355396, 38.595112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.507706, 34.494076, 38.699638>,  <38.291504, 34.577282, 38.762352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.507706, 34.494076, 38.699638>,  <38.868042, 34.355396, 38.595112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507706, 34.494076, 38.699638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243457, -0.094947, 0.965253,
		0.359461, 0.933159, 0.001127,
		-0.900842, 0.346696, 0.261314,
		38.237453, 34.598083, 38.778034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893406, 34.882927, 39.030804>,  <38.868042, 34.355396, 38.595112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893406, 34.882927, 39.030804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.541454, 34.726082, 39.138184>,  <38.330284, 34.631977, 39.202614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.541454, 34.726082, 39.138184>,  <38.893406, 34.882927, 39.030804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541454, 34.726082, 39.138184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265706, 0.062407, 0.962032,
		-0.393974, 0.917800, 0.049275,
		-0.879878, -0.392109, 0.268452,
		38.277493, 34.608448, 39.218719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940849, 35.075802, 39.638348>,  <38.893406, 34.882927, 39.030804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940849, 35.075802, 39.638348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.590084, 34.886890, 39.674080>,  <38.379627, 34.773544, 39.695518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.590084, 34.886890, 39.674080>,  <38.940849, 35.075802, 39.638348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590084, 34.886890, 39.674080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005796, 0.175454, 0.984471,
		-0.480622, 0.863809, -0.151120,
		-0.876909, -0.472282, 0.089333,
		38.327011, 34.745205, 39.700878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531544, 35.441174, 39.996166>,  <38.940849, 35.075802, 39.638348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531544, 35.441174, 39.996166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.361744, 35.081352, 40.037346>,  <38.259865, 34.865459, 40.062054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.361744, 35.081352, 40.037346>,  <38.531544, 35.441174, 39.996166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361744, 35.081352, 40.037346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151636, 0.182730, 0.971399,
		-0.892640, 0.396749, -0.213974,
		-0.424501, -0.899556, 0.102950,
		38.234394, 34.811485, 40.068230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037945, 35.551594, 40.557880>,  <38.531544, 35.441174, 39.996166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037945, 35.551594, 40.557880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.072945, 35.156090, 40.509380>,  <38.093945, 34.918789, 40.480282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.072945, 35.156090, 40.509380>,  <38.037945, 35.551594, 40.557880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072945, 35.156090, 40.509380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009944, -0.122579, 0.992409,
		-0.996115, -0.085634, -0.020558,
		0.087504, -0.988757, -0.121251,
		38.099197, 34.859463, 40.473003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555637, 35.290913, 40.933361>,  <38.037945, 35.551594, 40.557880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555637, 35.290913, 40.933361> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.816044, 34.990314, 40.890610>,  <37.972290, 34.809956, 40.864960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.816044, 34.990314, 40.890610>,  <37.555637, 35.290913, 40.933361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816044, 34.990314, 40.890610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085914, -0.066947, 0.994051,
		-0.754184, -0.656328, 0.020981,
		0.651018, -0.751499, -0.106878,
		38.011349, 34.764866, 40.858547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233303, 34.696960, 41.318584>,  <37.555637, 35.290913, 40.933361>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233303, 34.696960, 41.318584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.621868, 34.613930, 41.272499>,  <37.855007, 34.564110, 41.244846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.621868, 34.613930, 41.272499>,  <37.233303, 34.696960, 41.318584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.621868, 34.613930, 41.272499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042956, -0.323603, 0.945217,
		-0.233488, -0.923143, -0.305435,
		0.971411, -0.207576, -0.115212,
		37.913292, 34.551655, 41.237934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311928, 34.028393, 41.381187>,  <37.233303, 34.696960, 41.318584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311928, 34.028393, 41.381187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.675716, 34.183514, 41.441147>,  <37.893990, 34.276585, 41.477123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.675716, 34.183514, 41.441147>,  <37.311928, 34.028393, 41.381187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675716, 34.183514, 41.441147> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002852, -0.354708, 0.934973,
		0.415750, -0.850761, -0.321492,
		0.909474, 0.387798, 0.149896,
		37.948559, 34.299854, 41.486115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688255, 33.510639, 41.792622>,  <37.311928, 34.028393, 41.381187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688255, 33.510639, 41.792622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.874615, 33.857151, 41.864723>,  <37.986431, 34.065060, 41.907986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.874615, 33.857151, 41.864723>,  <37.688255, 33.510639, 41.792622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874615, 33.857151, 41.864723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006228, -0.206923, 0.978337,
		0.884814, -0.454688, -0.101801,
		0.465903, 0.866281, 0.180256,
		38.014385, 34.117035, 41.918800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261845, 33.377216, 42.347656>,  <37.688255, 33.510639, 41.792622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261845, 33.377216, 42.347656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.198620, 33.772041, 42.336899>,  <38.160683, 34.008938, 42.330444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.198620, 33.772041, 42.336899>,  <38.261845, 33.377216, 42.347656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198620, 33.772041, 42.336899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069986, 0.038364, 0.996810,
		0.984946, 0.155678, -0.075145,
		-0.158064, 0.987063, -0.026892,
		38.151199, 34.068161, 42.328831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876125, 33.727669, 42.704044>,  <38.261845, 33.377216, 42.347656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876125, 33.727669, 42.704044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.588497, 34.005104, 42.721363>,  <38.415920, 34.171566, 42.731754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.588497, 34.005104, 42.721363>,  <38.876125, 33.727669, 42.704044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588497, 34.005104, 42.721363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062384, 0.002373, 0.998049,
		0.692129, 0.720371, -0.044974,
		-0.719073, 0.693585, 0.043297,
		38.372776, 34.213181, 42.734352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129135, 34.186993, 43.294598>,  <38.876125, 33.727669, 42.704044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129135, 34.186993, 43.294598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.741482, 34.270470, 43.242092>,  <38.508892, 34.320557, 43.210587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.741482, 34.270470, 43.242092>,  <39.129135, 34.186993, 43.294598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741482, 34.270470, 43.242092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127989, 0.029191, 0.991346,
		0.210721, 0.977545, -0.001579,
		-0.969131, 0.208695, -0.131267,
		38.450741, 34.333076, 43.202713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964642, 34.763046, 43.776752>,  <39.129135, 34.186993, 43.294598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964642, 34.763046, 43.776752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.631439, 34.566799, 43.674469>,  <38.431519, 34.449051, 43.613098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.631439, 34.566799, 43.674469>,  <38.964642, 34.763046, 43.776752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631439, 34.566799, 43.674469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343603, 0.096526, 0.934141,
		-0.433625, 0.866012, -0.248985,
		-0.833011, -0.490619, -0.255708,
		38.381535, 34.419613, 43.597755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371899, 35.047043, 44.208759>,  <38.964642, 34.763046, 43.776752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371899, 35.047043, 44.208759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.189964, 34.715263, 44.079060>,  <38.080803, 34.516197, 44.001240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.189964, 34.715263, 44.079060>,  <38.371899, 35.047043, 44.208759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189964, 34.715263, 44.079060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489626, -0.071230, 0.869018,
		-0.743902, 0.554025, -0.373721,
		-0.454837, -0.829447, -0.324253,
		38.053513, 34.466431, 43.981785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758770, 35.127834, 44.513943>,  <38.371899, 35.047043, 44.208759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758770, 35.127834, 44.513943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.789005, 34.739162, 44.424385>,  <37.807148, 34.505959, 44.370651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.789005, 34.739162, 44.424385>,  <37.758770, 35.127834, 44.513943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789005, 34.739162, 44.424385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408062, -0.235018, 0.882186,
		-0.909820, 0.024682, -0.414269,
		0.075587, -0.971678, -0.223896,
		37.811680, 34.447659, 44.357216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.045486, 34.851032, 44.673923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.322060, 34.562466, 44.658588>,  <37.488003, 34.389324, 44.649387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.322060, 34.562466, 44.658588>,  <37.045486, 34.851032, 44.673923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322060, 34.562466, 44.658588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188931, -0.231788, 0.954243,
		-0.697297, -0.652554, -0.296565,
		0.691435, -0.721421, -0.038337,
		37.529491, 34.346039, 44.647087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877125, 34.437527, 45.303268>,  <37.045486, 34.851032, 44.673923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877125, 34.437527, 45.303268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.219494, 34.274380, 45.176125>,  <37.424915, 34.176491, 45.099838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.219494, 34.274380, 45.176125>,  <36.877125, 34.437527, 45.303268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219494, 34.274380, 45.176125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047099, -0.550648, 0.833408,
		-0.514950, -0.728306, -0.452103,
		0.855925, -0.407870, -0.317859,
		37.476273, 34.152020, 45.080765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763329, 33.716957, 45.274410>,  <36.877125, 34.437527, 45.303268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763329, 33.716957, 45.274410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.155323, 33.785942, 45.314175>,  <37.390518, 33.827332, 45.338036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.155323, 33.785942, 45.314175>,  <36.763329, 33.716957, 45.274410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155323, 33.785942, 45.314175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005573, -0.522992, 0.852319,
		0.198982, -0.834708, -0.513487,
		0.979987, 0.172458, 0.099414,
		37.449318, 33.837681, 45.343998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084854, 33.156490, 45.678093>,  <36.763329, 33.716957, 45.274410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084854, 33.156490, 45.678093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.344639, 33.459988, 45.698124>,  <37.500507, 33.642086, 45.710144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.344639, 33.459988, 45.698124>,  <37.084854, 33.156490, 45.678093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344639, 33.459988, 45.698124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193166, -0.228326, 0.954230,
		0.735451, -0.610060, -0.294852,
		0.649460, 0.758745, 0.050080,
		37.539478, 33.687611, 45.713146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702682, 32.917011, 46.139645>,  <37.084854, 33.156490, 45.678093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702682, 32.917011, 46.139645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.691425, 33.316536, 46.155540>,  <37.684669, 33.556252, 46.165077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.691425, 33.316536, 46.155540>,  <37.702682, 32.917011, 46.139645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691425, 33.316536, 46.155540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215514, -0.032753, 0.975951,
		0.976095, 0.036031, -0.214336,
		-0.028144, 0.998814, 0.039736,
		37.682983, 33.616180, 46.167461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188698, 33.050373, 46.653934>,  <37.702682, 32.917011, 46.139645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188698, 33.050373, 46.653934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.969040, 33.384083, 46.634254>,  <37.837246, 33.584309, 46.622448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.969040, 33.384083, 46.634254>,  <38.188698, 33.050373, 46.653934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969040, 33.384083, 46.634254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254183, 0.222815, 0.941140,
		0.796133, 0.504319, -0.334417,
		-0.549147, 0.834276, -0.049201,
		37.804295, 33.634365, 46.619495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625328, 33.629028, 46.920189>,  <38.188698, 33.050373, 46.653934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625328, 33.629028, 46.920189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258801, 33.782848, 46.964878>,  <38.038883, 33.875141, 46.991692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.258801, 33.782848, 46.964878>,  <38.625328, 33.629028, 46.920189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258801, 33.782848, 46.964878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234606, 0.289407, 0.928011,
		0.324534, 0.876564, -0.355407,
		-0.916318, 0.384551, 0.111725,
		37.983906, 33.898212, 46.998394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668831, 34.400188, 47.251530>,  <38.625328, 33.629028, 46.920189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668831, 34.400188, 47.251530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.310295, 34.238483, 47.324352>,  <38.095173, 34.141460, 47.368046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.310295, 34.238483, 47.324352>,  <38.668831, 34.400188, 47.251530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310295, 34.238483, 47.324352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090355, 0.235453, 0.967677,
		-0.434058, 0.883819, -0.174520,
		-0.896342, -0.404259, 0.182057,
		38.041393, 34.117207, 47.378971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415539, 34.881649, 47.697334>,  <38.668831, 34.400188, 47.251530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415539, 34.881649, 47.697334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.181496, 34.561737, 47.751003>,  <38.041069, 34.369789, 47.783203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.181496, 34.561737, 47.751003>,  <38.415539, 34.881649, 47.697334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181496, 34.561737, 47.751003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095237, 0.232072, 0.968025,
		-0.805343, 0.553622, -0.211955,
		-0.585109, -0.799778, 0.134172,
		38.005962, 34.321804, 47.791256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820103, 35.072533, 48.038006>,  <38.415539, 34.881649, 47.697334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820103, 35.072533, 48.038006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872307, 34.684254, 48.118721>,  <37.903629, 34.451286, 48.167149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872307, 34.684254, 48.118721>,  <37.820103, 35.072533, 48.038006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872307, 34.684254, 48.118721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035715, 0.198793, 0.979391,
		-0.990803, -0.135028, -0.008724,
		0.130511, -0.970695, 0.201787,
		37.911461, 34.393044, 48.179256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499680, 34.913620, 48.675179>,  <37.820103, 35.072533, 48.038006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499680, 34.913620, 48.675179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.709324, 34.573868, 48.650349>,  <37.835110, 34.370014, 48.635452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.709324, 34.573868, 48.650349>,  <37.499680, 34.913620, 48.675179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.709324, 34.573868, 48.650349> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042521, -0.098891, 0.994189,
		-0.850587, -0.518427, -0.087947,
		0.524112, -0.849384, -0.062072,
		37.866558, 34.319054, 48.631725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188911, 34.334694, 49.032784>,  <37.499680, 34.913620, 48.675179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188911, 34.334694, 49.032784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.580223, 34.251949, 49.027496>,  <37.815010, 34.202305, 49.024323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.580223, 34.251949, 49.027496>,  <37.188911, 34.334694, 49.032784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.580223, 34.251949, 49.027496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005720, -0.036816, 0.999306,
		-0.207204, -0.977677, -0.034833,
		0.978281, -0.206861, -0.013221,
		37.873707, 34.189892, 49.023529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290382, 33.833961, 49.492874>,  <37.188911, 34.334694, 49.032784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290382, 33.833961, 49.492874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.655815, 33.990940, 49.450260>,  <37.875076, 34.085129, 49.424694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.655815, 33.990940, 49.450260>,  <37.290382, 33.833961, 49.492874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655815, 33.990940, 49.450260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128690, -0.030506, 0.991216,
		0.385748, -0.919269, -0.078374,
		0.913585, 0.392445, -0.106533,
		37.929890, 34.108673, 49.418301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798470, 33.335873, 49.846176>,  <37.290382, 33.833961, 49.492874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798470, 33.335873, 49.846176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.975445, 33.692543, 49.807903>,  <38.081631, 33.906548, 49.784939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.975445, 33.692543, 49.807903>,  <37.798470, 33.335873, 49.846176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975445, 33.692543, 49.807903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346228, -0.071414, 0.935428,
		0.827268, -0.447002, -0.340320,
		0.442442, 0.891678, -0.095686,
		38.108177, 33.960045, 49.779198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364799, 33.145592, 50.076237>,  <37.798470, 33.335873, 49.846176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364799, 33.145592, 50.076237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.345230, 33.544518, 50.098053>,  <38.333488, 33.783871, 50.111141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.345230, 33.544518, 50.098053>,  <38.364799, 33.145592, 50.076237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345230, 33.544518, 50.098053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504800, -0.022430, 0.862945,
		0.861849, 0.069751, -0.502346,
		-0.048924, 0.997312, 0.054541,
		38.330551, 33.843712, 50.114414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035732, 33.225876, 50.210136>,  <38.364799, 33.145592, 50.076237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035732, 33.225876, 50.210136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.875347, 33.574612, 50.322655>,  <38.779118, 33.783852, 50.390167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.875347, 33.574612, 50.322655>,  <39.035732, 33.225876, 50.210136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875347, 33.574612, 50.322655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364086, -0.130113, 0.922232,
		0.840637, 0.472196, -0.265253,
		-0.400962, 0.871838, 0.281298,
		38.755058, 33.836163, 50.407043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569309, 33.610664, 50.444302>,  <39.035732, 33.225876, 50.210136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569309, 33.610664, 50.444302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.275490, 33.804260, 50.634537>,  <39.099197, 33.920418, 50.748676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.275490, 33.804260, 50.634537>,  <39.569309, 33.610664, 50.444302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275490, 33.804260, 50.634537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513586, -0.061504, 0.855831,
		0.443468, 0.872907, -0.203395,
		-0.734551, 0.483994, 0.475588,
		39.055126, 33.949459, 50.777214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859909, 34.064404, 50.985905>,  <39.569309, 33.610664, 50.444302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859909, 34.064404, 50.985905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.476643, 34.015018, 51.089195>,  <39.246685, 33.985386, 51.151169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.476643, 34.015018, 51.089195>,  <39.859909, 34.064404, 50.985905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476643, 34.015018, 51.089195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269319, -0.083409, 0.959432,
		-0.096918, 0.988837, 0.113171,
		-0.958162, -0.123465, 0.258229,
		39.189194, 33.977978, 51.166664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712246, 34.618454, 51.463612>,  <39.859909, 34.064404, 50.985905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712246, 34.618454, 51.463612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.452751, 34.317871, 51.511696>,  <39.297054, 34.137520, 51.540546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.452751, 34.317871, 51.511696>,  <39.712246, 34.618454, 51.463612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452751, 34.317871, 51.511696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136949, 0.040105, 0.989766,
		-0.748591, 0.658558, 0.076894,
		-0.648734, -0.751460, 0.120211,
		39.258129, 34.092434, 51.547760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206245, 34.889427, 51.996254>,  <39.712246, 34.618454, 51.463612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206245, 34.889427, 51.996254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.164085, 34.492275, 51.974060>,  <39.138790, 34.253983, 51.960743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.164085, 34.492275, 51.974060>,  <39.206245, 34.889427, 51.996254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164085, 34.492275, 51.974060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073814, -0.063448, 0.995252,
		-0.991687, 0.100803, 0.079976,
		-0.105399, -0.992881, -0.055480,
		39.132465, 34.194412, 51.957417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915508, 34.766422, 52.631763>,  <39.206245, 34.889427, 51.996254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915508, 34.766422, 52.631763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.074623, 34.416409, 52.521435>,  <39.170094, 34.206398, 52.455238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.074623, 34.416409, 52.521435>,  <38.915508, 34.766422, 52.631763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074623, 34.416409, 52.521435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181945, -0.219421, 0.958515,
		-0.899256, -0.431468, 0.071926,
		0.397786, -0.875037, -0.275819,
		39.193958, 34.153896, 52.438690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670521, 34.227932, 53.081188>,  <38.915508, 34.766422, 52.631763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670521, 34.227932, 53.081188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.998325, 34.060028, 52.925137>,  <39.195007, 33.959286, 52.831505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.998325, 34.060028, 52.925137>,  <38.670521, 34.227932, 53.081188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998325, 34.060028, 52.925137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223018, -0.393506, 0.891861,
		-0.527890, -0.817895, -0.228867,
		0.819509, -0.419763, -0.390134,
		39.244179, 33.934101, 52.808098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688381, 33.480495, 53.251999>,  <38.670521, 34.227932, 53.081188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688381, 33.480495, 53.251999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.062912, 33.608292, 53.193726>,  <39.287628, 33.684971, 53.158764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.062912, 33.608292, 53.193726>,  <38.688381, 33.480495, 53.251999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062912, 33.608292, 53.193726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318338, -0.597290, 0.736142,
		0.148177, -0.735643, -0.660963,
		0.936325, 0.319489, -0.145678,
		39.343811, 33.704140, 53.150021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.948753, 33.407223, 53.338337>,  <38.688381, 33.480495, 53.251999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.948753, 33.407223, 53.338337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.898342, 33.027271, 53.452778>,  <37.868095, 32.799301, 53.521442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.898342, 33.027271, 53.452778>,  <37.948753, 33.407223, 53.338337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898342, 33.027271, 53.452778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434825, -0.206326, -0.876559,
		0.891652, -0.234878, -0.387026,
		-0.126031, -0.949875, 0.286102,
		37.860535, 32.742310, 53.538609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068634, 33.090889, 52.818653>,  <37.948753, 33.407223, 53.338337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068634, 33.090889, 52.818653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.863731, 32.821209, 53.031460>,  <37.740791, 32.659401, 53.159145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.863731, 32.821209, 53.031460>,  <38.068634, 33.090889, 52.818653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863731, 32.821209, 53.031460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369285, -0.386366, -0.845192,
		0.775385, -0.629422, -0.051055,
		-0.512257, -0.674203, 0.532019,
		37.710052, 32.618950, 53.191067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207001, 32.390717, 52.531670>,  <38.068634, 33.090889, 52.818653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207001, 32.390717, 52.531670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.863792, 32.357964, 52.734486>,  <37.657867, 32.338310, 52.856174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.863792, 32.357964, 52.734486>,  <38.207001, 32.390717, 52.531670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863792, 32.357964, 52.734486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428916, -0.428819, -0.795076,
		0.282534, -0.899672, 0.332815,
		-0.858024, -0.081886, 0.507040,
		37.606384, 32.333397, 52.886597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960644, 31.596741, 52.465054>,  <38.207001, 32.390717, 52.531670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960644, 31.596741, 52.465054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.658871, 31.841038, 52.561241>,  <37.477806, 31.987616, 52.618954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.658871, 31.841038, 52.561241>,  <37.960644, 31.596741, 52.465054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658871, 31.841038, 52.561241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549821, -0.387925, -0.739737,
		-0.358501, -0.690299, 0.628461,
		-0.754436, 0.610738, 0.240470,
		37.432541, 32.024261, 52.633381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457397, 31.130163, 52.501396>,  <37.960644, 31.596741, 52.465054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457397, 31.130163, 52.501396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.265408, 31.478952, 52.462860>,  <37.150211, 31.688227, 52.439739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.265408, 31.478952, 52.462860>,  <37.457397, 31.130163, 52.501396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265408, 31.478952, 52.462860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434135, -0.331518, -0.837629,
		-0.762331, -0.360216, 0.537676,
		-0.479977, 0.871975, -0.096344,
		37.121414, 31.740545, 52.433956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729515, 30.985695, 52.382046>,  <37.457397, 31.130163, 52.501396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729515, 30.985695, 52.382046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.783184, 31.348692, 52.222820>,  <36.815384, 31.566490, 52.127285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.783184, 31.348692, 52.222820>,  <36.729515, 30.985695, 52.382046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783184, 31.348692, 52.222820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546681, -0.267258, -0.793544,
		-0.826522, 0.324085, 0.460251,
		0.134170, 0.907492, -0.398066,
		36.823437, 31.620939, 52.103401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041958, 31.167982, 52.079086>,  <36.729515, 30.985695, 52.382046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041958, 31.167982, 52.079086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.331760, 31.380104, 51.902966>,  <36.505642, 31.507378, 51.797295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.331760, 31.380104, 51.902966>,  <36.041958, 31.167982, 52.079086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331760, 31.380104, 51.902966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459209, -0.105014, -0.882099,
		-0.514022, 0.841276, 0.167438,
		0.724506, 0.530307, -0.440302,
		36.549110, 31.539196, 51.770874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677849, 31.594656, 51.514275>,  <36.041958, 31.167982, 52.079086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677849, 31.594656, 51.514275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.062363, 31.622000, 51.407497>,  <36.293072, 31.638407, 51.343433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.062363, 31.622000, 51.407497>,  <35.677849, 31.594656, 51.514275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062363, 31.622000, 51.407497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271922, 0.078600, -0.959104,
		-0.044582, 0.994560, 0.094146,
		0.961286, 0.068359, -0.266939,
		36.350750, 31.642508, 51.327415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738411, 32.248543, 51.231167>,  <35.677849, 31.594656, 51.514275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738411, 32.248543, 51.231167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.041645, 32.020248, 51.104954>,  <36.223587, 31.883270, 51.029228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.041645, 32.020248, 51.104954>,  <35.738411, 32.248543, 51.231167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041645, 32.020248, 51.104954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204068, 0.251928, -0.945986,
		0.619403, 0.781529, 0.074513,
		0.758087, -0.570741, -0.315529,
		36.269070, 31.849026, 51.010296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098198, 32.651840, 50.678806>,  <35.738411, 32.248543, 51.231167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098198, 32.651840, 50.678806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.207504, 32.268101, 50.650574>,  <36.273087, 32.037857, 50.633636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.207504, 32.268101, 50.650574>,  <36.098198, 32.651840, 50.678806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207504, 32.268101, 50.650574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084248, 0.049222, -0.995228,
		0.958243, 0.277904, -0.067373,
		0.273262, -0.959347, -0.070579,
		36.289482, 31.980297, 50.629398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631622, 32.646461, 50.248119>,  <36.098198, 32.651840, 50.678806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631622, 32.646461, 50.248119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.491535, 32.272102, 50.232906>,  <36.407482, 32.047485, 50.223778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.491535, 32.272102, 50.232906>,  <36.631622, 32.646461, 50.248119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491535, 32.272102, 50.232906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084559, 0.072027, -0.993812,
		0.932845, -0.344832, -0.104363,
		-0.350215, -0.935897, -0.038031,
		36.386471, 31.991333, 50.221497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111710, 32.141571, 49.948761>,  <36.631622, 32.646461, 50.248119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111710, 32.141571, 49.948761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.751190, 31.972443, 49.911072>,  <36.534878, 31.870966, 49.888458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.751190, 31.972443, 49.911072>,  <37.111710, 32.141571, 49.948761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751190, 31.972443, 49.911072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036358, 0.142916, -0.989067,
		0.431663, -0.894873, -0.113437,
		-0.901302, -0.422819, -0.094228,
		36.480801, 31.845596, 49.882805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131889, 31.773680, 49.294983>,  <37.111710, 32.141571, 49.948761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131889, 31.773680, 49.294983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.741112, 31.796976, 49.377148>,  <36.506645, 31.810953, 49.426449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.741112, 31.796976, 49.377148>,  <37.131889, 31.773680, 49.294983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741112, 31.796976, 49.377148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165001, 0.404645, -0.899465,
		-0.135505, -0.912617, -0.385704,
		-0.976941, 0.058240, 0.205414,
		36.448029, 31.814447, 49.438770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752708, 31.531006, 48.712215>,  <37.131889, 31.773680, 49.294983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752708, 31.531006, 48.712215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.501892, 31.753464, 48.930397>,  <36.351402, 31.886938, 49.061306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.501892, 31.753464, 48.930397>,  <36.752708, 31.531006, 48.712215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.501892, 31.753464, 48.930397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353883, 0.420411, -0.835477,
		-0.693961, -0.716907, -0.066805,
		-0.627045, 0.556147, 0.545450,
		36.313778, 31.920307, 49.094032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159077, 31.478689, 48.405151>,  <36.752708, 31.531006, 48.712215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159077, 31.478689, 48.405151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.099712, 31.808064, 48.624214>,  <36.064095, 32.005688, 48.755653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.099712, 31.808064, 48.624214>,  <36.159077, 31.478689, 48.405151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099712, 31.808064, 48.624214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420048, 0.448864, -0.788721,
		-0.895284, -0.347099, 0.279264,
		-0.148413, 0.823434, 0.547659,
		36.055187, 32.055092, 48.788513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570225, 31.706970, 48.136230>,  <36.159077, 31.478689, 48.405151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570225, 31.706970, 48.136230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.696404, 32.025623, 48.342480>,  <35.772110, 32.216816, 48.466228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.696404, 32.025623, 48.342480>,  <35.570225, 31.706970, 48.136230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696404, 32.025623, 48.342480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483554, 0.602472, -0.634983,
		-0.816498, -0.049030, 0.575262,
		0.315446, 0.796633, 0.515626,
		35.791039, 32.264614, 48.497166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950802, 32.098637, 48.330772>,  <35.570225, 31.706970, 48.136230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950802, 32.098637, 48.330772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268856, 32.341026, 48.321304>,  <35.459686, 32.486462, 48.315624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268856, 32.341026, 48.321304>,  <34.950802, 32.098637, 48.330772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268856, 32.341026, 48.321304> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557797, 0.715489, -0.420640,
		-0.237965, 0.347665, 0.906919,
		0.795132, 0.605974, -0.023666,
		35.507397, 32.522820, 48.314205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806507, 32.766331, 48.350330>,  <34.950802, 32.098637, 48.330772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806507, 32.766331, 48.350330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.162357, 32.798351, 48.170483>,  <35.375866, 32.817562, 48.062572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.162357, 32.798351, 48.170483>,  <34.806507, 32.766331, 48.350330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162357, 32.798351, 48.170483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384732, 0.661821, -0.643408,
		0.246063, 0.745375, 0.619571,
		0.889626, 0.080050, -0.449619,
		35.429245, 32.822365, 48.035599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853870, 33.457561, 48.183254>,  <34.806507, 32.766331, 48.350330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853870, 33.457561, 48.183254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.129620, 33.289955, 47.946884>,  <35.295067, 33.189392, 47.805061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.129620, 33.289955, 47.946884>,  <34.853870, 33.457561, 48.183254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129620, 33.289955, 47.946884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411881, 0.444329, -0.795567,
		0.595923, 0.791830, 0.133720,
		0.689369, -0.419019, -0.590925,
		35.336430, 33.164249, 47.769608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993958, 34.021984, 47.807121>,  <34.853870, 33.457561, 48.183254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993958, 34.021984, 47.807121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.119518, 33.711136, 47.588928>,  <35.194855, 33.524628, 47.458012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.119518, 33.711136, 47.588928>,  <34.993958, 34.021984, 47.807121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119518, 33.711136, 47.588928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140143, 0.530302, -0.836146,
		0.939055, 0.338913, 0.057555,
		0.313903, -0.777121, -0.545479,
		35.213688, 33.478001, 47.425285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378769, 34.272388, 47.226013>,  <34.993958, 34.021984, 47.807121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378769, 34.272388, 47.226013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.309040, 33.904697, 47.084797>,  <35.267204, 33.684082, 47.000069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.309040, 33.904697, 47.084797>,  <35.378769, 34.272388, 47.226013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309040, 33.904697, 47.084797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155151, 0.379693, -0.912010,
		0.972389, -0.104207, -0.208807,
		-0.174320, -0.919225, -0.353041,
		35.256744, 33.628929, 46.978886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.908813, 41.551842, 38.401028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.530888, 41.450912, 38.484612>,  <40.304134, 41.390354, 38.534760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.530888, 41.450912, 38.484612>,  <40.908813, 41.551842, 38.401028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530888, 41.450912, 38.484612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242769, -0.967510, -0.070625,
		0.219987, -0.016000, 0.975372,
		-0.944812, -0.252327, 0.208955,
		40.247444, 41.375214, 38.547298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906338, 41.164673, 38.961563>,  <40.908813, 41.551842, 38.401028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.906338, 41.164673, 38.961563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.588177, 41.075256, 38.736221>,  <40.397282, 41.021606, 38.601017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.588177, 41.075256, 38.736221>,  <40.906338, 41.164673, 38.961563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588177, 41.075256, 38.736221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313732, -0.947135, -0.067138,
		-0.518565, -0.230144, 0.823483,
		-0.795401, -0.223538, -0.563355,
		40.349556, 41.008194, 38.567215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642826, 40.542789, 39.199299>,  <40.906338, 41.164673, 38.961563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642826, 40.542789, 39.199299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.483665, 40.551109, 38.832424>,  <40.388168, 40.556103, 38.612297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.483665, 40.551109, 38.832424>,  <40.642826, 40.542789, 39.199299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.483665, 40.551109, 38.832424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231082, -0.965237, -0.122141,
		-0.887847, -0.260547, 0.379265,
		-0.397904, 0.020801, -0.917191,
		40.364296, 40.557350, 38.557266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405128, 39.929932, 39.203178>,  <40.642826, 40.542789, 39.199299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405128, 39.929932, 39.203178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.392883, 40.015816, 38.812698>,  <40.385536, 40.067345, 38.578411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.392883, 40.015816, 38.812698>,  <40.405128, 39.929932, 39.203178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392883, 40.015816, 38.812698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382132, -0.899948, -0.209925,
		-0.923600, -0.379463, -0.054495,
		-0.030616, 0.214712, -0.976198,
		40.383698, 40.080231, 38.519840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056980, 39.383869, 38.903465>,  <40.405128, 39.929932, 39.203178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056980, 39.383869, 38.903465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.274574, 39.562580, 38.619362>,  <40.405128, 39.669807, 38.448898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.274574, 39.562580, 38.619362>,  <40.056980, 39.383869, 38.903465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274574, 39.562580, 38.619362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319271, -0.893001, -0.317198,
		-0.775983, -0.054216, -0.628420,
		0.543983, 0.446776, -0.710263,
		40.437771, 39.696613, 38.406284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803417, 39.034698, 38.276058>,  <40.056980, 39.383869, 38.903465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803417, 39.034698, 38.276058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.165283, 39.186741, 38.199017>,  <40.382404, 39.277966, 38.152794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.165283, 39.186741, 38.199017>,  <39.803417, 39.034698, 38.276058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.165283, 39.186741, 38.199017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247501, -0.836656, -0.488621,
		-0.346867, 0.394372, -0.850973,
		0.904669, 0.380103, -0.192601,
		40.436684, 39.300774, 38.141235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980991, 38.772850, 37.614719>,  <39.803417, 39.034698, 38.276058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980991, 38.772850, 37.614719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.322083, 38.872066, 37.798607>,  <40.526737, 38.931595, 37.908939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.322083, 38.872066, 37.798607>,  <39.980991, 38.772850, 37.614719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322083, 38.872066, 37.798607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397251, -0.879402, -0.262379,
		0.339196, 0.406360, -0.848421,
		0.852723, 0.248038, 0.459717,
		40.577900, 38.946480, 37.936523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504192, 38.778622, 37.058647>,  <39.980991, 38.772850, 37.614719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504192, 38.778622, 37.058647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.676300, 38.723755, 37.415535>,  <40.779564, 38.690834, 37.629665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.676300, 38.723755, 37.415535>,  <40.504192, 38.778622, 37.058647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676300, 38.723755, 37.415535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532525, -0.759513, -0.373574,
		0.728892, 0.635866, -0.253754,
		0.430273, -0.137165, 0.892217,
		40.805382, 38.682606, 37.683201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174492, 38.548683, 36.893349>,  <40.504192, 38.778622, 37.058647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174492, 38.548683, 36.893349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.157017, 38.469727, 37.285088>,  <41.146530, 38.422352, 37.520130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.157017, 38.469727, 37.285088>,  <41.174492, 38.548683, 36.893349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157017, 38.469727, 37.285088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660918, -0.740829, -0.119836,
		0.749186, 0.642035, 0.162826,
		-0.043687, -0.197394, 0.979350,
		41.143909, 38.410507, 37.578892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956814, 38.376278, 37.133759>,  <41.174492, 38.548683, 36.893349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956814, 38.376278, 37.133759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.695789, 38.217110, 37.391697>,  <41.539173, 38.121609, 37.546459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.695789, 38.217110, 37.391697>,  <41.956814, 38.376278, 37.133759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695789, 38.217110, 37.391697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530069, -0.847851, 0.013225,
		0.541470, 0.350442, 0.764199,
		-0.652561, -0.397918, 0.644845,
		41.500019, 38.097733, 37.585152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374798, 38.211044, 37.697266>,  <41.956814, 38.376278, 37.133759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374798, 38.211044, 37.697266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.035431, 38.004852, 37.745388>,  <41.831810, 37.881138, 37.774261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.035431, 38.004852, 37.745388>,  <42.374798, 38.211044, 37.697266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035431, 38.004852, 37.745388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528665, -0.813802, 0.241330,
		-0.026496, 0.268349, 0.962957,
		-0.848417, -0.515476, 0.120304,
		41.780907, 37.850208, 37.781479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.540791, 37.836102, 38.235802>,  <42.374798, 38.211044, 37.697266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.540791, 37.836102, 38.235802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.235874, 37.651169, 38.054626>,  <42.052925, 37.540207, 37.945923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.235874, 37.651169, 38.054626>,  <42.540791, 37.836102, 38.235802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.235874, 37.651169, 38.054626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543481, -0.837272, -0.060037,
		-0.351475, -0.291929, 0.889518,
		-0.762295, -0.462335, -0.452938,
		42.007187, 37.512470, 37.918743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.521950, 37.183163, 38.512138>,  <42.540791, 37.836102, 38.235802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.521950, 37.183163, 38.512138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.305527, 37.138256, 38.178757>,  <42.175671, 37.111313, 37.978725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.305527, 37.138256, 38.178757>,  <42.521950, 37.183163, 38.512138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305527, 37.138256, 38.178757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518145, -0.825105, -0.225228,
		-0.662404, -0.553713, 0.504602,
		-0.541061, -0.112265, -0.833456,
		42.143208, 37.104576, 37.928719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.555977, 36.457611, 38.462013>,  <42.521950, 37.183163, 38.512138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.555977, 36.457611, 38.462013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.425434, 36.576645, 38.103142>,  <42.347107, 36.648064, 37.887817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.425434, 36.576645, 38.103142>,  <42.555977, 36.457611, 38.462013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425434, 36.576645, 38.103142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483018, -0.763372, -0.428902,
		-0.812516, -0.573331, 0.105398,
		-0.326361, 0.297581, -0.897182,
		42.327526, 36.665920, 37.833988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196396, 35.844292, 38.113300>,  <42.555977, 36.457611, 38.462013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196396, 35.844292, 38.113300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.349789, 36.108047, 37.854641>,  <42.441826, 36.266300, 37.699448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.349789, 36.108047, 37.854641>,  <42.196396, 35.844292, 38.113300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349789, 36.108047, 37.854641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578988, -0.717144, -0.387913,
		-0.719522, -0.225642, -0.656790,
		0.383484, 0.659386, -0.646646,
		42.464832, 36.305862, 37.660648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200657, 35.482815, 37.525444>,  <42.196396, 35.844292, 38.113300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200657, 35.482815, 37.525444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.463234, 35.773037, 37.442837>,  <42.620781, 35.947170, 37.393272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.463234, 35.773037, 37.442837>,  <42.200657, 35.482815, 37.525444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.463234, 35.773037, 37.442837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626817, -0.676934, -0.385825,
		-0.419737, 0.123823, -0.899160,
		0.656446, 0.725554, -0.206520,
		42.660168, 35.990704, 37.380882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504444, 35.335018, 36.862499>,  <42.200657, 35.482815, 37.525444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504444, 35.335018, 36.862499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.777596, 35.590820, 37.003757>,  <42.941486, 35.744301, 37.088512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.777596, 35.590820, 37.003757>,  <42.504444, 35.335018, 36.862499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.777596, 35.590820, 37.003757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729338, -0.624442, -0.279530,
		0.041757, 0.448446, -0.892834,
		0.682877, 0.639506, 0.353144,
		42.982460, 35.782673, 37.109699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063660, 35.507851, 36.329742>,  <42.504444, 35.335018, 36.862499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063660, 35.507851, 36.329742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.232140, 35.562275, 36.688423>,  <43.333229, 35.594929, 36.903633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.232140, 35.562275, 36.688423>,  <43.063660, 35.507851, 36.329742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.232140, 35.562275, 36.688423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870123, -0.339552, -0.357197,
		0.255877, 0.930694, -0.261411,
		0.421203, 0.136062, 0.896702,
		43.358501, 35.603092, 36.957436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.668583, 35.723301, 36.026066>,  <43.063660, 35.507851, 36.329742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.668583, 35.723301, 36.026066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.759769, 35.677273, 36.412804>,  <43.814480, 35.649658, 36.644848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.759769, 35.677273, 36.412804>,  <43.668583, 35.723301, 36.026066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759769, 35.677273, 36.412804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833635, -0.489991, -0.254874,
		0.503073, 0.864100, -0.015779,
		0.227968, -0.115067, 0.966846,
		43.828159, 35.642754, 36.702858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.426258, 35.803894, 36.149029>,  <43.668583, 35.723301, 36.026066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.426258, 35.803894, 36.149029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.316422, 35.583836, 36.464481>,  <44.250519, 35.451801, 36.653755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.316422, 35.583836, 36.464481>,  <44.426258, 35.803894, 36.149029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.316422, 35.583836, 36.464481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794940, -0.591316, -0.135706,
		0.540989, 0.589652, 0.599701,
		-0.274594, -0.550142, 0.788633,
		44.234043, 35.418793, 36.701073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996811, 35.728638, 36.500160>,  <44.426258, 35.803894, 36.149029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.996811, 35.728638, 36.500160> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.762794, 35.429085, 36.624676>,  <44.622387, 35.249352, 36.699387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.762794, 35.429085, 36.624676>,  <44.996811, 35.728638, 36.500160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.762794, 35.429085, 36.624676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810983, -0.537353, 0.231426,
		-0.006041, 0.387842, 0.921706,
		-0.585039, -0.748886, 0.311287,
		44.587284, 35.204418, 36.718063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.699516, 35.698200, 36.597340>,  <44.996811, 35.728638, 36.500160>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.699516, 35.698200, 36.597340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.095406, 35.740299, 36.558617>,  <46.332939, 35.765560, 36.535381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.095406, 35.740299, 36.558617>,  <45.699516, 35.698200, 36.597340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.095406, 35.740299, 36.558617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043456, 0.866338, 0.497564,
		0.136238, -0.488243, 0.862008,
		0.989722, 0.105246, -0.096811,
		46.392323, 35.771873, 36.529572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.972801, 35.770603, 37.237438>,  <45.699516, 35.698200, 36.597340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.972801, 35.770603, 37.237438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.228237, 35.937710, 36.978928>,  <46.381496, 36.037975, 36.823822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.228237, 35.937710, 36.978928>,  <45.972801, 35.770603, 37.237438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.228237, 35.937710, 36.978928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021616, 0.829747, 0.557721,
		0.769245, -0.370124, 0.520836,
		0.638588, 0.417765, -0.646280,
		46.419811, 36.063038, 36.785042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.420078, 36.095737, 37.636436>,  <45.972801, 35.770603, 37.237438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.420078, 36.095737, 37.636436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.475185, 36.294643, 37.293800>,  <46.508247, 36.413986, 37.088219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.475185, 36.294643, 37.293800>,  <46.420078, 36.095737, 37.636436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.475185, 36.294643, 37.293800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040571, 0.861278, 0.506511,
		0.989634, -0.104532, 0.098479,
		0.137764, 0.497266, -0.856591,
		46.516514, 36.443825, 37.036823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.996407, 36.618523, 37.756618>,  <46.420078, 36.095737, 37.636436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.996407, 36.618523, 37.756618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.802769, 36.744328, 37.430004>,  <46.686584, 36.819809, 37.234035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.802769, 36.744328, 37.430004>,  <46.996407, 36.618523, 37.756618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.802769, 36.744328, 37.430004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049829, 0.941565, 0.333124,
		0.873595, 0.120577, -0.471480,
		-0.484096, 0.314509, -0.816538,
		46.657539, 36.838680, 37.185043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.324478, 37.146225, 37.634762>,  <46.996407, 36.618523, 37.756618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.324478, 37.146225, 37.634762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.995842, 37.202904, 37.413883>,  <46.798660, 37.236912, 37.281357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.995842, 37.202904, 37.413883>,  <47.324478, 37.146225, 37.634762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.995842, 37.202904, 37.413883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082416, 0.928922, 0.360988,
		0.564096, 0.342092, -0.751511,
		-0.821586, 0.141695, -0.552194,
		46.749367, 37.245411, 37.248226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.318630, 37.842728, 37.634262>,  <47.324478, 37.146225, 37.634762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.318630, 37.842728, 37.634262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.957680, 37.717220, 37.516102>,  <46.741108, 37.641914, 37.445206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.957680, 37.717220, 37.516102>,  <47.318630, 37.842728, 37.634262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.957680, 37.717220, 37.516102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409132, 0.839079, 0.358550,
		0.135366, 0.444407, -0.885539,
		-0.902378, -0.313767, -0.295404,
		46.686966, 37.623089, 37.427479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.098633, 38.397442, 37.379631>,  <47.318630, 37.842728, 37.634262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.098633, 38.397442, 37.379631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.776722, 38.171196, 37.451645>,  <46.583576, 38.035446, 37.494854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.776722, 38.171196, 37.451645>,  <47.098633, 38.397442, 37.379631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.776722, 38.171196, 37.451645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483861, 0.800801, 0.352982,
		-0.343827, 0.196958, -0.918145,
		-0.804775, -0.565619, 0.180037,
		46.535290, 38.001511, 37.505657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.437653, 38.708138, 37.104053>,  <47.098633, 38.397442, 37.379631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.437653, 38.708138, 37.104053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.308681, 38.483990, 37.409218>,  <46.231300, 38.349499, 37.592316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.308681, 38.483990, 37.409218>,  <46.437653, 38.708138, 37.104053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.308681, 38.483990, 37.409218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623788, 0.731982, 0.274027,
		-0.711990, -0.387539, -0.585562,
		-0.322425, -0.560371, 0.762906,
		46.211952, 38.315880, 37.638088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.788647, 38.853054, 37.193024>,  <46.437653, 38.708138, 37.104053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.788647, 38.853054, 37.193024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.877037, 38.687111, 37.546082>,  <45.930073, 38.587543, 37.757915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.877037, 38.687111, 37.546082>,  <45.788647, 38.853054, 37.193024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.877037, 38.687111, 37.546082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650166, 0.611913, 0.450386,
		-0.726949, -0.673389, -0.134510,
		0.220977, -0.414862, 0.882643,
		45.943329, 38.562653, 37.810875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.176594, 38.723553, 37.555218>,  <45.788647, 38.853054, 37.193024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.176594, 38.723553, 37.555218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.418842, 38.689362, 37.871677>,  <45.564194, 38.668846, 38.061554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.418842, 38.689362, 37.871677>,  <45.176594, 38.723553, 37.555218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.418842, 38.689362, 37.871677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619717, 0.572999, 0.536305,
		-0.499169, -0.815086, 0.294049,
		0.605625, -0.085480, 0.791146,
		45.600529, 38.663719, 38.109020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.768318, 38.481060, 38.027275>,  <45.176594, 38.723553, 37.555218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.768318, 38.481060, 38.027275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.072857, 38.644653, 38.228504>,  <45.255581, 38.742809, 38.349243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.072857, 38.644653, 38.228504>,  <44.768318, 38.481060, 38.027275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.072857, 38.644653, 38.228504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646283, 0.540583, 0.538599,
		-0.051677, -0.735189, 0.675889,
		0.761346, 0.408982, 0.503076,
		45.301262, 38.767349, 38.379425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510719, 38.571751, 38.707729>,  <44.768318, 38.481060, 38.027275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510719, 38.571751, 38.707729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.834991, 38.795517, 38.776852>,  <45.029552, 38.929775, 38.818325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.834991, 38.795517, 38.776852>,  <44.510719, 38.571751, 38.707729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.834991, 38.795517, 38.776852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510329, 0.530453, 0.676893,
		0.286999, -0.636927, 0.715511,
		0.810676, 0.559414, 0.172802,
		45.078194, 38.963341, 38.828693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.615074, 38.649338, 39.435284>,  <44.510719, 38.571751, 38.707729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.615074, 38.649338, 39.435284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.780968, 38.969391, 39.261948>,  <44.880505, 39.161423, 39.157944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.780968, 38.969391, 39.261948>,  <44.615074, 38.649338, 39.435284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780968, 38.969391, 39.261948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557181, 0.599817, 0.574255,
		0.719406, 0.003287, 0.694582,
		0.414735, 0.800130, -0.433343,
		44.905388, 39.209431, 39.131947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.759594, 39.112282, 39.995152>,  <44.615074, 38.649338, 39.435284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.759594, 39.112282, 39.995152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.755997, 39.340237, 39.666481>,  <44.753838, 39.477009, 39.469280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.755997, 39.340237, 39.666481>,  <44.759594, 39.112282, 39.995152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.755997, 39.340237, 39.666481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661893, 0.612536, 0.432084,
		0.749544, 0.547745, 0.371696,
		-0.008994, 0.569890, -0.821672,
		44.753300, 39.511204, 39.419979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.655731, 39.879868, 40.197384>,  <44.759594, 39.112282, 39.995152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.655731, 39.879868, 40.197384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.555080, 39.889740, 39.810379>,  <44.494690, 39.895664, 39.578175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.555080, 39.889740, 39.810379>,  <44.655731, 39.879868, 40.197384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555080, 39.889740, 39.810379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742570, 0.636208, 0.209351,
		0.620705, 0.771122, -0.141757,
		-0.251623, 0.024681, -0.967511,
		44.479595, 39.897144, 39.520126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.504093, 40.622021, 40.100288>,  <44.655731, 39.879868, 40.197384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.504093, 40.622021, 40.100288> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.331390, 40.449226, 39.783562>,  <44.227768, 40.345551, 39.593525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.331390, 40.449226, 39.783562>,  <44.504093, 40.622021, 40.100288>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.331390, 40.449226, 39.783562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868881, 0.434848, 0.236545,
		0.242135, 0.790123, -0.563096,
		-0.431761, -0.431987, -0.791814,
		44.201862, 40.319630, 39.546017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143402, 41.123974, 39.615746>,  <44.504093, 40.622021, 40.100288>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143402, 41.123974, 39.615746> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.973389, 40.765045, 39.568138>,  <43.871380, 40.549690, 39.539574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.973389, 40.765045, 39.568138>,  <44.143402, 41.123974, 39.615746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973389, 40.765045, 39.568138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903386, 0.412245, 0.118101,
		-0.056911, 0.157713, -0.985844,
		-0.425035, -0.897319, -0.119014,
		43.845879, 40.495850, 39.532433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632404, 41.154068, 38.996643>,  <44.143402, 41.123974, 39.615746>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632404, 41.154068, 38.996643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.532230, 40.869629, 39.259434>,  <43.472126, 40.698963, 39.417107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.532230, 40.869629, 39.259434>,  <43.632404, 41.154068, 38.996643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.532230, 40.869629, 39.259434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885273, 0.442889, 0.141918,
		-0.391885, -0.546062, -0.740434,
		-0.250434, -0.711102, 0.656975,
		43.457100, 40.656300, 39.456528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886387, 41.003986, 38.868980>,  <43.632404, 41.154068, 38.996643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886387, 41.003986, 38.868980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.960449, 40.816559, 39.214504>,  <43.004887, 40.704102, 39.421818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.960449, 40.816559, 39.214504>,  <42.886387, 41.003986, 38.868980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.960449, 40.816559, 39.214504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.963564, 0.086100, 0.253241,
		-0.193034, -0.879221, -0.435554,
		0.185154, -0.468568, 0.863806,
		43.015995, 40.675987, 39.473648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249809, 40.768524, 39.073944>,  <42.886387, 41.003986, 38.868980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249809, 40.768524, 39.073944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.442780, 40.700481, 39.417648>,  <42.558563, 40.659657, 39.623871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.442780, 40.700481, 39.417648>,  <42.249809, 40.768524, 39.073944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442780, 40.700481, 39.417648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871547, 0.004861, 0.490288,
		-0.087578, -0.985413, -0.145912,
		0.482428, -0.170108, 0.859260,
		42.587509, 40.649448, 39.675426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963825, 40.217670, 39.351929>,  <42.249809, 40.768524, 39.073944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963825, 40.217670, 39.351929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.116776, 40.447258, 39.641579>,  <42.208546, 40.585011, 39.815369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.116776, 40.447258, 39.641579>,  <41.963825, 40.217670, 39.351929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116776, 40.447258, 39.641579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903072, 0.066259, 0.424347,
		0.195582, -0.816193, 0.543670,
		0.382372, 0.573968, 0.724122,
		42.231487, 40.619450, 39.858814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.686169, 35.232716, 42.069881> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513016, 34.876167, 42.016117>,  <38.409126, 34.662239, 41.983860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513016, 34.876167, 42.016117>,  <38.686169, 35.232716, 42.069881>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513016, 34.876167, 42.016117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232211, 0.033811, -0.972078,
		0.871031, -0.452003, 0.192351,
		-0.432878, -0.891375, -0.134411,
		38.383152, 34.608753, 41.975796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134686, 34.786617, 41.654137>,  <38.686169, 35.232716, 42.069881>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134686, 34.786617, 41.654137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771797, 34.622051, 41.619087>,  <38.554062, 34.523312, 41.598057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771797, 34.622051, 41.619087>,  <39.134686, 34.786617, 41.654137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771797, 34.622051, 41.619087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127581, -0.070624, -0.989310,
		0.400833, -0.908706, 0.116561,
		-0.907224, -0.411419, -0.087626,
		38.499630, 34.498627, 41.592800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180111, 34.294804, 41.159626>,  <39.134686, 34.786617, 41.654137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180111, 34.294804, 41.159626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784233, 34.350868, 41.171417>,  <38.546707, 34.384506, 41.178490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784233, 34.350868, 41.171417>,  <39.180111, 34.294804, 41.159626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784233, 34.350868, 41.171417> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048558, -0.134742, -0.989690,
		-0.134742, -0.980918, 0.140159,
		0.989690, -0.140159, -0.029476,
		38.487328, 34.392918, 41.180260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892891, 33.822830, 40.745968>,  <39.180111, 34.294804, 41.159626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892891, 33.822830, 40.745968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636192, 34.129333, 40.758724>,  <38.482174, 34.313236, 40.766380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636192, 34.129333, 40.758724>,  <38.892891, 33.822830, 40.745968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636192, 34.129333, 40.758724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068486, -0.015838, -0.997526,
		-0.763855, -0.642340, 0.062642,
		-0.641743, 0.766256, 0.031894,
		38.443668, 34.359211, 40.768291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300846, 33.562519, 40.377823>,  <38.892891, 33.822830, 40.745968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300846, 33.562519, 40.377823> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204258, 33.948864, 40.415356>,  <38.146305, 34.180672, 40.437874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.204258, 33.948864, 40.415356>,  <38.300846, 33.562519, 40.377823>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204258, 33.948864, 40.415356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283395, 0.022286, -0.958744,
		-0.928105, -0.258100, 0.268338,
		-0.241472, 0.965861, 0.093828,
		38.131817, 34.238621, 40.443504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669296, 33.618073, 40.108341>,  <38.300846, 33.562519, 40.377823>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669296, 33.618073, 40.108341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842060, 33.978237, 40.087486>,  <37.945717, 34.194336, 40.074974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842060, 33.978237, 40.087486>,  <37.669296, 33.618073, 40.108341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842060, 33.978237, 40.087486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326061, 0.101984, -0.939832,
		-0.840918, 0.422918, 0.337636,
		0.431905, 0.900411, -0.052137,
		37.971630, 34.248360, 40.071846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393894, 33.873646, 39.569092>,  <37.669296, 33.618073, 40.108341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393894, 33.873646, 39.569092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646858, 34.178871, 39.622433>,  <37.798637, 34.362007, 39.654438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.646858, 34.178871, 39.622433>,  <37.393894, 33.873646, 39.569092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646858, 34.178871, 39.622433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238980, 0.355946, -0.903432,
		-0.736847, 0.539472, 0.407463,
		0.632412, 0.763067, 0.133355,
		37.836582, 34.407791, 39.662437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069756, 34.530300, 39.422615>,  <37.393894, 33.873646, 39.569092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069756, 34.530300, 39.422615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463131, 34.568756, 39.361149>,  <37.699154, 34.591831, 39.324268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463131, 34.568756, 39.361149>,  <37.069756, 34.530300, 39.422615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463131, 34.568756, 39.361149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178060, 0.353653, -0.918273,
		-0.033936, 0.930423, 0.364913,
		0.983434, 0.096139, -0.153669,
		37.758160, 34.597599, 39.315048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107189, 35.133518, 39.018852>,  <37.069756, 34.530300, 39.422615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107189, 35.133518, 39.018852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468285, 34.970135, 38.964844>,  <37.684940, 34.872105, 38.932438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468285, 34.970135, 38.964844>,  <37.107189, 35.133518, 39.018852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468285, 34.970135, 38.964844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073699, 0.162391, -0.983970,
		0.423836, 0.898216, 0.116493,
		0.902736, -0.408457, -0.135025,
		37.739105, 34.847599, 38.924335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488350, 35.659851, 38.653931>,  <37.107189, 35.133518, 39.018852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488350, 35.659851, 38.653931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661934, 35.308151, 38.575352>,  <37.766083, 35.097130, 38.528202>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661934, 35.308151, 38.575352>,  <37.488350, 35.659851, 38.653931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661934, 35.308151, 38.575352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035101, 0.234387, -0.971509,
		0.900248, 0.414701, 0.132577,
		0.433961, -0.879253, -0.196450,
		37.792122, 35.044376, 38.516418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069706, 35.882965, 38.106754>,  <37.488350, 35.659851, 38.653931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069706, 35.882965, 38.106754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010162, 35.487545, 38.096901>,  <37.974434, 35.250294, 38.090988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010162, 35.487545, 38.096901>,  <38.069706, 35.882965, 38.106754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010162, 35.487545, 38.096901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060141, 0.015812, -0.998065,
		0.987028, -0.150055, 0.057099,
		-0.148862, -0.988551, -0.024631,
		37.965504, 35.190979, 38.089512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508640, 35.553394, 37.600571>,  <38.069706, 35.882965, 38.106754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508640, 35.553394, 37.600571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196892, 35.308048, 37.651741>,  <38.009842, 35.160839, 37.682446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196892, 35.308048, 37.651741>,  <38.508640, 35.553394, 37.600571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196892, 35.308048, 37.651741> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030753, -0.166480, -0.985565,
		0.625813, -0.772051, 0.110886,
		-0.779367, -0.613369, 0.127928,
		37.963081, 35.124039, 37.690121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614658, 35.087540, 37.094269>,  <38.508640, 35.553394, 37.600571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614658, 35.087540, 37.094269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222591, 35.066448, 37.170689>,  <37.987350, 35.053795, 37.216541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222591, 35.066448, 37.170689>,  <38.614658, 35.087540, 37.094269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222591, 35.066448, 37.170689> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186660, -0.078372, -0.979294,
		0.066611, -0.995529, 0.066974,
		-0.980164, -0.052730, 0.191045,
		37.928543, 35.050629, 37.228001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396275, 34.488293, 36.764397>,  <38.614658, 35.087540, 37.094269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396275, 34.488293, 36.764397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121700, 34.775196, 36.812286>,  <37.956955, 34.947338, 36.841022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121700, 34.775196, 36.812286>,  <38.396275, 34.488293, 36.764397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121700, 34.775196, 36.812286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133712, 0.037340, -0.990317,
		-0.714788, -0.695802, 0.070275,
		-0.686440, 0.717263, 0.119727,
		37.915768, 34.990376, 36.848206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025391, 34.532249, 36.251995>,  <38.396275, 34.488293, 36.764397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025391, 34.532249, 36.251995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393688, 34.407658, 36.158009>,  <39.614666, 34.332901, 36.101616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393688, 34.407658, 36.158009>,  <39.025391, 34.532249, 36.251995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393688, 34.407658, 36.158009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227395, -0.060970, 0.971892,
		-0.317052, -0.948294, 0.014692,
		0.920744, -0.311481, -0.234968,
		39.669910, 34.314213, 36.087517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172150, 34.003052, 36.721527>,  <39.025391, 34.532249, 36.251995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172150, 34.003052, 36.721527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536221, 34.049721, 36.562550>,  <39.754662, 34.077721, 36.467163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536221, 34.049721, 36.562550>,  <39.172150, 34.003052, 36.721527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536221, 34.049721, 36.562550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404912, -0.048373, 0.913075,
		0.087302, -0.991992, -0.091269,
		0.910178, 0.116669, -0.397447,
		39.809273, 34.084721, 36.443317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637020, 33.448597, 37.035927>,  <39.172150, 34.003052, 36.721527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637020, 33.448597, 37.035927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868145, 33.741287, 36.891308>,  <40.006821, 33.916901, 36.804539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868145, 33.741287, 36.891308>,  <39.637020, 33.448597, 37.035927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.868145, 33.741287, 36.891308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536275, -0.006442, 0.844019,
		0.615262, -0.681567, -0.396129,
		0.577807, 0.731727, -0.361544,
		40.041489, 33.960804, 36.782845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215569, 33.276535, 37.281731>,  <39.637020, 33.448597, 37.035927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215569, 33.276535, 37.281731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255386, 33.667027, 37.204723>,  <40.279278, 33.901321, 37.158520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255386, 33.667027, 37.204723>,  <40.215569, 33.276535, 37.281731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255386, 33.667027, 37.204723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466437, 0.125122, 0.875660,
		0.878936, -0.176962, -0.442896,
		0.099543, 0.976232, -0.192516,
		40.285248, 33.959896, 37.146969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865925, 33.318413, 37.512978>,  <40.215569, 33.276535, 37.281731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865925, 33.318413, 37.512978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729801, 33.694218, 37.497456>,  <40.648129, 33.919701, 37.488144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729801, 33.694218, 37.497456>,  <40.865925, 33.318413, 37.512978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729801, 33.694218, 37.497456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342677, 0.162341, 0.925320,
		0.875650, 0.301596, -0.377195,
		-0.340307, 0.939513, -0.038804,
		40.627708, 33.976070, 37.485813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488678, 33.724491, 37.664227>,  <40.865925, 33.318413, 37.512978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488678, 33.724491, 37.664227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181381, 33.966423, 37.748116>,  <40.997002, 34.111584, 37.798450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181381, 33.966423, 37.748116>,  <41.488678, 33.724491, 37.664227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181381, 33.966423, 37.748116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409918, 0.213154, 0.886867,
		0.491701, 0.767298, -0.411685,
		-0.768243, 0.604830, 0.209721,
		40.950909, 34.147873, 37.811031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831566, 34.223591, 37.988918>,  <41.488678, 33.724491, 37.664227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831566, 34.223591, 37.988918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456913, 34.255138, 38.125446>,  <41.232121, 34.274067, 38.207363>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456913, 34.255138, 38.125446>,  <41.831566, 34.223591, 37.988918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.456913, 34.255138, 38.125446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350316, 0.209024, 0.913010,
		0.000666, 0.974725, -0.223408,
		-0.936631, 0.078872, 0.341322,
		41.175922, 34.278801, 38.227844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819099, 34.727203, 38.467049>,  <41.831566, 34.223591, 37.988918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819099, 34.727203, 38.467049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485516, 34.534702, 38.575058>,  <41.285366, 34.419201, 38.639862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485516, 34.534702, 38.575058>,  <41.819099, 34.727203, 38.467049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485516, 34.534702, 38.575058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237253, 0.129093, 0.962832,
		-0.498225, 0.867023, 0.006521,
		-0.833956, -0.481254, 0.270022,
		41.235329, 34.390327, 38.656063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530125, 35.080212, 39.040318>,  <41.819099, 34.727203, 38.467049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530125, 35.080212, 39.040318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351040, 34.724369, 39.076447>,  <41.243587, 34.510864, 39.098125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.351040, 34.724369, 39.076447>,  <41.530125, 35.080212, 39.040318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.351040, 34.724369, 39.076447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157911, 0.020763, 0.987235,
		-0.880124, 0.456260, 0.131182,
		-0.447712, -0.889604, 0.090323,
		41.216724, 34.457489, 39.103542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014000, 35.170391, 39.519474>,  <41.530125, 35.080212, 39.040318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014000, 35.170391, 39.519474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065842, 34.774002, 39.505795>,  <41.096947, 34.536167, 39.497585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065842, 34.774002, 39.505795>,  <41.014000, 35.170391, 39.519474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065842, 34.774002, 39.505795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002979, -0.034877, 0.999387,
		-0.991561, -0.129427, -0.007473,
		0.129609, -0.990975, -0.034198,
		41.104725, 34.476711, 39.495537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520115, 35.004181, 39.921471>,  <41.014000, 35.170391, 39.519474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520115, 35.004181, 39.921471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778881, 34.699352, 39.910507>,  <40.934139, 34.516457, 39.903931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778881, 34.699352, 39.910507>,  <40.520115, 35.004181, 39.921471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778881, 34.699352, 39.910507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161809, -0.172303, 0.971663,
		-0.745196, -0.624150, -0.234775,
		0.646916, -0.762068, -0.027406,
		40.972958, 34.470734, 39.902287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159073, 34.452538, 40.266571>,  <40.520115, 35.004181, 39.921471>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159073, 34.452538, 40.266571> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544834, 34.347023, 40.259266>,  <40.776291, 34.283714, 40.254883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544834, 34.347023, 40.259266>,  <40.159073, 34.452538, 40.266571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.544834, 34.347023, 40.259266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097139, -0.417682, 0.903386,
		-0.245930, -0.869458, -0.428440,
		0.964408, -0.263788, -0.018263,
		40.834156, 34.267887, 40.253788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174133, 33.700375, 40.450180>,  <40.159073, 34.452538, 40.266571>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174133, 33.700375, 40.450180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531002, 33.868187, 40.517136>,  <40.745125, 33.968876, 40.557308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531002, 33.868187, 40.517136>,  <40.174133, 33.700375, 40.450180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531002, 33.868187, 40.517136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110079, -0.561352, 0.820223,
		0.438075, -0.713355, -0.547005,
		0.892173, 0.419534, 0.167389,
		40.798653, 33.994045, 40.567352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.595463, 33.202885, 40.728569>,  <40.174133, 33.700375, 40.450180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.595463, 33.202885, 40.728569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828854, 33.515263, 40.817738>,  <40.968887, 33.702690, 40.871239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828854, 33.515263, 40.817738>,  <40.595463, 33.202885, 40.728569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828854, 33.515263, 40.817738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085698, -0.332156, 0.939323,
		0.807599, -0.528966, -0.260728,
		0.583472, 0.780940, 0.222917,
		41.003895, 33.749546, 40.884613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547447, 32.531868, 40.522472>,  <40.595463, 33.202885, 40.728569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547447, 32.531868, 40.522472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420544, 32.153824, 40.553761>,  <40.344402, 31.926998, 40.572533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420544, 32.153824, 40.553761>,  <40.547447, 32.531868, 40.522472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420544, 32.153824, 40.553761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183252, -0.019828, -0.982866,
		0.930467, -0.326153, -0.166902,
		-0.317255, -0.945109, 0.078217,
		40.325367, 31.870291, 40.577225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792976, 32.217857, 40.002506>,  <40.547447, 32.531868, 40.522472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792976, 32.217857, 40.002506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477108, 31.990047, 40.093773>,  <40.287586, 31.853361, 40.148533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477108, 31.990047, 40.093773>,  <40.792976, 32.217857, 40.002506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477108, 31.990047, 40.093773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322927, 0.069617, -0.943860,
		0.521672, -0.819018, -0.238891,
		-0.789669, -0.569529, 0.228166,
		40.240208, 31.819189, 40.162224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701000, 31.667051, 39.474144>,  <40.792976, 32.217857, 40.002506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701000, 31.667051, 39.474144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338299, 31.634790, 39.639698>,  <40.120678, 31.615433, 39.739029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338299, 31.634790, 39.639698>,  <40.701000, 31.667051, 39.474144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338299, 31.634790, 39.639698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399105, -0.152626, -0.904113,
		0.136091, -0.984987, 0.106204,
		-0.906749, -0.080655, 0.413885,
		40.066273, 31.610594, 39.763863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329899, 31.228760, 39.008835>,  <40.701000, 31.667051, 39.474144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329899, 31.228760, 39.008835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036316, 31.396021, 39.222923>,  <39.860168, 31.496378, 39.351376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036316, 31.396021, 39.222923>,  <40.329899, 31.228760, 39.008835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036316, 31.396021, 39.222923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570328, 0.048491, -0.819984,
		-0.368834, -0.907081, 0.202895,
		-0.733953, 0.418155, 0.535219,
		39.816132, 31.521467, 39.383488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798393, 30.818810, 38.846169>,  <40.329899, 31.228760, 39.008835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798393, 30.818810, 38.846169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649757, 31.169231, 38.969101>,  <39.560577, 31.379484, 39.042858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649757, 31.169231, 38.969101>,  <39.798393, 30.818810, 38.846169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649757, 31.169231, 38.969101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636341, 0.000709, -0.771408,
		-0.676014, -0.482210, 0.557206,
		-0.371586, 0.876055, 0.307329,
		39.538280, 31.432049, 39.061298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113274, 30.732920, 39.027607>,  <39.798393, 30.818810, 38.846169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113274, 30.732920, 39.027607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164310, 31.121128, 38.945820>,  <39.194931, 31.354053, 38.896748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164310, 31.121128, 38.945820>,  <39.113274, 30.732920, 39.027607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.164310, 31.121128, 38.945820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743111, -0.042996, -0.667786,
		-0.656892, 0.237145, 0.715720,
		0.127588, 0.970522, -0.204469,
		39.202587, 31.412285, 38.884480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446598, 30.831181, 38.893124>,  <39.113274, 30.732920, 39.027607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446598, 30.831181, 38.893124> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617687, 31.165182, 38.754662>,  <38.720341, 31.365583, 38.671585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617687, 31.165182, 38.754662>,  <38.446598, 30.831181, 38.893124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617687, 31.165182, 38.754662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751179, 0.115348, -0.649942,
		-0.502775, 0.538020, 0.676573,
		0.427723, 0.835003, -0.346155,
		38.746002, 31.415684, 38.650814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884872, 31.281771, 38.876160>,  <38.446598, 30.831181, 38.893124>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884872, 31.281771, 38.876160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162472, 31.426224, 38.627018>,  <38.329033, 31.512896, 38.477535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162472, 31.426224, 38.627018>,  <37.884872, 31.281771, 38.876160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162472, 31.426224, 38.627018> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719948, 0.355434, -0.596105,
		0.006109, 0.862119, 0.506669,
		0.694001, 0.361134, -0.622853,
		38.370670, 31.534563, 38.440163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737289, 32.005535, 38.698608>,  <37.884872, 31.281771, 38.876160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737289, 32.005535, 38.698608> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953751, 31.853567, 38.398521>,  <38.083626, 31.762388, 38.218472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953751, 31.853567, 38.398521>,  <37.737289, 32.005535, 38.698608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953751, 31.853567, 38.398521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669060, 0.345929, -0.657793,
		0.509427, 0.857903, -0.066987,
		0.541150, -0.379916, -0.750214,
		38.116096, 31.739592, 38.173458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581673, 32.523758, 38.216270>,  <37.737289, 32.005535, 38.698608>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581673, 32.523758, 38.216270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741127, 32.222252, 38.007301>,  <37.836800, 32.041348, 37.881920>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741127, 32.222252, 38.007301>,  <37.581673, 32.523758, 38.216270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741127, 32.222252, 38.007301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660494, 0.159245, -0.733750,
		0.636268, 0.637559, -0.434375,
		0.398637, -0.753764, -0.522426,
		37.860718, 31.996122, 37.850574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700256, 32.808884, 37.582226>,  <37.581673, 32.523758, 38.216270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700256, 32.808884, 37.582226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694344, 32.410889, 37.542686>,  <37.690796, 32.172089, 37.518963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694344, 32.410889, 37.542686>,  <37.700256, 32.808884, 37.582226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694344, 32.410889, 37.542686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704483, 0.080521, -0.705138,
		0.709567, 0.059218, -0.702145,
		-0.014780, -0.994992, -0.098853,
		37.689911, 32.112392, 37.513031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925304, 32.610310, 36.888763>,  <37.700256, 32.808884, 37.582226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925304, 32.610310, 36.888763> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673733, 32.335537, 37.034401>,  <37.522789, 32.170673, 37.121784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673733, 32.335537, 37.034401>,  <37.925304, 32.610310, 36.888763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673733, 32.335537, 37.034401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542945, 0.052888, -0.838101,
		0.556465, -0.724791, -0.406231,
		-0.628933, -0.686935, 0.364092,
		37.485054, 32.129456, 37.143627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.680225, 30.543989, 44.046909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.284214, 30.487717, 44.043995>,  <41.046608, 30.453953, 44.042244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.284214, 30.487717, 44.043995>,  <41.680225, 30.543989, 44.046909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284214, 30.487717, 44.043995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004011, 0.079872, -0.996797,
		0.140814, -0.986828, -0.079639,
		-0.990028, -0.140683, -0.007289,
		40.987206, 30.445513, 44.041809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572830, 30.129454, 43.495407>,  <41.680225, 30.543989, 44.046909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572830, 30.129454, 43.495407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.207954, 30.272976, 43.574570>,  <40.989029, 30.359089, 43.622066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.207954, 30.272976, 43.574570>,  <41.572830, 30.129454, 43.495407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207954, 30.272976, 43.574570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135391, 0.191931, -0.972025,
		-0.386751, -0.913467, -0.126499,
		-0.912192, 0.358804, 0.197905,
		40.934296, 30.380617, 43.633942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184639, 29.796257, 42.972836>,  <41.572830, 30.129454, 43.495407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184639, 29.796257, 42.972836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.003654, 30.130947, 43.096233>,  <40.895061, 30.331760, 43.170273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.003654, 30.130947, 43.096233>,  <41.184639, 29.796257, 42.972836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003654, 30.130947, 43.096233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201705, 0.240944, -0.949348,
		-0.868673, -0.491769, 0.059754,
		-0.452463, 0.836725, 0.308494,
		40.867916, 30.381964, 43.188782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811497, 29.993526, 42.334576>,  <41.184639, 29.796257, 42.972836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811497, 29.993526, 42.334576> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.762913, 30.323172, 42.555874>,  <40.733761, 30.520958, 42.688652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.762913, 30.323172, 42.555874>,  <40.811497, 29.993526, 42.334576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762913, 30.323172, 42.555874> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135015, 0.538478, -0.831753,
		-0.983371, -0.175723, 0.045862,
		-0.121463, 0.824113, 0.553249,
		40.726475, 30.570406, 42.721848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089252, 30.236605, 42.315426>,  <40.811497, 29.993526, 42.334576>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089252, 30.236605, 42.315426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.338371, 30.536531, 42.404785>,  <40.487843, 30.716488, 42.458401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.338371, 30.536531, 42.404785>,  <40.089252, 30.236605, 42.315426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.338371, 30.536531, 42.404785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195463, 0.425595, -0.883552,
		-0.757578, 0.506603, 0.411618,
		0.622792, 0.749815, 0.223399,
		40.525208, 30.761477, 42.471806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667435, 30.869774, 42.165401>,  <40.089252, 30.236605, 42.315426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667435, 30.869774, 42.165401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.056400, 30.962187, 42.178223>,  <40.289780, 31.017635, 42.185917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.056400, 30.962187, 42.178223>,  <39.667435, 30.869774, 42.165401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056400, 30.962187, 42.178223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069295, 0.417371, -0.906090,
		-0.222716, 0.878877, 0.421869,
		0.972417, 0.231035, 0.032053,
		40.348125, 31.031498, 42.187840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652565, 31.537630, 42.028461>,  <39.667435, 30.869774, 42.165401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652565, 31.537630, 42.028461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.027588, 31.439064, 41.930267>,  <40.252602, 31.379925, 41.871349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.027588, 31.439064, 41.930267>,  <39.652565, 31.537630, 42.028461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027588, 31.439064, 41.930267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116888, 0.441525, -0.889603,
		0.327602, 0.862749, 0.385152,
		0.937558, -0.246416, -0.245489,
		40.308857, 31.365139, 41.856621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772903, 32.150524, 41.572636>,  <39.652565, 31.537630, 42.028461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772903, 32.150524, 41.572636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.059372, 31.882372, 41.494987>,  <40.231255, 31.721479, 41.448399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.059372, 31.882372, 41.494987>,  <39.772903, 32.150524, 41.572636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059372, 31.882372, 41.494987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093013, 0.183976, -0.978520,
		0.691696, 0.718846, 0.069404,
		0.716174, -0.670383, -0.194118,
		40.274223, 31.681257, 41.436752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274052, 32.502602, 41.249973>,  <39.772903, 32.150524, 41.572636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274052, 32.502602, 41.249973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.321770, 32.119843, 41.144062>,  <40.350403, 31.890186, 41.080513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.321770, 32.119843, 41.144062>,  <40.274052, 32.502602, 41.249973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321770, 32.119843, 41.144062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115509, 0.251500, -0.960940,
		0.986117, 0.145222, -0.080527,
		0.119297, -0.956900, -0.264783,
		40.357559, 31.832773, 41.064629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998703, 32.937489, 41.284698>,  <40.274052, 32.502602, 41.249973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998703, 32.937489, 41.284698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.087921, 33.326500, 41.311356>,  <41.141453, 33.559906, 41.327351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.087921, 33.326500, 41.311356>,  <40.998703, 32.937489, 41.284698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087921, 33.326500, 41.311356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223977, -0.117659, 0.967466,
		0.948729, -0.200859, -0.244067,
		0.223041, 0.972529, 0.066639,
		41.154835, 33.618259, 41.331348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679203, 33.014874, 41.601597>,  <40.998703, 32.937489, 41.284698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679203, 33.014874, 41.601597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.485909, 33.360161, 41.660023>,  <41.369930, 33.567333, 41.695080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.485909, 33.360161, 41.660023>,  <41.679203, 33.014874, 41.601597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485909, 33.360161, 41.660023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321594, 0.019844, 0.946670,
		0.814284, 0.504441, -0.287195,
		-0.483238, 0.863218, 0.146066,
		41.340939, 33.619125, 41.703842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.112759, 33.490265, 41.936108>,  <41.679203, 33.014874, 41.601597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.112759, 33.490265, 41.936108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.751610, 33.643742, 42.013676>,  <41.534920, 33.735828, 42.060219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.751610, 33.643742, 42.013676>,  <42.112759, 33.490265, 41.936108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751610, 33.643742, 42.013676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197761, -0.029851, 0.979796,
		0.381728, 0.922979, -0.048928,
		-0.902870, 0.383692, 0.193924,
		41.480747, 33.758850, 42.071854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091476, 34.126820, 42.463894>,  <42.112759, 33.490265, 41.936108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091476, 34.126820, 42.463894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.727371, 33.961571, 42.474834>,  <41.508907, 33.862423, 42.481400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.727371, 33.961571, 42.474834>,  <42.091476, 34.126820, 42.463894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727371, 33.961571, 42.474834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038468, -0.018617, 0.999086,
		-0.412233, 0.910487, 0.032839,
		-0.910266, -0.413119, 0.027350,
		41.454292, 33.837635, 42.483040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766964, 34.533680, 43.009949>,  <42.091476, 34.126820, 42.463894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766964, 34.533680, 43.009949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.538921, 34.206139, 42.983257>,  <41.402096, 34.009613, 42.967243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.538921, 34.206139, 42.983257>,  <41.766964, 34.533680, 43.009949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.538921, 34.206139, 42.983257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076307, -0.028097, 0.996688,
		-0.818020, 0.573309, -0.046466,
		-0.570105, -0.818857, -0.066731,
		41.367889, 33.960480, 42.963238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375221, 34.623856, 43.651249>,  <41.766964, 34.533680, 43.009949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375221, 34.623856, 43.651249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.300194, 34.253475, 43.520145>,  <41.255177, 34.031246, 43.441483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.300194, 34.253475, 43.520145>,  <41.375221, 34.623856, 43.651249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300194, 34.253475, 43.520145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208448, -0.288560, 0.934496,
		-0.959879, 0.243602, -0.138889,
		-0.187567, -0.925954, -0.327761,
		41.243923, 33.975689, 43.421818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745914, 34.466259, 43.884312>,  <41.375221, 34.623856, 43.651249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745914, 34.466259, 43.884312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.951111, 34.127029, 43.831226>,  <41.074230, 33.923492, 43.799374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.951111, 34.127029, 43.831226>,  <40.745914, 34.466259, 43.884312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951111, 34.127029, 43.831226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087088, -0.205226, 0.974832,
		-0.853965, -0.488522, -0.179136,
		0.512990, -0.848074, -0.132712,
		41.105007, 33.872608, 43.791412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379993, 33.911907, 44.144142>,  <40.745914, 34.466259, 43.884312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379993, 33.911907, 44.144142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.762211, 33.796715, 44.169476>,  <40.991539, 33.727600, 44.184677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.762211, 33.796715, 44.169476>,  <40.379993, 33.911907, 44.144142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762211, 33.796715, 44.169476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118775, -0.179315, 0.976595,
		-0.269882, -0.940698, -0.205548,
		0.955540, -0.287980, 0.063337,
		41.048874, 33.710320, 44.188477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435890, 33.422146, 44.695763>,  <40.379993, 33.911907, 44.144142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.435890, 33.422146, 44.695763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.824192, 33.497761, 44.636570>,  <41.057175, 33.543129, 44.601055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.824192, 33.497761, 44.636570>,  <40.435890, 33.422146, 44.695763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824192, 33.497761, 44.636570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174179, -0.130405, 0.976041,
		0.165211, -0.973273, -0.159518,
		0.970756, 0.189037, -0.147980,
		41.115417, 33.554470, 44.592175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745987, 32.906113, 45.080696>,  <40.435890, 33.422146, 44.695763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745987, 32.906113, 45.080696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.033501, 33.177288, 45.019066>,  <41.206009, 33.339993, 44.982086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.033501, 33.177288, 45.019066>,  <40.745987, 32.906113, 45.080696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.033501, 33.177288, 45.019066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172586, 0.040690, 0.984154,
		0.673468, -0.733989, -0.087756,
		0.718787, 0.677942, -0.154080,
		41.249138, 33.380669, 44.972843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453384, 32.606083, 45.313248>,  <40.745987, 32.906113, 45.080696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453384, 32.606083, 45.313248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.472431, 33.005531, 45.322075>,  <41.483860, 33.245201, 45.327374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.472431, 33.005531, 45.322075>,  <41.453384, 32.606083, 45.313248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472431, 33.005531, 45.322075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232282, -0.032559, 0.972103,
		0.971482, -0.041160, -0.233512,
		0.047614, 0.998622, 0.022070,
		41.486717, 33.305119, 45.328697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993801, 32.723957, 45.683292>,  <41.453384, 32.606083, 45.313248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993801, 32.723957, 45.683292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.777409, 33.059982, 45.699463>,  <41.647575, 33.261597, 45.709167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.777409, 33.059982, 45.699463>,  <41.993801, 32.723957, 45.683292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.777409, 33.059982, 45.699463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195351, 0.078753, 0.977566,
		0.818035, 0.536740, -0.206711,
		-0.540978, 0.840065, 0.040430,
		41.615116, 33.312000, 45.711594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438351, 33.134159, 46.091881>,  <41.993801, 32.723957, 45.683292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438351, 33.134159, 46.091881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.059563, 33.261093, 46.112106>,  <41.832291, 33.337254, 46.124241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.059563, 33.261093, 46.112106>,  <42.438351, 33.134159, 46.091881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.059563, 33.261093, 46.112106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074275, 0.063064, 0.995242,
		0.312634, 0.946215, -0.083289,
		-0.946965, 0.317332, 0.050564,
		41.775475, 33.356293, 46.127277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.496136, 33.564262, 46.592037>,  <42.438351, 33.134159, 46.091881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.496136, 33.564262, 46.592037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.107635, 33.476883, 46.554207>,  <41.874535, 33.424454, 46.531509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.107635, 33.476883, 46.554207>,  <42.496136, 33.564262, 46.592037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107635, 33.476883, 46.554207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098662, 0.007834, 0.995090,
		-0.216640, 0.975816, -0.029162,
		-0.971253, -0.218453, -0.094579,
		41.816261, 33.411346, 46.525833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.951199, 30.143190, 47.383457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.332355, 30.147921, 47.262226>,  <34.561050, 30.150759, 47.189487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.332355, 30.147921, 47.262226>,  <33.951199, 30.143190, 47.383457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332355, 30.147921, 47.262226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284983, 0.377013, -0.881275,
		0.103844, 0.926133, 0.362622,
		0.952891, 0.011826, -0.303082,
		34.618221, 30.151468, 47.171303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022732, 30.760401, 47.041656>,  <33.951199, 30.143190, 47.383457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022732, 30.760401, 47.041656> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.311478, 30.516546, 46.910656>,  <34.484726, 30.370234, 46.832054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.311478, 30.516546, 46.910656>,  <34.022732, 30.760401, 47.041656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.311478, 30.516546, 46.910656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180085, 0.291463, -0.939478,
		0.668193, 0.737154, 0.100611,
		0.721864, -0.609634, -0.327503,
		34.528038, 30.333656, 46.812405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425674, 31.135656, 46.480759>,  <34.022732, 30.760401, 47.041656>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425674, 31.135656, 46.480759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.512497, 30.746469, 46.449203>,  <34.564590, 30.512957, 46.430271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.512497, 30.746469, 46.449203>,  <34.425674, 31.135656, 46.480759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512497, 30.746469, 46.449203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003957, 0.079934, -0.996792,
		0.976151, 0.216672, 0.013500,
		0.217056, -0.972967, -0.078885,
		34.577614, 30.454580, 46.425537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862583, 31.121260, 45.983524>,  <34.425674, 31.135656, 46.480759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862583, 31.121260, 45.983524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.758244, 30.735125, 45.979965>,  <34.695641, 30.503443, 45.977829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.758244, 30.735125, 45.979965>,  <34.862583, 31.121260, 45.983524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758244, 30.735125, 45.979965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063027, -0.007835, -0.997981,
		0.963321, -0.260880, 0.062886,
		-0.260846, -0.965339, -0.008895,
		34.679989, 30.445522, 45.977295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466293, 30.730444, 45.600964>,  <34.862583, 31.121260, 45.983524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466293, 30.730444, 45.600964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.128632, 30.517214, 45.578243>,  <34.926033, 30.389277, 45.564613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.128632, 30.517214, 45.578243>,  <35.466293, 30.730444, 45.600964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128632, 30.517214, 45.578243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014698, 0.128922, -0.991546,
		0.535891, -0.836188, -0.116666,
		-0.844159, -0.533075, -0.056798,
		34.875385, 30.357290, 45.561203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558983, 30.372765, 45.033737>,  <35.466293, 30.730444, 45.600964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558983, 30.372765, 45.033737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.161892, 30.359995, 45.080162>,  <34.923637, 30.352333, 45.108017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.161892, 30.359995, 45.080162>,  <35.558983, 30.372765, 45.033737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161892, 30.359995, 45.080162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119720, 0.161225, -0.979629,
		0.012558, -0.986401, -0.163874,
		-0.992728, -0.031922, 0.116067,
		34.864075, 30.350418, 45.114983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298916, 29.994148, 44.468704>,  <35.558983, 30.372765, 45.033737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298916, 29.994148, 44.468704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.977840, 30.193775, 44.599319>,  <34.785194, 30.313551, 44.677689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.977840, 30.193775, 44.599319>,  <35.298916, 29.994148, 44.468704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977840, 30.193775, 44.599319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257640, 0.203624, -0.944542,
		-0.537881, -0.842299, -0.034866,
		-0.802686, 0.499068, 0.326535,
		34.737034, 30.343496, 44.697281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767315, 29.937914, 43.843861>,  <35.298916, 29.994148, 44.468704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767315, 29.937914, 43.843861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.635422, 30.226400, 44.087540>,  <34.556286, 30.399492, 44.233749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.635422, 30.226400, 44.087540>,  <34.767315, 29.937914, 43.843861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635422, 30.226400, 44.087540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340347, 0.511088, -0.789274,
		-0.880593, -0.467586, 0.076943,
		-0.329728, 0.721216, 0.609202,
		34.536503, 30.442764, 44.270302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065521, 30.021191, 43.677769>,  <34.767315, 29.937914, 43.843861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065521, 30.021191, 43.677769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.179981, 30.358004, 43.860680>,  <34.248657, 30.560091, 43.970425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.179981, 30.358004, 43.860680>,  <34.065521, 30.021191, 43.677769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179981, 30.358004, 43.860680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289902, 0.530941, -0.796278,
		-0.913278, 0.095288, 0.396034,
		0.286147, 0.842034, 0.457273,
		34.265827, 30.610615, 43.997860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425053, 30.432600, 43.718166>,  <34.065521, 30.021191, 43.677769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425053, 30.432600, 43.718166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.749371, 30.666718, 43.721027>,  <33.943962, 30.807188, 43.722744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.749371, 30.666718, 43.721027>,  <33.425053, 30.432600, 43.718166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749371, 30.666718, 43.721027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308964, 0.438307, -0.844055,
		-0.497152, 0.682143, 0.536210,
		0.810791, 0.585293, 0.007148,
		33.992607, 30.842306, 43.723171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128029, 31.003708, 43.555191>,  <33.425053, 30.432600, 43.718166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128029, 31.003708, 43.555191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.518692, 31.062906, 43.492920>,  <33.753090, 31.098425, 43.455559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.518692, 31.062906, 43.492920>,  <33.128029, 31.003708, 43.555191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518692, 31.062906, 43.492920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204110, 0.413651, -0.887261,
		-0.066916, 0.898326, 0.434203,
		0.976658, 0.147997, -0.155677,
		33.811691, 31.107306, 43.446217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154087, 31.710232, 43.403175>,  <33.128029, 31.003708, 43.555191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154087, 31.710232, 43.403175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.512936, 31.573126, 43.291683>,  <33.728245, 31.490862, 43.224789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.512936, 31.573126, 43.291683>,  <33.154087, 31.710232, 43.403175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512936, 31.573126, 43.291683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030274, 0.581736, -0.812814,
		0.440754, 0.737628, 0.511509,
		0.897117, -0.342765, -0.278733,
		33.782070, 31.470297, 43.208065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531830, 32.320091, 43.189423>,  <33.154087, 31.710232, 43.403175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531830, 32.320091, 43.189423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.698776, 32.000267, 43.016674>,  <33.798946, 31.808372, 42.913025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.698776, 32.000267, 43.016674>,  <33.531830, 32.320091, 43.189423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.698776, 32.000267, 43.016674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108533, 0.427981, -0.897247,
		0.902232, 0.421356, 0.091849,
		0.417370, -0.799557, -0.431870,
		33.823986, 31.760401, 42.887112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960258, 32.639336, 42.770111>,  <33.531830, 32.320091, 43.189423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960258, 32.639336, 42.770111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.873436, 32.275928, 42.627293>,  <33.821342, 32.057884, 42.541603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.873436, 32.275928, 42.627293>,  <33.960258, 32.639336, 42.770111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873436, 32.275928, 42.627293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221924, 0.402116, -0.888286,
		0.950597, -0.113574, -0.288905,
		-0.217060, -0.908517, -0.357046,
		33.808319, 32.003372, 42.520180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469631, 33.090073, 43.000790>,  <33.960258, 32.639336, 42.770111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469631, 33.090073, 43.000790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.489136, 33.489201, 43.018559>,  <34.500839, 33.728680, 43.029221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.489136, 33.489201, 43.018559>,  <34.469631, 33.090073, 43.000790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489136, 33.489201, 43.018559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079225, -0.048200, 0.995691,
		0.995663, -0.045030, -0.081403,
		0.048759, 0.997822, 0.044423,
		34.503765, 33.788548, 43.031887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015366, 33.349339, 43.499073>,  <34.469631, 33.090073, 43.000790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015366, 33.349339, 43.499073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.760372, 33.656685, 43.476334>,  <34.607376, 33.841091, 43.462688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.760372, 33.656685, 43.476334>,  <35.015366, 33.349339, 43.499073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760372, 33.656685, 43.476334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030908, 0.099227, 0.994585,
		0.769846, 0.632271, -0.087004,
		-0.637480, 0.768367, -0.056848,
		34.569130, 33.887196, 43.459278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454464, 33.830399, 43.810268>,  <35.015366, 33.349339, 43.499073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454464, 33.830399, 43.810268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.071136, 33.944195, 43.820812>,  <34.841141, 34.012470, 43.827137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.071136, 33.944195, 43.820812>,  <35.454464, 33.830399, 43.810268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071136, 33.944195, 43.820812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050256, 0.077026, 0.995762,
		0.281252, 0.955580, -0.088112,
		-0.958317, 0.284489, 0.026360,
		34.783642, 34.029541, 43.828720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498650, 34.329105, 44.169197>,  <35.454464, 33.830399, 43.810268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498650, 34.329105, 44.169197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.112206, 34.229870, 44.197735>,  <34.880341, 34.170330, 44.214859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.112206, 34.229870, 44.197735>,  <35.498650, 34.329105, 44.169197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112206, 34.229870, 44.197735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081710, -0.031725, 0.996151,
		-0.244871, 0.968217, 0.050921,
		-0.966106, -0.248089, 0.071345,
		34.822372, 34.155441, 44.219139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180752, 34.788452, 44.706310>,  <35.498650, 34.329105, 44.169197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180752, 34.788452, 44.706310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.941437, 34.470284, 44.667629>,  <34.797848, 34.279381, 44.644421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.941437, 34.470284, 44.667629>,  <35.180752, 34.788452, 44.706310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941437, 34.470284, 44.667629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062751, -0.166832, 0.983986,
		-0.798818, 0.582642, 0.149728,
		-0.598291, -0.795421, -0.096707,
		34.761948, 34.231659, 44.638618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.751934, 34.803005, 45.310326>,  <35.180752, 34.788452, 44.706310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.751934, 34.803005, 45.310326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.715137, 34.421394, 45.196228>,  <34.693062, 34.192429, 45.127769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.715137, 34.421394, 45.196228>,  <34.751934, 34.803005, 45.310326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715137, 34.421394, 45.196228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241537, -0.299285, 0.923086,
		-0.966022, 0.016016, 0.257964,
		-0.091989, -0.954029, -0.285247,
		34.687542, 34.135185, 45.110653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225559, 34.581455, 45.733238>,  <34.751934, 34.803005, 45.310326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225559, 34.581455, 45.733238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.413486, 34.246288, 45.622124>,  <34.526241, 34.045189, 45.555454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.413486, 34.246288, 45.622124>,  <34.225559, 34.581455, 45.733238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413486, 34.246288, 45.622124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142903, -0.238335, 0.960612,
		-0.871119, -0.491010, 0.007767,
		0.469819, -0.837917, -0.277785,
		34.554432, 33.994911, 45.538788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.016327, 34.085484, 46.223442>,  <34.225559, 34.581455, 45.733238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.016327, 34.085484, 46.223442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.344433, 33.921791, 46.063595>,  <34.541298, 33.823574, 45.967686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.344433, 33.921791, 46.063595>,  <34.016327, 34.085484, 46.223442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344433, 33.921791, 46.063595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347780, -0.197845, 0.916464,
		-0.454108, -0.890723, -0.019963,
		0.820265, -0.409231, -0.399619,
		34.590511, 33.799023, 45.943710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024479, 33.435520, 46.535870>,  <34.016327, 34.085484, 46.223442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024479, 33.435520, 46.535870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.396187, 33.499645, 46.402748>,  <34.619209, 33.538120, 46.322876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.396187, 33.499645, 46.402748>,  <34.024479, 33.435520, 46.535870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396187, 33.499645, 46.402748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369084, -0.440542, 0.818352,
		-0.015421, -0.883302, -0.468551,
		0.929268, 0.160315, -0.332807,
		34.674969, 33.547741, 46.302906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361568, 32.764507, 46.568268>,  <34.024479, 33.435520, 46.535870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361568, 32.764507, 46.568268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.651428, 33.039970, 46.558250>,  <34.825344, 33.205250, 46.552242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.651428, 33.039970, 46.558250>,  <34.361568, 32.764507, 46.568268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651428, 33.039970, 46.558250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523391, -0.526382, 0.670062,
		0.448263, -0.498669, -0.741882,
		0.724653, 0.688659, -0.025041,
		34.868824, 33.246567, 46.550739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951778, 32.391785, 46.634201>,  <34.361568, 32.764507, 46.568268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951778, 32.391785, 46.634201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.051281, 32.762226, 46.747658>,  <35.110981, 32.984493, 46.815731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.051281, 32.762226, 46.747658>,  <34.951778, 32.391785, 46.634201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051281, 32.762226, 46.747658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399919, -0.364922, 0.840771,
		0.882149, -0.095712, -0.461143,
		0.248753, 0.926105, 0.283638,
		35.125908, 33.040058, 46.832748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602024, 32.421776, 46.705315>,  <34.951778, 32.391785, 46.634201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602024, 32.421776, 46.705315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.503929, 32.734215, 46.935009>,  <35.445072, 32.921677, 47.072826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.503929, 32.734215, 46.935009>,  <35.602024, 32.421776, 46.705315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.503929, 32.734215, 46.935009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506902, -0.401594, 0.762740,
		0.826382, 0.478138, -0.297451,
		-0.245240, 0.781093, 0.574239,
		35.430359, 32.968544, 47.107281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183010, 32.464375, 47.105423>,  <35.602024, 32.421776, 46.705315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183010, 32.464375, 47.105423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930305, 32.704277, 47.301857>,  <35.778683, 32.848221, 47.419720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930305, 32.704277, 47.301857>,  <36.183010, 32.464375, 47.105423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930305, 32.704277, 47.301857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300024, -0.394962, 0.868326,
		0.714750, 0.695911, 0.069578,
		-0.631758, 0.599761, 0.491089,
		35.740776, 32.884205, 47.449184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549152, 32.957851, 47.526752>,  <36.183010, 32.464375, 47.105423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549152, 32.957851, 47.526752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.187885, 32.909061, 47.691395>,  <35.971127, 32.879787, 47.790180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.187885, 32.909061, 47.691395>,  <36.549152, 32.957851, 47.526752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187885, 32.909061, 47.691395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427962, -0.331348, 0.840867,
		0.033818, 0.935591, 0.351462,
		-0.903164, -0.121976, 0.411603,
		35.916935, 32.872467, 47.814877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842201, 33.661789, 47.597076>,  <36.549152, 32.957851, 47.526752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842201, 33.661789, 47.597076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.203255, 33.818302, 47.525356>,  <37.419888, 33.912212, 47.482323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.203255, 33.818302, 47.525356>,  <36.842201, 33.661789, 47.597076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203255, 33.818302, 47.525356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216528, 0.052787, -0.974848,
		-0.371981, 0.918753, 0.132372,
		0.902633, 0.391287, -0.179300,
		37.474045, 33.935688, 47.471565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742664, 34.210335, 47.184166>,  <36.842201, 33.661789, 47.597076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742664, 34.210335, 47.184166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.124256, 34.107758, 47.121986>,  <37.353210, 34.046211, 47.084679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.124256, 34.107758, 47.121986>,  <36.742664, 34.210335, 47.184166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124256, 34.107758, 47.121986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077577, 0.289674, -0.953976,
		0.289674, 0.922130, 0.256448,
		0.953976, -0.256448, -0.155447,
		37.410450, 34.030823, 47.075352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011578, 34.669647, 46.634911>,  <36.742664, 34.210335, 47.184166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011578, 34.669647, 46.634911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.285347, 34.378220, 46.623951>,  <37.449608, 34.203362, 46.617374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.285347, 34.378220, 46.623951>,  <37.011578, 34.669647, 46.634911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285347, 34.378220, 46.623951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063992, 0.097464, -0.993180,
		0.726275, 0.677998, 0.113329,
		0.684419, -0.728574, -0.027399,
		37.490673, 34.159649, 46.615730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675220, 34.954033, 46.250084>,  <37.011578, 34.669647, 46.634911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675220, 34.954033, 46.250084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.700569, 34.554993, 46.238937>,  <37.715778, 34.315567, 46.232250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.700569, 34.554993, 46.238937>,  <37.675220, 34.954033, 46.250084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700569, 34.554993, 46.238937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269560, 0.043994, -0.961978,
		0.960896, 0.053455, 0.271702,
		0.063376, -0.997601, -0.027864,
		37.719582, 34.255711, 46.230579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317677, 34.771152, 45.888184>,  <37.675220, 34.954033, 46.250084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317677, 34.771152, 45.888184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.062244, 34.464569, 45.860577>,  <37.908985, 34.280621, 45.844013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.062244, 34.464569, 45.860577>,  <38.317677, 34.771152, 45.888184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062244, 34.464569, 45.860577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201472, -0.079954, -0.976225,
		0.742717, -0.637300, 0.205476,
		-0.638577, -0.766457, -0.069015,
		37.870670, 34.234631, 45.839870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621048, 34.446884, 45.332039>,  <38.317677, 34.771152, 45.888184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621048, 34.446884, 45.332039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.280640, 34.245689, 45.392399>,  <38.076397, 34.124973, 45.428616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.280640, 34.245689, 45.392399>,  <38.621048, 34.446884, 45.332039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280640, 34.245689, 45.392399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032921, -0.337883, -0.940612,
		0.524103, -0.795510, 0.304104,
		-0.851018, -0.502989, 0.150897,
		38.025333, 34.094791, 45.437668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750954, 33.708385, 45.076221>,  <38.621048, 34.446884, 45.332039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750954, 33.708385, 45.076221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.380638, 33.859425, 45.068901>,  <38.158447, 33.950047, 45.064507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.380638, 33.859425, 45.068901>,  <38.750954, 33.708385, 45.076221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380638, 33.859425, 45.068901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113637, -0.324143, -0.939158,
		-0.360559, -0.867381, 0.342997,
		-0.925788, 0.377600, -0.018306,
		38.102901, 33.972702, 45.063412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316406, 33.272572, 44.712227>,  <38.750954, 33.708385, 45.076221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316406, 33.272572, 44.712227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.092644, 33.599976, 44.659916>,  <37.958385, 33.796417, 44.628529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.092644, 33.599976, 44.659916>,  <38.316406, 33.272572, 44.712227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.092644, 33.599976, 44.659916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014143, -0.148327, -0.988837,
		-0.828771, -0.555015, 0.071400,
		-0.559410, 0.818510, -0.130779,
		37.924820, 33.845528, 44.620682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908916, 33.152672, 44.101913>,  <38.316406, 33.272572, 44.712227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908916, 33.152672, 44.101913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.878986, 33.545990, 44.168293>,  <37.861027, 33.781979, 44.208122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.878986, 33.545990, 44.168293>,  <37.908916, 33.152672, 44.101913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.878986, 33.545990, 44.168293> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001870, 0.166280, -0.986077,
		-0.997195, -0.074093, -0.010603,
		-0.074825, 0.983291, 0.165953,
		37.856541, 33.840977, 44.218079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515335, 33.356476, 43.543510>,  <37.908916, 33.152672, 44.101913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515335, 33.356476, 43.543510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.680351, 33.691967, 43.685688>,  <37.779362, 33.893261, 43.770996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.680351, 33.691967, 43.685688>,  <37.515335, 33.356476, 43.543510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680351, 33.691967, 43.685688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141494, 0.326462, -0.934560,
		-0.899882, 0.435839, 0.016004,
		0.412542, 0.838729, 0.355446,
		37.804115, 33.943584, 43.792320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154648, 33.984200, 43.342068>,  <37.515335, 33.356476, 43.543510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154648, 33.984200, 43.342068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.509830, 34.153011, 43.415199>,  <37.722939, 34.254299, 43.459076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.509830, 34.153011, 43.415199>,  <37.154648, 33.984200, 43.342068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509830, 34.153011, 43.415199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078241, 0.253107, -0.964269,
		-0.453227, 0.870532, 0.191727,
		0.887954, 0.422032, 0.182826,
		37.776218, 34.279621, 43.470047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207047, 34.633926, 42.935699>,  <37.154648, 33.984200, 43.342068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207047, 34.633926, 42.935699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.583416, 34.538872, 43.032188>,  <37.809238, 34.481838, 43.090080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.583416, 34.538872, 43.032188>,  <37.207047, 34.633926, 42.935699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583416, 34.538872, 43.032188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300895, 0.260031, -0.917522,
		0.155311, 0.935902, 0.316173,
		0.940925, -0.237637, 0.241223,
		37.865692, 34.467579, 43.104557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495098, 35.125439, 42.679562>,  <37.207047, 34.633926, 42.935699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495098, 35.125439, 42.679562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.773991, 34.839718, 42.703697>,  <37.941326, 34.668285, 42.718178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.773991, 34.839718, 42.703697>,  <37.495098, 35.125439, 42.679562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773991, 34.839718, 42.703697> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297364, 0.211615, -0.931017,
		0.652264, 0.667072, 0.359953,
		0.697227, -0.714306, 0.060335,
		37.983158, 34.625427, 42.721798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033905, 35.359825, 42.344345>,  <37.495098, 35.125439, 42.679562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033905, 35.359825, 42.344345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.083988, 34.963100, 42.334309>,  <38.114037, 34.725067, 42.328285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.083988, 34.963100, 42.334309>,  <38.033905, 35.359825, 42.344345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.083988, 34.963100, 42.334309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423286, 0.076276, -0.902780,
		0.897303, 0.102414, 0.429371,
		0.125208, -0.991813, -0.025092,
		38.121552, 34.665558, 42.326782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.806816, 40.727726, 41.548134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.704346, 41.098270, 41.437695>,  <30.642864, 41.320595, 41.371429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.704346, 41.098270, 41.437695>,  <30.806816, 40.727726, 41.548134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704346, 41.098270, 41.437695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762869, -0.369169, -0.530797,
		-0.593637, 0.074652, 0.801263,
		-0.256176, 0.926359, -0.276102,
		30.627493, 41.376179, 41.354862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110319, 40.883022, 41.653423>,  <30.806816, 40.727726, 41.548134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110319, 40.883022, 41.653423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.205173, 41.134796, 41.357430>,  <30.262087, 41.285862, 41.179832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.205173, 41.134796, 41.357430>,  <30.110319, 40.883022, 41.653423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205173, 41.134796, 41.357430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748556, -0.367127, -0.552161,
		-0.619218, 0.684858, 0.384107,
		0.237136, 0.629434, -0.739987,
		30.276314, 41.323627, 41.135433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485085, 40.927544, 41.397282>,  <30.110319, 40.883022, 41.653423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485085, 40.927544, 41.397282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.721573, 41.097992, 41.123383>,  <29.863466, 41.200260, 40.959045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.721573, 41.097992, 41.123383>,  <29.485085, 40.927544, 41.397282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721573, 41.097992, 41.123383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646643, -0.256936, -0.718217,
		-0.481986, 0.867411, 0.123645,
		0.591221, 0.426124, -0.684745,
		29.898939, 41.225830, 40.917957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066853, 41.372910, 40.988800>,  <29.485085, 40.927544, 41.397282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066853, 41.372910, 40.988800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.382494, 41.251152, 40.775387>,  <29.571878, 41.178097, 40.647339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.382494, 41.251152, 40.775387>,  <29.066853, 41.372910, 40.988800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382494, 41.251152, 40.775387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613534, -0.348439, -0.708637,
		0.029804, 0.886528, -0.461713,
		0.789105, -0.304397, -0.533531,
		29.619226, 41.159832, 40.615326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901888, 41.547607, 40.258991>,  <29.066853, 41.372910, 40.988800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901888, 41.547607, 40.258991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.217691, 41.305290, 40.219620>,  <29.407173, 41.159901, 40.195995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.217691, 41.305290, 40.219620>,  <28.901888, 41.547607, 40.258991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217691, 41.305290, 40.219620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464244, -0.484568, -0.741398,
		0.401439, 0.631036, -0.663807,
		0.789509, -0.605795, -0.098430,
		29.454544, 41.123550, 40.190090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047256, 41.535118, 39.518181>,  <28.901888, 41.547607, 40.258991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047256, 41.535118, 39.518181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.188431, 41.197239, 39.679134>,  <29.273136, 40.994511, 39.775707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.188431, 41.197239, 39.679134>,  <29.047256, 41.535118, 39.518181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.188431, 41.197239, 39.679134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434636, -0.528859, -0.728972,
		0.828570, 0.082389, -0.553791,
		0.352937, -0.844702, 0.402387,
		29.294312, 40.943829, 39.799850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071226, 41.152733, 38.933109>,  <29.047256, 41.535118, 39.518181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071226, 41.152733, 38.933109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.092131, 40.905087, 39.246532>,  <29.104673, 40.756496, 39.434586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.092131, 40.905087, 39.246532>,  <29.071226, 41.152733, 38.933109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.092131, 40.905087, 39.246532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392887, -0.734100, -0.553838,
		0.918100, -0.278906, -0.281608,
		0.052260, -0.619119, 0.783557,
		29.107809, 40.719353, 39.481598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385561, 40.543526, 38.586636>,  <29.071226, 41.152733, 38.933109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385561, 40.543526, 38.586636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.207952, 40.418613, 38.922569>,  <29.101387, 40.343666, 39.124130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.207952, 40.418613, 38.922569>,  <29.385561, 40.543526, 38.586636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207952, 40.418613, 38.922569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340773, -0.808012, -0.480615,
		0.828684, -0.499598, 0.252359,
		-0.444023, -0.312281, 0.839836,
		29.074745, 40.324928, 39.174519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593948, 39.821629, 38.666466>,  <29.385561, 40.543526, 38.586636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593948, 39.821629, 38.666466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.261843, 39.875538, 38.882797>,  <29.062578, 39.907883, 39.012596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.261843, 39.875538, 38.882797>,  <29.593948, 39.821629, 38.666466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261843, 39.875538, 38.882797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393533, -0.828890, -0.397584,
		0.394702, -0.542933, 0.741238,
		-0.830266, 0.134774, 0.540827,
		29.012762, 39.915970, 39.045044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609123, 39.279438, 39.193588>,  <29.593948, 39.821629, 38.666466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609123, 39.279438, 39.193588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.228720, 39.398792, 39.161224>,  <29.000477, 39.470406, 39.141808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.228720, 39.398792, 39.161224>,  <29.609123, 39.279438, 39.193588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228720, 39.398792, 39.161224> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269961, -0.929036, -0.253010,
		-0.150662, -0.218772, 0.964074,
		-0.951011, 0.298381, -0.080910,
		28.943417, 39.488308, 39.136951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214228, 38.668335, 39.430462>,  <29.609123, 39.279438, 39.193588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214228, 38.668335, 39.430462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.964518, 38.919125, 39.244053>,  <28.814692, 39.069599, 39.132206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.964518, 38.919125, 39.244053>,  <29.214228, 38.668335, 39.430462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.964518, 38.919125, 39.244053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367636, -0.762144, -0.532898,
		-0.689291, -0.161350, 0.706289,
		-0.624277, 0.626979, -0.466021,
		28.777235, 39.107220, 39.104248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.536293, 38.336533, 39.511181>,  <29.214228, 38.668335, 39.430462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.536293, 38.336533, 39.511181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.505255, 38.582222, 39.197056>,  <28.486631, 38.729633, 39.008583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.505255, 38.582222, 39.197056>,  <28.536293, 38.336533, 39.511181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505255, 38.582222, 39.197056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341729, -0.756354, -0.557808,
		-0.936590, 0.225079, 0.268588,
		-0.077597, 0.614222, -0.785310,
		28.481976, 38.766487, 38.961464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867973, 38.249073, 39.322948>,  <28.536293, 38.336533, 39.511181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867973, 38.249073, 39.322948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.042759, 38.404552, 38.998486>,  <28.147631, 38.497841, 38.803806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.042759, 38.404552, 38.998486>,  <27.867973, 38.249073, 39.322948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.042759, 38.404552, 38.998486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462317, -0.676520, -0.573222,
		-0.771574, 0.625490, -0.115913,
		0.436962, 0.388695, -0.811160,
		28.173847, 38.521160, 38.755138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414070, 38.114532, 38.827900>,  <27.867973, 38.249073, 39.322948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414070, 38.114532, 38.827900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.717062, 38.204079, 38.582588>,  <27.898857, 38.257805, 38.435402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.717062, 38.204079, 38.582588>,  <27.414070, 38.114532, 38.827900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717062, 38.204079, 38.582588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346279, -0.658586, -0.668099,
		-0.553459, 0.718436, -0.421347,
		0.757479, 0.223862, -0.613279,
		27.944305, 38.271236, 38.398605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.078173, 38.234135, 38.175278>,  <27.414070, 38.114532, 38.827900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.078173, 38.234135, 38.175278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.457197, 38.129124, 38.102383>,  <27.684612, 38.066116, 38.058643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.457197, 38.129124, 38.102383>,  <27.078173, 38.234135, 38.175278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.457197, 38.129124, 38.102383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317028, -0.700242, -0.639651,
		0.040313, 0.663883, -0.746749,
		0.947559, -0.262527, -0.182240,
		27.741465, 38.050365, 38.047710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006512, 38.074051, 37.562096>,  <27.078173, 38.234135, 38.175278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006512, 38.074051, 37.562096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.366093, 37.920391, 37.646297>,  <27.581841, 37.828194, 37.696819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.366093, 37.920391, 37.646297>,  <27.006512, 38.074051, 37.562096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.366093, 37.920391, 37.646297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208065, -0.797336, -0.566537,
		0.385482, 0.465490, -0.796695,
		0.898951, -0.384154, 0.210506,
		27.635778, 37.805145, 37.709450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.359457, 37.943844, 36.872478>,  <27.006512, 38.074051, 37.562096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.359457, 37.943844, 36.872478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.504120, 37.707569, 37.161003>,  <27.590918, 37.565804, 37.334118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.504120, 37.707569, 37.161003>,  <27.359457, 37.943844, 36.872478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504120, 37.707569, 37.161003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271958, -0.806875, -0.524397,
		0.891765, -0.006516, -0.452453,
		0.361656, -0.590687, 0.721315,
		27.612617, 37.530365, 37.377396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.678438, 37.525196, 36.462086>,  <27.359457, 37.943844, 36.872478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.678438, 37.525196, 36.462086> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.631351, 37.359470, 36.823082>,  <27.603100, 37.260036, 37.039680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.631351, 37.359470, 36.823082>,  <27.678438, 37.525196, 36.462086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.631351, 37.359470, 36.823082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197573, -0.880869, -0.430157,
		0.973195, -0.228944, 0.021836,
		-0.117717, -0.414312, 0.902490,
		27.596037, 37.235176, 37.093830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.173876, 36.977005, 36.477528>,  <27.678438, 37.525196, 36.462086>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.173876, 36.977005, 36.477528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.871773, 36.908211, 36.730511>,  <27.690510, 36.866932, 36.882301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.871773, 36.908211, 36.730511>,  <28.173876, 36.977005, 36.477528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871773, 36.908211, 36.730511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092040, -0.927565, -0.362149,
		0.648932, -0.331728, 0.684722,
		-0.755259, -0.171988, 0.632458,
		27.645195, 36.856613, 36.920250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.252893, 36.357342, 36.856133>,  <28.173876, 36.977005, 36.477528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.252893, 36.357342, 36.856133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.854811, 36.393944, 36.842331>,  <27.615961, 36.415905, 36.834049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.854811, 36.393944, 36.842331>,  <28.252893, 36.357342, 36.856133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854811, 36.393944, 36.842331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071566, -0.921917, -0.380719,
		-0.066648, -0.376425, 0.924047,
		-0.995207, 0.091505, -0.034505,
		27.556250, 36.421394, 36.831978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.681538, 35.731003, 37.012508>,  <28.252893, 36.357342, 36.856133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.681538, 35.731003, 37.012508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.984426, 35.536121, 36.838501>,  <29.166161, 35.419193, 36.734097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.984426, 35.536121, 36.838501>,  <28.681538, 35.731003, 37.012508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984426, 35.536121, 36.838501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632940, 0.711773, 0.304576,
		0.161246, -0.505975, 0.847343,
		0.757223, -0.487205, -0.435022,
		29.211594, 35.389961, 36.707993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240723, 35.674110, 37.485981>,  <28.681538, 35.731003, 37.012508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240723, 35.674110, 37.485981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.438774, 35.630123, 37.141247>,  <29.557606, 35.603733, 36.934406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.438774, 35.630123, 37.141247>,  <29.240723, 35.674110, 37.485981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438774, 35.630123, 37.141247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695817, 0.644202, 0.317556,
		0.520274, -0.756909, 0.395479,
		0.495130, -0.109965, -0.861832,
		29.587313, 35.597134, 36.882698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964584, 35.710953, 37.621830>,  <29.240723, 35.674110, 37.485981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964584, 35.710953, 37.621830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.932730, 35.799530, 37.233063>,  <29.913616, 35.852676, 36.999802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.932730, 35.799530, 37.233063>,  <29.964584, 35.710953, 37.621830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932730, 35.799530, 37.233063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559886, 0.816624, 0.140188,
		0.824734, -0.532997, -0.189020,
		-0.079639, 0.221448, -0.971915,
		29.908838, 35.865963, 36.941490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692980, 35.833408, 37.375362>,  <29.964584, 35.710953, 37.621830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692980, 35.833408, 37.375362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.487879, 35.984562, 37.067001>,  <30.364819, 36.075256, 36.881985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.487879, 35.984562, 37.067001>,  <30.692980, 35.833408, 37.375362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.487879, 35.984562, 37.067001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668604, 0.739034, -0.082448,
		0.538565, -0.557701, -0.631599,
		-0.512754, 0.377886, -0.770899,
		30.334053, 36.097927, 36.835732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226786, 36.004482, 36.812946>,  <30.692980, 35.833408, 37.375362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226786, 36.004482, 36.812946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.894587, 36.209866, 36.726562>,  <30.695267, 36.333096, 36.674732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.894587, 36.209866, 36.726562>,  <31.226786, 36.004482, 36.812946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894587, 36.209866, 36.726562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501358, 0.857979, 0.111854,
		0.242721, -0.015379, -0.969974,
		-0.830498, 0.513453, -0.215960,
		30.645437, 36.363903, 36.661774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.341166, 36.505104, 36.179436>,  <31.226786, 36.004482, 36.812946>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.341166, 36.505104, 36.179436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.024424, 36.659016, 36.369133>,  <30.834379, 36.751362, 36.482952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.024424, 36.659016, 36.369133>,  <31.341166, 36.505104, 36.179436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024424, 36.659016, 36.369133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490020, 0.863773, 0.117370,
		-0.364480, 0.325330, -0.872533,
		-0.791855, 0.384780, 0.474247,
		30.786867, 36.774448, 36.511406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.253689, 37.101326, 35.898460>,  <31.341166, 36.505104, 36.179436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.253689, 37.101326, 35.898460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.078836, 37.133694, 36.256760>,  <30.973925, 37.153114, 36.471741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.078836, 37.133694, 36.256760>,  <31.253689, 37.101326, 35.898460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078836, 37.133694, 36.256760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541865, 0.818596, 0.190481,
		-0.717842, 0.568640, -0.401685,
		-0.437133, 0.080924, 0.895749,
		30.947697, 37.157970, 36.525486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158958, 37.854095, 35.976593>,  <31.253689, 37.101326, 35.898460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158958, 37.854095, 35.976593> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.096907, 37.702896, 36.341679>,  <31.059675, 37.612175, 36.560730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.096907, 37.702896, 36.341679>,  <31.158958, 37.854095, 35.976593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096907, 37.702896, 36.341679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427787, 0.807082, 0.406960,
		-0.890468, 0.453579, 0.036503,
		-0.155128, -0.378000, 0.912716,
		31.050367, 37.589497, 36.615494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764578, 38.379974, 36.348934>,  <31.158958, 37.854095, 35.976593>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764578, 38.379974, 36.348934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.955898, 38.176289, 36.635132>,  <31.070690, 38.054077, 36.806850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.955898, 38.176289, 36.635132>,  <30.764578, 38.379974, 36.348934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955898, 38.176289, 36.635132> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478893, 0.834170, 0.273535,
		-0.736131, 0.211813, 0.642843,
		0.478302, -0.509211, 0.715494,
		31.099388, 38.023525, 36.849781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679935, 38.655445, 36.898094>,  <30.764578, 38.379974, 36.348934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679935, 38.655445, 36.898094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.018780, 38.462570, 36.987450>,  <31.222086, 38.346844, 37.041061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.018780, 38.462570, 36.987450>,  <30.679935, 38.655445, 36.898094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018780, 38.462570, 36.987450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381883, 0.844670, 0.375096,
		-0.369554, -0.232440, 0.899668,
		0.847110, -0.482186, 0.223386,
		31.272913, 38.317913, 37.054466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024506, 39.108063, 37.248600>,  <30.679935, 38.655445, 36.898094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024506, 39.108063, 37.248600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.315203, 38.837440, 37.296143>,  <31.489620, 38.675068, 37.324669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.315203, 38.837440, 37.296143>,  <31.024506, 39.108063, 37.248600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315203, 38.837440, 37.296143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437997, 0.589694, 0.678542,
		-0.529157, -0.441066, 0.724882,
		0.726740, -0.676551, 0.118855,
		31.533224, 38.634476, 37.331799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164656, 38.956192, 37.992119>,  <31.024506, 39.108063, 37.248600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164656, 38.956192, 37.992119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.493477, 38.804020, 37.822651>,  <31.690769, 38.712715, 37.720970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.493477, 38.804020, 37.822651>,  <31.164656, 38.956192, 37.992119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493477, 38.804020, 37.822651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562471, 0.658329, 0.500229,
		0.088613, -0.649520, 0.755164,
		0.822055, -0.380431, -0.423672,
		31.740093, 38.689892, 37.695549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.563723, 38.751167, 38.562443>,  <31.164656, 38.956192, 37.992119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.563723, 38.751167, 38.562443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.811022, 38.822044, 38.256142>,  <31.959400, 38.864571, 38.072361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.811022, 38.822044, 38.256142>,  <31.563723, 38.751167, 38.562443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811022, 38.822044, 38.256142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638976, 0.454021, 0.620946,
		0.457699, -0.873193, 0.167470,
		0.618241, 0.177197, -0.765754,
		31.996496, 38.875202, 38.026417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213306, 38.782127, 38.915039>,  <31.563723, 38.751167, 38.562443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213306, 38.782127, 38.915039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.296524, 38.960148, 38.566639>,  <32.346455, 39.066959, 38.357597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.296524, 38.960148, 38.566639>,  <32.213306, 38.782127, 38.915039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296524, 38.960148, 38.566639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425397, 0.760691, 0.490294,
		0.880769, -0.472527, -0.031063,
		0.208048, 0.445050, -0.871003,
		32.358940, 39.093662, 38.305336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932358, 38.899075, 38.908234>,  <32.213306, 38.782127, 38.915039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932358, 38.899075, 38.908234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.763859, 39.165848, 38.662388>,  <32.662762, 39.325912, 38.514881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.763859, 39.165848, 38.662388>,  <32.932358, 38.899075, 38.908234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763859, 39.165848, 38.662388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531107, 0.730722, 0.428919,
		0.735173, -0.145746, -0.662026,
		-0.421244, 0.666936, -0.614614,
		32.637486, 39.365929, 38.478004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424889, 39.384563, 38.766750>,  <32.932358, 38.899075, 38.908234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424889, 39.384563, 38.766750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.094509, 39.573616, 38.643829>,  <32.896282, 39.687046, 38.570076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.094509, 39.573616, 38.643829>,  <33.424889, 39.384563, 38.766750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094509, 39.573616, 38.643829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334078, 0.849423, 0.408501,
		0.454100, 0.234736, -0.859472,
		-0.825945, 0.472631, -0.307302,
		32.846725, 39.715405, 38.551640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635471, 40.133453, 38.671883>,  <33.424889, 39.384563, 38.766750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635471, 40.133453, 38.671883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.241596, 40.113693, 38.738766>,  <33.005272, 40.101837, 38.778896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.241596, 40.113693, 38.738766>,  <33.635471, 40.133453, 38.671883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241596, 40.113693, 38.738766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033981, 0.886253, 0.461954,
		-0.171009, 0.460560, -0.871000,
		-0.984683, -0.049400, 0.167207,
		32.946190, 40.098873, 38.788929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446869, 40.745739, 38.646835>,  <33.635471, 40.133453, 38.671883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446869, 40.745739, 38.646835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.158844, 40.586769, 38.874367>,  <32.986031, 40.491386, 39.010887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.158844, 40.586769, 38.874367>,  <33.446869, 40.745739, 38.646835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158844, 40.586769, 38.874367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027846, 0.802532, 0.595959,
		-0.693353, 0.444966, -0.566805,
		-0.720060, -0.397426, 0.568828,
		32.942825, 40.467541, 39.045013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210903, 41.406227, 38.927612>,  <33.446869, 40.745739, 38.646835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210903, 41.406227, 38.927612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.031673, 41.109772, 39.127586>,  <32.924133, 40.931896, 39.247570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.031673, 41.109772, 39.127586>,  <33.210903, 41.406227, 38.927612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.031673, 41.109772, 39.127586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063367, 0.531477, 0.844700,
		-0.891746, 0.410170, -0.191179,
		-0.448077, -0.741143, 0.499934,
		32.897251, 40.887428, 39.277565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575424, 41.691174, 39.263927>,  <33.210903, 41.406227, 38.927612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575424, 41.691174, 39.263927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.713100, 41.367294, 39.454052>,  <32.795708, 41.172966, 39.568127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.713100, 41.367294, 39.454052>,  <32.575424, 41.691174, 39.263927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713100, 41.367294, 39.454052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110466, 0.537656, 0.835897,
		-0.932377, -0.235204, 0.274502,
		0.344194, -0.809695, 0.475316,
		32.816360, 41.124386, 39.596645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154789, 41.629150, 39.854446>,  <32.575424, 41.691174, 39.263927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154789, 41.629150, 39.854446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.482979, 41.413597, 39.930782>,  <32.679893, 41.284264, 39.976585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.482979, 41.413597, 39.930782>,  <32.154789, 41.629150, 39.854446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482979, 41.413597, 39.930782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187618, 0.569155, 0.800538,
		-0.540017, -0.621018, 0.568083,
		0.820476, -0.538887, 0.190840,
		32.729122, 41.251930, 39.988033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159752, 41.603016, 40.529804>,  <32.154789, 41.629150, 39.854446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159752, 41.603016, 40.529804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.542122, 41.516926, 40.449913>,  <32.771542, 41.465271, 40.401978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.542122, 41.516926, 40.449913>,  <32.159752, 41.603016, 40.529804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542122, 41.516926, 40.449913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286141, 0.530316, 0.798053,
		-0.065843, -0.820026, 0.568526,
		0.955923, -0.215225, -0.199726,
		32.828899, 41.452358, 40.389996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<42.096123, 34.014084, 47.000519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.839855, 33.709419, 46.961697>,  <41.686096, 33.526623, 46.938404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.839855, 33.709419, 46.961697>,  <42.096123, 34.014084, 47.000519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839855, 33.709419, 46.961697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134019, -0.013534, 0.990886,
		-0.756031, 0.647837, -0.093406,
		-0.640669, -0.761659, -0.097054,
		41.647655, 33.480923, 46.932579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591633, 34.224033, 47.396465>,  <42.096123, 34.014084, 47.000519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591633, 34.224033, 47.396465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.547165, 33.828434, 47.357414>,  <41.520485, 33.591076, 47.333984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.547165, 33.828434, 47.357414>,  <41.591633, 34.224033, 47.396465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547165, 33.828434, 47.357414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318985, -0.057528, 0.946012,
		-0.941217, 0.136309, -0.309079,
		-0.111169, -0.988995, -0.097626,
		41.513813, 33.531734, 47.328125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910580, 33.982616, 47.714455>,  <41.591633, 34.224033, 47.396465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910580, 33.982616, 47.714455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.136158, 33.652519, 47.702217>,  <41.271503, 33.454460, 47.694874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.136158, 33.652519, 47.702217>,  <40.910580, 33.982616, 47.714455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136158, 33.652519, 47.702217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167509, -0.150586, 0.974302,
		-0.808645, -0.544329, -0.223158,
		0.563946, -0.825245, -0.030591,
		41.305344, 33.404945, 47.693039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527214, 33.540607, 48.007797>,  <40.910580, 33.982616, 47.714455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527214, 33.540607, 48.007797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.905937, 33.414860, 48.035294>,  <41.133171, 33.339413, 48.051792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.905937, 33.414860, 48.035294>,  <40.527214, 33.540607, 48.007797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905937, 33.414860, 48.035294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154859, -0.257855, 0.953693,
		-0.282091, -0.913608, -0.292822,
		0.946807, -0.314374, 0.068742,
		41.189980, 33.320549, 48.055916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.488499, 33.035576, 48.574966>,  <40.527214, 33.540607, 48.007797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.488499, 33.035576, 48.574966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.887440, 33.019264, 48.550903>,  <41.126804, 33.009476, 48.536465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.887440, 33.019264, 48.550903>,  <40.488499, 33.035576, 48.574966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887440, 33.019264, 48.550903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040927, -0.368871, 0.928579,
		-0.060057, -0.928586, -0.366227,
		0.997356, -0.040779, -0.060157,
		41.186646, 33.007030, 48.532856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764431, 32.329075, 48.562252>,  <40.488499, 33.035576, 48.574966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764431, 32.329075, 48.562252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.042778, 32.574093, 48.712215>,  <41.209785, 32.721104, 48.802193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.042778, 32.574093, 48.712215>,  <40.764431, 32.329075, 48.562252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042778, 32.574093, 48.712215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203741, -0.332202, 0.920941,
		0.688661, -0.717239, -0.106369,
		0.695870, 0.612544, 0.374906,
		41.251537, 32.757854, 48.824688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913826, 32.124550, 49.263794>,  <40.764431, 32.329075, 48.562252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913826, 32.124550, 49.263794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.106728, 32.474060, 49.288933>,  <41.222469, 32.683765, 49.304016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.106728, 32.474060, 49.288933>,  <40.913826, 32.124550, 49.263794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106728, 32.474060, 49.288933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031523, -0.089005, 0.995532,
		0.875461, -0.478123, -0.070467,
		0.482259, 0.873771, 0.062849,
		41.251404, 32.736191, 49.307789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.621281, 32.045105, 49.670883>,  <40.913826, 32.124550, 49.263794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.621281, 32.045105, 49.670883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.506756, 32.426128, 49.712193>,  <41.438042, 32.654743, 49.736977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.506756, 32.426128, 49.712193>,  <41.621281, 32.045105, 49.670883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506756, 32.426128, 49.712193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163457, -0.057641, 0.984865,
		0.944091, 0.298857, -0.139198,
		-0.286310, 0.952555, 0.103269,
		41.420864, 32.711895, 49.743172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137478, 32.397099, 50.086689>,  <41.621281, 32.045105, 49.670883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137478, 32.397099, 50.086689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.831074, 32.651646, 50.123047>,  <41.647232, 32.804375, 50.144863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.831074, 32.651646, 50.123047>,  <42.137478, 32.397099, 50.086689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831074, 32.651646, 50.123047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059120, -0.071059, 0.995719,
		0.640107, 0.768102, 0.016810,
		-0.766008, 0.636372, 0.090895,
		41.601273, 32.842556, 50.150314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246880, 32.969700, 50.536942>,  <42.137478, 32.397099, 50.086689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246880, 32.969700, 50.536942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.849979, 32.922165, 50.551437>,  <41.611839, 32.893646, 50.560135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.849979, 32.922165, 50.551437>,  <42.246880, 32.969700, 50.536942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849979, 32.922165, 50.551437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055294, -0.161238, 0.985366,
		-0.111253, 0.979735, 0.166559,
		-0.992253, -0.118834, 0.036235,
		41.552303, 32.886513, 50.562309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036560, 33.353996, 51.131611>,  <42.246880, 32.969700, 50.536942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036560, 33.353996, 51.131611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.743832, 33.093094, 51.052620>,  <41.568195, 32.936550, 51.005226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.743832, 33.093094, 51.052620>,  <42.036560, 33.353996, 51.131611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.743832, 33.093094, 51.052620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100869, -0.182910, 0.977941,
		-0.673993, 0.735595, 0.068064,
		-0.731818, -0.652261, -0.197479,
		41.524284, 32.897415, 50.993378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564270, 33.475639, 51.644459>,  <42.036560, 33.353996, 51.131611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564270, 33.475639, 51.644459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.429249, 33.128849, 51.497810>,  <41.348236, 32.920776, 51.409821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.429249, 33.128849, 51.497810>,  <41.564270, 33.475639, 51.644459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429249, 33.128849, 51.497810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060794, -0.368593, 0.927601,
		-0.939341, 0.335405, 0.071713,
		-0.337555, -0.866973, -0.366625,
		41.327984, 32.868755, 51.387821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949551, 33.334095, 51.846275>,  <41.564270, 33.475639, 51.644459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949551, 33.334095, 51.846275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.133537, 32.986992, 51.770981>,  <41.243927, 32.778732, 51.725803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.133537, 32.986992, 51.770981>,  <40.949551, 33.334095, 51.846275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133537, 32.986992, 51.770981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164318, -0.291520, 0.942346,
		-0.872601, -0.402514, -0.276676,
		0.459964, -0.867755, -0.188240,
		41.271526, 32.726665, 51.714508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514511, 32.655552, 51.865139>,  <40.949551, 33.334095, 51.846275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514511, 32.655552, 51.865139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.897549, 32.645908, 51.979980>,  <41.127373, 32.640121, 52.048885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.897549, 32.645908, 51.979980>,  <40.514511, 32.655552, 51.865139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.897549, 32.645908, 51.979980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285944, -0.201723, 0.936773,
		0.035332, -0.979146, -0.200062,
		0.957594, -0.024108, 0.287108,
		41.184826, 32.638676, 52.066113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323666, 33.372856, 52.223408>,  <40.514511, 32.655552, 51.865139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323666, 33.372856, 52.223408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.999916, 33.527328, 52.400398>,  <39.805668, 33.620010, 52.506592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.999916, 33.527328, 52.400398>,  <40.323666, 33.372856, 52.223408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999916, 33.527328, 52.400398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394103, 0.201452, -0.896716,
		-0.435432, -0.900156, -0.010854,
		-0.809371, 0.386181, 0.442473,
		39.757103, 33.643181, 52.533138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724957, 33.067451, 51.994740>,  <40.323666, 33.372856, 52.223408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724957, 33.067451, 51.994740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.579178, 33.416580, 52.124580>,  <39.491711, 33.626057, 52.202484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.579178, 33.416580, 52.124580>,  <39.724957, 33.067451, 51.994740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579178, 33.416580, 52.124580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438859, 0.146465, -0.886539,
		-0.821331, -0.465549, 0.329666,
		-0.364442, 0.872818, 0.324607,
		39.469845, 33.678425, 52.221962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022549, 32.915043, 51.985722>,  <39.724957, 33.067451, 51.994740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022549, 32.915043, 51.985722> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.074593, 33.311283, 51.968822>,  <39.105820, 33.549026, 51.958683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.074593, 33.311283, 51.968822>,  <39.022549, 32.915043, 51.985722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.074593, 33.311283, 51.968822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631127, 0.049883, -0.774074,
		-0.764690, 0.127377, 0.631684,
		0.130109, 0.990599, -0.042246,
		39.113625, 33.608463, 51.956150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419849, 33.117153, 51.710564>,  <39.022549, 32.915043, 51.985722>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419849, 33.117153, 51.710564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.664261, 33.429649, 51.659466>,  <38.810905, 33.617146, 51.628807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.664261, 33.429649, 51.659466>,  <38.419849, 33.117153, 51.710564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664261, 33.429649, 51.659466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468432, 0.226747, -0.853907,
		-0.638139, 0.581596, 0.504504,
		0.611024, 0.781237, -0.127742,
		38.847569, 33.664021, 51.621143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015491, 33.723713, 51.473392>,  <38.419849, 33.117153, 51.710564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015491, 33.723713, 51.473392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.392296, 33.804459, 51.366165>,  <38.618378, 33.852905, 51.301826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.392296, 33.804459, 51.366165>,  <38.015491, 33.723713, 51.473392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392296, 33.804459, 51.366165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323451, 0.333398, -0.885565,
		-0.089388, 0.920922, 0.379358,
		0.942014, 0.201862, -0.268071,
		38.674900, 33.865017, 51.285744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978767, 34.412189, 51.390785>,  <38.015491, 33.723713, 51.473392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978767, 34.412189, 51.390785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.298973, 34.276810, 51.192947>,  <38.491096, 34.195583, 51.074245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.298973, 34.276810, 51.192947>,  <37.978767, 34.412189, 51.390785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298973, 34.276810, 51.192947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342694, 0.418533, -0.841066,
		0.491662, 0.842782, 0.219058,
		0.800518, -0.338450, -0.494593,
		38.539127, 34.175274, 51.044571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201775, 34.903961, 50.892715>,  <37.978767, 34.412189, 51.390785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201775, 34.903961, 50.892715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.345730, 34.560097, 50.747684>,  <38.432102, 34.353779, 50.660667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.345730, 34.560097, 50.747684>,  <38.201775, 34.903961, 50.892715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.345730, 34.560097, 50.747684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174932, 0.319549, -0.931283,
		0.916451, 0.398580, -0.035382,
		0.359885, -0.859664, -0.362575,
		38.453693, 34.302197, 50.638912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505611, 35.078182, 50.301098>,  <38.201775, 34.903961, 50.892715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505611, 35.078182, 50.301098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.441902, 34.690063, 50.228252>,  <38.403679, 34.457191, 50.184547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.441902, 34.690063, 50.228252>,  <38.505611, 35.078182, 50.301098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441902, 34.690063, 50.228252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130419, 0.203526, -0.970344,
		0.978583, -0.130795, -0.158960,
		-0.159268, -0.970294, -0.182109,
		38.394123, 34.398975, 50.173618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884907, 35.042358, 49.754379>,  <38.505611, 35.078182, 50.301098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884907, 35.042358, 49.754379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.658581, 34.712547, 49.755241>,  <38.522785, 34.514660, 49.755760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.658581, 34.712547, 49.755241>,  <38.884907, 35.042358, 49.754379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658581, 34.712547, 49.755241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007168, -0.007533, -0.999946,
		0.824500, -0.565771, 0.010172,
		-0.565817, -0.824528, 0.002156,
		38.488834, 34.465187, 49.755890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071404, 34.670715, 49.200401>,  <38.884907, 35.042358, 49.754379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071404, 34.670715, 49.200401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.722630, 34.492374, 49.281345>,  <38.513367, 34.385368, 49.329910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.722630, 34.492374, 49.281345>,  <39.071404, 34.670715, 49.200401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722630, 34.492374, 49.281345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184405, -0.083825, -0.979269,
		0.453575, -0.891172, -0.009128,
		-0.871932, -0.445855, 0.202358,
		38.461048, 34.358620, 49.342052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.148491, 34.035210, 48.859612>,  <39.071404, 34.670715, 49.200401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.148491, 34.035210, 48.859612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.755680, 34.086422, 48.915089>,  <38.519993, 34.117149, 48.948376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.755680, 34.086422, 48.915089>,  <39.148491, 34.035210, 48.859612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755680, 34.086422, 48.915089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161296, -0.187591, -0.968914,
		-0.098036, -0.973867, 0.204870,
		-0.982025, 0.128033, 0.138690,
		38.461071, 34.124832, 48.956696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722088, 33.400490, 48.533157>,  <39.148491, 34.035210, 48.859612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722088, 33.400490, 48.533157> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.449398, 33.691574, 48.563301>,  <38.285782, 33.866226, 48.581387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.449398, 33.691574, 48.563301>,  <38.722088, 33.400490, 48.533157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449398, 33.691574, 48.563301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293961, -0.178134, -0.939072,
		-0.669952, -0.662344, 0.335358,
		-0.681727, 0.727715, 0.075362,
		38.244881, 33.909889, 48.585911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973675, 33.123493, 48.318462>,  <38.722088, 33.400490, 48.533157>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973675, 33.123493, 48.318462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.939854, 33.521370, 48.294991>,  <37.919559, 33.760094, 48.280907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.939854, 33.521370, 48.294991>,  <37.973675, 33.123493, 48.318462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.939854, 33.521370, 48.294991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388798, -0.087156, -0.917191,
		-0.917435, -0.054740, 0.394103,
		-0.084556, 0.994690, -0.058677,
		37.914486, 33.819778, 48.277386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271053, 33.344414, 48.201290>,  <37.973675, 33.123493, 48.318462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271053, 33.344414, 48.201290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.504898, 33.631344, 48.049671>,  <37.645203, 33.803501, 47.958698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.504898, 33.631344, 48.049671>,  <37.271053, 33.344414, 48.201290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504898, 33.631344, 48.049671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437883, -0.114341, -0.891731,
		-0.683002, 0.687292, 0.247260,
		0.584608, 0.717325, -0.379049,
		37.680279, 33.846542, 47.935955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481873, 33.351158, 48.361851>,  <37.271053, 33.344414, 48.201290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481873, 33.351158, 48.361851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176186, 33.093365, 48.371761>,  <35.992775, 32.938690, 48.377708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.176186, 33.093365, 48.371761>,  <36.481873, 33.351158, 48.361851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176186, 33.093365, 48.371761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357803, -0.391695, 0.847675,
		-0.536609, 0.656671, 0.529938,
		-0.764217, -0.644483, 0.024772,
		35.946922, 32.900021, 48.379192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.237598, 33.313492, 49.119865>,  <36.481873, 33.351158, 48.361851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.237598, 33.313492, 49.119865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.079823, 32.998596, 48.930271>,  <35.985157, 32.809658, 48.816513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.079823, 32.998596, 48.930271>,  <36.237598, 33.313492, 49.119865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079823, 32.998596, 48.930271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024122, -0.524500, 0.851069,
		-0.918603, 0.324266, 0.225876,
		-0.394444, -0.787243, -0.473985,
		35.961491, 32.762424, 48.788074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769585, 33.056976, 49.572212>,  <36.237598, 33.313492, 49.119865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769585, 33.056976, 49.572212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.852402, 32.759689, 49.317730>,  <35.902092, 32.581318, 49.165039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.852402, 32.759689, 49.317730>,  <35.769585, 33.056976, 49.572212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852402, 32.759689, 49.317730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079111, -0.635450, 0.768079,
		-0.975129, -0.209354, -0.072767,
		0.207040, -0.743219, -0.636208,
		35.914513, 32.536724, 49.126869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399830, 32.469063, 49.774136>,  <35.769585, 33.056976, 49.572212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399830, 32.469063, 49.774136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.690651, 32.306534, 49.552757>,  <35.865143, 32.209019, 49.419930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.690651, 32.306534, 49.552757>,  <35.399830, 32.469063, 49.774136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690651, 32.306534, 49.552757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180655, -0.664470, 0.725151,
		-0.662401, -0.627199, -0.409692,
		0.727041, -0.406328, -0.553452,
		35.908768, 32.184639, 49.386723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189289, 31.814260, 49.554901>,  <35.399830, 32.469063, 49.774136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189289, 31.814260, 49.554901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.588058, 31.824080, 49.525116>,  <35.827320, 31.829971, 49.507244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.588058, 31.824080, 49.525116>,  <35.189289, 31.814260, 49.554901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588058, 31.824080, 49.525116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075946, -0.538191, 0.839394,
		-0.019468, -0.842465, -0.538399,
		0.996922, 0.024548, -0.074459,
		35.887135, 31.831444, 49.502777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351913, 31.165480, 49.813099>,  <35.189289, 31.814260, 49.554901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351913, 31.165480, 49.813099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.695377, 31.370264, 49.822906>,  <35.901455, 31.493135, 49.828789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.695377, 31.370264, 49.822906>,  <35.351913, 31.165480, 49.813099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695377, 31.370264, 49.822906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283771, -0.514678, 0.809062,
		0.426827, -0.687750, -0.587212,
		0.858657, 0.511963, 0.024515,
		35.952976, 31.523853, 49.830261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875126, 30.677917, 50.063000>,  <35.351913, 31.165480, 49.813099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875126, 30.677917, 50.063000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.003864, 31.047499, 50.145676>,  <36.081108, 31.269249, 50.195282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.003864, 31.047499, 50.145676>,  <35.875126, 30.677917, 50.063000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003864, 31.047499, 50.145676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286683, -0.303162, 0.908794,
		0.902346, -0.233237, -0.362454,
		0.321847, 0.923956, 0.206691,
		36.100418, 31.324686, 50.207684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310379, 30.177982, 49.860218>,  <35.875126, 30.677917, 50.063000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310379, 30.177982, 49.860218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.133152, 29.819643, 49.873756>,  <36.026814, 29.604639, 49.881878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.133152, 29.819643, 49.873756>,  <36.310379, 30.177982, 49.860218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133152, 29.819643, 49.873756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280008, 0.102428, -0.954518,
		0.851637, -0.432394, -0.296227,
		-0.443070, -0.895848, 0.033842,
		36.000233, 29.550888, 49.883907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553043, 29.774105, 49.222145>,  <36.310379, 30.177982, 49.860218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553043, 29.774105, 49.222145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207779, 29.634531, 49.368130>,  <36.000622, 29.550787, 49.455719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.207779, 29.634531, 49.368130>,  <36.553043, 29.774105, 49.222145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207779, 29.634531, 49.368130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408276, 0.057043, -0.911074,
		0.297090, -0.935408, -0.191701,
		-0.863162, -0.348938, 0.364958,
		35.948830, 29.529850, 49.477615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339664, 29.322752, 48.618069>,  <36.553043, 29.774105, 49.222145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339664, 29.322752, 48.618069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.001614, 29.416895, 48.810055>,  <35.798782, 29.473381, 48.925247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.001614, 29.416895, 48.810055>,  <36.339664, 29.322752, 48.618069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001614, 29.416895, 48.810055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508967, -0.079762, -0.857082,
		-0.163443, -0.968629, 0.187202,
		-0.845126, 0.235364, 0.479964,
		35.748074, 29.487501, 48.954044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868332, 28.870819, 48.308590>,  <36.339664, 29.322752, 48.618069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868332, 28.870819, 48.308590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.649284, 29.163601, 48.470753>,  <35.517857, 29.339270, 48.568050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.649284, 29.163601, 48.470753>,  <35.868332, 28.870819, 48.308590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649284, 29.163601, 48.470753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548630, 0.051714, -0.834464,
		-0.631756, -0.679387, 0.373253,
		-0.547622, 0.731955, 0.405403,
		35.484997, 29.383188, 48.592373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161640, 28.798815, 47.994053>,  <35.868332, 28.870819, 48.308590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161640, 28.798815, 47.994053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.168369, 29.178085, 48.120972>,  <35.172405, 29.405647, 48.197124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.168369, 29.178085, 48.120972>,  <35.161640, 28.798815, 47.994053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168369, 29.178085, 48.120972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400927, 0.297110, -0.866593,
		-0.915955, -0.112634, 0.385148,
		0.016824, 0.948177, 0.317297,
		35.173416, 29.462538, 48.216160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571934, 29.003033, 47.591980>,  <35.161640, 28.798815, 47.994053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571934, 29.003033, 47.591980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.770161, 29.322054, 47.729572>,  <34.889095, 29.513468, 47.812126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.770161, 29.322054, 47.729572>,  <34.571934, 29.003033, 47.591980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770161, 29.322054, 47.729572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258168, 0.513384, -0.818405,
		-0.829315, 0.316769, 0.460319,
		0.495566, 0.797555, 0.343978,
		34.918831, 29.561321, 47.832764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071548, 29.445305, 47.589558>,  <34.571934, 29.003033, 47.591980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071548, 29.445305, 47.589558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.419941, 29.636993, 47.546219>,  <34.628975, 29.752007, 47.520214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.419941, 29.636993, 47.546219>,  <34.071548, 29.445305, 47.589558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419941, 29.636993, 47.546219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435514, 0.650980, -0.621734,
		-0.227415, 0.588706, 0.775698,
		0.870982, 0.479219, -0.108347,
		34.681236, 29.780760, 47.513714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<40.108334, 30.173586, 51.025925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.122963, 30.548859, 50.888241>,  <40.131741, 30.774021, 50.805630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.122963, 30.548859, 50.888241>,  <40.108334, 30.173586, 51.025925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122963, 30.548859, 50.888241> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265586, -0.341176, -0.901700,
		-0.963393, -0.058442, -0.261644,
		0.036570, 0.938181, -0.344208,
		40.133934, 30.830313, 50.784977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687012, 30.171211, 50.394260>,  <40.108334, 30.173586, 51.025925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687012, 30.171211, 50.394260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.971710, 30.450491, 50.425064>,  <40.142529, 30.618059, 50.443546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.971710, 30.450491, 50.425064>,  <39.687012, 30.171211, 50.394260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971710, 30.450491, 50.425064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258163, -0.158043, -0.953087,
		-0.653275, 0.698239, -0.292736,
		0.711747, 0.698201, 0.077014,
		40.185234, 30.659952, 50.448170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550079, 30.612745, 49.915310>,  <39.687012, 30.171211, 50.394260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550079, 30.612745, 49.915310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.939026, 30.659567, 49.996109>,  <40.172394, 30.687660, 50.044586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.939026, 30.659567, 49.996109>,  <39.550079, 30.612745, 49.915310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939026, 30.659567, 49.996109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199505, 0.032734, -0.979350,
		-0.121250, 0.992586, 0.008476,
		0.972366, 0.117055, 0.201995,
		40.230736, 30.694683, 50.056709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892239, 31.373964, 49.656826>,  <39.550079, 30.612745, 49.915310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892239, 31.373964, 49.656826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.188789, 31.106218, 49.676075>,  <40.366718, 30.945570, 49.687622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.188789, 31.106218, 49.676075>,  <39.892239, 31.373964, 49.656826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188789, 31.106218, 49.676075> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190266, 0.140890, -0.971570,
		0.643556, 0.729452, 0.231810,
		0.741374, -0.669365, 0.048119,
		40.411201, 30.905409, 49.690510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345440, 31.565701, 49.172626>,  <39.892239, 31.373964, 49.656826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345440, 31.565701, 49.172626> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.478741, 31.195488, 49.244553>,  <40.558723, 30.973360, 49.287708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.478741, 31.195488, 49.244553>,  <40.345440, 31.565701, 49.172626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478741, 31.195488, 49.244553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211787, -0.112364, -0.970835,
		0.918743, 0.361619, 0.158569,
		0.333254, -0.925530, 0.179820,
		40.578716, 30.917830, 49.298500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959507, 31.593763, 48.800388>,  <40.345440, 31.565701, 49.172626>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959507, 31.593763, 48.800388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.869034, 31.208660, 48.859642>,  <40.814751, 30.977598, 48.895195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.869034, 31.208660, 48.859642>,  <40.959507, 31.593763, 48.800388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869034, 31.208660, 48.859642> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084253, -0.170839, -0.981690,
		0.970435, -0.209559, 0.119756,
		-0.226181, -0.962756, 0.148132,
		40.801178, 30.919834, 48.904083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.376785, 31.312965, 48.337841>,  <40.959507, 31.593763, 48.800388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.376785, 31.312965, 48.337841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.116135, 31.016552, 48.402653>,  <40.959743, 30.838705, 48.441540>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.116135, 31.016552, 48.402653>,  <41.376785, 31.312965, 48.337841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116135, 31.016552, 48.402653> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052842, -0.257429, -0.964851,
		0.756696, -0.620162, 0.206906,
		-0.651628, -0.741032, 0.162025,
		40.920647, 30.794243, 48.451260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.617741, 30.726154, 48.035973>,  <41.376785, 31.312965, 48.337841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.617741, 30.726154, 48.035973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.228767, 30.647753, 48.086506>,  <40.995384, 30.600712, 48.116825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.228767, 30.647753, 48.086506>,  <41.617741, 30.726154, 48.035973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.228767, 30.647753, 48.086506> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079921, -0.228835, -0.970179,
		0.219069, -0.953529, 0.206861,
		-0.972431, -0.196004, 0.126338,
		40.937038, 30.588951, 48.124409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559204, 30.089064, 47.719398>,  <41.617741, 30.726154, 48.035973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559204, 30.089064, 47.719398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.194729, 30.251785, 47.745487>,  <40.976044, 30.349419, 47.761139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.194729, 30.251785, 47.745487>,  <41.559204, 30.089064, 47.719398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.194729, 30.251785, 47.745487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193000, -0.281596, -0.939923,
		-0.364001, -0.869029, 0.335099,
		-0.911183, 0.406807, 0.065221,
		40.921375, 30.373827, 47.765053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125561, 29.631975, 47.341084>,  <41.559204, 30.089064, 47.719398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125561, 29.631975, 47.341084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.886703, 29.952620, 47.352718>,  <40.743389, 30.145006, 47.359699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.886703, 29.952620, 47.352718>,  <41.125561, 29.631975, 47.341084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886703, 29.952620, 47.352718> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336616, -0.217513, -0.916176,
		-0.728091, -0.556874, 0.399720,
		-0.597138, 0.801611, 0.029083,
		40.707561, 30.193102, 47.361443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481281, 29.382921, 47.098537>,  <41.125561, 29.631975, 47.341084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481281, 29.382921, 47.098537> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.489288, 29.777506, 47.033436>,  <40.494091, 30.014257, 46.994373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.489288, 29.777506, 47.033436>,  <40.481281, 29.382921, 47.098537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489288, 29.777506, 47.033436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210007, -0.155005, -0.965334,
		-0.977495, 0.053501, 0.204061,
		0.020016, 0.986464, -0.162753,
		40.495293, 30.073444, 46.984612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941700, 29.418926, 46.739788>,  <40.481281, 29.382921, 47.098537>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941700, 29.418926, 46.739788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.151409, 29.745478, 46.642906>,  <40.277233, 29.941408, 46.584778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.151409, 29.745478, 46.642906>,  <39.941700, 29.418926, 46.739788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151409, 29.745478, 46.642906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271008, -0.109676, -0.956308,
		-0.807275, 0.567006, 0.163746,
		0.524273, 0.816380, -0.242202,
		40.308693, 29.990391, 46.570244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296593, 29.689669, 46.707825>,  <39.941700, 29.418926, 46.739788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296593, 29.689669, 46.707825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.898407, 29.722248, 46.727509>,  <38.659496, 29.741795, 46.739319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.898407, 29.722248, 46.727509>,  <39.296593, 29.689669, 46.707825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.898407, 29.722248, 46.727509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006393, -0.458729, 0.888554,
		0.094944, 0.884836, 0.456126,
		-0.995462, 0.081447, 0.049210,
		38.599770, 29.746683, 46.742271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149837, 29.902851, 47.391983>,  <39.296593, 29.689669, 46.707825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149837, 29.902851, 47.391983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.820305, 29.733660, 47.241043>,  <38.622585, 29.632145, 47.150478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.820305, 29.733660, 47.241043>,  <39.149837, 29.902851, 47.391983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820305, 29.733660, 47.241043> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060906, -0.595807, 0.800815,
		-0.563558, 0.682717, 0.465080,
		-0.823828, -0.422979, -0.377353,
		38.573158, 29.606766, 47.127838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655815, 29.965832, 47.836998>,  <39.149837, 29.902851, 47.391983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655815, 29.965832, 47.836998> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.533428, 29.647707, 47.627666>,  <38.459995, 29.456833, 47.502068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.533428, 29.647707, 47.627666>,  <38.655815, 29.965832, 47.836998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533428, 29.647707, 47.627666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077908, -0.526926, 0.846333,
		-0.948850, 0.299718, 0.099259,
		-0.305964, -0.795310, -0.523324,
		38.441639, 29.409115, 47.470669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153156, 29.660437, 48.261425>,  <38.655815, 29.965832, 47.836998>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153156, 29.660437, 48.261425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.236652, 29.358400, 48.012825>,  <38.286751, 29.177179, 47.863663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.236652, 29.358400, 48.012825>,  <38.153156, 29.660437, 48.261425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236652, 29.358400, 48.012825> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186014, -0.654556, 0.732772,
		-0.960117, -0.037353, -0.277091,
		0.208743, -0.755090, -0.621502,
		38.299274, 29.131874, 47.826374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712162, 29.098692, 48.482510>,  <38.153156, 29.660437, 48.261425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712162, 29.098692, 48.482510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.981792, 28.915808, 48.250446>,  <38.143570, 28.806076, 48.111210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.981792, 28.915808, 48.250446>,  <37.712162, 29.098692, 48.482510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981792, 28.915808, 48.250446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057319, -0.815421, 0.576023,
		-0.736436, -0.355028, -0.575862,
		0.674074, -0.457212, -0.580155,
		38.184013, 28.778645, 48.076401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450813, 28.515858, 48.217258>,  <37.712162, 29.098692, 48.482510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450813, 28.515858, 48.217258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.841576, 28.435133, 48.189186>,  <38.076035, 28.386698, 48.172344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.841576, 28.435133, 48.189186>,  <37.450813, 28.515858, 48.217258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841576, 28.435133, 48.189186> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128740, -0.818105, 0.560473,
		-0.170524, -0.538495, -0.825194,
		0.976907, -0.201810, -0.070181,
		38.134647, 28.374590, 48.168133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430496, 27.885893, 48.350594>,  <37.450813, 28.515858, 48.217258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430496, 27.885893, 48.350594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.819599, 27.964359, 48.400005>,  <38.053062, 28.011438, 48.429653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.819599, 27.964359, 48.400005>,  <37.430496, 27.885893, 48.350594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819599, 27.964359, 48.400005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051277, -0.701739, 0.710587,
		0.226074, -0.684896, -0.692682,
		0.972759, 0.196164, 0.123525,
		38.111427, 28.023209, 48.437061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612713, 27.204323, 48.475117>,  <37.430496, 27.885893, 48.350594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612713, 27.204323, 48.475117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.910034, 27.440683, 48.600548>,  <38.088428, 27.582499, 48.675808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.910034, 27.440683, 48.600548>,  <37.612713, 27.204323, 48.475117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910034, 27.440683, 48.600548> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229783, -0.665774, 0.709891,
		0.628248, -0.455611, -0.630653,
		0.743307, 0.590900, 0.313579,
		38.133026, 27.617954, 48.694622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.300812, 26.739048, 48.490185>,  <37.612713, 27.204323, 48.475117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.300812, 26.739048, 48.490185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.293003, 27.042887, 48.750225>,  <38.288319, 27.225189, 48.906250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.293003, 27.042887, 48.750225>,  <38.300812, 26.739048, 48.490185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293003, 27.042887, 48.750225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173453, -0.637794, 0.750421,
		0.984649, 0.127414, -0.119302,
		-0.019524, 0.759595, 0.650104,
		38.287148, 27.270765, 48.945255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005093, 26.672005, 48.807331>,  <38.300812, 26.739048, 48.490185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005093, 26.672005, 48.807331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.773861, 26.889679, 49.050537>,  <38.635120, 27.020283, 49.196461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.773861, 26.889679, 49.050537>,  <39.005093, 26.672005, 48.807331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773861, 26.889679, 49.050537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258592, -0.584549, 0.769046,
		0.773918, 0.601801, 0.197196,
		-0.578084, 0.544186, 0.608014,
		38.600437, 27.052935, 49.232941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399799, 26.777393, 49.379692>,  <39.005093, 26.672005, 48.807331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399799, 26.777393, 49.379692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.017544, 26.844135, 49.476776>,  <38.788189, 26.884180, 49.535027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.017544, 26.844135, 49.476776>,  <39.399799, 26.777393, 49.379692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017544, 26.844135, 49.476776> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085216, -0.632182, 0.770120,
		0.281939, 0.756641, 0.589920,
		-0.955640, 0.166856, 0.242715,
		38.730850, 26.894192, 49.549591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541866, 26.934122, 50.027412>,  <39.399799, 26.777393, 49.379692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541866, 26.934122, 50.027412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.148537, 26.864811, 50.005333>,  <38.912540, 26.823223, 49.992085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.148537, 26.864811, 50.005333>,  <39.541866, 26.934122, 50.027412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148537, 26.864811, 50.005333> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009508, -0.352080, 0.935922,
		-0.181610, 0.919790, 0.347857,
		-0.983325, -0.173280, -0.055196,
		38.853539, 26.812826, 49.988773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277863, 27.098915, 50.671516>,  <39.541866, 26.934122, 50.027412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277863, 27.098915, 50.671516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.979389, 26.866379, 50.541744>,  <38.800304, 26.726856, 50.463882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.979389, 26.866379, 50.541744>,  <39.277863, 27.098915, 50.671516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979389, 26.866379, 50.541744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162868, -0.313106, 0.935649,
		-0.645513, 0.751003, 0.138952,
		-0.746182, -0.581342, -0.324428,
		38.755535, 26.691977, 50.444416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712379, 27.120855, 51.225136>,  <39.277863, 27.098915, 50.671516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712379, 27.120855, 51.225136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.615395, 26.796833, 51.011585>,  <38.557205, 26.602419, 50.883457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.615395, 26.796833, 51.011585>,  <38.712379, 27.120855, 51.225136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615395, 26.796833, 51.011585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281557, -0.467853, 0.837758,
		-0.928405, 0.353441, -0.114640,
		-0.242464, -0.810057, -0.533872,
		38.542656, 26.553816, 50.851425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984077, 27.400200, 51.256115>,  <38.712379, 27.120855, 51.225136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984077, 27.400200, 51.256115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.838421, 27.718899, 51.449028>,  <37.751026, 27.910118, 51.564777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.838421, 27.718899, 51.449028>,  <37.984077, 27.400200, 51.256115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838421, 27.718899, 51.449028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686565, 0.120259, -0.717054,
		-0.629310, -0.592225, 0.503228,
		-0.364139, 0.796748, 0.482281,
		37.729179, 27.957924, 51.593712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257298, 27.369648, 51.086899>,  <37.984077, 27.400200, 51.256115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257298, 27.369648, 51.086899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.290813, 27.736670, 51.242371>,  <37.310925, 27.956882, 51.335651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.290813, 27.736670, 51.242371>,  <37.257298, 27.369648, 51.086899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290813, 27.736670, 51.242371> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718999, 0.325731, -0.613954,
		-0.689942, -0.228014, 0.687015,
		0.083792, 0.917556, 0.388677,
		37.315952, 28.011936, 51.358974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543438, 27.712940, 51.234684>,  <37.257298, 27.369648, 51.086899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543438, 27.712940, 51.234684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.786243, 28.029276, 51.203430>,  <36.931927, 28.219078, 51.184677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.786243, 28.029276, 51.203430>,  <36.543438, 27.712940, 51.234684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786243, 28.029276, 51.203430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742732, 0.529616, -0.409703,
		-0.282630, 0.306727, 0.908867,
		0.607017, 0.790839, -0.078130,
		36.968349, 28.266527, 51.179993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186066, 28.217394, 51.394203>,  <36.543438, 27.712940, 51.234684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186066, 28.217394, 51.394203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.487972, 28.410746, 51.216816>,  <36.669117, 28.526756, 51.110382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.487972, 28.410746, 51.216816>,  <36.186066, 28.217394, 51.394203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487972, 28.410746, 51.216816> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655415, 0.527417, -0.540614,
		-0.027428, 0.698696, 0.714892,
		0.754771, 0.483379, -0.443470,
		36.714405, 28.555759, 51.083775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059105, 29.020504, 51.491798>,  <36.186066, 28.217394, 51.394203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059105, 29.020504, 51.491798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.269691, 28.947227, 51.159710>,  <36.396046, 28.903261, 50.960457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.269691, 28.947227, 51.159710>,  <36.059105, 29.020504, 51.491798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269691, 28.947227, 51.159710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628138, 0.574266, -0.525034,
		0.572952, 0.797909, 0.187263,
		0.526469, -0.183192, -0.830224,
		36.427631, 28.892269, 50.910645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941761, 29.604767, 51.129002>,  <36.059105, 29.020504, 51.491798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941761, 29.604767, 51.129002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.102669, 29.394955, 50.828857>,  <36.199211, 29.269068, 50.648769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.102669, 29.394955, 50.828857>,  <35.941761, 29.604767, 51.129002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102669, 29.394955, 50.828857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605654, 0.462163, -0.647756,
		0.686560, 0.715032, -0.131773,
		0.402266, -0.524533, -0.750365,
		36.223347, 29.237595, 50.603748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063702, 30.177311, 50.569946>,  <35.941761, 29.604767, 51.129002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063702, 30.177311, 50.569946> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.035954, 29.803074, 50.431465>,  <36.019302, 29.578531, 50.348377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.035954, 29.803074, 50.431465>,  <36.063702, 30.177311, 50.569946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035954, 29.803074, 50.431465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562666, 0.323264, -0.760860,
		0.823769, 0.142011, -0.548852,
		-0.069373, -0.935593, -0.346200,
		36.015141, 29.522396, 50.327606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686005, 30.703676, 50.427238>,  <36.063702, 30.177311, 50.569946>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686005, 30.703676, 50.427238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.569248, 31.077366, 50.509235>,  <36.499195, 31.301580, 50.558434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.569248, 31.077366, 50.509235>,  <36.686005, 30.703676, 50.427238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569248, 31.077366, 50.509235> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534685, -0.018324, 0.844853,
		0.793038, 0.356215, -0.494167,
		-0.291894, 0.934224, 0.204995,
		36.481682, 31.357634, 50.570732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314888, 31.107447, 50.651760>,  <36.686005, 30.703676, 50.427238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314888, 31.107447, 50.651760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.991562, 31.317705, 50.757835>,  <36.797565, 31.443861, 50.821480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.991562, 31.317705, 50.757835>,  <37.314888, 31.107447, 50.651760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991562, 31.317705, 50.757835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396455, 0.152967, 0.905221,
		0.435263, 0.836837, -0.332041,
		-0.808313, 0.525648, 0.265187,
		36.749069, 31.475399, 50.837391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528660, 31.798502, 50.820320>,  <37.314888, 31.107447, 50.651760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528660, 31.798502, 50.820320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.171833, 31.730844, 50.987942>,  <36.957737, 31.690250, 51.088516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.171833, 31.730844, 50.987942>,  <37.528660, 31.798502, 50.820320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171833, 31.730844, 50.987942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355813, 0.308777, 0.882074,
		-0.278590, 0.935974, -0.215267,
		-0.892068, -0.169142, 0.419054,
		36.904213, 31.680101, 51.113659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522694, 32.254246, 51.327248>,  <37.528660, 31.798502, 50.820320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522694, 32.254246, 51.327248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.210850, 32.032017, 51.442867>,  <37.023743, 31.898680, 51.512241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.210850, 32.032017, 51.442867>,  <37.522694, 32.254246, 51.327248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210850, 32.032017, 51.442867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030514, 0.427302, 0.903594,
		-0.625527, 0.713267, -0.316174,
		-0.779606, -0.555574, 0.289053,
		36.976967, 31.865345, 51.529583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176891, 32.755009, 51.631058>,  <37.522694, 32.254246, 51.327248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176891, 32.755009, 51.631058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.050358, 32.408695, 51.786160>,  <36.974438, 32.200909, 51.879219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.050358, 32.408695, 51.786160>,  <37.176891, 32.755009, 51.631058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050358, 32.408695, 51.786160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170043, 0.350374, 0.921045,
		-0.933283, 0.357293, 0.036385,
		-0.316334, -0.865783, 0.387754,
		36.955456, 32.148960, 51.902485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624001, 32.932259, 52.239437>,  <37.176891, 32.755009, 51.631058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624001, 32.932259, 52.239437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.779423, 32.568562, 52.299168>,  <36.872677, 32.350342, 52.335007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.779423, 32.568562, 52.299168>,  <36.624001, 32.932259, 52.239437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779423, 32.568562, 52.299168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247609, 0.259135, 0.933562,
		-0.887533, -0.325765, 0.325826,
		0.388555, -0.909245, 0.149329,
		36.895988, 32.295788, 52.343967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443268, 32.872501, 52.940228>,  <36.624001, 32.932259, 52.239437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443268, 32.872501, 52.940228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.735050, 32.614895, 52.848015>,  <36.910118, 32.460331, 52.792686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.735050, 32.614895, 52.848015>,  <36.443268, 32.872501, 52.940228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735050, 32.614895, 52.848015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424595, 0.162071, 0.890759,
		-0.536299, -0.747649, 0.391669,
		0.729453, -0.644014, -0.230529,
		36.953888, 32.421692, 52.778854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458057, 32.259525, 53.519466>,  <36.443268, 32.872501, 52.940228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458057, 32.259525, 53.519466> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.804562, 32.263702, 53.319672>,  <37.012463, 32.266209, 53.199795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.804562, 32.263702, 53.319672>,  <36.458057, 32.259525, 53.519466>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804562, 32.263702, 53.319672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491050, 0.166349, 0.855101,
		0.092023, -0.986011, 0.138971,
		0.866257, 0.010448, -0.499489,
		37.064438, 32.266838, 53.169827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939766, 31.738195, 53.789017>,  <36.458057, 32.259525, 53.519466>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939766, 31.738195, 53.789017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.160351, 32.028225, 53.624012>,  <37.292702, 32.202244, 53.525009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.160351, 32.028225, 53.624012>,  <36.939766, 31.738195, 53.789017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160351, 32.028225, 53.624012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411686, 0.193534, 0.890539,
		0.725540, -0.660919, -0.191776,
		0.551459, 0.725073, -0.412507,
		37.325790, 32.245747, 53.500259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.427410, 33.425182, 38.303802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787964, 33.598125, 38.294239>,  <35.004295, 33.701889, 38.288502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787964, 33.598125, 38.294239>,  <34.427410, 33.425182, 38.303802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787964, 33.598125, 38.294239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001185, 0.057687, 0.998334,
		0.433014, -0.899856, 0.052510,
		0.901386, 0.432355, -0.023913,
		35.058380, 33.727833, 38.287064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807598, 33.100281, 38.821022>,  <34.427410, 33.425182, 38.303802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807598, 33.100281, 38.821022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001392, 33.445232, 38.762253>,  <35.117668, 33.652203, 38.726994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001392, 33.445232, 38.762253>,  <34.807598, 33.100281, 38.821022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001392, 33.445232, 38.762253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018134, 0.177813, 0.983897,
		0.874612, -0.474018, 0.101786,
		0.484484, 0.862374, -0.146921,
		35.146736, 33.703945, 38.718178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433941, 33.052773, 39.296814>,  <34.807598, 33.100281, 38.821022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433941, 33.052773, 39.296814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351467, 33.435841, 39.216457>,  <35.301983, 33.665680, 39.168243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351467, 33.435841, 39.216457>,  <35.433941, 33.052773, 39.296814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351467, 33.435841, 39.216457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163243, 0.236095, 0.957920,
		0.964799, 0.164717, -0.205013,
		-0.206189, 0.957668, -0.200895,
		35.289612, 33.723141, 39.156189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905109, 33.484451, 39.603416>,  <35.433941, 33.052773, 39.296814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905109, 33.484451, 39.603416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613453, 33.754398, 39.557976>,  <35.438461, 33.916367, 39.530712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613453, 33.754398, 39.557976>,  <35.905109, 33.484451, 39.603416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613453, 33.754398, 39.557976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013034, 0.179664, 0.983642,
		0.684243, 0.715730, -0.139796,
		-0.729138, 0.674872, -0.113605,
		35.394711, 33.956860, 39.523895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081959, 33.955498, 40.072578>,  <35.905109, 33.484451, 39.603416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081959, 33.955498, 40.072578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696819, 34.041447, 40.007145>,  <35.465736, 34.093018, 39.967884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696819, 34.041447, 40.007145>,  <36.081959, 33.955498, 40.072578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696819, 34.041447, 40.007145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088863, 0.319908, 0.943272,
		0.255014, 0.922762, -0.288927,
		-0.962846, 0.214872, -0.163580,
		35.407967, 34.105907, 39.958073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013294, 34.641476, 40.313839>,  <36.081959, 33.955498, 40.072578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013294, 34.641476, 40.313839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653835, 34.466553, 40.327675>,  <35.438160, 34.361599, 40.335976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653835, 34.466553, 40.327675>,  <36.013294, 34.641476, 40.313839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653835, 34.466553, 40.327675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158160, 0.396538, 0.904291,
		-0.409172, 0.807167, -0.425512,
		-0.898645, -0.437310, 0.034591,
		35.384243, 34.335361, 40.338051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519886, 35.092087, 40.645687>,  <36.013294, 34.641476, 40.313839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519886, 35.092087, 40.645687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311462, 34.751484, 40.669159>,  <35.186409, 34.547123, 40.683243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311462, 34.751484, 40.669159>,  <35.519886, 35.092087, 40.645687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311462, 34.751484, 40.669159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330853, 0.264879, 0.905746,
		-0.786790, 0.452528, -0.419738,
		-0.521055, -0.851503, 0.058684,
		35.155148, 34.496033, 40.686764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868664, 35.239235, 41.011795>,  <35.519886, 35.092087, 40.645687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868664, 35.239235, 41.011795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887268, 34.841167, 41.046383>,  <34.898430, 34.602325, 41.067135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.887268, 34.841167, 41.046383>,  <34.868664, 35.239235, 41.011795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887268, 34.841167, 41.046383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461269, 0.055384, 0.885530,
		-0.886041, -0.081070, -0.456464,
		0.046509, -0.995168, 0.086468,
		34.901222, 34.542618, 41.072323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198307, 35.012321, 41.237396>,  <34.868664, 35.239235, 41.011795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198307, 35.012321, 41.237396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452766, 34.724884, 41.349789>,  <34.605442, 34.552422, 41.417225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.452766, 34.724884, 41.349789>,  <34.198307, 35.012321, 41.237396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452766, 34.724884, 41.349789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511808, -0.120484, 0.850609,
		-0.577385, -0.684918, -0.444425,
		0.636144, -0.718589, 0.280981,
		34.643608, 34.509308, 41.434082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850597, 34.396278, 41.542423>,  <34.198307, 35.012321, 41.237396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850597, 34.396278, 41.542423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225475, 34.356232, 41.676075>,  <34.450401, 34.332203, 41.756268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225475, 34.356232, 41.676075>,  <33.850597, 34.396278, 41.542423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225475, 34.356232, 41.676075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346882, -0.167000, 0.922921,
		-0.036596, -0.980861, -0.191239,
		0.937194, -0.100113, 0.334132,
		34.506634, 34.326199, 41.776314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761074, 33.892685, 42.115067>,  <33.850597, 34.396278, 41.542423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761074, 33.892685, 42.115067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124809, 34.047573, 42.175957>,  <34.343048, 34.140507, 42.212490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.124809, 34.047573, 42.175957>,  <33.761074, 33.892685, 42.115067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124809, 34.047573, 42.175957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109354, -0.130566, 0.985390,
		0.401440, -0.912695, -0.076384,
		0.909334, 0.387222, 0.152221,
		34.397610, 34.163738, 42.221622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035431, 33.315643, 42.449127>,  <33.761074, 33.892685, 42.115067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035431, 33.315643, 42.449127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244442, 33.639389, 42.556381>,  <34.369850, 33.833637, 42.620731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244442, 33.639389, 42.556381>,  <34.035431, 33.315643, 42.449127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244442, 33.639389, 42.556381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072634, -0.271082, 0.959812,
		0.849524, -0.521002, -0.082860,
		0.522526, 0.809365, 0.268133,
		34.401199, 33.882198, 42.636822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354191, 32.640053, 42.127422>,  <34.035431, 33.315643, 42.449127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354191, 32.640053, 42.127422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095924, 32.339100, 42.075222>,  <33.940964, 32.158527, 42.043900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095924, 32.339100, 42.075222>,  <34.354191, 32.640053, 42.127422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095924, 32.339100, 42.075222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241962, 0.363674, -0.899553,
		0.724270, -0.549235, -0.416861,
		-0.645668, -0.752384, -0.130504,
		33.902225, 32.113384, 42.036072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436180, 32.321308, 41.447334>,  <34.354191, 32.640053, 42.127422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436180, 32.321308, 41.447334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069168, 32.187233, 41.532921>,  <33.848961, 32.106789, 41.584274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069168, 32.187233, 41.532921>,  <34.436180, 32.321308, 41.447334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069168, 32.187233, 41.532921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278325, 0.156988, -0.947570,
		0.284030, -0.928977, -0.237334,
		-0.917530, -0.335194, 0.213968,
		33.793907, 32.086674, 41.597111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278172, 31.695648, 41.050896>,  <34.436180, 32.321308, 41.447334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278172, 31.695648, 41.050896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934628, 31.881384, 41.137379>,  <33.728500, 31.992825, 41.189270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934628, 31.881384, 41.137379>,  <34.278172, 31.695648, 41.050896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934628, 31.881384, 41.137379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169064, 0.141461, -0.975401,
		-0.483500, -0.874288, -0.042993,
		-0.858863, 0.464337, 0.216207,
		33.676968, 32.020683, 41.202240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847836, 31.540895, 40.426815>,  <34.278172, 31.695648, 41.050896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847836, 31.540895, 40.426815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643890, 31.830095, 40.613281>,  <33.521523, 32.003616, 40.725163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643890, 31.830095, 40.613281>,  <33.847836, 31.540895, 40.426815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643890, 31.830095, 40.613281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390251, 0.288535, -0.874329,
		-0.766645, -0.627710, 0.135038,
		-0.509862, 0.722999, 0.466168,
		33.490932, 32.046993, 40.753132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184669, 31.526554, 40.209419>,  <33.847836, 31.540895, 40.426815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184669, 31.526554, 40.209419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164959, 31.895433, 40.362843>,  <33.153133, 32.116760, 40.454895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164959, 31.895433, 40.362843>,  <33.184669, 31.526554, 40.209419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164959, 31.895433, 40.362843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343266, 0.344994, -0.873583,
		-0.937944, -0.174713, 0.299559,
		-0.049280, 0.922201, 0.383559,
		33.150173, 32.172092, 40.477909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602436, 31.833841, 39.820637>,  <33.184669, 31.526554, 40.209419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602436, 31.833841, 39.820637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818123, 32.138027, 39.965378>,  <32.947533, 32.320538, 40.052223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818123, 32.138027, 39.965378>,  <32.602436, 31.833841, 39.820637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818123, 32.138027, 39.965378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285930, 0.569460, -0.770688,
		-0.792144, 0.312100, 0.524501,
		0.539214, 0.760466, 0.361855,
		32.979889, 32.366165, 40.073933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239155, 32.413582, 39.653023>,  <32.602436, 31.833841, 39.820637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239155, 32.413582, 39.653023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597637, 32.574413, 39.728020>,  <32.812725, 32.670914, 39.773018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597637, 32.574413, 39.728020>,  <32.239155, 32.413582, 39.653023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597637, 32.574413, 39.728020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076315, 0.556042, -0.827644,
		-0.437032, 0.727428, 0.529011,
		0.896203, 0.402078, 0.187494,
		32.866497, 32.695038, 39.784267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.217957, 33.194618, 39.612476>,  <32.239155, 32.413582, 39.653023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.217957, 33.194618, 39.612476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599205, 33.082085, 39.567909>,  <32.827953, 33.014565, 39.541168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599205, 33.082085, 39.567909>,  <32.217957, 33.194618, 39.612476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599205, 33.082085, 39.567909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053471, 0.518997, -0.853102,
		0.297834, 0.807150, 0.509709,
		0.953119, -0.281337, -0.111415,
		32.885139, 32.997684, 39.534485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517590, 33.762821, 39.352810>,  <32.217957, 33.194618, 39.612476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517590, 33.762821, 39.352810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743889, 33.450779, 39.245953>,  <32.879669, 33.263554, 39.181839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743889, 33.450779, 39.245953>,  <32.517590, 33.762821, 39.352810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743889, 33.450779, 39.245953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023095, 0.338840, -0.940560,
		0.824255, 0.525950, 0.209715,
		0.565748, -0.780105, -0.267144,
		32.913612, 33.216747, 39.165810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959774, 34.070366, 38.838974>,  <32.517590, 33.762821, 39.352810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959774, 34.070366, 38.838974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004208, 33.675545, 38.792690>,  <33.030869, 33.438652, 38.764919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.004208, 33.675545, 38.792690>,  <32.959774, 34.070366, 38.838974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.004208, 33.675545, 38.792690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081687, 0.106967, -0.990901,
		0.990449, 0.119521, -0.068747,
		0.111079, -0.987053, -0.115708,
		33.037533, 33.379429, 38.757977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442356, 33.943386, 38.375305>,  <32.959774, 34.070366, 38.838974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442356, 33.943386, 38.375305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247368, 33.594166, 38.380238>,  <33.130375, 33.384632, 38.383198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247368, 33.594166, 38.380238>,  <33.442356, 33.943386, 38.375305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247368, 33.594166, 38.380238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208723, 0.102808, -0.972556,
		0.847826, -0.476665, -0.232342,
		-0.487470, -0.873053, 0.012328,
		33.101128, 33.332249, 38.383938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565372, 33.698536, 37.643467>,  <33.442356, 33.943386, 38.375305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565372, 33.698536, 37.643467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299141, 33.431473, 37.776878>,  <33.139404, 33.271236, 37.856926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299141, 33.431473, 37.776878>,  <33.565372, 33.698536, 37.643467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299141, 33.431473, 37.776878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298079, -0.171901, -0.938935,
		0.684221, -0.724350, -0.084602,
		-0.665575, -0.667657, 0.333532,
		33.099468, 33.231174, 37.876938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687469, 33.137108, 37.243046>,  <33.565372, 33.698536, 37.643467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687469, 33.137108, 37.243046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308769, 33.094051, 37.364429>,  <33.081551, 33.068218, 37.437260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308769, 33.094051, 37.364429>,  <33.687469, 33.137108, 37.243046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308769, 33.094051, 37.364429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281333, -0.181826, -0.942227,
		0.156601, -0.977421, 0.141860,
		-0.946746, -0.107644, 0.303455,
		33.024746, 33.061760, 37.455467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432041, 32.466972, 37.167599>,  <33.687469, 33.137108, 37.243046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432041, 32.466972, 37.167599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135017, 32.734848, 37.163155>,  <32.956802, 32.895573, 37.160488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.135017, 32.734848, 37.163155>,  <33.432041, 32.466972, 37.167599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135017, 32.734848, 37.163155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083334, -0.108839, -0.990560,
		-0.664576, -0.734623, 0.136627,
		-0.742559, 0.669688, -0.011112,
		32.912251, 32.935753, 37.159821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126419, 32.580860, 37.666420>,  <33.432041, 32.466972, 37.167599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126419, 32.580860, 37.666420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517239, 32.507885, 37.710403>,  <34.751732, 32.464100, 37.736794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517239, 32.507885, 37.710403>,  <34.126419, 32.580860, 37.666420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517239, 32.507885, 37.710403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136601, -0.140557, 0.980604,
		-0.163454, -0.973117, -0.162253,
		0.977048, -0.182448, 0.109954,
		34.810352, 32.453156, 37.743389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197830, 31.884758, 38.059475>,  <34.126419, 32.580860, 37.666420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197830, 31.884758, 38.059475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514690, 32.118458, 38.130070>,  <34.704807, 32.258678, 38.172428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514690, 32.118458, 38.130070>,  <34.197830, 31.884758, 38.059475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514690, 32.118458, 38.130070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123547, -0.129678, 0.983829,
		0.597686, -0.801148, -0.030543,
		0.792154, 0.584248, 0.176486,
		34.752338, 32.293732, 38.183014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651756, 31.437283, 37.600422>,  <34.197830, 31.884758, 38.059475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651756, 31.437283, 37.600422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903126, 31.258970, 37.345436>,  <35.053947, 31.151981, 37.192444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903126, 31.258970, 37.345436>,  <34.651756, 31.437283, 37.600422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903126, 31.258970, 37.345436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645119, -0.159227, 0.747308,
		-0.434640, -0.880865, 0.187523,
		0.628419, -0.445784, -0.637469,
		35.091652, 31.125235, 37.154194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697624, 30.581154, 37.479485>,  <34.651756, 31.437283, 37.600422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697624, 30.581154, 37.479485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022503, 30.812033, 37.445580>,  <35.217430, 30.950560, 37.425236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022503, 30.812033, 37.445580>,  <34.697624, 30.581154, 37.479485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022503, 30.812033, 37.445580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258307, -0.225532, 0.939368,
		0.523084, -0.784844, -0.332270,
		0.812195, 0.577196, -0.084758,
		35.266163, 30.985191, 37.420151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223694, 30.222963, 37.787361>,  <34.697624, 30.581154, 37.479485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223694, 30.222963, 37.787361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337425, 30.606213, 37.800991>,  <35.405663, 30.836163, 37.809170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.337425, 30.606213, 37.800991>,  <35.223694, 30.222963, 37.787361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337425, 30.606213, 37.800991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318114, -0.127813, 0.939397,
		0.904413, -0.256255, -0.341133,
		0.284326, 0.958122, 0.034077,
		35.422722, 30.893650, 37.811214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830704, 30.190397, 38.215595>,  <35.223694, 30.222963, 37.787361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830704, 30.190397, 38.215595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677540, 30.559866, 38.209740>,  <35.585644, 30.781548, 38.206226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.677540, 30.559866, 38.209740>,  <35.830704, 30.190397, 38.215595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677540, 30.559866, 38.209740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162416, 0.082911, 0.983233,
		0.909397, 0.374109, -0.181766,
		-0.382906, 0.923671, -0.014638,
		35.562668, 30.836967, 38.205349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425819, 30.440613, 38.428749>,  <35.830704, 30.190397, 38.215595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425819, 30.440613, 38.428749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127613, 30.697412, 38.500347>,  <35.948689, 30.851492, 38.543304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127613, 30.697412, 38.500347>,  <36.425819, 30.440613, 38.428749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127613, 30.697412, 38.500347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380310, 0.189229, 0.905294,
		0.547328, 0.742986, -0.385232,
		-0.745518, 0.642000, 0.178995,
		35.903957, 30.890013, 38.554047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752865, 31.027388, 38.598206>,  <36.425819, 30.440613, 38.428749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752865, 31.027388, 38.598206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388931, 31.086014, 38.753494>,  <36.170570, 31.121189, 38.846668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388931, 31.086014, 38.753494>,  <36.752865, 31.027388, 38.598206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388931, 31.086014, 38.753494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413354, 0.237707, 0.878996,
		0.036548, 0.960215, -0.276859,
		-0.909837, 0.146566, 0.388221,
		36.115982, 31.129984, 38.869961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778854, 31.652847, 38.953831>,  <36.752865, 31.027388, 38.598206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778854, 31.652847, 38.953831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445656, 31.492359, 39.106216>,  <36.245735, 31.396067, 39.197647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445656, 31.492359, 39.106216>,  <36.778854, 31.652847, 38.953831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445656, 31.492359, 39.106216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334507, 0.183255, 0.924404,
		-0.440703, 0.897464, -0.018441,
		-0.832998, -0.401219, 0.380969,
		36.195755, 31.371994, 39.220509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716171, 32.053936, 39.514259>,  <36.778854, 31.652847, 38.953831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716171, 32.053936, 39.514259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504185, 31.719709, 39.572182>,  <36.376991, 31.519175, 39.606934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.504185, 31.719709, 39.572182>,  <36.716171, 32.053936, 39.514259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504185, 31.719709, 39.572182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288360, -0.016981, 0.957371,
		-0.797485, 0.549132, 0.249942,
		-0.529967, -0.835563, 0.144805,
		36.345196, 31.469040, 39.615623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344940, 32.153641, 40.169083>,  <36.716171, 32.053936, 39.514259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344940, 32.153641, 40.169083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364910, 31.761482, 40.092831>,  <36.376892, 31.526188, 40.047081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364910, 31.761482, 40.092831>,  <36.344940, 32.153641, 40.169083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364910, 31.761482, 40.092831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301271, -0.167193, 0.938766,
		-0.952230, -0.104303, 0.287016,
		0.049929, -0.980391, -0.190629,
		36.379890, 31.467365, 40.035641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923203, 31.777292, 40.724079>,  <36.344940, 32.153641, 40.169083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923203, 31.777292, 40.724079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171520, 31.504259, 40.569836>,  <36.320511, 31.340439, 40.477291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171520, 31.504259, 40.569836>,  <35.923203, 31.777292, 40.724079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171520, 31.504259, 40.569836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222228, -0.318470, 0.921516,
		-0.751815, -0.657766, -0.046016,
		0.620797, -0.682583, -0.385605,
		36.357758, 31.299484, 40.454155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718185, 31.147511, 41.119091>,  <35.923203, 31.777292, 40.724079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718185, 31.147511, 41.119091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075729, 31.076712, 40.954319>,  <36.290257, 31.034231, 40.855457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.075729, 31.076712, 40.954319>,  <35.718185, 31.147511, 41.119091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075729, 31.076712, 40.954319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330657, -0.360229, 0.872297,
		-0.302778, -0.915920, -0.263471,
		0.893863, -0.176994, -0.411925,
		36.343887, 31.023611, 40.830742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917759, 30.517073, 41.391518>,  <35.718185, 31.147511, 41.119091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917759, 30.517073, 41.391518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246296, 30.707878, 41.266392>,  <36.443417, 30.822361, 41.191315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246296, 30.707878, 41.266392>,  <35.917759, 30.517073, 41.391518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246296, 30.707878, 41.266392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459508, -0.228336, 0.858321,
		0.338005, -0.848716, -0.406734,
		0.821343, 0.477014, -0.312813,
		36.492699, 30.850983, 41.172546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422352, 30.042717, 41.503532>,  <35.917759, 30.517073, 41.391518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422352, 30.042717, 41.503532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594528, 30.403118, 41.481926>,  <36.697834, 30.619358, 41.468964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594528, 30.403118, 41.481926>,  <36.422352, 30.042717, 41.503532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594528, 30.403118, 41.481926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536155, -0.207083, 0.818324,
		0.726125, -0.381201, -0.572213,
		0.430441, 0.901001, -0.054015,
		36.723660, 30.673418, 41.465721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179272, 29.947515, 41.609467>,  <36.422352, 30.042717, 41.503532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179272, 29.947515, 41.609467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141766, 30.344023, 41.646557>,  <37.119263, 30.581926, 41.668812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141766, 30.344023, 41.646557>,  <37.179272, 29.947515, 41.609467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141766, 30.344023, 41.646557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621186, -0.014530, 0.783528,
		0.778033, 0.131068, -0.614399,
		-0.093768, 0.991267, 0.092722,
		37.113636, 30.641403, 41.674374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888065, 30.064602, 41.735725>,  <37.179272, 29.947515, 41.609467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888065, 30.064602, 41.735725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640636, 30.345526, 41.876656>,  <37.492180, 30.514080, 41.961212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640636, 30.345526, 41.876656>,  <37.888065, 30.064602, 41.735725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640636, 30.345526, 41.876656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431025, -0.071607, 0.899494,
		0.656951, 0.708262, -0.258418,
		-0.618573, 0.702309, 0.352321,
		37.455063, 30.556219, 41.982353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276566, 30.466368, 42.132896>,  <37.888065, 30.064602, 41.735725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276566, 30.466368, 42.132896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909679, 30.554790, 42.265472>,  <37.689548, 30.607843, 42.345016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.909679, 30.554790, 42.265472>,  <38.276566, 30.466368, 42.132896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909679, 30.554790, 42.265472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346868, 0.033903, 0.937301,
		0.195959, 0.974671, -0.107774,
		-0.917215, 0.221056, 0.331439,
		37.634514, 30.621107, 42.364902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410782, 31.035603, 42.603619>,  <38.276566, 30.466368, 42.132896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410782, 31.035603, 42.603619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040905, 30.914219, 42.695580>,  <37.818977, 30.841389, 42.750755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.040905, 30.914219, 42.695580>,  <38.410782, 31.035603, 42.603619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040905, 30.914219, 42.695580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150452, 0.263440, 0.952871,
		-0.349721, 0.915703, -0.197945,
		-0.924694, -0.303458, 0.229900,
		37.763496, 30.823181, 42.764549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140293, 31.574091, 43.033760>,  <38.410782, 31.035603, 42.603619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140293, 31.574091, 43.033760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929939, 31.243437, 43.113880>,  <37.803726, 31.045044, 43.161953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929939, 31.243437, 43.113880>,  <38.140293, 31.574091, 43.033760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929939, 31.243437, 43.113880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225117, 0.091829, 0.969995,
		-0.820226, 0.555194, 0.137798,
		-0.525881, -0.826636, 0.200304,
		37.772175, 30.995445, 43.173973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792511, 31.655752, 43.666595>,  <38.140293, 31.574091, 43.033760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792511, 31.655752, 43.666595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775143, 31.256447, 43.650665>,  <37.764721, 31.016863, 43.641106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775143, 31.256447, 43.650665>,  <37.792511, 31.655752, 43.666595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775143, 31.256447, 43.650665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013029, -0.040427, 0.999097,
		-0.998972, 0.042866, 0.014761,
		-0.043424, -0.998263, -0.039827,
		37.762115, 30.956968, 43.638718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.484158, 31.487667, 44.259117>,  <37.792511, 31.655752, 43.666595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.484158, 31.487667, 44.259117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655148, 31.134979, 44.179283>,  <37.757744, 30.923367, 44.131382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.655148, 31.134979, 44.179283>,  <37.484158, 31.487667, 44.259117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655148, 31.134979, 44.179283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083979, -0.181085, 0.979875,
		-0.900117, -0.435635, -0.003364,
		0.427478, -0.881720, -0.199582,
		37.783390, 30.870462, 44.119408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123283, 31.005318, 44.715195>,  <37.484158, 31.487667, 44.259117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123283, 31.005318, 44.715195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453102, 30.799646, 44.620754>,  <37.650993, 30.676243, 44.564091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453102, 30.799646, 44.620754>,  <37.123283, 31.005318, 44.715195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453102, 30.799646, 44.620754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101010, -0.276811, 0.955601,
		-0.556704, -0.811786, -0.176306,
		0.824546, -0.514178, -0.236101,
		37.700466, 30.645393, 44.549923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061726, 30.375334, 45.012829>,  <37.123283, 31.005318, 44.715195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061726, 30.375334, 45.012829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449341, 30.390213, 44.915184>,  <37.681908, 30.399141, 44.856598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449341, 30.390213, 44.915184>,  <37.061726, 30.375334, 45.012829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449341, 30.390213, 44.915184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239358, -0.384381, 0.891604,
		-0.060664, -0.922425, -0.381383,
		0.969034, 0.037199, -0.244108,
		37.740051, 30.401373, 44.841953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275932, 29.780836, 45.132038>,  <37.061726, 30.375334, 45.012829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275932, 29.780836, 45.132038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599190, 30.015184, 45.156216>,  <37.793144, 30.155794, 45.170723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.599190, 30.015184, 45.156216>,  <37.275932, 29.780836, 45.132038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599190, 30.015184, 45.156216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205264, -0.376344, 0.903456,
		0.552055, -0.717719, -0.424400,
		0.808147, 0.585871, 0.060441,
		37.841633, 30.190947, 45.174347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875210, 29.345169, 45.291111>,  <37.275932, 29.780836, 45.132038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875210, 29.345169, 45.291111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961460, 29.708405, 45.434711>,  <38.013210, 29.926346, 45.520870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961460, 29.708405, 45.434711>,  <37.875210, 29.345169, 45.291111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961460, 29.708405, 45.434711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077687, -0.382434, 0.920711,
		0.973381, -0.170641, -0.153010,
		0.215628, 0.908089, 0.358997,
		38.026150, 29.980831, 45.542412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479774, 29.206905, 45.569317>,  <37.875210, 29.345169, 45.291111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479774, 29.206905, 45.569317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363945, 29.556616, 45.725155>,  <38.294445, 29.766441, 45.818657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363945, 29.556616, 45.725155>,  <38.479774, 29.206905, 45.569317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363945, 29.556616, 45.725155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206305, -0.340460, 0.917347,
		0.934657, 0.346019, -0.081778,
		-0.289577, 0.874276, 0.389599,
		38.277073, 29.818899, 45.842033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.052238, 29.376162, 46.041626>,  <38.479774, 29.206905, 45.569317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.052238, 29.376162, 46.041626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736649, 29.584568, 46.171890>,  <38.547295, 29.709612, 46.250050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.736649, 29.584568, 46.171890>,  <39.052238, 29.376162, 46.041626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736649, 29.584568, 46.171890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160406, -0.336988, 0.927744,
		0.593114, 0.784208, 0.182302,
		-0.788978, 0.521015, 0.325664,
		38.499954, 29.740873, 46.269588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404827, 30.128592, 46.022209>,  <39.052238, 29.376162, 46.041626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404827, 30.128592, 46.022209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801914, 30.165697, 46.052975>,  <40.040165, 30.187960, 46.071434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801914, 30.165697, 46.052975>,  <39.404827, 30.128592, 46.022209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801914, 30.165697, 46.052975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077687, -0.004760, -0.996966,
		-0.092116, 0.995677, -0.011932,
		0.992713, 0.092763, 0.076913,
		40.099728, 30.193525, 46.076050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616226, 30.575996, 45.438908>,  <39.404827, 30.128592, 46.022209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616226, 30.575996, 45.438908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963779, 30.416092, 45.555687>,  <40.172310, 30.320148, 45.625755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963779, 30.416092, 45.555687>,  <39.616226, 30.575996, 45.438908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963779, 30.416092, 45.555687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298260, -0.047922, -0.953281,
		0.395076, 0.915365, 0.077594,
		0.868882, -0.399762, 0.291950,
		40.224445, 30.296164, 45.643272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144089, 31.012955, 45.110470>,  <39.616226, 30.575996, 45.438908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144089, 31.012955, 45.110470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330570, 30.665632, 45.178234>,  <40.442459, 30.457239, 45.218895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.330570, 30.665632, 45.178234>,  <40.144089, 31.012955, 45.110470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330570, 30.665632, 45.178234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241040, -0.059581, -0.968684,
		0.851209, 0.492437, 0.181520,
		0.466201, -0.868306, 0.169413,
		40.470432, 30.405140, 45.229057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819336, 31.185112, 44.882378>,  <40.144089, 31.012955, 45.110470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819336, 31.185112, 44.882378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787186, 30.786953, 44.861485>,  <40.767895, 30.548058, 44.848949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787186, 30.786953, 44.861485>,  <40.819336, 31.185112, 44.882378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787186, 30.786953, 44.861485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343487, 0.021533, -0.938911,
		0.935712, -0.093404, 0.340174,
		-0.080373, -0.995395, -0.052232,
		40.763073, 30.488335, 44.845814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444420, 30.994043, 44.537163>,  <40.819336, 31.185112, 44.882378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.444420, 30.994043, 44.537163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170010, 30.706341, 44.493282>,  <41.005363, 30.533718, 44.466953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.170010, 30.706341, 44.493282>,  <41.444420, 30.994043, 44.537163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.170010, 30.706341, 44.493282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145522, 0.012083, -0.989281,
		0.712874, -0.694638, 0.096378,
		-0.686028, -0.719258, -0.109699,
		40.964203, 30.490564, 44.460373>
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
