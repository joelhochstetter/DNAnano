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
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
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
	<23.035917, 17.089384, -1.393162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.052845, 17.454441, -1.555786>,  <23.063002, 17.673475, -1.653361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.052845, 17.454441, -1.555786>,  <23.035917, 17.089384, -1.393162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.052845, 17.454441, -1.555786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636191, -0.338379, -0.693369,
		-0.770370, -0.229306, -0.594935,
		0.042320, 0.912644, -0.406560,
		23.065540, 17.728233, -1.677754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.894205, 17.018587, -2.165523>,  <23.035917, 17.089384, -1.393162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.894205, 17.018587, -2.165523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.144135, 17.283367, -1.999915>,  <23.294092, 17.442236, -1.900549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.144135, 17.283367, -1.999915>,  <22.894205, 17.018587, -2.165523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.144135, 17.283367, -1.999915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768547, -0.428012, -0.475543,
		-0.137580, 0.615326, -0.776173,
		0.624825, 0.661951, 0.414021,
		23.331583, 17.481953, -1.875708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.274450, 17.550453, -2.628666>,  <22.894205, 17.018587, -2.165523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.274450, 17.550453, -2.628666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.508282, 17.459568, -2.317118>,  <23.648581, 17.405037, -2.130189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.508282, 17.459568, -2.317118>,  <23.274450, 17.550453, -2.628666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.508282, 17.459568, -2.317118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600937, -0.523723, -0.603812,
		0.545106, 0.821029, -0.169618,
		0.584580, -0.227212, 0.778871,
		23.683657, 17.391405, -2.083457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.840731, 17.802362, -2.884388>,  <23.274450, 17.550453, -2.628666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.840731, 17.802362, -2.884388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.868137, 17.484577, -2.643015>,  <23.884581, 17.293905, -2.498191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.868137, 17.484577, -2.643015>,  <23.840731, 17.802362, -2.884388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.868137, 17.484577, -2.643015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703639, -0.390307, -0.593761,
		0.707246, 0.465282, 0.532273,
		0.068517, -0.794464, 0.603434,
		23.888693, 17.246239, -2.461985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.498148, 17.638548, -2.636574>,  <23.840731, 17.802362, -2.884388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.498148, 17.638548, -2.636574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.315186, 17.284119, -2.666656>,  <24.205408, 17.071461, -2.684704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.315186, 17.284119, -2.666656>,  <24.498148, 17.638548, -2.636574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.315186, 17.284119, -2.666656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834508, -0.398490, -0.380527,
		0.307207, -0.236812, 0.921707,
		-0.457405, -0.886073, -0.075203,
		24.177963, 17.018297, -2.689216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.166607, 17.232639, -2.833728>,  <24.498148, 17.638548, -2.636574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.166607, 17.232639, -2.833728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374016, 17.540565, -2.684855>,  <25.498461, 17.725321, -2.595531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.374016, 17.540565, -2.684855>,  <25.166607, 17.232639, -2.833728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.374016, 17.540565, -2.684855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057015, -0.403172, 0.913346,
		0.853161, -0.494810, -0.165163,
		0.518522, 0.769815, 0.372182,
		25.529573, 17.771509, -2.573200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.273746, 17.067911, -2.108076>,  <25.166607, 17.232639, -2.833728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.273746, 17.067911, -2.108076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.375435, 17.454102, -2.130820>,  <25.436447, 17.685816, -2.144467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.375435, 17.454102, -2.130820>,  <25.273746, 17.067911, -2.108076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.375435, 17.454102, -2.130820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216712, 0.000432, 0.976235,
		0.942554, -0.260500, -0.209120,
		0.254219, 0.965474, -0.056860,
		25.451700, 17.743744, -2.147878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.999496, 17.352953, -2.008061>,  <25.273746, 17.067911, -2.108076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.999496, 17.352953, -2.008061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698574, 17.565468, -1.852229>,  <25.518021, 17.692978, -1.758730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698574, 17.565468, -1.852229>,  <25.999496, 17.352953, -2.008061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.698574, 17.565468, -1.852229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216640, -0.358951, 0.907866,
		0.622178, 0.767390, 0.154942,
		-0.752304, 0.531288, 0.389579,
		25.472883, 17.724854, -1.735355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.232882, 17.411436, -1.387160>,  <25.999496, 17.352953, -2.008061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.232882, 17.411436, -1.387160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844387, 17.504517, -1.366971>,  <25.611290, 17.560366, -1.354858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.844387, 17.504517, -1.366971>,  <26.232882, 17.411436, -1.387160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.844387, 17.504517, -1.366971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012061, -0.259773, 0.965594,
		0.237807, 0.937213, 0.255108,
		-0.971237, 0.232702, 0.050472,
		25.553017, 17.574327, -1.351830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.273880, 17.759886, -0.697290>,  <26.232882, 17.411436, -1.387160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.273880, 17.759886, -0.697290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924976, 17.613472, -0.827016>,  <25.715633, 17.525623, -0.904852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924976, 17.613472, -0.827016>,  <26.273880, 17.759886, -0.697290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.924976, 17.613472, -0.827016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144520, -0.440614, 0.885987,
		-0.467202, 0.819681, 0.331430,
		-0.872259, -0.366037, -0.324315,
		25.663298, 17.503660, -0.924311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614874, 18.012863, -0.257755>,  <26.273880, 17.759886, -0.697290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614874, 18.012863, -0.257755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567471, 17.652153, -0.424010>,  <25.539028, 17.435726, -0.523763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567471, 17.652153, -0.424010>,  <25.614874, 18.012863, -0.257755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.567471, 17.652153, -0.424010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131111, -0.400711, 0.906775,
		-0.984259, 0.161956, -0.070745,
		-0.118509, -0.901777, -0.415637,
		25.531918, 17.381620, -0.548702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.973658, 17.681616, 0.010485>,  <25.614874, 18.012863, -0.257755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.973658, 17.681616, 0.010485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.285034, 17.444305, -0.071548>,  <25.471859, 17.301920, -0.120767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.285034, 17.444305, -0.071548>,  <24.973658, 17.681616, 0.010485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.285034, 17.444305, -0.071548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095222, -0.434532, 0.895609,
		-0.620456, -0.677648, -0.394749,
		0.778439, -0.593274, -0.205081,
		25.518566, 17.266323, -0.133072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.751799, 16.942091, -0.158388>,  <24.973658, 17.681616, 0.010485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.751799, 16.942091, -0.158388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103775, 16.978607, 0.028104>,  <25.314960, 17.000517, 0.139999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.103775, 16.978607, 0.028104>,  <24.751799, 16.942091, -0.158388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.103775, 16.978607, 0.028104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305786, -0.642229, 0.702878,
		0.363592, -0.761057, -0.537208,
		0.879941, 0.091290, 0.466230,
		25.367758, 17.005995, 0.167973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.186987, 16.283274, -0.092872>,  <24.751799, 16.942091, -0.158388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.186987, 16.283274, -0.092872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223682, 16.554878, 0.198477>,  <25.245701, 16.717840, 0.373287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223682, 16.554878, 0.198477>,  <25.186987, 16.283274, -0.092872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.223682, 16.554878, 0.198477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393544, -0.647187, 0.652895,
		0.914717, -0.346544, 0.207848,
		0.091740, 0.679011, 0.728373,
		25.251204, 16.758581, 0.416989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.325481, 15.978010, 0.616125>,  <25.186987, 16.283274, -0.092872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.325481, 15.978010, 0.616125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.150608, 16.332680, 0.676363>,  <25.045685, 16.545483, 0.712505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.150608, 16.332680, 0.676363>,  <25.325481, 15.978010, 0.616125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.150608, 16.332680, 0.676363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600267, -0.412360, 0.685302,
		0.669739, 0.209206, 0.712518,
		-0.437183, 0.886675, 0.150594,
		25.019453, 16.598682, 0.721541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.374746, 16.272287, 1.394440>,  <25.325481, 15.978010, 0.616125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.374746, 16.272287, 1.394440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.035934, 16.353352, 1.197880>,  <24.832647, 16.401989, 1.079945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.035934, 16.353352, 1.197880>,  <25.374746, 16.272287, 1.394440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.035934, 16.353352, 1.197880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526297, -0.190134, 0.828770,
		0.074526, 0.960613, 0.267708,
		-0.847028, 0.202659, -0.491398,
		24.781826, 16.414150, 1.050461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.930176, 16.649515, 1.819227>,  <25.374746, 16.272287, 1.394440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.930176, 16.649515, 1.819227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.687889, 16.462090, 1.561994>,  <24.542517, 16.349634, 1.407654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.687889, 16.462090, 1.561994>,  <24.930176, 16.649515, 1.819227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.687889, 16.462090, 1.561994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646683, -0.180986, 0.740976,
		-0.463585, 0.864691, -0.193387,
		-0.605715, -0.468565, -0.643083,
		24.506174, 16.321520, 1.369069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.297697, 16.796535, 2.137638>,  <24.930176, 16.649515, 1.819227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.297697, 16.796535, 2.137638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.235363, 16.483200, 1.896940>,  <24.197964, 16.295198, 1.752520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.235363, 16.483200, 1.896940>,  <24.297697, 16.796535, 2.137638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.235363, 16.483200, 1.896940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683819, -0.354059, 0.637991,
		-0.712816, 0.510907, -0.480486,
		-0.155833, -0.783336, -0.601747,
		24.188614, 16.248199, 1.716415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.594469, 16.871416, 2.249342>,  <24.297697, 16.796535, 2.137638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.594469, 16.871416, 2.249342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.800926, 16.531570, 2.205974>,  <23.924801, 16.327663, 2.179953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.800926, 16.531570, 2.205974>,  <23.594469, 16.871416, 2.249342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.800926, 16.531570, 2.205974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381332, -0.341296, 0.859130,
		-0.766931, -0.402089, -0.500141,
		0.516143, -0.849613, -0.108421,
		23.955769, 16.276688, 2.173448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.762421, 17.322302, 2.837371>,  <23.594469, 16.871416, 2.249342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.762421, 17.322302, 2.837371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.759933, 16.931736, 2.751042>,  <23.758442, 16.697397, 2.699245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.759933, 16.931736, 2.751042>,  <23.762421, 17.322302, 2.837371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.759933, 16.931736, 2.751042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465322, -0.188211, 0.864900,
		-0.885120, 0.105805, -0.453176,
		-0.006218, -0.976413, -0.215823,
		23.758068, 16.638813, 2.686295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.115002, 17.198711, 2.973455>,  <23.762421, 17.322302, 2.837371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.115002, 17.198711, 2.973455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.355663, 16.882423, 3.018668>,  <23.500061, 16.692650, 3.045796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.355663, 16.882423, 3.018668>,  <23.115002, 17.198711, 2.973455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.355663, 16.882423, 3.018668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285802, -0.080968, 0.954862,
		-0.745875, -0.606801, -0.274704,
		0.601653, -0.790719, 0.113033,
		23.536160, 16.645208, 3.052578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.866989, 16.603888, 3.234143>,  <23.115002, 17.198711, 2.973455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.866989, 16.603888, 3.234143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.251331, 16.635719, 3.340296>,  <23.481936, 16.654818, 3.403988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.251331, 16.635719, 3.340296>,  <22.866989, 16.603888, 3.234143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.251331, 16.635719, 3.340296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262782, -0.041719, 0.963953,
		0.087783, -0.995955, -0.019174,
		0.960854, 0.079580, 0.265382,
		23.539587, 16.659594, 3.419910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.186628, 16.055164, 3.701048>,  <22.866989, 16.603888, 3.234143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.186628, 16.055164, 3.701048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.361973, 16.410198, 3.757661>,  <23.467180, 16.623219, 3.791628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.361973, 16.410198, 3.757661>,  <23.186628, 16.055164, 3.701048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.361973, 16.410198, 3.757661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271060, -0.019583, 0.962363,
		0.856952, -0.460226, 0.232005,
		0.438361, 0.887586, 0.141531,
		23.493481, 16.676474, 3.800120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.652029, 16.077307, 4.258043>,  <23.186628, 16.055164, 3.701048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.652029, 16.077307, 4.258043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.461021, 16.425068, 4.207266>,  <23.346416, 16.633724, 4.176799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.461021, 16.425068, 4.207266>,  <23.652029, 16.077307, 4.258043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.461021, 16.425068, 4.207266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258023, -0.000650, 0.966139,
		0.839880, 0.494105, 0.224637,
		-0.477520, 0.869402, -0.126944,
		23.317766, 16.685888, 4.169183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.899618, 16.526081, 4.893093>,  <23.652029, 16.077307, 4.258043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.899618, 16.526081, 4.893093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.570885, 16.660431, 4.709014>,  <23.373646, 16.741041, 4.598567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.570885, 16.660431, 4.709014>,  <23.899618, 16.526081, 4.893093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.570885, 16.660431, 4.709014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498803, -0.033871, 0.866054,
		0.275296, 0.941298, 0.195370,
		-0.821832, 0.335872, -0.460198,
		23.324335, 16.761192, 4.570955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.683792, 17.153040, 5.120562>,  <23.899618, 16.526081, 4.893093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.683792, 17.153040, 5.120562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.356010, 16.960926, 4.995456>,  <23.159342, 16.845657, 4.920392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.356010, 16.960926, 4.995456>,  <23.683792, 17.153040, 5.120562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.356010, 16.960926, 4.995456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321961, -0.065723, 0.944469,
		-0.474171, 0.874646, -0.100777,
		-0.819453, -0.480286, -0.312766,
		23.110174, 16.816841, 4.901626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.052729, 17.548494, 5.151822>,  <23.683792, 17.153040, 5.120562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.052729, 17.548494, 5.151822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.001408, 17.152939, 5.181857>,  <22.970615, 16.915606, 5.199879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.001408, 17.152939, 5.181857>,  <23.052729, 17.548494, 5.151822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.001408, 17.152939, 5.181857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406811, 0.121529, 0.905393,
		-0.904458, 0.085615, -0.417883,
		-0.128300, -0.988889, 0.075089,
		22.962917, 16.856272, 5.204384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.112587, 17.505106, 5.925746>,  <23.052729, 17.548494, 5.151822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.112587, 17.505106, 5.925746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.971409, 17.799904, 5.695174>,  <22.886702, 17.976782, 5.556831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.971409, 17.799904, 5.695174>,  <23.112587, 17.505106, 5.925746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.971409, 17.799904, 5.695174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913654, -0.404259, 0.042559,
		-0.201661, 0.541678, 0.816037,
		-0.352944, 0.736993, -0.576430,
		22.865526, 18.021002, 5.522245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.483255, 17.800581, 6.220252>,  <23.112587, 17.505106, 5.925746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.483255, 17.800581, 6.220252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.491070, 17.828121, 5.821278>,  <22.495758, 17.844646, 5.581893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.491070, 17.828121, 5.821278>,  <22.483255, 17.800581, 6.220252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.491070, 17.828121, 5.821278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933940, -0.354857, -0.042789,
		-0.356894, 0.932382, 0.057371,
		0.019537, 0.068852, -0.997436,
		22.496931, 17.848776, 5.522047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.900337, 18.356661, 6.139301>,  <22.483255, 17.800581, 6.220252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.900337, 18.356661, 6.139301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.555393, 18.187424, 6.250535>,  <21.348427, 18.085882, 6.317275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.555393, 18.187424, 6.250535>,  <21.900337, 18.356661, 6.139301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.555393, 18.187424, 6.250535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076016, 0.434826, 0.897300,
		-0.500559, 0.794933, -0.342814,
		-0.862358, -0.423093, 0.278084,
		21.296686, 18.060495, 6.333961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.700487, 18.853842, 6.610089>,  <21.900337, 18.356661, 6.139301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.700487, 18.853842, 6.610089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.476490, 18.534504, 6.698685>,  <21.342093, 18.342901, 6.751842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.476490, 18.534504, 6.698685>,  <21.700487, 18.853842, 6.610089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.476490, 18.534504, 6.698685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130047, 0.348725, 0.928159,
		-0.818228, 0.490957, -0.299105,
		-0.559991, -0.798343, 0.221490,
		21.308493, 18.295000, 6.765131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.026123, 18.979284, 6.922498>,  <21.700487, 18.853842, 6.610089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.026123, 18.979284, 6.922498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.134708, 18.610886, 7.034262>,  <21.199860, 18.389847, 7.101320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.134708, 18.610886, 7.034262>,  <21.026123, 18.979284, 6.922498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.134708, 18.610886, 7.034262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086482, 0.265795, 0.960143,
		-0.958555, -0.284808, -0.007496,
		0.271464, -0.920998, 0.279410,
		21.216148, 18.334587, 7.118084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.602955, 18.870871, 7.411666>,  <21.026123, 18.979284, 6.922498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.602955, 18.870871, 7.411666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.920021, 18.631695, 7.459252>,  <21.110260, 18.488190, 7.487804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.920021, 18.631695, 7.459252>,  <20.602955, 18.870871, 7.411666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.920021, 18.631695, 7.459252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030134, 0.156470, 0.987223,
		-0.608913, -0.786121, 0.106010,
		0.792664, -0.597939, 0.118965,
		21.157820, 18.452312, 7.494942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.478212, 18.281378, 7.908001>,  <20.602955, 18.870871, 7.411666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.478212, 18.281378, 7.908001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.862682, 18.391720, 7.910659>,  <21.093365, 18.457926, 7.912253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.862682, 18.391720, 7.910659>,  <20.478212, 18.281378, 7.908001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.862682, 18.391720, 7.910659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023353, 0.057328, 0.998082,
		0.274947, -0.959488, 0.061544,
		0.961176, 0.275857, 0.006645,
		21.151035, 18.474476, 7.912652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.867456, 17.926989, 8.486725>,  <20.478212, 18.281378, 7.908001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.867456, 17.926989, 8.486725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.038605, 18.281384, 8.415221>,  <21.141294, 18.494020, 8.372319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.038605, 18.281384, 8.415221>,  <20.867456, 17.926989, 8.486725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.038605, 18.281384, 8.415221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054889, 0.222884, 0.973299,
		0.902172, -0.406634, 0.143997,
		0.427870, 0.885987, -0.178759,
		21.166965, 18.547180, 8.361593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.641293, 18.059326, 8.671360>,  <20.867456, 17.926989, 8.486725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.641293, 18.059326, 8.671360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.392975, 18.370552, 8.709788>,  <21.243984, 18.557287, 8.732845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.392975, 18.370552, 8.709788>,  <21.641293, 18.059326, 8.671360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.392975, 18.370552, 8.709788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180303, 0.022440, 0.983355,
		0.762958, 0.627783, -0.154218,
		-0.620794, 0.778065, 0.096070,
		21.206738, 18.603971, 8.738609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.045355, 18.563343, 9.009529>,  <21.641293, 18.059326, 8.671360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.045355, 18.563343, 9.009529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.659924, 18.639946, 9.084192>,  <21.428665, 18.685907, 9.128990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.659924, 18.639946, 9.084192>,  <22.045355, 18.563343, 9.009529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.659924, 18.639946, 9.084192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191714, 0.008057, 0.981418,
		0.186446, 0.981458, -0.044479,
		-0.963579, 0.191508, 0.186657,
		21.370850, 18.697399, 9.140189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.107763, 19.149227, 9.492266>,  <22.045355, 18.563343, 9.009529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.107763, 19.149227, 9.492266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.767437, 18.943882, 9.537121>,  <21.563242, 18.820675, 9.564034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.767437, 18.943882, 9.537121>,  <22.107763, 19.149227, 9.492266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.767437, 18.943882, 9.537121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237168, -0.184731, 0.953743,
		-0.468900, 0.838053, 0.278925,
		-0.850814, -0.513362, 0.112138,
		21.512194, 18.789873, 9.570763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.818474, 19.467335, 10.139658>,  <22.107763, 19.149227, 9.492266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.818474, 19.467335, 10.139658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.596970, 19.141132, 10.072371>,  <21.464067, 18.945410, 10.031998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.596970, 19.141132, 10.072371>,  <21.818474, 19.467335, 10.139658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.596970, 19.141132, 10.072371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072885, -0.248718, 0.965830,
		-0.829481, 0.522576, 0.197168,
		-0.553759, -0.815508, -0.168219,
		21.430841, 18.896481, 10.021905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.258886, 19.528101, 10.636341>,  <21.818474, 19.467335, 10.139658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.258886, 19.528101, 10.636341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.307739, 19.146664, 10.526256>,  <21.337051, 18.917801, 10.460204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.307739, 19.146664, 10.526256>,  <21.258886, 19.528101, 10.636341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.307739, 19.146664, 10.526256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008396, -0.278272, 0.960466,
		-0.992478, -0.114992, -0.041992,
		0.122131, -0.953594, -0.275214,
		21.344379, 18.860586, 10.443691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.803989, 19.069529, 11.139859>,  <21.258886, 19.528101, 10.636341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.803989, 19.069529, 11.139859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.023605, 18.774189, 10.983196>,  <21.155375, 18.596985, 10.889198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.023605, 18.774189, 10.983196>,  <20.803989, 19.069529, 11.139859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.023605, 18.774189, 10.983196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014198, -0.460299, 0.887650,
		-0.835674, -0.492918, -0.242240,
		0.549042, -0.738347, -0.391659,
		21.188318, 18.552685, 10.865699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.493362, 18.378057, 11.344966>,  <20.803989, 19.069529, 11.139859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.493362, 18.378057, 11.344966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883240, 18.339287, 11.264386>,  <21.117167, 18.316025, 11.216038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883240, 18.339287, 11.264386>,  <20.493362, 18.378057, 11.344966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.883240, 18.339287, 11.264386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140282, -0.436446, 0.888727,
		-0.174062, -0.894495, -0.411803,
		0.974692, -0.096925, -0.201450,
		21.175648, 18.310209, 11.203951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.603027, 17.684212, 11.485737>,  <20.493362, 18.378057, 11.344966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.603027, 17.684212, 11.485737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.963524, 17.857430, 11.491879>,  <21.179821, 17.961361, 11.495564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.963524, 17.857430, 11.491879>,  <20.603027, 17.684212, 11.485737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.963524, 17.857430, 11.491879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225716, -0.499411, 0.836445,
		0.369887, -0.750373, -0.547836,
		0.901241, 0.433046, 0.015355,
		21.233896, 17.987343, 11.496485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.010546, 17.166483, 11.702960>,  <20.603027, 17.684212, 11.485737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.010546, 17.166483, 11.702960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.203083, 17.506157, 11.789856>,  <21.318605, 17.709961, 11.841993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.203083, 17.506157, 11.789856>,  <21.010546, 17.166483, 11.702960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.203083, 17.506157, 11.789856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201566, -0.348434, 0.915404,
		0.853041, -0.396836, -0.338883,
		0.481344, 0.849185, 0.217240,
		21.347486, 17.760912, 11.855028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.572823, 16.897022, 12.019973>,  <21.010546, 17.166483, 11.702960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.572823, 16.897022, 12.019973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.535053, 17.280018, 12.129001>,  <21.512392, 17.509815, 12.194418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.535053, 17.280018, 12.129001>,  <21.572823, 16.897022, 12.019973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.535053, 17.280018, 12.129001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057066, -0.268138, 0.961689,
		0.993895, 0.106360, -0.029321,
		-0.094423, 0.957491, 0.272570,
		21.506727, 17.567265, 12.210772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.113873, 17.000204, 12.496521>,  <21.572823, 16.897022, 12.019973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.113873, 17.000204, 12.496521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.835751, 17.281013, 12.558117>,  <21.668877, 17.449499, 12.595075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.835751, 17.281013, 12.558117>,  <22.113873, 17.000204, 12.496521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.835751, 17.281013, 12.558117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024826, -0.190669, 0.981340,
		0.718285, 0.686154, 0.115145,
		-0.695306, 0.702024, 0.153990,
		21.627159, 17.491621, 12.604314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.443188, 17.406937, 13.090811>,  <22.113873, 17.000204, 12.496521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.443188, 17.406937, 13.090811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.067364, 17.540440, 13.060254>,  <21.841869, 17.620541, 13.041920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.067364, 17.540440, 13.060254>,  <22.443188, 17.406937, 13.090811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.067364, 17.540440, 13.060254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006767, 0.204970, 0.978745,
		0.342321, 0.920105, -0.190323,
		-0.939559, 0.333757, -0.076392,
		21.785496, 17.640566, 13.037336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.447477, 18.042145, 13.489619>,  <22.443188, 17.406937, 13.090811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.447477, 18.042145, 13.489619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.074871, 17.897835, 13.471220>,  <21.851307, 17.811249, 13.460180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.074871, 17.897835, 13.471220>,  <22.447477, 18.042145, 13.489619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.074871, 17.897835, 13.471220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090218, 0.106693, 0.990191,
		-0.352330, 0.926529, -0.131934,
		-0.931517, -0.360777, -0.045998,
		21.795416, 17.789602, 13.457420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.131565, 18.336206, 14.002781>,  <22.447477, 18.042145, 13.489619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.131565, 18.336206, 14.002781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.869652, 18.039825, 13.943118>,  <21.712503, 17.861998, 13.907320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.869652, 18.039825, 13.943118>,  <22.131565, 18.336206, 14.002781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.869652, 18.039825, 13.943118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261232, 0.036676, 0.964579,
		-0.709237, 0.670555, -0.217576,
		-0.654783, -0.740953, -0.149158,
		21.673218, 17.817539, 13.898371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.529993, 18.493729, 14.435573>,  <22.131565, 18.336206, 14.002781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.529993, 18.493729, 14.435573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.482246, 18.105202, 14.353314>,  <21.453598, 17.872086, 14.303960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.482246, 18.105202, 14.353314>,  <21.529993, 18.493729, 14.435573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.482246, 18.105202, 14.353314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134773, -0.189357, 0.972615,
		-0.983661, 0.143813, -0.108305,
		-0.119366, -0.971319, -0.205645,
		21.446436, 17.813807, 14.291621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.873175, 18.356531, 14.830763>,  <21.529993, 18.493729, 14.435573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.873175, 18.356531, 14.830763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.081219, 18.020535, 14.768926>,  <21.206045, 17.818937, 14.731823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.081219, 18.020535, 14.768926>,  <20.873175, 18.356531, 14.830763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.081219, 18.020535, 14.768926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193506, -0.292186, 0.936580,
		-0.831890, -0.457209, -0.314513,
		0.520109, -0.839992, -0.154594,
		21.237251, 17.768538, 14.722548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.445988, 17.896290, 15.106109>,  <20.873175, 18.356531, 14.830763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.445988, 17.896290, 15.106109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.803150, 17.716248, 15.101607>,  <21.017447, 17.608223, 15.098907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.803150, 17.716248, 15.101607>,  <20.445988, 17.896290, 15.106109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.803150, 17.716248, 15.101607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149148, -0.319273, 0.935853,
		-0.424829, -0.833947, -0.352212,
		0.892903, -0.450109, -0.011255,
		21.071022, 17.581215, 15.098231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.377010, 17.205648, 15.353214>,  <20.445988, 17.896290, 15.106109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.377010, 17.205648, 15.353214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.751045, 17.338978, 15.401399>,  <20.975466, 17.418976, 15.430309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.751045, 17.338978, 15.401399>,  <20.377010, 17.205648, 15.353214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.751045, 17.338978, 15.401399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048390, -0.216625, 0.975055,
		0.351105, -0.917588, -0.186433,
		0.935085, 0.333325, 0.120460,
		21.031570, 17.438974, 15.437536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.529577, 16.936483, 15.997348>,  <20.377010, 17.205648, 15.353214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.529577, 16.936483, 15.997348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.846844, 17.168583, 15.923373>,  <21.037203, 17.307842, 15.878988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.846844, 17.168583, 15.923373>,  <20.529577, 16.936483, 15.997348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.846844, 17.168583, 15.923373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159818, 0.094709, 0.982593,
		0.587663, -0.808914, -0.017615,
		0.793164, 0.580249, -0.184936,
		21.084793, 17.342657, 15.867892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.060026, 16.677765, 16.561316>,  <20.529577, 16.936483, 15.997348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.060026, 16.677765, 16.561316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.180264, 17.035583, 16.428995>,  <21.252405, 17.250275, 16.349604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.180264, 17.035583, 16.428995>,  <21.060026, 16.677765, 16.561316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.180264, 17.035583, 16.428995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163883, 0.293239, 0.941888,
		0.939568, -0.337337, -0.058456,
		0.300592, 0.894548, -0.330801,
		21.270441, 17.303947, 16.329754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.701033, 16.858049, 16.931246>,  <21.060026, 16.677765, 16.561316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.701033, 16.858049, 16.931246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.563202, 17.206314, 16.790840>,  <21.480503, 17.415274, 16.706596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.563202, 17.206314, 16.790840>,  <21.701033, 16.858049, 16.931246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.563202, 17.206314, 16.790840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077166, 0.398920, 0.913733,
		0.935581, 0.287765, -0.204645,
		-0.344578, 0.870663, -0.351016,
		21.459829, 17.467512, 16.685535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.264462, 17.418362, 16.986498>,  <21.701033, 16.858049, 16.931246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.264462, 17.418362, 16.986498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.908707, 17.599327, 16.960232>,  <21.695253, 17.707907, 16.944471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.908707, 17.599327, 16.960232>,  <22.264462, 17.418362, 16.986498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.908707, 17.599327, 16.960232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173309, 0.466594, 0.867326,
		0.423028, 0.760010, -0.493390,
		-0.889389, 0.452412, -0.065666,
		21.641890, 17.735050, 16.940533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.448629, 18.136242, 17.087656>,  <22.264462, 17.418362, 16.986498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.448629, 18.136242, 17.087656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.058949, 18.083942, 17.161236>,  <21.825140, 18.052563, 17.205383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.058949, 18.083942, 17.161236>,  <22.448629, 18.136242, 17.087656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.058949, 18.083942, 17.161236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125057, 0.365737, 0.922278,
		-0.187865, 0.921488, -0.339950,
		-0.974201, -0.130750, 0.183948,
		21.766687, 18.044718, 17.216419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.156616, 18.789728, 17.335312>,  <22.448629, 18.136242, 17.087656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.156616, 18.789728, 17.335312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.892166, 18.522480, 17.471857>,  <21.733496, 18.362131, 17.553783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.892166, 18.522480, 17.471857>,  <22.156616, 18.789728, 17.335312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.892166, 18.522480, 17.471857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133290, 0.343155, 0.929773,
		-0.738342, 0.660196, -0.137814,
		-0.661124, -0.668121, 0.341363,
		21.693829, 18.322044, 17.574266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.835653, 19.126776, 17.906816>,  <22.156616, 18.789728, 17.335312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.835653, 19.126776, 17.906816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.731018, 18.744980, 17.964117>,  <21.668236, 18.515902, 17.998497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.731018, 18.744980, 17.964117>,  <21.835653, 19.126776, 17.906816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.731018, 18.744980, 17.964117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052795, 0.162348, 0.985320,
		-0.963734, 0.250187, -0.092861,
		-0.261590, -0.954489, 0.143252,
		21.652540, 18.458633, 18.007093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.346935, 19.110600, 18.419592>,  <21.835653, 19.126776, 17.906816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.346935, 19.110600, 18.419592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.488522, 18.736496, 18.419647>,  <21.573473, 18.512033, 18.419680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.488522, 18.736496, 18.419647>,  <21.346935, 19.110600, 18.419592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.488522, 18.736496, 18.419647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239971, -0.090680, 0.966536,
		-0.903947, -0.342155, -0.256533,
		0.353967, -0.935258, 0.000138,
		21.594711, 18.455919, 18.419689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.788721, 18.675209, 18.672915>,  <21.346935, 19.110600, 18.419592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.788721, 18.675209, 18.672915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.119267, 18.455692, 18.723431>,  <21.317595, 18.323982, 18.753740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.119267, 18.455692, 18.723431>,  <20.788721, 18.675209, 18.672915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.119267, 18.455692, 18.723431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225875, -0.117577, 0.967035,
		-0.515852, -0.827649, -0.221120,
		0.826364, -0.548792, 0.126292,
		21.367176, 18.291054, 18.761318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.605927, 18.184629, 19.111959>,  <20.788721, 18.675209, 18.672915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.605927, 18.184629, 19.111959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.004665, 18.192871, 19.142601>,  <21.243910, 18.197817, 19.160986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.004665, 18.192871, 19.142601>,  <20.605927, 18.184629, 19.111959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.004665, 18.192871, 19.142601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075574, -0.046760, 0.996043,
		0.024109, -0.998694, -0.045055,
		0.996849, 0.020608, 0.076602,
		21.303720, 18.199053, 19.165583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.831656, 17.601549, 19.421951>,  <20.605927, 18.184629, 19.111959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.831656, 17.601549, 19.421951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.105247, 17.882332, 19.501379>,  <21.269402, 18.050802, 19.549036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.105247, 17.882332, 19.501379>,  <20.831656, 17.601549, 19.421951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.105247, 17.882332, 19.501379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211897, -0.069292, 0.974832,
		0.698049, -0.708841, 0.101349,
		0.683978, 0.701957, 0.198570,
		21.310442, 18.092918, 19.560949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.365742, 17.266752, 19.826817>,  <20.831656, 17.601549, 19.421951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.365742, 17.266752, 19.826817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.393471, 17.661873, 19.882593>,  <21.410109, 17.898945, 19.916059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.393471, 17.661873, 19.882593>,  <21.365742, 17.266752, 19.826817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.393471, 17.661873, 19.882593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166330, -0.126379, 0.977938,
		0.983630, -0.090987, 0.155540,
		0.069323, 0.987800, 0.139444,
		21.414268, 17.958214, 19.924427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.920729, 17.380627, 20.352055>,  <21.365742, 17.266752, 19.826817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.920729, 17.380627, 20.352055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.665928, 17.688202, 20.330299>,  <21.513046, 17.872747, 20.317245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.665928, 17.688202, 20.330299>,  <21.920729, 17.380627, 20.352055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.665928, 17.688202, 20.330299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113090, -0.023428, 0.993308,
		0.762520, 0.638892, 0.101883,
		-0.637004, 0.768939, -0.054388,
		21.474827, 17.918884, 20.313984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.176788, 17.965824, 20.796824>,  <21.920729, 17.380627, 20.352055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.176788, 17.965824, 20.796824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.777508, 17.980740, 20.778048>,  <21.537939, 17.989689, 20.766781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.777508, 17.980740, 20.778048>,  <22.176788, 17.965824, 20.796824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.777508, 17.980740, 20.778048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048685, -0.047340, 0.997692,
		0.034982, 0.998183, 0.049070,
		-0.998201, 0.037290, -0.046941,
		21.478046, 17.991926, 20.763966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.970037, 18.253752, 21.485353>,  <22.176788, 17.965824, 20.796824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.970037, 18.253752, 21.485353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.629768, 18.113682, 21.328518>,  <21.425608, 18.029640, 21.234417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.629768, 18.113682, 21.328518>,  <21.970037, 18.253752, 21.485353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.629768, 18.113682, 21.328518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400559, -0.051270, 0.914835,
		-0.340455, 0.935280, -0.096651,
		-0.850672, -0.350175, -0.392090,
		21.374567, 18.008629, 21.210892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.338194, 18.606796, 21.719189>,  <21.970037, 18.253752, 21.485353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.338194, 18.606796, 21.719189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.180542, 18.262119, 21.591349>,  <21.085951, 18.055313, 21.514645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.180542, 18.262119, 21.591349>,  <21.338194, 18.606796, 21.719189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.180542, 18.262119, 21.591349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428393, -0.135416, 0.893388,
		-0.813106, 0.489025, -0.315773,
		-0.394129, -0.861694, -0.319602,
		21.062304, 18.003611, 21.495468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.662504, 18.637957, 21.892941>,  <21.338194, 18.606796, 21.719189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.662504, 18.637957, 21.892941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.703724, 18.243137, 21.843767>,  <20.728456, 18.006245, 21.814262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.703724, 18.243137, 21.843767>,  <20.662504, 18.637957, 21.892941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.703724, 18.243137, 21.843767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605348, -0.160304, 0.779651,
		-0.789261, -0.005925, -0.614029,
		0.103051, -0.987050, -0.122935,
		20.734640, 17.947021, 21.806887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.997984, 18.468441, 21.931269>,  <20.662504, 18.637957, 21.892941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.997984, 18.468441, 21.931269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.221184, 18.146465, 22.011976>,  <20.355104, 17.953279, 22.060400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.221184, 18.146465, 22.011976>,  <19.997984, 18.468441, 21.931269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.221184, 18.146465, 22.011976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438811, -0.079844, 0.895025,
		-0.704329, -0.587964, -0.397769,
		0.558002, -0.804937, 0.201768,
		20.388584, 17.904984, 22.072506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.582022, 18.018471, 22.330454>,  <19.997984, 18.468441, 21.931269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.582022, 18.018471, 22.330454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.950623, 17.880646, 22.402138>,  <20.171783, 17.797951, 22.445148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.950623, 17.880646, 22.402138>,  <19.582022, 18.018471, 22.330454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.950623, 17.880646, 22.402138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240031, -0.142514, 0.960247,
		-0.305324, -0.927884, -0.214032,
		0.921500, -0.344561, 0.179208,
		20.227072, 17.777277, 22.455900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.462809, 17.560602, 22.948454>,  <19.582022, 18.018471, 22.330454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.462809, 17.560602, 22.948454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.851608, 17.653820, 22.936415>,  <20.084888, 17.709751, 22.929192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.851608, 17.653820, 22.936415>,  <19.462809, 17.560602, 22.948454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.851608, 17.653820, 22.936415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017382, 0.056420, 0.998256,
		0.234339, -0.970827, 0.050790,
		0.971999, 0.233048, -0.030097,
		20.143208, 17.723734, 22.927385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.808809, 17.221600, 23.550879>,  <19.462809, 17.560602, 22.948454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.808809, 17.221600, 23.550879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.066521, 17.505699, 23.437422>,  <20.221148, 17.676159, 23.369347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.066521, 17.505699, 23.437422>,  <19.808809, 17.221600, 23.550879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.066521, 17.505699, 23.437422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138166, 0.256680, 0.956570,
		0.752208, -0.655486, 0.067241,
		0.644278, 0.710248, -0.283643,
		20.259804, 17.718773, 23.352329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.455172, 17.135767, 23.896143>,  <19.808809, 17.221600, 23.550879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.455172, 17.135767, 23.896143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.449493, 17.522526, 23.794237>,  <20.446087, 17.754581, 23.733093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.449493, 17.522526, 23.794237>,  <20.455172, 17.135767, 23.896143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.449493, 17.522526, 23.794237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037718, 0.254091, 0.966445,
		0.999188, 0.023327, 0.032863,
		-0.014194, 0.966899, -0.254764,
		20.445236, 17.812595, 23.717808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.999487, 17.488667, 24.339703>,  <20.455172, 17.135767, 23.896143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.999487, 17.488667, 24.339703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.751659, 17.773701, 24.208029>,  <20.602962, 17.944721, 24.129025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.751659, 17.773701, 24.208029>,  <20.999487, 17.488667, 24.339703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.751659, 17.773701, 24.208029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011328, 0.411212, 0.911469,
		0.784862, 0.568445, -0.246701,
		-0.619567, 0.712583, -0.329184,
		20.565790, 17.987476, 24.109274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.259201, 18.199230, 24.501846>,  <20.999487, 17.488667, 24.339703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.259201, 18.199230, 24.501846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.868061, 18.246506, 24.432749>,  <20.633377, 18.274872, 24.391291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.868061, 18.246506, 24.432749>,  <21.259201, 18.199230, 24.501846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.868061, 18.246506, 24.432749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080809, 0.548152, 0.832466,
		0.193078, 0.827986, -0.526460,
		-0.977850, 0.118188, -0.172745,
		20.574705, 18.281961, 24.380926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.091230, 18.919807, 24.505802>,  <21.259201, 18.199230, 24.501846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.091230, 18.919807, 24.505802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.759491, 18.716740, 24.599142>,  <20.560448, 18.594898, 24.655146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.759491, 18.716740, 24.599142>,  <21.091230, 18.919807, 24.505802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.759491, 18.716740, 24.599142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089148, 0.532525, 0.841706,
		-0.551573, 0.677266, -0.486907,
		-0.829349, -0.507669, 0.233349,
		20.510687, 18.564440, 24.669147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.480053, 19.371893, 24.535667>,  <21.091230, 18.919807, 24.505802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.480053, 19.371893, 24.535667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.527908, 19.070347, 24.794086>,  <20.556622, 18.889420, 24.949137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.527908, 19.070347, 24.794086>,  <20.480053, 19.371893, 24.535667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.527908, 19.070347, 24.794086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029303, 0.653118, 0.756689,
		-0.992385, -0.071599, 0.100230,
		0.119640, -0.753864, 0.646046,
		20.563801, 18.844187, 24.987900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.908495, 19.315165, 25.084080>,  <20.480053, 19.371893, 24.535667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.908495, 19.315165, 25.084080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.247272, 19.159718, 25.229219>,  <20.450539, 19.066450, 25.316303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.247272, 19.159718, 25.229219>,  <19.908495, 19.315165, 25.084080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.247272, 19.159718, 25.229219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014495, 0.665329, 0.746410,
		-0.531481, -0.637429, 0.557864,
		0.846946, -0.388616, 0.362849,
		20.501356, 19.043133, 25.338074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.926176, 19.414257, 25.772583>,  <19.908495, 19.315165, 25.084080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.926176, 19.414257, 25.772583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.318447, 19.386738, 25.699333>,  <20.553810, 19.370226, 25.655384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.318447, 19.386738, 25.699333>,  <19.926176, 19.414257, 25.772583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.318447, 19.386738, 25.699333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192163, 0.514019, 0.835977,
		0.036616, -0.855015, 0.517308,
		0.980680, -0.068797, -0.183123,
		20.612652, 19.366098, 25.644396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.221228, 19.336123, 26.356113>,  <19.926176, 19.414257, 25.772583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.221228, 19.336123, 26.356113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.477634, 19.518856, 26.109407>,  <20.631479, 19.628496, 25.961384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.477634, 19.518856, 26.109407>,  <20.221228, 19.336123, 26.356113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.477634, 19.518856, 26.109407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256427, 0.629934, 0.733095,
		0.723424, -0.628082, 0.286654,
		0.641017, 0.456833, -0.616767,
		20.669939, 19.655907, 25.924377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.743979, 18.952108, 26.873142>,  <20.221228, 19.336123, 26.356113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.743979, 18.952108, 26.873142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.351265, 18.942738, 26.948561>,  <19.115637, 18.937115, 26.993813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.351265, 18.942738, 26.948561>,  <19.743979, 18.952108, 26.873142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.351265, 18.942738, 26.948561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175929, 0.486852, -0.855584,
		-0.071751, -0.873170, -0.482105,
		-0.981784, -0.023427, 0.188548,
		19.056730, 18.935709, 27.005125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.437262, 18.604782, 26.310476>,  <19.743979, 18.952108, 26.873142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.437262, 18.604782, 26.310476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.178108, 18.847084, 26.495216>,  <19.022617, 18.992466, 26.606060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.178108, 18.847084, 26.495216>,  <19.437262, 18.604782, 26.310476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.178108, 18.847084, 26.495216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272235, 0.382138, -0.883096,
		-0.711433, -0.697874, -0.082673,
		-0.647882, 0.605757, 0.461852,
		18.983744, 19.028811, 26.633772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.672340, 18.532433, 26.105406>,  <19.437262, 18.604782, 26.310476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.672340, 18.532433, 26.105406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.793125, 18.897758, 26.214712>,  <18.865595, 19.116955, 26.280296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.793125, 18.897758, 26.214712>,  <18.672340, 18.532433, 26.105406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.793125, 18.897758, 26.214712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260338, 0.354751, -0.897985,
		-0.917085, 0.200015, 0.344892,
		0.301961, 0.913316, 0.273265,
		18.883713, 19.171753, 26.296692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.035601, 19.007267, 26.189852>,  <18.672340, 18.532433, 26.105406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.035601, 19.007267, 26.189852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.379013, 19.185658, 26.088634>,  <18.585060, 19.292692, 26.027905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.379013, 19.185658, 26.088634>,  <18.035601, 19.007267, 26.189852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.379013, 19.185658, 26.088634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420818, 0.330849, -0.844660,
		-0.292980, 0.831651, 0.471720,
		0.858530, 0.445977, -0.253042,
		18.636572, 19.319450, 26.012722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.916935, 19.702131, 26.108208>,  <18.035601, 19.007267, 26.189852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.916935, 19.702131, 26.108208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.208458, 19.577888, 25.864122>,  <18.383371, 19.503342, 25.717670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.208458, 19.577888, 25.864122>,  <17.916935, 19.702131, 26.108208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.208458, 19.577888, 25.864122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486374, 0.392440, -0.780661,
		0.481951, 0.865745, 0.134942,
		0.728809, -0.310608, -0.610213,
		18.427101, 19.484707, 25.681059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.906826, 20.224577, 25.548473>,  <17.916935, 19.702131, 26.108208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.906826, 20.224577, 25.548473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.113632, 19.918655, 25.394709>,  <18.237715, 19.735102, 25.302450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.113632, 19.918655, 25.394709>,  <17.906826, 20.224577, 25.548473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.113632, 19.918655, 25.394709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293021, 0.263821, -0.918987,
		0.804260, 0.587770, -0.087705,
		0.517014, -0.764804, -0.384410,
		18.268736, 19.689215, 25.279387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.297441, 20.504992, 25.006493>,  <17.906826, 20.224577, 25.548473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.297441, 20.504992, 25.006493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.278797, 20.113258, 24.927771>,  <18.267611, 19.878218, 24.880537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.278797, 20.113258, 24.927771>,  <18.297441, 20.504992, 25.006493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.278797, 20.113258, 24.927771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239618, 0.202227, -0.949572,
		0.969748, 0.002898, -0.244092,
		-0.046610, -0.979334, -0.196804,
		18.264814, 19.819458, 24.868729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.631998, 20.398008, 24.331764>,  <18.297441, 20.504992, 25.006493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.631998, 20.398008, 24.331764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.385994, 20.087860, 24.389130>,  <18.238392, 19.901772, 24.423548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.385994, 20.087860, 24.389130>,  <18.631998, 20.398008, 24.331764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.385994, 20.087860, 24.389130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204843, -0.018526, -0.978620,
		0.761448, -0.631237, -0.147435,
		-0.615010, -0.775369, 0.143411,
		18.201490, 19.855249, 24.432154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.746506, 19.915579, 23.808222>,  <18.631998, 20.398008, 24.331764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.746506, 19.915579, 23.808222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.378216, 19.826611, 23.936470>,  <18.157242, 19.773230, 24.013418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.378216, 19.826611, 23.936470>,  <18.746506, 19.915579, 23.808222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.378216, 19.826611, 23.936470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321680, -0.032466, -0.946292,
		0.220887, -0.974409, -0.041657,
		-0.920723, -0.222424, 0.320620,
		18.101999, 19.759884, 24.032656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.556068, 19.411821, 23.366201>,  <18.746506, 19.915579, 23.808222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.556068, 19.411821, 23.366201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.204857, 19.532299, 23.514982>,  <17.994129, 19.604586, 23.604250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.204857, 19.532299, 23.514982>,  <18.556068, 19.411821, 23.366201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.204857, 19.532299, 23.514982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354254, 0.113584, -0.928226,
		-0.321823, -0.946774, 0.006969,
		-0.878028, 0.301193, 0.371952,
		17.941448, 19.622658, 23.626568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.003323, 18.971947, 23.083677>,  <18.556068, 19.411821, 23.366201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.003323, 18.971947, 23.083677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.830452, 19.314865, 23.195581>,  <17.726728, 19.520617, 23.262724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.830452, 19.314865, 23.195581>,  <18.003323, 18.971947, 23.083677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.830452, 19.314865, 23.195581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377469, 0.109770, -0.919493,
		-0.818987, -0.502986, 0.276163,
		-0.432178, 0.857295, 0.279762,
		17.700798, 19.572054, 23.279510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.408010, 18.944996, 22.665413>,  <18.003323, 18.971947, 23.083677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.408010, 18.944996, 22.665413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.428471, 19.333584, 22.758047>,  <17.440746, 19.566736, 22.813627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.428471, 19.333584, 22.758047>,  <17.408010, 18.944996, 22.665413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.428471, 19.333584, 22.758047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486728, 0.226735, -0.843615,
		-0.872054, -0.069568, 0.484439,
		0.051151, 0.971469, 0.231586,
		17.443815, 19.625025, 22.827522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.826700, 19.296284, 22.300320>,  <17.408010, 18.944996, 22.665413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.826700, 19.296284, 22.300320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.064716, 19.596699, 22.414772>,  <17.207525, 19.776947, 22.483444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.064716, 19.596699, 22.414772>,  <16.826700, 19.296284, 22.300320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.064716, 19.596699, 22.414772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134020, 0.443758, -0.886068,
		-0.792443, 0.488898, 0.364708,
		0.595039, 0.751037, 0.286131,
		17.243229, 19.822010, 22.500612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.404787, 19.944916, 22.147064>,  <16.826700, 19.296284, 22.300320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.404787, 19.944916, 22.147064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.793140, 20.038445, 22.167910>,  <17.026152, 20.094563, 22.180418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.793140, 20.038445, 22.167910>,  <16.404787, 19.944916, 22.147064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.793140, 20.038445, 22.167910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071047, 0.488798, -0.869499,
		-0.228782, 0.840478, 0.491177,
		0.970882, 0.233823, 0.052114,
		17.084404, 20.108591, 22.183544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.327412, 20.529795, 21.903057>,  <16.404787, 19.944916, 22.147064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.327412, 20.529795, 21.903057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.723278, 20.482967, 21.869936>,  <16.960798, 20.454870, 21.850063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.723278, 20.482967, 21.869936>,  <16.327412, 20.529795, 21.903057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.723278, 20.482967, 21.869936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010659, 0.515806, -0.856639,
		0.142996, 0.848669, 0.509227,
		0.989666, -0.117068, -0.082804,
		17.020178, 20.447847, 21.845095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.526258, 21.136667, 21.639029>,  <16.327412, 20.529795, 21.903057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.526258, 21.136667, 21.639029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.825371, 20.882576, 21.561766>,  <17.004839, 20.730122, 21.515408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.825371, 20.882576, 21.561766>,  <16.526258, 21.136667, 21.639029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.825371, 20.882576, 21.561766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111302, 0.406740, -0.906738,
		0.654548, 0.656544, 0.374855,
		0.747782, -0.635226, -0.193156,
		17.049706, 20.692009, 21.503819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.950100, 21.407516, 21.241053>,  <16.526258, 21.136667, 21.639029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.950100, 21.407516, 21.241053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.081215, 21.036152, 21.171076>,  <17.159883, 20.813334, 21.129089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.081215, 21.036152, 21.171076>,  <16.950100, 21.407516, 21.241053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.081215, 21.036152, 21.171076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154241, 0.235278, -0.959612,
		0.932076, 0.287564, 0.220320,
		0.327786, -0.928414, -0.174943,
		17.179550, 20.757627, 21.118593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.458395, 21.465637, 20.648016>,  <16.950100, 21.407516, 21.241053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.458395, 21.465637, 20.648016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.411007, 21.068703, 20.662083>,  <17.382574, 20.830542, 20.670523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.411007, 21.068703, 20.662083>,  <17.458395, 21.465637, 20.648016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.411007, 21.068703, 20.662083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281167, -0.067493, -0.957282,
		0.952318, -0.103519, 0.287008,
		-0.118468, -0.992335, 0.035168,
		17.375467, 20.771002, 20.672632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.052624, 21.178043, 20.437811>,  <17.458395, 21.465637, 20.648016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.052624, 21.178043, 20.437811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.759750, 20.917866, 20.356987>,  <17.584026, 20.761759, 20.308493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.759750, 20.917866, 20.356987>,  <18.052624, 21.178043, 20.437811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.759750, 20.917866, 20.356987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298942, -0.040332, -0.953418,
		0.611997, -0.758481, 0.223976,
		-0.732183, -0.650446, -0.202059,
		17.540094, 20.722733, 20.296370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.423861, 20.678873, 20.035656>,  <18.052624, 21.178043, 20.437811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.423861, 20.678873, 20.035656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.035770, 20.626148, 19.954382>,  <17.802916, 20.594513, 19.905619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.035770, 20.626148, 19.954382>,  <18.423861, 20.678873, 20.035656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.035770, 20.626148, 19.954382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205843, -0.006733, -0.978562,
		0.127620, -0.991252, 0.033666,
		-0.970228, -0.131814, -0.203183,
		17.744701, 20.586603, 19.893427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.358847, 19.987511, 19.801424>,  <18.423861, 20.678873, 20.035656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.358847, 19.987511, 19.801424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.065613, 20.225266, 19.669188>,  <17.889673, 20.367918, 19.589846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.065613, 20.225266, 19.669188>,  <18.358847, 19.987511, 19.801424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.065613, 20.225266, 19.669188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325519, -0.120156, -0.937870,
		-0.597180, -0.795152, -0.105399,
		-0.733085, 0.594386, -0.330592,
		17.845688, 20.403582, 19.570009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.987331, 19.612307, 19.208960>,  <18.358847, 19.987511, 19.801424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.987331, 19.612307, 19.208960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.909119, 20.001873, 19.162912>,  <17.862190, 20.235613, 19.135284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.909119, 20.001873, 19.162912>,  <17.987331, 19.612307, 19.208960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.909119, 20.001873, 19.162912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382799, -0.032275, -0.923268,
		-0.902902, -0.224597, -0.366504,
		-0.195534, 0.973917, -0.115117,
		17.850458, 20.294048, 19.128378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.777100, 19.668835, 18.539986>,  <17.987331, 19.612307, 19.208960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.777100, 19.668835, 18.539986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.876652, 20.048622, 18.616478>,  <17.936382, 20.276495, 18.662373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.876652, 20.048622, 18.616478>,  <17.777100, 19.668835, 18.539986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.876652, 20.048622, 18.616478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382745, 0.084954, -0.919940,
		-0.889699, 0.302147, -0.342261,
		0.248880, 0.949468, 0.191229,
		17.951315, 20.333462, 18.673847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.576952, 20.018070, 17.999245>,  <17.777100, 19.668835, 18.539986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.576952, 20.018070, 17.999245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.827557, 20.288738, 18.153957>,  <17.977919, 20.451139, 18.246784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.827557, 20.288738, 18.153957>,  <17.576952, 20.018070, 17.999245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.827557, 20.288738, 18.153957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423897, 0.120612, -0.897644,
		-0.654060, 0.726339, -0.211275,
		0.626511, 0.676672, 0.386780,
		18.015511, 20.491739, 18.269991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.559099, 20.576588, 17.658079>,  <17.576952, 20.018070, 17.999245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.559099, 20.576588, 17.658079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.925156, 20.574471, 17.819317>,  <18.144791, 20.573200, 17.916059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.925156, 20.574471, 17.819317>,  <17.559099, 20.576588, 17.658079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.925156, 20.574471, 17.819317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396761, 0.188848, -0.898286,
		-0.071370, 0.981992, 0.174923,
		0.915143, -0.005292, 0.403094,
		18.199699, 20.572884, 17.940245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.835680, 21.147205, 17.404062>,  <17.559099, 20.576588, 17.658079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.835680, 21.147205, 17.404062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.155369, 20.942154, 17.529572>,  <18.347181, 20.819122, 17.604877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.155369, 20.942154, 17.529572>,  <17.835680, 21.147205, 17.404062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.155369, 20.942154, 17.529572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459596, 0.184829, -0.868683,
		0.387318, 0.838480, 0.383322,
		0.799222, -0.512630, 0.313774,
		18.395136, 20.788364, 17.623703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.372763, 21.602295, 17.411472>,  <17.835680, 21.147205, 17.404062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.372763, 21.602295, 17.411472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.531754, 21.236961, 17.376072>,  <18.627148, 21.017761, 17.354832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.531754, 21.236961, 17.376072>,  <18.372763, 21.602295, 17.411472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.531754, 21.236961, 17.376072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417097, 0.265737, -0.869146,
		0.817340, 0.308550, 0.486573,
		0.397475, -0.913335, -0.088502,
		18.650995, 20.962961, 17.349522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.004135, 21.685688, 17.033749>,  <18.372763, 21.602295, 17.411472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.004135, 21.685688, 17.033749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.911392, 21.298740, 16.992880>,  <18.855745, 21.066572, 16.968359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.911392, 21.298740, 16.992880>,  <19.004135, 21.685688, 17.033749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.911392, 21.298740, 16.992880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497361, -0.027627, -0.867103,
		0.835986, -0.251860, 0.487538,
		-0.231858, -0.967369, -0.102170,
		18.841835, 21.008530, 16.962229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.707821, 21.300711, 16.807072>,  <19.004135, 21.685688, 17.033749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.707821, 21.300711, 16.807072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.407299, 21.064701, 16.688808>,  <19.226986, 20.923096, 16.617849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.407299, 21.064701, 16.688808>,  <19.707821, 21.300711, 16.807072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.407299, 21.064701, 16.688808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474056, -0.170804, -0.863769,
		0.459146, -0.789111, 0.408031,
		-0.751303, -0.590025, -0.295659,
		19.181908, 20.887693, 16.600111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.043715, 20.682180, 16.346432>,  <19.707821, 21.300711, 16.807072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.043715, 20.682180, 16.346432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.654671, 20.661457, 16.255795>,  <19.421244, 20.649023, 16.201412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.654671, 20.661457, 16.255795>,  <20.043715, 20.682180, 16.346432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.654671, 20.661457, 16.255795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225773, 0.021249, -0.973948,
		0.055274, -0.998431, -0.008970,
		-0.972610, -0.051809, -0.226593,
		19.362888, 20.645914, 16.187817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.980965, 19.977394, 15.832809>,  <20.043715, 20.682180, 16.346432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.980965, 19.977394, 15.832809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.656479, 20.204250, 15.775847>,  <19.461786, 20.340364, 15.741671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.656479, 20.204250, 15.775847>,  <19.980965, 19.977394, 15.832809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.656479, 20.204250, 15.775847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063865, -0.156144, -0.985668,
		-0.581248, -0.808684, 0.090445,
		-0.811216, 0.567141, -0.142405,
		19.413115, 20.374393, 15.733126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.626875, 19.655994, 15.309168>,  <19.980965, 19.977394, 15.832809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.626875, 19.655994, 15.309168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.451031, 20.015011, 15.295518>,  <19.345524, 20.230421, 15.287328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.451031, 20.015011, 15.295518>,  <19.626875, 19.655994, 15.309168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.451031, 20.015011, 15.295518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017121, -0.029611, -0.999415,
		-0.898024, -0.439939, -0.002349,
		-0.439612, 0.897539, -0.034124,
		19.319147, 20.284273, 15.285281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.957371, 19.578209, 14.984621>,  <19.626875, 19.655994, 15.309168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.957371, 19.578209, 14.984621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.058094, 19.961086, 14.927526>,  <19.118528, 20.190813, 14.893268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.058094, 19.961086, 14.927526>,  <18.957371, 19.578209, 14.984621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.058094, 19.961086, 14.927526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298732, -0.063412, -0.952228,
		-0.920517, 0.282419, 0.269976,
		0.251808, 0.957193, -0.142739,
		19.133636, 20.248243, 14.884704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.427359, 19.924192, 14.553943>,  <18.957371, 19.578209, 14.984621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.427359, 19.924192, 14.553943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.753571, 20.149433, 14.500529>,  <18.949297, 20.284578, 14.468481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.753571, 20.149433, 14.500529>,  <18.427359, 19.924192, 14.553943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.753571, 20.149433, 14.500529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199379, 0.056769, -0.978277,
		-0.543288, 0.824436, 0.158567,
		0.815528, 0.563101, -0.133534,
		18.998228, 20.318363, 14.460469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.185556, 20.357285, 14.176264>,  <18.427359, 19.924192, 14.553943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.185556, 20.357285, 14.176264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.580227, 20.397282, 14.124925>,  <18.817028, 20.421280, 14.094121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.580227, 20.397282, 14.124925>,  <18.185556, 20.357285, 14.176264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.580227, 20.397282, 14.124925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131611, 0.026720, -0.990941,
		-0.095659, 0.994629, 0.039524,
		0.986675, 0.099994, -0.128348,
		18.876230, 20.427280, 14.086420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.238749, 20.887671, 13.755093>,  <18.185556, 20.357285, 14.176264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.238749, 20.887671, 13.755093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.589970, 20.704758, 13.698646>,  <18.800703, 20.595009, 13.664778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.589970, 20.704758, 13.698646>,  <18.238749, 20.887671, 13.755093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.589970, 20.704758, 13.698646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140670, 0.035231, -0.989430,
		0.457421, 0.888623, -0.033391,
		0.878053, -0.457283, -0.141118,
		18.853386, 20.567574, 13.656310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.485703, 21.292999, 13.114556>,  <18.238749, 20.887671, 13.755093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.485703, 21.292999, 13.114556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.684155, 20.947227, 13.147096>,  <18.803226, 20.739765, 13.166619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.684155, 20.947227, 13.147096>,  <18.485703, 21.292999, 13.114556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.684155, 20.947227, 13.147096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204813, 0.025470, -0.978470,
		0.843745, 0.502110, 0.189683,
		0.496131, -0.864428, 0.081349,
		18.832994, 20.687899, 13.171500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.165026, 21.395018, 12.870643>,  <18.485703, 21.292999, 13.114556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.165026, 21.395018, 12.870643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.128490, 20.998173, 12.836294>,  <19.106569, 20.760067, 12.815685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.128490, 20.998173, 12.836294>,  <19.165026, 21.395018, 12.870643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.128490, 20.998173, 12.836294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366780, 0.046654, -0.929137,
		0.925813, -0.116361, 0.359625,
		-0.091337, -0.992111, -0.085872,
		19.101089, 20.700539, 12.810533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.815294, 21.136002, 12.560749>,  <19.165026, 21.395018, 12.870643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.815294, 21.136002, 12.560749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.552277, 20.838886, 12.510313>,  <19.394466, 20.660618, 12.480051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.552277, 20.838886, 12.510313>,  <19.815294, 21.136002, 12.560749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.552277, 20.838886, 12.510313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303617, -0.108078, -0.946644,
		0.689529, -0.660745, 0.296589,
		-0.657545, -0.742789, -0.126091,
		19.355013, 20.616049, 12.472486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.209305, 20.708229, 12.192546>,  <19.815294, 21.136002, 12.560749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.209305, 20.708229, 12.192546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.821545, 20.627270, 12.136983>,  <19.588888, 20.578693, 12.103645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.821545, 20.627270, 12.136983>,  <20.209305, 20.708229, 12.192546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.821545, 20.627270, 12.136983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132047, 0.047078, -0.990125,
		0.206942, -0.978170, -0.018911,
		-0.969401, -0.202401, -0.138907,
		19.530724, 20.566549, 12.095311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.211552, 20.221306, 11.617108>,  <20.209305, 20.708229, 12.192546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.211552, 20.221306, 11.617108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.827358, 20.331543, 11.601516>,  <19.596842, 20.397686, 11.592160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.827358, 20.331543, 11.601516>,  <20.211552, 20.221306, 11.617108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.827358, 20.331543, 11.601516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000399, -0.141415, -0.989950,
		-0.278336, -0.950816, 0.135937,
		-0.960484, 0.275592, -0.038982,
		19.539213, 20.414221, 11.589821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.823044, 19.602282, 11.325787>,  <20.211552, 20.221306, 11.617108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.823044, 19.602282, 11.325787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.571133, 19.906342, 11.261847>,  <19.419987, 20.088778, 11.223484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.571133, 19.906342, 11.261847>,  <19.823044, 19.602282, 11.325787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.571133, 19.906342, 11.261847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122950, -0.300739, -0.945748,
		-0.766984, -0.575956, 0.282859,
		-0.629776, 0.760152, -0.159848,
		19.382200, 20.134388, 11.213893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.280764, 19.345211, 10.946682>,  <19.823044, 19.602282, 11.325787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.280764, 19.345211, 10.946682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.266968, 19.738148, 10.873122>,  <19.258690, 19.973909, 10.828986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.266968, 19.738148, 10.873122>,  <19.280764, 19.345211, 10.946682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.266968, 19.738148, 10.873122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182481, -0.187106, -0.965242,
		-0.982604, 0.000268, 0.185711,
		-0.034489, 0.982340, -0.183900,
		19.256620, 20.032850, 10.817952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.680626, 19.478729, 10.464796>,  <19.280764, 19.345211, 10.946682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.680626, 19.478729, 10.464796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.929756, 19.789585, 10.428704>,  <19.079233, 19.976099, 10.407049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.929756, 19.789585, 10.428704>,  <18.680626, 19.478729, 10.464796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.929756, 19.789585, 10.428704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056087, -0.159386, -0.985622,
		-0.780349, 0.608808, -0.142856,
		0.622824, 0.777142, -0.090231,
		19.116604, 20.022728, 10.401635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.333172, 19.928223, 9.798200>,  <18.680626, 19.478729, 10.464796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.333172, 19.928223, 9.798200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.719990, 20.021950, 9.838042>,  <18.952080, 20.078186, 9.861948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.719990, 20.021950, 9.838042>,  <18.333172, 19.928223, 9.798200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.719990, 20.021950, 9.838042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115436, -0.054801, -0.991802,
		-0.226938, 0.970614, -0.080043,
		0.967044, 0.234317, 0.099608,
		19.010103, 20.092245, 9.867925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.787436, 20.503105, 9.365295>,  <18.333172, 19.928223, 9.798200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.787436, 20.503105, 9.365295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.481323, 20.255348, 9.295212>,  <17.297657, 20.106693, 9.253161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.481323, 20.255348, 9.295212>,  <17.787436, 20.503105, 9.365295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.481323, 20.255348, 9.295212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204660, -0.023938, 0.978540,
		-0.610296, 0.784715, -0.108446,
		-0.765280, -0.619394, -0.175209,
		17.251740, 20.069530, 9.242649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.373878, 20.718498, 9.860099>,  <17.787436, 20.503105, 9.365295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.373878, 20.718498, 9.860099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.218369, 20.364719, 9.756864>,  <17.125063, 20.152452, 9.694922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.218369, 20.364719, 9.756864>,  <17.373878, 20.718498, 9.860099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.218369, 20.364719, 9.756864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415631, -0.081640, 0.905862,
		-0.822257, 0.459444, -0.335864,
		-0.388773, -0.884447, -0.258088,
		17.101736, 20.099386, 9.679438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.718777, 20.757847, 10.058631>,  <17.373878, 20.718498, 9.860099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.718777, 20.757847, 10.058631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.798695, 20.366024, 10.049264>,  <16.846645, 20.130930, 10.043644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.798695, 20.366024, 10.049264>,  <16.718777, 20.757847, 10.058631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.798695, 20.366024, 10.049264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392202, -0.101851, 0.914223,
		-0.897919, -0.173472, -0.404535,
		0.199795, -0.979558, -0.023418,
		16.858633, 20.072157, 10.042238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.063566, 20.359188, 10.409089>,  <16.718777, 20.757847, 10.058631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.063566, 20.359188, 10.409089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.393673, 20.133587, 10.420674>,  <16.591738, 19.998226, 10.427626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.393673, 20.133587, 10.420674>,  <16.063566, 20.359188, 10.409089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.393673, 20.133587, 10.420674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186345, -0.223535, 0.956717,
		-0.533115, -0.794943, -0.289575,
		0.825266, -0.564001, 0.028964,
		16.641253, 19.964386, 10.429363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.875401, 19.665962, 10.652834>,  <16.063566, 20.359188, 10.409089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.875401, 19.665962, 10.652834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.265102, 19.708721, 10.732236>,  <16.498922, 19.734377, 10.779877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.265102, 19.708721, 10.732236>,  <15.875401, 19.665962, 10.652834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.265102, 19.708721, 10.732236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136881, -0.419157, 0.897536,
		0.179150, -0.901598, -0.393733,
		0.974253, 0.106899, 0.198504,
		16.557379, 19.740791, 10.791787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.002600, 19.147701, 11.151466>,  <15.875401, 19.665962, 10.652834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.002600, 19.147701, 11.151466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.316998, 19.394966, 11.155196>,  <16.505636, 19.543325, 11.157434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.316998, 19.394966, 11.155196>,  <16.002600, 19.147701, 11.151466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.316998, 19.394966, 11.155196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016430, -0.035965, 0.999218,
		0.618015, -0.785227, -0.038424,
		0.785995, 0.618163, 0.009326,
		16.552795, 19.580416, 11.157994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.472013, 18.854206, 11.607627>,  <16.002600, 19.147701, 11.151466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.472013, 18.854206, 11.607627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.602032, 19.232483, 11.606272>,  <16.680042, 19.459450, 11.605458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.602032, 19.232483, 11.606272>,  <16.472013, 18.854206, 11.607627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.602032, 19.232483, 11.606272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000586, 0.003381, 0.999994,
		0.945699, -0.325044, 0.000545,
		0.325044, 0.945693, -0.003388,
		16.699545, 19.516191, 11.605255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.951996, 18.849548, 12.138085>,  <16.472013, 18.854206, 11.607627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.951996, 18.849548, 12.138085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.847031, 19.228943, 12.067078>,  <16.784052, 19.456579, 12.024473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.847031, 19.228943, 12.067078>,  <16.951996, 18.849548, 12.138085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.847031, 19.228943, 12.067078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115747, 0.151699, 0.981626,
		0.957988, 0.278141, 0.069977,
		-0.262415, 0.948486, -0.177520,
		16.768307, 19.513489, 12.013822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.266926, 19.220623, 12.563635>,  <16.951996, 18.849548, 12.138085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.266926, 19.220623, 12.563635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.976971, 19.475754, 12.459549>,  <16.802998, 19.628832, 12.397098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.976971, 19.475754, 12.459549>,  <17.266926, 19.220623, 12.563635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.976971, 19.475754, 12.459549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074649, 0.302786, 0.950130,
		0.684810, 0.708163, -0.171873,
		-0.724888, 0.637829, -0.260215,
		16.759504, 19.667103, 12.381484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.362053, 19.803629, 13.055834>,  <17.266926, 19.220623, 12.563635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.362053, 19.803629, 13.055834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.995514, 19.858776, 12.905475>,  <16.775591, 19.891865, 12.815259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.995514, 19.858776, 12.905475>,  <17.362053, 19.803629, 13.055834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.995514, 19.858776, 12.905475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281166, 0.446819, 0.849293,
		0.285049, 0.883937, -0.370677,
		-0.916348, 0.137868, -0.375898,
		16.720610, 19.900137, 12.792706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.133610, 20.502523, 13.312311>,  <17.362053, 19.803629, 13.055834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.133610, 20.502523, 13.312311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.823563, 20.261398, 13.236613>,  <16.637535, 20.116724, 13.191195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.823563, 20.261398, 13.236613>,  <17.133610, 20.502523, 13.312311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.823563, 20.261398, 13.236613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375854, 0.199165, 0.905023,
		-0.507867, 0.772626, -0.380945,
		-0.775116, -0.602811, -0.189245,
		16.591028, 20.080555, 13.179840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.540287, 20.859207, 13.621864>,  <17.133610, 20.502523, 13.312311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.540287, 20.859207, 13.621864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.418140, 20.482971, 13.562478>,  <16.344852, 20.257229, 13.526847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.418140, 20.482971, 13.562478>,  <16.540287, 20.859207, 13.621864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.418140, 20.482971, 13.562478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439959, 0.001090, 0.898017,
		-0.844504, 0.339544, -0.414154,
		-0.305367, -0.940590, -0.148465,
		16.326530, 20.200794, 13.517939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.757220, 20.875000, 13.870262>,  <16.540287, 20.859207, 13.621864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.757220, 20.875000, 13.870262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.886045, 20.497959, 13.905534>,  <15.963339, 20.271734, 13.926697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.886045, 20.497959, 13.905534>,  <15.757220, 20.875000, 13.870262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.886045, 20.497959, 13.905534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337127, -0.027152, 0.941067,
		-0.884659, -0.332808, -0.326522,
		0.322061, -0.942603, 0.088178,
		15.982663, 20.215178, 13.931987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.215216, 20.506231, 14.208174>,  <15.757220, 20.875000, 13.870262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.215216, 20.506231, 14.208174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.538974, 20.277184, 14.260301>,  <15.733229, 20.139755, 14.291576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.538974, 20.277184, 14.260301>,  <15.215216, 20.506231, 14.208174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.538974, 20.277184, 14.260301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334925, -0.267824, 0.903380,
		-0.482394, -0.774838, -0.408561,
		0.809396, -0.572622, 0.130315,
		15.781793, 20.105396, 14.299396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.975676, 19.862646, 14.471415>,  <15.215216, 20.506231, 14.208174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.975676, 19.862646, 14.471415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.366685, 19.884037, 14.552989>,  <15.601291, 19.896872, 14.601933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.366685, 19.884037, 14.552989>,  <14.975676, 19.862646, 14.471415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.366685, 19.884037, 14.552989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193254, -0.159381, 0.968117,
		0.084280, -0.985767, -0.145463,
		0.977522, 0.053481, 0.203936,
		15.659942, 19.900082, 14.614170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.101060, 19.315405, 14.959923>,  <14.975676, 19.862646, 14.471415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.101060, 19.315405, 14.959923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.435657, 19.533134, 14.985198>,  <15.636415, 19.663773, 15.000363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.435657, 19.533134, 14.985198>,  <15.101060, 19.315405, 14.959923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.435657, 19.533134, 14.985198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053142, -0.195347, 0.979294,
		0.545396, -0.815814, -0.192332,
		0.836492, 0.544323, 0.063187,
		15.686604, 19.696432, 15.004154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.726467, 18.853197, 15.276099>,  <15.101060, 19.315405, 14.959923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.726467, 18.853197, 15.276099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.751842, 19.248966, 15.328280>,  <15.767066, 19.486427, 15.359590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.751842, 19.248966, 15.328280>,  <15.726467, 18.853197, 15.276099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.751842, 19.248966, 15.328280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128423, -0.137723, 0.982110,
		0.989689, -0.045547, -0.135801,
		0.063435, 0.989423, 0.130454,
		15.770872, 19.545794, 15.367416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.208399, 18.914888, 15.804230>,  <15.726467, 18.853197, 15.276099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.208399, 18.914888, 15.804230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.030434, 19.272709, 15.821353>,  <15.923655, 19.487400, 15.831627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.030434, 19.272709, 15.821353>,  <16.208399, 18.914888, 15.804230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.030434, 19.272709, 15.821353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031891, -0.031944, 0.998981,
		0.895006, 0.445824, -0.014316,
		-0.444913, 0.894550, 0.042808,
		15.896960, 19.541075, 15.834195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.616152, 19.250675, 16.314724>,  <16.208399, 18.914888, 15.804230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.616152, 19.250675, 16.314724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.282475, 19.469845, 16.289740>,  <16.082268, 19.601345, 16.274750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.282475, 19.469845, 16.289740>,  <16.616152, 19.250675, 16.314724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.282475, 19.469845, 16.289740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009242, 0.099353, 0.995009,
		0.551393, 0.830609, -0.077816,
		-0.834195, 0.547922, -0.062459,
		16.032217, 19.634222, 16.271002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.664999, 19.832235, 16.773943>,  <16.616152, 19.250675, 16.314724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.664999, 19.832235, 16.773943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.268520, 19.819302, 16.722591>,  <16.030632, 19.811541, 16.691780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.268520, 19.819302, 16.722591>,  <16.664999, 19.832235, 16.773943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.268520, 19.819302, 16.722591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132330, 0.212603, 0.968137,
		-0.004011, 0.976603, -0.215011,
		-0.991198, -0.032336, -0.128381,
		15.971161, 19.809601, 16.684076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.473816, 20.478640, 17.117046>,  <16.664999, 19.832235, 16.773943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.473816, 20.478640, 17.117046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.169720, 20.219807, 17.093987>,  <15.987263, 20.064507, 17.080151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.169720, 20.219807, 17.093987>,  <16.473816, 20.478640, 17.117046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.169720, 20.219807, 17.093987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158208, 0.098340, 0.982497,
		-0.630085, 0.756053, -0.177135,
		-0.760239, -0.647081, -0.057651,
		15.941648, 20.025682, 17.076691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.100760, 20.761028, 17.561890>,  <16.473816, 20.478640, 17.117046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.100760, 20.761028, 17.561890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.966731, 20.384739, 17.540844>,  <15.886313, 20.158966, 17.528217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.966731, 20.384739, 17.540844>,  <16.100760, 20.761028, 17.561890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.966731, 20.384739, 17.540844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264271, 0.040235, 0.963609,
		-0.904371, 0.336782, -0.262087,
		-0.335071, -0.940722, -0.052614,
		15.866210, 20.102522, 17.525059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.475015, 20.762711, 17.952002>,  <16.100760, 20.761028, 17.561890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.475015, 20.762711, 17.952002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.584880, 20.380417, 17.909800>,  <15.650799, 20.151041, 17.884478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.584880, 20.380417, 17.909800>,  <15.475015, 20.762711, 17.952002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.584880, 20.380417, 17.909800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340368, -0.199260, 0.918937,
		-0.899283, -0.216486, -0.380031,
		0.274662, -0.955735, -0.105506,
		15.667278, 20.093697, 17.878147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.932384, 20.287998, 18.373800>,  <15.475015, 20.762711, 17.952002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.932384, 20.287998, 18.373800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.256497, 20.057442, 18.331432>,  <15.450965, 19.919107, 18.306011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.256497, 20.057442, 18.331432>,  <14.932384, 20.287998, 18.373800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.256497, 20.057442, 18.331432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108748, -0.325480, 0.939275,
		-0.575864, -0.749558, -0.326411,
		0.810281, -0.576391, -0.105919,
		15.499581, 19.884525, 18.299656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.774471, 19.508583, 18.407406>,  <14.932384, 20.287998, 18.373800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.774471, 19.508583, 18.407406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.155168, 19.582935, 18.505089>,  <15.383585, 19.627546, 18.563700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.155168, 19.582935, 18.505089>,  <14.774471, 19.508583, 18.407406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.155168, 19.582935, 18.505089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149318, -0.414735, 0.897608,
		0.268132, -0.890754, -0.366964,
		0.951740, 0.185883, 0.244209,
		15.440690, 19.638700, 18.578352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.845502, 18.926016, 18.874214>,  <14.774471, 19.508583, 18.407406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.845502, 18.926016, 18.874214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.162534, 19.160965, 18.939711>,  <15.352753, 19.301933, 18.979010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.162534, 19.160965, 18.939711>,  <14.845502, 18.926016, 18.874214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.162534, 19.160965, 18.939711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035723, -0.312798, 0.949148,
		0.608720, -0.746427, -0.268900,
		0.792580, 0.587371, 0.163742,
		15.400308, 19.337177, 18.988832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.449392, 18.413183, 19.004637>,  <14.845502, 18.926016, 18.874214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.449392, 18.413183, 19.004637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.524816, 18.766155, 19.177036>,  <15.570069, 18.977940, 19.280476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.524816, 18.766155, 19.177036>,  <15.449392, 18.413183, 19.004637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.524816, 18.766155, 19.177036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236809, -0.466777, 0.852080,
		0.953083, -0.058602, -0.296982,
		0.188558, 0.882431, 0.430999,
		15.581383, 19.030884, 19.306335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.045662, 18.288277, 19.419195>,  <15.449392, 18.413183, 19.004637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.045662, 18.288277, 19.419195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.877915, 18.609024, 19.589437>,  <15.777268, 18.801472, 19.691584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.877915, 18.609024, 19.589437>,  <16.045662, 18.288277, 19.419195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.877915, 18.609024, 19.589437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009535, -0.472689, 0.881178,
		0.907768, 0.365476, 0.205875,
		-0.419364, 0.801868, 0.425607,
		15.752106, 18.849585, 19.717119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.453793, 18.467550, 19.997200>,  <16.045662, 18.288277, 19.419195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.453793, 18.467550, 19.997200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.105061, 18.639366, 20.091354>,  <15.895822, 18.742456, 20.147848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.105061, 18.639366, 20.091354>,  <16.453793, 18.467550, 19.997200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.105061, 18.639366, 20.091354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105758, -0.304154, 0.946734,
		0.478254, 0.850286, 0.219744,
		-0.871830, 0.429540, 0.235387,
		15.843512, 18.768229, 20.161970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.545973, 18.934246, 20.658106>,  <16.453793, 18.467550, 19.997200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.545973, 18.934246, 20.658106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.157013, 18.850574, 20.616764>,  <15.923636, 18.800371, 20.591959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.157013, 18.850574, 20.616764>,  <16.545973, 18.934246, 20.658106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.157013, 18.850574, 20.616764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050464, -0.243939, 0.968477,
		-0.227796, 0.946963, 0.226650,
		-0.972400, -0.209178, -0.103356,
		15.865293, 18.787821, 20.585756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.302759, 19.355852, 21.233498>,  <16.545973, 18.934246, 20.658106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.302759, 19.355852, 21.233498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.043976, 19.063141, 21.147758>,  <15.888706, 18.887514, 21.096315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.043976, 19.063141, 21.147758>,  <16.302759, 19.355852, 21.233498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.043976, 19.063141, 21.147758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068385, -0.224291, 0.972120,
		-0.759454, 0.643577, 0.095064,
		-0.646956, -0.731780, -0.214350,
		15.849889, 18.843607, 21.083454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.824461, 19.447859, 21.748470>,  <16.302759, 19.355852, 21.233498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.824461, 19.447859, 21.748470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.745269, 19.082478, 21.606255>,  <15.697754, 18.863249, 21.520926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.745269, 19.082478, 21.606255>,  <15.824461, 19.447859, 21.748470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.745269, 19.082478, 21.606255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025526, -0.367401, 0.929713,
		-0.979873, 0.174990, 0.096055,
		-0.197981, -0.913452, -0.355539,
		15.685875, 18.808441, 21.499592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.230116, 19.335577, 22.091984>,  <15.824461, 19.447859, 21.748470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.230116, 19.335577, 22.091984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.357205, 18.963715, 22.017374>,  <15.433459, 18.740597, 21.972609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.357205, 18.963715, 22.017374>,  <15.230116, 19.335577, 22.091984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.357205, 18.963715, 22.017374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083423, -0.168549, 0.982157,
		-0.944506, -0.327616, 0.024003,
		0.317724, -0.929655, -0.186526,
		15.452522, 18.684818, 21.961416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.904520, 18.916725, 22.564671>,  <15.230116, 19.335577, 22.091984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.904520, 18.916725, 22.564671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.181104, 18.639889, 22.481831>,  <15.347054, 18.473787, 22.432127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.181104, 18.639889, 22.481831>,  <14.904520, 18.916725, 22.564671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.181104, 18.639889, 22.481831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018210, -0.303287, 0.952725,
		-0.722185, -0.655000, -0.222314,
		0.691460, -0.692092, -0.207102,
		15.388541, 18.432261, 22.419701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.686824, 18.377600, 22.871004>,  <14.904520, 18.916725, 22.564671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.686824, 18.377600, 22.871004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.082555, 18.337227, 22.828968>,  <15.319993, 18.313004, 22.803745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.082555, 18.337227, 22.828968>,  <14.686824, 18.377600, 22.871004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.082555, 18.337227, 22.828968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078727, -0.236649, 0.968401,
		-0.122608, -0.966339, -0.226177,
		0.989328, -0.100928, -0.105092,
		15.379353, 18.306948, 22.797440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.804408, 17.696323, 23.122797>,  <14.686824, 18.377600, 22.871004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.804408, 17.696323, 23.122797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.158841, 17.881393, 23.134022>,  <15.371501, 17.992435, 23.140757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.158841, 17.881393, 23.134022>,  <14.804408, 17.696323, 23.122797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.158841, 17.881393, 23.134022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057492, -0.169770, 0.983805,
		0.459949, -0.870119, -0.177031,
		0.886082, 0.462678, 0.028061,
		15.424665, 18.020197, 23.142441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.228459, 17.289480, 23.506132>,  <14.804408, 17.696323, 23.122797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.228459, 17.289480, 23.506132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.421836, 17.638836, 23.529715>,  <15.537862, 17.848450, 23.543865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.421836, 17.638836, 23.529715>,  <15.228459, 17.289480, 23.506132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.421836, 17.638836, 23.529715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227798, -0.190550, 0.954882,
		0.845218, -0.448198, -0.291076,
		0.483440, 0.873390, 0.058958,
		15.566868, 17.900852, 23.547401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.892206, 17.113775, 23.802910>,  <15.228459, 17.289480, 23.506132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.892206, 17.113775, 23.802910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.807557, 17.498371, 23.873058>,  <15.756767, 17.729128, 23.915148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.807557, 17.498371, 23.873058>,  <15.892206, 17.113775, 23.802910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.807557, 17.498371, 23.873058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245530, -0.121378, 0.961760,
		0.946008, 0.246589, -0.210388,
		-0.211622, 0.961489, 0.175370,
		15.744070, 17.786818, 23.925669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.014402, 16.373966, 23.872379>,  <15.892206, 17.113775, 23.802910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.014402, 16.373966, 23.872379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.952548, 15.979973, 23.841665>,  <15.915435, 15.743577, 23.823236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.952548, 15.979973, 23.841665>,  <16.014402, 16.373966, 23.872379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.952548, 15.979973, 23.841665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149262, 0.100119, -0.983716,
		0.976631, -0.140658, -0.162502,
		-0.154637, -0.984983, -0.076784,
		15.906157, 15.684478, 23.818630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.473007, 16.047054, 23.395460>,  <16.014402, 16.373966, 23.872379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.473007, 16.047054, 23.395460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.143726, 15.821026, 23.417486>,  <15.946157, 15.685410, 23.430702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.143726, 15.821026, 23.417486>,  <16.473007, 16.047054, 23.395460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.143726, 15.821026, 23.417486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065414, -0.190740, -0.979459,
		0.563966, -0.802692, 0.193982,
		-0.823203, -0.565070, 0.055063,
		15.896766, 15.651505, 23.434006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.641060, 15.538637, 22.956675>,  <16.473007, 16.047054, 23.395460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.641060, 15.538637, 22.956675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242599, 15.571815, 22.967991>,  <16.003523, 15.591722, 22.974781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242599, 15.571815, 22.967991>,  <16.641060, 15.538637, 22.956675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.242599, 15.571815, 22.967991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035975, -0.092641, -0.995049,
		-0.079894, -0.992240, 0.095268,
		-0.996154, 0.082925, 0.028294,
		15.943754, 15.596699, 22.976479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.508602, 15.164756, 22.327059>,  <16.641060, 15.538637, 22.956675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.508602, 15.164756, 22.327059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.168854, 15.358711, 22.410439>,  <15.965005, 15.475084, 22.460466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.168854, 15.358711, 22.410439>,  <16.508602, 15.164756, 22.327059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.168854, 15.358711, 22.410439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163019, 0.134612, -0.977397,
		-0.501989, -0.864154, -0.035289,
		-0.849371, 0.484890, 0.208447,
		15.914042, 15.504178, 22.472973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.006657, 14.817556, 21.934809>,  <16.508602, 15.164756, 22.327059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.006657, 14.817556, 21.934809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.860818, 15.183002, 22.006781>,  <15.773314, 15.402270, 22.049963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.860818, 15.183002, 22.006781>,  <16.006657, 14.817556, 21.934809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.860818, 15.183002, 22.006781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239935, 0.094528, -0.966176,
		-0.899722, -0.395438, 0.184744,
		-0.364599, 0.913616, 0.179928,
		15.751438, 15.457088, 22.060759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.367312, 14.909887, 21.619665>,  <16.006657, 14.817556, 21.934809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.367312, 14.909887, 21.619665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.488778, 15.289829, 21.649496>,  <15.561658, 15.517795, 21.667395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.488778, 15.289829, 21.649496>,  <15.367312, 14.909887, 21.619665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.488778, 15.289829, 21.649496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143188, 0.122883, -0.982037,
		-0.941958, 0.287531, 0.173323,
		0.303665, 0.949856, 0.074579,
		15.579878, 15.574786, 21.671869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.889479, 15.258852, 21.247726>,  <15.367312, 14.909887, 21.619665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.889479, 15.258852, 21.247726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.169242, 15.541908, 21.287870>,  <15.337100, 15.711742, 21.311956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.169242, 15.541908, 21.287870>,  <14.889479, 15.258852, 21.247726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.169242, 15.541908, 21.287870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246390, 0.370530, -0.895544,
		-0.670910, 0.601624, 0.433507,
		0.699408, 0.707641, 0.100359,
		15.379065, 15.754201, 21.317978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.628895, 16.037312, 21.088421>,  <14.889479, 15.258852, 21.247726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.628895, 16.037312, 21.088421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.021569, 16.009163, 21.017607>,  <15.257174, 15.992274, 20.975119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.021569, 16.009163, 21.017607>,  <14.628895, 16.037312, 21.088421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.021569, 16.009163, 21.017607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147060, 0.310832, -0.939019,
		0.121108, 0.947856, 0.294790,
		0.981685, -0.070371, -0.177036,
		15.316075, 15.988051, 20.964497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.664968, 16.524136, 20.598442>,  <14.628895, 16.037312, 21.088421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.664968, 16.524136, 20.598442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.018550, 16.341206, 20.559504>,  <15.230700, 16.231447, 20.536140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.018550, 16.341206, 20.559504>,  <14.664968, 16.524136, 20.598442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.018550, 16.341206, 20.559504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024439, 0.253101, -0.967131,
		0.466932, 0.852522, 0.234906,
		0.883955, -0.457326, -0.097346,
		15.283736, 16.204008, 20.530300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.102534, 16.936581, 20.223417>,  <14.664968, 16.524136, 20.598442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.102534, 16.936581, 20.223417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.285726, 16.582298, 20.193010>,  <15.395640, 16.369728, 20.174767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.285726, 16.582298, 20.193010>,  <15.102534, 16.936581, 20.223417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.285726, 16.582298, 20.193010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292792, 0.231030, -0.927846,
		0.839362, 0.402676, 0.365135,
		0.457979, -0.885707, -0.076017,
		15.423120, 16.316586, 20.170206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.821569, 17.056723, 20.023073>,  <15.102534, 16.936581, 20.223417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.821569, 17.056723, 20.023073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.735696, 16.685886, 19.900167>,  <15.684172, 16.463385, 19.826424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.735696, 16.685886, 19.900167>,  <15.821569, 17.056723, 20.023073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.735696, 16.685886, 19.900167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391344, 0.206589, -0.896756,
		0.894852, -0.312765, 0.318461,
		-0.214684, -0.927092, -0.307265,
		15.671290, 16.407759, 19.807987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.403957, 16.886995, 19.650263>,  <15.821569, 17.056723, 20.023073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.403957, 16.886995, 19.650263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.148594, 16.601292, 19.535532>,  <15.995377, 16.429869, 19.466694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.148594, 16.601292, 19.535532>,  <16.403957, 16.886995, 19.650263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.148594, 16.601292, 19.535532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252033, 0.158120, -0.954713,
		0.727267, -0.681785, 0.079072,
		-0.638406, -0.714260, -0.286827,
		15.957072, 16.387014, 19.449484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.707010, 16.537788, 19.182739>,  <16.403957, 16.886995, 19.650263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.707010, 16.537788, 19.182739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.327381, 16.445629, 19.096786>,  <16.099604, 16.390333, 19.045216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.327381, 16.445629, 19.096786>,  <16.707010, 16.537788, 19.182739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.327381, 16.445629, 19.096786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113045, 0.387594, -0.914872,
		0.294069, -0.892574, -0.341811,
		-0.949075, -0.230396, -0.214881,
		16.042658, 16.376511, 19.032322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.739910, 16.123295, 18.656448>,  <16.707010, 16.537788, 19.182739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.739910, 16.123295, 18.656448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.361507, 16.250710, 18.632425>,  <16.134466, 16.327158, 18.618011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.361507, 16.250710, 18.632425>,  <16.739910, 16.123295, 18.656448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.361507, 16.250710, 18.632425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138605, 0.230018, -0.963265,
		-0.293020, -0.919580, -0.261749,
		-0.946006, 0.318536, -0.060059,
		16.077705, 16.346270, 18.614408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.459484, 15.806458, 18.023224>,  <16.739910, 16.123295, 18.656448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.459484, 15.806458, 18.023224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.229507, 16.121876, 18.110529>,  <16.091520, 16.311127, 18.162912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.229507, 16.121876, 18.110529>,  <16.459484, 15.806458, 18.023224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.229507, 16.121876, 18.110529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129806, 0.351294, -0.927223,
		-0.807831, -0.504768, -0.304332,
		-0.574943, 0.788544, 0.218264,
		16.057024, 16.358438, 18.176008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.056076, 15.919970, 17.483931>,  <16.459484, 15.806458, 18.023224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.056076, 15.919970, 17.483931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.986159, 16.274918, 17.654587>,  <15.944210, 16.487886, 17.756981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.986159, 16.274918, 17.654587>,  <16.056076, 15.919970, 17.483931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.986159, 16.274918, 17.654587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170885, 0.454075, -0.874422,
		-0.969663, -0.079933, -0.231006,
		-0.174790, 0.887371, 0.426641,
		15.933722, 16.541128, 17.782579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.523804, 16.201157, 17.148453>,  <16.056076, 15.919970, 17.483931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.523804, 16.201157, 17.148453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.698173, 16.524864, 17.305960>,  <15.802794, 16.719090, 17.400465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.698173, 16.524864, 17.305960>,  <15.523804, 16.201157, 17.148453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.698173, 16.524864, 17.305960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160454, 0.360634, -0.918802,
		-0.885566, 0.463707, 0.027358,
		0.435921, 0.809270, 0.393769,
		15.828949, 16.767645, 17.424091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.267687, 16.864859, 16.852421>,  <15.523804, 16.201157, 17.148453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.267687, 16.864859, 16.852421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.636127, 16.943951, 16.986572>,  <15.857190, 16.991405, 17.067062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.636127, 16.943951, 16.986572>,  <15.267687, 16.864859, 16.852421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.636127, 16.943951, 16.986572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239492, 0.391400, -0.888510,
		-0.306951, 0.898727, 0.313164,
		0.921100, 0.197729, 0.335379,
		15.912457, 17.003269, 17.087185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.361569, 17.636406, 16.828918>,  <15.267687, 16.864859, 16.852421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.361569, 17.636406, 16.828918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.720185, 17.459694, 16.841869>,  <15.935355, 17.353666, 16.849640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.720185, 17.459694, 16.841869>,  <15.361569, 17.636406, 16.828918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.720185, 17.459694, 16.841869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254445, 0.453780, -0.854015,
		0.362594, 0.773896, 0.519240,
		0.896539, -0.441779, 0.032376,
		15.989147, 17.327160, 16.851582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.857593, 18.178448, 16.688181>,  <15.361569, 17.636406, 16.828918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.857593, 18.178448, 16.688181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.039299, 17.831001, 16.609037>,  <16.148323, 17.622534, 16.561552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.039299, 17.831001, 16.609037>,  <15.857593, 18.178448, 16.688181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.039299, 17.831001, 16.609037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225681, 0.327057, -0.917661,
		0.861806, 0.372210, 0.344601,
		0.454267, -0.868616, -0.197859,
		16.175579, 17.570417, 16.549681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.439379, 18.357891, 16.273018>,  <15.857593, 18.178448, 16.688181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.439379, 18.357891, 16.273018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.389229, 17.965618, 16.212959>,  <16.359138, 17.730255, 16.176924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.389229, 17.965618, 16.212959>,  <16.439379, 18.357891, 16.273018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.389229, 17.965618, 16.212959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202923, 0.122795, -0.971465,
		0.971135, -0.152266, 0.183608,
		-0.125375, -0.980682, -0.150149,
		16.351616, 17.671413, 16.167915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.803473, 18.140532, 15.767905>,  <16.439379, 18.357891, 16.273018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.803473, 18.140532, 15.767905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.585583, 17.805103, 15.764482>,  <16.454849, 17.603846, 15.762427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.585583, 17.805103, 15.764482>,  <16.803473, 18.140532, 15.767905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.585583, 17.805103, 15.764482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067892, -0.033923, -0.997116,
		0.835864, -0.543733, 0.075411,
		-0.544723, -0.838573, -0.008560,
		16.422165, 17.553532, 15.761913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.219482, 17.605225, 15.443937>,  <16.803473, 18.140532, 15.767905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.219482, 17.605225, 15.443937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.830532, 17.515476, 15.418191>,  <16.597162, 17.461626, 15.402743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.830532, 17.515476, 15.418191>,  <17.219482, 17.605225, 15.443937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.830532, 17.515476, 15.418191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058677, 0.031937, -0.997766,
		0.225929, -0.973980, -0.017889,
		-0.972375, -0.224374, -0.064366,
		16.538820, 17.448164, 15.398881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.189623, 17.358973, 14.774674>,  <17.219482, 17.605225, 15.443937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.189623, 17.358973, 14.774674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.806255, 17.384399, 14.885953>,  <16.576235, 17.399656, 14.952720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.806255, 17.384399, 14.885953>,  <17.189623, 17.358973, 14.774674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.806255, 17.384399, 14.885953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271469, 0.097432, -0.957503,
		-0.087971, -0.993210, -0.076124,
		-0.958418, 0.063567, 0.278197,
		16.518730, 17.403469, 14.969412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.898767, 16.801222, 14.482147>,  <17.189623, 17.358973, 14.774674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.898767, 16.801222, 14.482147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.596840, 17.050167, 14.565007>,  <16.415684, 17.199535, 14.614723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.596840, 17.050167, 14.565007>,  <16.898767, 16.801222, 14.482147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.596840, 17.050167, 14.565007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309662, -0.059709, -0.948970,
		-0.578237, -0.780447, 0.237792,
		-0.754819, 0.622364, 0.207149,
		16.370394, 17.236876, 14.627151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.224596, 16.461216, 14.320548>,  <16.898767, 16.801222, 14.482147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.224596, 16.461216, 14.320548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.177597, 16.857998, 14.301702>,  <16.149399, 17.096067, 14.290394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.177597, 16.857998, 14.301702>,  <16.224596, 16.461216, 14.320548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.177597, 16.857998, 14.301702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296237, -0.080294, -0.951733,
		-0.947860, -0.097867, 0.303288,
		-0.117496, 0.991955, -0.047116,
		16.142347, 17.155584, 14.287567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.647456, 16.530693, 13.947926>,  <16.224596, 16.461216, 14.320548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.647456, 16.530693, 13.947926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.765740, 16.910069, 13.902287>,  <15.836711, 17.137693, 13.874905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.765740, 16.910069, 13.902287>,  <15.647456, 16.530693, 13.947926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.765740, 16.910069, 13.902287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256002, -0.036388, -0.965991,
		-0.920336, 0.314863, 0.232042,
		0.295711, 0.948439, -0.114095,
		15.854454, 17.194601, 13.868059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.042712, 17.065790, 13.743237>,  <15.647456, 16.530693, 13.947926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.042712, 17.065790, 13.743237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.394862, 17.211319, 13.621533>,  <15.606153, 17.298635, 13.548512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.394862, 17.211319, 13.621533>,  <15.042712, 17.065790, 13.743237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.394862, 17.211319, 13.621533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298252, -0.074106, -0.951606,
		-0.368763, 0.928516, 0.043269,
		0.880375, 0.363822, -0.304259,
		15.658975, 17.320465, 13.530255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.936663, 17.593906, 13.240974>,  <15.042712, 17.065790, 13.743237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.936663, 17.593906, 13.240974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.317155, 17.484257, 13.184386>,  <15.545450, 17.418467, 13.150434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.317155, 17.484257, 13.184386>,  <14.936663, 17.593906, 13.240974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.317155, 17.484257, 13.184386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135638, 0.040219, -0.989942,
		0.277059, 0.960853, 0.001076,
		0.951231, -0.274126, -0.141471,
		15.602524, 17.402020, 13.141945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.165441, 18.050554, 12.819281>,  <14.936663, 17.593906, 13.240974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.165441, 18.050554, 12.819281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.427854, 17.753834, 12.763635>,  <15.585301, 17.575802, 12.730247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.427854, 17.753834, 12.763635>,  <15.165441, 18.050554, 12.819281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.427854, 17.753834, 12.763635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118089, 0.081166, -0.989680,
		0.745437, 0.665690, -0.034351,
		0.656032, -0.741801, -0.139115,
		15.624663, 17.531294, 12.721900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.726694, 18.286146, 12.435292>,  <15.165441, 18.050554, 12.819281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.726694, 18.286146, 12.435292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.692472, 17.892860, 12.370827>,  <15.671938, 17.656889, 12.332148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.692472, 17.892860, 12.370827>,  <15.726694, 18.286146, 12.435292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.692472, 17.892860, 12.370827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024802, 0.159606, -0.986869,
		0.996025, -0.088430, 0.010730,
		-0.085556, -0.983212, -0.161164,
		15.666804, 17.597897, 12.322477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.172537, 18.127230, 11.846642>,  <15.726694, 18.286146, 12.435292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.172537, 18.127230, 11.846642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.990363, 17.772015, 11.871838>,  <15.881060, 17.558886, 11.886955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.990363, 17.772015, 11.871838>,  <16.172537, 18.127230, 11.846642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.990363, 17.772015, 11.871838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065074, -0.103772, -0.992470,
		0.887889, -0.447903, 0.105049,
		-0.455432, -0.888039, 0.062991,
		15.853733, 17.505602, 11.890735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.523872, 17.639202, 11.362106>,  <16.172537, 18.127230, 11.846642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.523872, 17.639202, 11.362106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.148529, 17.505436, 11.397093>,  <15.923323, 17.425177, 11.418084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.148529, 17.505436, 11.397093>,  <16.523872, 17.639202, 11.362106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.148529, 17.505436, 11.397093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078658, -0.039816, -0.996106,
		0.336596, -0.941584, 0.011057,
		-0.938358, -0.334416, 0.087465,
		15.867022, 17.405111, 11.423332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.514664, 17.083616, 10.927064>,  <16.523872, 17.639202, 11.362106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.514664, 17.083616, 10.927064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.138771, 17.212368, 10.973194>,  <15.913236, 17.289619, 11.000873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.138771, 17.212368, 10.973194>,  <16.514664, 17.083616, 10.927064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.138771, 17.212368, 10.973194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180462, -0.180439, -0.966890,
		-0.290413, -0.929427, 0.227651,
		-0.939730, 0.321880, 0.115325,
		15.856852, 17.308931, 11.007792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.087561, 16.589972, 10.561630>,  <16.514664, 17.083616, 10.927064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.087561, 16.589972, 10.561630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.835593, 16.895679, 10.616902>,  <15.684413, 17.079105, 10.650065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.835593, 16.895679, 10.616902>,  <16.087561, 16.589972, 10.561630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.835593, 16.895679, 10.616902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327561, -0.100113, -0.939511,
		-0.704208, -0.637076, 0.313409,
		-0.629917, 0.764272, 0.138181,
		15.646618, 17.124960, 10.658357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.458364, 16.437742, 10.171667>,  <16.087561, 16.589972, 10.561630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.458364, 16.437742, 10.171667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.392150, 16.824234, 10.250656>,  <15.352421, 17.056129, 10.298050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.392150, 16.824234, 10.250656>,  <15.458364, 16.437742, 10.171667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.392150, 16.824234, 10.250656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341923, 0.131586, -0.930470,
		-0.925033, -0.221547, 0.308594,
		-0.165536, 0.966231, 0.197473,
		15.342489, 17.114103, 10.309898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.789682, 16.584019, 10.108574>,  <15.458364, 16.437742, 10.171667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.789682, 16.584019, 10.108574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.001964, 16.913403, 10.028309>,  <15.129333, 17.111032, 9.980149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.001964, 16.913403, 10.028309>,  <14.789682, 16.584019, 10.108574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.001964, 16.913403, 10.028309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403310, 0.037122, -0.914310,
		-0.745450, 0.566156, 0.351812,
		0.530702, 0.823462, -0.200664,
		15.161174, 17.160440, 9.968110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.337364, 16.885443, 9.634312>,  <14.789682, 16.584019, 10.108574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.337364, 16.885443, 9.634312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.665862, 17.108223, 9.584730>,  <14.862961, 17.241890, 9.554981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.665862, 17.108223, 9.584730>,  <14.337364, 16.885443, 9.634312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.665862, 17.108223, 9.584730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299746, 0.236277, -0.924297,
		-0.485498, 0.796230, 0.360985,
		0.821245, 0.556948, -0.123954,
		14.912235, 17.275307, 9.547544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.159395, 17.503170, 9.241140>,  <14.337364, 16.885443, 9.634312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.159395, 17.503170, 9.241140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.554231, 17.466667, 9.188488>,  <14.791132, 17.444765, 9.156897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.554231, 17.466667, 9.188488>,  <14.159395, 17.503170, 9.241140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.554231, 17.466667, 9.188488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130594, 0.017262, -0.991286,
		0.092736, 0.995678, 0.005121,
		0.987089, -0.091259, -0.131630,
		14.850357, 17.439289, 9.148999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.366632, 17.998398, 8.692364>,  <14.159395, 17.503170, 9.241140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.366632, 17.998398, 8.692364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.650887, 17.717373, 8.707321>,  <14.821441, 17.548758, 8.716296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.650887, 17.717373, 8.707321>,  <14.366632, 17.998398, 8.692364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.650887, 17.717373, 8.707321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052325, -0.000227, -0.998630,
		0.701609, 0.711622, 0.036600,
		0.710638, -0.702563, 0.037394,
		14.864079, 17.506603, 8.718539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.961477, 18.257948, 8.203892>,  <14.366632, 17.998398, 8.692364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.961477, 18.257948, 8.203892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.960137, 17.865089, 8.279127>,  <14.959333, 17.629374, 8.324268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.960137, 17.865089, 8.279127>,  <14.961477, 18.257948, 8.203892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.960137, 17.865089, 8.279127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064313, -0.187489, -0.980159,
		0.997924, -0.015379, -0.062537,
		-0.003349, -0.982146, 0.188089,
		14.959132, 17.570446, 8.335554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.615526, 18.044802, 8.236219>,  <14.961477, 18.257948, 8.203892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.615526, 18.044802, 8.236219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.341134, 17.786400, 8.102289>,  <15.176498, 17.631359, 8.021931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.341134, 17.786400, 8.102289>,  <15.615526, 18.044802, 8.236219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.341134, 17.786400, 8.102289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362470, 0.095606, -0.927079,
		0.630908, -0.757323, 0.168574,
		-0.685982, -0.646004, -0.334826,
		15.135340, 17.592598, 8.001842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.888206, 17.729620, 7.633213>,  <15.615526, 18.044802, 8.236219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.888206, 17.729620, 7.633213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.514239, 17.598106, 7.579804>,  <15.289859, 17.519197, 7.547760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.514239, 17.598106, 7.579804>,  <15.888206, 17.729620, 7.633213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.514239, 17.598106, 7.579804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061325, 0.220906, -0.973365,
		0.349525, -0.918205, -0.186366,
		-0.934918, -0.328786, -0.133521,
		15.233764, 17.499472, 7.539748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.842455, 17.347342, 7.012539>,  <15.888206, 17.729620, 7.633213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.842455, 17.347342, 7.012539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.460799, 17.460655, 7.051258>,  <15.231806, 17.528645, 7.074490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.460799, 17.460655, 7.051258>,  <15.842455, 17.347342, 7.012539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.460799, 17.460655, 7.051258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110187, -0.031682, -0.993406,
		-0.278352, -0.958512, 0.061443,
		-0.954138, 0.283286, 0.096797,
		15.174558, 17.545641, 7.080297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.484455, 16.896526, 7.020827>,  <15.842455, 17.347342, 7.012539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.484455, 16.896526, 7.020827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.877296, 16.823105, 7.003941>,  <17.113001, 16.779051, 6.993809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.877296, 16.823105, 7.003941>,  <16.484455, 16.896526, 7.020827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.877296, 16.823105, 7.003941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003159, 0.240161, -0.970728,
		0.188320, 0.953221, 0.236442,
		0.982103, -0.183554, -0.042216,
		17.171926, 16.768038, 6.991276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.900890, 17.494558, 6.753141>,  <16.484455, 16.896526, 7.020827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.900890, 17.494558, 6.753141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.073418, 17.144428, 6.665719>,  <17.176933, 16.934349, 6.613266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.073418, 17.144428, 6.665719>,  <16.900890, 17.494558, 6.753141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.073418, 17.144428, 6.665719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131958, 0.178437, -0.975063,
		0.892498, 0.449402, -0.038544,
		0.431318, -0.875327, -0.218557,
		17.202812, 16.881830, 6.600152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.424345, 17.625565, 6.242418>,  <16.900890, 17.494558, 6.753141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.424345, 17.625565, 6.242418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.240467, 17.270584, 6.255765>,  <17.130140, 17.057596, 6.263773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.240467, 17.270584, 6.255765>,  <17.424345, 17.625565, 6.242418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.240467, 17.270584, 6.255765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231866, 0.083666, -0.969143,
		0.857274, -0.453247, -0.244230,
		-0.459695, -0.887450, 0.033368,
		17.102558, 17.004349, 6.265775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.770315, 17.142046, 5.751848>,  <17.424345, 17.625565, 6.242418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.770315, 17.142046, 5.751848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.387604, 17.038326, 5.804518>,  <17.157976, 16.976095, 5.836120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.387604, 17.038326, 5.804518>,  <17.770315, 17.142046, 5.751848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.387604, 17.038326, 5.804518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097738, -0.139729, -0.985354,
		0.273900, -0.955636, 0.108346,
		-0.956779, -0.259299, 0.131674,
		17.100571, 16.960537, 5.844020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.552145, 16.620710, 5.158340>,  <17.770315, 17.142046, 5.751848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.552145, 16.620710, 5.158340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.208858, 16.748104, 5.319352>,  <17.002886, 16.824541, 5.415960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.208858, 16.748104, 5.319352>,  <17.552145, 16.620710, 5.158340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.208858, 16.748104, 5.319352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474852, -0.194882, -0.858217,
		-0.194882, -0.927679, 0.318484,
		0.858217, -0.318484, -0.402531,
		16.951393, 16.843649, 5.440112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.084690, 16.134308, 4.983808>,  <17.552145, 16.620710, 5.158340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.084690, 16.134308, 4.983808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.912037, 16.487206, 5.059005>,  <16.808445, 16.698944, 5.104123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.912037, 16.487206, 5.059005>,  <17.084690, 16.134308, 4.983808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.912037, 16.487206, 5.059005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426837, -0.016159, -0.904184,
		-0.794672, -0.470518, 0.383549,
		-0.431633, 0.882243, 0.187993,
		16.782547, 16.751879, 5.115403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.431429, 16.096342, 4.640247>,  <17.084690, 16.134308, 4.983808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.431429, 16.096342, 4.640247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.472626, 16.486134, 4.720035>,  <16.497343, 16.720009, 4.767907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.472626, 16.486134, 4.720035>,  <16.431429, 16.096342, 4.640247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.472626, 16.486134, 4.720035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616476, 0.219910, -0.756040,
		-0.780609, -0.045102, 0.623390,
		0.102991, 0.974477, 0.199468,
		16.503523, 16.778477, 4.779875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.801745, 16.337124, 4.698147>,  <16.431429, 16.096342, 4.640247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.801745, 16.337124, 4.698147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.038052, 16.636513, 4.577626>,  <16.179836, 16.816147, 4.505313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.038052, 16.636513, 4.577626>,  <15.801745, 16.337124, 4.698147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.038052, 16.636513, 4.577626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539735, 0.089024, -0.837115,
		-0.599734, 0.657163, 0.456570,
		0.590766, 0.748473, -0.301303,
		16.215282, 16.861055, 4.487236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.461636, 16.950176, 4.553574>,  <15.801745, 16.337124, 4.698147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.461636, 16.950176, 4.553574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.790172, 16.990604, 4.329008>,  <15.987293, 17.014862, 4.194269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.790172, 16.990604, 4.329008>,  <15.461636, 16.950176, 4.553574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.790172, 16.990604, 4.329008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570234, 0.171864, -0.803303,
		0.015297, 0.979922, 0.198792,
		0.821340, 0.101070, -0.561414,
		16.036573, 17.020926, 4.160584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.559638, 17.687445, 4.103903>,  <15.461636, 16.950176, 4.553574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.559638, 17.687445, 4.103903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.770261, 17.389572, 3.939861>,  <15.896635, 17.210848, 3.841435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.770261, 17.389572, 3.939861>,  <15.559638, 17.687445, 4.103903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.770261, 17.389572, 3.939861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305209, 0.284649, -0.908748,
		0.793464, 0.603676, -0.077400,
		0.526557, -0.744682, -0.410106,
		15.928228, 17.166168, 3.816829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.849306, 17.957680, 3.545710>,  <15.559638, 17.687445, 4.103903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.849306, 17.957680, 3.545710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.832463, 17.562111, 3.488774>,  <15.822357, 17.324770, 3.454612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.832463, 17.562111, 3.488774>,  <15.849306, 17.957680, 3.545710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.832463, 17.562111, 3.488774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287651, 0.148434, -0.946163,
		0.956809, 0.001105, -0.290714,
		-0.042107, -0.988922, -0.142341,
		15.819831, 17.265434, 3.446071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.428417, 17.821510, 3.047167>,  <15.849306, 17.957680, 3.545710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.428417, 17.821510, 3.047167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.103310, 17.590073, 3.019930>,  <15.908245, 17.451210, 3.003588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.103310, 17.590073, 3.019930>,  <16.428417, 17.821510, 3.047167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.103310, 17.590073, 3.019930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063563, 0.204250, -0.976853,
		0.579110, -0.789627, -0.202785,
		-0.812768, -0.578595, -0.068092,
		15.859479, 17.416494, 2.999503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.526260, 17.335989, 2.486874>,  <16.428417, 17.821510, 3.047167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.526260, 17.335989, 2.486874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.138367, 17.415760, 2.543228>,  <15.905631, 17.463623, 2.577040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.138367, 17.415760, 2.543228>,  <16.526260, 17.335989, 2.486874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.138367, 17.415760, 2.543228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120376, 0.111531, -0.986443,
		-0.212438, -0.973545, -0.084149,
		-0.969732, 0.199429, 0.140885,
		15.847447, 17.475588, 2.585493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.248272, 17.286440, 1.851963>,  <16.526260, 17.335989, 2.486874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.248272, 17.286440, 1.851963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.925801, 17.430984, 2.039365>,  <15.732318, 17.517712, 2.151805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.925801, 17.430984, 2.039365>,  <16.248272, 17.286440, 1.851963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.925801, 17.430984, 2.039365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372809, 0.304633, -0.876477,
		-0.459445, -0.881259, -0.110870,
		-0.806179, 0.361360, 0.468503,
		15.683948, 17.539392, 2.179915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.820766, 17.203157, 1.412823>,  <16.248272, 17.286440, 1.851963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.820766, 17.203157, 1.412823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.651765, 17.476971, 1.650448>,  <15.550364, 17.641258, 1.793022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.651765, 17.476971, 1.650448>,  <15.820766, 17.203157, 1.412823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.651765, 17.476971, 1.650448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402812, 0.445333, -0.799638,
		-0.811932, -0.577144, 0.087583,
		-0.422503, 0.684531, 0.594061,
		15.525014, 17.682329, 1.828666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.140575, 17.301310, 1.291478>,  <15.820766, 17.203157, 1.412823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.140575, 17.301310, 1.291478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.184470, 17.652035, 1.478735>,  <15.210807, 17.862469, 1.591090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.184470, 17.652035, 1.478735>,  <15.140575, 17.301310, 1.291478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.184470, 17.652035, 1.478735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549054, 0.446083, -0.706788,
		-0.828551, -0.179475, 0.530369,
		0.109737, 0.876812, 0.468144,
		15.217391, 17.915079, 1.619179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.650381, 17.606251, 1.020455>,  <15.140575, 17.301310, 1.291478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.650381, 17.606251, 1.020455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.888387, 17.893951, 1.163918>,  <15.031190, 18.066572, 1.249997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.888387, 17.893951, 1.163918>,  <14.650381, 17.606251, 1.020455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.888387, 17.893951, 1.163918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338689, 0.629085, -0.699673,
		-0.728867, 0.294841, 0.617917,
		0.595014, 0.719250, 0.358660,
		15.066891, 18.109726, 1.271517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.303158, 18.271467, 1.067177>,  <14.650381, 17.606251, 1.020455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.303158, 18.271467, 1.067177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.689082, 18.376366, 1.059512>,  <14.920637, 18.439304, 1.054914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.689082, 18.376366, 1.059512>,  <14.303158, 18.271467, 1.067177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.689082, 18.376366, 1.059512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229992, 0.806342, -0.544899,
		-0.127446, 0.530132, 0.838283,
		0.964811, 0.262244, -0.019161,
		14.978525, 18.455038, 1.053764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.303119, 18.952347, 1.295755>,  <14.303158, 18.271467, 1.067177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.303119, 18.952347, 1.295755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.609002, 18.889874, 1.045690>,  <14.792532, 18.852388, 0.895651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.609002, 18.889874, 1.045690>,  <14.303119, 18.952347, 1.295755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.609002, 18.889874, 1.045690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307198, 0.764470, -0.566758,
		0.566438, 0.625453, 0.536616,
		0.764708, -0.156185, -0.625163,
		14.838414, 18.843018, 0.858141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.652126, 19.526749, 1.162040>,  <14.303119, 18.952347, 1.295755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.652126, 19.526749, 1.162040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.708846, 19.282726, 0.850214>,  <14.742878, 19.136312, 0.663118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.708846, 19.282726, 0.850214>,  <14.652126, 19.526749, 1.162040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.708846, 19.282726, 0.850214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568746, 0.594354, -0.568570,
		0.810198, 0.523999, -0.262688,
		0.141800, -0.610057, -0.779566,
		14.751387, 19.099709, 0.616344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.204148, 20.108093, 0.861873>,  <14.652126, 19.526749, 1.162040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.204148, 20.108093, 0.861873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.455760, 19.948711, 0.594873>,  <15.606728, 19.853083, 0.434673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.455760, 19.948711, 0.594873>,  <15.204148, 20.108093, 0.861873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.455760, 19.948711, 0.594873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092747, 0.814052, -0.573339,
		0.771829, 0.422557, 0.475107,
		0.629030, -0.398455, -0.667499,
		15.644469, 19.829176, 0.394623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.937446, 20.505596, 0.856375>,  <15.204148, 20.108093, 0.861873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.937446, 20.505596, 0.856375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.786960, 20.333458, 0.528164>,  <15.696669, 20.230175, 0.331237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.786960, 20.333458, 0.528164>,  <15.937446, 20.505596, 0.856375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.786960, 20.333458, 0.528164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125902, 0.901120, -0.414887,
		0.917938, -0.052780, -0.393197,
		-0.376215, -0.430345, -0.820527,
		15.674095, 20.204355, 0.282005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.501460, 20.896469, 1.331240>,  <15.937446, 20.505596, 0.856375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.501460, 20.896469, 1.331240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.680182, 21.247948, 1.398482>,  <15.787416, 21.458834, 1.438827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.680182, 21.247948, 1.398482>,  <15.501460, 20.896469, 1.331240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.680182, 21.247948, 1.398482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143926, 0.114857, -0.982900,
		-0.882978, 0.463361, -0.075149,
		0.446806, 0.878695, 0.168106,
		15.814224, 21.511557, 1.448914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.161471, 21.523975, 1.064163>,  <15.501460, 20.896469, 1.331240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.161471, 21.523975, 1.064163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.556840, 21.582272, 1.047283>,  <15.794062, 21.617249, 1.037155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.556840, 21.582272, 1.047283>,  <15.161471, 21.523975, 1.064163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.556840, 21.582272, 1.047283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025837, -0.112402, -0.993327,
		-0.149510, 0.982917, -0.107336,
		0.988423, 0.145739, -0.042201,
		15.853367, 21.625994, 1.034623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.271905, 22.130783, 0.458584>,  <15.161471, 21.523975, 1.064163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.271905, 22.130783, 0.458584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.522325, 21.825371, 0.521930>,  <15.672577, 21.642122, 0.559938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.522325, 21.825371, 0.521930>,  <15.271905, 22.130783, 0.458584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.522325, 21.825371, 0.521930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219151, -0.367182, -0.903964,
		0.748354, 0.531221, -0.397203,
		0.626050, -0.763533, 0.158365,
		15.710139, 21.596312, 0.569440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.595321, 22.004929, -0.074370>,  <15.271905, 22.130783, 0.458584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.595321, 22.004929, -0.074370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.611547, 21.650627, 0.110582>,  <15.621282, 21.438046, 0.221554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.611547, 21.650627, 0.110582>,  <15.595321, 22.004929, -0.074370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.611547, 21.650627, 0.110582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274404, -0.454844, -0.847242,
		0.960759, -0.092511, -0.261505,
		0.040565, -0.885753, 0.462381,
		15.623715, 21.384901, 0.249296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.136486, 21.549074, -0.455869>,  <15.595321, 22.004929, -0.074370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.136486, 21.549074, -0.455869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.811452, 21.409424, -0.269185>,  <15.616432, 21.325634, -0.157174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.811452, 21.409424, -0.269185>,  <16.136486, 21.549074, -0.455869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.811452, 21.409424, -0.269185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343396, -0.360235, -0.867358,
		0.470943, -0.865068, 0.172832,
		-0.812584, -0.349126, 0.466711,
		15.567677, 21.304686, -0.129171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.044909, 20.930080, -0.734067>,  <16.136486, 21.549074, -0.455869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.044909, 20.930080, -0.734067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.679561, 20.976215, -0.577887>,  <15.460352, 21.003897, -0.484179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.679561, 20.976215, -0.577887>,  <16.044909, 20.930080, -0.734067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.679561, 20.976215, -0.577887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395107, -0.482443, -0.781754,
		0.098208, -0.868301, 0.486219,
		-0.913370, 0.115334, 0.390451,
		15.405549, 21.010817, -0.460752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.688442, 20.240555, -0.925255>,  <16.044909, 20.930080, -0.734067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.688442, 20.240555, -0.925255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.471519, 20.575104, -0.893305>,  <15.341364, 20.775833, -0.874135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.471519, 20.575104, -0.893305>,  <15.688442, 20.240555, -0.925255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.471519, 20.575104, -0.893305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601589, -0.320184, -0.731828,
		-0.586508, -0.444928, 0.676792,
		-0.542309, 0.836374, 0.079874,
		15.308825, 20.826015, -0.869343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.977155, 20.101887, -1.004457>,  <15.688442, 20.240555, -0.925255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.977155, 20.101887, -1.004457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.018113, 20.479626, -1.129501>,  <15.042688, 20.706268, -1.204528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.018113, 20.479626, -1.129501>,  <14.977155, 20.101887, -1.004457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.018113, 20.479626, -1.129501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469833, -0.231088, -0.851972,
		-0.876797, 0.234113, 0.420022,
		0.102395, 0.944346, -0.312611,
		15.048832, 20.762930, -1.223285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.347161, 20.238890, -1.335424>,  <14.977155, 20.101887, -1.004457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.347161, 20.238890, -1.335424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.642535, 20.463833, -1.484267>,  <14.819759, 20.598799, -1.573573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.642535, 20.463833, -1.484267>,  <14.347161, 20.238890, -1.335424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.642535, 20.463833, -1.484267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314485, -0.200933, -0.927753,
		-0.596499, 0.802108, 0.028477,
		0.738436, 0.562360, -0.372107,
		14.864066, 20.632542, -1.595899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<19.706667, 14.837337, 17.675417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.065777, 15.005383, 17.622498>,  <20.281242, 15.106210, 17.590746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.065777, 15.005383, 17.622498>,  <19.706667, 14.837337, 17.675417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.065777, 15.005383, 17.622498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202091, 0.126013, -0.971226,
		-0.391354, 0.898680, 0.198033,
		0.897776, 0.420114, -0.132299,
		20.335110, 15.131416, 17.582808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.580364, 15.517074, 17.268188>,  <19.706667, 14.837337, 17.675417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.580364, 15.517074, 17.268188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.962219, 15.400940, 17.241728>,  <20.191332, 15.331260, 17.225851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.962219, 15.400940, 17.241728>,  <19.580364, 15.517074, 17.268188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.962219, 15.400940, 17.241728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020896, 0.156297, -0.987489,
		0.297041, 0.944075, 0.143140,
		0.954636, -0.290334, -0.066154,
		20.248610, 15.313840, 17.221882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.892170, 15.994049, 16.828775>,  <19.580364, 15.517074, 17.268188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.892170, 15.994049, 16.828775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.153614, 15.692001, 16.808432>,  <20.310480, 15.510773, 16.796225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.153614, 15.692001, 16.808432>,  <19.892170, 15.994049, 16.828775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.153614, 15.692001, 16.808432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031492, 0.094277, -0.995048,
		0.756175, 0.648773, 0.085401,
		0.653612, -0.755119, -0.050859,
		20.349697, 15.465466, 16.793175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.344723, 16.199738, 16.257727>,  <19.892170, 15.994049, 16.828775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.344723, 16.199738, 16.257727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.447979, 15.816921, 16.310547>,  <20.509932, 15.587232, 16.342239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.447979, 15.816921, 16.310547>,  <20.344723, 16.199738, 16.257727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.447979, 15.816921, 16.310547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077645, -0.115688, -0.990246,
		0.962982, 0.265875, 0.044445,
		0.258140, -0.957041, 0.132050,
		20.525421, 15.529809, 16.350163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.938499, 16.056541, 15.798537>,  <20.344723, 16.199738, 16.257727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.938499, 16.056541, 15.798537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.752003, 15.709728, 15.868819>,  <20.640104, 15.501640, 15.910989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.752003, 15.709728, 15.868819>,  <20.938499, 16.056541, 15.798537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.752003, 15.709728, 15.868819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154788, -0.115598, -0.981162,
		0.871010, -0.484657, -0.080309,
		-0.466243, -0.867032, 0.175706,
		20.612129, 15.449618, 15.921531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.324192, 15.584399, 15.480669>,  <20.938499, 16.056541, 15.798537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.324192, 15.584399, 15.480669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.960793, 15.422611, 15.522693>,  <20.742754, 15.325539, 15.547907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.960793, 15.422611, 15.522693>,  <21.324192, 15.584399, 15.480669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.960793, 15.422611, 15.522693> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031672, -0.184035, -0.982409,
		0.416689, -0.895843, 0.154385,
		-0.908497, -0.404470, 0.105059,
		20.688244, 15.301270, 15.554211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.275097, 15.002268, 14.954230>,  <21.324192, 15.584399, 15.480669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.275097, 15.002268, 14.954230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.903362, 15.122360, 15.040202>,  <20.680321, 15.194416, 15.091785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.903362, 15.122360, 15.040202>,  <21.275097, 15.002268, 14.954230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.903362, 15.122360, 15.040202> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246981, -0.072759, -0.966285,
		-0.274472, -0.951087, 0.141769,
		-0.929336, 0.300232, 0.214930,
		20.624561, 15.212430, 15.104681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.718729, 14.627120, 14.352522>,  <21.275097, 15.002268, 14.954230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.718729, 14.627120, 14.352522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.523548, 14.932137, 14.522431>,  <20.406439, 15.115147, 14.624377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.523548, 14.932137, 14.522431>,  <20.718729, 14.627120, 14.352522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.523548, 14.932137, 14.522431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317600, 0.298180, -0.900122,
		-0.813040, -0.574124, 0.096685,
		-0.487951, 0.762542, 0.424774,
		20.377163, 15.160899, 14.649863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.067961, 14.583906, 14.031157>,  <20.718729, 14.627120, 14.352522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.067961, 14.583906, 14.031157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.098446, 14.945518, 14.199405>,  <20.116737, 15.162486, 14.300353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.098446, 14.945518, 14.199405>,  <20.067961, 14.583906, 14.031157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.098446, 14.945518, 14.199405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289448, 0.423740, -0.858292,
		-0.954155, -0.056335, 0.293964,
		0.076212, 0.904030, 0.420620,
		20.121309, 15.216727, 14.325591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.430862, 14.965864, 13.829081>,  <20.067961, 14.583906, 14.031157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.430862, 14.965864, 13.829081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.683830, 15.259651, 13.927550>,  <19.835611, 15.435924, 13.986632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.683830, 15.259651, 13.927550>,  <19.430862, 14.965864, 13.829081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.683830, 15.259651, 13.927550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165759, 0.438752, -0.883188,
		-0.756682, 0.517740, 0.399220,
		0.632421, 0.734467, 0.246175,
		19.873556, 15.479991, 14.001403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.037813, 15.560516, 13.733422>,  <19.430862, 14.965864, 13.829081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.037813, 15.560516, 13.733422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.427040, 15.650379, 13.712762>,  <19.660576, 15.704297, 13.700366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.427040, 15.650379, 13.712762>,  <19.037813, 15.560516, 13.733422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.427040, 15.650379, 13.712762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171265, 0.554592, -0.814307,
		-0.154295, 0.801222, 0.578132,
		0.973068, 0.224657, -0.051651,
		19.718960, 15.717776, 13.697267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.014015, 16.331339, 13.496224>,  <19.037813, 15.560516, 13.733422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.014015, 16.331339, 13.496224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.376484, 16.173824, 13.434536>,  <19.593966, 16.079315, 13.397523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.376484, 16.173824, 13.434536>,  <19.014015, 16.331339, 13.496224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.376484, 16.173824, 13.434536> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007469, 0.349711, -0.936828,
		0.422843, 0.850079, 0.313957,
		0.906172, -0.393786, -0.154222,
		19.648336, 16.055689, 13.388269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.230221, 16.736765, 13.076418>,  <19.014015, 16.331339, 13.496224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.230221, 16.736765, 13.076418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.464256, 16.417843, 13.017123>,  <19.604677, 16.226490, 12.981546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.464256, 16.417843, 13.017123>,  <19.230221, 16.736765, 13.076418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.464256, 16.417843, 13.017123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082778, 0.240550, -0.967101,
		0.806734, 0.553569, 0.206743,
		0.585088, -0.797306, -0.148236,
		19.639782, 16.178652, 12.972652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.875458, 16.956261, 12.735835>,  <19.230221, 16.736765, 13.076418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.875458, 16.956261, 12.735835> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.869045, 16.563213, 12.661858>,  <19.865198, 16.327385, 12.617471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.869045, 16.563213, 12.661858>,  <19.875458, 16.956261, 12.735835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.869045, 16.563213, 12.661858> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224665, 0.176698, -0.958281,
		0.974304, -0.056915, 0.217927,
		-0.016033, -0.982618, -0.184945,
		19.864235, 16.268429, 12.606374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.442019, 16.791203, 12.213553>,  <19.875458, 16.956261, 12.735835>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.442019, 16.791203, 12.213553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.173710, 16.496132, 12.182835>,  <20.012724, 16.319090, 12.164404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.173710, 16.496132, 12.182835>,  <20.442019, 16.791203, 12.213553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.173710, 16.496132, 12.182835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119009, -0.004852, -0.992881,
		0.732053, -0.675137, 0.091045,
		-0.670772, -0.737676, -0.076796,
		19.972479, 16.274830, 12.159796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.798203, 16.392366, 11.726867>,  <20.442019, 16.791203, 12.213553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.798203, 16.392366, 11.726867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.410095, 16.295815, 11.734004>,  <20.177231, 16.237883, 11.738286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.410095, 16.295815, 11.734004>,  <20.798203, 16.392366, 11.726867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.410095, 16.295815, 11.734004> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015371, -0.012124, -0.999808,
		0.241553, -0.970354, 0.008053,
		-0.970266, -0.241383, 0.017844,
		20.119015, 16.223400, 11.739357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.785088, 16.135983, 11.087881>,  <20.798203, 16.392366, 11.726867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.785088, 16.135983, 11.087881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.399033, 16.167500, 11.187723>,  <20.167400, 16.186409, 11.247628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.399033, 16.167500, 11.187723>,  <20.785088, 16.135983, 11.087881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.399033, 16.167500, 11.187723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255407, -0.074892, -0.963929,
		-0.057249, -0.994075, 0.092403,
		-0.965137, 0.078785, 0.249606,
		20.109491, 16.191137, 11.262605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.489119, 15.693815, 10.689277>,  <20.785088, 16.135983, 11.087881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.489119, 15.693815, 10.689277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.210857, 15.967537, 10.776727>,  <20.043901, 16.131769, 10.829197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.210857, 15.967537, 10.776727>,  <20.489119, 15.693815, 10.689277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.210857, 15.967537, 10.776727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250761, 0.053878, -0.966549,
		-0.673193, -0.727203, 0.134117,
		-0.695651, 0.684305, 0.218624,
		20.002163, 16.172829, 10.842314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.838909, 15.512285, 10.343608>,  <20.489119, 15.693815, 10.689277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.838909, 15.512285, 10.343608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.778267, 15.891560, 10.455291>,  <19.741882, 16.119125, 10.522301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.778267, 15.891560, 10.455291>,  <19.838909, 15.512285, 10.343608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.778267, 15.891560, 10.455291> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415126, 0.195275, -0.888560,
		-0.897043, -0.250618, 0.364012,
		-0.151606, 0.948187, 0.279208,
		19.732784, 16.176016, 10.539053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.134693, 15.725962, 10.186591>,  <19.838909, 15.512285, 10.343608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.134693, 15.725962, 10.186591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.334572, 16.072304, 10.196358>,  <19.454500, 16.280109, 10.202217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.334572, 16.072304, 10.196358>,  <19.134693, 15.725962, 10.186591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.334572, 16.072304, 10.196358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399524, 0.255398, -0.880427,
		-0.768559, 0.430193, 0.473552,
		0.499698, 0.865855, 0.024416,
		19.484482, 16.332060, 10.203683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.649630, 16.174236, 9.939912>,  <19.134693, 15.725962, 10.186591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.649630, 16.174236, 9.939912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.012733, 16.337875, 9.902782>,  <19.230595, 16.436058, 9.880505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.012733, 16.337875, 9.902782>,  <18.649630, 16.174236, 9.939912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.012733, 16.337875, 9.902782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235029, 0.312697, -0.920316,
		-0.347472, 0.857240, 0.380003,
		0.907758, 0.409096, -0.092823,
		19.285061, 16.460604, 9.874936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.603537, 16.894373, 9.657683>,  <18.649630, 16.174236, 9.939912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.603537, 16.894373, 9.657683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.980103, 16.791267, 9.570691>,  <19.206041, 16.729404, 9.518496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.980103, 16.791267, 9.570691>,  <18.603537, 16.894373, 9.657683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.980103, 16.791267, 9.570691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094746, 0.416749, -0.904070,
		0.323673, 0.871709, 0.367911,
		0.941413, -0.257765, -0.217481,
		19.262527, 16.713938, 9.505446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.849037, 16.802452, 9.481502>,  <18.603537, 16.894373, 9.657683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.849037, 16.802452, 9.481502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.617809, 16.512978, 9.330709>,  <17.479073, 16.339293, 9.240234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.617809, 16.512978, 9.330709>,  <17.849037, 16.802452, 9.481502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.617809, 16.512978, 9.330709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207129, -0.316724, 0.925626,
		-0.789261, 0.613160, 0.033192,
		-0.578069, -0.723686, -0.376981,
		17.444389, 16.295872, 9.217615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.352274, 16.606682, 9.944897>,  <17.849037, 16.802452, 9.481502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.352274, 16.606682, 9.944897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.355900, 16.262146, 9.741718>,  <17.358074, 16.055424, 9.619811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.355900, 16.262146, 9.741718>,  <17.352274, 16.606682, 9.944897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.355900, 16.262146, 9.741718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359249, -0.476858, 0.802213,
		-0.933198, 0.175209, -0.313758,
		0.009063, -0.861341, -0.507947,
		17.358618, 16.003744, 9.589334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.725574, 16.304565, 10.112907>,  <17.352274, 16.606682, 9.944897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.725574, 16.304565, 10.112907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.941879, 15.997334, 9.975718>,  <17.071661, 15.812994, 9.893405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.941879, 15.997334, 9.975718>,  <16.725574, 16.304565, 10.112907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.941879, 15.997334, 9.975718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315707, -0.563243, 0.763601,
		-0.779685, -0.304645, -0.547068,
		0.540759, -0.768081, -0.342974,
		17.104107, 15.766910, 9.872827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.310148, 15.708549, 10.230336>,  <16.725574, 16.304565, 10.112907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.310148, 15.708549, 10.230336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.671696, 15.554497, 10.155834>,  <16.888624, 15.462065, 10.111134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.671696, 15.554497, 10.155834>,  <16.310148, 15.708549, 10.230336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.671696, 15.554497, 10.155834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064902, -0.553781, 0.830129,
		-0.422853, -0.738242, -0.525543,
		0.903871, -0.385131, -0.186254,
		16.942858, 15.438957, 10.099957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.242847, 14.983044, 10.226495>,  <16.310148, 15.708549, 10.230336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.242847, 14.983044, 10.226495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.633411, 15.046482, 10.285106>,  <16.867750, 15.084545, 10.320272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.633411, 15.046482, 10.285106>,  <16.242847, 14.983044, 10.226495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.633411, 15.046482, 10.285106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014865, -0.627625, 0.778374,
		0.215413, -0.762190, -0.610461,
		0.976410, 0.158597, 0.146528,
		16.926334, 15.094061, 10.329064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.622719, 14.427563, 10.325739>,  <16.242847, 14.983044, 10.226495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.622719, 14.427563, 10.325739> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.882427, 14.679214, 10.496686>,  <17.038252, 14.830206, 10.599255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.882427, 14.679214, 10.496686>,  <16.622719, 14.427563, 10.325739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.882427, 14.679214, 10.496686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033293, -0.584885, 0.810432,
		0.759829, -0.511961, -0.400694,
		0.649270, 0.629130, 0.427368,
		17.077208, 14.867953, 10.624896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.018801, 13.935658, 10.796613>,  <16.622719, 14.427563, 10.325739>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.018801, 13.935658, 10.796613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.115505, 14.309650, 10.900429>,  <17.173527, 14.534046, 10.962719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.115505, 14.309650, 10.900429>,  <17.018801, 13.935658, 10.796613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.115505, 14.309650, 10.900429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149236, -0.300121, 0.942155,
		0.958792, -0.189041, -0.212090,
		0.241759, 0.934982, 0.259541,
		17.188032, 14.590145, 10.978292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.788160, 13.947904, 11.127146>,  <17.018801, 13.935658, 10.796613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.788160, 13.947904, 11.127146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.572445, 14.256088, 11.263122>,  <17.443016, 14.440999, 11.344707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.572445, 14.256088, 11.263122>,  <17.788160, 13.947904, 11.127146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.572445, 14.256088, 11.263122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330607, -0.177561, 0.926915,
		0.774512, 0.612260, -0.158963,
		-0.539287, 0.770461, 0.339940,
		17.410658, 14.487226, 11.365104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.237171, 14.346525, 11.509078>,  <17.788160, 13.947904, 11.127146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.237171, 14.346525, 11.509078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.879284, 14.471668, 11.636576>,  <17.664551, 14.546754, 11.713075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.879284, 14.471668, 11.636576>,  <18.237171, 14.346525, 11.509078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.879284, 14.471668, 11.636576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356636, 0.070834, 0.931554,
		0.268866, 0.947155, -0.174953,
		-0.894719, 0.312858, 0.318744,
		17.610868, 14.565526, 11.732199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.331650, 14.696754, 12.070782>,  <18.237171, 14.346525, 11.509078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.331650, 14.696754, 12.070782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.940460, 14.651466, 12.140928>,  <17.705748, 14.624294, 12.183016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.940460, 14.651466, 12.140928>,  <18.331650, 14.696754, 12.070782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.940460, 14.651466, 12.140928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171282, 0.044919, 0.984197,
		-0.119305, 0.992554, -0.024538,
		-0.977972, -0.113217, 0.175366,
		17.647068, 14.617501, 12.193538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.247524, 15.136191, 12.548251>,  <18.331650, 14.696754, 12.070782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.247524, 15.136191, 12.548251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.944405, 14.880817, 12.602124>,  <17.762533, 14.727592, 12.634448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.944405, 14.880817, 12.602124>,  <18.247524, 15.136191, 12.548251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.944405, 14.880817, 12.602124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163033, 0.014600, 0.986513,
		-0.631791, 0.769537, 0.093022,
		-0.757800, -0.638435, 0.134684,
		17.717064, 14.689287, 12.642529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.828325, 15.453595, 13.027394>,  <18.247524, 15.136191, 12.548251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.828325, 15.453595, 13.027394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.726933, 15.067375, 13.050920>,  <17.666098, 14.835643, 13.065037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.726933, 15.067375, 13.050920>,  <17.828325, 15.453595, 13.027394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.726933, 15.067375, 13.050920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055133, 0.046283, 0.997406,
		-0.965768, 0.256068, 0.041502,
		-0.253482, -0.965550, 0.058816,
		17.650888, 14.777710, 13.068565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.281498, 15.388832, 13.423381>,  <17.828325, 15.453595, 13.027394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.281498, 15.388832, 13.423381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.452038, 15.027428, 13.440797>,  <17.554361, 14.810585, 13.451246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.452038, 15.027428, 13.440797>,  <17.281498, 15.388832, 13.423381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.452038, 15.027428, 13.440797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086822, 0.007036, 0.996199,
		-0.900383, -0.428508, -0.075444,
		0.426348, -0.903511, 0.043539,
		17.579943, 14.756374, 13.453858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.980873, 15.024651, 13.978168>,  <17.281498, 15.388832, 13.423381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.980873, 15.024651, 13.978168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.317909, 14.818871, 13.914445>,  <17.520132, 14.695402, 13.876211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.317909, 14.818871, 13.914445>,  <16.980873, 15.024651, 13.978168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.317909, 14.818871, 13.914445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135325, -0.084071, 0.987228,
		-0.521273, -0.853389, -0.001219,
		0.842592, -0.514450, -0.159309,
		17.570686, 14.664536, 13.866652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.869190, 14.429513, 14.375693>,  <16.980873, 15.024651, 13.978168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.869190, 14.429513, 14.375693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.262966, 14.477314, 14.324164>,  <17.499231, 14.505995, 14.293247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.262966, 14.477314, 14.324164>,  <16.869190, 14.429513, 14.375693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.262966, 14.477314, 14.324164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142656, -0.115498, 0.983010,
		0.102594, -0.986093, -0.130749,
		0.984441, 0.119503, -0.128823,
		17.558298, 14.513165, 14.285518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.090908, 13.994473, 14.758435>,  <16.869190, 14.429513, 14.375693>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.090908, 13.994473, 14.758435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.414612, 14.225796, 14.717130>,  <17.608833, 14.364589, 14.692347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.414612, 14.225796, 14.717130>,  <17.090908, 13.994473, 14.758435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.414612, 14.225796, 14.717130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229491, -0.149402, 0.961776,
		0.540772, -0.802024, -0.253621,
		0.809258, 0.578305, -0.103265,
		17.657389, 14.399287, 14.686151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.568546, 13.663835, 15.123727>,  <17.090908, 13.994473, 14.758435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.568546, 13.663835, 15.123727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.721237, 14.031151, 15.081723>,  <17.812851, 14.251541, 15.056521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.721237, 14.031151, 15.081723>,  <17.568546, 13.663835, 15.123727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.721237, 14.031151, 15.081723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437321, -0.079354, 0.895798,
		0.814270, -0.387872, -0.431879,
		0.381726, 0.918291, -0.105009,
		17.835754, 14.306638, 15.050220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.284187, 13.659389, 15.274440>,  <17.568546, 13.663835, 15.123727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.284187, 13.659389, 15.274440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.143147, 14.027958, 15.339742>,  <18.058523, 14.249100, 15.378922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.143147, 14.027958, 15.339742>,  <18.284187, 13.659389, 15.274440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.143147, 14.027958, 15.339742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460689, 0.019073, 0.887357,
		0.814517, 0.388092, -0.431214,
		-0.352601, 0.921423, 0.163254,
		18.037367, 14.304385, 15.388718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<18.806704, 14.073801, 15.866311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.460995, 14.274967, 15.862142>,  <18.253569, 14.395667, 15.859640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.460995, 14.274967, 15.862142>,  <18.806704, 14.073801, 15.866311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.460995, 14.274967, 15.862142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143489, 0.266346, 0.953137,
		0.482124, 0.822275, -0.302359,
		-0.864273, 0.502915, -0.010424,
		18.201714, 14.425841, 15.859015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.004034, 14.564696, 16.281466>,  <18.806704, 14.073801, 15.866311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.004034, 14.564696, 16.281466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.604298, 14.579212, 16.280895>,  <18.364456, 14.587922, 16.280554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.604298, 14.579212, 16.280895>,  <19.004034, 14.564696, 16.281466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.604298, 14.579212, 16.280895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001853, 0.090138, 0.995928,
		0.036271, 0.995268, -0.090146,
		-0.999340, 0.036290, -0.001425,
		18.304495, 14.590099, 16.280468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.842621, 15.014018, 16.765160>,  <19.004034, 14.564696, 16.281466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.842621, 15.014018, 16.765160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.494007, 14.821854, 16.725899>,  <18.284840, 14.706555, 16.702343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.494007, 14.821854, 16.725899>,  <18.842621, 15.014018, 16.765160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.494007, 14.821854, 16.725899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091399, -0.037498, 0.995108,
		-0.481741, 0.876242, -0.011228,
		-0.871534, -0.480411, -0.098152,
		18.232548, 14.677731, 16.696453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.241247, 15.478019, 17.049673>,  <18.842621, 15.014018, 16.765160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.241247, 15.478019, 17.049673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.170517, 15.084469, 17.060452>,  <18.128078, 14.848339, 17.066919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.170517, 15.084469, 17.060452>,  <18.241247, 15.478019, 17.049673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.170517, 15.084469, 17.060452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060585, 0.016445, 0.998028,
		-0.982376, 0.178107, 0.056700,
		-0.176824, -0.983874, 0.026946,
		18.117470, 14.789307, 17.068535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.879622, 15.452623, 17.688463>,  <18.241247, 15.478019, 17.049673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.879622, 15.452623, 17.688463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.992588, 15.079567, 17.598644>,  <18.060368, 14.855733, 17.544754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.992588, 15.079567, 17.598644>,  <17.879622, 15.452623, 17.688463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.992588, 15.079567, 17.598644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167997, -0.182373, 0.968771,
		-0.944467, -0.311319, 0.105177,
		0.282415, -0.932642, -0.224546,
		18.077312, 14.799774, 17.531281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.500963, 15.051155, 18.190311>,  <17.879622, 15.452623, 17.688463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.500963, 15.051155, 18.190311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.801083, 14.827583, 18.049091>,  <17.981155, 14.693440, 17.964359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.801083, 14.827583, 18.049091>,  <17.500963, 15.051155, 18.190311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.801083, 14.827583, 18.049091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197124, -0.320599, 0.926477,
		-0.631024, -0.764731, -0.130367,
		0.750300, -0.558931, -0.353052,
		18.026173, 14.659904, 17.943176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.273666, 14.334156, 18.370714>,  <17.500963, 15.051155, 18.190311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.273666, 14.334156, 18.370714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.670303, 14.322533, 18.320276>,  <17.908285, 14.315558, 18.290014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.670303, 14.322533, 18.320276>,  <17.273666, 14.334156, 18.370714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.670303, 14.322533, 18.320276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100731, -0.438322, 0.893156,
		-0.081223, -0.898348, -0.431710,
		0.991593, -0.029058, -0.126094,
		17.967781, 14.313815, 18.282448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.488752, 13.676440, 18.489113>,  <17.273666, 14.334156, 18.370714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.488752, 13.676440, 18.489113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.805191, 13.913738, 18.548748>,  <17.995054, 14.056117, 18.584530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.805191, 13.913738, 18.548748>,  <17.488752, 13.676440, 18.489113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.805191, 13.913738, 18.548748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211391, -0.493859, 0.843456,
		0.574004, -0.635739, -0.516096,
		0.791097, 0.593245, 0.149087,
		18.042521, 14.091712, 18.593473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.055662, 13.231964, 18.786804>,  <17.488752, 13.676440, 18.489113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.055662, 13.231964, 18.786804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.195137, 13.596809, 18.873030>,  <18.278822, 13.815717, 18.924765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.195137, 13.596809, 18.873030>,  <18.055662, 13.231964, 18.786804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.195137, 13.596809, 18.873030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103024, -0.265906, 0.958478,
		0.931559, -0.312002, -0.186688,
		0.348689, 0.912112, 0.215564,
		18.299744, 13.870443, 18.937698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.594879, 13.152317, 19.329391>,  <18.055662, 13.231964, 18.786804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.594879, 13.152317, 19.329391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.509438, 13.540634, 19.373093>,  <18.458174, 13.773624, 19.399313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.509438, 13.540634, 19.373093>,  <18.594879, 13.152317, 19.329391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.509438, 13.540634, 19.373093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083153, -0.093363, 0.992154,
		0.973375, 0.221011, -0.060782,
		-0.213602, 0.970792, 0.109255,
		18.445356, 13.831872, 19.405869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.056425, 13.384355, 19.830055>,  <18.594879, 13.152317, 19.329391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.056425, 13.384355, 19.830055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.794754, 13.686356, 19.848042>,  <18.637751, 13.867557, 19.858833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.794754, 13.686356, 19.848042>,  <19.056425, 13.384355, 19.830055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.794754, 13.686356, 19.848042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071908, 0.002905, 0.997407,
		0.752915, 0.655715, -0.056191,
		-0.654178, 0.755003, 0.044964,
		18.598501, 13.912857, 19.861530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.324915, 13.898140, 20.356131>,  <19.056425, 13.384355, 19.830055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.324915, 13.898140, 20.356131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.937569, 13.989727, 20.316441>,  <18.705162, 14.044680, 20.292627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.937569, 13.989727, 20.316441>,  <19.324915, 13.898140, 20.356131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.937569, 13.989727, 20.316441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050398, 0.209988, 0.976404,
		0.244401, 0.950515, -0.191805,
		-0.968364, 0.228968, -0.099226,
		18.647060, 14.058417, 20.286673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.125668, 14.577948, 20.718288>,  <19.324915, 13.898140, 20.356131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.125668, 14.577948, 20.718288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.778591, 14.382343, 20.682558>,  <18.570345, 14.264980, 20.661119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.778591, 14.382343, 20.682558>,  <19.125668, 14.577948, 20.718288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.778591, 14.382343, 20.682558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127623, 0.045470, 0.990780,
		-0.480441, 0.871092, -0.101863,
		-0.867692, -0.489011, -0.089326,
		18.518284, 14.235640, 20.655760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.731472, 14.975873, 21.087368>,  <19.125668, 14.577948, 20.718288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.731472, 14.975873, 21.087368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.529274, 14.631416, 21.065786>,  <18.407955, 14.424743, 21.052837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.529274, 14.631416, 21.065786>,  <18.731472, 14.975873, 21.087368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.529274, 14.631416, 21.065786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384727, 0.168982, 0.907431,
		-0.772309, 0.479459, -0.416724,
		-0.505494, -0.861141, -0.053955,
		18.377626, 14.373074, 21.049601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.108360, 15.195110, 21.349161>,  <18.731472, 14.975873, 21.087368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.108360, 15.195110, 21.349161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.106403, 14.796429, 21.381556>,  <18.105230, 14.557220, 21.400991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.106403, 14.796429, 21.381556>,  <18.108360, 15.195110, 21.349161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.106403, 14.796429, 21.381556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233328, 0.079887, 0.969111,
		-0.972386, -0.014157, -0.232949,
		-0.004890, -0.996704, 0.080984,
		18.104937, 14.497417, 21.405851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.557480, 15.012365, 21.712183>,  <18.108360, 15.195110, 21.349161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.557480, 15.012365, 21.712183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.742725, 14.659565, 21.747051>,  <17.853872, 14.447885, 21.767973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.742725, 14.659565, 21.747051>,  <17.557480, 15.012365, 21.712183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.742725, 14.659565, 21.747051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138035, 0.025377, 0.990102,
		-0.875484, -0.470562, -0.109994,
		0.463113, -0.882002, 0.087172,
		17.881659, 14.394964, 21.773203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.110994, 14.545360, 22.017654>,  <17.557480, 15.012365, 21.712183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.110994, 14.545360, 22.017654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.466030, 14.373093, 22.083029>,  <17.679052, 14.269732, 22.122253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.466030, 14.373093, 22.083029>,  <17.110994, 14.545360, 22.017654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.466030, 14.373093, 22.083029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169190, 0.025208, 0.985261,
		-0.428440, -0.902159, -0.050490,
		0.887589, -0.430667, 0.163436,
		17.732307, 14.243893, 22.132059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.899948, 14.105871, 22.469707>,  <17.110994, 14.545360, 22.017654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.899948, 14.105871, 22.469707> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.294312, 14.152111, 22.518080>,  <17.530930, 14.179855, 22.547104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.294312, 14.152111, 22.518080>,  <16.899948, 14.105871, 22.469707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.294312, 14.152111, 22.518080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115086, -0.055990, 0.991776,
		0.121422, -0.991717, -0.041897,
		0.985907, 0.115601, 0.120931,
		17.590084, 14.186791, 22.554359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.127443, 13.594803, 22.968996>,  <16.899948, 14.105871, 22.469707>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.127443, 13.594803, 22.968996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.435127, 13.850334, 22.974892>,  <17.619738, 14.003654, 22.978430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.435127, 13.850334, 22.974892>,  <17.127443, 13.594803, 22.968996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.435127, 13.850334, 22.974892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048686, 0.035590, 0.998180,
		0.637142, -0.768525, 0.058478,
		0.769208, 0.638829, 0.014741,
		17.665890, 14.041983, 22.979315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.500694, 13.362469, 23.459610>,  <17.127443, 13.594803, 22.968996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.500694, 13.362469, 23.459610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.611664, 13.744694, 23.419735>,  <17.678246, 13.974029, 23.395809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.611664, 13.744694, 23.419735>,  <17.500694, 13.362469, 23.459610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.611664, 13.744694, 23.419735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031536, 0.094649, 0.995011,
		0.960231, -0.279181, -0.003877,
		0.277421, 0.955562, -0.099690,
		17.694891, 14.031363, 23.389828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.973021, 13.449543, 23.938002>,  <17.500694, 13.362469, 23.459610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.973021, 13.449543, 23.938002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.892841, 13.835808, 23.871891>,  <17.844734, 14.067567, 23.832224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.892841, 13.835808, 23.871891>,  <17.973021, 13.449543, 23.938002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.892841, 13.835808, 23.871891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032808, 0.161990, 0.986247,
		0.979154, 0.203116, -0.000790,
		-0.200450, 0.965662, -0.165277,
		17.832706, 14.125506, 23.822308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.444893, 13.882377, 24.363495>,  <17.973021, 13.449543, 23.938002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.444893, 13.882377, 24.363495> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.139153, 14.134590, 24.309542>,  <17.955708, 14.285918, 24.277170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.139153, 14.134590, 24.309542>,  <18.444893, 13.882377, 24.363495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.139153, 14.134590, 24.309542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029890, 0.174313, 0.984237,
		0.644107, 0.756334, -0.114390,
		-0.764351, 0.630534, -0.134883,
		17.909847, 14.323750, 24.269077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.658266, 14.484673, 24.679379>,  <18.444893, 13.882377, 24.363495>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.658266, 14.484673, 24.679379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.261452, 14.437557, 24.661531>,  <18.023363, 14.409288, 24.650824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.261452, 14.437557, 24.661531>,  <18.658266, 14.484673, 24.679379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.261452, 14.437557, 24.661531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052215, 0.062201, 0.996697,
		-0.114624, 0.991089, -0.067856,
		-0.992036, -0.117789, -0.044620,
		17.963840, 14.402221, 24.648146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.402687, 15.020841, 25.064987>,  <18.658266, 14.484673, 24.679379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.402687, 15.020841, 25.064987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.117474, 14.740967, 25.082975>,  <17.946344, 14.573043, 25.093769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.117474, 14.740967, 25.082975>,  <18.402687, 15.020841, 25.064987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.117474, 14.740967, 25.082975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041410, 0.106057, 0.993497,
		-0.699904, 0.706537, -0.104596,
		-0.713035, -0.699684, 0.044972,
		17.903563, 14.531061, 25.096466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.789505, 15.597266, 25.349165>,  <18.402687, 15.020841, 25.064987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.789505, 15.597266, 25.349165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.181267, 15.595779, 25.429913>,  <19.416325, 15.594888, 25.478361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.181267, 15.595779, 25.429913>,  <18.789505, 15.597266, 25.349165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.181267, 15.595779, 25.429913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200408, 0.139330, -0.969754,
		-0.024522, 0.990239, 0.137205,
		0.979405, -0.003716, 0.201869,
		19.475088, 15.594665, 25.490473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.993330, 15.990256, 24.792652>,  <18.789505, 15.597266, 25.349165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.993330, 15.990256, 24.792652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.316193, 15.828014, 24.964224>,  <19.509911, 15.730669, 25.067167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.316193, 15.828014, 24.964224>,  <18.993330, 15.990256, 24.792652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.316193, 15.828014, 24.964224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489202, 0.052884, -0.870566,
		0.330421, 0.912518, 0.241108,
		0.807157, -0.405604, 0.428932,
		19.558340, 15.706333, 25.092903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.473694, 16.385939, 24.705996>,  <18.993330, 15.990256, 24.792652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.473694, 16.385939, 24.705996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.647167, 16.031071, 24.769045>,  <19.751251, 15.818150, 24.806875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.647167, 16.031071, 24.769045>,  <19.473694, 16.385939, 24.705996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.647167, 16.031071, 24.769045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453958, 0.064011, -0.888721,
		0.778358, 0.456978, 0.430499,
		0.433682, -0.887172, 0.157625,
		19.777271, 15.764919, 24.816332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.215563, 16.413897, 24.449709>,  <19.473694, 16.385939, 24.705996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.215563, 16.413897, 24.449709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.120010, 16.025787, 24.465221>,  <20.062679, 15.792922, 24.474529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.120010, 16.025787, 24.465221>,  <20.215563, 16.413897, 24.449709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.120010, 16.025787, 24.465221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445774, -0.145057, -0.883314,
		0.862683, -0.193719, 0.467174,
		-0.238882, -0.970274, 0.038783,
		20.048346, 15.734705, 24.476856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.806257, 16.117825, 24.305740>,  <20.215563, 16.413897, 24.449709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.806257, 16.117825, 24.305740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.525661, 15.843552, 24.228024>,  <20.357304, 15.678988, 24.181393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.525661, 15.843552, 24.228024>,  <20.806257, 16.117825, 24.305740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.525661, 15.843552, 24.228024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437148, -0.198673, -0.877172,
		0.562860, -0.700264, 0.439112,
		-0.701492, -0.685682, -0.194293,
		20.315214, 15.637847, 24.169735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.115601, 15.517448, 24.099615>,  <20.806257, 16.117825, 24.305740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.115601, 15.517448, 24.099615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.744843, 15.489384, 23.952133>,  <20.522388, 15.472545, 23.863644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.744843, 15.489384, 23.952133>,  <21.115601, 15.517448, 24.099615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.744843, 15.489384, 23.952133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370184, -0.332899, -0.867261,
		-0.061892, -0.940349, 0.334535,
		-0.926894, -0.070162, -0.368706,
		20.466774, 15.468335, 23.841522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.131081, 14.973279, 23.563959>,  <21.115601, 15.517448, 24.099615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.131081, 14.973279, 23.563959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.804893, 15.186447, 23.473623>,  <20.609180, 15.314348, 23.419422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.804893, 15.186447, 23.473623>,  <21.131081, 14.973279, 23.563959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.804893, 15.186447, 23.473623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171408, -0.150333, -0.973663,
		-0.552837, -0.832704, 0.031246,
		-0.815470, 0.532920, -0.225842,
		20.560253, 15.346323, 23.405870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.927135, 14.574828, 23.070711>,  <21.131081, 14.973279, 23.563959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.927135, 14.574828, 23.070711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.731701, 14.915779, 22.996161>,  <20.614441, 15.120350, 22.951429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.731701, 14.915779, 22.996161>,  <20.927135, 14.574828, 23.070711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.731701, 14.915779, 22.996161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021361, -0.201861, -0.979181,
		-0.872254, -0.482395, 0.080419,
		-0.488586, 0.852377, -0.186379,
		20.585125, 15.171493, 22.940247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.446970, 14.334366, 22.679899>,  <20.927135, 14.574828, 23.070711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.446970, 14.334366, 22.679899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.489708, 14.725788, 22.609459>,  <20.515350, 14.960642, 22.567196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.489708, 14.725788, 22.609459>,  <20.446970, 14.334366, 22.679899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.489708, 14.725788, 22.609459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051076, -0.171478, -0.983863,
		-0.992963, 0.114117, 0.031659,
		0.106847, 0.978556, -0.176100,
		20.521763, 15.019355, 22.556629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.952286, 14.430168, 22.075806>,  <20.446970, 14.334366, 22.679899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.952286, 14.430168, 22.075806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.177639, 14.760635, 22.078627>,  <20.312851, 14.958916, 22.080320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.177639, 14.760635, 22.078627>,  <19.952286, 14.430168, 22.075806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.177639, 14.760635, 22.078627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177999, 0.129711, -0.975444,
		-0.806795, 0.548291, 0.220134,
		0.563381, 0.826167, 0.007054,
		20.346653, 15.008486, 22.080744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.607571, 14.711885, 21.631855>,  <19.952286, 14.430168, 22.075806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.607571, 14.711885, 21.631855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.960880, 14.899002, 21.644472>,  <20.172867, 15.011271, 21.652042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.960880, 14.899002, 21.644472>,  <19.607571, 14.711885, 21.631855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.960880, 14.899002, 21.644472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119794, 0.290215, -0.949434,
		-0.453290, 0.834834, 0.312379,
		0.883276, 0.467790, 0.031543,
		20.225863, 15.039339, 21.653934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.431818, 15.381009, 21.451244>,  <19.607571, 14.711885, 21.631855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.431818, 15.381009, 21.451244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.815720, 15.289337, 21.386318>,  <20.046061, 15.234334, 21.347363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.815720, 15.289337, 21.386318>,  <19.431818, 15.381009, 21.451244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.815720, 15.289337, 21.386318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087689, 0.304515, -0.948463,
		0.266795, 0.924526, 0.272163,
		0.959756, -0.229179, -0.162314,
		20.103647, 15.220583, 21.337624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.819057, 15.952475, 21.056173>,  <19.431818, 15.381009, 21.451244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.819057, 15.952475, 21.056173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.021049, 15.613834, 20.988932>,  <20.142244, 15.410650, 20.948586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.021049, 15.613834, 20.988932>,  <19.819057, 15.952475, 21.056173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.021049, 15.613834, 20.988932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057259, 0.227193, -0.972165,
		0.861229, 0.481300, 0.163204,
		0.504982, -0.846601, -0.168106,
		20.172544, 15.359854, 20.938499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.332823, 16.168280, 20.544436>,  <19.819057, 15.952475, 21.056173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.332823, 16.168280, 20.544436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.338242, 15.769287, 20.516594>,  <20.341494, 15.529891, 20.499889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.338242, 15.769287, 20.516594>,  <20.332823, 16.168280, 20.544436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.338242, 15.769287, 20.516594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128804, 0.070771, -0.989141,
		0.991578, 0.004436, 0.129438,
		0.013548, -0.997483, -0.069603,
		20.342306, 15.470042, 20.495712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.834053, 16.087704, 20.089718>,  <20.332823, 16.168280, 20.544436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.834053, 16.087704, 20.089718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.659992, 15.727562, 20.090467>,  <20.555555, 15.511477, 20.090918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.659992, 15.727562, 20.090467>,  <20.834053, 16.087704, 20.089718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.659992, 15.727562, 20.090467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241211, -0.118586, -0.963200,
		0.867446, -0.418684, 0.268779,
		-0.435150, -0.900356, 0.001876,
		20.529448, 15.457456, 20.091030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.313915, 15.682106, 19.769522>,  <20.834053, 16.087704, 20.089718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.313915, 15.682106, 19.769522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.965946, 15.485886, 19.749140>,  <20.757166, 15.368154, 19.736910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.965946, 15.485886, 19.749140>,  <21.313915, 15.682106, 19.769522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.965946, 15.485886, 19.749140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134814, -0.137139, -0.981335,
		0.474407, -0.860554, 0.185433,
		-0.869922, -0.490551, -0.050955,
		20.704969, 15.338720, 19.733852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.483837, 15.243307, 19.358055>,  <21.313915, 15.682106, 19.769522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.483837, 15.243307, 19.358055> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.086658, 15.211216, 19.323135>,  <20.848351, 15.191961, 19.302183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.086658, 15.211216, 19.323135>,  <21.483837, 15.243307, 19.358055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.086658, 15.211216, 19.323135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104676, -0.247404, -0.963242,
		0.055682, -0.965585, 0.254057,
		-0.992946, -0.080229, -0.087297,
		20.788774, 15.187147, 19.296946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.349026, 14.653124, 18.884056>,  <21.483837, 15.243307, 19.358055>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.349026, 14.653124, 18.884056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.020229, 14.880077, 18.864422>,  <20.822952, 15.016250, 18.852642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.020229, 14.880077, 18.864422>,  <21.349026, 14.653124, 18.884056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.020229, 14.880077, 18.864422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011196, -0.102271, -0.994693,
		-0.569394, -0.817077, 0.090418,
		-0.821989, 0.567384, -0.049085,
		20.773632, 15.050293, 18.849697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.921127, 14.332920, 18.407116>,  <21.349026, 14.653124, 18.884056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.921127, 14.332920, 18.407116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.791225, 14.710533, 18.430225>,  <20.713284, 14.937100, 18.444092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.791225, 14.710533, 18.430225>,  <20.921127, 14.332920, 18.407116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.791225, 14.710533, 18.430225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130902, 0.015633, -0.991272,
		-0.936696, -0.329483, 0.118499,
		-0.324755, 0.944032, 0.057774,
		20.693798, 14.993743, 18.447557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.252958, 14.312824, 18.140375>,  <20.921127, 14.332920, 18.407116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.252958, 14.312824, 18.140375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.414959, 14.674046, 18.083149>,  <20.512159, 14.890779, 18.048813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.414959, 14.674046, 18.083149>,  <20.252958, 14.312824, 18.140375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.414959, 14.674046, 18.083149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123117, -0.101181, -0.987221,
		-0.905989, 0.417439, 0.070203,
		0.405001, 0.903054, -0.143063,
		20.536459, 14.944962, 18.040230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<17.265148, 13.538941, 13.147110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.384594, 13.918823, 13.109394>,  <17.456261, 14.146752, 13.086764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.384594, 13.918823, 13.109394>,  <17.265148, 13.538941, 13.147110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.384594, 13.918823, 13.109394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435138, 0.047554, -0.899107,
		-0.849403, 0.309514, 0.427453,
		0.298613, 0.949705, -0.094289,
		17.474178, 14.203734, 13.081107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.747911, 13.833138, 12.843488>,  <17.265148, 13.538941, 13.147110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.747911, 13.833138, 12.843488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.050396, 14.085758, 12.775025>,  <17.231886, 14.237329, 12.733948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.050396, 14.085758, 12.775025>,  <16.747911, 13.833138, 12.843488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.050396, 14.085758, 12.775025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363512, 0.187991, -0.912424,
		-0.544064, 0.752201, 0.371736,
		0.756209, 0.631548, -0.171155,
		17.277258, 14.275223, 12.723679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.430597, 14.363984, 12.485536>,  <16.747911, 13.833138, 12.843488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.430597, 14.363984, 12.485536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.809849, 14.436230, 12.380901>,  <17.037399, 14.479577, 12.318121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.809849, 14.436230, 12.380901>,  <16.430597, 14.363984, 12.485536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.809849, 14.436230, 12.380901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300168, 0.237831, -0.923762,
		-0.104631, 0.954366, 0.279709,
		0.948131, 0.180614, -0.261586,
		17.094288, 14.490414, 12.302425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.391813, 15.006008, 12.054559>,  <16.430597, 14.363984, 12.485536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.391813, 15.006008, 12.054559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.766636, 14.892902, 11.972616>,  <16.991529, 14.825039, 11.923450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.766636, 14.892902, 11.972616>,  <16.391813, 15.006008, 12.054559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.766636, 14.892902, 11.972616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104300, 0.333232, -0.937058,
		0.333232, 0.899444, 0.282765,
		0.937058, -0.282765, -0.204855,
		17.047752, 14.808073, 11.911160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.740877, 15.594598, 11.681972>,  <16.391813, 15.006008, 12.054559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.740877, 15.594598, 11.681972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.921474, 15.248215, 11.595928>,  <17.029833, 15.040384, 11.544302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.921474, 15.248215, 11.595928>,  <16.740877, 15.594598, 11.681972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.921474, 15.248215, 11.595928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061505, 0.270708, -0.960695,
		0.890153, 0.420516, 0.175483,
		0.451492, -0.865958, -0.215107,
		17.056923, 14.988427, 11.531396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.456850, 15.726102, 11.541101>,  <16.740877, 15.594598, 11.681972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.456850, 15.726102, 11.541101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.355316, 15.384598, 11.359262>,  <17.294395, 15.179695, 11.250157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.355316, 15.384598, 11.359262>,  <17.456850, 15.726102, 11.541101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.355316, 15.384598, 11.359262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220230, 0.406634, -0.886649,
		0.941842, -0.325178, 0.084806,
		-0.253834, -0.853761, -0.454600,
		17.279165, 15.128469, 11.222881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.968884, 15.609330, 11.143085>,  <17.456850, 15.726102, 11.541101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.968884, 15.609330, 11.143085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.671188, 15.390652, 10.989599>,  <17.492571, 15.259444, 10.897509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.671188, 15.390652, 10.989599>,  <17.968884, 15.609330, 11.143085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.671188, 15.390652, 10.989599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080764, 0.496617, -0.864204,
		0.663015, -0.674162, -0.325447,
		-0.744237, -0.546696, -0.383713,
		17.447918, 15.226643, 10.874485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.223269, 15.352156, 10.462257>,  <17.968884, 15.609330, 11.143085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.223269, 15.352156, 10.462257> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.830177, 15.282837, 10.436279>,  <17.594322, 15.241245, 10.420692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.830177, 15.282837, 10.436279>,  <18.223269, 15.352156, 10.462257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.830177, 15.282837, 10.436279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010873, 0.296255, -0.955047,
		0.184745, -0.939256, -0.289253,
		-0.982726, -0.173295, -0.064944,
		17.535360, 15.230847, 10.416796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.152493, 14.913308, 9.857106>,  <18.223269, 15.352156, 10.462257>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.152493, 14.913308, 9.857106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.805664, 15.095585, 9.937638>,  <17.597567, 15.204950, 9.985958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.805664, 15.095585, 9.937638>,  <18.152493, 14.913308, 9.857106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.805664, 15.095585, 9.937638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034491, 0.348249, -0.936767,
		-0.496990, -0.819187, -0.286239,
		-0.867070, 0.455691, 0.201331,
		17.545544, 15.232292, 9.998037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.689180, 14.787279, 9.257114>,  <18.152493, 14.913308, 9.857106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.689180, 14.787279, 9.257114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.536400, 15.103741, 9.448192>,  <17.444733, 15.293617, 9.562839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.536400, 15.103741, 9.448192>,  <17.689180, 14.787279, 9.257114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.536400, 15.103741, 9.448192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183263, 0.441780, -0.878206,
		-0.905831, -0.422974, -0.023748,
		-0.381949, 0.791153, 0.477694,
		17.421816, 15.341086, 9.591499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.138527, 14.935721, 8.860758>,  <17.689180, 14.787279, 9.257114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.138527, 14.935721, 8.860758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.197662, 15.260365, 9.086832>,  <17.233143, 15.455151, 9.222477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.197662, 15.260365, 9.086832>,  <17.138527, 14.935721, 8.860758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.197662, 15.260365, 9.086832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337231, 0.578586, -0.742640,
		-0.929742, -0.080809, 0.359235,
		0.147836, 0.811609, 0.565187,
		17.242014, 15.503847, 9.256388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.599575, 15.338781, 8.795032>,  <17.138527, 14.935721, 8.860758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.599575, 15.338781, 8.795032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.866306, 15.611088, 8.916291>,  <17.026344, 15.774471, 8.989047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.866306, 15.611088, 8.916291>,  <16.599575, 15.338781, 8.795032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.866306, 15.611088, 8.916291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243597, 0.583573, -0.774663,
		-0.704273, 0.442721, 0.554975,
		0.666828, 0.680765, 0.303149,
		17.066355, 15.815317, 9.007236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.309885, 16.089025, 8.926407>,  <16.599575, 15.338781, 8.795032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.309885, 16.089025, 8.926407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.679245, 16.037544, 8.781759>,  <16.900862, 16.006657, 8.694971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.679245, 16.037544, 8.781759>,  <16.309885, 16.089025, 8.926407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.679245, 16.037544, 8.781759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217794, 0.600088, -0.769714,
		0.316067, 0.789513, 0.526091,
		0.923400, -0.128702, -0.361619,
		16.956264, 15.998934, 8.673274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.349955, 16.662058, 8.477308>,  <16.309885, 16.089025, 8.926407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.349955, 16.662058, 8.477308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.659462, 16.439362, 8.356428>,  <16.845165, 16.305744, 8.283900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.659462, 16.439362, 8.356428>,  <16.349955, 16.662058, 8.477308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.659462, 16.439362, 8.356428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043602, 0.522733, -0.851381,
		0.631968, 0.645594, 0.428749,
		0.773767, -0.556739, -0.302201,
		16.891592, 16.272339, 8.265768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.846746, 16.656731, 8.864867>,  <16.349955, 16.662058, 8.477308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.846746, 16.656731, 8.864867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.546340, 16.915997, 8.814495>,  <15.366096, 17.071556, 8.784272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.546340, 16.915997, 8.814495>,  <15.846746, 16.656731, 8.864867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.546340, 16.915997, 8.814495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223711, 0.429222, 0.875055,
		0.621230, 0.629009, -0.467354,
		-0.751017, 0.648163, -0.125930,
		15.321035, 17.110445, 8.776716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.115242, 17.400393, 8.950413>,  <15.846746, 16.656731, 8.864867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.115242, 17.400393, 8.950413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.722552, 17.407825, 9.026177>,  <15.486939, 17.412285, 9.071636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.722552, 17.407825, 9.026177>,  <16.115242, 17.400393, 8.950413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.722552, 17.407825, 9.026177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174698, 0.482864, 0.858093,
		-0.075514, 0.875498, -0.477285,
		-0.981722, 0.018583, 0.189411,
		15.428036, 17.413401, 9.083001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.002411, 17.973362, 9.319175>,  <16.115242, 17.400393, 8.950413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.002411, 17.973362, 9.319175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.684115, 17.751740, 9.417012>,  <15.493138, 17.618767, 9.475715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.684115, 17.751740, 9.417012>,  <16.002411, 17.973362, 9.319175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.684115, 17.751740, 9.417012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080638, 0.303338, 0.949465,
		-0.600249, 0.775249, -0.196700,
		-0.795738, -0.554054, 0.244593,
		15.445395, 17.585524, 9.490390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.583430, 18.391113, 9.848405>,  <16.002411, 17.973362, 9.319175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.583430, 18.391113, 9.848405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.498704, 18.001785, 9.883695>,  <15.447868, 17.768188, 9.904868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.498704, 18.001785, 9.883695>,  <15.583430, 18.391113, 9.848405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.498704, 18.001785, 9.883695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087319, 0.071064, 0.993643,
		-0.973401, 0.218172, 0.069937,
		-0.211815, -0.973320, 0.088225,
		15.435160, 17.709789, 9.910162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.375355, 18.422102, 10.574850>,  <15.583430, 18.391113, 9.848405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.375355, 18.422102, 10.574850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.352910, 18.033817, 10.481408>,  <15.339443, 17.800846, 10.425344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.352910, 18.033817, 10.481408>,  <15.375355, 18.422102, 10.574850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.352910, 18.033817, 10.481408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044426, -0.236169, 0.970696,
		-0.997435, 0.044090, 0.056377,
		-0.056113, -0.970711, -0.233604,
		15.336077, 17.742603, 10.411326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.882895, 18.127342, 11.001622>,  <15.375355, 18.422102, 10.574850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.882895, 18.127342, 11.001622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.098466, 17.811127, 10.885276>,  <15.227809, 17.621397, 10.815468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.098466, 17.811127, 10.885276>,  <14.882895, 18.127342, 11.001622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.098466, 17.811127, 10.885276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182272, -0.227678, 0.956525,
		-0.822396, -0.568514, 0.021392,
		0.538927, -0.790541, -0.290865,
		15.260144, 17.573965, 10.798017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.646441, 17.624828, 11.407544>,  <14.882895, 18.127342, 11.001622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.646441, 17.624828, 11.407544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.007602, 17.501381, 11.287861>,  <15.224298, 17.427313, 11.216051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.007602, 17.501381, 11.287861>,  <14.646441, 17.624828, 11.407544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.007602, 17.501381, 11.287861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204653, -0.303483, 0.930599,
		-0.378008, -0.901471, -0.210854,
		0.902899, -0.308623, -0.299208,
		15.278472, 17.408794, 11.198098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.677998, 16.980005, 11.650595>,  <14.646441, 17.624828, 11.407544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.677998, 16.980005, 11.650595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.049167, 17.116146, 11.589776>,  <15.271869, 17.197830, 11.553285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.049167, 17.116146, 11.589776>,  <14.677998, 16.980005, 11.650595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.049167, 17.116146, 11.589776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236817, -0.223240, 0.945559,
		0.287881, -0.913413, -0.287751,
		0.927924, 0.340353, -0.152046,
		15.327544, 17.218252, 11.544163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.173176, 16.432016, 11.943080>,  <14.677998, 16.980005, 11.650595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.173176, 16.432016, 11.943080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.389701, 16.768009, 11.928061>,  <15.519616, 16.969604, 11.919050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.389701, 16.768009, 11.928061>,  <15.173176, 16.432016, 11.943080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.389701, 16.768009, 11.928061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092836, -0.015325, 0.995563,
		0.835681, -0.542396, -0.086276,
		0.541312, 0.839983, -0.037547,
		15.552094, 17.020004, 11.916798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.728996, 16.316767, 12.319426>,  <15.173176, 16.432016, 11.943080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.728996, 16.316767, 12.319426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.718522, 16.716614, 12.315825>,  <15.712237, 16.956522, 12.313665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.718522, 16.716614, 12.315825>,  <15.728996, 16.316767, 12.319426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.718522, 16.716614, 12.315825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389131, 0.018485, 0.920997,
		0.920810, 0.020614, -0.389465,
		-0.026185, 0.999617, -0.008999,
		15.710667, 17.016499, 12.313126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.425974, 16.574022, 12.534706>,  <15.728996, 16.316767, 12.319426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.425974, 16.574022, 12.534706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.184345, 16.883221, 12.612249>,  <16.039368, 17.068739, 12.658775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.184345, 16.883221, 12.612249>,  <16.425974, 16.574022, 12.534706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.184345, 16.883221, 12.612249> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277345, -0.024138, 0.960467,
		0.747114, 0.633954, -0.199805,
		-0.604069, 0.772994, 0.193858,
		16.003124, 17.115118, 12.670406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.840759, 17.123568, 12.894259>,  <16.425974, 16.574022, 12.534706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.840759, 17.123568, 12.894259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.458015, 17.201012, 12.980917>,  <16.228369, 17.247478, 13.032911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.458015, 17.201012, 12.980917>,  <16.840759, 17.123568, 12.894259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.458015, 17.201012, 12.980917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264799, 0.274212, 0.924494,
		0.119584, 0.941979, -0.313649,
		-0.956860, 0.193609, 0.216643,
		16.170958, 17.259094, 13.045910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.817091, 17.859856, 13.251839>,  <16.840759, 17.123568, 12.894259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.817091, 17.859856, 13.251839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.445370, 17.728764, 13.319942>,  <16.222338, 17.650108, 13.360805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.445370, 17.728764, 13.319942>,  <16.817091, 17.859856, 13.251839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.445370, 17.728764, 13.319942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066199, 0.305728, 0.949815,
		-0.363336, 0.893937, -0.262419,
		-0.929303, -0.327730, 0.170260,
		16.166578, 17.630445, 13.371020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.413265, 18.328928, 13.690624>,  <16.817091, 17.859856, 13.251839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.413265, 18.328928, 13.690624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.239677, 17.973518, 13.750218>,  <16.135525, 17.760273, 13.785975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.239677, 17.973518, 13.750218>,  <16.413265, 18.328928, 13.690624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.239677, 17.973518, 13.750218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176844, 0.078139, 0.981132,
		-0.883400, 0.452131, 0.123219,
		-0.433972, -0.888522, 0.148985,
		16.109486, 17.706963, 13.794914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.038788, 18.943861, 13.440346>,  <16.413265, 18.328928, 13.690624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.038788, 18.943861, 13.440346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.121796, 19.334587, 13.461401>,  <16.171600, 19.569023, 13.474034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.121796, 19.334587, 13.461401>,  <16.038788, 18.943861, 13.440346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.121796, 19.334587, 13.461401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251698, -0.001319, -0.967805,
		-0.945295, 0.214087, -0.246136,
		0.207520, 0.976813, 0.052638,
		16.184052, 19.627632, 13.477193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.596766, 19.276089, 12.958561>,  <16.038788, 18.943861, 13.440346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.596766, 19.276089, 12.958561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.902738, 19.528919, 13.008139>,  <16.086321, 19.680618, 13.037885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.902738, 19.528919, 13.008139>,  <15.596766, 19.276089, 12.958561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.902738, 19.528919, 13.008139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179282, -0.024110, -0.983502,
		-0.618662, 0.774530, -0.131762,
		0.764929, 0.632078, 0.123943,
		16.132215, 19.718542, 13.045321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.479118, 19.938274, 12.443094>,  <15.596766, 19.276089, 12.958561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.479118, 19.938274, 12.443094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.863303, 19.921799, 12.553232>,  <16.093815, 19.911913, 12.619315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.863303, 19.921799, 12.553232>,  <15.479118, 19.938274, 12.443094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.863303, 19.921799, 12.553232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276675, 0.031020, -0.960463,
		0.031020, 0.998670, 0.041190,
		0.960463, -0.041190, 0.275344,
		16.151442, 19.909441, 12.635836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.803198, 20.426392, 12.024786>,  <15.479118, 19.938274, 12.443094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.803198, 20.426392, 12.024786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.104008, 20.189728, 12.140989>,  <16.284494, 20.047729, 12.210711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.104008, 20.189728, 12.140989>,  <15.803198, 20.426392, 12.024786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.104008, 20.189728, 12.140989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402680, 0.063467, -0.913138,
		0.521831, 0.803685, 0.285979,
		0.752025, -0.591661, 0.290509,
		16.329615, 20.012230, 12.228142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.390894, 20.773165, 11.941551>,  <15.803198, 20.426392, 12.024786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.390894, 20.773165, 11.941551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.507195, 20.390743, 11.926464>,  <16.576975, 20.161289, 11.917412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.507195, 20.390743, 11.926464>,  <16.390894, 20.773165, 11.941551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.507195, 20.390743, 11.926464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319079, 0.134050, -0.938200,
		0.902027, 0.260748, 0.344032,
		0.290751, -0.956055, -0.037718,
		16.594419, 20.103928, 11.915149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.066166, 20.755045, 11.600230>,  <16.390894, 20.773165, 11.941551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.066166, 20.755045, 11.600230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.982567, 20.363880, 11.599473>,  <16.932407, 20.129181, 11.599019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.982567, 20.363880, 11.599473>,  <17.066166, 20.755045, 11.600230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.982567, 20.363880, 11.599473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287869, -0.059674, -0.955809,
		0.934586, -0.200308, 0.293983,
		-0.208999, -0.977914, -0.001892,
		16.919867, 20.070505, 11.598906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.617369, 20.350285, 11.170018>,  <17.066166, 20.755045, 11.600230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.617369, 20.350285, 11.170018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.290718, 20.119419, 11.170778>,  <17.094728, 19.980900, 11.171234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.290718, 20.119419, 11.170778>,  <17.617369, 20.350285, 11.170018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.290718, 20.119419, 11.170778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143057, -0.205599, -0.968124,
		0.559156, -0.790324, 0.250465,
		-0.816626, -0.577163, 0.001900,
		17.045731, 19.946270, 11.171349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.817522, 19.648081, 10.851463>,  <17.617369, 20.350285, 11.170018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.817522, 19.648081, 10.851463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.426090, 19.725857, 10.824404>,  <17.191231, 19.772522, 10.808168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.426090, 19.725857, 10.824404>,  <17.817522, 19.648081, 10.851463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.426090, 19.725857, 10.824404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035197, -0.165743, -0.985541,
		-0.202840, -0.966811, 0.155349,
		-0.978579, 0.194439, -0.067648,
		17.132517, 19.784189, 10.804110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.642391, 19.164253, 10.374797>,  <17.817522, 19.648081, 10.851463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.642391, 19.164253, 10.374797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.339607, 19.423920, 10.404719>,  <17.157936, 19.579720, 10.422672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.339607, 19.423920, 10.404719>,  <17.642391, 19.164253, 10.374797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.339607, 19.423920, 10.404719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076009, 0.026230, -0.996762,
		-0.649025, -0.760195, 0.029487,
		-0.756961, 0.649165, 0.074806,
		17.112518, 19.618670, 10.427161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.178621, 18.806791, 9.955411>,  <17.642391, 19.164253, 10.374797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.178621, 18.806791, 9.955411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.046036, 19.183174, 9.982917>,  <16.966484, 19.409004, 9.999420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.046036, 19.183174, 9.982917>,  <17.178621, 18.806791, 9.955411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.046036, 19.183174, 9.982917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045510, 0.056855, -0.997345,
		-0.942370, -0.333711, 0.023978,
		-0.331462, 0.940959, 0.068766,
		16.946598, 19.465462, 10.003547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.587040, 18.895691, 9.492322>,  <17.178621, 18.806791, 9.955411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.587040, 18.895691, 9.492322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.753746, 19.255474, 9.544910>,  <16.853769, 19.471344, 9.576464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.753746, 19.255474, 9.544910>,  <16.587040, 18.895691, 9.492322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.753746, 19.255474, 9.544910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057438, 0.170398, -0.983700,
		-0.907198, 0.402419, 0.122679,
		0.416764, 0.899457, 0.131471,
		16.878775, 19.525311, 9.584352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.159863, 19.344856, 9.229507>,  <16.587040, 18.895691, 9.492322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.159863, 19.344856, 9.229507> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.494377, 19.563431, 9.211460>,  <16.695086, 19.694574, 9.200632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.494377, 19.563431, 9.211460>,  <16.159863, 19.344856, 9.229507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.494377, 19.563431, 9.211460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104583, 0.078198, -0.991437,
		-0.538227, 0.833843, 0.122544,
		0.836286, 0.546434, -0.045118,
		16.745262, 19.727362, 9.197925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<14.841333, 19.303371, 16.994299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.194003, 19.490677, 17.017550>,  <15.405605, 19.603060, 17.031500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.194003, 19.490677, 17.017550>,  <14.841333, 19.303371, 16.994299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.194003, 19.490677, 17.017550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056889, 0.016803, -0.998239,
		-0.468415, 0.883430, -0.011824,
		0.881675, 0.468263, 0.058128,
		15.458506, 19.631155, 17.034988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.716203, 19.705534, 16.445772>,  <14.841333, 19.303371, 16.994299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.716203, 19.705534, 16.445772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.103381, 19.747089, 16.537237>,  <15.335689, 19.772022, 16.592117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.103381, 19.747089, 16.537237>,  <14.716203, 19.705534, 16.445772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.103381, 19.747089, 16.537237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219462, 0.092880, -0.971190,
		-0.122133, 0.990243, 0.067103,
		0.967946, 0.103888, 0.228664,
		15.393765, 19.778255, 16.605837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.928512, 20.336178, 16.142540>,  <14.716203, 19.705534, 16.445772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.928512, 20.336178, 16.142540> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.265830, 20.125343, 16.184551>,  <15.468221, 19.998842, 16.209759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.265830, 20.125343, 16.184551>,  <14.928512, 20.336178, 16.142540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.265830, 20.125343, 16.184551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191633, 0.112309, -0.975020,
		0.502125, 0.842357, 0.195717,
		0.843296, -0.527088, 0.105030,
		15.518819, 19.967216, 16.216061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.400205, 20.696321, 15.801258>,  <14.928512, 20.336178, 16.142540>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.400205, 20.696321, 15.801258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.567651, 20.335629, 15.844420>,  <15.668118, 20.119213, 15.870317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.567651, 20.335629, 15.844420>,  <15.400205, 20.696321, 15.801258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.567651, 20.335629, 15.844420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397241, 0.074961, -0.914648,
		0.816677, 0.425749, 0.389584,
		0.418614, -0.901731, 0.107906,
		15.693235, 20.065109, 15.876792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.060249, 20.761484, 15.481163>,  <15.400205, 20.696321, 15.801258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.060249, 20.761484, 15.481163> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.005627, 20.365307, 15.473454>,  <15.972853, 20.127600, 15.468829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.005627, 20.365307, 15.473454>,  <16.060249, 20.761484, 15.481163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.005627, 20.365307, 15.473454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262203, -0.017378, -0.964856,
		0.955302, -0.136812, 0.262071,
		-0.136558, -0.990445, -0.019271,
		15.964659, 20.068174, 15.467673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.646458, 20.471315, 15.236118>,  <16.060249, 20.761484, 15.481163>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.646458, 20.471315, 15.236118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.330482, 20.237541, 15.161893>,  <16.140898, 20.097277, 15.117357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.330482, 20.237541, 15.161893>,  <16.646458, 20.471315, 15.236118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.330482, 20.237541, 15.161893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231893, -0.004581, -0.972731,
		0.567648, -0.811427, 0.139145,
		-0.789937, -0.584436, -0.185564,
		16.093502, 20.062210, 15.106224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.888639, 19.924517, 14.919110>,  <16.646458, 20.471315, 15.236118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.888639, 19.924517, 14.919110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.501453, 19.935081, 14.819234>,  <16.269142, 19.941422, 14.759308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.501453, 19.935081, 14.819234>,  <16.888639, 19.924517, 14.919110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.501453, 19.935081, 14.819234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245663, -0.105896, -0.963554,
		-0.051888, -0.994027, 0.096016,
		-0.967966, 0.026409, -0.249690,
		16.211063, 19.943007, 14.744327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.829203, 19.341318, 14.558701>,  <16.888639, 19.924517, 14.919110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.829203, 19.341318, 14.558701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.537594, 19.596714, 14.460021>,  <16.362629, 19.749950, 14.400813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.537594, 19.596714, 14.460021>,  <16.829203, 19.341318, 14.558701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.537594, 19.596714, 14.460021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266139, -0.067649, -0.961558,
		-0.630632, -0.766653, -0.120609,
		-0.729022, 0.638488, -0.246698,
		16.318888, 19.788261, 14.386012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.394995, 18.986490, 14.065290>,  <16.829203, 19.341318, 14.558701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.394995, 18.986490, 14.065290> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.305489, 19.370651, 13.998885>,  <16.251785, 19.601147, 13.959043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.305489, 19.370651, 13.998885>,  <16.394995, 18.986490, 14.065290>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.305489, 19.370651, 13.998885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136547, -0.137760, -0.981008,
		-0.965031, -0.242183, -0.100314,
		-0.223764, 0.960401, -0.166012,
		16.238359, 19.658772, 13.949081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.957030, 18.431524, 14.292694>,  <16.394995, 18.986490, 14.065290>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.957030, 18.431524, 14.292694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.012268, 18.035381, 14.297193>,  <16.045410, 17.797695, 14.299891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.012268, 18.035381, 14.297193>,  <15.957030, 18.431524, 14.292694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.012268, 18.035381, 14.297193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071853, 0.021344, 0.997187,
		-0.987809, -0.136899, 0.074108,
		0.138095, -0.990355, 0.011247,
		16.053698, 17.738276, 14.300567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.484426, 18.165134, 14.808353>,  <15.957030, 18.431524, 14.292694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.484426, 18.165134, 14.808353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.743434, 17.864063, 14.760694>,  <15.898839, 17.683420, 14.732098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.743434, 17.864063, 14.760694>,  <15.484426, 18.165134, 14.808353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.743434, 17.864063, 14.760694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001814, -0.157877, 0.987457,
		-0.762047, -0.639181, -0.103594,
		0.647519, -0.752676, -0.119150,
		15.937690, 17.638260, 14.724949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.254767, 17.561413, 15.149978>,  <15.484426, 18.165134, 14.808353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.254767, 17.561413, 15.149978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.646796, 17.494297, 15.107444>,  <15.882013, 17.454027, 15.081923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.646796, 17.494297, 15.107444>,  <15.254767, 17.561413, 15.149978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.646796, 17.494297, 15.107444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072164, -0.197991, 0.977544,
		-0.185059, -0.965739, -0.181938,
		0.980074, -0.167774, -0.106331,
		15.940818, 17.443960, 15.075543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.275196, 16.999315, 15.328027>,  <15.254767, 17.561413, 15.149978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.275196, 16.999315, 15.328027> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.657584, 17.115074, 15.347505>,  <15.887017, 17.184530, 15.359192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.657584, 17.115074, 15.347505>,  <15.275196, 16.999315, 15.328027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.657584, 17.115074, 15.347505> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028604, -0.073255, 0.996903,
		0.292070, -0.954401, -0.061751,
		0.955969, 0.289400, 0.048696,
		15.944375, 17.201895, 15.362113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.595518, 16.602125, 15.791655>,  <15.275196, 16.999315, 15.328027>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.595518, 16.602125, 15.791655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.855218, 16.906246, 15.783494>,  <16.011038, 17.088718, 15.778598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.855218, 16.906246, 15.783494>,  <15.595518, 16.602125, 15.791655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.855218, 16.906246, 15.783494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213769, -0.156671, 0.964239,
		0.729917, -0.630392, -0.264248,
		0.649248, 0.760303, -0.020401,
		16.049992, 17.134336, 15.777373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.188826, 16.342293, 16.102226>,  <15.595518, 16.602125, 15.791655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.188826, 16.342293, 16.102226> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.230309, 16.738400, 16.139351>,  <16.255199, 16.976065, 16.161625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.230309, 16.738400, 16.139351>,  <16.188826, 16.342293, 16.102226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.230309, 16.738400, 16.139351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261054, -0.117143, 0.958190,
		0.959737, -0.075144, -0.270662,
		0.103708, 0.990268, 0.092810,
		16.261421, 17.035480, 16.167194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.899309, 16.525227, 16.386723>,  <16.188826, 16.342293, 16.102226>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.899309, 16.525227, 16.386723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.666843, 16.845558, 16.444584>,  <16.527365, 17.037756, 16.479301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.666843, 16.845558, 16.444584>,  <16.899309, 16.525227, 16.386723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.666843, 16.845558, 16.444584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032556, -0.154731, 0.987420,
		0.813135, 0.578562, 0.063853,
		-0.581164, 0.800827, 0.144653,
		16.492495, 17.085806, 16.487980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.125229, 16.747009, 16.940546>,  <16.899309, 16.525227, 16.386723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.125229, 16.747009, 16.940546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.773422, 16.934975, 16.910534>,  <16.562338, 17.047754, 16.892527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.773422, 16.934975, 16.910534>,  <17.125229, 16.747009, 16.940546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.773422, 16.934975, 16.910534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111141, -0.049537, 0.992569,
		0.462705, 0.881321, 0.095795,
		-0.879518, 0.469914, -0.075030,
		16.509567, 17.075949, 16.888025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.075041, 17.270981, 17.515337>,  <17.125229, 16.747009, 16.940546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.075041, 17.270981, 17.515337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.704964, 17.215286, 17.374126>,  <16.482918, 17.181870, 17.289400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.704964, 17.215286, 17.374126>,  <17.075041, 17.270981, 17.515337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.704964, 17.215286, 17.374126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331201, -0.157872, 0.930259,
		-0.185259, 0.977594, 0.099947,
		-0.925194, -0.139237, -0.353027,
		16.427404, 17.173515, 17.268219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.526112, 17.749529, 17.830744>,  <17.075041, 17.270981, 17.515337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.526112, 17.749529, 17.830744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.304520, 17.437496, 17.714413>,  <16.171564, 17.250277, 17.644615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.304520, 17.437496, 17.714413>,  <16.526112, 17.749529, 17.830744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.304520, 17.437496, 17.714413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416952, -0.042393, 0.907939,
		-0.720596, 0.624240, -0.301771,
		-0.553979, -0.780081, -0.290827,
		16.138327, 17.203472, 17.627165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.971334, 17.750746, 18.282589>,  <16.526112, 17.749529, 17.830744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.971334, 17.750746, 18.282589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.935548, 17.374836, 18.150639>,  <15.914076, 17.149290, 18.071468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.935548, 17.374836, 18.150639>,  <15.971334, 17.750746, 18.282589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.935548, 17.374836, 18.150639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382842, -0.273310, 0.882459,
		-0.919471, 0.205242, -0.335333,
		-0.089468, -0.939775, -0.329876,
		15.908708, 17.092903, 18.051676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.287765, 17.410063, 18.397814>,  <15.971334, 17.750746, 18.282589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.287765, 17.410063, 18.397814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.523440, 17.090401, 18.350143>,  <15.664846, 16.898603, 18.321541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.523440, 17.090401, 18.350143>,  <15.287765, 17.410063, 18.397814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.523440, 17.090401, 18.350143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376780, -0.402223, 0.834418,
		-0.714767, -0.446727, -0.538092,
		0.589190, -0.799157, -0.119178,
		15.700197, 16.850653, 18.314390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.886385, 16.831223, 18.516190>,  <15.287765, 17.410063, 18.397814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.886385, 16.831223, 18.516190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.256490, 16.686935, 18.563139>,  <15.478553, 16.600365, 18.591309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.256490, 16.686935, 18.563139>,  <14.886385, 16.831223, 18.516190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.256490, 16.686935, 18.563139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274922, -0.424484, 0.862688,
		-0.261361, -0.830480, -0.491928,
		0.925261, -0.360715, 0.117374,
		15.534068, 16.578720, 18.598351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.767412, 16.243984, 18.882544>,  <14.886385, 16.831223, 18.516190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.767412, 16.243984, 18.882544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.164098, 16.276958, 18.921959>,  <15.402109, 16.296743, 18.945608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.164098, 16.276958, 18.921959>,  <14.767412, 16.243984, 18.882544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.164098, 16.276958, 18.921959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061093, -0.372137, 0.926165,
		0.113018, -0.924510, -0.364017,
		0.991713, 0.082434, 0.098539,
		15.461612, 16.301689, 18.951521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<22.621260, 18.103333, 19.104471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.223652, 18.107288, 19.147966>,  <21.985086, 18.109663, 19.174063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.223652, 18.107288, 19.147966>,  <22.621260, 18.103333, 19.104471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.223652, 18.107288, 19.147966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105635, -0.339051, -0.934819,
		0.027622, -0.940716, 0.338068,
		-0.994021, 0.009891, 0.108738,
		21.925446, 18.110256, 19.180588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.420166, 17.481880, 18.872553>,  <22.621260, 18.103333, 19.104471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.420166, 17.481880, 18.872553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.094376, 17.713879, 18.866440>,  <21.898901, 17.853077, 18.862772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.094376, 17.713879, 18.866440>,  <22.420166, 17.481880, 18.872553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.094376, 17.713879, 18.866440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077178, -0.134409, -0.987916,
		-0.575042, -0.803453, 0.154236,
		-0.814475, 0.579997, -0.015282,
		21.850033, 17.887878, 18.861855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.044317, 17.238689, 18.322817>,  <22.420166, 17.481880, 18.872553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.044317, 17.238689, 18.322817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.907501, 17.613770, 18.347240>,  <21.825411, 17.838818, 18.361895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.907501, 17.613770, 18.347240>,  <22.044317, 17.238689, 18.322817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.907501, 17.613770, 18.347240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337348, -0.061887, -0.939343,
		-0.877043, -0.341892, 0.337499,
		-0.342041, 0.937699, 0.061059,
		21.804890, 17.895079, 18.365559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.289001, 17.260674, 18.227066>,  <22.044317, 17.238689, 18.322817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.289001, 17.260674, 18.227066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.422600, 17.630665, 18.154558>,  <21.502760, 17.852659, 18.111053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.422600, 17.630665, 18.154558>,  <21.289001, 17.260674, 18.227066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.422600, 17.630665, 18.154558> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485666, 0.004063, -0.874135,
		-0.807820, 0.379995, 0.450588,
		0.333998, 0.924980, -0.181269,
		21.522799, 17.908159, 18.100178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.752401, 17.456886, 17.847290>,  <21.289001, 17.260674, 18.227066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.752401, 17.456886, 17.847290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.043022, 17.720638, 17.769997>,  <21.217394, 17.878889, 17.723621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.043022, 17.720638, 17.769997>,  <20.752401, 17.456886, 17.847290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.043022, 17.720638, 17.769997> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248895, -0.009568, -0.968483,
		-0.640448, 0.751748, 0.157165,
		0.726552, 0.659381, -0.193234,
		21.260988, 17.918453, 17.712027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.473900, 17.935688, 17.432255>,  <20.752401, 17.456886, 17.847290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.473900, 17.935688, 17.432255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.865608, 17.975563, 17.361723>,  <21.100634, 17.999489, 17.319405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.865608, 17.975563, 17.361723>,  <20.473900, 17.935688, 17.432255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.865608, 17.975563, 17.361723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173747, -0.034087, -0.984200,
		-0.104123, 0.994435, -0.016060,
		0.979270, 0.099687, -0.176329,
		21.159389, 18.005468, 17.308825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.554480, 18.371990, 16.876097>,  <20.473900, 17.935688, 17.432255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.554480, 18.371990, 16.876097> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.894436, 18.161690, 16.890358>,  <21.098410, 18.035509, 16.898914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.894436, 18.161690, 16.890358>,  <20.554480, 18.371990, 16.876097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.894436, 18.161690, 16.890358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087946, -0.208223, -0.974119,
		0.519567, 0.824760, -0.223204,
		0.849891, -0.525751, 0.035652,
		21.149403, 18.003965, 16.901054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.977316, 18.581732, 16.280907>,  <20.554480, 18.371990, 16.876097>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.977316, 18.581732, 16.280907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.156883, 18.243713, 16.397095>,  <21.264624, 18.040903, 16.466808>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.156883, 18.243713, 16.397095>,  <20.977316, 18.581732, 16.280907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.156883, 18.243713, 16.397095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203354, -0.219923, -0.954087,
		0.870127, 0.487373, 0.073116,
		0.448917, -0.845045, 0.290470,
		21.291557, 17.990200, 16.484236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.612959, 18.546286, 16.003069>,  <20.977316, 18.581732, 16.280907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.612959, 18.546286, 16.003069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.530621, 18.161045, 16.072422>,  <21.481218, 17.929901, 16.114035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.530621, 18.161045, 16.072422>,  <21.612959, 18.546286, 16.003069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.530621, 18.161045, 16.072422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105176, -0.197926, -0.974558,
		0.972916, -0.182373, 0.142037,
		-0.205846, -0.963102, 0.173384,
		21.468866, 17.872114, 16.124437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.117079, 18.167870, 15.683780>,  <21.612959, 18.546286, 16.003069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.117079, 18.167870, 15.683780> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.827976, 17.903584, 15.764852>,  <21.654514, 17.745012, 15.813495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.827976, 17.903584, 15.764852>,  <22.117079, 18.167870, 15.683780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.827976, 17.903584, 15.764852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076461, -0.367917, -0.926710,
		0.686862, -0.654287, 0.316433,
		-0.722755, -0.660716, 0.202680,
		21.611149, 17.705368, 15.825656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.343245, 17.521082, 15.440400>,  <22.117079, 18.167870, 15.683780>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.343245, 17.521082, 15.440400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.944424, 17.507542, 15.467954>,  <21.705132, 17.499418, 15.484486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.944424, 17.507542, 15.467954>,  <22.343245, 17.521082, 15.440400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.944424, 17.507542, 15.467954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060262, -0.210534, -0.975727,
		0.047532, -0.977000, 0.207873,
		-0.997050, -0.033852, 0.068883,
		21.645309, 17.497387, 15.488619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.219337, 17.016539, 15.079061>,  <22.343245, 17.521082, 15.440400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.219337, 17.016539, 15.079061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.863201, 17.198635, 15.076283>,  <21.649519, 17.307892, 15.074617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.863201, 17.198635, 15.076283>,  <22.219337, 17.016539, 15.079061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.863201, 17.198635, 15.076283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029156, -0.072227, -0.996962,
		-0.454359, -0.887435, 0.077579,
		-0.890342, 0.455240, -0.006943,
		21.596098, 17.335207, 15.074201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.839861, 16.615076, 14.629848>,  <22.219337, 17.016539, 15.079061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.839861, 16.615076, 14.629848> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.655739, 16.969566, 14.650737>,  <21.545265, 17.182261, 14.663270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.655739, 16.969566, 14.650737>,  <21.839861, 16.615076, 14.629848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.655739, 16.969566, 14.650737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109738, 0.001571, -0.993959,
		-0.880953, -0.463254, 0.096529,
		-0.460304, 0.886224, 0.052220,
		21.517647, 17.235434, 14.666403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.433737, 16.543373, 14.079377>,  <21.839861, 16.615076, 14.629848>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.433737, 16.543373, 14.079377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.438976, 16.935913, 14.156093>,  <21.442120, 17.171436, 14.202122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.438976, 16.935913, 14.156093>,  <21.433737, 16.543373, 14.079377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.438976, 16.935913, 14.156093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226926, 0.189719, -0.955255,
		-0.973824, -0.031008, 0.225179,
		0.013100, 0.981349, 0.191789,
		21.442907, 17.230318, 14.213630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.744852, 16.377382, 14.348543>,  <21.433737, 16.543373, 14.079377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.744852, 16.377382, 14.348543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.473675, 16.104046, 14.240144>,  <20.310968, 15.940044, 14.175104>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.473675, 16.104046, 14.240144>,  <20.744852, 16.377382, 14.348543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.473675, 16.104046, 14.240144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028325, -0.344093, 0.938508,
		-0.734569, 0.643931, 0.213919,
		-0.677942, -0.683340, -0.271000,
		20.270292, 15.899044, 14.158844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.220577, 16.396172, 14.889242>,  <20.744852, 16.377382, 14.348543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.220577, 16.396172, 14.889242> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.184093, 16.033470, 14.724572>,  <20.162203, 15.815849, 14.625771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.184093, 16.033470, 14.724572>,  <20.220577, 16.396172, 14.889242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.184093, 16.033470, 14.724572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220405, -0.384764, 0.896314,
		-0.971135, 0.172487, -0.164759,
		-0.091209, -0.906755, -0.411675,
		20.156731, 15.761444, 14.601069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.596067, 16.097288, 15.179869>,  <20.220577, 16.396172, 14.889242>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.596067, 16.097288, 15.179869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.843468, 15.814217, 15.043254>,  <19.991909, 15.644374, 14.961285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.843468, 15.814217, 15.043254>,  <19.596067, 16.097288, 15.179869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.843468, 15.814217, 15.043254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020115, -0.420245, 0.907188,
		-0.785526, -0.567968, -0.245687,
		0.618502, -0.707677, -0.341538,
		20.029018, 15.601913, 14.940793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.424654, 15.507047, 15.579627>,  <19.596067, 16.097288, 15.179869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.424654, 15.507047, 15.579627> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.783401, 15.435917, 15.417636>,  <19.998650, 15.393239, 15.320441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.783401, 15.435917, 15.417636>,  <19.424654, 15.507047, 15.579627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.783401, 15.435917, 15.417636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293233, -0.446412, 0.845418,
		-0.331121, -0.876981, -0.348229,
		0.896868, -0.177823, -0.404976,
		20.052462, 15.382569, 15.296143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.545755, 14.711352, 15.723373>,  <19.424654, 15.507047, 15.579627>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.545755, 14.711352, 15.723373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.884480, 14.916878, 15.668368>,  <20.087713, 15.040193, 15.635365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.884480, 14.916878, 15.668368>,  <19.545755, 14.711352, 15.723373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.884480, 14.916878, 15.668368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362826, -0.368953, 0.855705,
		0.388937, -0.774512, -0.498857,
		0.846809, 0.513814, -0.137513,
		20.138523, 15.071022, 15.627114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.002457, 14.292228, 16.125414>,  <19.545755, 14.711352, 15.723373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.002457, 14.292228, 16.125414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.203671, 14.632587, 16.064846>,  <20.324398, 14.836803, 16.028505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.203671, 14.632587, 16.064846>,  <20.002457, 14.292228, 16.125414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.203671, 14.632587, 16.064846> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301059, -0.008287, 0.953570,
		0.810136, -0.525265, -0.260339,
		0.503034, 0.850898, -0.151422,
		20.354580, 14.887856, 16.019419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.654804, 14.236562, 16.511587>,  <20.002457, 14.292228, 16.125414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.654804, 14.236562, 16.511587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.626663, 14.631439, 16.454315>,  <20.609779, 14.868365, 16.419952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.626663, 14.631439, 16.454315>,  <20.654804, 14.236562, 16.511587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.626663, 14.631439, 16.454315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211422, 0.155029, 0.965021,
		0.974859, 0.037619, -0.219621,
		-0.070351, 0.987193, -0.143178,
		20.605558, 14.927597, 16.411362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.254862, 14.531070, 16.784330>,  <20.654804, 14.236562, 16.511587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.254862, 14.531070, 16.784330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.963512, 14.804977, 16.774824>,  <20.788702, 14.969322, 16.769121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.963512, 14.804977, 16.774824>,  <21.254862, 14.531070, 16.784330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.963512, 14.804977, 16.774824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100618, 0.141205, 0.984854,
		0.677752, 0.714950, -0.171750,
		-0.728373, 0.684768, -0.023765,
		20.745001, 15.010407, 16.767694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.517906, 14.943193, 17.274948>,  <21.254862, 14.531070, 16.784330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.517906, 14.943193, 17.274948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.144272, 15.082386, 17.242964>,  <20.920092, 15.165902, 17.223772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.144272, 15.082386, 17.242964>,  <21.517906, 14.943193, 17.274948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.144272, 15.082386, 17.242964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004967, 0.236593, 0.971596,
		0.357017, 0.907156, -0.222726,
		-0.934085, 0.347982, -0.079962,
		20.864046, 15.186781, 17.218975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.480522, 15.653290, 17.604364>,  <21.517906, 14.943193, 17.274948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.480522, 15.653290, 17.604364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.116169, 15.488697, 17.591887>,  <20.897556, 15.389941, 17.584400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.116169, 15.488697, 17.591887>,  <21.480522, 15.653290, 17.604364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.116169, 15.488697, 17.591887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071714, 0.083400, 0.993932,
		-0.406385, 0.907594, -0.105476,
		-0.910883, -0.411483, -0.031195,
		20.842903, 15.365252, 17.582527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.039642, 16.147545, 17.974491>,  <21.480522, 15.653290, 17.604364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.039642, 16.147545, 17.974491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.882267, 15.780144, 17.990297>,  <20.787842, 15.559704, 17.999781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.882267, 15.780144, 17.990297>,  <21.039642, 16.147545, 17.974491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.882267, 15.780144, 17.990297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215648, 0.133986, 0.967235,
		-0.893701, 0.372027, -0.250788,
		-0.393439, -0.918501, 0.039516,
		20.764235, 15.504594, 18.002151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.404940, 16.223141, 18.357611>,  <21.039642, 16.147545, 17.974491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.404940, 16.223141, 18.357611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.480782, 15.832905, 18.401918>,  <20.526287, 15.598763, 18.428503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.480782, 15.832905, 18.401918>,  <20.404940, 16.223141, 18.357611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.480782, 15.832905, 18.401918> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122548, 0.088419, 0.988516,
		-0.974183, -0.201002, -0.102792,
		0.189605, -0.975592, 0.110769,
		20.537663, 15.540227, 18.435148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.818195, 15.956111, 18.791157>,  <20.404940, 16.223141, 18.357611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.818195, 15.956111, 18.791157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.114273, 15.687592, 18.806515>,  <20.291920, 15.526480, 18.815729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.114273, 15.687592, 18.806515>,  <19.818195, 15.956111, 18.791157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.114273, 15.687592, 18.806515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069910, -0.020042, 0.997352,
		-0.668751, -0.740916, -0.061766,
		0.740192, -0.671298, 0.038394,
		20.336330, 15.486202, 18.818033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.504536, 15.353542, 19.121485>,  <19.818195, 15.956111, 18.791157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.504536, 15.353542, 19.121485> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.894463, 15.297848, 19.191160>,  <20.128420, 15.264431, 19.232965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.894463, 15.297848, 19.191160>,  <19.504536, 15.353542, 19.121485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.894463, 15.297848, 19.191160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169986, 0.041617, 0.984567,
		-0.144337, -0.989384, 0.016900,
		0.974819, -0.139237, 0.174188,
		20.186909, 15.256077, 19.243416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.170576, 14.785938, 18.625330>,  <19.504536, 15.353542, 19.121485>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.170576, 14.785938, 18.625330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.833828, 14.570374, 18.613804>,  <18.631779, 14.441035, 18.606888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.833828, 14.570374, 18.613804>,  <19.170576, 14.785938, 18.625330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.833828, 14.570374, 18.613804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083787, -0.077773, -0.993444,
		0.533137, -0.838764, 0.110628,
		-0.841869, -0.538911, -0.028813,
		18.581266, 14.408700, 18.605160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.283173, 14.182990, 18.150314>,  <19.170576, 14.785938, 18.625330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.283173, 14.182990, 18.150314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.889370, 14.246105, 18.180912>,  <18.653088, 14.283975, 18.199270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.889370, 14.246105, 18.180912>,  <19.283173, 14.182990, 18.150314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.889370, 14.246105, 18.180912> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050554, 0.162306, -0.985445,
		-0.167907, -0.974043, -0.151814,
		-0.984506, 0.157789, 0.076494,
		18.594019, 14.293442, 18.203859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.978563, 13.809781, 17.637278>,  <19.283173, 14.182990, 18.150314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.978563, 13.809781, 17.637278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.703148, 14.088505, 17.717651>,  <18.537899, 14.255739, 17.765875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.703148, 14.088505, 17.717651>,  <18.978563, 13.809781, 17.637278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.703148, 14.088505, 17.717651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304696, -0.026534, -0.952080,
		-0.658086, -0.716766, 0.230585,
		-0.688536, 0.696809, 0.200934,
		18.496588, 14.297547, 17.777931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.412525, 13.491735, 17.334803>,  <18.978563, 13.809781, 17.637278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.412525, 13.491735, 17.334803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.329754, 13.879230, 17.389545>,  <18.280092, 14.111728, 17.422392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.329754, 13.879230, 17.389545>,  <18.412525, 13.491735, 17.334803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.329754, 13.879230, 17.389545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107452, 0.116537, -0.987357,
		-0.972438, -0.219016, 0.079978,
		-0.206927, 0.968737, 0.136859,
		18.267675, 14.169851, 17.430603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.753208, 13.600062, 16.945023>,  <18.412525, 13.491735, 17.334803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.753208, 13.600062, 16.945023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.891270, 13.972404, 16.992981>,  <17.974108, 14.195810, 17.021755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.891270, 13.972404, 16.992981>,  <17.753208, 13.600062, 16.945023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.891270, 13.972404, 16.992981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431182, 0.270737, -0.860688,
		-0.833636, 0.245375, 0.494815,
		0.345156, 0.930856, 0.119895,
		17.994816, 14.251661, 17.028950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.217285, 13.933276, 16.665445>,  <17.753208, 13.600062, 16.945023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.217285, 13.933276, 16.665445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.550266, 14.154156, 16.647133>,  <17.750055, 14.286683, 16.636145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.550266, 14.154156, 16.647133>,  <17.217285, 13.933276, 16.665445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.550266, 14.154156, 16.647133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236713, 0.279710, -0.930446,
		-0.500985, 0.785391, 0.363559,
		0.832455, 0.552199, -0.045781,
		17.800003, 14.319816, 16.633398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.998592, 14.591387, 16.367540>,  <17.217285, 13.933276, 16.665445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.998592, 14.591387, 16.367540> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.396603, 14.571468, 16.333029>,  <17.635408, 14.559517, 16.312321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.396603, 14.571468, 16.333029>,  <16.998592, 14.591387, 16.367540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.396603, 14.571468, 16.333029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055726, 0.439691, -0.896419,
		0.082575, 0.896767, 0.434729,
		0.995026, -0.049796, -0.086280,
		17.695110, 14.556529, 16.307144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.188379, 15.235703, 15.934870>,  <16.998592, 14.591387, 16.367540>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.188379, 15.235703, 15.934870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.489563, 14.975204, 15.897071>,  <17.670273, 14.818905, 15.874392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.489563, 14.975204, 15.897071>,  <17.188379, 15.235703, 15.934870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.489563, 14.975204, 15.897071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102577, 0.257996, -0.960685,
		0.650024, 0.713663, 0.261063,
		0.752959, -0.651247, -0.094498,
		17.715450, 14.779830, 15.868722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.647015, 15.522567, 15.525060>,  <17.188379, 15.235703, 15.934870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.647015, 15.522567, 15.525060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.778553, 15.147129, 15.483298>,  <17.857477, 14.921866, 15.458241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.778553, 15.147129, 15.483298>,  <17.647015, 15.522567, 15.525060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.778553, 15.147129, 15.483298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193053, 0.175028, -0.965451,
		0.924440, 0.297330, 0.238756,
		0.328847, -0.938594, -0.104403,
		17.877207, 14.865551, 15.451978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.238270, 15.478368, 15.036736>,  <17.647015, 15.522567, 15.525060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.238270, 15.478368, 15.036736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.081436, 15.111023, 15.015265>,  <17.987335, 14.890616, 15.002383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.081436, 15.111023, 15.015265>,  <18.238270, 15.478368, 15.036736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.081436, 15.111023, 15.015265> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205424, -0.030533, -0.978196,
		0.896699, -0.394562, 0.200625,
		-0.392085, -0.918361, -0.053674,
		17.963810, 14.835514, 14.999164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.679483, 15.193949, 14.540648>,  <18.238270, 15.478368, 15.036736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.679483, 15.193949, 14.540648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.378349, 14.933235, 14.577350>,  <18.197670, 14.776807, 14.599371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.378349, 14.933235, 14.577350>,  <18.679483, 15.193949, 14.540648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.378349, 14.933235, 14.577350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160681, -0.317167, -0.934658,
		0.638297, -0.688899, 0.343503,
		-0.752833, -0.651785, 0.091754,
		18.152500, 14.737700, 14.604876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.854177, 14.532205, 14.127800>,  <18.679483, 15.193949, 14.540648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.854177, 14.532205, 14.127800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.459393, 14.494694, 14.180120>,  <18.222521, 14.472187, 14.211511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.459393, 14.494694, 14.180120>,  <18.854177, 14.532205, 14.127800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.459393, 14.494694, 14.180120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091735, -0.339965, -0.935953,
		0.132239, -0.935751, 0.326930,
		-0.986963, -0.093779, 0.130798,
		18.163303, 14.466560, 14.219359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.594616, 13.865533, 13.771094>,  <18.854177, 14.532205, 14.127800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.594616, 13.865533, 13.771094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.281860, 14.113064, 13.801295>,  <18.094208, 14.261582, 13.819416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.281860, 14.113064, 13.801295>,  <18.594616, 13.865533, 13.771094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.281860, 14.113064, 13.801295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173744, -0.099994, -0.979701,
		-0.598718, -0.779135, 0.185702,
		-0.781889, 0.618829, 0.075502,
		18.047293, 14.298713, 13.823946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.171530, 13.594120, 13.309083>,  <18.594616, 13.865533, 13.771094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.171530, 13.594120, 13.309083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.971016, 13.933613, 13.376451>,  <17.850708, 14.137309, 13.416872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.971016, 13.933613, 13.376451>,  <18.171530, 13.594120, 13.309083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.971016, 13.933613, 13.376451> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451804, -0.090737, -0.887491,
		-0.737960, -0.520980, 0.428946,
		-0.501286, 0.848733, 0.168421,
		17.820631, 14.188232, 13.426978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<14.997713, 15.570284, 19.103769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.294282, 15.824818, 19.188972>,  <15.472223, 15.977538, 19.240095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.294282, 15.824818, 19.188972>,  <14.997713, 15.570284, 19.103769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.294282, 15.824818, 19.188972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029223, -0.286510, 0.957631,
		0.670402, -0.716234, -0.193829,
		0.741422, 0.636334, 0.213008,
		15.516708, 16.015718, 19.252874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.370620, 15.193201, 19.566998>,  <14.997713, 15.570284, 19.103769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.370620, 15.193201, 19.566998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.487201, 15.569183, 19.638035>,  <15.557149, 15.794773, 19.680656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.487201, 15.569183, 19.638035>,  <15.370620, 15.193201, 19.566998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.487201, 15.569183, 19.638035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080874, -0.209201, 0.974522,
		0.953161, -0.269663, -0.136990,
		0.291451, 0.939956, 0.177594,
		15.574636, 15.851170, 19.691313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.905437, 15.143952, 20.014927>,  <15.370620, 15.193201, 19.566998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.905437, 15.143952, 20.014927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.754048, 15.511131, 20.062479>,  <15.663216, 15.731439, 20.091011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.754048, 15.511131, 20.062479>,  <15.905437, 15.143952, 20.014927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.754048, 15.511131, 20.062479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086737, -0.092697, 0.991909,
		0.921540, 0.385720, -0.044537,
		-0.378471, 0.917947, 0.118881,
		15.640507, 15.786515, 20.098143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.354546, 15.497566, 20.513458>,  <15.905437, 15.143952, 20.014927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.354546, 15.497566, 20.513458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.016479, 15.711285, 20.507496>,  <15.813640, 15.839516, 20.503920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.016479, 15.711285, 20.507496>,  <16.354546, 15.497566, 20.513458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.016479, 15.711285, 20.507496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031879, 0.078222, 0.996426,
		0.533553, 0.841670, -0.083143,
		-0.845166, 0.534297, -0.014904,
		15.762930, 15.871573, 20.503025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.510523, 16.238176, 20.699526>,  <16.354546, 15.497566, 20.513458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.510523, 16.238176, 20.699526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.137817, 16.129761, 20.796154>,  <15.914194, 16.064713, 20.854132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.137817, 16.129761, 20.796154>,  <16.510523, 16.238176, 20.699526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.137817, 16.129761, 20.796154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194829, 0.188185, 0.962615,
		-0.306365, 0.943994, -0.122538,
		-0.931763, -0.271037, 0.241571,
		15.858289, 16.048449, 20.868626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.379879, 16.584732, 21.374977>,  <16.510523, 16.238176, 20.699526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.379879, 16.584732, 21.374977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.056843, 16.348972, 21.366894>,  <15.863022, 16.207516, 21.362043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.056843, 16.348972, 21.366894>,  <16.379879, 16.584732, 21.374977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.056843, 16.348972, 21.366894> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051679, 0.036594, 0.997993,
		-0.587478, 0.807012, -0.060012,
		-0.807588, -0.589400, -0.020207,
		15.814567, 16.172152, 21.360832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.922689, 16.784119, 21.920973>,  <16.379879, 16.584732, 21.374977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.922689, 16.784119, 21.920973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.810557, 16.407562, 21.845924>,  <15.743279, 16.181629, 21.800896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.810557, 16.407562, 21.845924>,  <15.922689, 16.784119, 21.920973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.810557, 16.407562, 21.845924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081443, -0.171426, 0.981825,
		-0.956442, 0.290515, -0.028613,
		-0.280330, -0.941389, -0.187620,
		15.726459, 16.125145, 21.789639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.282553, 16.647146, 22.270420>,  <15.922689, 16.784119, 21.920973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.282553, 16.647146, 22.270420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.417985, 16.275940, 22.208260>,  <15.499244, 16.053217, 22.170963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.417985, 16.275940, 22.208260>,  <15.282553, 16.647146, 22.270420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.417985, 16.275940, 22.208260> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105446, -0.201537, 0.973789,
		-0.935011, -0.313318, -0.166092,
		0.338580, -0.928016, -0.155401,
		15.519559, 15.997535, 22.161640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.777673, 16.136847, 22.574438>,  <15.282553, 16.647146, 22.270420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.777673, 16.136847, 22.574438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.126674, 15.942482, 22.553919>,  <15.336074, 15.825864, 22.541607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.126674, 15.942482, 22.553919>,  <14.777673, 16.136847, 22.574438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.126674, 15.942482, 22.553919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073551, -0.234402, 0.969353,
		-0.483044, -0.841989, -0.240255,
		0.872501, -0.485912, -0.051297,
		15.388424, 15.796709, 22.538530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.658687, 15.571139, 22.999300>,  <14.777673, 16.136847, 22.574438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.658687, 15.571139, 22.999300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.058022, 15.592300, 22.990192>,  <15.297625, 15.604997, 22.984728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.058022, 15.592300, 22.990192>,  <14.658687, 15.571139, 22.999300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.058022, 15.592300, 22.990192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037279, -0.292209, 0.955628,
		0.043902, -0.954890, -0.293696,
		0.998340, 0.052903, -0.022769,
		15.357525, 15.608171, 22.983362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.815188, 14.994088, 23.382412>,  <14.658687, 15.571139, 22.999300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.815188, 14.994088, 23.382412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.157611, 15.199398, 23.406796>,  <15.363065, 15.322584, 23.421425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.157611, 15.199398, 23.406796>,  <14.815188, 14.994088, 23.382412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.157611, 15.199398, 23.406796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122855, -0.316607, 0.940567,
		0.502069, -0.797690, -0.334091,
		0.856057, 0.513274, 0.060958,
		15.414428, 15.353380, 23.425083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.215399, 14.549449, 23.680157>,  <14.815188, 14.994088, 23.382412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.215399, 14.549449, 23.680157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.364099, 14.913250, 23.754568>,  <15.453319, 15.131531, 23.799215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.364099, 14.913250, 23.754568>,  <15.215399, 14.549449, 23.680157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.364099, 14.913250, 23.754568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121192, -0.246223, 0.961606,
		0.920388, -0.334932, -0.201758,
		0.371750, 0.909503, 0.186029,
		15.475624, 15.186101, 23.810377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.879347, 14.509495, 24.158981>,  <15.215399, 14.549449, 23.680157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.879347, 14.509495, 24.158981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.705131, 14.868259, 24.189587>,  <15.600601, 15.083518, 24.207949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.705131, 14.868259, 24.189587>,  <15.879347, 14.509495, 24.158981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.705131, 14.868259, 24.189587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124993, -0.023915, 0.991869,
		0.891449, 0.441562, -0.101691,
		-0.435540, 0.896912, 0.076511,
		15.574469, 15.137333, 24.212540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.301561, 15.110106, 24.541321>,  <15.879347, 14.509495, 24.158981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.301561, 15.110106, 24.541321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.903745, 15.131924, 24.576895>,  <15.665054, 15.145014, 24.598240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.903745, 15.131924, 24.576895>,  <16.301561, 15.110106, 24.541321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.903745, 15.131924, 24.576895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085774, -0.057787, 0.994637,
		0.059389, 0.996838, 0.052793,
		-0.994543, 0.054542, 0.088935,
		15.605382, 15.148286, 24.603575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.869469, 15.048263, 24.036947>,  <16.301561, 15.110106, 24.541321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.869469, 15.048263, 24.036947> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.206104, 14.842663, 24.103317>,  <17.408087, 14.719303, 24.143139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.206104, 14.842663, 24.103317>,  <16.869469, 15.048263, 24.036947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.206104, 14.842663, 24.103317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163286, -0.050701, -0.985275,
		0.514844, 0.856291, 0.041259,
		0.841590, -0.514000, 0.165924,
		17.458582, 14.688463, 24.153095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.370964, 15.324472, 23.561558>,  <16.869469, 15.048263, 24.036947>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.370964, 15.324472, 23.561558> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.521175, 14.966461, 23.657810>,  <17.611303, 14.751655, 23.715561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.521175, 14.966461, 23.657810>,  <17.370964, 15.324472, 23.561558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.521175, 14.966461, 23.657810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311841, -0.122475, -0.942208,
		0.872773, 0.428865, 0.233113,
		0.375530, -0.895028, 0.240630,
		17.633835, 14.697953, 23.730000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.007721, 15.277544, 23.261311>,  <17.370964, 15.324472, 23.561558>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.007721, 15.277544, 23.261311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.909702, 14.892075, 23.303810>,  <17.850891, 14.660793, 23.329309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.909702, 14.892075, 23.303810>,  <18.007721, 15.277544, 23.261311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.909702, 14.892075, 23.303810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358709, -0.191929, -0.913505,
		0.900711, -0.185738, 0.392709,
		-0.245044, -0.963673, 0.106247,
		17.836189, 14.602973, 23.335684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.575047, 14.951681, 22.962797>,  <18.007721, 15.277544, 23.261311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.575047, 14.951681, 22.962797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.294922, 14.666576, 22.978472>,  <18.126848, 14.495513, 22.987877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.294922, 14.666576, 22.978472>,  <18.575047, 14.951681, 22.962797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.294922, 14.666576, 22.978472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259411, -0.305255, -0.916256,
		0.665036, -0.631497, 0.398672,
		-0.700310, -0.712763, 0.039189,
		18.084829, 14.452747, 22.990229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.887896, 14.359408, 22.693676>,  <18.575047, 14.951681, 22.962797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.887896, 14.359408, 22.693676> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.493462, 14.304939, 22.655535>,  <18.256802, 14.272258, 22.632650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.493462, 14.304939, 22.655535>,  <18.887896, 14.359408, 22.693676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.493462, 14.304939, 22.655535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130003, -0.274181, -0.952851,
		0.103609, -0.951988, 0.288069,
		-0.986086, -0.136173, -0.095353,
		18.197636, 14.264088, 22.626928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.896353, 13.812510, 22.416094>,  <18.887896, 14.359408, 22.693676>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.896353, 13.812510, 22.416094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.530674, 13.951241, 22.332232>,  <18.311266, 14.034479, 22.281914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.530674, 13.951241, 22.332232>,  <18.896353, 13.812510, 22.416094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.530674, 13.951241, 22.332232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063405, -0.388552, -0.919243,
		-0.400291, -0.853658, 0.333220,
		-0.914192, 0.346837, -0.209660,
		18.256414, 14.055288, 22.269335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.576670, 13.336914, 21.910383>,  <18.896353, 13.812510, 22.416094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.576670, 13.336914, 21.910383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.319511, 13.642006, 21.882298>,  <18.165216, 13.825061, 21.865446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.319511, 13.642006, 21.882298>,  <18.576670, 13.336914, 21.910383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.319511, 13.642006, 21.882298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109871, -0.182552, -0.977038,
		-0.758033, -0.620418, 0.201164,
		-0.642895, 0.762729, -0.070215,
		18.126642, 13.870825, 21.861233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.001654, 13.178736, 21.520437>,  <18.576670, 13.336914, 21.910383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.001654, 13.178736, 21.520437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.046242, 13.573849, 21.476875>,  <18.072994, 13.810917, 21.450739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.046242, 13.573849, 21.476875>,  <18.001654, 13.178736, 21.520437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.046242, 13.573849, 21.476875> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183573, -0.128169, -0.974615,
		-0.976665, 0.088651, -0.195618,
		0.111473, 0.987782, -0.108904,
		18.079683, 13.870183, 21.444204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.635117, 13.254010, 20.917887>,  <18.001654, 13.178736, 21.520437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.635117, 13.254010, 20.917887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.848305, 13.590347, 20.955681>,  <17.976217, 13.792150, 20.978357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.848305, 13.590347, 20.955681>,  <17.635117, 13.254010, 20.917887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.848305, 13.590347, 20.955681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034960, 0.089688, -0.995356,
		-0.845412, 0.533798, 0.018406,
		0.532970, 0.840842, 0.094485,
		18.008196, 13.842600, 20.984026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.452333, 13.623600, 20.396372>,  <17.635117, 13.254010, 20.917887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.452333, 13.623600, 20.396372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.774815, 13.841343, 20.489079>,  <17.968304, 13.971989, 20.544703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.774815, 13.841343, 20.489079>,  <17.452333, 13.623600, 20.396372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.774815, 13.841343, 20.489079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103634, 0.255751, -0.961172,
		-0.582495, 0.798917, 0.149772,
		0.806201, 0.544357, 0.231768,
		18.016674, 14.004650, 20.558609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.352827, 14.319666, 20.209887>,  <17.452333, 13.623600, 20.396372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.352827, 14.319666, 20.209887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.740284, 14.220284, 20.210178>,  <17.972757, 14.160654, 20.210354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.740284, 14.220284, 20.210178>,  <17.352827, 14.319666, 20.209887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.740284, 14.220284, 20.210178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071133, 0.274501, -0.958952,
		0.238057, 0.928934, 0.283567,
		0.968643, -0.248456, 0.000731,
		18.030876, 14.145746, 20.210398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.593082, 14.706139, 19.730759>,  <17.352827, 14.319666, 20.209887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.593082, 14.706139, 19.730759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.905453, 14.462036, 19.784044>,  <18.092875, 14.315575, 19.816015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.905453, 14.462036, 19.784044>,  <17.593082, 14.706139, 19.730759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.905453, 14.462036, 19.784044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327559, 0.218509, -0.919217,
		0.531849, 0.761473, 0.370533,
		0.780923, -0.610256, 0.133214,
		18.139730, 14.278959, 19.824009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.234499, 15.107150, 19.541098>,  <17.593082, 14.706139, 19.730759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.234499, 15.107150, 19.541098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.297276, 14.715153, 19.492140>,  <18.334942, 14.479954, 19.462765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.297276, 14.715153, 19.492140>,  <18.234499, 15.107150, 19.541098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.297276, 14.715153, 19.492140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258748, 0.160402, -0.952534,
		0.953110, 0.117823, 0.278746,
		0.156942, -0.979994, -0.122394,
		18.344358, 14.421154, 19.455421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.923304, 14.943472, 19.283024>,  <18.234499, 15.107150, 19.541098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.923304, 14.943472, 19.283024> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.672169, 14.657913, 19.158978>,  <18.521488, 14.486578, 19.084549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.672169, 14.657913, 19.158978>,  <18.923304, 14.943472, 19.283024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.672169, 14.657913, 19.158978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169420, 0.263535, -0.949656,
		0.759684, -0.648767, -0.044508,
		-0.627835, -0.713898, -0.310118,
		18.483818, 14.443744, 19.065943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.599663, 14.726091, 19.545523>,  <18.923304, 14.943472, 19.283024>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.599663, 14.726091, 19.545523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.971710, 14.864468, 19.594849>,  <20.194939, 14.947494, 19.624443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.971710, 14.864468, 19.594849>,  <19.599663, 14.726091, 19.545523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.971710, 14.864468, 19.594849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086149, -0.120884, 0.988921,
		0.357015, -0.930436, -0.082634,
		0.930117, 0.345941, 0.123313,
		20.250746, 14.968250, 19.631842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.872488, 14.321791, 20.100466>,  <19.599663, 14.726091, 19.545523>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.872488, 14.321791, 20.100466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.079540, 14.664028, 20.102188>,  <20.203772, 14.869371, 20.103222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.079540, 14.664028, 20.102188>,  <19.872488, 14.321791, 20.100466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.079540, 14.664028, 20.102188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084620, 0.046184, 0.995342,
		0.851411, -0.515582, 0.096306,
		0.517628, 0.855595, 0.004307,
		20.234829, 14.920707, 20.103479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.436968, 14.199284, 20.411884>,  <19.872488, 14.321791, 20.100466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.436968, 14.199284, 20.411884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.409084, 14.596943, 20.444889>,  <20.392355, 14.835539, 20.464691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.409084, 14.596943, 20.444889>,  <20.436968, 14.199284, 20.411884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.409084, 14.596943, 20.444889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161255, -0.070395, 0.984399,
		0.984448, 0.081925, -0.155404,
		-0.069707, 0.994149, 0.082511,
		20.388172, 14.895187, 20.469643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.047758, 14.425917, 20.776438>,  <20.436968, 14.199284, 20.411884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.047758, 14.425917, 20.776438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.772266, 14.712887, 20.818296>,  <20.606972, 14.885069, 20.843412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.772266, 14.712887, 20.818296>,  <21.047758, 14.425917, 20.776438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.772266, 14.712887, 20.818296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240868, 0.090277, 0.966350,
		0.683838, 0.690760, -0.234981,
		-0.688730, 0.717426, 0.104647,
		20.565647, 14.928115, 20.849691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.417746, 14.872436, 21.213919>,  <21.047758, 14.425917, 20.776438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.417746, 14.872436, 21.213919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.041809, 15.008507, 21.226442>,  <20.816248, 15.090149, 21.233957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.041809, 15.008507, 21.226442>,  <21.417746, 14.872436, 21.213919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.041809, 15.008507, 21.226442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159518, 0.355962, 0.920785,
		0.302084, 0.870386, -0.388811,
		-0.939840, 0.340177, 0.031311,
		20.759857, 15.110559, 21.235836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.420176, 15.525961, 21.391182>,  <21.417746, 14.872436, 21.213919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.420176, 15.525961, 21.391182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.056351, 15.400501, 21.500233>,  <20.838057, 15.325226, 21.565662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.056351, 15.400501, 21.500233>,  <21.420176, 15.525961, 21.391182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.056351, 15.400501, 21.500233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231883, 0.161355, 0.959268,
		-0.344863, 0.935729, -0.074032,
		-0.909561, -0.313649, 0.272625,
		20.783484, 15.306407, 21.582020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.169790, 15.970632, 21.851088>,  <21.420176, 15.525961, 21.391182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.169790, 15.970632, 21.851088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.919449, 15.668747, 21.929794>,  <20.769243, 15.487617, 21.977018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.919449, 15.668747, 21.929794>,  <21.169790, 15.970632, 21.851088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.919449, 15.668747, 21.929794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000155, 0.252405, 0.967622,
		-0.779940, 0.605559, -0.158086,
		-0.625854, -0.754712, 0.196767,
		20.731693, 15.442333, 21.988825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.904564, 16.733847, 21.633163>,  <21.169790, 15.970632, 21.851088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.904564, 16.733847, 21.633163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.814766, 17.116791, 21.705898>,  <20.760887, 17.346558, 21.749540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.814766, 17.116791, 21.705898>,  <20.904564, 16.733847, 21.633163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.814766, 17.116791, 21.705898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305297, 0.246305, -0.919852,
		-0.925417, -0.150985, -0.347573,
		-0.224493, 0.957360, 0.181839,
		20.747417, 17.403999, 21.760450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.396856, 16.987215, 21.135498>,  <20.904564, 16.733847, 21.633163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.396856, 16.987215, 21.135498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.613403, 17.299171, 21.261158>,  <20.743332, 17.486345, 21.336554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.613403, 17.299171, 21.261158>,  <20.396856, 16.987215, 21.135498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.613403, 17.299171, 21.261158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105593, 0.307613, -0.945634,
		-0.834130, 0.545107, 0.084180,
		0.541366, 0.779893, 0.314149,
		20.775814, 17.533140, 21.355402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.233562, 17.542347, 20.734913>,  <20.396856, 16.987215, 21.135498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.233562, 17.542347, 20.734913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.586491, 17.661491, 20.880672>,  <20.798248, 17.732979, 20.968128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.586491, 17.661491, 20.880672>,  <20.233562, 17.542347, 20.734913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.586491, 17.661491, 20.880672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243672, 0.373294, -0.895140,
		-0.402656, 0.878595, 0.256784,
		0.882322, 0.297862, 0.364398,
		20.851187, 17.750851, 20.989992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.276995, 18.344229, 20.574366>,  <20.233562, 17.542347, 20.734913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.276995, 18.344229, 20.574366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.643585, 18.189766, 20.616226>,  <20.863541, 18.097088, 20.641342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.643585, 18.189766, 20.616226>,  <20.276995, 18.344229, 20.574366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.643585, 18.189766, 20.616226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266046, 0.392860, -0.880273,
		0.298810, 0.834592, 0.462783,
		0.916478, -0.386156, 0.104650,
		20.918530, 18.073919, 20.647621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.518602, 18.907333, 20.401613>,  <20.276995, 18.344229, 20.574366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.518602, 18.907333, 20.401613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.811756, 18.635651, 20.385828>,  <20.987648, 18.472641, 20.376356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.811756, 18.635651, 20.385828>,  <20.518602, 18.907333, 20.401613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.811756, 18.635651, 20.385828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407072, 0.484244, -0.774468,
		0.545133, 0.551532, 0.631381,
		0.732887, -0.679205, -0.039464,
		21.031622, 18.431889, 20.373989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.262470, 19.278063, 20.212980>,  <20.518602, 18.907333, 20.401613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.262470, 19.278063, 20.212980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.288673, 18.884956, 20.143835>,  <21.304396, 18.649094, 20.102348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.288673, 18.884956, 20.143835>,  <21.262470, 19.278063, 20.212980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.288673, 18.884956, 20.143835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256415, 0.183997, -0.948892,
		0.964344, 0.017836, 0.264049,
		0.065508, -0.982765, -0.172863,
		21.308327, 18.590126, 20.091976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.968275, 19.074728, 20.012825>,  <21.262470, 19.278063, 20.212980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.968275, 19.074728, 20.012825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.717812, 18.805836, 19.854820>,  <21.567533, 18.644501, 19.760017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.717812, 18.805836, 19.854820>,  <21.968275, 19.074728, 20.012825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.717812, 18.805836, 19.854820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362308, 0.197745, -0.910840,
		0.690406, -0.713445, 0.119735,
		-0.626157, -0.672230, -0.395011,
		21.529964, 18.604166, 19.736317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<15.580918, 19.082287, 24.114254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.635978, 18.691727, 24.047688>,  <15.669013, 18.457390, 24.007748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.635978, 18.691727, 24.047688>,  <15.580918, 19.082287, 24.114254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.635978, 18.691727, 24.047688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109456, 0.181984, -0.977191,
		0.984415, 0.116294, 0.131922,
		0.137649, -0.976400, -0.166418,
		15.677273, 18.398806, 23.997763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.001991, 19.099243, 23.567816>,  <15.580918, 19.082287, 24.114254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.001991, 19.099243, 23.567816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.901002, 18.712219, 23.564131>,  <15.840408, 18.480005, 23.561920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.901002, 18.712219, 23.564131>,  <16.001991, 19.099243, 23.567816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.901002, 18.712219, 23.564131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116725, -0.021004, -0.992942,
		0.960538, -0.251765, 0.118242,
		-0.252472, -0.967560, -0.009212,
		15.825260, 18.421951, 23.561367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.532600, 18.691404, 23.232658>,  <16.001991, 19.099243, 23.567816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.532600, 18.691404, 23.232658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.202099, 18.470112, 23.190250>,  <16.003798, 18.337337, 23.164806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.202099, 18.470112, 23.190250>,  <16.532600, 18.691404, 23.232658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.202099, 18.470112, 23.190250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197179, -0.107751, -0.974428,
		0.527658, -0.826031, 0.198115,
		-0.826255, -0.553229, -0.106020,
		15.954223, 18.304144, 23.158445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.660587, 18.183619, 22.733767>,  <16.532600, 18.691404, 23.232658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.660587, 18.183619, 22.733767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.262516, 18.221867, 22.742489>,  <16.023672, 18.244816, 22.747723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.262516, 18.221867, 22.742489>,  <16.660587, 18.183619, 22.733767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.262516, 18.221867, 22.742489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040561, -0.198860, -0.979188,
		-0.089292, -0.975352, 0.201780,
		-0.995179, 0.095618, 0.021805,
		15.963963, 18.250553, 22.749031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.353205, 17.726381, 22.086206>,  <16.660587, 18.183619, 22.733767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.353205, 17.726381, 22.086206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.043026, 17.946545, 22.209969>,  <15.856918, 18.078642, 22.284225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.043026, 17.946545, 22.209969>,  <16.353205, 17.726381, 22.086206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.043026, 17.946545, 22.209969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393310, -0.037720, -0.918632,
		-0.493952, -0.834043, 0.245731,
		-0.775448, 0.550408, 0.309406,
		15.810391, 18.111668, 22.302790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.911114, 17.531572, 21.674202>,  <16.353205, 17.726381, 22.086206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.911114, 17.531572, 21.674202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.757363, 17.890102, 21.762613>,  <15.665112, 18.105221, 21.815660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.757363, 17.890102, 21.762613>,  <15.911114, 17.531572, 21.674202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.757363, 17.890102, 21.762613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275472, 0.117155, -0.954144,
		-0.881119, -0.427638, 0.201881,
		-0.384377, 0.896326, 0.221030,
		15.642050, 18.159000, 21.828922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.548054, 17.611280, 21.032604>,  <15.911114, 17.531572, 21.674202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.548054, 17.611280, 21.032604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.563521, 17.975040, 21.198254>,  <15.572802, 18.193296, 21.297644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.563521, 17.975040, 21.198254>,  <15.548054, 17.611280, 21.032604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.563521, 17.975040, 21.198254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275151, 0.408105, -0.870484,
		-0.960623, -0.080286, 0.266003,
		0.038669, 0.909398, 0.414126,
		15.575122, 18.247860, 21.322491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.877321, 18.009586, 20.832470>,  <15.548054, 17.611280, 21.032604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.877321, 18.009586, 20.832470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.178838, 18.262501, 20.904039>,  <15.359748, 18.414249, 20.946981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.178838, 18.262501, 20.904039>,  <14.877321, 18.009586, 20.832470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.178838, 18.262501, 20.904039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242548, 0.520780, -0.818510,
		-0.610712, 0.573589, 0.545919,
		0.753792, 0.632285, 0.178924,
		15.404975, 18.452187, 20.957716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.577301, 18.644863, 20.586891>,  <14.877321, 18.009586, 20.832470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.577301, 18.644863, 20.586891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.976457, 18.669971, 20.593573>,  <15.215950, 18.685036, 20.597582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.976457, 18.669971, 20.593573>,  <14.577301, 18.644863, 20.586891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.976457, 18.669971, 20.593573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018882, 0.526387, -0.850035,
		-0.062151, 0.847925, 0.526461,
		0.997888, 0.062771, 0.016705,
		15.275823, 18.688803, 20.598583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.819466, 19.448828, 20.414095>,  <14.577301, 18.644863, 20.586891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.819466, 19.448828, 20.414095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.139655, 19.222874, 20.333950>,  <15.331769, 19.087301, 20.285862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.139655, 19.222874, 20.333950>,  <14.819466, 19.448828, 20.414095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.139655, 19.222874, 20.333950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139937, 0.501192, -0.853946,
		0.582804, 0.655523, 0.480239,
		0.800473, -0.564887, -0.200364,
		15.379797, 19.053408, 20.273840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.429069, 19.931101, 20.331175>,  <14.819466, 19.448828, 20.414095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.429069, 19.931101, 20.331175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.517276, 19.598057, 20.127947>,  <15.570200, 19.398232, 20.006010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.517276, 19.598057, 20.127947>,  <15.429069, 19.931101, 20.331175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.517276, 19.598057, 20.127947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100692, 0.537542, -0.837204,
		0.970172, 0.133460, 0.202374,
		0.220517, -0.832609, -0.508070,
		15.583431, 19.348274, 19.975527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.880950, 20.267494, 19.768930>,  <15.429069, 19.931101, 20.331175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.880950, 20.267494, 19.768930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.818934, 19.896164, 19.633768>,  <15.781725, 19.673367, 19.552671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.818934, 19.896164, 19.633768>,  <15.880950, 20.267494, 19.768930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.818934, 19.896164, 19.633768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055679, 0.333285, -0.941181,
		0.986338, -0.164734, 0.000016,
		-0.155039, -0.928323, -0.337904,
		15.772423, 19.617666, 19.532396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.538452, 19.989311, 20.075085>,  <15.880950, 20.267494, 19.768930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.538452, 19.989311, 20.075085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.858330, 20.218929, 20.145472>,  <17.050257, 20.356699, 20.187704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.858330, 20.218929, 20.145472>,  <16.538452, 19.989311, 20.075085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.858330, 20.218929, 20.145472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163670, -0.073560, 0.983769,
		0.577670, -0.815514, 0.035128,
		0.799693, 0.574044, 0.175968,
		17.098238, 20.391142, 20.198261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.834850, 19.620689, 20.612154>,  <16.538452, 19.989311, 20.075085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.834850, 19.620689, 20.612154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.043144, 19.962109, 20.618967>,  <17.168121, 20.166960, 20.623055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.043144, 19.962109, 20.618967>,  <16.834850, 19.620689, 20.612154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.043144, 19.962109, 20.618967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130572, 0.059913, 0.989627,
		0.843673, -0.517559, 0.142648,
		0.520737, 0.853547, 0.017032,
		17.199366, 20.218172, 20.624077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.522791, 19.547476, 20.876925>,  <16.834850, 19.620689, 20.612154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.522791, 19.547476, 20.876925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.415482, 19.926453, 20.946650>,  <17.351095, 20.153839, 20.988485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.415482, 19.926453, 20.946650>,  <17.522791, 19.547476, 20.876925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.415482, 19.926453, 20.946650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132566, -0.142916, 0.980817,
		0.954178, 0.286235, -0.087257,
		-0.268273, 0.947441, 0.174313,
		17.334999, 20.210686, 20.998943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.051935, 19.871445, 21.205629>,  <17.522791, 19.547476, 20.876925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.051935, 19.871445, 21.205629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.738483, 20.097569, 21.308666>,  <17.550413, 20.233242, 21.370487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.738483, 20.097569, 21.308666>,  <18.051935, 19.871445, 21.205629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.738483, 20.097569, 21.308666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243562, -0.101873, 0.964520,
		0.571493, 0.818565, -0.057857,
		-0.783628, 0.565308, 0.257591,
		17.503395, 20.267160, 21.385944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.286243, 20.180439, 21.649284>,  <18.051935, 19.871445, 21.205629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.286243, 20.180439, 21.649284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.905869, 20.282444, 21.719357>,  <17.677645, 20.343647, 21.761400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.905869, 20.282444, 21.719357>,  <18.286243, 20.180439, 21.649284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.905869, 20.282444, 21.719357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125822, -0.198519, 0.971987,
		0.282647, 0.946339, 0.156693,
		-0.950936, 0.255014, 0.175182,
		17.620588, 20.358948, 21.771912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.240589, 20.646545, 22.223572>,  <18.286243, 20.180439, 21.649284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.240589, 20.646545, 22.223572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.877316, 20.479141, 22.226463>,  <17.659351, 20.378698, 22.228199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.877316, 20.479141, 22.226463>,  <18.240589, 20.646545, 22.223572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.877316, 20.479141, 22.226463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097774, -0.195315, 0.975855,
		-0.406994, 0.886962, 0.218301,
		-0.908183, -0.418511, 0.007230,
		17.604860, 20.353588, 22.228632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.903124, 20.892315, 22.762518>,  <18.240589, 20.646545, 22.223572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.903124, 20.892315, 22.762518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.707436, 20.549774, 22.696392>,  <17.590023, 20.344250, 22.656717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.707436, 20.549774, 22.696392>,  <17.903124, 20.892315, 22.762518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.707436, 20.549774, 22.696392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062547, -0.223506, 0.972694,
		-0.869915, 0.465520, 0.162906,
		-0.489219, -0.856350, -0.165314,
		17.560671, 20.292870, 22.646797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.492123, 20.835772, 23.230568>,  <17.903124, 20.892315, 22.762518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.492123, 20.835772, 23.230568> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.462898, 20.456650, 23.106421>,  <17.445364, 20.229177, 23.031933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.462898, 20.456650, 23.106421>,  <17.492123, 20.835772, 23.230568>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.462898, 20.456650, 23.106421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054865, -0.306910, 0.950156,
		-0.995817, 0.086446, -0.029579,
		-0.073059, -0.947805, -0.310369,
		17.440981, 20.172308, 23.013309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.973362, 20.525776, 23.542789>,  <17.492123, 20.835772, 23.230568>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.973362, 20.525776, 23.542789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.227913, 20.227627, 23.463345>,  <17.380644, 20.048737, 23.415678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.227913, 20.227627, 23.463345>,  <16.973362, 20.525776, 23.542789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.227913, 20.227627, 23.463345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005281, -0.253262, 0.967383,
		-0.771362, -0.616667, -0.157233,
		0.636375, -0.745372, -0.198613,
		17.418825, 20.004015, 23.403761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.809759, 20.068171, 24.102741>,  <16.973362, 20.525776, 23.542789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.809759, 20.068171, 24.102741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.153774, 19.918472, 23.964018>,  <17.360184, 19.828653, 23.880783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.153774, 19.918472, 23.964018>,  <16.809759, 20.068171, 24.102741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.153774, 19.918472, 23.964018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334815, -0.098951, 0.937074,
		-0.385013, -0.922035, 0.040201,
		0.860037, -0.374245, -0.346809,
		17.411785, 19.806198, 23.859976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.867466, 19.428183, 24.468458>,  <16.809759, 20.068171, 24.102741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.867466, 19.428183, 24.468458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.228680, 19.522564, 24.324871>,  <17.445408, 19.579193, 24.238718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.228680, 19.522564, 24.324871>,  <16.867466, 19.428183, 24.468458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.228680, 19.522564, 24.324871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408173, -0.210847, 0.888222,
		0.133891, -0.948615, -0.286711,
		0.903033, 0.235953, -0.358968,
		17.499590, 19.593349, 24.217180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.322359, 18.869297, 24.563772>,  <16.867466, 19.428183, 24.468458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.322359, 18.869297, 24.563772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.578102, 19.174843, 24.528599>,  <17.731548, 19.358171, 24.507494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.578102, 19.174843, 24.528599>,  <17.322359, 18.869297, 24.563772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.578102, 19.174843, 24.528599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473209, -0.300757, 0.828020,
		0.606051, -0.571010, -0.553760,
		0.639356, 0.763867, -0.087933,
		17.769909, 19.404003, 24.502218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.032806, 18.568785, 24.755396>,  <17.322359, 18.869297, 24.563772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.032806, 18.568785, 24.755396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.108910, 18.960968, 24.775406>,  <18.154572, 19.196278, 24.787411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.108910, 18.960968, 24.775406>,  <18.032806, 18.568785, 24.755396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.108910, 18.960968, 24.775406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668547, -0.166708, 0.724744,
		0.718921, -0.104446, -0.687200,
		0.190259, 0.980459, 0.050023,
		18.165987, 19.255106, 24.790413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.842710, 18.726469, 24.794739>,  <18.032806, 18.568785, 24.755396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.842710, 18.726469, 24.794739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.619404, 19.004005, 24.976692>,  <18.485420, 19.170528, 25.085865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.619404, 19.004005, 24.976692>,  <18.842710, 18.726469, 24.794739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.619404, 19.004005, 24.976692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510011, -0.145451, 0.847781,
		0.654390, 0.705285, -0.272666,
		-0.558268, 0.693842, 0.454885,
		18.451923, 19.212158, 25.113157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.355719, 18.518829, 24.225254>,  <18.842710, 18.726469, 24.794739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.355719, 18.518829, 24.225254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.752163, 18.474800, 24.255150>,  <19.990028, 18.448383, 24.273087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.752163, 18.474800, 24.255150>,  <19.355719, 18.518829, 24.225254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.752163, 18.474800, 24.255150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035287, -0.324154, -0.945346,
		0.128283, 0.939579, -0.317388,
		0.991110, -0.110072, 0.074739,
		20.049496, 18.441778, 24.277571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.745975, 18.905619, 23.653719>,  <19.355719, 18.518829, 24.225254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.745975, 18.905619, 23.653719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.030701, 18.658329, 23.787062>,  <20.201536, 18.509956, 23.867067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.030701, 18.658329, 23.787062>,  <19.745975, 18.905619, 23.653719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.030701, 18.658329, 23.787062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256319, -0.213238, -0.942778,
		0.653930, 0.756526, 0.006677,
		0.711812, -0.618222, 0.333355,
		20.244244, 18.472862, 23.887068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.445730, 19.082502, 23.437445>,  <19.745975, 18.905619, 23.653719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.445730, 19.082502, 23.437445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.446533, 18.687305, 23.499239>,  <20.447016, 18.450188, 23.536316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.446533, 18.687305, 23.499239>,  <20.445730, 19.082502, 23.437445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.446533, 18.687305, 23.499239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365926, -0.143044, -0.919585,
		0.930642, 0.058375, 0.361246,
		0.002007, -0.987993, 0.154484,
		20.447136, 18.390907, 23.545584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.915489, 18.759073, 22.960928>,  <20.445730, 19.082502, 23.437445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.915489, 18.759073, 22.960928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.727135, 18.425846, 23.077042>,  <20.614122, 18.225910, 23.146709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.727135, 18.425846, 23.077042>,  <20.915489, 18.759073, 22.960928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.727135, 18.425846, 23.077042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084663, -0.370202, -0.925085,
		0.878123, -0.411033, 0.244852,
		-0.470885, -0.833068, 0.290284,
		20.585869, 18.175926, 23.164127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.373358, 18.157148, 22.812212>,  <20.915489, 18.759073, 22.960928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.373358, 18.157148, 22.812212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.998756, 18.019901, 22.841148>,  <20.773996, 17.937553, 22.858509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.998756, 18.019901, 22.841148>,  <21.373358, 18.157148, 22.812212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.998756, 18.019901, 22.841148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081144, -0.412743, -0.907226,
		0.341144, -0.843749, 0.414377,
		-0.936502, -0.343119, 0.072340,
		20.717806, 17.916965, 22.862850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.406797, 17.401258, 22.765610>,  <21.373358, 18.157148, 22.812212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.406797, 17.401258, 22.765610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.049229, 17.546467, 22.660450>,  <20.834686, 17.633593, 22.597355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.049229, 17.546467, 22.660450>,  <21.406797, 17.401258, 22.765610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.049229, 17.546467, 22.660450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131711, -0.347896, -0.928235,
		-0.428431, -0.864398, 0.263178,
		-0.893923, 0.363021, -0.262900,
		20.781052, 17.655373, 22.581579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.202721, 16.918192, 22.265648>,  <21.406797, 17.401258, 22.765610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.202721, 16.918192, 22.265648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.980774, 17.249512, 22.234552>,  <20.847607, 17.448303, 22.215895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.980774, 17.249512, 22.234552>,  <21.202721, 16.918192, 22.265648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.980774, 17.249512, 22.234552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066194, -0.049193, -0.996593,
		-0.829303, -0.558121, -0.027533,
		-0.554865, 0.828300, -0.077740,
		20.814314, 17.498001, 22.211231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.656712, 16.274204, 22.289162>,  <21.202721, 16.918192, 22.265648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.656712, 16.274204, 22.289162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.590702, 15.886715, 22.363291>,  <20.551096, 15.654222, 22.407768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.590702, 15.886715, 22.363291>,  <20.656712, 16.274204, 22.289162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.590702, 15.886715, 22.363291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397953, 0.237321, 0.886178,
		-0.902442, 0.072490, -0.424670,
		-0.165022, -0.968723, 0.185321,
		20.541195, 15.596098, 22.418886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.026773, 16.304010, 22.582090>,  <20.656712, 16.274204, 22.289162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.026773, 16.304010, 22.582090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.182888, 15.952858, 22.693090>,  <20.276556, 15.742167, 22.759691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.182888, 15.952858, 22.693090>,  <20.026773, 16.304010, 22.582090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.182888, 15.952858, 22.693090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278398, 0.174770, 0.944431,
		-0.877595, -0.445852, -0.176190,
		0.390284, -0.877879, 0.277501,
		20.299973, 15.689494, 22.776340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.452841, 15.923670, 23.059856>,  <20.026773, 16.304010, 22.582090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.452841, 15.923670, 23.059856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.798683, 15.747913, 23.157339>,  <20.006187, 15.642459, 23.215830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.798683, 15.747913, 23.157339>,  <19.452841, 15.923670, 23.059856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.798683, 15.747913, 23.157339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292704, -0.046224, 0.955085,
		-0.408393, -0.897105, -0.168577,
		0.864604, -0.439393, 0.243709,
		20.058064, 15.616096, 23.230452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.272198, 15.335396, 23.385822>,  <19.452841, 15.923670, 23.059856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.272198, 15.335396, 23.385822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.650658, 15.375568, 23.508926>,  <19.877733, 15.399672, 23.582788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.650658, 15.375568, 23.508926>,  <19.272198, 15.335396, 23.385822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.650658, 15.375568, 23.508926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281550, -0.213945, 0.935391,
		0.159786, -0.971669, -0.174148,
		0.946149, 0.100431, 0.307759,
		19.934502, 15.405698, 23.601254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.378716, 14.774395, 23.843870>,  <19.272198, 15.335396, 23.385822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.378716, 14.774395, 23.843870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.645084, 15.055527, 23.943935>,  <19.804905, 15.224206, 24.003975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.645084, 15.055527, 23.943935>,  <19.378716, 14.774395, 23.843870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.645084, 15.055527, 23.943935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175695, -0.178144, 0.968192,
		0.725038, -0.688691, 0.004854,
		0.665921, 0.702829, 0.250161,
		19.844860, 15.266376, 24.018984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.557959, 14.537009, 24.530804>,  <19.378716, 14.774395, 23.843870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.557959, 14.537009, 24.530804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.715515, 14.902657, 24.492355>,  <19.810049, 15.122045, 24.469286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.715515, 14.902657, 24.492355>,  <19.557959, 14.537009, 24.530804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.715515, 14.902657, 24.492355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106987, 0.058266, 0.992552,
		0.912910, -0.401240, -0.074848,
		0.393890, 0.914118, -0.096119,
		19.833683, 15.176892, 24.463520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.148706, 14.538376, 25.045002>,  <19.557959, 14.537009, 24.530804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.148706, 14.538376, 25.045002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.025387, 14.910217, 24.964216>,  <19.951395, 15.133322, 24.915745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.025387, 14.910217, 24.964216>,  <20.148706, 14.538376, 25.045002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.025387, 14.910217, 24.964216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117965, 0.248029, 0.961543,
		0.943947, 0.272617, -0.186128,
		-0.308298, 0.929603, -0.201967,
		19.932898, 15.189098, 24.903625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.610710, 14.960844, 25.410240>,  <20.148706, 14.538376, 25.045002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.610710, 14.960844, 25.410240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.299328, 15.196739, 25.324249>,  <20.112499, 15.338277, 25.272655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.299328, 15.196739, 25.324249>,  <20.610710, 14.960844, 25.410240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.299328, 15.196739, 25.324249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096827, 0.451205, 0.887152,
		0.620187, 0.669793, -0.408346,
		-0.778456, 0.589738, -0.214977,
		20.065792, 15.373661, 25.259756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.827566, 15.658923, 25.590481>,  <20.610710, 14.960844, 25.410240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.827566, 15.658923, 25.590481> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.428005, 15.641094, 25.584671>,  <20.188269, 15.630397, 25.581186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.428005, 15.641094, 25.584671>,  <20.827566, 15.658923, 25.590481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.428005, 15.641094, 25.584671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037907, 0.585740, 0.809612,
		-0.027580, 0.809272, -0.586786,
		-0.998901, -0.044573, -0.014522,
		20.128336, 15.627723, 25.580315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<20.491186, 16.710613, 9.117351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.117199, 16.647945, 9.244656>,  <19.892807, 16.610344, 9.321039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.117199, 16.647945, 9.244656>,  <20.491186, 16.710613, 9.117351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.117199, 16.647945, 9.244656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233264, 0.404402, 0.884334,
		-0.267255, 0.901063, -0.341557,
		-0.934967, -0.156669, 0.318264,
		19.836708, 16.600945, 9.340135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.512848, 16.905193, 9.800448>,  <20.491186, 16.710613, 9.117351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.512848, 16.905193, 9.800448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.135017, 16.774479, 9.812981>,  <19.908319, 16.696051, 9.820500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.135017, 16.774479, 9.812981>,  <20.512848, 16.905193, 9.800448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.135017, 16.774479, 9.812981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038549, 0.205190, 0.977963,
		-0.326016, 0.922554, -0.206416,
		-0.944578, -0.326788, 0.031332,
		19.851645, 16.676443, 9.822380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.172047, 17.435648, 10.209116>,  <20.512848, 16.905193, 9.800448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.172047, 17.435648, 10.209116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.961349, 17.095650, 10.211899>,  <19.834932, 16.891651, 10.213569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.961349, 17.095650, 10.211899>,  <20.172047, 17.435648, 10.209116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.961349, 17.095650, 10.211899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079517, 0.057422, 0.995178,
		-0.846298, 0.523649, -0.097835,
		-0.526742, -0.849997, 0.006958,
		19.803328, 16.840651, 10.213986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.563066, 17.459946, 10.778319>,  <20.172047, 17.435648, 10.209116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.563066, 17.459946, 10.778319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.600906, 17.065697, 10.722320>,  <19.623610, 16.829147, 10.688720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.600906, 17.065697, 10.722320>,  <19.563066, 17.459946, 10.778319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.600906, 17.065697, 10.722320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139425, -0.152361, 0.978441,
		-0.985704, -0.073041, -0.151834,
		0.094600, -0.985622, -0.139999,
		19.629286, 16.770010, 10.680320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.069672, 17.046621, 11.243681>,  <19.563066, 17.459946, 10.778319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.069672, 17.046621, 11.243681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.351631, 16.790489, 11.121635>,  <19.520807, 16.636810, 11.048409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.351631, 16.790489, 11.121635>,  <19.069672, 17.046621, 11.243681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.351631, 16.790489, 11.121635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149721, -0.286144, 0.946417,
		-0.693325, -0.712811, -0.105832,
		0.704899, -0.640330, -0.305113,
		19.563101, 16.598391, 11.030102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.875006, 16.467800, 11.648396>,  <19.069672, 17.046621, 11.243681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.875006, 16.467800, 11.648396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.238312, 16.360481, 11.519975>,  <19.456295, 16.296091, 11.442922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.238312, 16.360481, 11.519975>,  <18.875006, 16.467800, 11.648396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.238312, 16.360481, 11.519975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125563, -0.557184, 0.820841,
		-0.399113, -0.785852, -0.472381,
		0.908263, -0.268295, -0.321053,
		19.510790, 16.279993, 11.423658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.891825, 15.747472, 11.755010>,  <18.875006, 16.467800, 11.648396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.891825, 15.747472, 11.755010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.259499, 15.904106, 11.738215>,  <19.480103, 15.998087, 11.728139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.259499, 15.904106, 11.738215>,  <18.891825, 15.747472, 11.755010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.259499, 15.904106, 11.738215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230776, -0.449166, 0.863129,
		0.319131, -0.803063, -0.503234,
		0.919183, 0.391586, -0.041985,
		19.535254, 16.021582, 11.725620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.293737, 15.205415, 12.004881>,  <18.891825, 15.747472, 11.755010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.293737, 15.205415, 12.004881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.507175, 15.539028, 12.060972>,  <19.635239, 15.739196, 12.094627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.507175, 15.539028, 12.060972>,  <19.293737, 15.205415, 12.004881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.507175, 15.539028, 12.060972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208985, -0.290692, 0.933715,
		0.819513, -0.468920, -0.329413,
		0.533595, 0.834034, 0.140228,
		19.667253, 15.789238, 12.103041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.860422, 14.990025, 12.346408>,  <19.293737, 15.205415, 12.004881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.860422, 14.990025, 12.346408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.834084, 15.379288, 12.434616>,  <19.818279, 15.612845, 12.487541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.834084, 15.379288, 12.434616>,  <19.860422, 14.990025, 12.346408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.834084, 15.379288, 12.434616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227562, -0.200530, 0.952892,
		0.971535, 0.112927, -0.208250,
		-0.065847, 0.973157, 0.220520,
		19.814329, 15.671235, 12.500772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.433409, 15.261822, 12.695949>,  <19.860422, 14.990025, 12.346408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.433409, 15.261822, 12.695949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.162842, 15.543156, 12.783381>,  <20.000502, 15.711956, 12.835841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.162842, 15.543156, 12.783381>,  <20.433409, 15.261822, 12.695949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.162842, 15.543156, 12.783381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304753, -0.002905, 0.952427,
		0.670511, 0.710852, -0.212379,
		-0.676418, 0.703335, 0.218582,
		19.959917, 15.754156, 12.848956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.785143, 15.605801, 13.085360>,  <20.433409, 15.261822, 12.695949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.785143, 15.605801, 13.085360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.422951, 15.750961, 13.173367>,  <20.205635, 15.838058, 13.226171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.422951, 15.750961, 13.173367>,  <20.785143, 15.605801, 13.085360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.422951, 15.750961, 13.173367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227448, -0.022715, 0.973525,
		0.358291, 0.931551, -0.061973,
		-0.905481, 0.362901, 0.220018,
		20.151306, 15.859832, 13.239372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.871977, 16.198566, 13.496552>,  <20.785143, 15.605801, 13.085360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.871977, 16.198566, 13.496552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.530624, 16.003799, 13.571010>,  <20.325813, 15.886939, 13.615684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.530624, 16.003799, 13.571010>,  <20.871977, 16.198566, 13.496552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.530624, 16.003799, 13.571010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256741, -0.081822, 0.963010,
		-0.453677, 0.869606, 0.194837,
		-0.853382, -0.486919, 0.186143,
		20.274611, 15.857724, 13.626853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.799183, 16.861015, 13.641271>,  <20.871977, 16.198566, 13.496552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.799183, 16.861015, 13.641271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.069126, 17.147484, 13.712447>,  <21.231092, 17.319365, 13.755153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.069126, 17.147484, 13.712447>,  <20.799183, 16.861015, 13.641271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.069126, 17.147484, 13.712447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011519, 0.230877, -0.972915,
		-0.737856, 0.658631, 0.147560,
		0.674860, 0.716171, 0.177940,
		21.271584, 17.362335, 13.765829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.550795, 17.433456, 13.406813>,  <20.799183, 16.861015, 13.641271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.550795, 17.433456, 13.406813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.941711, 17.514355, 13.432108>,  <21.176262, 17.562893, 13.447285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.941711, 17.514355, 13.432108>,  <20.550795, 17.433456, 13.406813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.941711, 17.514355, 13.432108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072931, -0.040837, -0.996501,
		-0.198954, 0.978483, -0.054660,
		0.977291, 0.202244, 0.063237,
		21.234900, 17.575027, 13.451079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.512712, 18.039467, 13.123868>,  <20.550795, 17.433456, 13.406813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.512712, 18.039467, 13.123868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.881771, 17.890110, 13.085299>,  <21.103207, 17.800495, 13.062157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.881771, 17.890110, 13.085299>,  <20.512712, 18.039467, 13.123868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.881771, 17.890110, 13.085299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021962, 0.198756, -0.979803,
		0.385017, 0.906131, 0.175181,
		0.922648, -0.373393, -0.096425,
		21.158566, 17.778091, 13.056371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.878674, 18.534286, 12.707391>,  <20.512712, 18.039467, 13.123868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.878674, 18.534286, 12.707391> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.092991, 18.197163, 12.686992>,  <21.221581, 17.994888, 12.674752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.092991, 18.197163, 12.686992>,  <20.878674, 18.534286, 12.707391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.092991, 18.197163, 12.686992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188817, 0.178466, -0.965659,
		0.822968, 0.507763, 0.254757,
		0.535791, -0.842809, -0.050997,
		21.253729, 17.944321, 12.671693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.678978, 18.757841, 12.629043>,  <20.878674, 18.534286, 12.707391>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.678978, 18.757841, 12.629043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.596104, 18.392258, 12.489471>,  <21.546379, 18.172907, 12.405729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.596104, 18.392258, 12.489471>,  <21.678978, 18.757841, 12.629043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.596104, 18.392258, 12.489471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144958, 0.324049, -0.934869,
		0.967502, -0.244272, 0.065347,
		-0.207187, -0.913960, -0.348927,
		21.533947, 18.118069, 12.384793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.002424, 18.879303, 12.101004>,  <21.678978, 18.757841, 12.629043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.002424, 18.879303, 12.101004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.836933, 18.521191, 12.034911>,  <21.737638, 18.306324, 11.995255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.836933, 18.521191, 12.034911>,  <22.002424, 18.879303, 12.101004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.836933, 18.521191, 12.034911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037928, 0.164385, -0.985667,
		0.909610, -0.414066, -0.034054,
		-0.413729, -0.895280, -0.165231,
		21.712814, 18.252607, 11.985342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.445698, 18.514767, 11.646266>,  <22.002424, 18.879303, 12.101004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.445698, 18.514767, 11.646266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.071037, 18.383595, 11.597032>,  <21.846241, 18.304892, 11.567491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.071037, 18.383595, 11.597032>,  <22.445698, 18.514767, 11.646266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.071037, 18.383595, 11.597032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074702, 0.156300, -0.984881,
		0.342212, -0.931682, -0.121901,
		-0.936648, -0.327932, -0.123086,
		21.790043, 18.285215, 11.560105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.499527, 18.060453, 11.035399>,  <22.445698, 18.514767, 11.646266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.499527, 18.060453, 11.035399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.112282, 18.152409, 11.075206>,  <21.879934, 18.207582, 11.099090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.112282, 18.152409, 11.075206>,  <22.499527, 18.060453, 11.035399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.112282, 18.152409, 11.075206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080356, 0.091278, -0.992578,
		-0.237267, -0.968927, -0.069895,
		-0.968115, 0.229890, 0.099517,
		21.821848, 18.221376, 11.105061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.133932, 17.682991, 10.520974>,  <22.499527, 18.060453, 11.035399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.133932, 17.682991, 10.520974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.879261, 17.975952, 10.617496>,  <21.726460, 18.151730, 10.675410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.879261, 17.975952, 10.617496>,  <22.133932, 17.682991, 10.520974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.879261, 17.975952, 10.617496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235355, 0.113434, -0.965267,
		-0.734337, -0.671355, 0.100155,
		-0.636676, 0.732403, 0.241306,
		21.688257, 18.195673, 10.689888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.547129, 17.569510, 10.146546>,  <22.133932, 17.682991, 10.520974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.547129, 17.569510, 10.146546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.453850, 17.946949, 10.240558>,  <21.397882, 18.173412, 10.296965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.453850, 17.946949, 10.240558>,  <21.547129, 17.569510, 10.146546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.453850, 17.946949, 10.240558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383991, 0.132696, -0.913752,
		-0.893403, -0.303334, 0.331389,
		-0.233199, 0.943600, 0.235028,
		21.383890, 18.230028, 10.311067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.872057, 17.744127, 9.838785>,  <21.547129, 17.569510, 10.146546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.872057, 17.744127, 9.838785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.031937, 18.106171, 9.896780>,  <21.127865, 18.323397, 9.931577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.031937, 18.106171, 9.896780>,  <20.872057, 17.744127, 9.838785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.031937, 18.106171, 9.896780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311163, 0.282753, -0.907320,
		-0.862217, 0.317541, 0.394652,
		0.399700, 0.905107, 0.144987,
		21.151846, 18.377703, 9.940276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.347990, 18.208246, 9.681692>,  <20.872057, 17.744127, 9.838785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.347990, 18.208246, 9.681692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.700073, 18.397125, 9.662654>,  <20.911324, 18.510452, 9.651231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.700073, 18.397125, 9.662654>,  <20.347990, 18.208246, 9.681692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.700073, 18.397125, 9.662654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197381, 0.273028, -0.941539,
		-0.431595, 0.838145, 0.333524,
		0.880208, 0.472195, -0.047597,
		20.964136, 18.538784, 9.648375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.102535, 18.825554, 9.323438>,  <20.347990, 18.208246, 9.681692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.102535, 18.825554, 9.323438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.499470, 18.803646, 9.279130>,  <20.737631, 18.790501, 9.252545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.499470, 18.803646, 9.279130>,  <20.102535, 18.825554, 9.323438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.499470, 18.803646, 9.279130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080397, 0.394578, -0.915339,
		0.093839, 0.917229, 0.387150,
		0.992336, -0.054769, -0.110769,
		20.797171, 18.787216, 9.245899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.318268, 19.501261, 9.022904>,  <20.102535, 18.825554, 9.323438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.318268, 19.501261, 9.022904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.581696, 19.220417, 8.914587>,  <20.739752, 19.051910, 8.849596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.581696, 19.220417, 8.914587>,  <20.318268, 19.501261, 9.022904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.581696, 19.220417, 8.914587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066431, 0.304201, -0.950289,
		0.749584, 0.643819, 0.153695,
		0.658568, -0.702110, -0.270794,
		20.779266, 19.009785, 8.833349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.804613, 19.488342, 9.447044>,  <20.318268, 19.501261, 9.022904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.804613, 19.488342, 9.447044> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.839710, 19.873089, 9.343417>,  <19.860769, 20.103937, 9.281240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.839710, 19.873089, 9.343417>,  <19.804613, 19.488342, 9.447044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.839710, 19.873089, 9.343417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339207, 0.273380, 0.900112,
		0.936611, 0.008899, 0.350259,
		0.087744, 0.961865, -0.259069,
		19.866034, 20.161648, 9.265697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.206499, 19.756807, 9.943758>,  <19.804613, 19.488342, 9.447044>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.206499, 19.756807, 9.943758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.928108, 19.985096, 9.769449>,  <19.761074, 20.122068, 9.664864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.928108, 19.985096, 9.769449>,  <20.206499, 19.756807, 9.943758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.928108, 19.985096, 9.769449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325056, 0.290723, 0.899900,
		0.640279, 0.767958, -0.016820,
		-0.695975, 0.570719, -0.435773,
		19.719316, 20.156311, 9.638718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.265285, 20.454788, 10.044650>,  <20.206499, 19.756807, 9.943758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.265285, 20.454788, 10.044650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.881535, 20.352959, 9.996003>,  <19.651285, 20.291861, 9.966815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.881535, 20.352959, 9.996003>,  <20.265285, 20.454788, 10.044650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.881535, 20.352959, 9.996003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195307, 0.288183, 0.937447,
		-0.203601, 0.923116, -0.326195,
		-0.959376, -0.254573, -0.121617,
		19.593721, 20.276587, 9.959518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.830404, 21.073261, 10.231429>,  <20.265285, 20.454788, 10.044650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.830404, 21.073261, 10.231429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.628510, 20.731091, 10.277886>,  <19.507372, 20.525789, 10.305760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.628510, 20.731091, 10.277886>,  <19.830404, 21.073261, 10.231429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.628510, 20.731091, 10.277886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382318, 0.342125, 0.858361,
		-0.773998, 0.388843, -0.499727,
		-0.504737, -0.855425, 0.116143,
		19.477089, 20.474463, 10.312729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.295097, 21.304150, 10.655381>,  <19.830404, 21.073261, 10.231429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.295097, 21.304150, 10.655381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.287788, 20.907692, 10.707997>,  <19.283403, 20.669817, 10.739567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.287788, 20.907692, 10.707997>,  <19.295097, 21.304150, 10.655381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.287788, 20.907692, 10.707997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270431, 0.131559, 0.953708,
		-0.962566, -0.018144, -0.270440,
		-0.018275, -0.991142, 0.131541,
		19.282307, 20.610350, 10.747459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.705276, 21.236929, 11.070780>,  <19.295097, 21.304150, 10.655381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.705276, 21.236929, 11.070780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.906483, 20.893059, 11.106404>,  <19.027206, 20.686737, 11.127779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.906483, 20.893059, 11.106404>,  <18.705276, 21.236929, 11.070780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.906483, 20.893059, 11.106404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179907, -0.003359, 0.983678,
		-0.845345, -0.510828, -0.156352,
		0.503016, -0.859676, 0.089062,
		19.057388, 20.635157, 11.133122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.352087, 20.918282, 11.637572>,  <18.705276, 21.236929, 11.070780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.352087, 20.918282, 11.637572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.703598, 20.730053, 11.605785>,  <18.914505, 20.617115, 11.586713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.703598, 20.730053, 11.605785>,  <18.352087, 20.918282, 11.637572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.703598, 20.730053, 11.605785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075421, -0.027484, 0.996773,
		-0.471237, -0.881934, 0.011338,
		0.878776, -0.470571, -0.079468,
		18.967232, 20.588882, 11.581945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.226236, 20.346333, 11.940657>,  <18.352087, 20.918282, 11.637572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.226236, 20.346333, 11.940657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.622932, 20.395527, 11.955229>,  <18.860950, 20.425043, 11.963972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.622932, 20.395527, 11.955229>,  <18.226236, 20.346333, 11.940657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.622932, 20.395527, 11.955229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012540, -0.189690, 0.981764,
		0.127656, -0.974111, -0.186580,
		0.991740, 0.122989, 0.036430,
		18.920454, 20.432423, 11.966158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.472099, 19.725565, 12.227828>,  <18.226236, 20.346333, 11.940657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.472099, 19.725565, 12.227828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.725803, 20.026791, 12.297804>,  <18.878027, 20.207527, 12.339789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.725803, 20.026791, 12.297804>,  <18.472099, 19.725565, 12.227828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.725803, 20.026791, 12.297804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088654, -0.295629, 0.951180,
		0.768019, -0.587788, -0.254268,
		0.634262, 0.753066, 0.174939,
		18.916082, 20.252710, 12.350286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.901104, 19.429621, 12.830356>,  <18.472099, 19.725565, 12.227828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.901104, 19.429621, 12.830356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.963291, 19.824757, 12.831045>,  <19.000603, 20.061838, 12.831459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.963291, 19.824757, 12.831045>,  <18.901104, 19.429621, 12.830356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.963291, 19.824757, 12.831045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121890, -0.020914, 0.992323,
		0.980292, -0.154063, -0.123659,
		0.155467, 0.987840, 0.001723,
		19.009932, 20.121109, 12.831562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.469440, 19.547998, 13.160913>,  <18.901104, 19.429621, 12.830356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.469440, 19.547998, 13.160913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.305897, 19.912880, 13.171655>,  <19.207769, 20.131809, 13.178101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.305897, 19.912880, 13.171655>,  <19.469440, 19.547998, 13.160913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.305897, 19.912880, 13.171655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353724, 0.131278, 0.926091,
		0.841256, 0.388142, -0.376342,
		-0.408861, 0.912202, 0.026856,
		19.183239, 20.186541, 13.179711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.976133, 19.923111, 13.567663>,  <19.469440, 19.547998, 13.160913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.976133, 19.923111, 13.567663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.630569, 20.123798, 13.585256>,  <19.423231, 20.244211, 13.595811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.630569, 20.123798, 13.585256>,  <19.976133, 19.923111, 13.567663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.630569, 20.123798, 13.585256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120221, 0.120628, 0.985391,
		0.489085, 0.856578, -0.164530,
		-0.863911, 0.501720, 0.043982,
		19.371395, 20.274315, 13.598450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.148571, 20.487638, 13.975916>,  <19.976133, 19.923111, 13.567663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.148571, 20.487638, 13.975916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.751141, 20.450699, 14.002090>,  <19.512682, 20.428535, 14.017794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.751141, 20.450699, 14.002090>,  <20.148571, 20.487638, 13.975916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.751141, 20.450699, 14.002090> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036610, 0.284832, 0.957878,
		-0.107095, 0.954119, -0.279621,
		-0.993575, -0.092347, 0.065435,
		19.453068, 20.422995, 14.021720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.038933, 21.113482, 14.401804>,  <20.148571, 20.487638, 13.975916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.038933, 21.113482, 14.401804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.712383, 20.883659, 14.425191>,  <19.516453, 20.745766, 14.439223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.712383, 20.883659, 14.425191>,  <20.038933, 21.113482, 14.401804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.712383, 20.883659, 14.425191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202944, 0.380185, 0.902371,
		-0.540691, 0.724806, -0.426976,
		-0.816374, -0.574556, 0.058468,
		19.467470, 20.711292, 14.442731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.512758, 21.495829, 14.766485>,  <20.038933, 21.113482, 14.401804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.512758, 21.495829, 14.766485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.383125, 21.120922, 14.817872>,  <19.305346, 20.895979, 14.848704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.383125, 21.120922, 14.817872>,  <19.512758, 21.495829, 14.766485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.383125, 21.120922, 14.817872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240907, 0.213083, 0.946868,
		-0.914841, 0.275914, -0.294850,
		-0.324082, -0.937266, 0.128467,
		19.285900, 20.839743, 14.856412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.001265, 21.565178, 15.212409>,  <19.512758, 21.495829, 14.766485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.001265, 21.565178, 15.212409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.079163, 21.173290, 15.231261>,  <19.125902, 20.938158, 15.242573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.079163, 21.173290, 15.231261>,  <19.001265, 21.565178, 15.212409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.079163, 21.173290, 15.231261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328435, -0.019858, 0.944318,
		-0.924232, -0.199382, -0.325642,
		0.194747, -0.979721, 0.047131,
		19.137587, 20.879374, 15.245400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.463257, 21.217136, 15.546425>,  <19.001265, 21.565178, 15.212409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.463257, 21.217136, 15.546425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.765423, 20.961830, 15.605712>,  <18.946722, 20.808647, 15.641284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.765423, 20.961830, 15.605712>,  <18.463257, 21.217136, 15.546425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.765423, 20.961830, 15.605712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289042, -0.121589, 0.949563,
		-0.588050, -0.760155, -0.276335,
		0.755414, -0.638263, 0.148216,
		18.992046, 20.770351, 15.650177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.124575, 20.531858, 15.770962>,  <18.463257, 21.217136, 15.546425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.124575, 20.531858, 15.770962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.495667, 20.592510, 15.907388>,  <18.718321, 20.628902, 15.989244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.495667, 20.592510, 15.907388>,  <18.124575, 20.531858, 15.770962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.495667, 20.592510, 15.907388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291430, -0.276650, 0.915715,
		0.233206, -0.948933, -0.212466,
		0.927730, 0.151631, 0.341064,
		18.773985, 20.637999, 16.009706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.271727, 20.043089, 16.171347>,  <18.124575, 20.531858, 15.770962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.271727, 20.043089, 16.171347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.547615, 20.301884, 16.301386>,  <18.713148, 20.457161, 16.379410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.547615, 20.301884, 16.301386>,  <18.271727, 20.043089, 16.171347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.547615, 20.301884, 16.301386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293500, -0.160633, 0.942367,
		0.661923, -0.745387, 0.079100,
		0.689722, 0.646989, 0.325098,
		18.754532, 20.495981, 16.398914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.629078, 19.721573, 16.743973>,  <18.271727, 20.043089, 16.171347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.629078, 19.721573, 16.743973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.672523, 20.113228, 16.812668>,  <18.698591, 20.348221, 16.853886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.672523, 20.113228, 16.812668>,  <18.629078, 19.721573, 16.743973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.672523, 20.113228, 16.812668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014874, -0.171140, 0.985135,
		0.993973, -0.109554, -0.004024,
		0.108615, 0.979137, 0.171738,
		18.705109, 20.406969, 16.864189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.189312, 19.771086, 17.278141>,  <18.629078, 19.721573, 16.743973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.189312, 19.771086, 17.278141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.046429, 20.144306, 17.295193>,  <18.960699, 20.368238, 17.305424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.046429, 20.144306, 17.295193>,  <19.189312, 19.771086, 17.278141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.046429, 20.144306, 17.295193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083528, -0.077371, 0.993497,
		0.930282, 0.351326, 0.105573,
		-0.357210, 0.933051, 0.042631,
		18.939266, 20.424221, 17.307981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.481653, 20.182882, 17.943951>,  <19.189312, 19.771086, 17.278141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.481653, 20.182882, 17.943951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.139282, 20.362030, 17.840563>,  <18.933861, 20.469519, 17.778530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.139282, 20.362030, 17.840563>,  <19.481653, 20.182882, 17.943951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.139282, 20.362030, 17.840563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277343, 0.024260, 0.960465,
		0.436432, 0.893771, 0.103448,
		-0.855925, 0.447868, -0.258469,
		18.882505, 20.496391, 17.763021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.321968, 20.773361, 18.491344>,  <19.481653, 20.182882, 17.943951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.321968, 20.773361, 18.491344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.983189, 20.656723, 18.313515>,  <18.779921, 20.586740, 18.206818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.983189, 20.656723, 18.313515>,  <19.321968, 20.773361, 18.491344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.983189, 20.656723, 18.313515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469190, 0.016628, 0.882940,
		-0.250071, 0.956396, -0.150898,
		-0.846950, -0.291598, -0.444574,
		18.729103, 20.569244, 18.180143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.920002, 21.232567, 18.798098>,  <19.321968, 20.773361, 18.491344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.920002, 21.232567, 18.798098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.624294, 21.026859, 18.624199>,  <18.446869, 20.903435, 18.519859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.624294, 21.026859, 18.624199>,  <18.920002, 21.232567, 18.798098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.624294, 21.026859, 18.624199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521579, 0.028920, 0.852713,
		-0.425951, 0.857141, -0.289611,
		-0.739271, -0.514269, -0.434748,
		18.402514, 20.872578, 18.493774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.313074, 21.563673, 19.002182>,  <18.920002, 21.232567, 18.798098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.313074, 21.563673, 19.002182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.175766, 21.205006, 18.890360>,  <18.093382, 20.989805, 18.823267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.175766, 21.205006, 18.890360>,  <18.313074, 21.563673, 19.002182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.175766, 21.205006, 18.890360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552803, -0.047746, 0.831943,
		-0.759325, 0.440120, -0.479291,
		-0.343270, -0.896669, -0.279555,
		18.072784, 20.936005, 18.806494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.621832, 21.550423, 19.116962>,  <18.313074, 21.563673, 19.002182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.621832, 21.550423, 19.116962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.662949, 21.153927, 19.083784>,  <17.687618, 20.916029, 19.063877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.662949, 21.153927, 19.083784>,  <17.621832, 21.550423, 19.116962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.662949, 21.153927, 19.083784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542152, -0.125744, 0.830819,
		-0.833970, -0.040431, -0.550327,
		0.102791, -0.991238, -0.082947,
		17.693787, 20.856556, 19.058901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.918507, 21.124260, 19.032736>,  <17.621832, 21.550423, 19.116962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.918507, 21.124260, 19.032736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.206764, 20.919796, 19.220089>,  <17.379719, 20.797117, 19.332500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.206764, 20.919796, 19.220089>,  <16.918507, 21.124260, 19.032736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.206764, 20.919796, 19.220089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616931, -0.164549, 0.769623,
		-0.316331, -0.843585, -0.433934,
		0.720646, -0.511163, 0.468382,
		17.422958, 20.766447, 19.360603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.529156, 20.669256, 19.577368>,  <16.918507, 21.124260, 19.032736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.529156, 20.669256, 19.577368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.915207, 20.654568, 19.681042>,  <17.146837, 20.645754, 19.743246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.915207, 20.654568, 19.681042>,  <16.529156, 20.669256, 19.577368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.915207, 20.654568, 19.681042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260152, -0.244612, 0.934070,
		0.029101, -0.968925, -0.245635,
		0.965129, -0.036720, 0.259186,
		17.204746, 20.643551, 19.758797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.497881, 19.974241, 19.222685>,  <16.529156, 20.669256, 19.577368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.497881, 19.974241, 19.222685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.156876, 19.777187, 19.152794>,  <15.952272, 19.658955, 19.110859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.156876, 19.777187, 19.152794>,  <16.497881, 19.974241, 19.222685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.156876, 19.777187, 19.152794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070162, 0.223398, -0.972199,
		0.517973, -0.841073, -0.155885,
		-0.852514, -0.492636, -0.174726,
		15.901121, 19.629396, 19.100376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.685295, 19.510595, 18.702454>,  <16.497881, 19.974241, 19.222685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.685295, 19.510595, 18.702454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.290718, 19.574646, 18.688076>,  <16.053972, 19.613077, 18.679449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.290718, 19.574646, 18.688076>,  <16.685295, 19.510595, 18.702454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.290718, 19.574646, 18.688076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039929, 0.021726, -0.998966,
		-0.159182, -0.986857, -0.027825,
		-0.986442, 0.160128, -0.035946,
		15.994785, 19.622684, 18.677292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.563305, 19.224773, 18.055531>,  <16.685295, 19.510595, 18.702454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.563305, 19.224773, 18.055531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.233051, 19.435040, 18.137514>,  <16.034899, 19.561199, 18.186705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.233051, 19.435040, 18.137514>,  <16.563305, 19.224773, 18.055531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.233051, 19.435040, 18.137514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157740, 0.133721, -0.978385,
		-0.541711, -0.840115, -0.027486,
		-0.825632, 0.525666, 0.204958,
		15.985362, 19.592739, 18.199001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.059603, 18.837427, 17.774284>,  <16.563305, 19.224773, 18.055531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.059603, 18.837427, 17.774284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.953698, 19.221188, 17.813177>,  <15.890155, 19.451443, 17.836514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.953698, 19.221188, 17.813177>,  <16.059603, 18.837427, 17.774284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.953698, 19.221188, 17.813177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053503, 0.086060, -0.994852,
		-0.962828, -0.268603, 0.028545,
		-0.264764, 0.959399, 0.097232,
		15.874269, 19.509007, 17.842346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.390648, 18.898355, 17.401506>,  <16.059603, 18.837427, 17.774284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.390648, 18.898355, 17.401506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.552276, 19.262005, 17.441946>,  <15.649252, 19.480194, 17.466209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.552276, 19.262005, 17.441946>,  <15.390648, 18.898355, 17.401506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.552276, 19.262005, 17.441946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023416, 0.100207, -0.994691,
		-0.914429, 0.404291, 0.019202,
		0.404068, 0.909125, 0.101099,
		15.673496, 19.534742, 17.472277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
