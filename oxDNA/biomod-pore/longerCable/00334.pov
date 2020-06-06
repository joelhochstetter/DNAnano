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
	<24.500448, 34.580181, 34.923038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.294502, 34.922302, 34.899826>,  <24.170935, 35.127575, 34.885899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.294502, 34.922302, 34.899826>,  <24.500448, 34.580181, 34.923038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.294502, 34.922302, 34.899826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783325, 0.441866, -0.437215,
		-0.348308, -0.270566, -0.897483,
		-0.514863, 0.855306, -0.058035,
		24.140043, 35.178894, 34.882416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.550323, 33.841389, 34.948982>,  <24.500448, 34.580181, 34.923038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.550323, 33.841389, 34.948982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609610, 33.748833, 35.333584>,  <24.645182, 33.693298, 35.564346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.609610, 33.748833, 35.333584>,  <24.550323, 33.841389, 34.948982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.609610, 33.748833, 35.333584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513203, -0.849083, -0.125225,
		0.845373, -0.474887, -0.244594,
		0.148213, -0.231389, 0.961505,
		24.654074, 33.679417, 35.622036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.150000, 33.584064, 34.500671>,  <24.550323, 33.841389, 34.948982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.150000, 33.584064, 34.500671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168169, 33.808899, 34.831005>,  <25.179071, 33.943798, 35.029205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168169, 33.808899, 34.831005>,  <25.150000, 33.584064, 34.500671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.168169, 33.808899, 34.831005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358055, -0.780920, 0.511821,
		0.932595, 0.272444, -0.236731,
		0.045426, 0.562084, 0.825831,
		25.181797, 33.977524, 35.078754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.797598, 33.436642, 34.860645>,  <25.150000, 33.584064, 34.500671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.797598, 33.436642, 34.860645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.562510, 33.571259, 35.154945>,  <25.421457, 33.652031, 35.331524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.562510, 33.571259, 35.154945>,  <25.797598, 33.436642, 34.860645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.562510, 33.571259, 35.154945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408251, -0.661758, 0.628814,
		0.698511, 0.669936, 0.251533,
		-0.587719, 0.336545, 0.735747,
		25.386194, 33.672222, 35.375668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.148249, 33.212307, 35.454449>,  <25.797598, 33.436642, 34.860645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.148249, 33.212307, 35.454449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832100, 33.369007, 35.642849>,  <25.642410, 33.463028, 35.755890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.832100, 33.369007, 35.642849>,  <26.148249, 33.212307, 35.454449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.832100, 33.369007, 35.642849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106922, -0.668805, 0.735709,
		0.603222, 0.631845, 0.486718,
		-0.790374, 0.391755, 0.470996,
		25.594988, 33.486534, 35.784149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.434841, 33.382710, 36.033382>,  <26.148249, 33.212307, 35.454449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.434841, 33.382710, 36.033382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074982, 33.242458, 36.137455>,  <25.859066, 33.158306, 36.199898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.074982, 33.242458, 36.137455>,  <26.434841, 33.382710, 36.033382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074982, 33.242458, 36.137455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429489, -0.603469, 0.671836,
		-0.078554, 0.716161, 0.693500,
		-0.899649, -0.350627, 0.260178,
		25.805086, 33.137272, 36.215508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.432995, 33.468334, 36.693970>,  <26.434841, 33.382710, 36.033382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.432995, 33.468334, 36.693970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174376, 33.172680, 36.618443>,  <26.019205, 32.995289, 36.573124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.174376, 33.172680, 36.618443>,  <26.432995, 33.468334, 36.693970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.174376, 33.172680, 36.618443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444889, -0.566384, 0.693746,
		-0.619718, 0.364535, 0.695028,
		-0.646547, -0.739137, -0.188821,
		25.980412, 32.950939, 36.561798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.062967, 33.302505, 37.317307>,  <26.432995, 33.468334, 36.693970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.062967, 33.302505, 37.317307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111971, 32.992493, 37.069336>,  <26.141373, 32.806484, 36.920551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.111971, 32.992493, 37.069336>,  <26.062967, 33.302505, 37.317307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111971, 32.992493, 37.069336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589222, -0.445838, 0.673828,
		-0.798629, -0.447825, 0.402050,
		0.122508, -0.775036, -0.619928,
		26.148724, 32.759983, 36.883358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.939789, 32.764805, 37.727661>,  <26.062967, 33.302505, 37.317307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.939789, 32.764805, 37.727661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164854, 32.622913, 37.428978>,  <26.299892, 32.537777, 37.249767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.164854, 32.622913, 37.428978>,  <25.939789, 32.764805, 37.727661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.164854, 32.622913, 37.428978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583120, -0.469962, 0.662652,
		-0.585989, -0.808271, -0.057579,
		0.562662, -0.354732, -0.746711,
		26.333652, 32.516495, 37.204964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.980640, 32.030190, 37.823853>,  <25.939789, 32.764805, 37.727661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.980640, 32.030190, 37.823853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294737, 32.137814, 37.600784>,  <26.483194, 32.202389, 37.466942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.294737, 32.137814, 37.600784>,  <25.980640, 32.030190, 37.823853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.294737, 32.137814, 37.600784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619188, -0.339814, 0.707908,
		0.000965, -0.901184, -0.433436,
		0.785242, 0.269062, -0.557674,
		26.530310, 32.218533, 37.433483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546844, 31.442457, 37.867100>,  <25.980640, 32.030190, 37.823853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546844, 31.442457, 37.867100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710592, 31.791712, 37.761234>,  <26.808842, 32.001266, 37.697716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710592, 31.791712, 37.761234>,  <26.546844, 31.442457, 37.867100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710592, 31.791712, 37.761234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724202, -0.134532, 0.676337,
		0.554930, -0.468542, -0.687402,
		0.409370, 0.873138, -0.264664,
		26.833403, 32.053654, 37.681835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.298113, 31.336620, 37.744263>,  <26.546844, 31.442457, 37.867100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.298113, 31.336620, 37.744263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.192400, 31.708490, 37.846916>,  <27.128973, 31.931612, 37.908508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.192400, 31.708490, 37.846916>,  <27.298113, 31.336620, 37.744263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.192400, 31.708490, 37.846916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589888, -0.054701, 0.805630,
		0.763012, 0.364297, -0.533948,
		-0.264281, 0.929675, 0.256632,
		27.113115, 31.987392, 37.923904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804392, 31.393654, 38.375500>,  <27.298113, 31.336620, 37.744263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804392, 31.393654, 38.375500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910177, 31.752609, 38.516781>,  <27.973648, 31.967981, 38.601551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.910177, 31.752609, 38.516781>,  <27.804392, 31.393654, 38.375500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.910177, 31.752609, 38.516781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591409, 0.440208, -0.675612,
		-0.761770, -0.030214, 0.647142,
		0.264464, 0.897387, 0.353207,
		27.989517, 32.021824, 38.622742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185034, 31.819983, 38.593353>,  <27.804392, 31.393654, 38.375500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185034, 31.819983, 38.593353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514893, 31.973145, 38.426815>,  <27.712807, 32.065041, 38.326893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514893, 31.973145, 38.426815>,  <27.185034, 31.819983, 38.593353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514893, 31.973145, 38.426815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524538, 0.242166, -0.816220,
		-0.211708, 0.891482, 0.400548,
		0.824645, 0.382903, -0.416348,
		27.762285, 32.088017, 38.301910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.234669, 32.584351, 38.538269>,  <27.185034, 31.819983, 38.593353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.234669, 32.584351, 38.538269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421669, 32.379559, 38.250015>,  <27.533869, 32.256683, 38.077061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.421669, 32.379559, 38.250015>,  <27.234669, 32.584351, 38.538269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421669, 32.379559, 38.250015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506020, 0.513443, -0.693051,
		0.724835, 0.688659, -0.019037,
		0.467501, -0.511981, -0.720637,
		27.561920, 32.225964, 38.033825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.341036, 33.065586, 38.029884>,  <27.234669, 32.584351, 38.538269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.341036, 33.065586, 38.029884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387775, 32.706184, 37.860634>,  <27.415819, 32.490543, 37.759083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387775, 32.706184, 37.860634>,  <27.341036, 33.065586, 38.029884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387775, 32.706184, 37.860634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532983, 0.302769, -0.790101,
		0.838019, 0.317843, -0.443509,
		0.116848, -0.898503, -0.423131,
		27.422831, 32.436634, 37.733696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.460211, 33.096436, 37.264473>,  <27.341036, 33.065586, 38.029884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.460211, 33.096436, 37.264473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307446, 32.740128, 37.363003>,  <27.215786, 32.526344, 37.422123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.307446, 32.740128, 37.363003>,  <27.460211, 33.096436, 37.264473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.307446, 32.740128, 37.363003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680810, 0.090911, -0.726797,
		0.625012, -0.445275, -0.641163,
		-0.381913, -0.890767, 0.246327,
		27.192871, 32.472897, 37.436901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536736, 32.594204, 36.699467>,  <27.460211, 33.096436, 37.264473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536736, 32.594204, 36.699467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223232, 32.490284, 36.925114>,  <27.035130, 32.427933, 37.060501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223232, 32.490284, 36.925114>,  <27.536736, 32.594204, 36.699467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223232, 32.490284, 36.925114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619723, 0.267451, -0.737844,
		0.040816, -0.927888, -0.370619,
		-0.783758, -0.259797, 0.564117,
		26.988104, 32.412346, 37.094349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.092691, 32.151161, 36.244038>,  <27.536736, 32.594204, 36.699467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.092691, 32.151161, 36.244038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.852341, 32.242489, 36.550453>,  <26.708130, 32.297287, 36.734303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.852341, 32.242489, 36.550453>,  <27.092691, 32.151161, 36.244038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.852341, 32.242489, 36.550453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767289, 0.103908, -0.632827,
		-0.224086, -0.968025, 0.112753,
		-0.600876, 0.228322, 0.766039,
		26.672077, 32.310986, 36.780266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498898, 31.720371, 36.141125>,  <27.092691, 32.151161, 36.244038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498898, 31.720371, 36.141125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411520, 32.042919, 36.360962>,  <26.359093, 32.236446, 36.492863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.411520, 32.042919, 36.360962>,  <26.498898, 31.720371, 36.141125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411520, 32.042919, 36.360962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741862, 0.228659, -0.630362,
		-0.633974, -0.545418, 0.548267,
		-0.218445, 0.806371, 0.549589,
		26.345987, 32.284832, 36.525837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.697369, 31.888901, 36.053818>,  <26.498898, 31.720371, 36.141125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.697369, 31.888901, 36.053818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717348, 32.132214, 36.370678>,  <25.729336, 32.278202, 36.560795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.717348, 32.132214, 36.370678>,  <25.697369, 31.888901, 36.053818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.717348, 32.132214, 36.370678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445973, 0.723257, -0.527264,
		-0.893652, -0.326939, 0.307405,
		0.049950, 0.608284, 0.792146,
		25.732332, 32.314697, 36.608322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.048500, 32.112499, 36.235832>,  <25.697369, 31.888901, 36.053818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.048500, 32.112499, 36.235832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.320335, 32.378326, 36.360092>,  <25.483437, 32.537823, 36.434650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.320335, 32.378326, 36.360092>,  <25.048500, 32.112499, 36.235832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.320335, 32.378326, 36.360092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431574, 0.704621, -0.563253,
		-0.593212, 0.248712, 0.765664,
		0.679591, 0.664569, 0.310652,
		25.524212, 32.577698, 36.453289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.645353, 32.646564, 36.521122>,  <25.048500, 32.112499, 36.235832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.645353, 32.646564, 36.521122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.000954, 32.805962, 36.430893>,  <25.214314, 32.901600, 36.376755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.000954, 32.805962, 36.430893>,  <24.645353, 32.646564, 36.521122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.000954, 32.805962, 36.430893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457520, 0.752834, -0.473197,
		-0.018745, 0.523877, 0.851588,
		0.889002, 0.398488, -0.225573,
		25.267654, 32.925507, 36.363220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.545403, 33.106224, 35.999657>,  <24.645353, 32.646564, 36.521122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.545403, 33.106224, 35.999657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906446, 33.210812, 36.136436>,  <25.123074, 33.273563, 36.218506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906446, 33.210812, 36.136436>,  <24.545403, 33.106224, 35.999657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.906446, 33.210812, 36.136436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118300, 0.914465, -0.386987,
		-0.413886, 0.308846, 0.856336,
		0.902609, 0.261473, 0.341948,
		25.177229, 33.289253, 36.239021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.455420, 33.770576, 36.367294>,  <24.545403, 33.106224, 35.999657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.455420, 33.770576, 36.367294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.809647, 33.708408, 36.192200>,  <25.022182, 33.671108, 36.087143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.809647, 33.708408, 36.192200>,  <24.455420, 33.770576, 36.367294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.809647, 33.708408, 36.192200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085735, 0.871481, -0.482877,
		0.456532, 0.465149, 0.758429,
		0.885566, -0.155424, -0.437739,
		25.075317, 33.661781, 36.060879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.715494, 34.319279, 36.327759>,  <24.455420, 33.770576, 36.367294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.715494, 34.319279, 36.327759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917482, 34.129108, 36.039597>,  <25.038675, 34.015007, 35.866699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917482, 34.129108, 36.039597>,  <24.715494, 34.319279, 36.327759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.917482, 34.129108, 36.039597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023159, 0.826870, -0.561916,
		0.862827, 0.300433, 0.406534,
		0.504969, -0.475421, -0.720404,
		25.068974, 33.986481, 35.823475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.241880, 34.803967, 36.061878>,  <24.715494, 34.319279, 36.327759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.241880, 34.803967, 36.061878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213554, 34.532776, 35.769215>,  <25.196560, 34.370060, 35.593616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213554, 34.532776, 35.769215>,  <25.241880, 34.803967, 36.061878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.213554, 34.532776, 35.769215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041278, 0.734868, -0.676954,
		0.996635, -0.017736, -0.080024,
		-0.070813, -0.677979, -0.731663,
		25.192310, 34.329384, 35.549717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.684252, 34.985909, 35.635048>,  <25.241880, 34.803967, 36.061878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.684252, 34.985909, 35.635048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.432602, 34.772629, 35.408810>,  <25.281612, 34.644661, 35.273067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.432602, 34.772629, 35.408810>,  <25.684252, 34.985909, 35.635048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.432602, 34.772629, 35.408810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066588, 0.761932, -0.644225,
		0.774451, -0.367633, -0.514852,
		-0.629121, -0.533203, -0.565599,
		25.243864, 34.612667, 35.239132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.900415, 34.756718, 34.952835>,  <25.684252, 34.985909, 35.635048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.900415, 34.756718, 34.952835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.516840, 34.859215, 35.001457>,  <25.286695, 34.920712, 35.030632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.516840, 34.859215, 35.001457>,  <25.900415, 34.756718, 34.952835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.516840, 34.859215, 35.001457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160644, 0.843959, -0.511788,
		-0.233731, -0.471246, -0.850469,
		-0.958939, 0.256244, 0.121556,
		25.229158, 34.936089, 35.037926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.548666, 34.931583, 34.279419>,  <25.900415, 34.756718, 34.952835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.548666, 34.931583, 34.279419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394779, 35.146935, 34.579323>,  <25.302446, 35.276146, 34.759266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.394779, 35.146935, 34.579323>,  <25.548666, 34.931583, 34.279419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.394779, 35.146935, 34.579323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161064, 0.838975, -0.519788,
		-0.908873, -0.079212, -0.409482,
		-0.384719, 0.538374, 0.749763,
		25.279364, 35.308445, 34.804253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.867689, 35.380714, 34.064404>,  <25.548666, 34.931583, 34.279419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.867689, 35.380714, 34.064404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.120653, 35.520786, 34.340790>,  <25.272432, 35.604832, 34.506622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.120653, 35.520786, 34.340790>,  <24.867689, 35.380714, 34.064404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.120653, 35.520786, 34.340790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027682, 0.901633, -0.431616,
		-0.774137, 0.253832, 0.579897,
		0.632412, 0.350182, 0.690961,
		25.310377, 35.625839, 34.548077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.600849, 36.048954, 34.462807>,  <24.867689, 35.380714, 34.064404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.600849, 36.048954, 34.462807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.992929, 36.016953, 34.390358>,  <25.228178, 35.997753, 34.346889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.992929, 36.016953, 34.390358>,  <24.600849, 36.048954, 34.462807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.992929, 36.016953, 34.390358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006828, 0.927857, -0.372873,
		0.197884, 0.364254, 0.910033,
		0.980202, -0.080000, -0.181121,
		25.286989, 35.992954, 34.336021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.906498, 36.689510, 34.710712>,  <24.600849, 36.048954, 34.462807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.906498, 36.689510, 34.710712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130423, 36.527050, 34.421810>,  <25.264778, 36.429573, 34.248470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130423, 36.527050, 34.421810>,  <24.906498, 36.689510, 34.710712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130423, 36.527050, 34.421810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008115, 0.874279, -0.485356,
		0.828581, 0.265847, 0.492727,
		0.559811, -0.406155, -0.722253,
		25.298367, 36.405205, 34.205135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.325125, 37.223038, 34.556202>,  <24.906498, 36.689510, 34.710712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.325125, 37.223038, 34.556202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354548, 36.971127, 34.246887>,  <25.372202, 36.819981, 34.061298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354548, 36.971127, 34.246887>,  <25.325125, 37.223038, 34.556202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.354548, 36.971127, 34.246887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124823, 0.763478, -0.633657,
		0.989449, 0.143135, -0.022451,
		0.073558, -0.629773, -0.773288,
		25.376616, 36.782196, 34.014900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.422556, 37.740833, 35.008896>,  <25.325125, 37.223038, 34.556202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.422556, 37.740833, 35.008896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433874, 37.457169, 35.290688>,  <25.440666, 37.286968, 35.459763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.433874, 37.457169, 35.290688>,  <25.422556, 37.740833, 35.008896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.433874, 37.457169, 35.290688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645688, 0.550969, 0.528696,
		-0.763077, 0.439912, 0.473489,
		0.028298, -0.709162, 0.704478,
		25.442364, 37.244419, 35.502029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.611563, 38.219833, 34.303684>,  <25.422556, 37.740833, 35.008896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.611563, 38.219833, 34.303684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.928160, 38.299007, 34.534981>,  <26.118118, 38.346512, 34.673759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.928160, 38.299007, 34.534981>,  <25.611563, 38.219833, 34.303684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.928160, 38.299007, 34.534981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511046, -0.304577, 0.803781,
		0.335216, -0.931694, -0.139915,
		0.791493, 0.197937, 0.578238,
		26.165607, 38.358387, 34.708450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.821836, 37.562080, 34.040123>,  <25.611563, 38.219833, 34.303684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.821836, 37.562080, 34.040123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.681818, 37.263870, 33.813267>,  <25.597807, 37.084942, 33.677151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.681818, 37.263870, 33.813267>,  <25.821836, 37.562080, 34.040123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.681818, 37.263870, 33.813267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174610, 0.542908, -0.821439,
		0.920314, -0.386573, -0.059868,
		-0.350049, -0.745528, -0.567145,
		25.576803, 37.040211, 33.643124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284676, 37.456688, 33.546577>,  <25.821836, 37.562080, 34.040123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284676, 37.456688, 33.546577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953152, 37.303471, 33.383434>,  <25.754238, 37.211540, 33.285549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.953152, 37.303471, 33.383434>,  <26.284676, 37.456688, 33.546577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.953152, 37.303471, 33.383434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138857, 0.565326, -0.813097,
		0.542019, -0.730540, -0.415363,
		-0.828815, -0.383038, -0.407858,
		25.704508, 37.188557, 33.261074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.488571, 37.199642, 32.810799>,  <26.284676, 37.456688, 33.546577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.488571, 37.199642, 32.810799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094915, 37.266373, 32.834942>,  <25.858723, 37.306412, 32.849426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094915, 37.266373, 32.834942>,  <26.488571, 37.199642, 32.810799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.094915, 37.266373, 32.834942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068870, 0.672778, -0.736631,
		-0.163495, -0.720790, -0.673596,
		-0.984137, 0.166826, 0.060355,
		25.799675, 37.316422, 32.853050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136616, 37.126205, 32.104713>,  <26.488571, 37.199642, 32.810799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136616, 37.126205, 32.104713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964739, 37.361267, 32.378948>,  <25.861612, 37.502304, 32.543488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964739, 37.361267, 32.378948>,  <26.136616, 37.126205, 32.104713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.964739, 37.361267, 32.378948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110545, 0.719308, -0.685840,
		-0.896183, -0.370489, -0.244119,
		-0.429693, 0.587652, 0.685587,
		25.835831, 37.537563, 32.584625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.386536, 37.382053, 31.804375>,  <26.136616, 37.126205, 32.104713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.386536, 37.382053, 31.804375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559969, 37.621525, 32.073769>,  <25.664028, 37.765209, 32.235405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.559969, 37.621525, 32.073769>,  <25.386536, 37.382053, 31.804375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.559969, 37.621525, 32.073769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260221, 0.798738, -0.542496,
		-0.862723, 0.059962, 0.502110,
		0.433584, 0.598683, 0.673486,
		25.690044, 37.801128, 32.275814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.930870, 37.847691, 32.250252>,  <25.386536, 37.382053, 31.804375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.930870, 37.847691, 32.250252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.292017, 38.008385, 32.189018>,  <25.508705, 38.104801, 32.152279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.292017, 38.008385, 32.189018>,  <24.930870, 37.847691, 32.250252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.292017, 38.008385, 32.189018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424679, 0.778012, -0.462974,
		-0.066889, 0.483018, 0.873051,
		0.902869, 0.401735, -0.153088,
		25.562878, 38.128906, 32.143093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.886238, 38.054913, 32.969170>,  <24.930870, 37.847691, 32.250252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.886238, 38.054913, 32.969170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112661, 37.808941, 32.749554>,  <25.248516, 37.661358, 32.617783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.112661, 37.808941, 32.749554>,  <24.886238, 38.054913, 32.969170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.112661, 37.808941, 32.749554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243595, -0.761044, 0.601227,
		-0.787556, -0.206583, -0.580585,
		0.566054, -0.614928, -0.549042,
		25.282478, 37.624462, 32.584843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.509375, 37.440094, 32.861271>,  <24.886238, 38.054913, 32.969170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.509375, 37.440094, 32.861271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.904198, 37.378990, 32.841747>,  <25.141092, 37.342327, 32.830032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.904198, 37.378990, 32.841747>,  <24.509375, 37.440094, 32.861271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.904198, 37.378990, 32.841747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087214, -0.766724, 0.636025,
		-0.134582, -0.623536, -0.770123,
		0.987057, -0.152763, -0.048807,
		25.200315, 37.333160, 32.827106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.642454, 36.787502, 32.723469>,  <24.509375, 37.440094, 32.861271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.642454, 36.787502, 32.723469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.968508, 36.925179, 32.909840>,  <25.164141, 37.007786, 33.021664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.968508, 36.925179, 32.909840>,  <24.642454, 36.787502, 32.723469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.968508, 36.925179, 32.909840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014191, -0.792227, 0.610061,
		0.579096, -0.503894, -0.640889,
		0.815136, 0.344189, 0.465927,
		25.213049, 37.028435, 33.049618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.059052, 36.241188, 32.759876>,  <24.642454, 36.787502, 32.723469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.059052, 36.241188, 32.759876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.224068, 36.471058, 33.042595>,  <25.323076, 36.608978, 33.212227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.224068, 36.471058, 33.042595>,  <25.059052, 36.241188, 32.759876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.224068, 36.471058, 33.042595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036300, -0.785653, 0.617602,
		0.910217, -0.229128, -0.344972,
		0.412538, 0.574674, 0.706797,
		25.347830, 36.643459, 33.254635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.691133, 35.971027, 33.064545>,  <25.059052, 36.241188, 32.759876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.691133, 35.971027, 33.064545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589451, 36.212807, 33.366547>,  <25.528440, 36.357872, 33.547749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.589451, 36.212807, 33.366547>,  <25.691133, 35.971027, 33.064545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.589451, 36.212807, 33.366547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170327, -0.740464, 0.650155,
		0.952033, 0.293872, 0.085279,
		-0.254208, 0.604444, 0.755000,
		25.513189, 36.394138, 33.593048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165575, 35.871574, 33.461609>,  <25.691133, 35.971027, 33.064545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.165575, 35.871574, 33.461609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905313, 36.057415, 33.701874>,  <25.749157, 36.168919, 33.846031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905313, 36.057415, 33.701874>,  <26.165575, 35.871574, 33.461609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.905313, 36.057415, 33.701874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088991, -0.738894, 0.667920,
		0.754142, 0.488038, 0.439418,
		-0.650653, 0.464602, 0.600662,
		25.710117, 36.196796, 33.882072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529690, 35.802113, 34.042412>,  <26.165575, 35.871574, 33.461609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529690, 35.802113, 34.042412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.146410, 35.860546, 34.140808>,  <25.916441, 35.895607, 34.199844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.146410, 35.860546, 34.140808>,  <26.529690, 35.802113, 34.042412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.146410, 35.860546, 34.140808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050552, -0.759835, 0.648148,
		0.281592, 0.633492, 0.720690,
		-0.958202, 0.146081, 0.245987,
		25.858950, 35.904369, 34.214603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.744074, 36.334694, 34.563976>,  <26.529690, 35.802113, 34.042412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.744074, 36.334694, 34.563976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078657, 36.131794, 34.480995>,  <27.279408, 36.010056, 34.431206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.078657, 36.131794, 34.480995>,  <26.744074, 36.334694, 34.563976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.078657, 36.131794, 34.480995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543416, -0.816719, -0.194084,
		-0.070980, 0.275076, -0.958799,
		0.836457, -0.507251, -0.207451,
		27.329594, 35.979618, 34.418758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818487, 36.406689, 35.295982>,  <26.744074, 36.334694, 34.563976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818487, 36.406689, 35.295982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631945, 36.160015, 35.549664>,  <26.520020, 36.012012, 35.701874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.631945, 36.160015, 35.549664>,  <26.818487, 36.406689, 35.295982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.631945, 36.160015, 35.549664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357165, -0.787173, -0.502784,
		0.809287, -0.007961, 0.587359,
		-0.466356, -0.616681, 0.634205,
		26.492039, 35.975010, 35.739925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.304432, 35.907192, 35.566406>,  <26.818487, 36.406689, 35.295982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.304432, 35.907192, 35.566406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942753, 35.737160, 35.583050>,  <26.725746, 35.635139, 35.593037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.942753, 35.737160, 35.583050>,  <27.304432, 35.907192, 35.566406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.942753, 35.737160, 35.583050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367535, -0.823992, -0.431224,
		0.217589, -0.374620, 0.901285,
		-0.904197, -0.425084, 0.041606,
		26.671494, 35.609634, 35.595531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503429, 35.136433, 35.501400>,  <27.304432, 35.907192, 35.566406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503429, 35.136433, 35.501400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111853, 35.175266, 35.429569>,  <26.876907, 35.198566, 35.386471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111853, 35.175266, 35.429569>,  <27.503429, 35.136433, 35.501400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111853, 35.175266, 35.429569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012844, -0.848638, -0.528818,
		-0.203740, -0.519988, 0.829519,
		-0.978941, 0.097087, -0.179580,
		26.818171, 35.204391, 35.375694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815155, 34.564861, 35.832508>,  <27.503429, 35.136433, 35.501400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815155, 34.564861, 35.832508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862103, 34.177368, 35.919952>,  <27.890270, 33.944874, 35.972420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862103, 34.177368, 35.919952>,  <27.815155, 34.564861, 35.832508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862103, 34.177368, 35.919952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992716, 0.108413, -0.052555,
		0.027212, 0.223185, 0.974396,
		0.117366, -0.968729, 0.218609,
		27.897312, 33.886749, 35.985535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.335663, 34.583660, 36.341347>,  <27.815155, 34.564861, 35.832508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.335663, 34.583660, 36.341347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333370, 34.228672, 36.157013>,  <28.331995, 34.015678, 36.046413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333370, 34.228672, 36.157013>,  <28.335663, 34.583660, 36.341347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333370, 34.228672, 36.157013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951293, 0.137211, -0.276070,
		0.308235, -0.439974, 0.843454,
		-0.005732, -0.887466, -0.460837,
		28.331650, 33.962433, 36.018761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.869576, 35.112007, 36.132751>,  <28.335663, 34.583660, 36.341347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.869576, 35.112007, 36.132751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.006248, 34.949703, 35.793667>,  <29.088253, 34.852322, 35.590218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.006248, 34.949703, 35.793667>,  <28.869576, 35.112007, 36.132751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006248, 34.949703, 35.793667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780223, -0.380379, 0.496551,
		-0.523931, -0.831067, 0.186612,
		0.341684, -0.405758, -0.847711,
		29.108753, 34.827976, 35.539352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321239, 34.556591, 36.385483>,  <28.869576, 35.112007, 36.132751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321239, 34.556591, 36.385483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.447247, 34.655769, 36.019032>,  <29.522850, 34.715275, 35.799160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.447247, 34.655769, 36.019032>,  <29.321239, 34.556591, 36.385483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447247, 34.655769, 36.019032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929188, -0.277192, 0.244488,
		-0.193323, -0.928271, -0.317710,
		0.315018, 0.247947, -0.916126,
		29.541752, 34.730152, 35.744194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.766279, 33.975307, 36.112392>,  <29.321239, 34.556591, 36.385483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.766279, 33.975307, 36.112392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925171, 34.299843, 35.940842>,  <30.020506, 34.494564, 35.837914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925171, 34.299843, 35.940842>,  <29.766279, 33.975307, 36.112392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925171, 34.299843, 35.940842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902272, -0.430655, 0.020991,
		-0.167665, -0.395298, -0.903121,
		0.397231, 0.811342, -0.428873,
		30.044340, 34.543247, 35.812180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054482, 33.924061, 35.452919>,  <29.766279, 33.975307, 36.112392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054482, 33.924061, 35.452919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.258776, 34.187630, 35.673817>,  <30.381351, 34.345772, 35.806355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.258776, 34.187630, 35.673817>,  <30.054482, 33.924061, 35.452919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.258776, 34.187630, 35.673817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725842, -0.674728, 0.133780,
		0.460766, 0.332517, -0.822878,
		0.510734, 0.658920, 0.552246,
		30.411997, 34.385307, 35.839489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798233, 34.031769, 35.244972>,  <30.054482, 33.924061, 35.452919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798233, 34.031769, 35.244972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733017, 34.055473, 35.638908>,  <30.693888, 34.069695, 35.875271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.733017, 34.055473, 35.638908>,  <30.798233, 34.031769, 35.244972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733017, 34.055473, 35.638908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707963, -0.688208, 0.158613,
		0.687172, 0.723090, 0.070253,
		-0.163040, 0.059258, 0.984838,
		30.684105, 34.073250, 35.934361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.743191, 33.422077, 34.791828>,  <30.798233, 34.031769, 35.244972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.743191, 33.422077, 34.791828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088243, 33.619892, 34.834347>,  <31.295275, 33.738583, 34.859859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088243, 33.619892, 34.834347>,  <30.743191, 33.422077, 34.791828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088243, 33.619892, 34.834347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243914, -0.222575, -0.943910,
		-0.443143, 0.840172, -0.312625,
		0.862630, 0.494541, 0.106297,
		31.347033, 33.768253, 34.866238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270655, 32.899502, 34.896820>,  <30.743191, 33.422077, 34.791828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270655, 32.899502, 34.896820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345333, 32.524364, 34.779800>,  <31.390141, 32.299282, 34.709587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345333, 32.524364, 34.779800>,  <31.270655, 32.899502, 34.896820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345333, 32.524364, 34.779800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511619, 0.161407, -0.843916,
		0.838684, 0.307230, -0.449687,
		0.186694, -0.937848, -0.292554,
		31.401340, 32.243011, 34.692036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090380, 33.140846, 35.661308>,  <31.270655, 32.899502, 34.896820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090380, 33.140846, 35.661308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212557, 32.888397, 35.946514>,  <31.285864, 32.736927, 36.117638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212557, 32.888397, 35.946514>,  <31.090380, 33.140846, 35.661308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212557, 32.888397, 35.946514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801921, 0.233265, 0.550009,
		-0.513445, -0.739776, -0.434863,
		0.305445, -0.631125, 0.713011,
		31.304190, 32.699059, 36.160416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477493, 32.602478, 35.776600>,  <31.090380, 33.140846, 35.661308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477493, 32.602478, 35.776600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721903, 32.677624, 36.084198>,  <30.868549, 32.722713, 36.268757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.721903, 32.677624, 36.084198>,  <30.477493, 32.602478, 35.776600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721903, 32.677624, 36.084198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791012, 0.107103, 0.602353,
		0.030799, -0.976338, 0.214046,
		0.611025, 0.187865, 0.768996,
		30.905210, 32.733982, 36.314896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314278, 32.191940, 36.421150>,  <30.477493, 32.602478, 35.776600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314278, 32.191940, 36.421150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505968, 32.519440, 36.547638>,  <30.620983, 32.715939, 36.623531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.505968, 32.519440, 36.547638>,  <30.314278, 32.191940, 36.421150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.505968, 32.519440, 36.547638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706171, 0.145723, 0.692883,
		0.521215, -0.555354, 0.648010,
		0.479226, 0.818747, 0.316221,
		30.649736, 32.765064, 36.642506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569689, 32.159111, 37.152695>,  <30.314278, 32.191940, 36.421150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569689, 32.159111, 37.152695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482031, 32.535809, 37.050644>,  <30.429436, 32.761829, 36.989414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482031, 32.535809, 37.050644>,  <30.569689, 32.159111, 37.152695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482031, 32.535809, 37.050644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571147, 0.088185, 0.816097,
		0.791054, 0.324559, 0.518550,
		-0.219144, 0.941746, -0.255130,
		30.416288, 32.818333, 36.974106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747044, 32.580585, 37.750000>,  <30.569689, 32.159111, 37.152695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747044, 32.580585, 37.750000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475010, 32.724380, 37.494419>,  <30.311790, 32.810658, 37.341072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475010, 32.724380, 37.494419>,  <30.747044, 32.580585, 37.750000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475010, 32.724380, 37.494419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625398, 0.170331, 0.761489,
		0.382577, 0.917474, 0.108981,
		-0.680083, 0.359484, -0.638951,
		30.270985, 32.832226, 37.302734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114428, 33.043354, 38.282230>,  <30.747044, 32.580585, 37.750000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114428, 33.043354, 38.282230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381737, 33.338303, 38.321613>,  <31.542122, 33.515270, 38.345245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.381737, 33.338303, 38.321613>,  <31.114428, 33.043354, 38.282230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.381737, 33.338303, 38.321613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102291, 0.040015, -0.993949,
		-0.736850, 0.674301, -0.048685,
		0.668273, 0.737371, 0.098460,
		31.582218, 33.559513, 38.351151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898975, 33.638409, 37.816265>,  <31.114428, 33.043354, 38.282230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898975, 33.638409, 37.816265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285191, 33.702003, 37.898693>,  <31.516920, 33.740158, 37.948151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.285191, 33.702003, 37.898693>,  <30.898975, 33.638409, 37.816265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.285191, 33.702003, 37.898693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176045, 0.184215, -0.966992,
		-0.191696, 0.969943, 0.149878,
		0.965537, 0.158983, 0.206067,
		31.574852, 33.749699, 37.960514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087307, 34.121372, 37.301765>,  <30.898975, 33.638409, 37.816265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087307, 34.121372, 37.301765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437586, 33.978142, 37.431343>,  <31.647753, 33.892204, 37.509090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.437586, 33.978142, 37.431343>,  <31.087307, 34.121372, 37.301765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437586, 33.978142, 37.431343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420785, 0.236841, -0.875697,
		0.236841, 0.903156, 0.358073,
		0.875697, -0.358073, 0.323941,
		31.700294, 33.870720, 37.528526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633411, 34.640106, 37.167648>,  <31.087307, 34.121372, 37.301765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633411, 34.640106, 37.167648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834976, 34.299362, 37.224781>,  <31.955915, 34.094913, 37.259060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834976, 34.299362, 37.224781>,  <31.633411, 34.640106, 37.167648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834976, 34.299362, 37.224781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497935, 0.151381, -0.853900,
		0.705784, 0.501411, 0.500455,
		0.503914, -0.851863, 0.142828,
		31.986151, 34.043804, 37.267628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289520, 34.833233, 37.267586>,  <31.633411, 34.640106, 37.167648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289520, 34.833233, 37.267586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333282, 34.463074, 37.122437>,  <32.359539, 34.240978, 37.035347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333282, 34.463074, 37.122437>,  <32.289520, 34.833233, 37.267586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333282, 34.463074, 37.122437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376743, 0.376429, -0.846384,
		0.919835, -0.044114, 0.389818,
		0.109401, -0.925394, -0.362872,
		32.366104, 34.185455, 37.013577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966629, 34.866283, 37.029427>,  <32.289520, 34.833233, 37.267586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966629, 34.866283, 37.029427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783169, 34.557514, 36.853352>,  <32.673092, 34.372253, 36.747707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783169, 34.557514, 36.853352>,  <32.966629, 34.866283, 37.029427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783169, 34.557514, 36.853352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314315, 0.322414, -0.892891,
		0.831169, -0.547887, 0.094750,
		-0.458655, -0.771925, -0.440190,
		32.645573, 34.325935, 36.721294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482063, 34.521973, 36.688187>,  <32.966629, 34.866283, 37.029427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482063, 34.521973, 36.688187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132027, 34.450176, 36.508411>,  <32.922005, 34.407097, 36.400547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132027, 34.450176, 36.508411>,  <33.482063, 34.521973, 36.688187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132027, 34.450176, 36.508411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418022, 0.187598, -0.888856,
		0.243863, -0.965705, -0.089131,
		-0.875093, -0.179500, -0.449434,
		32.869499, 34.396328, 36.373581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725086, 34.170261, 36.108410>,  <33.482063, 34.521973, 36.688187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725086, 34.170261, 36.108410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355934, 34.272888, 35.993538>,  <33.134445, 34.334465, 35.924614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.355934, 34.272888, 35.993538>,  <33.725086, 34.170261, 36.108410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355934, 34.272888, 35.993538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340668, 0.196217, -0.919480,
		-0.179559, -0.946400, -0.268488,
		-0.922878, 0.256566, -0.287176,
		33.079071, 34.349857, 35.907387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733585, 34.130257, 35.420109>,  <33.725086, 34.170261, 36.108410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733585, 34.130257, 35.420109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371925, 34.298264, 35.451344>,  <33.154930, 34.399067, 35.470085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.371925, 34.298264, 35.451344>,  <33.733585, 34.130257, 35.420109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.371925, 34.298264, 35.451344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157074, 0.496813, -0.853525,
		-0.397294, -0.759447, -0.515167,
		-0.904149, 0.420020, 0.078091,
		33.100681, 34.424271, 35.474770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320889, 33.870731, 34.845295>,  <33.733585, 34.130257, 35.420109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320889, 33.870731, 34.845295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192116, 34.221577, 34.987862>,  <33.114853, 34.432083, 35.073402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.192116, 34.221577, 34.987862>,  <33.320889, 33.870731, 34.845295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192116, 34.221577, 34.987862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185504, 0.427601, -0.884729,
		-0.928413, -0.218702, -0.300365,
		-0.321928, 0.877113, 0.356420,
		33.095539, 34.484711, 35.094788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839207, 34.208916, 34.263351>,  <33.320889, 33.870731, 34.845295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839207, 34.208916, 34.263351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001495, 34.510647, 34.469799>,  <33.098869, 34.691685, 34.593670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001495, 34.510647, 34.469799>,  <32.839207, 34.208916, 34.263351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001495, 34.510647, 34.469799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135946, 0.608208, -0.782049,
		-0.903830, 0.247129, 0.349311,
		0.405721, 0.754327, 0.516121,
		33.123211, 34.736946, 34.624634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352600, 34.795914, 34.108997>,  <32.839207, 34.208916, 34.263351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352600, 34.795914, 34.108997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678734, 34.960011, 34.272423>,  <32.874416, 35.058468, 34.370480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678734, 34.960011, 34.272423>,  <32.352600, 34.795914, 34.108997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678734, 34.960011, 34.272423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123697, 0.812790, -0.569273,
		-0.565616, 0.413613, 0.713445,
		0.815339, 0.410241, 0.408564,
		32.923336, 35.083084, 34.394993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231586, 35.497257, 34.207809>,  <32.352600, 34.795914, 34.108997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231586, 35.497257, 34.207809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630180, 35.465191, 34.198013>,  <32.869335, 35.445950, 34.192135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630180, 35.465191, 34.198013>,  <32.231586, 35.497257, 34.207809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630180, 35.465191, 34.198013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047813, 0.783567, -0.619465,
		0.068856, 0.616113, 0.784642,
		0.996480, -0.080170, -0.024495,
		32.929123, 35.441139, 34.190666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487362, 36.148518, 34.327332>,  <32.231586, 35.497257, 34.207809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487362, 36.148518, 34.327332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789719, 35.945122, 34.162376>,  <32.971134, 35.823086, 34.063404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789719, 35.945122, 34.162376>,  <32.487362, 36.148518, 34.327332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789719, 35.945122, 34.162376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035142, 0.660495, -0.750007,
		0.653748, 0.552435, 0.517135,
		0.755896, -0.508489, -0.412384,
		33.016487, 35.792576, 34.038662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041885, 36.694813, 34.280701>,  <32.487362, 36.148518, 34.327332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041885, 36.694813, 34.280701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088005, 36.390064, 34.025749>,  <33.115677, 36.207214, 33.872776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088005, 36.390064, 34.025749>,  <33.041885, 36.694813, 34.280701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088005, 36.390064, 34.025749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101434, 0.647338, -0.755423,
		0.988138, 0.022447, 0.151917,
		0.115299, -0.761872, -0.637383,
		33.122593, 36.161503, 33.834534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468822, 37.009113, 33.765015>,  <33.041885, 36.694813, 34.280701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468822, 37.009113, 33.765015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345299, 36.675816, 33.581558>,  <33.271187, 36.475838, 33.471485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345299, 36.675816, 33.581558>,  <33.468822, 37.009113, 33.765015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345299, 36.675816, 33.581558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193669, 0.527190, -0.827384,
		0.931199, -0.166676, -0.324172,
		-0.308805, -0.833241, -0.458638,
		33.252659, 36.425842, 33.443966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612129, 37.134827, 33.124218>,  <33.468822, 37.009113, 33.765015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612129, 37.134827, 33.124218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346958, 36.837090, 33.092003>,  <33.187855, 36.658447, 33.072674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.346958, 36.837090, 33.092003>,  <33.612129, 37.134827, 33.124218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346958, 36.837090, 33.092003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393801, 0.438164, -0.808042,
		0.636749, -0.503955, -0.583593,
		-0.662927, -0.744339, -0.080542,
		33.148079, 36.613789, 33.067841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610638, 36.909088, 32.427113>,  <33.612129, 37.134827, 33.124218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610638, 36.909088, 32.427113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253960, 36.812191, 32.580059>,  <33.039955, 36.754055, 32.671825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253960, 36.812191, 32.580059>,  <33.610638, 36.909088, 32.427113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253960, 36.812191, 32.580059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451098, 0.405900, -0.794831,
		0.037337, -0.881229, -0.471212,
		-0.891693, -0.242240, 0.382366,
		32.986450, 36.739521, 32.694767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314697, 36.546242, 31.929585>,  <33.610638, 36.909088, 32.427113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314697, 36.546242, 31.929585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005989, 36.650291, 32.161690>,  <32.820763, 36.712719, 32.300953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005989, 36.650291, 32.161690>,  <33.314697, 36.546242, 31.929585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005989, 36.650291, 32.161690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464690, 0.392202, -0.793877,
		-0.434084, -0.882335, -0.181815,
		-0.771773, 0.260121, 0.580261,
		32.774456, 36.728329, 32.335770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762833, 36.445675, 31.537649>,  <33.314697, 36.546242, 31.929585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762833, 36.445675, 31.537649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558781, 36.637333, 31.823359>,  <32.436352, 36.752327, 31.994783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558781, 36.637333, 31.823359>,  <32.762833, 36.445675, 31.537649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558781, 36.637333, 31.823359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609142, 0.385027, -0.693326,
		-0.607220, -0.788778, 0.095457,
		-0.510127, 0.479148, 0.714274,
		32.405743, 36.781078, 32.037640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093155, 36.263130, 31.458252>,  <32.762833, 36.445675, 31.537649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093155, 36.263130, 31.458252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081623, 36.612865, 31.652039>,  <32.074703, 36.822704, 31.768311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.081623, 36.612865, 31.652039>,  <32.093155, 36.263130, 31.458252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.081623, 36.612865, 31.652039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596963, 0.373686, -0.709925,
		-0.801751, -0.309676, 0.511171,
		-0.028829, 0.874333, 0.484468,
		32.072975, 36.875164, 31.797379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377497, 36.432793, 31.597425>,  <32.093155, 36.263130, 31.458252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377497, 36.432793, 31.597425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583776, 36.775093, 31.614141>,  <31.707544, 36.980473, 31.624172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.583776, 36.775093, 31.614141>,  <31.377497, 36.432793, 31.597425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583776, 36.775093, 31.614141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577283, 0.383102, -0.721094,
		-0.633087, 0.347742, 0.691575,
		0.515699, 0.855750, 0.041791,
		31.738485, 37.031818, 31.626678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913397, 36.986183, 31.331551>,  <31.377497, 36.432793, 31.597425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913397, 36.986183, 31.331551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258011, 37.189232, 31.327946>,  <31.464779, 37.311062, 31.325783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.258011, 37.189232, 31.327946>,  <30.913397, 36.986183, 31.331551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.258011, 37.189232, 31.327946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353673, 0.587326, -0.727986,
		-0.364247, 0.630372, 0.685532,
		0.861533, 0.507621, -0.009014,
		31.516470, 37.341518, 31.325241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.621588, 37.533134, 31.288767>,  <30.913397, 36.986183, 31.331551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.621588, 37.533134, 31.288767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998087, 37.580654, 31.162315>,  <31.223988, 37.609165, 31.086445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998087, 37.580654, 31.162315>,  <30.621588, 37.533134, 31.288767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998087, 37.580654, 31.162315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332201, 0.494149, -0.803405,
		0.060773, 0.861222, 0.504582,
		0.941249, 0.118797, -0.316130,
		31.280462, 37.616295, 31.067476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779835, 38.247837, 31.222939>,  <30.621588, 37.533134, 31.288767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779835, 38.247837, 31.222939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067236, 38.087292, 30.995726>,  <31.239677, 37.990967, 30.859398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067236, 38.087292, 30.995726>,  <30.779835, 38.247837, 31.222939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067236, 38.087292, 30.995726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227702, 0.635954, -0.737370,
		0.657193, 0.659146, 0.365546,
		0.718505, -0.401359, -0.568033,
		31.282787, 37.966885, 30.825315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151695, 38.811405, 30.968336>,  <30.779835, 38.247837, 31.222939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151695, 38.811405, 30.968336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245537, 38.510521, 30.722040>,  <31.301842, 38.329990, 30.574263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245537, 38.510521, 30.722040>,  <31.151695, 38.811405, 30.968336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245537, 38.510521, 30.722040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224615, 0.574328, -0.787207,
		0.945785, 0.322985, -0.034219,
		0.234603, -0.752215, -0.615738,
		31.315918, 38.284855, 30.537319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756411, 39.080059, 30.509161>,  <31.151695, 38.811405, 30.968336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756411, 39.080059, 30.509161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541138, 38.772190, 30.371778>,  <31.411974, 38.587467, 30.289349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541138, 38.772190, 30.371778>,  <31.756411, 39.080059, 30.509161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541138, 38.772190, 30.371778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164393, 0.495541, -0.852886,
		0.826641, -0.402546, -0.393220,
		-0.538182, -0.769673, -0.343458,
		31.379683, 38.541286, 30.268742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059059, 38.909760, 29.926283>,  <31.756411, 39.080059, 30.509161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059059, 38.909760, 29.926283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692196, 38.753792, 29.893341>,  <31.472076, 38.660213, 29.873577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.692196, 38.753792, 29.893341>,  <32.059059, 38.909760, 29.926283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692196, 38.753792, 29.893341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139799, 0.508308, -0.849753,
		0.373192, -0.767847, -0.520710,
		-0.917161, -0.389915, -0.082352,
		31.417048, 38.636818, 29.868635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868839, 38.858196, 29.203182>,  <32.059059, 38.909760, 29.926283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868839, 38.858196, 29.203182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501947, 38.805943, 29.353716>,  <31.281813, 38.774590, 29.444036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.501947, 38.805943, 29.353716>,  <31.868839, 38.858196, 29.203182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501947, 38.805943, 29.353716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391065, 0.475259, -0.788161,
		-0.075892, -0.870094, -0.487009,
		-0.917229, -0.130637, 0.376332,
		31.226778, 38.766750, 29.466616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494720, 38.451469, 28.757481>,  <31.868839, 38.858196, 29.203182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494720, 38.451469, 28.757481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232681, 38.664726, 28.971622>,  <31.075459, 38.792683, 29.100107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232681, 38.664726, 28.971622>,  <31.494720, 38.451469, 28.757481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232681, 38.664726, 28.971622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296676, 0.470139, -0.831236,
		-0.694859, -0.703367, -0.149816,
		-0.655098, 0.533145, 0.535353,
		31.036152, 38.824669, 29.132229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961670, 38.501709, 28.330751>,  <31.494720, 38.451469, 28.757481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961670, 38.501709, 28.330751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919403, 38.784611, 28.610357>,  <30.894043, 38.954353, 28.778122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.919403, 38.784611, 28.610357>,  <30.961670, 38.501709, 28.330751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.919403, 38.784611, 28.610357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340944, 0.634575, -0.693593,
		-0.934126, -0.311616, 0.174080,
		-0.105668, 0.707255, 0.699017,
		30.887703, 38.996788, 28.820063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351910, 38.804935, 28.206863>,  <30.961670, 38.501709, 28.330751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351910, 38.804935, 28.206863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.506395, 39.098320, 28.430605>,  <30.599087, 39.274349, 28.564850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.506395, 39.098320, 28.430605>,  <30.351910, 38.804935, 28.206863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506395, 39.098320, 28.430605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345750, 0.677304, -0.649397,
		-0.855159, 0.057408, 0.515177,
		0.386212, 0.733460, 0.559354,
		30.622259, 39.318359, 28.598412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869425, 39.424828, 28.194363>,  <30.351910, 38.804935, 28.206863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869425, 39.424828, 28.194363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218624, 39.578918, 28.314009>,  <30.428144, 39.671375, 28.385796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.218624, 39.578918, 28.314009>,  <29.869425, 39.424828, 28.194363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218624, 39.578918, 28.314009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078942, 0.716811, -0.692784,
		-0.481290, 0.581187, 0.656186,
		0.872999, 0.385231, 0.299114,
		30.480524, 39.694489, 28.403744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735880, 40.154991, 28.315620>,  <29.869425, 39.424828, 28.194363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735880, 40.154991, 28.315620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129105, 40.115143, 28.254080>,  <30.365040, 40.091236, 28.217155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129105, 40.115143, 28.254080>,  <29.735880, 40.154991, 28.315620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129105, 40.115143, 28.254080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015356, 0.791686, -0.610735,
		0.182641, 0.602752, 0.776745,
		0.983060, -0.099618, -0.153850,
		30.424023, 40.085258, 28.207924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957119, 40.753967, 28.342283>,  <29.735880, 40.154991, 28.315620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957119, 40.753967, 28.342283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257925, 40.589649, 28.136091>,  <30.438410, 40.491058, 28.012377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257925, 40.589649, 28.136091>,  <29.957119, 40.753967, 28.342283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257925, 40.589649, 28.136091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014616, 0.792246, -0.610027,
		0.658982, 0.451216, 0.601786,
		0.752017, -0.410793, -0.515480,
		30.483530, 40.466412, 27.981447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446741, 41.203686, 28.249281>,  <29.957119, 40.753967, 28.342283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446741, 41.203686, 28.249281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508224, 40.960445, 27.937744>,  <30.545115, 40.814503, 27.750822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.508224, 40.960445, 27.937744>,  <30.446741, 41.203686, 28.249281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.508224, 40.960445, 27.937744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125641, 0.769781, -0.625821,
		0.980096, 0.194048, 0.041921,
		0.153709, -0.608097, -0.778840,
		30.554337, 40.778015, 27.704092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972891, 41.520229, 27.842947>,  <30.446741, 41.203686, 28.249281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972891, 41.520229, 27.842947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774044, 41.268566, 27.603939>,  <30.654736, 41.117569, 27.460535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774044, 41.268566, 27.603939>,  <30.972891, 41.520229, 27.842947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774044, 41.268566, 27.603939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008964, 0.692324, -0.721531,
		0.867637, -0.353329, -0.349806,
		-0.497117, -0.629163, -0.597519,
		30.624908, 41.079819, 27.424683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224457, 41.778568, 27.223293>,  <30.972891, 41.520229, 27.842947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224457, 41.778568, 27.223293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905119, 41.556908, 27.129004>,  <30.713516, 41.423912, 27.072430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905119, 41.556908, 27.129004>,  <31.224457, 41.778568, 27.223293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905119, 41.556908, 27.129004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214532, 0.627465, -0.748508,
		0.562692, -0.546998, -0.619815,
		-0.798344, -0.554150, -0.235721,
		30.665617, 41.390663, 27.058287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291914, 41.698845, 26.564751>,  <31.224457, 41.778568, 27.223293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291914, 41.698845, 26.564751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904755, 41.645321, 26.649853>,  <30.672459, 41.613205, 26.700914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904755, 41.645321, 26.649853>,  <31.291914, 41.698845, 26.564751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904755, 41.645321, 26.649853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233482, 0.792060, -0.564028,
		-0.093040, -0.595596, -0.797877,
		-0.967900, -0.133812, 0.212755,
		30.614386, 41.605179, 26.713678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969311, 41.907310, 25.995064>,  <31.291914, 41.698845, 26.564751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969311, 41.907310, 25.995064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658060, 41.924866, 26.245693>,  <30.471310, 41.935398, 26.396070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.658060, 41.924866, 26.245693>,  <30.969311, 41.907310, 25.995064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658060, 41.924866, 26.245693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367592, 0.777066, -0.510925,
		-0.509311, -0.627888, -0.588523,
		-0.778125, 0.043883, 0.626575,
		30.424623, 41.938030, 26.433666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410522, 41.893017, 25.654314>,  <30.969311, 41.907310, 25.995064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410522, 41.893017, 25.654314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267841, 42.056126, 25.990524>,  <30.182232, 42.153992, 26.192249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267841, 42.056126, 25.990524>,  <30.410522, 41.893017, 25.654314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267841, 42.056126, 25.990524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574506, 0.613725, -0.541557,
		-0.736685, -0.676061, 0.015352,
		-0.356704, 0.407777, 0.840524,
		30.160830, 42.178459, 26.242682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705944, 41.998978, 25.552164>,  <30.410522, 41.893017, 25.654314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705944, 41.998978, 25.552164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786436, 42.246876, 25.855591>,  <29.834730, 42.395615, 26.037647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786436, 42.246876, 25.855591>,  <29.705944, 41.998978, 25.552164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786436, 42.246876, 25.855591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585696, 0.696852, -0.413953,
		-0.785155, -0.360990, 0.503208,
		0.201229, 0.619744, 0.758567,
		29.846806, 42.432800, 26.083160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160847, 42.279186, 25.757406>,  <29.705944, 41.998978, 25.552164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160847, 42.279186, 25.757406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450750, 42.543888, 25.834145>,  <29.624691, 42.702709, 25.880188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.450750, 42.543888, 25.834145>,  <29.160847, 42.279186, 25.757406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450750, 42.543888, 25.834145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579590, 0.736115, -0.349586,
		-0.372562, 0.142172, 0.917052,
		0.724757, 0.661757, 0.191847,
		29.668177, 42.742416, 25.891699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.799234, 42.920547, 25.963993>,  <29.160847, 42.279186, 25.757406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.799234, 42.920547, 25.963993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166147, 43.024784, 25.843540>,  <29.386295, 43.087326, 25.771269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.166147, 43.024784, 25.843540>,  <28.799234, 42.920547, 25.963993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166147, 43.024784, 25.843540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384949, 0.773902, -0.502882,
		0.101999, 0.577207, 0.810203,
		0.917284, 0.260593, -0.301132,
		29.441332, 43.102962, 25.753201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868439, 43.599247, 26.220196>,  <28.799234, 42.920547, 25.963993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868439, 43.599247, 26.220196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113020, 43.567917, 25.905239>,  <29.259769, 43.549118, 25.716265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113020, 43.567917, 25.905239>,  <28.868439, 43.599247, 26.220196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113020, 43.567917, 25.905239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350590, 0.865270, -0.358323,
		0.709373, 0.495151, 0.501614,
		0.611455, -0.078323, -0.787393,
		29.296457, 43.544418, 25.669022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378263, 44.200981, 26.142174>,  <28.868439, 43.599247, 26.220196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378263, 44.200981, 26.142174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257124, 44.054199, 25.790350>,  <29.184441, 43.966129, 25.579256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.257124, 44.054199, 25.790350>,  <29.378263, 44.200981, 26.142174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.257124, 44.054199, 25.790350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130535, 0.930174, -0.343127,
		0.944057, 0.010897, -0.329604,
		-0.302850, -0.366956, -0.879560,
		29.166269, 43.944111, 25.526482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671227, 44.225197, 26.787565>,  <29.378263, 44.200981, 26.142174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671227, 44.225197, 26.787565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863728, 44.506073, 26.997454>,  <29.979227, 44.674599, 27.123386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863728, 44.506073, 26.997454>,  <29.671227, 44.225197, 26.787565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863728, 44.506073, 26.997454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272027, 0.688678, -0.672104,
		-0.833306, 0.180713, 0.522441,
		0.481251, 0.702187, 0.524721,
		30.008102, 44.716728, 27.154869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151100, 44.716274, 26.913765>,  <29.671227, 44.225197, 26.787565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151100, 44.716274, 26.913765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501333, 44.899715, 26.974482>,  <29.711473, 45.009781, 27.010912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501333, 44.899715, 26.974482>,  <29.151100, 44.716274, 26.913765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501333, 44.899715, 26.974482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240006, 0.685682, -0.687195,
		-0.419229, 0.565265, 0.710438,
		0.875582, 0.458601, 0.151791,
		29.764008, 45.037296, 27.020020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.150970, 45.425224, 27.117594>,  <29.151100, 44.716274, 26.913765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.150970, 45.425224, 27.117594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478691, 45.334858, 26.906803>,  <29.675323, 45.280636, 26.780329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478691, 45.334858, 26.906803>,  <29.150970, 45.425224, 27.117594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478691, 45.334858, 26.906803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345698, 0.538612, -0.768368,
		0.457425, 0.811701, 0.363187,
		0.819302, -0.225918, -0.526978,
		29.724482, 45.267082, 26.748709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478180, 46.043911, 27.003544>,  <29.150970, 45.425224, 27.117594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478180, 46.043911, 27.003544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538269, 45.799530, 26.692631>,  <29.574322, 45.652901, 26.506083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.538269, 45.799530, 26.692631>,  <29.478180, 46.043911, 27.003544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538269, 45.799530, 26.692631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275674, 0.729136, -0.626390,
		0.949440, 0.308375, -0.058891,
		0.150223, -0.610954, -0.777282,
		29.583336, 45.616245, 26.459446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.190289, 46.078506, 27.168121>,  <29.478180, 46.043911, 27.003544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.190289, 46.078506, 27.168121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.297272, 45.846260, 26.860525>,  <30.361462, 45.706913, 26.675968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.297272, 45.846260, 26.860525>,  <30.190289, 46.078506, 27.168121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297272, 45.846260, 26.860525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772508, -0.606216, 0.189034,
		-0.575930, 0.543492, -0.610673,
		0.267461, -0.580620, -0.768989,
		30.377510, 45.672073, 26.629827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.856876, 45.846088, 27.224588>,  <30.190289, 46.078506, 27.168121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.856876, 45.846088, 27.224588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537077, 45.607594, 27.195442>,  <30.345198, 45.464497, 27.177954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.537077, 45.607594, 27.195442>,  <30.856876, 45.846088, 27.224588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.537077, 45.607594, 27.195442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348963, -0.559778, 0.751581,
		-0.488907, 0.575459, 0.655604,
		-0.799497, -0.596235, -0.072866,
		30.297228, 45.428722, 27.173582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716717, 45.562504, 27.867550>,  <30.856876, 45.846088, 27.224588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716717, 45.562504, 27.867550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481596, 45.315720, 27.658226>,  <30.340523, 45.167648, 27.532633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481596, 45.315720, 27.658226>,  <30.716717, 45.562504, 27.867550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481596, 45.315720, 27.658226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064574, -0.680571, 0.729831,
		-0.806423, 0.395204, 0.439881,
		-0.587802, -0.616958, -0.523308,
		30.305256, 45.130630, 27.501234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344400, 45.388931, 28.357607>,  <30.716717, 45.562504, 27.867550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344400, 45.388931, 28.357607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332790, 45.098278, 28.083042>,  <30.325825, 44.923885, 27.918303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.332790, 45.098278, 28.083042>,  <30.344400, 45.388931, 28.357607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.332790, 45.098278, 28.083042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111814, -0.684753, 0.720146,
		-0.993305, -0.055848, 0.101122,
		-0.029025, -0.726632, -0.686414,
		30.324083, 44.880287, 27.877117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861616, 44.910477, 28.543966>,  <30.344400, 45.388931, 28.357607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861616, 44.910477, 28.543966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116282, 44.713745, 28.306389>,  <30.269081, 44.595707, 28.163843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116282, 44.713745, 28.306389>,  <29.861616, 44.910477, 28.543966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116282, 44.713745, 28.306389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089824, -0.717671, 0.690565,
		-0.765892, -0.493008, -0.412737,
		0.636664, -0.491825, -0.593942,
		30.307281, 44.566196, 28.128206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745054, 44.116451, 28.751469>,  <29.861616, 44.910477, 28.543966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745054, 44.116451, 28.751469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069403, 44.078186, 28.520527>,  <30.264011, 44.055229, 28.381962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069403, 44.078186, 28.520527>,  <29.745054, 44.116451, 28.751469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069403, 44.078186, 28.520527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383870, -0.657721, 0.648110,
		-0.441735, -0.747163, -0.496606,
		0.810872, -0.095661, -0.577352,
		30.312664, 44.049488, 28.347321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923697, 43.419624, 28.728472>,  <29.745054, 44.116451, 28.751469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923697, 43.419624, 28.728472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267614, 43.595734, 28.625002>,  <30.473965, 43.701401, 28.562920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.267614, 43.595734, 28.625002>,  <29.923697, 43.419624, 28.728472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.267614, 43.595734, 28.625002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480306, -0.525277, 0.702417,
		0.173378, -0.728178, -0.663096,
		0.859794, 0.440273, -0.258677,
		30.525553, 43.727814, 28.547400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446791, 42.889034, 28.504086>,  <29.923697, 43.419624, 28.728472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446791, 42.889034, 28.504086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657410, 43.203617, 28.633228>,  <30.783781, 43.392368, 28.710714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.657410, 43.203617, 28.633228>,  <30.446791, 42.889034, 28.504086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657410, 43.203617, 28.633228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564275, -0.607358, 0.559205,
		0.635880, -0.112266, -0.763579,
		0.526546, 0.786456, 0.322858,
		30.815372, 43.439552, 28.730085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127943, 42.710045, 28.577682>,  <30.446791, 42.889034, 28.504086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127943, 42.710045, 28.577682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153408, 43.037342, 28.806217>,  <31.168688, 43.233719, 28.943338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.153408, 43.037342, 28.806217>,  <31.127943, 42.710045, 28.577682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.153408, 43.037342, 28.806217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568395, -0.500299, 0.653168,
		0.820289, 0.283161, -0.496937,
		0.063665, 0.818243, 0.571337,
		31.172508, 43.282814, 28.977619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.845970, 42.739113, 28.720875>,  <31.127943, 42.710045, 28.577682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.845970, 42.739113, 28.720875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659039, 42.974617, 28.984682>,  <31.546879, 43.115921, 29.142965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659039, 42.974617, 28.984682>,  <31.845970, 42.739113, 28.720875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659039, 42.974617, 28.984682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454154, -0.480162, 0.750459,
		0.758517, 0.650234, -0.042995,
		-0.467329, 0.588762, 0.659517,
		31.518839, 43.151245, 29.182537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386070, 43.032475, 29.218323>,  <31.845970, 42.739113, 28.720875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386070, 43.032475, 29.218323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044483, 43.045170, 29.426062>,  <31.839529, 43.052788, 29.550705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.044483, 43.045170, 29.426062>,  <32.386070, 43.032475, 29.218323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.044483, 43.045170, 29.426062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471378, -0.375417, 0.798038,
		0.220303, 0.926312, 0.305634,
		-0.853972, 0.031741, 0.519349,
		31.788292, 43.054691, 29.581867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578552, 43.279514, 29.956980>,  <32.386070, 43.032475, 29.218323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578552, 43.279514, 29.956980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217003, 43.111290, 29.988329>,  <32.000072, 43.010357, 30.007139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217003, 43.111290, 29.988329>,  <32.578552, 43.279514, 29.956980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217003, 43.111290, 29.988329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301458, -0.496166, 0.814213,
		-0.303539, 0.759571, 0.575252,
		-0.903873, -0.420560, 0.078373,
		31.945841, 42.985123, 30.011841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429520, 43.294125, 30.610079>,  <32.578552, 43.279514, 29.956980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429520, 43.294125, 30.610079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148991, 43.032497, 30.496700>,  <31.980673, 42.875523, 30.428673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.148991, 43.032497, 30.496700>,  <32.429520, 43.294125, 30.610079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148991, 43.032497, 30.496700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019170, -0.414786, 0.909717,
		-0.712586, 0.632572, 0.303438,
		-0.701323, -0.654068, -0.283444,
		31.938593, 42.836277, 30.411667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749651, 43.271255, 31.072548>,  <32.429520, 43.294125, 30.610079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749651, 43.271255, 31.072548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825560, 42.926445, 30.884552>,  <31.871105, 42.719559, 30.771755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825560, 42.926445, 30.884552>,  <31.749651, 43.271255, 31.072548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825560, 42.926445, 30.884552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089789, -0.461444, 0.882614,
		-0.977714, -0.209695, -0.010168,
		0.189772, -0.862031, -0.469989,
		31.882492, 42.667835, 30.743555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658396, 42.768066, 31.549320>,  <31.749651, 43.271255, 31.072548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658396, 42.768066, 31.549320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806292, 42.530930, 31.263151>,  <31.895029, 42.388645, 31.091450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806292, 42.530930, 31.263151>,  <31.658396, 42.768066, 31.549320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806292, 42.530930, 31.263151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235874, -0.684870, 0.689432,
		-0.898698, -0.423658, -0.113385,
		0.369738, -0.592847, -0.715421,
		31.917213, 42.353077, 31.048525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348175, 42.052261, 31.710669>,  <31.658396, 42.768066, 31.549320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348175, 42.052261, 31.710669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662949, 42.023510, 31.465532>,  <31.851812, 42.006260, 31.318451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662949, 42.023510, 31.465532>,  <31.348175, 42.052261, 31.710669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662949, 42.023510, 31.465532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353308, -0.761777, 0.543019,
		-0.505876, -0.643840, -0.574073,
		0.786933, -0.071876, -0.612838,
		31.899029, 42.001945, 31.281681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403503, 41.350708, 31.420820>,  <31.348175, 42.052261, 31.710669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403503, 41.350708, 31.420820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770908, 41.508659, 31.412737>,  <31.991350, 41.603432, 31.407887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.770908, 41.508659, 31.412737>,  <31.403503, 41.350708, 31.420820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770908, 41.508659, 31.412737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315551, -0.701269, 0.639257,
		0.238257, -0.593542, -0.768727,
		0.918510, 0.394880, -0.020210,
		32.046463, 41.627125, 31.406673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842915, 40.792633, 31.263956>,  <31.403503, 41.350708, 31.420820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842915, 40.792633, 31.263956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082413, 41.061817, 31.437683>,  <32.226112, 41.223328, 31.541920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.082413, 41.061817, 31.437683>,  <31.842915, 40.792633, 31.263956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082413, 41.061817, 31.437683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354659, -0.708962, 0.609582,
		0.718137, -0.210950, -0.663159,
		0.598746, 0.672959, 0.434316,
		32.262035, 41.263706, 31.567978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.564598, 40.449989, 31.225117>,  <31.842915, 40.792633, 31.263956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.564598, 40.449989, 31.225117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555832, 40.710999, 31.528097>,  <32.550571, 40.867603, 31.709885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555832, 40.710999, 31.528097>,  <32.564598, 40.449989, 31.225117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555832, 40.710999, 31.528097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312120, -0.715297, 0.625245,
		0.949790, 0.250119, -0.187989,
		-0.021917, 0.652526, 0.757449,
		32.549255, 40.906757, 31.755331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162926, 40.230621, 31.617867>,  <32.564598, 40.449989, 31.225117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162926, 40.230621, 31.617867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960564, 40.477089, 31.859327>,  <32.839146, 40.624969, 32.004204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960564, 40.477089, 31.859327>,  <33.162926, 40.230621, 31.617867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960564, 40.477089, 31.859327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253595, -0.562643, 0.786843,
		0.824469, 0.551151, 0.128386,
		-0.505905, 0.616170, 0.603651,
		32.808792, 40.661942, 32.040424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.580460, 40.224751, 32.098820>,  <33.162926, 40.230621, 31.617867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.580460, 40.224751, 32.098820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245872, 40.347198, 32.280640>,  <33.045120, 40.420666, 32.389732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.245872, 40.347198, 32.280640>,  <33.580460, 40.224751, 32.098820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.245872, 40.347198, 32.280640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203766, -0.596244, 0.776513,
		0.508730, 0.742148, 0.436360,
		-0.836465, 0.306120, 0.454551,
		32.994934, 40.439034, 32.417004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688065, 40.413651, 32.830555>,  <33.580460, 40.224751, 32.098820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688065, 40.413651, 32.830555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290241, 40.371967, 32.830151>,  <33.051548, 40.346958, 32.829910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.290241, 40.371967, 32.830151>,  <33.688065, 40.413651, 32.830555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290241, 40.371967, 32.830151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060391, -0.584209, 0.809353,
		-0.084929, 0.804886, 0.587321,
		-0.994555, -0.104206, -0.001009,
		32.991875, 40.340706, 32.829849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399021, 40.718220, 33.438972>,  <33.688065, 40.413651, 32.830555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399021, 40.718220, 33.438972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132572, 40.437679, 33.337479>,  <32.972702, 40.269356, 33.276581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.132572, 40.437679, 33.337479>,  <33.399021, 40.718220, 33.438972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132572, 40.437679, 33.337479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047000, -0.379001, 0.924202,
		-0.744360, 0.603706, 0.285424,
		-0.666123, -0.701354, -0.253739,
		32.932735, 40.227272, 33.261356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009995, 40.649876, 34.085312>,  <33.399021, 40.718220, 33.438972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009995, 40.649876, 34.085312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937210, 40.334900, 33.849743>,  <32.893539, 40.145916, 33.708401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937210, 40.334900, 33.849743>,  <33.009995, 40.649876, 34.085312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937210, 40.334900, 33.849743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067968, -0.587417, 0.806425,
		-0.980954, 0.186765, 0.053366,
		-0.181960, -0.787439, -0.588923,
		32.882622, 40.098667, 33.673065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467678, 40.404327, 34.320267>,  <33.009995, 40.649876, 34.085312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467678, 40.404327, 34.320267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644707, 40.096439, 34.136238>,  <32.750923, 39.911705, 34.025822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644707, 40.096439, 34.136238>,  <32.467678, 40.404327, 34.320267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644707, 40.096439, 34.136238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139277, -0.565824, 0.812677,
		-0.885851, -0.295591, -0.357622,
		0.442572, -0.769720, -0.460067,
		32.777477, 39.865524, 33.998219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018356, 39.778969, 34.360409>,  <32.467678, 40.404327, 34.320267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018356, 39.778969, 34.360409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387661, 39.643620, 34.287640>,  <32.609241, 39.562408, 34.243977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387661, 39.643620, 34.287640>,  <32.018356, 39.778969, 34.360409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387661, 39.643620, 34.287640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079415, -0.631414, 0.771368,
		-0.375880, -0.697725, -0.609831,
		0.923259, -0.338372, -0.181926,
		32.664639, 39.542107, 34.233063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969780, 39.115528, 34.481331>,  <32.018356, 39.778969, 34.360409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969780, 39.115528, 34.481331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364189, 39.179161, 34.501133>,  <32.600834, 39.217339, 34.513016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.364189, 39.179161, 34.501133>,  <31.969780, 39.115528, 34.481331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364189, 39.179161, 34.501133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070909, -0.669593, 0.739336,
		0.150760, -0.725492, -0.671515,
		0.986024, 0.159079, 0.049504,
		32.659996, 39.226883, 34.515984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159027, 38.496361, 34.653248>,  <31.969780, 39.115528, 34.481331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159027, 38.496361, 34.653248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475613, 38.717514, 34.757484>,  <32.665565, 38.850204, 34.820026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.475613, 38.717514, 34.757484>,  <32.159027, 38.496361, 34.653248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475613, 38.717514, 34.757484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218573, -0.654171, 0.724076,
		0.570800, -0.516121, -0.638597,
		0.791463, 0.552883, 0.260591,
		32.713051, 38.883377, 34.835663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838192, 38.055019, 34.766285>,  <32.159027, 38.496361, 34.653248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838192, 38.055019, 34.766285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940025, 38.393993, 34.952633>,  <33.001125, 38.597378, 35.064442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940025, 38.393993, 34.952633>,  <32.838192, 38.055019, 34.766285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940025, 38.393993, 34.952633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307947, -0.527707, 0.791640,
		0.916708, -0.058078, -0.395314,
		0.254586, 0.847438, 0.465869,
		33.016403, 38.648224, 35.092392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534744, 37.989586, 34.932106>,  <32.838192, 38.055019, 34.766285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534744, 37.989586, 34.932106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398872, 38.268883, 35.184166>,  <33.317348, 38.436459, 35.335400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.398872, 38.268883, 35.184166>,  <33.534744, 37.989586, 34.932106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398872, 38.268883, 35.184166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445297, -0.470745, 0.761649,
		0.828450, 0.539318, -0.151021,
		-0.339678, 0.698237, 0.630145,
		33.296970, 38.478355, 35.373211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949390, 37.972805, 35.511131>,  <33.534744, 37.989586, 34.932106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949390, 37.972805, 35.511131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700882, 38.223652, 35.699066>,  <33.551777, 38.374161, 35.811825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700882, 38.223652, 35.699066>,  <33.949390, 37.972805, 35.511131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700882, 38.223652, 35.699066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252503, -0.407385, 0.877656,
		0.741800, 0.663895, 0.094745,
		-0.621269, 0.627121, 0.469833,
		33.514500, 38.411789, 35.840015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278778, 38.031078, 36.209702>,  <33.949390, 37.972805, 35.511131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278778, 38.031078, 36.209702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883305, 38.085354, 36.235271>,  <33.646019, 38.117920, 36.250614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883305, 38.085354, 36.235271>,  <34.278778, 38.031078, 36.209702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883305, 38.085354, 36.235271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041087, -0.654875, 0.754620,
		0.144258, 0.743456, 0.653042,
		-0.988687, 0.135692, 0.063925,
		33.586700, 38.126060, 36.254448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074295, 38.299488, 36.972221>,  <34.278778, 38.031078, 36.209702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074295, 38.299488, 36.972221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779808, 38.103497, 36.785503>,  <33.603115, 37.985901, 36.673473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.779808, 38.103497, 36.785503>,  <34.074295, 38.299488, 36.972221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779808, 38.103497, 36.785503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162609, -0.541476, 0.824841,
		-0.656915, 0.683170, 0.318970,
		-0.736221, -0.489983, -0.466794,
		33.558941, 37.956501, 36.645466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576073, 38.226227, 37.587971>,  <34.074295, 38.299488, 36.972221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576073, 38.226227, 37.587971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468224, 37.972992, 37.297726>,  <33.403515, 37.821053, 37.123581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468224, 37.972992, 37.297726>,  <33.576073, 38.226227, 37.587971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468224, 37.972992, 37.297726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022830, -0.749102, 0.662062,
		-0.962695, 0.195073, 0.187522,
		-0.269624, -0.633082, -0.725610,
		33.387337, 37.783066, 37.080044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016731, 37.922108, 37.859951>,  <33.576073, 38.226227, 37.587971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016731, 37.922108, 37.859951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137142, 37.660473, 37.582375>,  <33.209389, 37.503490, 37.415829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.137142, 37.660473, 37.582375>,  <33.016731, 37.922108, 37.859951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137142, 37.660473, 37.582375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170878, -0.752911, 0.635551,
		-0.938182, -0.072737, -0.338414,
		0.301024, -0.654090, -0.693938,
		33.227448, 37.464245, 37.374191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591679, 37.386562, 38.001606>,  <33.016731, 37.922108, 37.859951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591679, 37.386562, 38.001606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893536, 37.237274, 37.785751>,  <33.074650, 37.147701, 37.656239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893536, 37.237274, 37.785751>,  <32.591679, 37.386562, 38.001606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893536, 37.237274, 37.785751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053533, -0.784693, 0.617568,
		-0.653944, -0.494934, -0.572187,
		0.754647, -0.373224, -0.539641,
		33.119930, 37.125305, 37.623859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393620, 36.707165, 37.875019>,  <32.591679, 37.386562, 38.001606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393620, 36.707165, 37.875019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784401, 36.699009, 37.790024>,  <33.018867, 36.694115, 37.739029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.784401, 36.699009, 37.790024>,  <32.393620, 36.707165, 37.875019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784401, 36.699009, 37.790024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090749, -0.861330, 0.499875,
		-0.193210, -0.507636, -0.839628,
		0.976952, -0.020386, -0.212484,
		33.077488, 36.692894, 37.726280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480576, 35.939957, 37.684471>,  <32.393620, 36.707165, 37.875019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480576, 35.939957, 37.684471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830166, 36.090870, 37.806999>,  <33.039921, 36.181419, 37.880516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.830166, 36.090870, 37.806999>,  <32.480576, 35.939957, 37.684471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830166, 36.090870, 37.806999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189420, -0.844927, 0.500218,
		0.447542, -0.379153, -0.809906,
		0.873971, 0.377281, 0.306321,
		33.092358, 36.204056, 37.898895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796013, 35.410954, 37.967098>,  <32.480576, 35.939957, 37.684471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796013, 35.410954, 37.967098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023823, 35.707047, 38.110035>,  <33.160507, 35.884705, 38.195797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023823, 35.707047, 38.110035>,  <32.796013, 35.410954, 37.967098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023823, 35.707047, 38.110035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248545, -0.569469, 0.783537,
		0.783497, -0.357429, -0.508309,
		0.569525, 0.740236, 0.357340,
		33.194679, 35.929119, 38.217236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448719, 35.117329, 38.130383>,  <32.796013, 35.410954, 37.967098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448719, 35.117329, 38.130383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447800, 35.464931, 38.328300>,  <33.447247, 35.673492, 38.447052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447800, 35.464931, 38.328300>,  <33.448719, 35.117329, 38.130383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447800, 35.464931, 38.328300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510017, -0.424588, 0.748069,
		0.860161, 0.254075, -0.442232,
		-0.002299, 0.869006, 0.494797,
		33.447109, 35.725632, 38.476738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079857, 35.007904, 38.538933>,  <33.448719, 35.117329, 38.130383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079857, 35.007904, 38.538933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773773, 35.223000, 38.680523>,  <33.590122, 35.352058, 38.765476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.773773, 35.223000, 38.680523>,  <34.079857, 35.007904, 38.538933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.773773, 35.223000, 38.680523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123250, -0.417296, 0.900374,
		0.631876, 0.732600, 0.253041,
		-0.765207, 0.537737, 0.353972,
		33.544212, 35.384319, 38.786716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400444, 35.161068, 39.101158>,  <34.079857, 35.007904, 38.538933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400444, 35.161068, 39.101158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003426, 35.198006, 39.132961>,  <33.765213, 35.220169, 39.152042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003426, 35.198006, 39.132961>,  <34.400444, 35.161068, 39.101158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003426, 35.198006, 39.132961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003705, -0.629303, 0.777151,
		0.121804, 0.771654, 0.624271,
		-0.992547, 0.092347, 0.079511,
		33.705662, 35.225708, 39.156815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994423, 35.471886, 38.772652>,  <34.400444, 35.161068, 39.101158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994423, 35.471886, 38.772652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373192, 35.483612, 38.644608>,  <35.600452, 35.490650, 38.567780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373192, 35.483612, 38.644608>,  <34.994423, 35.471886, 38.772652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373192, 35.483612, 38.644608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200708, 0.831789, -0.517535,
		0.251091, 0.554317, 0.793527,
		0.946926, 0.029319, -0.320111,
		35.657269, 35.492409, 38.548573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149292, 36.221027, 38.747120>,  <34.994423, 35.471886, 38.772652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149292, 36.221027, 38.747120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413380, 36.029343, 38.515789>,  <35.571831, 35.914333, 38.376991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.413380, 36.029343, 38.515789>,  <35.149292, 36.221027, 38.747120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413380, 36.029343, 38.515789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033721, 0.750315, -0.660220,
		0.750315, 0.455393, 0.479213,
		0.660220, -0.479213, -0.578328,
		35.611446, 35.885578, 38.342289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723618, 36.753586, 38.606972>,  <35.149292, 36.221027, 38.747120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723618, 36.753586, 38.606972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762611, 36.476299, 38.321327>,  <35.786007, 36.309929, 38.149940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762611, 36.476299, 38.321327>,  <35.723618, 36.753586, 38.606972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762611, 36.476299, 38.321327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117018, 0.720533, -0.683475,
		0.988334, -0.016934, 0.151361,
		0.097487, -0.693213, -0.714109,
		35.791859, 36.268333, 38.107094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384052, 36.894428, 38.226723>,  <35.723618, 36.753586, 38.606972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384052, 36.894428, 38.226723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166405, 36.676693, 37.971340>,  <36.035816, 36.546051, 37.818111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.166405, 36.676693, 37.971340>,  <36.384052, 36.894428, 38.226723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.166405, 36.676693, 37.971340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260621, 0.613666, -0.745312,
		0.797502, -0.571936, -0.192043,
		-0.544121, -0.544337, -0.638458,
		36.003170, 36.513393, 37.779804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781448, 36.715786, 37.615902>,  <36.384052, 36.894428, 38.226723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781448, 36.715786, 37.615902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396988, 36.694748, 37.507523>,  <36.166309, 36.682125, 37.442493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.396988, 36.694748, 37.507523>,  <36.781448, 36.715786, 37.615902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396988, 36.694748, 37.507523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220191, 0.445795, -0.867631,
		0.166423, -0.893589, -0.416897,
		-0.961155, -0.052597, -0.270951,
		36.108643, 36.678970, 37.426239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843208, 36.543106, 36.937328>,  <36.781448, 36.715786, 37.615902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843208, 36.543106, 36.937328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463905, 36.668873, 36.954971>,  <36.236324, 36.744331, 36.965557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463905, 36.668873, 36.954971>,  <36.843208, 36.543106, 36.937328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463905, 36.668873, 36.954971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106352, 0.445462, -0.888961,
		-0.299155, -0.838274, -0.455853,
		-0.948259, 0.314418, 0.044110,
		36.179428, 36.763199, 36.968204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543770, 36.441734, 36.202473>,  <36.843208, 36.543106, 36.937328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543770, 36.441734, 36.202473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311348, 36.698856, 36.402145>,  <36.171894, 36.853130, 36.521950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.311348, 36.698856, 36.402145>,  <36.543770, 36.441734, 36.202473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.311348, 36.698856, 36.402145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001397, 0.612561, -0.790422,
		-0.813865, -0.459974, -0.355032,
		-0.581052, 0.642801, 0.499185,
		36.137032, 36.891697, 36.551899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166489, 36.748363, 35.653046>,  <36.543770, 36.441734, 36.202473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166489, 36.748363, 35.653046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112743, 36.985455, 35.970692>,  <36.080498, 37.127708, 36.161278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.112743, 36.985455, 35.970692>,  <36.166489, 36.748363, 35.653046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112743, 36.985455, 35.970692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111701, 0.787215, -0.606478,
		-0.984616, -0.170192, -0.039565,
		-0.134364, 0.592728, 0.794115,
		36.072433, 37.163273, 36.208927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662079, 37.122299, 35.459377>,  <36.166489, 36.748363, 35.653046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662079, 37.122299, 35.459377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825787, 37.349442, 35.745045>,  <35.924011, 37.485725, 35.916447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825787, 37.349442, 35.745045>,  <35.662079, 37.122299, 35.459377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825787, 37.349442, 35.745045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024708, 0.775541, -0.630814,
		-0.912081, 0.275816, 0.303372,
		0.409266, 0.567857, 0.714170,
		35.948566, 37.519798, 35.959297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246708, 37.788120, 35.621277>,  <35.662079, 37.122299, 35.459377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246708, 37.788120, 35.621277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638027, 37.842098, 35.684177>,  <35.872818, 37.874485, 35.721916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.638027, 37.842098, 35.684177>,  <35.246708, 37.788120, 35.621277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.638027, 37.842098, 35.684177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010114, 0.789065, -0.614227,
		-0.206968, 0.599305, 0.773304,
		0.978296, 0.134946, 0.157250,
		35.931515, 37.882584, 35.731354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291782, 38.496395, 35.588104>,  <35.246708, 37.788120, 35.621277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291782, 38.496395, 35.588104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679596, 38.398468, 35.584713>,  <35.912285, 38.339714, 35.582676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679596, 38.398468, 35.584713>,  <35.291782, 38.496395, 35.588104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679596, 38.398468, 35.584713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195569, 0.794426, -0.575013,
		0.147510, 0.555835, 0.818100,
		0.969533, -0.244815, -0.008481,
		35.970455, 38.325024, 35.582169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714867, 39.088844, 35.749615>,  <35.291782, 38.496395, 35.588104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714867, 39.088844, 35.749615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973698, 38.866821, 35.540539>,  <36.128994, 38.733608, 35.415092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973698, 38.866821, 35.540539>,  <35.714867, 39.088844, 35.749615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973698, 38.866821, 35.540539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115742, 0.749127, -0.652237,
		0.753592, 0.361548, 0.548983,
		0.647073, -0.555060, -0.522690,
		36.167820, 38.700302, 35.383732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264072, 39.548191, 35.582428>,  <35.714867, 39.088844, 35.749615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264072, 39.548191, 35.582428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297817, 39.251720, 35.316032>,  <36.318066, 39.073837, 35.156197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297817, 39.251720, 35.316032>,  <36.264072, 39.548191, 35.582428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297817, 39.251720, 35.316032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069733, 0.671124, -0.738059,
		0.993992, 0.015825, 0.108304,
		0.084365, -0.741176, -0.665988,
		36.323128, 39.029369, 35.116238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695621, 39.777748, 35.126614>,  <36.264072, 39.548191, 35.582428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695621, 39.777748, 35.126614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548649, 39.469223, 34.918739>,  <36.460464, 39.284107, 34.794014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548649, 39.469223, 34.918739>,  <36.695621, 39.777748, 35.126614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548649, 39.469223, 34.918739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003866, 0.557504, -0.830165,
		0.930042, -0.307038, -0.201863,
		-0.367432, -0.771308, -0.519690,
		36.438419, 39.237831, 34.762833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068253, 39.707722, 34.454823>,  <36.695621, 39.777748, 35.126614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068253, 39.707722, 34.454823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699020, 39.563862, 34.400322>,  <36.477482, 39.477547, 34.367622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.699020, 39.563862, 34.400322>,  <37.068253, 39.707722, 34.454823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699020, 39.563862, 34.400322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084308, 0.534889, -0.840705,
		0.375240, -0.764555, -0.524070,
		-0.923086, -0.359650, -0.136254,
		36.422096, 39.455967, 34.359447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010448, 39.862724, 33.843819>,  <37.068253, 39.707722, 34.454823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010448, 39.862724, 33.843819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627319, 39.778519, 33.922054>,  <36.397442, 39.727997, 33.968994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627319, 39.778519, 33.922054>,  <37.010448, 39.862724, 33.843819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627319, 39.778519, 33.922054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282769, 0.569445, -0.771864,
		0.051112, -0.794617, -0.604956,
		-0.957825, -0.210514, 0.195588,
		36.339973, 39.715363, 33.980732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687321, 39.712872, 33.168919>,  <37.010448, 39.862724, 33.843819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687321, 39.712872, 33.168919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380543, 39.789822, 33.413799>,  <36.196476, 39.835991, 33.560726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380543, 39.789822, 33.413799>,  <36.687321, 39.712872, 33.168919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380543, 39.789822, 33.413799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453682, 0.512155, -0.729294,
		-0.453839, -0.837072, -0.305517,
		-0.766944, 0.192374, 0.612200,
		36.150459, 39.847534, 33.597458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002312, 39.588470, 32.814213>,  <36.687321, 39.712872, 33.168919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002312, 39.588470, 32.814213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896954, 39.841194, 33.105812>,  <35.833736, 39.992828, 33.280773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896954, 39.841194, 33.105812>,  <36.002312, 39.588470, 32.814213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896954, 39.841194, 33.105812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549414, 0.522902, -0.651704,
		-0.792947, -0.572179, 0.209394,
		-0.263399, 0.631811, 0.728997,
		35.817932, 40.030739, 33.324512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.214512, 39.789425, 32.885864>,  <36.002312, 39.588470, 32.814213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.214512, 39.789425, 32.885864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390961, 40.100651, 33.064762>,  <35.496830, 40.287388, 33.172100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390961, 40.100651, 33.064762>,  <35.214512, 39.789425, 32.885864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390961, 40.100651, 33.064762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397070, 0.616129, -0.680235,
		-0.804827, 0.122479, 0.580734,
		0.441122, 0.778064, 0.447244,
		35.523296, 40.334068, 33.198936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784485, 40.249290, 32.722897>,  <35.214512, 39.789425, 32.885864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784485, 40.249290, 32.722897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116486, 40.450718, 32.818829>,  <35.315685, 40.571575, 32.876389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116486, 40.450718, 32.818829>,  <34.784485, 40.249290, 32.722897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116486, 40.450718, 32.818829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276168, 0.744608, -0.607692,
		-0.484594, 0.438152, 0.757095,
		0.830000, 0.503569, 0.239829,
		35.365486, 40.601788, 32.890778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526413, 40.839485, 32.795479>,  <34.784485, 40.249290, 32.722897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526413, 40.839485, 32.795479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914669, 40.885014, 32.710712>,  <35.147621, 40.912331, 32.659851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914669, 40.885014, 32.710712>,  <34.526413, 40.839485, 32.795479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914669, 40.885014, 32.710712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239753, 0.529583, -0.813671,
		0.019613, 0.840587, 0.541322,
		0.970636, 0.113825, -0.211920,
		35.205860, 40.919163, 32.647137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720928, 41.560410, 32.640373>,  <34.526413, 40.839485, 32.795479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720928, 41.560410, 32.640373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999870, 41.335125, 32.463066>,  <35.167236, 41.199955, 32.356682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999870, 41.335125, 32.463066>,  <34.720928, 41.560410, 32.640373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999870, 41.335125, 32.463066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145156, 0.494668, -0.856874,
		0.701875, 0.661887, 0.263204,
		0.697353, -0.563213, -0.443272,
		35.209076, 41.166161, 32.330086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171261, 42.080017, 32.293194>,  <34.720928, 41.560410, 32.640373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171261, 42.080017, 32.293194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175518, 41.721157, 32.116554>,  <35.178070, 41.505840, 32.010571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175518, 41.721157, 32.116554>,  <35.171261, 42.080017, 32.293194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175518, 41.721157, 32.116554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102380, 0.438327, -0.892966,
		0.994689, 0.054712, -0.087186,
		0.010639, -0.897149, -0.441601,
		35.178711, 41.452011, 31.984074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456360, 42.298470, 31.695641>,  <35.171261, 42.080017, 32.293194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456360, 42.298470, 31.695641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345070, 41.927372, 31.596144>,  <35.278294, 41.704712, 31.536446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345070, 41.927372, 31.596144>,  <35.456360, 42.298470, 31.695641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345070, 41.927372, 31.596144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036642, 0.269030, -0.962435,
		0.959816, -0.258661, -0.108846,
		-0.278227, -0.927749, -0.248741,
		35.261600, 41.649048, 31.521521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.629986, 42.303814, 30.999342>,  <35.456360, 42.298470, 31.695641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.629986, 42.303814, 30.999342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400803, 41.977074, 31.026089>,  <35.263294, 41.781029, 31.042137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.400803, 41.977074, 31.026089>,  <35.629986, 42.303814, 30.999342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400803, 41.977074, 31.026089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344255, 0.165823, -0.924117,
		0.743779, -0.552499, -0.376215,
		-0.572959, -0.816853, 0.066864,
		35.228916, 41.732018, 31.046148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780128, 41.879860, 30.438374>,  <35.629986, 42.303814, 30.999342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780128, 41.879860, 30.438374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411446, 41.785679, 30.561676>,  <35.190235, 41.729172, 30.635658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.411446, 41.785679, 30.561676>,  <35.780128, 41.879860, 30.438374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411446, 41.785679, 30.561676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337317, 0.094175, -0.936669,
		0.191512, -0.967312, -0.166224,
		-0.921705, -0.235454, 0.308255,
		35.134933, 41.715042, 30.654152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567791, 41.453709, 30.014988>,  <35.780128, 41.879860, 30.438374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567791, 41.453709, 30.014988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222370, 41.577518, 30.174223>,  <35.015118, 41.651806, 30.269764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222370, 41.577518, 30.174223>,  <35.567791, 41.453709, 30.014988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222370, 41.577518, 30.174223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347608, 0.206513, -0.914615,
		-0.365305, -0.928196, -0.070741,
		-0.863551, 0.309523, 0.398089,
		34.963306, 41.670376, 30.293650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014568, 41.183197, 29.625538>,  <35.567791, 41.453709, 30.014988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014568, 41.183197, 29.625538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823631, 41.493992, 29.789703>,  <34.709068, 41.680470, 29.888203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823631, 41.493992, 29.789703>,  <35.014568, 41.183197, 29.625538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823631, 41.493992, 29.789703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407549, 0.218029, -0.886773,
		-0.778492, -0.590558, 0.212585,
		-0.477341, 0.776985, 0.410415,
		34.680428, 41.727089, 29.912828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319611, 41.131931, 29.456543>,  <35.014568, 41.183197, 29.625538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319611, 41.131931, 29.456543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370087, 41.517174, 29.551617>,  <34.400372, 41.748322, 29.608660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.370087, 41.517174, 29.551617>,  <34.319611, 41.131931, 29.456543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.370087, 41.517174, 29.551617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510227, 0.268491, -0.817056,
		-0.850732, -0.018167, 0.525286,
		0.126192, 0.963111, 0.237683,
		34.407944, 41.806107, 29.622921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692513, 41.517494, 29.447300>,  <34.319611, 41.131931, 29.456543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692513, 41.517494, 29.447300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993580, 41.775009, 29.392115>,  <34.174221, 41.929516, 29.359003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993580, 41.775009, 29.392115>,  <33.692513, 41.517494, 29.447300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993580, 41.775009, 29.392115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515643, 0.446088, -0.731517,
		-0.409394, 0.621730, 0.667719,
		0.752668, 0.643783, -0.137965,
		34.219379, 41.968143, 29.350725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274532, 42.136738, 29.405592>,  <33.692513, 41.517494, 29.447300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274532, 42.136738, 29.405592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630173, 42.229599, 29.247803>,  <33.843555, 42.285316, 29.153130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630173, 42.229599, 29.247803>,  <33.274532, 42.136738, 29.405592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630173, 42.229599, 29.247803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457540, 0.426929, -0.779993,
		-0.012662, 0.873979, 0.485799,
		0.889099, 0.232149, -0.394474,
		33.896904, 42.299244, 29.129461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196301, 42.786011, 29.042189>,  <33.274532, 42.136738, 29.405592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196301, 42.786011, 29.042189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541477, 42.646328, 28.896099>,  <33.748581, 42.562519, 28.808445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541477, 42.646328, 28.896099>,  <33.196301, 42.786011, 29.042189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541477, 42.646328, 28.896099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120283, 0.560043, -0.819685,
		0.490783, 0.751269, 0.441279,
		0.862939, -0.349210, -0.365224,
		33.800358, 42.541565, 28.786531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521996, 43.380310, 28.814754>,  <33.196301, 42.786011, 29.042189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521996, 43.380310, 28.814754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696079, 43.082260, 28.612614>,  <33.800529, 42.903431, 28.491329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696079, 43.082260, 28.612614>,  <33.521996, 43.380310, 28.814754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696079, 43.082260, 28.612614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291590, 0.414392, -0.862122,
		0.851801, 0.522563, -0.036921,
		0.435213, -0.745122, -0.505354,
		33.826645, 42.858723, 28.461008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700981, 43.702183, 28.294827>,  <33.521996, 43.380310, 28.814754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700981, 43.702183, 28.294827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710228, 43.320538, 28.175407>,  <33.715778, 43.091549, 28.103756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710228, 43.320538, 28.175407>,  <33.700981, 43.702183, 28.294827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710228, 43.320538, 28.175407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241256, 0.284479, -0.927829,
		0.970186, 0.093478, -0.223609,
		0.023119, -0.954114, -0.298550,
		33.717163, 43.034302, 28.085842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062382, 43.749790, 27.726994>,  <33.700981, 43.702183, 28.294827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062382, 43.749790, 27.726994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859505, 43.407066, 27.689838>,  <33.737778, 43.201431, 27.667545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.859505, 43.407066, 27.689838>,  <34.062382, 43.749790, 27.726994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.859505, 43.407066, 27.689838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365860, 0.311641, -0.876942,
		0.780324, -0.410791, -0.471535,
		-0.507189, -0.856814, -0.092889,
		33.707348, 43.150021, 27.661972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.145691, 43.576614, 27.094170>,  <34.062382, 43.749790, 27.726994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.145691, 43.576614, 27.094170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830883, 43.349606, 27.190933>,  <33.641998, 43.213402, 27.248991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.830883, 43.349606, 27.190933>,  <34.145691, 43.576614, 27.094170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.830883, 43.349606, 27.190933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378717, 0.134901, -0.915628,
		0.487002, -0.812234, -0.321099,
		-0.787021, -0.567518, 0.241910,
		33.594776, 43.179352, 27.263506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091507, 43.107498, 26.561060>,  <34.145691, 43.576614, 27.094170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091507, 43.107498, 26.561060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725529, 43.105877, 26.722481>,  <33.505939, 43.104904, 26.819334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.725529, 43.105877, 26.722481>,  <34.091507, 43.107498, 26.561060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725529, 43.105877, 26.722481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392981, 0.236533, -0.888604,
		-0.091852, -0.971615, -0.218008,
		-0.914947, -0.004053, 0.403553,
		33.451046, 43.104660, 26.843546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670563, 42.657539, 26.027376>,  <34.091507, 43.107498, 26.561060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670563, 42.657539, 26.027376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416965, 42.855225, 26.265305>,  <33.264809, 42.973835, 26.408062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416965, 42.855225, 26.265305>,  <33.670563, 42.657539, 26.027376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416965, 42.855225, 26.265305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575175, 0.212812, -0.789864,
		-0.516943, -0.842893, 0.149335,
		-0.633991, 0.494209, 0.594822,
		33.226768, 43.003487, 26.443750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396114, 42.352497, 26.332886>,  <33.670563, 42.657539, 26.027376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396114, 42.352497, 26.332886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602833, 42.207283, 26.022757>,  <34.726864, 42.120155, 25.836679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602833, 42.207283, 26.022757>,  <34.396114, 42.352497, 26.332886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602833, 42.207283, 26.022757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424183, -0.678070, 0.600241,
		-0.743634, -0.639080, -0.196429,
		0.516795, -0.363038, -0.775323,
		34.757870, 42.098373, 25.790159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315647, 41.642757, 26.252790>,  <34.396114, 42.352497, 26.332886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315647, 41.642757, 26.252790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660126, 41.729187, 26.068766>,  <34.866814, 41.781044, 25.958351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660126, 41.729187, 26.068766>,  <34.315647, 41.642757, 26.252790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660126, 41.729187, 26.068766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430542, -0.791186, 0.434349,
		-0.270146, -0.572135, -0.774392,
		0.861194, 0.216071, -0.460064,
		34.918484, 41.794006, 25.930746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556614, 41.028061, 25.997055>,  <34.315647, 41.642757, 26.252790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556614, 41.028061, 25.997055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876198, 41.267891, 26.015717>,  <35.067947, 41.411789, 26.026915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.876198, 41.267891, 26.015717>,  <34.556614, 41.028061, 25.997055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876198, 41.267891, 26.015717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458124, -0.657049, 0.598673,
		0.389606, -0.456939, -0.799634,
		0.798956, 0.599578, 0.046656,
		35.115883, 41.447765, 26.029713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041985, 40.497967, 25.964520>,  <34.556614, 41.028061, 25.997055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041985, 40.497967, 25.964520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186451, 40.826012, 26.142052>,  <35.273129, 41.022839, 26.248571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.186451, 40.826012, 26.142052>,  <35.041985, 40.497967, 25.964520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186451, 40.826012, 26.142052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471506, -0.571234, 0.671844,
		0.804515, -0.033375, -0.592994,
		0.361161, 0.820108, 0.443830,
		35.294800, 41.072044, 26.275200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783379, 40.360359, 25.977108>,  <35.041985, 40.497967, 25.964520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783379, 40.360359, 25.977108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715439, 40.649914, 26.244583>,  <35.674675, 40.823647, 26.405069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715439, 40.649914, 26.244583>,  <35.783379, 40.360359, 25.977108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715439, 40.649914, 26.244583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492490, -0.525388, 0.693846,
		0.853585, 0.447168, -0.267271,
		-0.169845, 0.723884, 0.668689,
		35.664486, 40.867081, 26.445190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345329, 40.426289, 26.409742>,  <35.783379, 40.360359, 25.977108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345329, 40.426289, 26.409742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061428, 40.617027, 26.617153>,  <35.891087, 40.731472, 26.741600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.061428, 40.617027, 26.617153>,  <36.345329, 40.426289, 26.409742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.061428, 40.617027, 26.617153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267648, -0.498336, 0.824637,
		0.651627, 0.724069, 0.226067,
		-0.709751, 0.476849, 0.518525,
		35.848503, 40.760082, 26.772711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680283, 40.574749, 26.997166>,  <36.345329, 40.426289, 26.409742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680283, 40.574749, 26.997166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289993, 40.598598, 27.081459>,  <36.055820, 40.612907, 27.132036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.289993, 40.598598, 27.081459>,  <36.680283, 40.574749, 26.997166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289993, 40.598598, 27.081459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147861, -0.530473, 0.834707,
		0.161561, 0.845602, 0.508778,
		-0.975723, 0.059628, 0.210736,
		35.997276, 40.616486, 27.144680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645790, 40.842155, 27.668179>,  <36.680283, 40.574749, 26.997166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645790, 40.842155, 27.668179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295746, 40.659073, 27.605333>,  <36.085720, 40.549225, 27.567625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.295746, 40.659073, 27.605333>,  <36.645790, 40.842155, 27.668179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.295746, 40.659073, 27.605333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110911, -0.505731, 0.855532,
		-0.471040, 0.731260, 0.493336,
		-0.875112, -0.457706, -0.157115,
		36.033211, 40.521763, 27.558199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304134, 40.920341, 28.287842>,  <36.645790, 40.842155, 27.668179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304134, 40.920341, 28.287842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103050, 40.619293, 28.117737>,  <35.982399, 40.438663, 28.015675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103050, 40.619293, 28.117737>,  <36.304134, 40.920341, 28.287842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103050, 40.619293, 28.117737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161289, -0.564966, 0.809197,
		-0.849273, 0.338205, 0.405405,
		-0.502714, -0.752616, -0.425261,
		35.952236, 40.393509, 27.990158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857529, 40.729805, 28.720112>,  <36.304134, 40.920341, 28.287842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857529, 40.729805, 28.720112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848038, 40.399975, 28.494011>,  <35.842342, 40.202076, 28.358351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848038, 40.399975, 28.494011>,  <35.857529, 40.729805, 28.720112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848038, 40.399975, 28.494011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018964, -0.565683, 0.824405,
		-0.999539, 0.008840, 0.029059,
		-0.023726, -0.824575, -0.565254,
		35.840919, 40.152603, 28.324434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314037, 40.295311, 29.060970>,  <35.857529, 40.729805, 28.720112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314037, 40.295311, 29.060970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569748, 40.059307, 28.863707>,  <35.723175, 39.917706, 28.745348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569748, 40.059307, 28.863707>,  <35.314037, 40.295311, 29.060970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569748, 40.059307, 28.863707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167907, -0.518745, 0.838278,
		-0.750422, -0.618697, -0.232554,
		0.639276, -0.590015, -0.493161,
		35.761532, 39.882301, 28.715757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142124, 39.538551, 29.176495>,  <35.314037, 40.295311, 29.060970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142124, 39.538551, 29.176495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526283, 39.535728, 29.065079>,  <35.756779, 39.534035, 28.998230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.526283, 39.535728, 29.065079>,  <35.142124, 39.538551, 29.176495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526283, 39.535728, 29.065079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244283, -0.459506, 0.853920,
		-0.134015, -0.888146, -0.439586,
		0.960399, -0.007055, -0.278540,
		35.814404, 39.533611, 28.981516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336636, 38.957962, 29.201721>,  <35.142124, 39.538551, 29.176495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336636, 38.957962, 29.201721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698986, 39.125912, 29.223993>,  <35.916397, 39.226681, 29.237356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.698986, 39.125912, 29.223993>,  <35.336636, 38.957962, 29.201721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.698986, 39.125912, 29.223993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183354, -0.507249, 0.842069,
		0.381806, -0.752598, -0.536489,
		0.905873, 0.419874, 0.055679,
		35.970749, 39.251873, 29.240698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780605, 38.418095, 29.263145>,  <35.336636, 38.957962, 29.201721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780605, 38.418095, 29.263145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954941, 38.746449, 29.410761>,  <36.059544, 38.943462, 29.499331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954941, 38.746449, 29.410761>,  <35.780605, 38.418095, 29.263145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954941, 38.746449, 29.410761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168850, -0.477329, 0.862350,
		0.884043, -0.313536, -0.346646,
		0.435842, 0.820885, 0.369038,
		36.085693, 38.992714, 29.521473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490925, 38.264175, 29.380564>,  <35.780605, 38.418095, 29.263145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490925, 38.264175, 29.380564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381187, 38.577000, 29.604393>,  <36.315346, 38.764694, 29.738691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381187, 38.577000, 29.604393>,  <36.490925, 38.264175, 29.380564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381187, 38.577000, 29.604393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253855, -0.502360, 0.826554,
		0.927520, 0.368811, -0.060710,
		-0.274344, 0.782057, 0.559573,
		36.298885, 38.811615, 29.772264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003139, 38.221733, 29.757778>,  <36.490925, 38.264175, 29.380564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003139, 38.221733, 29.757778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779980, 38.486355, 29.958216>,  <36.646084, 38.645130, 30.078478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.779980, 38.486355, 29.958216>,  <37.003139, 38.221733, 29.757778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779980, 38.486355, 29.958216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470012, -0.245762, 0.847756,
		0.683989, 0.708479, -0.173830,
		-0.557897, 0.661557, 0.501092,
		36.612610, 38.684822, 30.108543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456924, 38.702774, 30.175764>,  <37.003139, 38.221733, 29.757778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456924, 38.702774, 30.175764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087032, 38.697346, 30.327915>,  <36.865097, 38.694088, 30.419205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087032, 38.697346, 30.327915>,  <37.456924, 38.702774, 30.175764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087032, 38.697346, 30.327915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365006, -0.314901, 0.876132,
		0.107890, 0.949027, 0.296154,
		-0.924733, -0.013572, 0.380375,
		36.809612, 38.693275, 30.442028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581432, 39.060535, 30.833057>,  <37.456924, 38.702774, 30.175764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581432, 39.060535, 30.833057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237293, 38.862652, 30.882166>,  <37.030811, 38.743923, 30.911631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.237293, 38.862652, 30.882166>,  <37.581432, 39.060535, 30.833057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237293, 38.862652, 30.882166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240880, -0.182342, 0.953272,
		-0.449205, 0.849715, 0.276043,
		-0.860344, -0.494708, 0.122771,
		36.979191, 38.714241, 30.918997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259319, 39.316273, 31.402067>,  <37.581432, 39.060535, 30.833057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259319, 39.316273, 31.402067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087723, 38.955502, 31.382105>,  <36.984764, 38.739040, 31.370129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087723, 38.955502, 31.382105>,  <37.259319, 39.316273, 31.402067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087723, 38.955502, 31.382105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137766, -0.119927, 0.983177,
		-0.892740, 0.414902, 0.175703,
		-0.428994, -0.901928, -0.049904,
		36.959026, 38.684925, 31.367134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902355, 39.290306, 31.997599>,  <37.259319, 39.316273, 31.402067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902355, 39.290306, 31.997599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921352, 38.906010, 31.888260>,  <36.932751, 38.675430, 31.822657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.921352, 38.906010, 31.888260>,  <36.902355, 39.290306, 31.997599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921352, 38.906010, 31.888260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085010, -0.268776, 0.959444,
		-0.995248, -0.068804, 0.068908,
		0.047493, -0.960742, -0.273347,
		36.935600, 38.617786, 31.806255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372189, 38.957355, 32.329861>,  <36.902355, 39.290306, 31.997599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372189, 38.957355, 32.329861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618359, 38.657887, 32.231281>,  <36.766060, 38.478203, 32.172134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618359, 38.657887, 32.231281>,  <36.372189, 38.957355, 32.329861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618359, 38.657887, 32.231281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055168, -0.352819, 0.934064,
		-0.786261, -0.561252, -0.258437,
		0.615427, -0.748676, -0.246445,
		36.802986, 38.433285, 32.157349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165428, 38.493481, 32.696079>,  <36.372189, 38.957355, 32.329861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165428, 38.493481, 32.696079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516937, 38.329754, 32.597923>,  <36.727844, 38.231518, 32.539028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516937, 38.329754, 32.597923>,  <36.165428, 38.493481, 32.696079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516937, 38.329754, 32.597923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076677, -0.386417, 0.919131,
		-0.471038, -0.826525, -0.308188,
		0.878774, -0.409315, -0.245392,
		36.780571, 38.206959, 32.524307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214592, 37.684090, 32.885395>,  <36.165428, 38.493481, 32.696079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214592, 37.684090, 32.885395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594810, 37.803276, 32.850346>,  <36.822941, 37.874786, 32.829315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594810, 37.803276, 32.850346>,  <36.214592, 37.684090, 32.885395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594810, 37.803276, 32.850346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202627, -0.381137, 0.902041,
		0.235383, -0.875186, -0.422664,
		0.950546, 0.297968, -0.087623,
		36.879974, 37.892666, 32.824059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652191, 37.142086, 33.122753>,  <36.214592, 37.684090, 32.885395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652191, 37.142086, 33.122753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904812, 37.451885, 33.137177>,  <37.056385, 37.637764, 33.145828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904812, 37.451885, 33.137177>,  <36.652191, 37.142086, 33.122753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904812, 37.451885, 33.137177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361058, -0.334934, 0.870320,
		0.686136, -0.536632, -0.491165,
		0.631549, 0.774497, 0.036055,
		37.094276, 37.684235, 33.147991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325695, 36.866272, 33.224419>,  <36.652191, 37.142086, 33.122753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325695, 36.866272, 33.224419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317181, 37.241322, 33.363220>,  <37.312073, 37.466351, 33.446503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.317181, 37.241322, 33.363220>,  <37.325695, 36.866272, 33.224419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317181, 37.241322, 33.363220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416582, -0.307201, 0.855621,
		0.908849, 0.162773, -0.384056,
		-0.021289, 0.937621, 0.347008,
		37.310795, 37.522606, 33.467323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.020573, 36.941074, 33.525524>,  <37.325695, 36.866272, 33.224419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.020573, 36.941074, 33.525524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789253, 37.234261, 33.668819>,  <37.650463, 37.410172, 33.754799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789253, 37.234261, 33.668819>,  <38.020573, 36.941074, 33.525524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789253, 37.234261, 33.668819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472777, -0.056774, 0.879351,
		0.664872, 0.677893, -0.313697,
		-0.578296, 0.732965, 0.358240,
		37.615765, 37.454151, 33.776291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335266, 37.603493, 33.768982>,  <38.020573, 36.941074, 33.525524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335266, 37.603493, 33.768982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016953, 37.468708, 33.970253>,  <37.825966, 37.387836, 34.091015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016953, 37.468708, 33.970253>,  <38.335266, 37.603493, 33.768982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016953, 37.468708, 33.970253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571788, -0.144372, 0.807598,
		-0.199484, 0.930384, 0.307559,
		-0.795779, -0.336962, 0.503182,
		37.778217, 37.367619, 34.121208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578617, 37.645229, 34.485149>,  <38.335266, 37.603493, 33.768982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578617, 37.645229, 34.485149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244835, 37.429264, 34.529305>,  <38.044567, 37.299686, 34.555798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.244835, 37.429264, 34.529305>,  <38.578617, 37.645229, 34.485149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.244835, 37.429264, 34.529305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327738, -0.325177, 0.887044,
		-0.443032, 0.776373, 0.448294,
		-0.834452, -0.539912, 0.110383,
		37.994499, 37.267292, 34.562420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202042, 37.860695, 35.095619>,  <38.578617, 37.645229, 34.485149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202042, 37.860695, 35.095619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104530, 37.483650, 35.004353>,  <38.046024, 37.257423, 34.949593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.104530, 37.483650, 35.004353>,  <38.202042, 37.860695, 35.095619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.104530, 37.483650, 35.004353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093327, -0.256972, 0.961902,
		-0.965331, 0.213195, 0.150615,
		-0.243777, -0.942610, -0.228166,
		38.031399, 37.200867, 34.935902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893425, 37.617172, 35.728779>,  <38.202042, 37.860695, 35.095619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893425, 37.617172, 35.728779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006882, 37.304062, 35.507217>,  <38.074955, 37.116196, 35.374283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006882, 37.304062, 35.507217>,  <37.893425, 37.617172, 35.728779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006882, 37.304062, 35.507217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452262, -0.400146, 0.797084,
		-0.845581, -0.476594, 0.240523,
		0.283641, -0.782778, -0.553901,
		38.091972, 37.069229, 35.341045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069847, 37.133579, 36.297878>,  <37.893425, 37.617172, 35.728779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069847, 37.133579, 36.297878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196510, 36.971310, 35.954914>,  <38.272507, 36.873947, 35.749134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196510, 36.971310, 35.954914>,  <38.069847, 37.133579, 36.297878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196510, 36.971310, 35.954914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534979, -0.670060, 0.514603,
		-0.783280, -0.621650, 0.004849,
		0.316654, -0.405673, -0.857415,
		38.291508, 36.849609, 35.697689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919495, 36.395138, 36.206944>,  <38.069847, 37.133579, 36.297878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919495, 36.395138, 36.206944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245804, 36.451355, 35.982533>,  <38.441589, 36.485085, 35.847885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.245804, 36.451355, 35.982533>,  <37.919495, 36.395138, 36.206944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245804, 36.451355, 35.982533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466774, -0.732764, 0.495155,
		-0.341509, -0.665810, -0.663376,
		0.815778, 0.140547, -0.561029,
		38.490536, 36.493519, 35.814224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080929, 35.723255, 36.064075>,  <37.919495, 36.395138, 36.206944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080929, 35.723255, 36.064075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410484, 35.943626, 36.010864>,  <38.608215, 36.075848, 35.978939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.410484, 35.943626, 36.010864>,  <38.080929, 35.723255, 36.064075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410484, 35.943626, 36.010864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510709, -0.619903, 0.595733,
		0.245741, -0.558752, -0.792090,
		0.823886, 0.550924, -0.133024,
		38.657650, 36.108902, 35.970959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525940, 35.273956, 35.985870>,  <38.080929, 35.723255, 36.064075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525940, 35.273956, 35.985870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740303, 35.599777, 36.074688>,  <38.868919, 35.795269, 36.127979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.740303, 35.599777, 36.074688>,  <38.525940, 35.273956, 35.985870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740303, 35.599777, 36.074688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560730, -0.540011, 0.627669,
		0.631176, -0.211868, -0.746143,
		0.535908, 0.814555, 0.222042,
		38.901077, 35.844143, 36.141300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231869, 34.973412, 35.958736>,  <38.525940, 35.273956, 35.985870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231869, 34.973412, 35.958736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240349, 35.323467, 36.152096>,  <39.245438, 35.533501, 36.268112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240349, 35.323467, 36.152096>,  <39.231869, 34.973412, 35.958736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240349, 35.323467, 36.152096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735298, -0.341260, 0.585559,
		0.677412, 0.343029, -0.650725,
		0.021202, 0.875141, 0.483402,
		39.246708, 35.586010, 36.297115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905190, 35.192623, 36.007980>,  <39.231869, 34.973412, 35.958736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905190, 35.192623, 36.007980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759109, 35.415043, 36.306625>,  <39.671463, 35.548496, 36.485813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759109, 35.415043, 36.306625>,  <39.905190, 35.192623, 36.007980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759109, 35.415043, 36.306625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650514, -0.421277, 0.631946,
		0.665928, 0.716471, -0.207870,
		-0.365200, 0.556053, 0.746615,
		39.649548, 35.581860, 36.530609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485382, 35.472462, 36.379570>,  <39.905190, 35.192623, 36.007980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485382, 35.472462, 36.379570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177631, 35.462086, 36.634876>,  <39.992981, 35.455860, 36.788059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177631, 35.462086, 36.634876>,  <40.485382, 35.472462, 36.379570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177631, 35.462086, 36.634876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601621, -0.365311, 0.710352,
		0.214737, 0.930524, 0.296670,
		-0.769377, -0.025944, 0.638268,
		39.946819, 35.454304, 36.826355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690681, 35.668793, 37.039513>,  <40.485382, 35.472462, 36.379570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690681, 35.668793, 37.039513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355507, 35.464798, 37.117252>,  <40.154400, 35.342403, 37.163895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355507, 35.464798, 37.117252>,  <40.690681, 35.668793, 37.039513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355507, 35.464798, 37.117252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450358, -0.444987, 0.774056,
		-0.308274, 0.736140, 0.602549,
		-0.837941, -0.509984, 0.194349,
		40.104126, 35.311802, 37.175556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.759827, 35.568722, 37.694530>,  <40.690681, 35.668793, 37.039513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.759827, 35.568722, 37.694530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478672, 35.294022, 37.620426>,  <40.309978, 35.129200, 37.575962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478672, 35.294022, 37.620426>,  <40.759827, 35.568722, 37.694530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478672, 35.294022, 37.620426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341666, -0.554417, 0.758871,
		-0.623868, 0.470103, 0.624333,
		-0.702889, -0.686749, -0.185265,
		40.267807, 35.087997, 37.564846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496136, 35.381111, 38.388161>,  <40.759827, 35.568722, 37.694530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496136, 35.381111, 38.388161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424690, 35.098660, 38.114086>,  <40.381824, 34.929188, 37.949642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424690, 35.098660, 38.114086>,  <40.496136, 35.381111, 38.388161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424690, 35.098660, 38.114086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295595, -0.702727, 0.647147,
		-0.938468, -0.086950, 0.334243,
		-0.178612, -0.706127, -0.685188,
		40.371105, 34.886822, 37.908531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050644, 34.820877, 38.674473>,  <40.496136, 35.381111, 38.388161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050644, 34.820877, 38.674473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251911, 34.669456, 38.363728>,  <40.372673, 34.578606, 38.177280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.251911, 34.669456, 38.363728>,  <40.050644, 34.820877, 38.674473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.251911, 34.669456, 38.363728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447603, -0.654817, 0.608988,
		-0.739239, -0.654151, -0.160042,
		0.503168, -0.378552, -0.776866,
		40.402863, 34.555889, 38.130669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986721, 34.077782, 38.809505>,  <40.050644, 34.820877, 38.674473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986721, 34.077782, 38.809505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306034, 34.098392, 38.569477>,  <40.497623, 34.110760, 38.425461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306034, 34.098392, 38.569477>,  <39.986721, 34.077782, 38.809505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306034, 34.098392, 38.569477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307324, -0.891711, 0.332270,
		-0.517970, -0.449663, -0.727675,
		0.798286, 0.051526, -0.600071,
		40.545521, 34.113850, 38.389454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103073, 33.429916, 38.523766>,  <39.986721, 34.077782, 38.809505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103073, 33.429916, 38.523766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462334, 33.588814, 38.448376>,  <40.677891, 33.684151, 38.403141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462334, 33.588814, 38.448376>,  <40.103073, 33.429916, 38.523766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462334, 33.588814, 38.448376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437202, -0.761379, 0.478704,
		0.046660, -0.512351, -0.857508,
		0.898152, 0.397240, -0.188475,
		40.731781, 33.707985, 38.391834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546700, 32.912006, 38.086922>,  <40.103073, 33.429916, 38.523766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.546700, 32.912006, 38.086922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775219, 33.164413, 38.296852>,  <40.912331, 33.315857, 38.422810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775219, 33.164413, 38.296852>,  <40.546700, 32.912006, 38.086922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775219, 33.164413, 38.296852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620474, -0.750627, 0.227092,
		0.537247, 0.195904, -0.820358,
		0.571295, 0.631015, 0.524826,
		40.946606, 33.353718, 38.454300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191807, 32.612518, 38.094959>,  <40.546700, 32.912006, 38.086922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191807, 32.612518, 38.094959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327667, 32.932095, 38.293488>,  <41.409184, 33.123840, 38.412605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.327667, 32.932095, 38.293488>,  <41.191807, 32.612518, 38.094959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.327667, 32.932095, 38.293488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819503, -0.510346, 0.260695,
		0.461576, 0.318195, -0.828070,
		0.339650, 0.798936, 0.496325,
		41.429562, 33.171776, 38.442387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822598, 32.663322, 37.899609>,  <41.191807, 32.612518, 38.094959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822598, 32.663322, 37.899609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805290, 32.820667, 38.266953>,  <41.794907, 32.915073, 38.487358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.805290, 32.820667, 38.266953>,  <41.822598, 32.663322, 37.899609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.805290, 32.820667, 38.266953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836437, -0.488426, 0.248622,
		0.546351, 0.778911, -0.307891,
		-0.043272, 0.393367, 0.918363,
		41.792309, 32.938679, 38.542461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.537678, 32.769505, 38.065815>,  <41.822598, 32.663322, 37.899609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.537678, 32.769505, 38.065815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349751, 32.799461, 38.417648>,  <42.236996, 32.817436, 38.628746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.349751, 32.799461, 38.417648>,  <42.537678, 32.769505, 38.065815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349751, 32.799461, 38.417648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759226, -0.474078, 0.445899,
		0.450386, 0.877292, 0.165868,
		-0.469818, 0.074895, 0.879580,
		42.208805, 32.821930, 38.681522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924088, 33.081627, 38.551758>,  <42.537678, 32.769505, 38.065815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.924088, 33.081627, 38.551758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677792, 32.871239, 38.786438>,  <42.530014, 32.745007, 38.927246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.677792, 32.871239, 38.786438>,  <42.924088, 33.081627, 38.551758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.677792, 32.871239, 38.786438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778925, -0.293966, 0.553949,
		-0.118893, 0.798084, 0.590700,
		-0.615744, -0.525972, 0.586697,
		42.493069, 32.713448, 38.962448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991550, 33.370468, 39.268898>,  <42.924088, 33.081627, 38.551758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991550, 33.370468, 39.268898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.866337, 32.990631, 39.262173>,  <42.791210, 32.762730, 39.258137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.866337, 32.990631, 39.262173>,  <42.991550, 33.370468, 39.268898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866337, 32.990631, 39.262173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788164, -0.269614, 0.553269,
		-0.529912, 0.159943, 0.832833,
		-0.313035, -0.949593, -0.016811,
		42.772427, 32.705753, 39.257130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578323, 32.991123, 39.482925>,  <42.991550, 33.370468, 39.268898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578323, 32.991123, 39.482925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296219, 32.713840, 39.542351>,  <43.126957, 32.547470, 39.578007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.296219, 32.713840, 39.542351>,  <43.578323, 32.991123, 39.482925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296219, 32.713840, 39.542351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695054, -0.634821, 0.337493,
		-0.139643, 0.341279, 0.929531,
		-0.705265, -0.693203, 0.148559,
		43.084641, 32.505878, 39.586918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.651829, 32.782864, 40.141148>,  <43.578323, 32.991123, 39.482925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.651829, 32.782864, 40.141148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.495083, 32.492126, 39.915531>,  <43.401035, 32.317684, 39.780159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.495083, 32.492126, 39.915531>,  <43.651829, 32.782864, 40.141148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.495083, 32.492126, 39.915531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806702, -0.566218, 0.169198,
		-0.442353, -0.388715, 0.808223,
		-0.391861, -0.726841, -0.564046,
		43.377525, 32.274075, 39.746319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.772057, 32.185863, 40.584644>,  <43.651829, 32.782864, 40.141148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.772057, 32.185863, 40.584644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.722809, 32.098194, 40.197491>,  <43.693260, 32.045593, 39.965199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.722809, 32.098194, 40.197491>,  <43.772057, 32.185863, 40.584644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722809, 32.098194, 40.197491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800925, -0.597828, 0.033495,
		-0.585970, -0.771079, 0.249149,
		-0.123121, -0.219177, -0.967886,
		43.685871, 32.032440, 39.907124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842533, 31.509182, 40.512535>,  <43.772057, 32.185863, 40.584644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842533, 31.509182, 40.512535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924755, 31.608591, 40.133911>,  <43.974087, 31.668236, 39.906734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.924755, 31.608591, 40.133911>,  <43.842533, 31.509182, 40.512535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.924755, 31.608591, 40.133911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727754, -0.685487, -0.021938,
		-0.654310, -0.684356, -0.321769,
		0.205555, 0.248523, -0.946564,
		43.986420, 31.683147, 39.849941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.139568, 30.913246, 40.178051>,  <43.842533, 31.509182, 40.512535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.139568, 30.913246, 40.178051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.272869, 31.213835, 39.950287>,  <44.352852, 31.394188, 39.813629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.272869, 31.213835, 39.950287>,  <44.139568, 30.913246, 40.178051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.272869, 31.213835, 39.950287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847812, -0.503073, -0.167730,
		-0.412501, -0.426858, -0.804758,
		0.333254, 0.751472, -0.569413,
		44.372845, 31.439276, 39.779465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.357712, 30.584496, 39.576370>,  <44.139568, 30.913246, 40.178051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.357712, 30.584496, 39.576370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.566086, 30.920158, 39.638916>,  <44.691109, 31.121555, 39.676445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.566086, 30.920158, 39.638916>,  <44.357712, 30.584496, 39.576370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.566086, 30.920158, 39.638916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853349, -0.507530, -0.119200,
		-0.020666, 0.195531, -0.980480,
		0.520930, 0.839155, 0.156368,
		44.722366, 31.171906, 39.685825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.784420, 30.700434, 38.956230>,  <44.357712, 30.584496, 39.576370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.784420, 30.700434, 38.956230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.963131, 30.863132, 39.274967>,  <45.070358, 30.960751, 39.466209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.963131, 30.863132, 39.274967>,  <44.784420, 30.700434, 38.956230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.963131, 30.863132, 39.274967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858787, -0.444622, -0.254552,
		0.250754, 0.798041, -0.547953,
		0.446775, 0.406745, 0.796838,
		45.097164, 30.985155, 39.514019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.374241, 30.961103, 38.743462>,  <44.784420, 30.700434, 38.956230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.374241, 30.961103, 38.743462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.415138, 30.915182, 39.138706>,  <45.439678, 30.887629, 39.375854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.415138, 30.915182, 39.138706>,  <45.374241, 30.961103, 38.743462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.415138, 30.915182, 39.138706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811016, -0.565564, -0.149632,
		0.576019, 0.816674, 0.035280,
		0.102248, -0.114803, 0.988112,
		45.445812, 30.880741, 39.435139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.039768, 31.176468, 38.966480>,  <45.374241, 30.961103, 38.743462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.039768, 31.176468, 38.966480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.897598, 30.911999, 39.230759>,  <45.812294, 30.753317, 39.389324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.897598, 30.911999, 39.230759>,  <46.039768, 31.176468, 38.966480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.897598, 30.911999, 39.230759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888170, -0.459150, 0.018316,
		0.291248, 0.593320, 0.750430,
		-0.355428, -0.661175, 0.660696,
		45.790970, 30.713646, 39.428967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.581356, 31.119534, 39.401588>,  <46.039768, 31.176468, 38.966480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.581356, 31.119534, 39.401588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.363548, 30.797520, 39.495754>,  <46.232864, 30.604311, 39.552254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.363548, 30.797520, 39.495754>,  <46.581356, 31.119534, 39.401588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.363548, 30.797520, 39.495754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837955, -0.534351, 0.110910,
		0.036508, 0.257661, 0.965545,
		-0.544517, -0.805034, 0.235417,
		46.200191, 30.556009, 39.566380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.863194, 30.807367, 40.006866>,  <46.581356, 31.119534, 39.401588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.863194, 30.807367, 40.006866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.671494, 30.522306, 39.801949>,  <46.556473, 30.351271, 39.678997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.671494, 30.522306, 39.801949>,  <46.863194, 30.807367, 40.006866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.671494, 30.522306, 39.801949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784144, -0.609865, 0.114815,
		-0.394252, -0.346686, 0.851102,
		-0.479252, -0.712652, -0.512292,
		46.527718, 30.308510, 39.648262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.815052, 30.135597, 40.354099>,  <46.863194, 30.807367, 40.006866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.815052, 30.135597, 40.354099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.804108, 30.093298, 39.956493>,  <46.797543, 30.067919, 39.717930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.804108, 30.093298, 39.956493>,  <46.815052, 30.135597, 40.354099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.804108, 30.093298, 39.956493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817024, -0.575303, 0.038718,
		-0.575955, -0.811076, 0.102137,
		-0.027357, -0.105749, -0.994017,
		46.795902, 30.061573, 39.658287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.891323, 29.370481, 40.225792>,  <46.815052, 30.135597, 40.354099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.891323, 29.370481, 40.225792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.059948, 29.614628, 39.957542>,  <47.161121, 29.761116, 39.796593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.059948, 29.614628, 39.957542>,  <46.891323, 29.370481, 40.225792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.059948, 29.614628, 39.957542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817877, -0.575314, -0.009497,
		-0.391618, -0.544487, -0.741734,
		0.421559, 0.610366, -0.670627,
		47.186417, 29.797737, 39.756355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.180592, 28.972483, 39.625141>,  <46.891323, 29.370481, 40.225792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.180592, 28.972483, 39.625141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.386467, 29.315233, 39.613422>,  <47.509991, 29.520884, 39.606392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.386467, 29.315233, 39.613422>,  <47.180592, 28.972483, 39.625141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.386467, 29.315233, 39.613422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834799, -0.508630, -0.210729,
		-0.195470, 0.084003, -0.977105,
		0.514687, 0.856878, -0.029296,
		47.540874, 29.572296, 39.604633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.396976, 29.137539, 38.893188>,  <47.180592, 28.972483, 39.625141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.396976, 29.137539, 38.893188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.686195, 29.258070, 39.141834>,  <47.859726, 29.330389, 39.291019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.686195, 29.258070, 39.141834>,  <47.396976, 29.137539, 38.893188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.686195, 29.258070, 39.141834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644742, -0.617431, -0.450651,
		0.248007, 0.726622, -0.640712,
		0.723049, 0.301330, 0.621612,
		47.903111, 29.348469, 39.328320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.704433, 29.422134, 39.273811>,  <47.396976, 29.137539, 38.893188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.704433, 29.422134, 39.273811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.589424, 29.553841, 39.633568>,  <46.520416, 29.632864, 39.849422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.589424, 29.553841, 39.633568>,  <46.704433, 29.422134, 39.273811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.589424, 29.553841, 39.633568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371649, 0.827113, -0.421618,
		-0.882726, -0.455485, -0.115445,
		-0.287527, 0.329268, 0.899395,
		46.503166, 29.652620, 39.903385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.958313, 29.470886, 39.259689>,  <46.704433, 29.422134, 39.273811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.958313, 29.470886, 39.259689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133698, 29.717213, 39.521534>,  <46.238926, 29.865009, 39.678642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133698, 29.717213, 39.521534>,  <45.958313, 29.470886, 39.259689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.133698, 29.717213, 39.521534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765968, 0.637065, -0.086265,
		-0.470157, -0.463591, 0.751023,
		0.438459, 0.615817, 0.654616,
		46.265236, 29.901958, 39.717918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.601112, 29.508034, 39.958282>,  <45.958313, 29.470886, 39.259689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.601112, 29.508034, 39.958282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.787796, 29.840244, 39.836685>,  <45.899807, 30.039572, 39.763729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.787796, 29.840244, 39.836685>,  <45.601112, 29.508034, 39.958282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.787796, 29.840244, 39.836685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852359, 0.514084, 0.095925,
		0.235946, 0.214341, 0.947833,
		0.466705, 0.830527, -0.303991,
		45.927807, 30.089403, 39.745487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.399086, 30.010012, 40.405174>,  <45.601112, 29.508034, 39.958282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.399086, 30.010012, 40.405174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.548538, 30.236095, 40.110981>,  <45.638210, 30.371746, 39.934464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.548538, 30.236095, 40.110981>,  <45.399086, 30.010012, 40.405174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.548538, 30.236095, 40.110981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653967, 0.722827, 0.223267,
		0.657823, 0.397565, 0.639696,
		0.373627, 0.565210, -0.735486,
		45.660625, 30.405659, 39.890335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.271011, 30.747517, 40.713787>,  <45.399086, 30.010012, 40.405174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.271011, 30.747517, 40.713787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.363834, 30.802811, 40.328655>,  <45.419529, 30.835987, 40.097576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.363834, 30.802811, 40.328655>,  <45.271011, 30.747517, 40.713787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.363834, 30.802811, 40.328655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604392, 0.796069, -0.031377,
		0.762140, 0.589207, 0.268286,
		0.232062, 0.138236, -0.962828,
		45.433453, 30.844282, 40.039806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.610489, 31.445932, 40.533577>,  <45.271011, 30.747517, 40.713787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.610489, 31.445932, 40.533577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.413944, 31.297300, 40.218491>,  <45.296017, 31.208120, 40.029438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.413944, 31.297300, 40.218491>,  <45.610489, 31.445932, 40.533577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.413944, 31.297300, 40.218491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641872, 0.765813, 0.039141,
		0.588696, 0.524843, -0.614799,
		-0.491364, -0.371580, -0.787712,
		45.266537, 31.185827, 39.982178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.496586, 31.989872, 40.061337>,  <45.610489, 31.445932, 40.533577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.496586, 31.989872, 40.061337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.207851, 31.720587, 39.997162>,  <45.034611, 31.559015, 39.958656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.207851, 31.720587, 39.997162>,  <45.496586, 31.989872, 40.061337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.207851, 31.720587, 39.997162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681868, 0.731474, -0.001511,
		0.118375, 0.108307, -0.987045,
		-0.721833, -0.673213, -0.160439,
		44.991302, 31.518623, 39.949032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.202396, 32.467655, 39.656059>,  <45.496586, 31.989872, 40.061337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.202396, 32.467655, 39.656059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.081799, 32.102497, 39.545982>,  <45.009438, 31.883404, 39.479939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.081799, 32.102497, 39.545982>,  <45.202396, 32.467655, 39.656059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.081799, 32.102497, 39.545982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912141, 0.360206, -0.195576,
		0.277663, 0.192043, -0.941288,
		-0.301499, -0.912891, -0.275186,
		44.991348, 31.828630, 39.463425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.757435, 32.502132, 39.115334>,  <45.202396, 32.467655, 39.656059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.757435, 32.502132, 39.115334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641350, 32.170158, 39.305908>,  <44.571697, 31.970974, 39.420254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.641350, 32.170158, 39.305908>,  <44.757435, 32.502132, 39.115334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.641350, 32.170158, 39.305908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956898, 0.257410, -0.134487,
		-0.011024, -0.494928, -0.868864,
		-0.290216, -0.829932, 0.476433,
		44.554287, 31.921179, 39.448837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.123508, 32.265465, 38.765659>,  <44.757435, 32.502132, 39.115334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.123508, 32.265465, 38.765659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104786, 32.073879, 39.116295>,  <44.093552, 31.958927, 39.326675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.104786, 32.073879, 39.116295>,  <44.123508, 32.265465, 38.765659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.104786, 32.073879, 39.116295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997443, 0.069853, -0.015095,
		-0.054002, -0.875051, -0.481009,
		-0.046809, -0.478964, 0.876586,
		44.090744, 31.930191, 39.379272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659718, 31.729860, 38.622253>,  <44.123508, 32.265465, 38.765659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659718, 31.729860, 38.622253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643208, 31.819353, 39.011765>,  <43.633301, 31.873049, 39.245472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.643208, 31.819353, 39.011765>,  <43.659718, 31.729860, 38.622253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.643208, 31.819353, 39.011765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990288, 0.120342, -0.069624,
		-0.132763, -0.967193, 0.216590,
		-0.041275, 0.223730, 0.973777,
		43.630825, 31.886473, 39.303898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.013805, 31.309984, 38.921375>,  <43.659718, 31.729860, 38.622253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.013805, 31.309984, 38.921375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108433, 31.629404, 39.142773>,  <43.165207, 31.821056, 39.275612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.108433, 31.629404, 39.142773>,  <43.013805, 31.309984, 38.921375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108433, 31.629404, 39.142773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959884, 0.280336, 0.005806,
		-0.150528, -0.532663, 0.832833,
		0.236566, 0.798550, 0.553494,
		43.179401, 31.868969, 39.308823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515583, 31.424864, 39.446495>,  <43.013805, 31.309984, 38.921375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515583, 31.424864, 39.446495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691273, 31.782625, 39.412735>,  <42.796688, 31.997282, 39.392479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.691273, 31.782625, 39.412735>,  <42.515583, 31.424864, 39.446495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.691273, 31.782625, 39.412735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897670, 0.440664, -0.001727,
		0.035645, 0.076518, 0.996431,
		0.439224, 0.894405, -0.084396,
		42.823040, 32.050945, 39.387417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090366, 31.791250, 39.877048>,  <42.515583, 31.424864, 39.446495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.090366, 31.791250, 39.877048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290066, 32.049118, 39.645477>,  <42.409885, 32.203838, 39.506535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.290066, 32.049118, 39.645477>,  <42.090366, 31.791250, 39.877048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290066, 32.049118, 39.645477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837653, 0.529953, -0.132236,
		0.221555, 0.550957, 0.804587,
		0.499250, 0.644667, -0.578924,
		42.439842, 32.242519, 39.471802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575943, 32.279308, 39.778557>,  <42.090366, 31.791250, 39.877048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575943, 32.279308, 39.778557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871704, 32.402012, 39.538826>,  <42.049160, 32.475632, 39.394989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871704, 32.402012, 39.538826>,  <41.575943, 32.279308, 39.778557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871704, 32.402012, 39.538826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617890, 0.662721, -0.423100,
		0.267397, 0.683156, 0.679556,
		0.739399, 0.306755, -0.599325,
		42.093525, 32.494038, 39.359028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690071, 32.971909, 39.888775>,  <41.575943, 32.279308, 39.778557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690071, 32.971909, 39.888775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.807777, 32.892651, 39.514793>,  <41.878403, 32.845097, 39.290405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.807777, 32.892651, 39.514793>,  <41.690071, 32.971909, 39.888775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.807777, 32.892651, 39.514793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622188, 0.702858, -0.344781,
		0.725457, 0.683178, 0.083549,
		0.294269, -0.198141, -0.934958,
		41.896057, 32.833210, 39.234306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.604134, 33.700447, 39.672108>,  <41.690071, 32.971909, 39.888775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.604134, 33.700447, 39.672108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672806, 33.477432, 39.347225>,  <41.714008, 33.343624, 39.152298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672806, 33.477432, 39.347225>,  <41.604134, 33.700447, 39.672108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672806, 33.477432, 39.347225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585902, 0.605005, -0.539155,
		0.791988, 0.568435, -0.222796,
		0.171682, -0.557540, -0.812203,
		41.724312, 33.310169, 39.103565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905334, 34.066029, 39.221428>,  <41.604134, 33.700447, 39.672108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905334, 34.066029, 39.221428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738770, 33.775635, 39.002506>,  <41.638832, 33.601398, 38.871155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738770, 33.775635, 39.002506>,  <41.905334, 34.066029, 39.221428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738770, 33.775635, 39.002506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472218, 0.687117, -0.552160,
		0.776923, 0.028521, -0.628949,
		-0.416414, -0.725987, -0.547305,
		41.613846, 33.557838, 38.838314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734989, 34.463436, 38.731201>,  <41.905334, 34.066029, 39.221428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734989, 34.463436, 38.731201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553432, 34.118401, 38.641823>,  <41.444500, 33.911381, 38.588196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.553432, 34.118401, 38.641823>,  <41.734989, 34.463436, 38.731201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.553432, 34.118401, 38.641823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602383, 0.481823, -0.636382,
		0.656597, -0.154245, -0.738301,
		-0.453889, -0.862586, -0.223449,
		41.417267, 33.859623, 38.574787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793278, 34.288666, 37.992947>,  <41.734989, 34.463436, 38.731201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793278, 34.288666, 37.992947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467033, 34.094353, 38.118671>,  <41.271286, 33.977764, 38.194107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467033, 34.094353, 38.118671>,  <41.793278, 34.288666, 37.992947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467033, 34.094353, 38.118671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561456, 0.533248, -0.632783,
		0.139791, -0.692577, -0.707670,
		-0.815614, -0.485782, 0.314308,
		41.222351, 33.948620, 38.212963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447426, 33.969269, 37.390076>,  <41.793278, 34.288666, 37.992947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447426, 33.969269, 37.390076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165623, 34.022991, 37.668823>,  <40.996540, 34.055225, 37.836071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.165623, 34.022991, 37.668823>,  <41.447426, 33.969269, 37.390076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.165623, 34.022991, 37.668823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554659, 0.508371, -0.658720,
		-0.442741, -0.850600, -0.283656,
		-0.704509, 0.134310, 0.696870,
		40.954269, 34.063286, 37.877884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815174, 34.161140, 37.009090>,  <41.447426, 33.969269, 37.390076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815174, 34.161140, 37.009090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703308, 34.252636, 37.382072>,  <40.636189, 34.307533, 37.605862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703308, 34.252636, 37.382072>,  <40.815174, 34.161140, 37.009090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703308, 34.252636, 37.382072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697761, 0.618689, -0.361045,
		-0.659485, -0.751598, -0.013415,
		-0.279660, 0.228744, 0.932452,
		40.619411, 34.321259, 37.661808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.790295, 33.710098, 36.421207>,  <40.815174, 34.161140, 37.009090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.790295, 33.710098, 36.421207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048912, 33.419590, 36.327824>,  <41.204082, 33.245285, 36.271793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048912, 33.419590, 36.327824>,  <40.790295, 33.710098, 36.421207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048912, 33.419590, 36.327824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052154, 0.347392, -0.936268,
		0.761092, 0.593163, 0.262483,
		0.646544, -0.726275, -0.233462,
		41.242874, 33.201706, 36.257786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496307, 34.001667, 36.265411>,  <40.790295, 33.710098, 36.421207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496307, 34.001667, 36.265411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341469, 33.696892, 36.057720>,  <41.248566, 33.514027, 35.933105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.341469, 33.696892, 36.057720>,  <41.496307, 34.001667, 36.265411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.341469, 33.696892, 36.057720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074451, 0.535464, -0.841270,
		0.919027, -0.364313, -0.150550,
		-0.387100, -0.761941, -0.519229,
		41.225338, 33.468307, 35.901951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.890244, 33.619484, 35.769062>,  <41.496307, 34.001667, 36.265411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.890244, 33.619484, 35.769062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510189, 33.703114, 35.676517>,  <41.282158, 33.753292, 35.620991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.510189, 33.703114, 35.676517>,  <41.890244, 33.619484, 35.769062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.510189, 33.703114, 35.676517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303052, 0.793917, -0.527120,
		0.073479, -0.570951, -0.817689,
		-0.950137, 0.209070, -0.231364,
		41.225147, 33.765835, 35.607109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878456, 33.688702, 35.026379>,  <41.890244, 33.619484, 35.769062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878456, 33.688702, 35.026379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608223, 33.889275, 35.242580>,  <41.446083, 34.009621, 35.372303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608223, 33.889275, 35.242580>,  <41.878456, 33.688702, 35.026379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608223, 33.889275, 35.242580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344050, 0.862804, -0.370403,
		-0.652083, -0.064278, -0.755418,
		-0.675586, 0.501435, 0.540505,
		41.405548, 34.039703, 35.404732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.104309, 34.342213, 34.726212>,  <41.878456, 33.688702, 35.026379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.104309, 34.342213, 34.726212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811451, 34.374073, 34.996799>,  <41.635735, 34.393188, 35.159153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811451, 34.374073, 34.996799>,  <42.104309, 34.342213, 34.726212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811451, 34.374073, 34.996799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260589, 0.950341, 0.170136,
		-0.629330, 0.300846, -0.716544,
		-0.732146, 0.079652, 0.676475,
		41.591808, 34.397968, 35.199741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708092, 34.105270, 34.590744>,  <42.104309, 34.342213, 34.726212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.708092, 34.105270, 34.590744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974724, 34.227070, 34.318584>,  <43.134705, 34.300148, 34.155289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974724, 34.227070, 34.318584>,  <42.708092, 34.105270, 34.590744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974724, 34.227070, 34.318584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738289, -0.143641, 0.659011,
		0.102934, -0.941620, -0.320557,
		0.666583, 0.304499, -0.680402,
		43.174698, 34.318420, 34.114464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160721, 33.548004, 34.448570>,  <42.708092, 34.105270, 34.590744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160721, 33.548004, 34.448570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323666, 33.911388, 34.411160>,  <43.421432, 34.129421, 34.388714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.323666, 33.911388, 34.411160>,  <43.160721, 33.548004, 34.448570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323666, 33.911388, 34.411160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696990, -0.243085, 0.674622,
		0.590136, -0.340002, -0.732215,
		0.407363, 0.908465, -0.093524,
		43.445873, 34.183929, 34.383102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.947586, 33.601048, 34.220909>,  <43.160721, 33.548004, 34.448570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.947586, 33.601048, 34.220909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.782589, 33.825314, 34.508102>,  <43.683590, 33.959873, 34.680416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.782589, 33.825314, 34.508102>,  <43.947586, 33.601048, 34.220909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.782589, 33.825314, 34.508102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566587, -0.459258, 0.684150,
		0.713320, 0.689009, -0.128225,
		-0.412497, 0.560669, 0.717981,
		43.658840, 33.993515, 34.723495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.385788, 33.847855, 34.597538>,  <43.947586, 33.601048, 34.220909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.385788, 33.847855, 34.597538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.091747, 33.840767, 34.868629>,  <43.915321, 33.836514, 35.031284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.091747, 33.840767, 34.868629>,  <44.385788, 33.847855, 34.597538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.091747, 33.840767, 34.868629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622590, -0.413324, 0.664489,
		0.268343, 0.910412, 0.314869,
		-0.735101, -0.017724, 0.677726,
		43.871216, 33.835449, 35.071949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.050159, 33.769482, 34.574757>,  <44.385788, 33.847855, 34.597538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.050159, 33.769482, 34.574757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.900433, 33.409855, 34.483925>,  <44.810596, 33.194080, 34.429424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.900433, 33.409855, 34.483925>,  <45.050159, 33.769482, 34.574757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.900433, 33.409855, 34.483925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094815, 0.206494, -0.973843,
		0.922442, -0.386055, 0.007951,
		-0.374315, -0.899067, -0.227082,
		44.788139, 33.140133, 34.415802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.397182, 33.518890, 33.994560>,  <45.050159, 33.769482, 34.574757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.397182, 33.518890, 33.994560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085766, 33.268276, 34.009140>,  <44.898914, 33.117908, 34.017887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085766, 33.268276, 34.009140>,  <45.397182, 33.518890, 33.994560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.085766, 33.268276, 34.009140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045552, -0.114338, -0.992397,
		0.625937, -0.770963, 0.117556,
		-0.778542, -0.626532, 0.036449,
		44.852203, 33.080315, 34.020073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.992844, 33.773457, 34.291714>,  <45.397182, 33.518890, 33.994560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.992844, 33.773457, 34.291714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.971058, 33.597462, 33.933174>,  <45.957989, 33.491863, 33.718052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.971058, 33.597462, 33.933174>,  <45.992844, 33.773457, 34.291714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.971058, 33.597462, 33.933174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918394, -0.374398, 0.127979,
		-0.391900, -0.816232, 0.424476,
		-0.054463, -0.439991, -0.896349,
		45.954720, 33.465466, 33.664268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.538616, 33.616570, 34.803371>,  <45.992844, 33.773457, 34.291714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.538616, 33.616570, 34.803371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.837692, 33.424198, 34.620213>,  <47.017136, 33.308777, 34.510315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.837692, 33.424198, 34.620213>,  <46.538616, 33.616570, 34.803371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.837692, 33.424198, 34.620213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330612, 0.328423, -0.884779,
		0.575901, 0.812924, 0.086556,
		0.747686, -0.480928, -0.457902,
		47.061996, 33.279919, 34.482841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.662083, 34.266647, 35.273819>,  <46.538616, 33.616570, 34.803371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.662083, 34.266647, 35.273819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.651566, 34.562710, 35.542587>,  <46.645256, 34.740349, 35.703850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.651566, 34.562710, 35.542587>,  <46.662083, 34.266647, 35.273819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.651566, 34.562710, 35.542587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682777, 0.477649, -0.552872,
		-0.730154, -0.473308, 0.492803,
		-0.026291, 0.740156, 0.671921,
		46.643677, 34.784756, 35.744164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.950516, 34.431004, 35.546673>,  <46.662083, 34.266647, 35.273819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.950516, 34.431004, 35.546673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.199142, 34.744324, 35.550453>,  <46.348320, 34.932316, 35.552719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.199142, 34.744324, 35.550453>,  <45.950516, 34.431004, 35.546673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.199142, 34.744324, 35.550453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537865, 0.435516, -0.721822,
		-0.569520, 0.443581, 0.692014,
		0.621569, 0.783302, 0.009448,
		46.385612, 34.979313, 35.553288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.674824, 35.138355, 35.636524>,  <45.950516, 34.431004, 35.546673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.674824, 35.138355, 35.636524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.004143, 35.178013, 35.412968>,  <46.201733, 35.201809, 35.278835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.004143, 35.178013, 35.412968>,  <45.674824, 35.138355, 35.636524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.004143, 35.178013, 35.412968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531455, 0.480463, -0.697647,
		0.199355, 0.871393, 0.448255,
		0.823294, 0.099148, -0.558888,
		46.251129, 35.207756, 35.245300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.797657, 35.933369, 35.422615>,  <45.674824, 35.138355, 35.636524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.797657, 35.933369, 35.422615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.911278, 35.647102, 35.167385>,  <45.979450, 35.475342, 35.014248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.911278, 35.647102, 35.167385>,  <45.797657, 35.933369, 35.422615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.911278, 35.647102, 35.167385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652830, 0.343039, -0.675380,
		0.702229, 0.608398, -0.369764,
		0.284056, -0.715664, -0.638073,
		45.996494, 35.432404, 34.975964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.144234, 35.966621, 34.767845>,  <45.797657, 35.933369, 35.422615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.144234, 35.966621, 34.767845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.402134, 36.111942, 35.036861>,  <46.556873, 36.199135, 35.198269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.402134, 36.111942, 35.036861>,  <46.144234, 35.966621, 34.767845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.402134, 36.111942, 35.036861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698300, -0.637824, -0.324896,
		0.310923, 0.679110, -0.664934,
		0.644751, 0.363305, 0.672537,
		46.595558, 36.220936, 35.238621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.782425, 35.961246, 34.446648>,  <46.144234, 35.966621, 34.767845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.782425, 35.961246, 34.446648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.855900, 35.953598, 34.839767>,  <46.899986, 35.949009, 35.075638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.855900, 35.953598, 34.839767>,  <46.782425, 35.961246, 34.446648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.855900, 35.953598, 34.839767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788629, -0.593967, -0.158954,
		0.586790, 0.804262, -0.094025,
		0.183689, -0.019121, 0.982799,
		46.911007, 35.947861, 35.134605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.589134, 36.037701, 34.727570>,  <46.782425, 35.961246, 34.446648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.589134, 36.037701, 34.727570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.368305, 35.784626, 34.944794>,  <47.235806, 35.632782, 35.075130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.368305, 35.784626, 34.944794>,  <47.589134, 36.037701, 34.727570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.368305, 35.784626, 34.944794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691040, -0.711646, -0.126583,
		0.466556, 0.305395, 0.830096,
		-0.552077, -0.632687, 0.543063,
		47.202682, 35.594818, 35.107712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.044189, 35.399685, 34.741665>,  <47.589134, 36.037701, 34.727570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.044189, 35.399685, 34.741665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.719540, 35.296696, 34.951416>,  <47.524750, 35.234901, 35.077267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.719540, 35.296696, 34.951416>,  <48.044189, 35.399685, 34.741665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.719540, 35.296696, 34.951416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405466, -0.894488, 0.188381,
		0.420551, 0.365514, 0.830383,
		-0.811624, -0.257469, 0.524382,
		47.476051, 35.219456, 35.108730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.142334, 35.861485, 28.968525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.786297, 35.922497, 29.140324>,  <33.572674, 35.959106, 29.243402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.786297, 35.922497, 29.140324>,  <34.142334, 35.861485, 28.968525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786297, 35.922497, 29.140324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296787, -0.521198, 0.800169,
		0.345905, 0.839694, 0.418645,
		-0.890094, 0.152534, 0.429495,
		33.519268, 35.968258, 29.269173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206978, 36.267849, 29.648689>,  <34.142334, 35.861485, 28.968525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206978, 36.267849, 29.648689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.857246, 36.077217, 29.685398>,  <33.647408, 35.962837, 29.707422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.857246, 36.077217, 29.685398>,  <34.206978, 36.267849, 29.648689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857246, 36.077217, 29.685398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288640, -0.358596, 0.887748,
		-0.390171, 0.802673, 0.451090,
		-0.874331, -0.476576, 0.091770,
		33.594948, 35.934246, 29.712929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977283, 36.467186, 30.317169>,  <34.206978, 36.267849, 29.648689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977283, 36.467186, 30.317169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.785053, 36.128063, 30.227488>,  <33.669716, 35.924591, 30.173679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.785053, 36.128063, 30.227488>,  <33.977283, 36.467186, 30.317169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785053, 36.128063, 30.227488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083704, -0.298842, 0.950625,
		-0.872947, 0.438085, 0.214582,
		-0.480580, -0.847806, -0.224203,
		33.640881, 35.873722, 30.160227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768791, 36.286434, 30.936907>,  <33.977283, 36.467186, 30.317169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768791, 36.286434, 30.936907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.722092, 35.945835, 30.732430>,  <33.694073, 35.741474, 30.609743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.722092, 35.945835, 30.732430>,  <33.768791, 36.286434, 30.936907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722092, 35.945835, 30.732430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125558, -0.523240, 0.842885,
		-0.985192, 0.034225, 0.168002,
		-0.116753, -0.851498, -0.511195,
		33.687065, 35.690384, 30.579071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382904, 35.882275, 31.295401>,  <33.768791, 36.286434, 30.936907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382904, 35.882275, 31.295401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.605671, 35.636765, 31.071571>,  <33.739330, 35.489460, 30.937273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.605671, 35.636765, 31.071571>,  <33.382904, 35.882275, 31.295401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605671, 35.636765, 31.071571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210767, -0.547234, 0.810007,
		-0.803381, -0.569046, -0.175400,
		0.556916, -0.613776, -0.559574,
		33.772747, 35.452633, 30.903700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132309, 35.276680, 31.539042>,  <33.382904, 35.882275, 31.295401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132309, 35.276680, 31.539042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.481392, 35.217163, 31.353033>,  <33.690842, 35.181454, 31.241428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.481392, 35.217163, 31.353033>,  <33.132309, 35.276680, 31.539042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481392, 35.217163, 31.353033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295321, -0.597584, 0.745439,
		-0.388804, -0.787880, -0.477574,
		0.872707, -0.148792, -0.465020,
		33.743202, 35.172527, 31.213528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336517, 34.584160, 31.610735>,  <33.132309, 35.276680, 31.539042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336517, 34.584160, 31.610735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.684761, 34.755405, 31.513773>,  <33.893707, 34.858154, 31.455597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.684761, 34.755405, 31.513773>,  <33.336517, 34.584160, 31.610735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684761, 34.755405, 31.513773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473222, -0.593972, 0.650583,
		0.134543, -0.681114, -0.719710,
		0.870608, 0.428114, -0.242404,
		33.945942, 34.883839, 31.441051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811882, 34.044029, 31.630648>,  <33.336517, 34.584160, 31.610735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811882, 34.044029, 31.630648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.060505, 34.357304, 31.623926>,  <34.209679, 34.545269, 31.619894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.060505, 34.357304, 31.623926>,  <33.811882, 34.044029, 31.630648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060505, 34.357304, 31.623926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578928, -0.444791, 0.683377,
		0.527737, -0.434488, -0.729873,
		0.621560, 0.783187, -0.016804,
		34.246971, 34.592258, 31.618885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460438, 33.758739, 31.480490>,  <33.811882, 34.044029, 31.630648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460438, 33.758739, 31.480490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.527649, 34.108910, 31.661772>,  <34.567978, 34.319012, 31.770542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.527649, 34.108910, 31.661772>,  <34.460438, 33.758739, 31.480490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527649, 34.108910, 31.661772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576267, -0.460238, 0.675350,
		0.799801, 0.147688, -0.581813,
		0.168032, 0.875425, 0.453207,
		34.578060, 34.371536, 31.797733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183704, 33.861477, 31.581688>,  <34.460438, 33.758739, 31.480490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183704, 33.861477, 31.581688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.990036, 34.076977, 31.857462>,  <34.873833, 34.206276, 32.022926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.990036, 34.076977, 31.857462>,  <35.183704, 33.861477, 31.581688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990036, 34.076977, 31.857462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613657, -0.352582, 0.706478,
		0.623699, 0.765135, -0.159898,
		-0.484174, 0.538752, 0.689436,
		34.844784, 34.238602, 32.064293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668331, 34.114025, 32.033325>,  <35.183704, 33.861477, 31.581688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668331, 34.114025, 32.033325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.341915, 34.182392, 32.254181>,  <35.146065, 34.223412, 32.386696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.341915, 34.182392, 32.254181>,  <35.668331, 34.114025, 32.033325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341915, 34.182392, 32.254181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558060, -0.015711, 0.829652,
		0.150477, 0.985160, -0.082562,
		-0.816043, 0.170919, 0.552142,
		35.097103, 34.233669, 32.419823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931351, 34.603729, 32.437195>,  <35.668331, 34.114025, 32.033325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931351, 34.603729, 32.437195> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.605125, 34.454609, 32.614227>,  <35.409389, 34.365135, 32.720448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.605125, 34.454609, 32.614227>,  <35.931351, 34.603729, 32.437195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605125, 34.454609, 32.614227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388417, 0.214257, 0.896229,
		-0.428942, 0.902836, -0.029937,
		-0.815562, -0.372802, 0.442581,
		35.360458, 34.342770, 32.747002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835293, 34.977898, 33.059212>,  <35.931351, 34.603729, 32.437195>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835293, 34.977898, 33.059212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.614582, 34.654316, 33.140335>,  <35.482155, 34.460167, 33.189011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.614582, 34.654316, 33.140335>,  <35.835293, 34.977898, 33.059212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614582, 34.654316, 33.140335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257385, 0.066130, 0.964044,
		-0.793282, 0.584136, 0.171725,
		-0.551777, -0.808957, 0.202807,
		35.449051, 34.411629, 33.201176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385159, 35.116333, 33.642231>,  <35.835293, 34.977898, 33.059212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385159, 35.116333, 33.642231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.457954, 34.724152, 33.612347>,  <35.501633, 34.488842, 33.594414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.457954, 34.724152, 33.612347>,  <35.385159, 35.116333, 33.642231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.457954, 34.724152, 33.612347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031485, -0.070134, 0.997040,
		-0.982796, -0.183804, 0.018105,
		0.181991, -0.980457, -0.074715,
		35.512550, 34.430016, 33.589931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101402, 34.785069, 34.370617>,  <35.385159, 35.116333, 33.642231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101402, 34.785069, 34.370617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.333542, 34.501740, 34.209881>,  <35.472824, 34.331741, 34.113438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.333542, 34.501740, 34.209881>,  <35.101402, 34.785069, 34.370617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333542, 34.501740, 34.209881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238472, -0.323995, 0.915510,
		-0.778672, -0.627140, -0.019114,
		0.580346, -0.708324, -0.401841,
		35.507645, 34.289242, 34.089329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983410, 34.208412, 34.779301>,  <35.101402, 34.785069, 34.370617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983410, 34.208412, 34.779301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.326603, 34.131943, 34.588593>,  <35.532520, 34.086060, 34.474167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.326603, 34.131943, 34.588593>,  <34.983410, 34.208412, 34.779301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326603, 34.131943, 34.588593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419272, -0.275591, 0.865020,
		-0.296763, -0.942073, -0.156300,
		0.857987, -0.191174, -0.476771,
		35.584000, 34.074589, 34.445560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111313, 33.599384, 35.017307>,  <34.983410, 34.208412, 34.779301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111313, 33.599384, 35.017307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.460880, 33.737881, 34.880844>,  <35.670620, 33.820980, 34.798965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.460880, 33.737881, 34.880844>,  <35.111313, 33.599384, 35.017307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460880, 33.737881, 34.880844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447558, -0.299341, 0.842667,
		0.189647, -0.889106, -0.416563,
		0.873914, 0.346245, -0.341157,
		35.723053, 33.841755, 34.778496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639549, 33.130329, 35.184937>,  <35.111313, 33.599384, 35.017307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639549, 33.130329, 35.184937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.850407, 33.462852, 35.114464>,  <35.976921, 33.662369, 35.072182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.850407, 33.462852, 35.114464>,  <35.639549, 33.130329, 35.184937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850407, 33.462852, 35.114464> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570106, -0.192226, 0.798767,
		0.630159, -0.521506, -0.575267,
		0.527143, 0.831313, -0.176180,
		36.008549, 33.712246, 35.061611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183128, 32.961376, 35.545502>,  <35.639549, 33.130329, 35.184937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183128, 32.961376, 35.545502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.282978, 33.344532, 35.488731>,  <36.342888, 33.574425, 35.454670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.282978, 33.344532, 35.488731>,  <36.183128, 32.961376, 35.545502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282978, 33.344532, 35.488731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679536, -0.068865, 0.730403,
		0.689869, -0.278772, -0.668108,
		0.249625, 0.957885, -0.141927,
		36.357864, 33.631897, 35.446152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909245, 33.002903, 35.406326>,  <36.183128, 32.961376, 35.545502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909245, 33.002903, 35.406326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.770660, 33.356461, 35.531990>,  <36.687508, 33.568596, 35.607388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.770660, 33.356461, 35.531990>,  <36.909245, 33.002903, 35.406326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770660, 33.356461, 35.531990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718448, 0.034697, 0.694715,
		0.603154, 0.466398, -0.647053,
		-0.346465, 0.883894, 0.314155,
		36.666721, 33.621628, 35.626236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533833, 33.595501, 35.533268>,  <36.909245, 33.002903, 35.406326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533833, 33.595501, 35.533268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.225819, 33.697605, 35.767151>,  <37.041008, 33.758869, 35.907482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.225819, 33.697605, 35.767151>,  <37.533833, 33.595501, 35.533268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225819, 33.697605, 35.767151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620523, 0.086625, 0.779389,
		0.148298, 0.962983, -0.225101,
		-0.770038, 0.255263, 0.584707,
		36.994808, 33.774185, 35.942562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894779, 33.931385, 36.043873>,  <37.533833, 33.595501, 35.533268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894779, 33.931385, 36.043873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.538090, 33.894264, 36.221058>,  <37.324074, 33.871994, 36.327370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.538090, 33.894264, 36.221058>,  <37.894779, 33.931385, 36.043873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538090, 33.894264, 36.221058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434151, 0.101030, 0.895157,
		-0.127823, 0.990546, -0.049802,
		-0.891726, -0.092800, 0.442960,
		37.270573, 33.866425, 36.353947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467903, 33.455532, 35.815002>,  <37.894779, 33.931385, 36.043873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467903, 33.455532, 35.815002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.820812, 33.473072, 35.627525>,  <39.032558, 33.483597, 35.515038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.820812, 33.473072, 35.627525>,  <38.467903, 33.455532, 35.815002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820812, 33.473072, 35.627525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415303, 0.541282, -0.731121,
		0.221634, 0.839697, 0.495770,
		0.882271, 0.043853, -0.468695,
		39.085495, 33.486229, 35.486916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407429, 34.091228, 35.484760>,  <38.467903, 33.455532, 35.815002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407429, 34.091228, 35.484760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.714966, 33.906292, 35.308071>,  <38.899490, 33.795330, 35.202057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.714966, 33.906292, 35.308071>,  <38.407429, 34.091228, 35.484760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714966, 33.906292, 35.308071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232345, 0.441586, -0.866612,
		0.595730, 0.768922, 0.232089,
		0.768844, -0.462342, -0.441721,
		38.945618, 33.767590, 35.175556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864525, 34.641010, 35.074348>,  <38.407429, 34.091228, 35.484760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864525, 34.641010, 35.074348> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.925579, 34.280491, 34.912178>,  <38.962212, 34.064178, 34.814877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.925579, 34.280491, 34.912178>,  <38.864525, 34.641010, 35.074348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925579, 34.280491, 34.912178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128313, 0.388685, -0.912393,
		0.979918, 0.191284, -0.056321,
		0.152635, -0.901296, -0.405423,
		38.971371, 34.010101, 34.790550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228016, 34.777718, 34.446449>,  <38.864525, 34.641010, 35.074348>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228016, 34.777718, 34.446449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.081165, 34.408302, 34.402100>,  <38.993053, 34.186653, 34.375492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.081165, 34.408302, 34.402100>,  <39.228016, 34.777718, 34.446449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081165, 34.408302, 34.402100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345828, 0.246171, -0.905429,
		0.863491, -0.294070, -0.409763,
		-0.367131, -0.923538, -0.110869,
		38.971027, 34.131241, 34.368839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578007, 34.540012, 33.860725>,  <39.228016, 34.777718, 34.446449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578007, 34.540012, 33.860725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.263878, 34.297752, 33.912045>,  <39.075401, 34.152397, 33.942837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.263878, 34.297752, 33.912045>,  <39.578007, 34.540012, 33.860725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263878, 34.297752, 33.912045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329565, 0.233557, -0.914789,
		0.524076, -0.760685, -0.383018,
		-0.785322, -0.605648, 0.128294,
		39.028282, 34.116058, 33.950531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550716, 34.125973, 33.322681>,  <39.578007, 34.540012, 33.860725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550716, 34.125973, 33.322681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.169361, 34.107262, 33.441921>,  <38.940548, 34.096035, 33.513466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.169361, 34.107262, 33.441921>,  <39.550716, 34.125973, 33.322681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169361, 34.107262, 33.441921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295883, -0.048920, -0.953971,
		0.059207, -0.997707, 0.032799,
		-0.953387, -0.046777, 0.298101,
		38.883347, 34.093227, 33.531353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244629, 33.642220, 32.829494>,  <39.550716, 34.125973, 33.322681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244629, 33.642220, 32.829494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.962063, 33.873589, 32.992664>,  <38.792522, 34.012409, 33.090569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.962063, 33.873589, 32.992664>,  <39.244629, 33.642220, 32.829494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962063, 33.873589, 32.992664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536582, -0.061800, -0.841583,
		-0.461578, -0.813396, 0.354025,
		-0.706418, 0.578419, 0.407928,
		38.750137, 34.047115, 33.115044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703659, 33.390198, 32.446102>,  <39.244629, 33.642220, 32.829494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703659, 33.390198, 32.446102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.600761, 33.714008, 32.657192>,  <38.539021, 33.908295, 32.783844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.600761, 33.714008, 32.657192>,  <38.703659, 33.390198, 32.446102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.600761, 33.714008, 32.657192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648892, 0.259962, -0.715093,
		-0.716075, -0.526391, 0.458421,
		-0.257246, 0.809526, 0.527723,
		38.523586, 33.956867, 32.815510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012600, 33.476128, 32.356369>,  <38.703659, 33.390198, 32.446102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012600, 33.476128, 32.356369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.157890, 33.836208, 32.452454>,  <38.245064, 34.052258, 32.510105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.157890, 33.836208, 32.452454>,  <38.012600, 33.476128, 32.356369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157890, 33.836208, 32.452454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609174, 0.424542, -0.669829,
		-0.704962, 0.096968, 0.702585,
		0.363229, 0.900201, 0.240215,
		38.266857, 34.106270, 32.524517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502953, 33.869541, 32.504704>,  <38.012600, 33.476128, 32.356369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502953, 33.869541, 32.504704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.786858, 34.143986, 32.440849>,  <37.957203, 34.308651, 32.402538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.786858, 34.143986, 32.440849>,  <37.502953, 33.869541, 32.504704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786858, 34.143986, 32.440849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586934, 0.450681, -0.672603,
		-0.389538, 0.571084, 0.722581,
		0.709766, 0.686112, -0.159631,
		37.999786, 34.349819, 32.392960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067966, 34.472054, 32.349545>,  <37.502953, 33.869541, 32.504704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067966, 34.472054, 32.349545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.436192, 34.517303, 32.200001>,  <37.657127, 34.544453, 32.110275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.436192, 34.517303, 32.200001>,  <37.067966, 34.472054, 32.349545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436192, 34.517303, 32.200001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387070, 0.392655, -0.834266,
		0.052422, 0.912702, 0.405250,
		0.920559, 0.113126, -0.373863,
		37.712360, 34.551243, 32.087841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071251, 35.164341, 32.170612>,  <37.067966, 34.472054, 32.349545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071251, 35.164341, 32.170612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.353058, 34.989002, 31.947365>,  <37.522144, 34.883797, 31.813416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.353058, 34.989002, 31.947365>,  <37.071251, 35.164341, 32.170612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353058, 34.989002, 31.947365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370416, 0.443683, -0.816050,
		0.605345, 0.781662, 0.150211,
		0.704521, -0.438350, -0.558121,
		37.564415, 34.857498, 31.779928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328354, 35.782818, 31.951950>,  <37.071251, 35.164341, 32.170612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328354, 35.782818, 31.951950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.372616, 35.452629, 31.730556>,  <37.399174, 35.254517, 31.597719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.372616, 35.452629, 31.730556>,  <37.328354, 35.782818, 31.951950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372616, 35.452629, 31.730556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502301, 0.434093, -0.747835,
		0.857583, 0.360770, -0.366601,
		0.110657, -0.825475, -0.553486,
		37.405811, 35.204987, 31.564510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597404, 36.018032, 31.346363>,  <37.328354, 35.782818, 31.951950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597404, 36.018032, 31.346363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.463661, 35.652390, 31.254618>,  <37.383415, 35.433002, 31.199572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.463661, 35.652390, 31.254618>,  <37.597404, 36.018032, 31.346363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463661, 35.652390, 31.254618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333413, 0.342362, -0.878421,
		0.881499, -0.217235, -0.419248,
		-0.334358, -0.914110, -0.229362,
		37.363354, 35.378155, 31.185808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835014, 36.007912, 30.660645>,  <37.597404, 36.018032, 31.346363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835014, 36.007912, 30.660645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.579639, 35.701065, 30.685732>,  <37.426414, 35.516956, 30.700785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.579639, 35.701065, 30.685732>,  <37.835014, 36.007912, 30.660645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579639, 35.701065, 30.685732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375101, 0.238954, -0.895656,
		0.672084, -0.595346, -0.440303,
		-0.638437, -0.767114, 0.062717,
		37.388107, 35.470932, 30.704548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961353, 35.582870, 29.975483>,  <37.835014, 36.007912, 30.660645>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961353, 35.582870, 29.975483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.595337, 35.484154, 30.103100>,  <37.375729, 35.424923, 30.179670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.595337, 35.484154, 30.103100>,  <37.961353, 35.582870, 29.975483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595337, 35.484154, 30.103100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372592, 0.214183, -0.902940,
		0.154504, -0.945103, -0.287939,
		-0.915043, -0.246791, 0.319046,
		37.320824, 35.410114, 30.198812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647270, 35.121037, 29.478352>,  <37.961353, 35.582870, 29.975483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647270, 35.121037, 29.478352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.329014, 35.246284, 29.685780>,  <37.138062, 35.321434, 29.810236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.329014, 35.246284, 29.685780>,  <37.647270, 35.121037, 29.478352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329014, 35.246284, 29.685780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497296, 0.151214, -0.854302,
		-0.345916, -0.937598, 0.035403,
		-0.795638, 0.313122, 0.518571,
		37.090321, 35.340221, 29.841351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083408, 34.801369, 29.217693>,  <37.647270, 35.121037, 29.478352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083408, 34.801369, 29.217693> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.938545, 35.132908, 29.388273>,  <36.851627, 35.331829, 29.490622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.938545, 35.132908, 29.388273>,  <37.083408, 34.801369, 29.217693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938545, 35.132908, 29.388273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497207, 0.215203, -0.840519,
		-0.788433, -0.516434, 0.334169,
		-0.362159, 0.828845, 0.426448,
		36.829899, 35.381561, 29.516207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.126305, 34.802910, 29.131027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.238556, 35.173176, 29.232531>,  <36.305908, 35.395336, 29.293432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.238556, 35.173176, 29.232531>,  <36.126305, 34.802910, 29.131027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238556, 35.173176, 29.232531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629965, 0.377102, -0.678924,
		-0.724148, 0.030667, 0.688962,
		0.280630, 0.925664, 0.253759,
		36.322746, 35.450874, 29.308659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527107, 35.245560, 29.425665>,  <36.126305, 34.802910, 29.131027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527107, 35.245560, 29.425665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.816799, 35.480701, 29.281485>,  <35.990612, 35.621784, 29.194977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.816799, 35.480701, 29.281485>,  <35.527107, 35.245560, 29.425665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816799, 35.480701, 29.281485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614525, 0.313091, -0.724108,
		-0.312815, 0.745925, 0.587999,
		0.724227, 0.587853, -0.360450,
		36.034069, 35.657059, 29.173349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150734, 35.802025, 29.399080>,  <35.527107, 35.245560, 29.425665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150734, 35.802025, 29.399080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.468727, 35.851364, 29.161497>,  <35.659523, 35.880966, 29.018948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.468727, 35.851364, 29.161497>,  <35.150734, 35.802025, 29.399080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.468727, 35.851364, 29.161497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585222, 0.413756, -0.697367,
		0.159737, 0.901994, 0.401113,
		0.794983, 0.123345, -0.593959,
		35.707222, 35.888367, 28.983309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016682, 36.384525, 29.129322>,  <35.150734, 35.802025, 29.399080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016682, 36.384525, 29.129322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.298168, 36.264690, 28.871632>,  <35.467060, 36.192791, 28.717016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.298168, 36.264690, 28.871632>,  <35.016682, 36.384525, 29.129322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298168, 36.264690, 28.871632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471285, 0.481708, -0.738815,
		0.531670, 0.823531, 0.197795,
		0.703717, -0.299587, -0.644228,
		35.509285, 36.174812, 28.678364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094360, 36.981071, 28.697712>,  <35.016682, 36.384525, 29.129322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094360, 36.981071, 28.697712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.216301, 36.650742, 28.507942>,  <35.289467, 36.452545, 28.394081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.216301, 36.650742, 28.507942>,  <35.094360, 36.981071, 28.697712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216301, 36.650742, 28.507942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304310, 0.387562, -0.870167,
		0.902474, 0.409647, -0.133156,
		0.304855, -0.825824, -0.474424,
		35.307758, 36.402996, 28.365616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562035, 37.214558, 28.053053>,  <35.094360, 36.981071, 28.697712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562035, 37.214558, 28.053053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.452068, 36.838165, 27.974075>,  <35.386089, 36.612331, 27.926689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.452068, 36.838165, 27.974075>,  <35.562035, 37.214558, 28.053053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452068, 36.838165, 27.974075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258889, 0.270220, -0.927339,
		0.925958, -0.203822, -0.317896,
		-0.274914, -0.940977, -0.197445,
		35.369595, 36.555874, 27.914843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861038, 37.074455, 27.414110>,  <35.562035, 37.214558, 28.053053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861038, 37.074455, 27.414110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.545414, 36.836266, 27.474489>,  <35.356037, 36.693352, 27.510717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.545414, 36.836266, 27.474489>,  <35.861038, 37.074455, 27.414110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545414, 36.836266, 27.474489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309144, 0.172573, -0.935226,
		0.530856, -0.784618, -0.320259,
		-0.789064, -0.595477, 0.150949,
		35.308693, 36.657623, 27.519773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835499, 36.664986, 26.833017>,  <35.861038, 37.074455, 27.414110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835499, 36.664986, 26.833017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.465759, 36.645279, 26.984358>,  <35.243916, 36.633453, 27.075161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.465759, 36.645279, 26.984358>,  <35.835499, 36.664986, 26.833017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465759, 36.645279, 26.984358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369180, 0.365896, -0.854299,
		-0.096347, -0.929351, -0.356405,
		-0.924350, -0.049269, 0.378351,
		35.188454, 36.630497, 27.097862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283375, 36.340935, 26.287880>,  <35.835499, 36.664986, 26.833017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283375, 36.340935, 26.287880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.081505, 36.558723, 26.555864>,  <34.960384, 36.689396, 26.716656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.081505, 36.558723, 26.555864>,  <35.283375, 36.340935, 26.287880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081505, 36.558723, 26.555864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421295, 0.522034, -0.741613,
		-0.753533, -0.656526, -0.034073,
		-0.504676, 0.544476, 0.669962,
		34.930103, 36.722065, 26.756853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708164, 36.476238, 25.932039>,  <35.283375, 36.340935, 26.287880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708164, 36.476238, 25.932039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.696381, 36.759132, 26.214584>,  <34.689312, 36.928871, 26.384111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.696381, 36.759132, 26.214584>,  <34.708164, 36.476238, 25.932039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696381, 36.759132, 26.214584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360782, 0.651509, -0.667362,
		-0.932185, -0.274500, 0.235969,
		-0.029455, 0.707238, 0.706362,
		34.687546, 36.971302, 26.426493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082047, 36.771984, 25.938494>,  <34.708164, 36.476238, 25.932039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082047, 36.771984, 25.938494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.290253, 37.055389, 26.129103>,  <34.415176, 37.225433, 26.243467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.290253, 37.055389, 26.129103>,  <34.082047, 36.771984, 25.938494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290253, 37.055389, 26.129103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386807, 0.693199, -0.608158,
		-0.761212, 0.132235, 0.634879,
		0.520517, 0.708512, 0.476521,
		34.446407, 37.267944, 26.272058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555527, 37.327324, 26.057379>,  <34.082047, 36.771984, 25.938494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555527, 37.327324, 26.057379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.919655, 37.484447, 26.109564>,  <34.138130, 37.578720, 26.140875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.919655, 37.484447, 26.109564>,  <33.555527, 37.327324, 26.057379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919655, 37.484447, 26.109564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298816, 0.841797, -0.449542,
		-0.286408, 0.370242, 0.883681,
		0.910319, 0.392810, 0.130463,
		34.192749, 37.602291, 26.148703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363785, 37.878048, 26.419090>,  <33.555527, 37.327324, 26.057379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363785, 37.878048, 26.419090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.722534, 37.939339, 26.253130>,  <33.937782, 37.976112, 26.153553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.722534, 37.939339, 26.253130>,  <33.363785, 37.878048, 26.419090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722534, 37.939339, 26.253130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334112, 0.849392, -0.408537,
		0.289814, 0.505029, 0.812991,
		0.896871, 0.153230, -0.414901,
		33.991596, 37.985306, 26.128660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479378, 38.652382, 26.502863>,  <33.363785, 37.878048, 26.419090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479378, 38.652382, 26.502863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.734684, 38.509003, 26.230352>,  <33.887867, 38.422974, 26.066847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.734684, 38.509003, 26.230352>,  <33.479378, 38.652382, 26.502863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734684, 38.509003, 26.230352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198545, 0.778390, -0.595558,
		0.743775, 0.515385, 0.425649,
		0.638262, -0.358451, -0.681274,
		33.926163, 38.401466, 26.025970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957073, 39.190899, 26.388079>,  <33.479378, 38.652382, 26.502863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957073, 39.190899, 26.388079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.985096, 38.980701, 26.048914>,  <34.001911, 38.854584, 25.845415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.985096, 38.980701, 26.048914>,  <33.957073, 39.190899, 26.388079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985096, 38.980701, 26.048914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069236, 0.845387, -0.529648,
		0.995137, 0.095811, 0.022842,
		0.070057, -0.525491, -0.847910,
		34.006111, 38.823055, 25.794540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427605, 39.528152, 26.000742>,  <33.957073, 39.190899, 26.388079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427605, 39.528152, 26.000742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.219032, 39.303249, 25.744001>,  <34.093887, 39.168308, 25.589958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.219032, 39.303249, 25.744001>,  <34.427605, 39.528152, 26.000742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219032, 39.303249, 25.744001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117086, 0.792235, -0.598878,
		0.845223, -0.237121, -0.478928,
		-0.521430, -0.562261, -0.641851,
		34.062603, 39.134571, 25.551447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643131, 39.675346, 25.335148>,  <34.427605, 39.528152, 26.000742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643131, 39.675346, 25.335148> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.295170, 39.505051, 25.235538>,  <34.086391, 39.402874, 25.175772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.295170, 39.505051, 25.235538>,  <34.643131, 39.675346, 25.335148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295170, 39.505051, 25.235538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130010, 0.684965, -0.716882,
		0.475778, -0.591243, -0.651204,
		-0.869904, -0.425740, -0.249024,
		34.034199, 39.377327, 25.160831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668766, 39.539295, 24.620783>,  <34.643131, 39.675346, 25.335148>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668766, 39.539295, 24.620783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.276054, 39.549938, 24.696035>,  <34.040428, 39.556324, 24.741186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.276054, 39.549938, 24.696035>,  <34.668766, 39.539295, 24.620783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276054, 39.549938, 24.696035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127830, 0.640063, -0.757614,
		-0.140573, -0.767861, -0.625003,
		-0.981783, 0.026606, 0.188131,
		33.981518, 39.557919, 24.752474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384567, 39.647739, 23.939819>,  <34.668766, 39.539295, 24.620783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384567, 39.647739, 23.939819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.084637, 39.734829, 24.189734>,  <33.904678, 39.787083, 24.339682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.084637, 39.734829, 24.189734>,  <34.384567, 39.647739, 23.939819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084637, 39.734829, 24.189734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236348, 0.793862, -0.560288,
		-0.617981, -0.567786, -0.543800,
		-0.749826, 0.217721, 0.624787,
		33.859688, 39.800144, 24.377169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977390, 39.710369, 23.424168>,  <34.384567, 39.647739, 23.939819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977390, 39.710369, 23.424168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.816479, 39.884705, 23.746216>,  <33.719933, 39.989304, 23.939445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.816479, 39.884705, 23.746216>,  <33.977390, 39.710369, 23.424168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816479, 39.884705, 23.746216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208341, 0.812762, -0.544070,
		-0.891497, -0.386606, -0.236153,
		-0.402277, 0.435837, 0.805121,
		33.695797, 40.015457, 23.987753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292633, 39.886562, 23.261747>,  <33.977390, 39.710369, 23.424168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292633, 39.886562, 23.261747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.409805, 40.130219, 23.556538>,  <33.480110, 40.276413, 23.733412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.409805, 40.130219, 23.556538>,  <33.292633, 39.886562, 23.261747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409805, 40.130219, 23.556538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209325, 0.792948, -0.572204,
		-0.932937, 0.013351, 0.359791,
		0.292935, 0.609143, 0.736976,
		33.497684, 40.312962, 23.777630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801136, 40.424301, 23.253538>,  <33.292633, 39.886562, 23.261747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801136, 40.424301, 23.253538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.117725, 40.579731, 23.442249>,  <33.307678, 40.672989, 23.555477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.117725, 40.579731, 23.442249>,  <32.801136, 40.424301, 23.253538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.117725, 40.579731, 23.442249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177256, 0.884648, -0.431251,
		-0.584932, 0.257699, 0.769055,
		0.791477, 0.388572, 0.471780,
		33.355167, 40.696304, 23.583784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812664, 41.078766, 22.939171>,  <32.801136, 40.424301, 23.253538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812664, 41.078766, 22.939171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.139984, 41.076199, 23.169073>,  <33.336376, 41.074657, 23.307014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.139984, 41.076199, 23.169073>,  <32.812664, 41.078766, 22.939171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139984, 41.076199, 23.169073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310843, 0.846048, -0.433103,
		-0.483491, 0.533067, 0.694317,
		0.818299, -0.006422, 0.574757,
		33.385475, 41.074272, 23.341501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071476, 41.041916, 22.987764>,  <32.812664, 41.078766, 22.939171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071476, 41.041916, 22.987764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.753834, 41.069363, 22.746206>,  <31.563248, 41.085831, 22.601273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.753834, 41.069363, 22.746206>,  <32.071476, 41.041916, 22.987764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753834, 41.069363, 22.746206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607775, -0.085959, 0.789443,
		0.002256, 0.993933, 0.109962,
		-0.794106, 0.068613, -0.603894,
		31.515602, 41.089947, 22.565039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673363, 41.630531, 23.563799>,  <32.071476, 41.041916, 22.987764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673363, 41.630531, 23.563799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.313938, 41.559895, 23.724499>,  <31.098284, 41.517513, 23.820919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.313938, 41.559895, 23.724499>,  <31.673363, 41.630531, 23.563799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313938, 41.559895, 23.724499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406529, -0.679749, 0.610471,
		0.165287, 0.711869, 0.682585,
		-0.898562, -0.176588, 0.401749,
		31.044369, 41.506920, 23.845024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661161, 41.537632, 24.353939>,  <31.673363, 41.630531, 23.563799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661161, 41.537632, 24.353939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.299919, 41.376362, 24.294807>,  <31.083174, 41.279602, 24.259329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.299919, 41.376362, 24.294807>,  <31.661161, 41.537632, 24.353939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299919, 41.376362, 24.294807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196253, -0.693709, 0.693003,
		-0.381950, 0.596843, 0.705616,
		-0.903105, -0.403171, -0.147830,
		31.028988, 41.255409, 24.250458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384537, 41.369755, 25.018648>,  <31.661161, 41.537632, 24.353939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384537, 41.369755, 25.018648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.164305, 41.132957, 24.783222>,  <31.032166, 40.990879, 24.641966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.164305, 41.132957, 24.783222>,  <31.384537, 41.369755, 25.018648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164305, 41.132957, 24.783222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146269, -0.762559, 0.630166,
		-0.821867, 0.260869, 0.506440,
		-0.550581, -0.591990, -0.588565,
		30.999130, 40.955360, 24.606653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022829, 40.945808, 25.451183>,  <31.384537, 41.369755, 25.018648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022829, 40.945808, 25.451183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.995415, 40.749779, 25.103590>,  <30.978966, 40.632160, 24.895035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.995415, 40.749779, 25.103590>,  <31.022829, 40.945808, 25.451183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.995415, 40.749779, 25.103590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090810, -0.870478, 0.483758,
		-0.993507, -0.045758, 0.104161,
		-0.068534, -0.490076, -0.868981,
		30.974855, 40.602757, 24.842896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604683, 40.467319, 25.609438>,  <31.022829, 40.945808, 25.451183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604683, 40.467319, 25.609438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.791344, 40.334011, 25.281740>,  <30.903341, 40.254025, 25.085121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.791344, 40.334011, 25.281740>,  <30.604683, 40.467319, 25.609438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791344, 40.334011, 25.281740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097730, -0.901185, 0.422273,
		-0.879023, -0.277121, -0.387972,
		0.466655, -0.333271, -0.819245,
		30.931339, 40.234028, 25.035967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.269754, 39.748566, 25.385059>,  <30.604683, 40.467319, 25.609438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.269754, 39.748566, 25.385059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.644718, 39.784836, 25.250570>,  <30.869696, 39.806599, 25.169878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.644718, 39.784836, 25.250570>,  <30.269754, 39.748566, 25.385059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644718, 39.784836, 25.250570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221557, -0.900181, 0.374948,
		-0.268661, -0.425971, -0.863927,
		0.937408, 0.090675, -0.336221,
		30.925941, 39.812038, 25.149704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552973, 39.073013, 25.176228>,  <30.269754, 39.748566, 25.385059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552973, 39.073013, 25.176228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.864874, 39.311455, 25.252798>,  <31.052015, 39.454521, 25.298740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.864874, 39.311455, 25.252798>,  <30.552973, 39.073013, 25.176228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864874, 39.311455, 25.252798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465522, -0.756465, 0.459402,
		0.418659, -0.269106, -0.867356,
		0.779752, 0.596106, 0.191426,
		31.098799, 39.490288, 25.310226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.041195, 38.642033, 25.237448>,  <30.552973, 39.073013, 25.176228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.041195, 38.642033, 25.237448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240984, 38.952740, 25.390894>,  <31.360857, 39.139164, 25.482962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.240984, 38.952740, 25.390894>,  <31.041195, 38.642033, 25.237448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240984, 38.952740, 25.390894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445354, -0.610036, 0.655375,
		0.743093, -0.156496, -0.650632,
		0.499473, 0.776766, 0.383617,
		31.390825, 39.185768, 25.505980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.673508, 38.388248, 25.236553>,  <31.041195, 38.642033, 25.237448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.673508, 38.388248, 25.236553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.658024, 38.672333, 25.517723>,  <31.648733, 38.842781, 25.686426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.658024, 38.672333, 25.517723>,  <31.673508, 38.388248, 25.236553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.658024, 38.672333, 25.517723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455122, -0.613721, 0.645144,
		0.889587, 0.344891, -0.299474,
		-0.038711, 0.710209, 0.702926,
		31.646410, 38.885395, 25.728601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312374, 38.487400, 25.535103>,  <31.673508, 38.388248, 25.236553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312374, 38.487400, 25.535103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.062954, 38.649788, 25.802347>,  <31.913301, 38.747219, 25.962694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.062954, 38.649788, 25.802347>,  <32.312374, 38.487400, 25.535103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062954, 38.649788, 25.802347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429109, -0.536627, 0.726565,
		0.653489, 0.739744, 0.160410,
		-0.623553, 0.405969, 0.668110,
		31.875889, 38.771580, 26.002781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781174, 38.627293, 26.057100>,  <32.312374, 38.487400, 25.535103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781174, 38.627293, 26.057100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.410622, 38.633793, 26.207598>,  <32.188290, 38.637691, 26.297897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.410622, 38.633793, 26.207598>,  <32.781174, 38.627293, 26.057100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.410622, 38.633793, 26.207598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324039, -0.474680, 0.818338,
		0.191894, 0.880008, 0.434468,
		-0.926378, 0.016249, 0.376245,
		32.132710, 38.638668, 26.320471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792114, 38.878914, 26.859158>,  <32.781174, 38.627293, 26.057100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792114, 38.878914, 26.859158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.452415, 38.674728, 26.805178>,  <32.248596, 38.552216, 26.772791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.452415, 38.674728, 26.805178>,  <32.792114, 38.878914, 26.859158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452415, 38.674728, 26.805178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251503, -0.615812, 0.746674,
		-0.464254, 0.600168, 0.651358,
		-0.849243, -0.510465, -0.134949,
		32.197643, 38.521587, 26.764692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544289, 38.828861, 27.559729>,  <32.792114, 38.878914, 26.859158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544289, 38.828861, 27.559729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.339825, 38.539154, 27.374622>,  <32.217148, 38.365330, 27.263557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.339825, 38.539154, 27.374622>,  <32.544289, 38.828861, 27.559729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339825, 38.539154, 27.374622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298506, -0.654508, 0.694632,
		-0.805983, 0.216930, 0.550756,
		-0.511161, -0.724265, -0.462768,
		32.186478, 38.321873, 27.235792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185112, 38.539246, 28.092596>,  <32.544289, 38.828861, 27.559729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185112, 38.539246, 28.092596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.193748, 38.251308, 27.815073>,  <32.198929, 38.078548, 27.648560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.193748, 38.251308, 27.815073>,  <32.185112, 38.539246, 28.092596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193748, 38.251308, 27.815073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192316, -0.678017, 0.709442,
		-0.981095, -0.148747, 0.123797,
		0.021591, -0.719838, -0.693806,
		32.200226, 38.035358, 27.606932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860245, 37.945312, 28.425692>,  <32.185112, 38.539246, 28.092596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860245, 37.945312, 28.425692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.091202, 37.813049, 28.127087>,  <32.229774, 37.733692, 27.947924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.091202, 37.813049, 28.127087>,  <31.860245, 37.945312, 28.425692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091202, 37.813049, 28.127087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270327, -0.785331, 0.556937,
		-0.770413, -0.523376, -0.364063,
		0.577397, -0.330655, -0.746512,
		32.264420, 37.713852, 27.903131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826355, 37.235840, 28.507221>,  <31.860245, 37.945312, 28.425692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826355, 37.235840, 28.507221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.130722, 37.258686, 28.248688>,  <32.313343, 37.272392, 28.093569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.130722, 37.258686, 28.248688>,  <31.826355, 37.235840, 28.507221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130722, 37.258686, 28.248688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365091, -0.861159, 0.353714,
		-0.536392, -0.505117, -0.676122,
		0.760916, 0.057116, -0.646332,
		32.358997, 37.275822, 28.054789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.821495, 36.678806, 27.988243>,  <31.826355, 37.235840, 28.507221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.821495, 36.678806, 27.988243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.200050, 36.789715, 28.054537>,  <32.427185, 36.856262, 28.094313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.200050, 36.789715, 28.054537>,  <31.821495, 36.678806, 27.988243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200050, 36.789715, 28.054537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145049, -0.823189, 0.548927,
		0.288635, -0.495458, -0.819274,
		0.946388, 0.277275, 0.165735,
		32.483967, 36.872898, 28.104258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156815, 36.042850, 28.127817>,  <31.821495, 36.678806, 27.988243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156815, 36.042850, 28.127817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.431522, 36.312828, 28.235744>,  <32.596348, 36.474815, 28.300501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.431522, 36.312828, 28.235744>,  <32.156815, 36.042850, 28.127817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431522, 36.312828, 28.235744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359757, -0.638168, 0.680674,
		0.631608, -0.370394, -0.681088,
		0.686766, 0.674945, 0.269820,
		32.637550, 36.515312, 28.316690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863792, 35.728733, 28.123278>,  <32.156815, 36.042850, 28.127817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863792, 35.728733, 28.123278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.877712, 36.029148, 28.387012>,  <32.886066, 36.209396, 28.545254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.877712, 36.029148, 28.387012>,  <32.863792, 35.728733, 28.123278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877712, 36.029148, 28.387012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404576, -0.613847, 0.677871,
		0.913842, 0.243160, -0.325218,
		0.034803, 0.751042, 0.659336,
		32.888153, 36.254459, 28.584814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591339, 35.576469, 28.431036>,  <32.863792, 35.728733, 28.123278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591339, 35.576469, 28.431036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.394753, 35.831482, 28.668360>,  <33.276802, 35.984489, 28.810755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.394753, 35.831482, 28.668360>,  <33.591339, 35.576469, 28.431036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394753, 35.831482, 28.668360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307275, -0.510512, 0.803094,
		0.814888, 0.577003, 0.055002,
		-0.491467, 0.637530, 0.593309,
		33.247311, 36.022739, 28.846352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.479515, 34.383564, 31.068523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.203495, 34.558815, 31.298958>,  <38.037884, 34.663967, 31.437220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.203495, 34.558815, 31.298958>,  <38.479515, 34.383564, 31.068523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203495, 34.558815, 31.298958> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567018, -0.167422, 0.806511,
		0.449807, 0.883182, -0.132899,
		-0.690046, 0.438131, 0.576088,
		37.996483, 34.690254, 31.471785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919483, 34.671650, 31.540010>,  <38.479515, 34.383564, 31.068523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919483, 34.671650, 31.540010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.555660, 34.669743, 31.706230>,  <38.337368, 34.668598, 31.805962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.555660, 34.669743, 31.706230>,  <38.919483, 34.671650, 31.540010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555660, 34.669743, 31.706230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412309, -0.135508, 0.900910,
		0.052014, 0.990765, 0.125219,
		-0.909558, -0.004770, 0.415550,
		38.282791, 34.668312, 31.830894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949745, 35.209454, 32.124168>,  <38.919483, 34.671650, 31.540010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949745, 35.209454, 32.124168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.661579, 34.942089, 32.198170>,  <38.488678, 34.781670, 32.242569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.661579, 34.942089, 32.198170>,  <38.949745, 35.209454, 32.124168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661579, 34.942089, 32.198170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287557, -0.045135, 0.956699,
		-0.631122, 0.742418, 0.224723,
		-0.720414, -0.668414, 0.185002,
		38.445454, 34.741566, 32.253670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719959, 35.321785, 32.744316>,  <38.949745, 35.209454, 32.124168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719959, 35.321785, 32.744316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.601574, 34.944553, 32.683636>,  <38.530540, 34.718216, 32.647228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.601574, 34.944553, 32.683636>,  <38.719959, 35.321785, 32.744316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601574, 34.944553, 32.683636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095188, -0.187150, 0.977709,
		-0.950444, 0.274928, 0.145159,
		-0.295966, -0.943075, -0.151706,
		38.512783, 34.661633, 32.638123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402233, 35.091763, 33.342228>,  <38.719959, 35.321785, 32.744316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402233, 35.091763, 33.342228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.420921, 34.737885, 33.156696>,  <38.432133, 34.525558, 33.045376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.420921, 34.737885, 33.156696>,  <38.402233, 35.091763, 33.342228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420921, 34.737885, 33.156696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065873, -0.460596, 0.885162,
		-0.996734, -0.071905, 0.036760,
		0.046716, -0.884693, -0.463828,
		38.434937, 34.472477, 33.017548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856632, 34.722343, 33.751755>,  <38.402233, 35.091763, 33.342228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856632, 34.722343, 33.751755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.128666, 34.498554, 33.562241>,  <38.291885, 34.364281, 33.448532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.128666, 34.498554, 33.562241>,  <37.856632, 34.722343, 33.751755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128666, 34.498554, 33.562241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151027, -0.525472, 0.837299,
		-0.717408, -0.640990, -0.272870,
		0.680086, -0.559474, -0.473785,
		38.332691, 34.330711, 33.420105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649178, 34.014950, 33.914810>,  <37.856632, 34.722343, 33.751755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649178, 34.014950, 33.914810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.035690, 34.003811, 33.812428>,  <38.267601, 33.997128, 33.750999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.035690, 34.003811, 33.812428>,  <37.649178, 34.014950, 33.914810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035690, 34.003811, 33.812428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206551, -0.509650, 0.835221,
		-0.153710, -0.859931, -0.486715,
		0.966287, -0.027850, -0.255958,
		38.325577, 33.995457, 33.735641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944523, 33.360821, 34.139481>,  <37.649178, 34.014950, 33.914810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944523, 33.360821, 34.139481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.275059, 33.579269, 34.084484>,  <38.473381, 33.710339, 34.051487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.275059, 33.579269, 34.084484>,  <37.944523, 33.360821, 34.139481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275059, 33.579269, 34.084484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333114, -0.277133, 0.901239,
		0.454085, -0.790534, -0.410929,
		0.826342, 0.546126, -0.137496,
		38.522961, 33.743107, 34.043236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478031, 32.901054, 34.247723>,  <37.944523, 33.360821, 34.139481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478031, 32.901054, 34.247723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.626560, 33.268372, 34.302650>,  <38.715679, 33.488762, 34.335606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.626560, 33.268372, 34.302650>,  <38.478031, 32.901054, 34.247723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.626560, 33.268372, 34.302650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380624, -0.285441, 0.879573,
		0.846903, -0.274339, -0.455515,
		0.371324, 0.918293, 0.137321,
		38.737957, 33.543858, 34.343845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152050, 32.803104, 34.326591>,  <38.478031, 32.901054, 34.247723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152050, 32.803104, 34.326591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.085026, 33.165642, 34.481747>,  <39.044811, 33.383163, 34.574841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.085026, 33.165642, 34.481747>,  <39.152050, 32.803104, 34.326591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085026, 33.165642, 34.481747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614104, -0.211834, 0.760265,
		0.771232, 0.365596, -0.521096,
		-0.167564, 0.906348, 0.387887,
		39.034756, 33.437546, 34.598114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819328, 32.986919, 34.549519>,  <39.152050, 32.803104, 34.326591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819328, 32.986919, 34.549519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.573109, 33.241806, 34.735016>,  <39.425377, 33.394737, 34.846313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.573109, 33.241806, 34.735016>,  <39.819328, 32.986919, 34.549519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573109, 33.241806, 34.735016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457817, -0.189850, 0.868540,
		0.641487, 0.746938, -0.174865,
		-0.615547, 0.637213, 0.463747,
		39.388443, 33.432968, 34.874142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228710, 33.483616, 34.991138>,  <39.819328, 32.986919, 34.549519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228710, 33.483616, 34.991138> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.856350, 33.460487, 35.135403>,  <39.632935, 33.446609, 35.221962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.856350, 33.460487, 35.135403>,  <40.228710, 33.483616, 34.991138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856350, 33.460487, 35.135403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364540, -0.209397, 0.907339,
		0.023061, 0.976120, 0.216005,
		-0.930902, -0.057818, 0.360663,
		39.577080, 33.443142, 35.243603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184250, 33.921135, 35.633282>,  <40.228710, 33.483616, 34.991138>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184250, 33.921135, 35.633282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.903973, 33.635872, 35.641537>,  <39.735806, 33.464714, 35.646488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.903973, 33.635872, 35.641537>,  <40.184250, 33.921135, 35.633282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903973, 33.635872, 35.641537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329969, -0.298287, 0.895626,
		-0.632571, 0.634370, 0.444330,
		-0.700696, -0.713162, 0.020635,
		39.693764, 33.421925, 35.647728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893616, 33.785534, 36.335960>,  <40.184250, 33.921135, 35.633282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.893616, 33.785534, 36.335960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.859634, 33.442272, 36.133434>,  <39.839245, 33.236317, 36.011917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.859634, 33.442272, 36.133434>,  <39.893616, 33.785534, 36.335960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.859634, 33.442272, 36.133434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352702, -0.501153, 0.790220,
		-0.931872, -0.111450, 0.345245,
		-0.084951, -0.858152, -0.506319,
		39.834148, 33.184826, 35.981537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895821, 33.995049, 37.105675>,  <39.893616, 33.785534, 36.335960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895821, 33.995049, 37.105675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.029259, 34.256699, 37.377216>,  <40.109322, 34.413689, 37.540142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.029259, 34.256699, 37.377216>,  <39.895821, 33.995049, 37.105675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029259, 34.256699, 37.377216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601465, 0.702176, -0.381036,
		-0.725918, -0.281195, 0.627673,
		0.333592, 0.654124, 0.678851,
		40.129337, 34.452934, 37.580872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341972, 34.297935, 37.336140>,  <39.895821, 33.995049, 37.105675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341972, 34.297935, 37.336140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.652557, 34.542179, 37.398434>,  <39.838909, 34.688725, 37.435810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.652557, 34.542179, 37.398434>,  <39.341972, 34.297935, 37.336140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652557, 34.542179, 37.398434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478322, 0.731989, -0.485180,
		-0.410253, 0.302235, 0.860434,
		0.776467, 0.610611, 0.155735,
		39.885498, 34.725361, 37.445152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903011, 34.851952, 37.531464>,  <39.341972, 34.297935, 37.336140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903011, 34.851952, 37.531464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.261948, 34.996315, 37.429863>,  <39.477310, 35.082932, 37.368900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.261948, 34.996315, 37.429863>,  <38.903011, 34.851952, 37.531464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261948, 34.996315, 37.429863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439926, 0.777335, -0.449683,
		0.035155, 0.515265, 0.856309,
		0.897345, 0.360905, -0.254006,
		39.531151, 35.104588, 37.353661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793079, 35.538692, 37.450130>,  <38.903011, 34.851952, 37.531464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793079, 35.538692, 37.450130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.158127, 35.512741, 37.288673>,  <39.377155, 35.497169, 37.191799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.158127, 35.512741, 37.288673>,  <38.793079, 35.538692, 37.450130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158127, 35.512741, 37.288673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246802, 0.699682, -0.670473,
		0.325917, 0.711503, 0.622529,
		0.912615, -0.064877, -0.403639,
		39.431911, 35.493279, 37.167583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952690, 36.195438, 37.321960>,  <38.793079, 35.538692, 37.450130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952690, 36.195438, 37.321960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.159859, 35.962593, 37.071232>,  <39.284161, 35.822887, 36.920795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.159859, 35.962593, 37.071232>,  <38.952690, 36.195438, 37.321960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159859, 35.962593, 37.071232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217288, 0.619200, -0.754571,
		0.827373, 0.527008, 0.194209,
		0.517919, -0.582111, -0.626822,
		39.315235, 35.787960, 36.883186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397358, 36.650177, 36.959404>,  <38.952690, 36.195438, 37.321960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397358, 36.650177, 36.959404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.331787, 36.328083, 36.731468>,  <39.292442, 36.134827, 36.594707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.331787, 36.328083, 36.731468>,  <39.397358, 36.650177, 36.959404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331787, 36.328083, 36.731468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187977, 0.592568, -0.783280,
		0.968396, -0.021287, -0.248506,
		-0.163930, -0.805239, -0.569839,
		39.282608, 36.086510, 36.560516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780804, 36.777561, 36.335361>,  <39.397358, 36.650177, 36.959404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780804, 36.777561, 36.335361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.500740, 36.498608, 36.274128>,  <39.332703, 36.331238, 36.237389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.500740, 36.498608, 36.274128>,  <39.780804, 36.777561, 36.335361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500740, 36.498608, 36.274128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238899, 0.430873, -0.870216,
		0.672833, -0.572719, -0.468284,
		-0.700160, -0.697382, -0.153084,
		39.290691, 36.289394, 36.228203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741596, 36.675770, 35.629269>,  <39.780804, 36.777561, 36.335361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741596, 36.675770, 35.629269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.397755, 36.523926, 35.766083>,  <39.191452, 36.432819, 35.848171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.397755, 36.523926, 35.766083>,  <39.741596, 36.675770, 35.629269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397755, 36.523926, 35.766083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479621, 0.368590, -0.796307,
		0.176214, -0.848552, -0.498907,
		-0.859600, -0.379607, 0.342033,
		39.139874, 36.410042, 35.868694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474174, 36.435249, 35.016575>,  <39.741596, 36.675770, 35.629269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474174, 36.435249, 35.016575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.179379, 36.489437, 35.281452>,  <39.002502, 36.521950, 35.440376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.179379, 36.489437, 35.281452>,  <39.474174, 36.435249, 35.016575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179379, 36.489437, 35.281452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657861, 0.081088, -0.748761,
		-0.155132, -0.987457, 0.029361,
		-0.736989, 0.135473, 0.662189,
		38.958282, 36.530079, 35.480110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922707, 36.092278, 34.842468>,  <39.474174, 36.435249, 35.016575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922707, 36.092278, 34.842468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.724503, 36.335869, 35.090214>,  <38.605579, 36.482025, 35.238861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.724503, 36.335869, 35.090214>,  <38.922707, 36.092278, 34.842468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724503, 36.335869, 35.090214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675518, 0.178064, -0.715520,
		-0.546025, -0.772938, 0.323146,
		-0.495512, 0.608983, 0.619361,
		38.575848, 36.518562, 35.276024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289528, 36.023392, 34.511337>,  <38.922707, 36.092278, 34.842468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289528, 36.023392, 34.511337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.226151, 36.329269, 34.761181>,  <38.188126, 36.512798, 34.911087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.226151, 36.329269, 34.761181>,  <38.289528, 36.023392, 34.511337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226151, 36.329269, 34.761181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581193, 0.439162, -0.685093,
		-0.798192, -0.471566, 0.374854,
		-0.158444, 0.764698, 0.624606,
		38.178616, 36.558678, 34.948563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576969, 36.017437, 34.604683>,  <38.289528, 36.023392, 34.511337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576969, 36.017437, 34.604683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.701050, 36.380493, 34.717800>,  <37.775497, 36.598328, 34.785671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.701050, 36.380493, 34.717800>,  <37.576969, 36.017437, 34.604683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701050, 36.380493, 34.717800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558442, 0.414705, -0.718444,
		-0.769363, 0.064936, 0.635503,
		0.310199, 0.907636, 0.282795,
		37.794109, 36.652782, 34.802639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961037, 36.474537, 34.633980>,  <37.576969, 36.017437, 34.604683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961037, 36.474537, 34.633980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.278728, 36.714283, 34.594036>,  <37.469341, 36.858131, 34.570068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.278728, 36.714283, 34.594036>,  <36.961037, 36.474537, 34.633980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278728, 36.714283, 34.594036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402610, 0.396008, -0.825278,
		-0.455094, 0.695661, 0.555828,
		0.794226, 0.599361, -0.099859,
		37.516994, 36.894093, 34.564079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680851, 37.065468, 34.722427>,  <36.961037, 36.474537, 34.633980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680851, 37.065468, 34.722427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.025566, 37.132175, 34.530800>,  <37.232395, 37.172199, 34.415825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.025566, 37.132175, 34.530800>,  <36.680851, 37.065468, 34.722427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.025566, 37.132175, 34.530800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475664, 0.593796, -0.648961,
		0.176237, 0.787143, 0.591056,
		0.861791, 0.166773, -0.479064,
		37.284103, 37.182209, 34.387081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891930, 37.843838, 34.754826>,  <36.680851, 37.065468, 34.722427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891930, 37.843838, 34.754826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.678272, 38.118042, 34.952721>,  <36.550079, 38.282566, 35.071457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.678272, 38.118042, 34.952721>,  <36.891930, 37.843838, 34.754826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678272, 38.118042, 34.952721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002412, -0.583977, 0.811767,
		0.845390, 0.434794, 0.310275,
		-0.534145, 0.685511, 0.494737,
		36.518028, 38.323696, 35.101143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184937, 37.897312, 35.460911>,  <36.891930, 37.843838, 34.754826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184937, 37.897312, 35.460911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.813969, 38.040958, 35.502739>,  <36.591389, 38.127148, 35.527836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.813969, 38.040958, 35.502739>,  <37.184937, 37.897312, 35.460911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813969, 38.040958, 35.502739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144919, -0.602732, 0.784674,
		0.344815, 0.712565, 0.611026,
		-0.927416, 0.359117, 0.104567,
		36.535744, 38.148693, 35.534107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082851, 38.063766, 36.255650>,  <37.184937, 37.897312, 35.460911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082851, 38.063766, 36.255650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.728321, 38.028557, 36.073799>,  <36.515602, 38.007431, 35.964691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.728321, 38.028557, 36.073799>,  <37.082851, 38.063766, 36.255650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728321, 38.028557, 36.073799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296286, -0.646700, 0.702847,
		-0.355874, 0.757648, 0.547105,
		-0.886323, -0.088025, -0.454624,
		36.462425, 38.002148, 35.937412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678085, 38.166302, 36.789204>,  <37.082851, 38.063766, 36.255650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678085, 38.166302, 36.789204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.434822, 37.968647, 36.540699>,  <36.288864, 37.850052, 36.391598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.434822, 37.968647, 36.540699>,  <36.678085, 38.166302, 36.789204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434822, 37.968647, 36.540699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228513, -0.640523, 0.733152,
		-0.760213, 0.587840, 0.276623,
		-0.608160, -0.494140, -0.621263,
		36.252373, 37.820404, 36.354321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956150, 38.023403, 37.109921>,  <36.678085, 38.166302, 36.789204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956150, 38.023403, 37.109921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.967453, 37.733120, 36.834949>,  <35.974236, 37.558952, 36.669968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.967453, 37.733120, 36.834949>,  <35.956150, 38.023403, 37.109921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967453, 37.733120, 36.834949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217499, -0.675687, 0.704373,
		-0.975651, 0.129609, -0.176935,
		0.028260, -0.725706, -0.687424,
		35.975929, 37.515408, 36.628723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331200, 37.672276, 37.200970>,  <35.956150, 38.023403, 37.109921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331200, 37.672276, 37.200970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.581322, 37.425560, 37.009735>,  <35.731396, 37.277531, 36.894993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.581322, 37.425560, 37.009735>,  <35.331200, 37.672276, 37.200970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581322, 37.425560, 37.009735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202624, -0.719943, 0.663797,
		-0.753619, -0.318201, -0.575158,
		0.625302, -0.616791, -0.478087,
		35.768913, 37.240524, 36.866310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958050, 37.018543, 37.075191>,  <35.331200, 37.672276, 37.200970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958050, 37.018543, 37.075191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.352997, 36.960201, 37.050411>,  <35.589966, 36.925198, 37.035545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.352997, 36.960201, 37.050411>,  <34.958050, 37.018543, 37.075191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352997, 36.960201, 37.050411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030767, -0.559946, 0.827957,
		-0.155447, -0.815590, -0.557359,
		0.987365, -0.145852, -0.061949,
		35.649208, 36.916447, 37.031826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922165, 36.353271, 37.040760>,  <34.958050, 37.018543, 37.075191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922165, 36.353271, 37.040760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.290707, 36.468906, 37.144714>,  <35.511829, 36.538288, 37.207085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.290707, 36.468906, 37.144714>,  <34.922165, 36.353271, 37.040760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290707, 36.468906, 37.144714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032146, -0.609589, 0.792066,
		0.387399, -0.738125, -0.552353,
		0.921352, 0.289089, 0.259882,
		35.567112, 36.555634, 37.222679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.196159, 35.722202, 37.151844>,  <34.922165, 36.353271, 37.040760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.196159, 35.722202, 37.151844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.432755, 35.986675, 37.336445>,  <35.574711, 36.145359, 37.447205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.432755, 35.986675, 37.336445>,  <35.196159, 35.722202, 37.151844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432755, 35.986675, 37.336445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131599, -0.643840, 0.753759,
		0.795505, -0.385103, -0.467832,
		0.591484, 0.661185, 0.461499,
		35.610199, 36.185032, 37.474895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876240, 35.383785, 37.170887>,  <35.196159, 35.722202, 37.151844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876240, 35.383785, 37.170887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.838818, 35.649899, 37.467171>,  <35.816364, 35.809566, 37.644939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.838818, 35.649899, 37.467171>,  <35.876240, 35.383785, 37.170887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838818, 35.649899, 37.467171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220063, -0.711753, 0.667068,
		0.970989, 0.225413, -0.079812,
		-0.093559, 0.665279, 0.740710,
		35.810749, 35.849483, 37.689384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429028, 35.200470, 37.529083>,  <35.876240, 35.383785, 37.170887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429028, 35.200470, 37.529083> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.187168, 35.410759, 37.768421>,  <36.042053, 35.536934, 37.912025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.187168, 35.410759, 37.768421>,  <36.429028, 35.200470, 37.529083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187168, 35.410759, 37.768421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295699, -0.549374, 0.781505,
		0.739572, 0.649464, 0.176720,
		-0.604645, 0.525723, 0.598347,
		36.005775, 35.568478, 37.947926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884315, 35.447018, 38.053059>,  <36.429028, 35.200470, 37.529083>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884315, 35.447018, 38.053059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.523911, 35.465473, 38.225594>,  <36.307667, 35.476547, 38.329117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.523911, 35.465473, 38.225594>,  <36.884315, 35.447018, 38.053059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523911, 35.465473, 38.225594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261467, -0.735653, 0.624859,
		0.346146, 0.675785, 0.650767,
		-0.901009, 0.046139, 0.431339,
		36.253609, 35.479313, 38.354996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.455399, 41.043236, 32.352371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073334, 41.034752, 32.470501>,  <35.844093, 41.029663, 32.541378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073334, 41.034752, 32.470501>,  <36.455399, 41.043236, 32.352371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073334, 41.034752, 32.470501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231390, -0.675763, 0.699860,
		0.184728, 0.736814, 0.650370,
		-0.955162, -0.021205, 0.295324,
		35.786785, 41.028389, 32.559097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485668, 41.265133, 33.078617>,  <36.455399, 41.043236, 32.352371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485668, 41.265133, 33.078617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140099, 41.069649, 33.029964>,  <35.932758, 40.952358, 33.000774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140099, 41.069649, 33.029964>,  <36.485668, 41.265133, 33.078617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140099, 41.069649, 33.029964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150283, -0.480677, 0.863924,
		-0.480677, 0.728085, 0.488714,
		-0.863924, -0.488714, -0.121631,
		35.880920, 40.923035, 32.993477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146534, 41.254814, 33.729744>,  <36.485668, 41.265133, 33.078617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146534, 41.254814, 33.729744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960167, 40.953480, 33.544094>,  <35.848347, 40.772678, 33.432705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960167, 40.953480, 33.544094>,  <36.146534, 41.254814, 33.729744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960167, 40.953480, 33.544094> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147109, -0.583184, 0.798909,
		-0.872515, 0.303946, 0.382536,
		-0.465914, -0.753335, -0.464123,
		35.820393, 40.727478, 33.404858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661255, 40.932144, 34.211575>,  <36.146534, 41.254814, 33.729744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661255, 40.932144, 34.211575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726574, 40.650841, 33.934803>,  <35.765766, 40.482059, 33.768742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726574, 40.650841, 33.934803>,  <35.661255, 40.932144, 34.211575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726574, 40.650841, 33.934803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010329, -0.700085, 0.713985,
		-0.986522, -0.123742, -0.107061,
		0.163302, -0.703256, -0.691927,
		35.775566, 40.439865, 33.727226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193729, 40.224213, 34.380337>,  <35.661255, 40.932144, 34.211575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193729, 40.224213, 34.380337> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500416, 40.126945, 34.142673>,  <35.684425, 40.068584, 34.000076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500416, 40.126945, 34.142673>,  <35.193729, 40.224213, 34.380337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500416, 40.126945, 34.142673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194397, -0.794108, 0.575850,
		-0.611852, -0.557013, -0.561582,
		0.766712, -0.243165, -0.594158,
		35.730431, 40.053997, 33.964428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055397, 39.504555, 34.174240>,  <35.193729, 40.224213, 34.380337>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055397, 39.504555, 34.174240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442768, 39.602737, 34.156834>,  <35.675190, 39.661648, 34.146389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442768, 39.602737, 34.156834>,  <35.055397, 39.504555, 34.174240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442768, 39.602737, 34.156834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229604, -0.810307, 0.539153,
		0.097076, -0.532123, -0.841083,
		0.968431, 0.245455, -0.043516,
		35.733299, 39.676373, 34.143780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349434, 38.864067, 34.095703>,  <35.055397, 39.504555, 34.174240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349434, 38.864067, 34.095703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664833, 39.085770, 34.202339>,  <35.854073, 39.218792, 34.266323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.664833, 39.085770, 34.202339>,  <35.349434, 38.864067, 34.095703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664833, 39.085770, 34.202339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350925, -0.761415, 0.545068,
		0.505092, -0.336232, -0.794877,
		0.788501, 0.554252, 0.266592,
		35.901382, 39.252045, 34.282318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.844681, 38.340401, 34.037361>,  <35.349434, 38.864067, 34.095703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.844681, 38.340401, 34.037361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046280, 38.609451, 34.254089>,  <36.167240, 38.770882, 34.384125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046280, 38.609451, 34.254089>,  <35.844681, 38.340401, 34.037361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046280, 38.609451, 34.254089> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228576, -0.708823, 0.667325,
		0.832911, -0.212482, -0.510990,
		0.503996, 0.672623, 0.541818,
		36.197479, 38.811237, 34.416634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313583, 37.974342, 34.336845>,  <35.844681, 38.340401, 34.037361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313583, 37.974342, 34.336845> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338116, 38.294388, 34.575527>,  <36.352833, 38.486416, 34.718735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338116, 38.294388, 34.575527>,  <36.313583, 37.974342, 34.336845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338116, 38.294388, 34.575527> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101043, -0.599733, 0.793795,
		0.992990, 0.011610, -0.117627,
		0.061329, 0.800116, 0.596702,
		36.356514, 38.534424, 34.754539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869057, 38.468990, 34.189556>,  <36.313583, 37.974342, 34.336845>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869057, 38.468990, 34.189556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118118, 38.166508, 34.109100>,  <37.267555, 37.985020, 34.060825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118118, 38.166508, 34.109100>,  <36.869057, 38.468990, 34.189556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118118, 38.166508, 34.109100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085059, 0.320937, -0.943273,
		0.777859, 0.570226, 0.264155,
		0.622656, -0.756202, -0.201141,
		37.304916, 37.939648, 34.048759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400501, 38.777592, 33.865314>,  <36.869057, 38.468990, 34.189556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400501, 38.777592, 33.865314> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385475, 38.397579, 33.741356>,  <37.376457, 38.169571, 33.666981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385475, 38.397579, 33.741356>,  <37.400501, 38.777592, 33.865314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385475, 38.397579, 33.741356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010876, 0.310485, -0.950516,
		0.999235, -0.032338, -0.021997,
		-0.037567, -0.950028, -0.309896,
		37.374207, 38.112572, 33.648388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905842, 38.677967, 33.296921>,  <37.400501, 38.777592, 33.865314>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905842, 38.677967, 33.296921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630253, 38.391609, 33.251629>,  <37.464901, 38.219795, 33.224453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630253, 38.391609, 33.251629>,  <37.905842, 38.677967, 33.296921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630253, 38.391609, 33.251629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102589, 0.058327, -0.993012,
		0.717493, -0.695772, 0.033257,
		-0.688970, -0.715891, -0.113228,
		37.423561, 38.176842, 33.217659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117008, 38.281769, 32.679775>,  <37.905842, 38.677967, 33.296921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117008, 38.281769, 32.679775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732929, 38.173359, 32.706825>,  <37.502483, 38.108311, 32.723057>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732929, 38.173359, 32.706825>,  <38.117008, 38.281769, 32.679775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732929, 38.173359, 32.706825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104276, 0.123190, -0.986889,
		0.259146, -0.954656, -0.146548,
		-0.960193, -0.271030, 0.067623,
		37.444870, 38.092049, 32.727112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049984, 37.843380, 32.231106>,  <38.117008, 38.281769, 32.679775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049984, 37.843380, 32.231106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674221, 37.957130, 32.307667>,  <37.448761, 38.025383, 32.353603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674221, 37.957130, 32.307667>,  <38.049984, 37.843380, 32.231106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674221, 37.957130, 32.307667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156042, 0.142389, -0.977434,
		-0.305216, -0.948079, -0.089386,
		-0.939412, 0.284380, 0.191400,
		37.392399, 38.042446, 32.365086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561676, 37.443546, 31.826658>,  <38.049984, 37.843380, 32.231106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561676, 37.443546, 31.826658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329067, 37.753799, 31.924824>,  <37.189503, 37.939949, 31.983723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.329067, 37.753799, 31.924824>,  <37.561676, 37.443546, 31.826658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329067, 37.753799, 31.924824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274842, 0.096621, -0.956622,
		-0.765697, -0.623749, 0.156988,
		-0.581524, 0.775630, 0.245415,
		37.154610, 37.986488, 31.998447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966728, 37.371014, 31.436039>,  <37.561676, 37.443546, 31.826658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.966728, 37.371014, 31.436039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961239, 37.754692, 31.549006>,  <36.957947, 37.984898, 31.616785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961239, 37.754692, 31.549006>,  <36.966728, 37.371014, 31.436039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961239, 37.754692, 31.549006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349183, 0.260066, -0.900243,
		-0.936954, -0.110968, 0.331365,
		-0.013721, 0.959193, 0.282418,
		36.957123, 38.042450, 31.633732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365498, 37.565212, 31.226870>,  <36.966728, 37.371014, 31.436039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365498, 37.565212, 31.226870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555180, 37.914230, 31.273844>,  <36.668987, 38.123642, 31.302029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555180, 37.914230, 31.273844>,  <36.365498, 37.565212, 31.226870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555180, 37.914230, 31.273844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401300, 0.332940, -0.853293,
		-0.783638, 0.357509, 0.508035,
		0.474205, 0.872547, 0.117436,
		36.697441, 38.175995, 31.309074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866451, 37.940033, 30.901396>,  <36.365498, 37.565212, 31.226870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866451, 37.940033, 30.901396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191444, 38.172642, 30.917929>,  <36.386440, 38.312206, 30.927849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191444, 38.172642, 30.917929>,  <35.866451, 37.940033, 30.901396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191444, 38.172642, 30.917929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405352, 0.614454, -0.676857,
		-0.419000, 0.533182, 0.734953,
		0.812483, 0.581518, 0.041330,
		36.435188, 38.347095, 30.930328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609882, 38.631905, 30.981169>,  <35.866451, 37.940033, 30.901396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609882, 38.631905, 30.981169> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977936, 38.674385, 30.830393>,  <36.198769, 38.699875, 30.739927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977936, 38.674385, 30.830393>,  <35.609882, 38.631905, 30.981169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977936, 38.674385, 30.830393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366268, 0.574043, -0.732341,
		0.138600, 0.811908, 0.567093,
		0.920129, 0.106206, -0.376938,
		36.253975, 38.706245, 30.717312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.675117, 39.330761, 30.719444>,  <35.609882, 38.631905, 30.981169>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.675117, 39.330761, 30.719444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991619, 39.143826, 30.561707>,  <36.181519, 39.031662, 30.467064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991619, 39.143826, 30.561707>,  <35.675117, 39.330761, 30.719444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991619, 39.143826, 30.561707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143105, 0.485463, -0.862466,
		0.594505, 0.738863, 0.317246,
		0.791255, -0.467341, -0.394345,
		36.228996, 39.003624, 30.443403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111420, 39.877377, 30.484783>,  <35.675117, 39.330761, 30.719444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111420, 39.877377, 30.484783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175861, 39.545898, 30.270378>,  <36.214527, 39.347012, 30.141735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175861, 39.545898, 30.270378>,  <36.111420, 39.877377, 30.484783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175861, 39.545898, 30.270378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176056, 0.510263, -0.841805,
		0.971108, 0.229985, -0.063692,
		0.161103, -0.828696, -0.536011,
		36.224194, 39.297291, 30.109575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567520, 40.120193, 29.999073>,  <36.111420, 39.877377, 30.484783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567520, 40.120193, 29.999073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405552, 39.785446, 29.851728>,  <36.308369, 39.584599, 29.763321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405552, 39.785446, 29.851728>,  <36.567520, 40.120193, 29.999073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405552, 39.785446, 29.851728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032872, 0.415932, -0.908801,
		0.913759, -0.355887, -0.195930,
		-0.404924, -0.836866, -0.368363,
		36.284073, 39.534386, 29.741219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023766, 39.974316, 29.454462>,  <36.567520, 40.120193, 29.999073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023766, 39.974316, 29.454462> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706661, 39.738361, 29.393064>,  <36.516399, 39.596786, 29.356226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.706661, 39.738361, 29.393064>,  <37.023766, 39.974316, 29.454462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706661, 39.738361, 29.393064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065987, 0.167283, -0.983698,
		0.605949, -0.789967, -0.093691,
		-0.792762, -0.589889, -0.153493,
		36.468834, 39.561394, 29.347017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.308575, 37.941196, 29.767620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.652468, 38.145264, 29.777334>,  <30.858803, 38.267704, 29.783163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.652468, 38.145264, 29.777334>,  <30.308575, 37.941196, 29.767620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652468, 38.145264, 29.777334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396697, -0.696948, 0.597407,
		0.321704, -0.503976, -0.801570,
		0.859731, 0.510169, 0.024285,
		30.910387, 38.298313, 29.784620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810635, 37.468826, 29.690428>,  <30.308575, 37.941196, 29.767620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810635, 37.468826, 29.690428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.973583, 37.795761, 29.853407>,  <31.071352, 37.991920, 29.951195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.973583, 37.795761, 29.853407>,  <30.810635, 37.468826, 29.690428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973583, 37.795761, 29.853407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369107, -0.555432, 0.745154,
		0.835350, -0.153161, -0.527950,
		0.407369, 0.817335, 0.407447,
		31.095795, 38.040962, 29.975641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454525, 37.263531, 29.788006>,  <30.810635, 37.468826, 29.690428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454525, 37.263531, 29.788006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.420792, 37.587452, 30.020248>,  <31.400551, 37.781803, 30.159594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.420792, 37.587452, 30.020248>,  <31.454525, 37.263531, 29.788006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.420792, 37.587452, 30.020248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480801, -0.477293, 0.735541,
		0.872764, 0.341188, -0.349103,
		-0.084334, 0.809803, 0.580608,
		31.395491, 37.830395, 30.194431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137138, 37.430981, 29.980011>,  <31.454525, 37.263531, 29.788006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137138, 37.430981, 29.980011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.881851, 37.593342, 30.241673>,  <31.728678, 37.690758, 30.398670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.881851, 37.593342, 30.241673>,  <32.137138, 37.430981, 29.980011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881851, 37.593342, 30.241673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494370, -0.435274, 0.752419,
		0.590148, 0.803602, 0.077132,
		-0.638219, 0.405907, 0.654153,
		31.690386, 37.715115, 30.437918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520287, 37.607819, 30.513681>,  <32.137138, 37.430981, 29.980011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520287, 37.607819, 30.513681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.157715, 37.614357, 30.682501>,  <31.940172, 37.618279, 30.783792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.157715, 37.614357, 30.682501>,  <32.520287, 37.607819, 30.513681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157715, 37.614357, 30.682501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393643, -0.329490, 0.858185,
		0.153087, 0.944018, 0.292224,
		-0.906427, 0.016345, 0.422047,
		31.885786, 37.619259, 30.809114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594975, 38.016579, 31.143862>,  <32.520287, 37.607819, 30.513681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594975, 38.016579, 31.143862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.262539, 37.806705, 31.217617>,  <32.063080, 37.680782, 31.261869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.262539, 37.806705, 31.217617>,  <32.594975, 38.016579, 31.143862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262539, 37.806705, 31.217617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422247, -0.379535, 0.823201,
		-0.361942, 0.762009, 0.536974,
		-0.831087, -0.524687, 0.184387,
		32.013214, 37.649300, 31.272934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430614, 38.105984, 31.773022>,  <32.594975, 38.016579, 31.143862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430614, 38.105984, 31.773022> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.223598, 37.769753, 31.709049>,  <32.099388, 37.568012, 31.670666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.223598, 37.769753, 31.709049>,  <32.430614, 38.105984, 31.773022>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.223598, 37.769753, 31.709049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377972, -0.392270, 0.838606,
		-0.767651, 0.373564, 0.520732,
		-0.517541, -0.840579, -0.159930,
		32.068336, 37.517578, 31.661070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141949, 38.000549, 32.421299>,  <32.430614, 38.105984, 31.773022>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141949, 38.000549, 32.421299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.131279, 37.653595, 32.222530>,  <32.124878, 37.445423, 32.103268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.131279, 37.653595, 32.222530>,  <32.141949, 38.000549, 32.421299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131279, 37.653595, 32.222530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358341, -0.472362, 0.805274,
		-0.933210, -0.156589, 0.323418,
		-0.026673, -0.867383, -0.496925,
		32.123276, 37.393379, 32.073452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851416, 37.575684, 32.821259>,  <32.141949, 38.000549, 32.421299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851416, 37.575684, 32.821259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.034069, 37.320957, 32.572758>,  <32.143661, 37.168121, 32.423656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.034069, 37.320957, 32.572758>,  <31.851416, 37.575684, 32.821259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034069, 37.320957, 32.572758> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267697, -0.567591, 0.778575,
		-0.848425, -0.521830, -0.088707,
		0.456633, -0.636816, -0.621251,
		32.171059, 37.129913, 32.386383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723261, 36.948822, 33.098526>,  <31.851416, 37.575684, 32.821259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723261, 36.948822, 33.098526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.038158, 36.877594, 32.862377>,  <32.227097, 36.834858, 32.720688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.038158, 36.877594, 32.862377>,  <31.723261, 36.948822, 33.098526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038158, 36.877594, 32.862377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433171, -0.521695, 0.734981,
		-0.438868, -0.834342, -0.333570,
		0.787247, -0.178066, -0.590368,
		32.274334, 36.824173, 32.685265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859169, 36.298561, 33.110157>,  <31.723261, 36.948822, 33.098526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859169, 36.298561, 33.110157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.217663, 36.427807, 32.988594>,  <32.432758, 36.505356, 32.915657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.217663, 36.427807, 32.988594>,  <31.859169, 36.298561, 33.110157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217663, 36.427807, 32.988594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442822, -0.611764, 0.655479,
		0.025879, -0.722039, -0.691368,
		0.896236, 0.323117, -0.303903,
		32.486534, 36.524742, 32.897423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279430, 35.710022, 32.894405>,  <31.859169, 36.298561, 33.110157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279430, 35.710022, 32.894405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.564594, 35.983906, 32.954983>,  <32.735695, 36.148235, 32.991329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.564594, 35.983906, 32.954983>,  <32.279430, 35.710022, 32.894405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564594, 35.983906, 32.954983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488820, -0.640061, 0.592771,
		0.502805, -0.348566, -0.791005,
		0.712911, 0.684707, 0.151440,
		32.778469, 36.189320, 33.000416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861305, 35.297768, 32.924038>,  <32.279430, 35.710022, 32.894405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861305, 35.297768, 32.924038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.997036, 35.645985, 33.066593>,  <33.078476, 35.854916, 33.152126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.997036, 35.645985, 33.066593>,  <32.861305, 35.297768, 32.924038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997036, 35.645985, 33.066593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391509, -0.475192, 0.787980,
		0.855322, -0.127857, -0.502073,
		0.339330, 0.870543, 0.356385,
		33.098835, 35.907146, 33.173508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554214, 35.194851, 33.014366>,  <32.861305, 35.297768, 32.924038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554214, 35.194851, 33.014366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.426575, 35.476360, 33.268257>,  <33.349991, 35.645267, 33.420593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.426575, 35.476360, 33.268257>,  <33.554214, 35.194851, 33.014366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426575, 35.476360, 33.268257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334812, -0.542839, 0.770213,
		0.886610, 0.458287, -0.062413,
		-0.319098, 0.703775, 0.634726,
		33.330845, 35.687492, 33.458675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291981, 35.076275, 32.835392>,  <33.554214, 35.194851, 33.014366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291981, 35.076275, 32.835392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.481411, 34.815033, 32.599026>,  <34.595070, 34.658287, 32.457207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.481411, 34.815033, 32.599026>,  <34.291981, 35.076275, 32.835392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481411, 34.815033, 32.599026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061483, 0.644774, -0.761896,
		0.878606, 0.397145, 0.265193,
		0.473573, -0.653102, -0.590920,
		34.623482, 34.619102, 32.421749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851833, 35.482948, 32.432510>,  <34.291981, 35.076275, 32.835392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851833, 35.482948, 32.432510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.739979, 35.151367, 32.238754>,  <34.672867, 34.952419, 32.122501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.739979, 35.151367, 32.238754>,  <34.851833, 35.482948, 32.432510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739979, 35.151367, 32.238754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197745, 0.543433, -0.815829,
		0.939520, -0.132352, -0.315887,
		-0.279641, -0.828953, -0.484394,
		34.656086, 34.902679, 32.093437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072025, 35.553593, 31.735249>,  <34.851833, 35.482948, 32.432510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072025, 35.553593, 31.735249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.810677, 35.252117, 31.706802>,  <34.653866, 35.071232, 31.689735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.810677, 35.252117, 31.706802>,  <35.072025, 35.553593, 31.735249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810677, 35.252117, 31.706802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272115, 0.321475, -0.906977,
		0.706440, -0.573243, -0.415133,
		-0.653373, -0.753689, -0.071115,
		34.614666, 35.026012, 31.685469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094334, 35.404427, 31.138678>,  <35.072025, 35.553593, 31.735249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094334, 35.404427, 31.138678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.737305, 35.244518, 31.222103>,  <34.523087, 35.148575, 31.272160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.737305, 35.244518, 31.222103>,  <35.094334, 35.404427, 31.138678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737305, 35.244518, 31.222103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333843, 0.274985, -0.901628,
		0.303094, -0.874394, -0.378905,
		-0.892571, -0.399773, 0.208564,
		34.469532, 35.124588, 31.284674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832207, 35.029648, 30.527027>,  <35.094334, 35.404427, 31.138678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832207, 35.029648, 30.527027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.501781, 35.075348, 30.747776>,  <34.303524, 35.102768, 30.880226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.501781, 35.075348, 30.747776>,  <34.832207, 35.029648, 30.527027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501781, 35.075348, 30.747776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487265, 0.347244, -0.801246,
		-0.283178, -0.930789, -0.231175,
		-0.826065, 0.114252, 0.551873,
		34.253963, 35.109623, 30.913338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283504, 34.774746, 29.999594>,  <34.832207, 35.029648, 30.527027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283504, 34.774746, 29.999594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.132336, 34.974911, 30.311172>,  <34.041634, 35.095009, 30.498119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.132336, 34.974911, 30.311172>,  <34.283504, 34.774746, 29.999594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132336, 34.974911, 30.311172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630182, 0.477330, -0.612394,
		-0.678265, -0.722318, 0.134956,
		-0.377925, 0.500412, 0.778948,
		34.018959, 35.125034, 30.544857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582829, 34.625137, 29.930794>,  <34.283504, 34.774746, 29.999594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582829, 34.625137, 29.930794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.643543, 34.964813, 30.133116>,  <33.679974, 35.168617, 30.254509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.643543, 34.964813, 30.133116>,  <33.582829, 34.625137, 29.930794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643543, 34.964813, 30.133116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478263, 0.510940, -0.714286,
		-0.865000, -0.133486, 0.483691,
		0.151790, 0.849189, 0.505805,
		33.689079, 35.219570, 30.284857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917294, 34.823143, 30.100956>,  <33.582829, 34.625137, 29.930794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917294, 34.823143, 30.100956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.140102, 35.155266, 30.093958>,  <33.273788, 35.354542, 30.089758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.140102, 35.155266, 30.093958>,  <32.917294, 34.823143, 30.100956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140102, 35.155266, 30.093958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625166, 0.405347, -0.666979,
		-0.546708, 0.382463, 0.744871,
		0.557026, 0.830311, -0.017497,
		33.307209, 35.404358, 30.088709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497650, 35.316792, 29.696335>,  <32.917294, 34.823143, 30.100956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497650, 35.316792, 29.696335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.824112, 35.545479, 29.729856>,  <33.019989, 35.682693, 29.749969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.824112, 35.545479, 29.729856>,  <32.497650, 35.316792, 29.696335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824112, 35.545479, 29.729856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331561, 0.582143, -0.742413,
		-0.473241, 0.578137, 0.664680,
		0.816155, 0.571723, 0.083806,
		33.068958, 35.716995, 29.754999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338284, 36.120621, 29.800169>,  <32.497650, 35.316792, 29.696335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338284, 36.120621, 29.800169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.694366, 36.062553, 29.627445>,  <32.908016, 36.027714, 29.523811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.694366, 36.062553, 29.627445>,  <32.338284, 36.120621, 29.800169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694366, 36.062553, 29.627445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267797, 0.600041, -0.753814,
		0.368535, 0.786687, 0.495284,
		0.890206, -0.145171, -0.431809,
		32.961430, 36.019001, 29.497902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615536, 36.836651, 29.648722>,  <32.338284, 36.120621, 29.800169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615536, 36.836651, 29.648722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.812828, 36.596752, 29.396683>,  <32.931202, 36.452812, 29.245461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.812828, 36.596752, 29.396683>,  <32.615536, 36.836651, 29.648722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812828, 36.596752, 29.396683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169831, 0.644006, -0.745932,
		0.853159, 0.474927, 0.215788,
		0.493232, -0.599751, -0.630096,
		32.960796, 36.416828, 29.207653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161938, 37.273060, 29.336880>,  <32.615536, 36.836651, 29.648722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161938, 37.273060, 29.336880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.095818, 36.952915, 29.106371>,  <33.056145, 36.760826, 28.968065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.095818, 36.952915, 29.106371>,  <33.161938, 37.273060, 29.336880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095818, 36.952915, 29.106371> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042638, 0.577965, -0.814947,
		0.985321, -0.159282, -0.061412,
		-0.165300, -0.800366, -0.576273,
		33.046227, 36.712807, 28.933489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555988, 37.340439, 28.805426>,  <33.161938, 37.273060, 29.336880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555988, 37.340439, 28.805426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.288727, 37.090012, 28.644617>,  <33.128372, 36.939754, 28.548132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.288727, 37.090012, 28.644617>,  <33.555988, 37.340439, 28.805426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288727, 37.090012, 28.644617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003332, 0.542842, -0.839828,
		0.744019, -0.559792, -0.364786,
		-0.668150, -0.626064, -0.402020,
		33.088284, 36.902191, 28.524012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667637, 37.292698, 28.099911>,  <33.555988, 37.340439, 28.805426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667637, 37.292698, 28.099911> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.290249, 37.165436, 28.137106>,  <33.063816, 37.089081, 28.159424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.290249, 37.165436, 28.137106>,  <33.667637, 37.292698, 28.099911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.290249, 37.165436, 28.137106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254161, 0.514307, -0.819079,
		0.212765, -0.796410, -0.566094,
		-0.943469, -0.318150, 0.092990,
		33.007210, 37.069992, 28.165003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965839, 36.653587, 27.636169>,  <33.667637, 37.292698, 28.099911>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965839, 36.653587, 27.636169> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.327682, 36.636002, 27.466579>,  <34.544788, 36.625450, 27.364824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.327682, 36.636002, 27.466579>,  <33.965839, 36.653587, 27.636169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.327682, 36.636002, 27.466579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315609, -0.599465, 0.735549,
		-0.286494, -0.799193, -0.528405,
		0.904606, -0.043961, -0.423976,
		34.599064, 36.622814, 27.339386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266697, 35.866364, 27.671305>,  <33.965839, 36.653587, 27.636169>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266697, 35.866364, 27.671305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.590775, 36.088470, 27.596197>,  <34.785221, 36.221733, 27.551132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.590775, 36.088470, 27.596197>,  <34.266697, 35.866364, 27.671305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590775, 36.088470, 27.596197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459960, -0.403693, 0.790866,
		0.363341, -0.727125, -0.582471,
		0.810198, 0.555267, -0.187770,
		34.833836, 36.255051, 27.539865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897152, 35.379139, 27.719942>,  <34.266697, 35.866364, 27.671305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897152, 35.379139, 27.719942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.052288, 35.743702, 27.774963>,  <35.145370, 35.962440, 27.807976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.052288, 35.743702, 27.774963>,  <34.897152, 35.379139, 27.719942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052288, 35.743702, 27.774963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581924, -0.357846, 0.730281,
		0.714806, -0.203185, -0.669155,
		0.387837, 0.911407, 0.137553,
		35.168640, 36.017124, 27.816229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618874, 35.284733, 27.666203>,  <34.897152, 35.379139, 27.719942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618874, 35.284733, 27.666203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.519852, 35.615135, 27.868759>,  <35.460438, 35.813377, 27.990294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.519852, 35.615135, 27.868759>,  <35.618874, 35.284733, 27.666203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519852, 35.615135, 27.868759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591155, -0.285326, 0.754404,
		0.767627, 0.486115, -0.417661,
		-0.247557, 0.826003, 0.506393,
		35.445583, 35.862938, 28.020678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294319, 35.642551, 27.858059>,  <35.618874, 35.284733, 27.666203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294319, 35.642551, 27.858059> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.036652, 35.807796, 28.115551>,  <35.882053, 35.906944, 28.270046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.036652, 35.807796, 28.115551>,  <36.294319, 35.642551, 27.858059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036652, 35.807796, 28.115551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637886, -0.174264, 0.750155,
		0.422078, 0.893851, -0.151264,
		-0.644167, 0.413114, 0.643728,
		35.843403, 35.931732, 28.308670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703056, 36.190529, 28.220167>,  <36.294319, 35.642551, 27.858059>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703056, 36.190529, 28.220167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.391613, 36.082611, 28.446789>,  <36.204746, 36.017860, 28.582762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.391613, 36.082611, 28.446789>,  <36.703056, 36.190529, 28.220167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391613, 36.082611, 28.446789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605633, -0.086749, 0.791001,
		-0.164262, 0.959002, 0.230942,
		-0.778605, -0.269797, 0.566554,
		36.158031, 36.001671, 28.616755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871071, 36.537922, 28.763199>,  <36.703056, 36.190529, 28.220167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871071, 36.537922, 28.763199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.611702, 36.269642, 28.907253>,  <36.456081, 36.108673, 28.993687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.611702, 36.269642, 28.907253>,  <36.871071, 36.537922, 28.763199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611702, 36.269642, 28.907253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642761, -0.228853, 0.731085,
		-0.407923, 0.705536, 0.579497,
		-0.648426, -0.670705, 0.360137,
		36.417175, 36.068432, 29.015295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912750, 36.563885, 29.553959>,  <36.871071, 36.537922, 28.763199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912750, 36.563885, 29.553959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.717712, 36.220551, 29.490061>,  <36.600689, 36.014549, 29.451721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.717712, 36.220551, 29.490061>,  <36.912750, 36.563885, 29.553959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717712, 36.220551, 29.490061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444397, -0.401491, 0.800822,
		-0.751508, 0.319484, 0.577205,
		-0.487593, -0.858333, -0.159746,
		36.571434, 35.963051, 29.442137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510925, 36.461929, 30.153700>,  <36.912750, 36.563885, 29.553959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510925, 36.461929, 30.153700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.580521, 36.109463, 29.977848>,  <36.622276, 35.897984, 29.872337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.580521, 36.109463, 29.977848>,  <36.510925, 36.461929, 30.153700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580521, 36.109463, 29.977848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280950, -0.383466, 0.879785,
		-0.943820, -0.276582, 0.180847,
		0.173984, -0.881168, -0.439629,
		36.632717, 35.845112, 29.845959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216850, 35.941589, 30.552929>,  <36.510925, 36.461929, 30.153700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216850, 35.941589, 30.552929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.459335, 35.724621, 30.320278>,  <36.604824, 35.594440, 30.180687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.459335, 35.724621, 30.320278>,  <36.216850, 35.941589, 30.552929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459335, 35.724621, 30.320278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257989, -0.557660, 0.788960,
		-0.752298, -0.628329, -0.198120,
		0.606209, -0.542420, -0.581628,
		36.641197, 35.561893, 30.145790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088135, 35.179382, 30.694271>,  <36.216850, 35.941589, 30.552929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088135, 35.179382, 30.694271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.455971, 35.224678, 30.543793>,  <36.676674, 35.251854, 30.453506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.455971, 35.224678, 30.543793>,  <36.088135, 35.179382, 30.694271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455971, 35.224678, 30.543793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369092, -0.577087, 0.728520,
		-0.134599, -0.808794, -0.572482,
		0.919595, 0.113240, -0.376195,
		36.731850, 35.258652, 30.430935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477180, 34.508797, 30.822599>,  <36.088135, 35.179382, 30.694271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477180, 34.508797, 30.822599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.763145, 34.783756, 30.771404>,  <36.934727, 34.948730, 30.740686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.763145, 34.783756, 30.771404>,  <36.477180, 34.508797, 30.822599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763145, 34.783756, 30.771404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565493, -0.460766, 0.684042,
		0.411236, -0.561408, -0.718127,
		0.714915, 0.687398, -0.127989,
		36.977619, 34.989975, 30.733007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056576, 34.180553, 30.750648>,  <36.477180, 34.508797, 30.822599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056576, 34.180553, 30.750648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.169056, 34.543640, 30.875214>,  <37.236546, 34.761494, 30.949953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.169056, 34.543640, 30.875214>,  <37.056576, 34.180553, 30.750648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169056, 34.543640, 30.875214> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546549, -0.418222, 0.725517,
		0.788803, -0.033813, -0.613715,
		0.281201, 0.907715, 0.311414,
		37.253418, 34.815956, 30.968637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770584, 34.187904, 30.857094>,  <37.056576, 34.180553, 30.750648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770584, 34.187904, 30.857094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.666859, 34.501175, 31.083151>,  <37.604622, 34.689137, 31.218786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.666859, 34.501175, 31.083151>,  <37.770584, 34.187904, 30.857094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666859, 34.501175, 31.083151> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542229, -0.366173, 0.756244,
		0.799214, 0.502544, -0.329707,
		-0.259316, 0.783177, 0.565145,
		37.589066, 34.736130, 31.252695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.045219, 39.576733, 28.623198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.662582, 39.555283, 28.737783>,  <36.433002, 39.542412, 28.806536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.662582, 39.555283, 28.737783>,  <37.045219, 39.576733, 28.623198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662582, 39.555283, 28.737783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291114, 0.222364, -0.930488,
		-0.013807, -0.973488, -0.228320,
		-0.956589, -0.053620, 0.286466,
		36.375607, 39.539196, 28.823723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649151, 39.197556, 28.029594>,  <37.045219, 39.576733, 28.623198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649151, 39.197556, 28.029594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.380886, 39.401497, 28.245102>,  <36.219929, 39.523861, 28.374407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.380886, 39.401497, 28.245102>,  <36.649151, 39.197556, 28.029594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380886, 39.401497, 28.245102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451263, 0.296018, -0.841864,
		-0.588709, -0.807729, 0.031549,
		-0.670658, 0.509850, 0.538767,
		36.179688, 39.554451, 28.406733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936161, 38.983131, 27.748039>,  <36.649151, 39.197556, 28.029594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936161, 38.983131, 27.748039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.899494, 39.345566, 27.913261>,  <35.877495, 39.563026, 28.012394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.899494, 39.345566, 27.913261>,  <35.936161, 38.983131, 27.748039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899494, 39.345566, 27.913261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417119, 0.341717, -0.842164,
		-0.904217, -0.249490, 0.346621,
		-0.091665, 0.906082, 0.413054,
		35.871994, 39.617390, 28.037178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304565, 39.392063, 27.418957>,  <35.936161, 38.983131, 27.748039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304565, 39.392063, 27.418957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.513531, 39.680325, 27.601271>,  <35.638908, 39.853283, 27.710659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.513531, 39.680325, 27.601271>,  <35.304565, 39.392063, 27.418957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513531, 39.680325, 27.601271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298351, 0.655220, -0.694027,
		-0.798795, 0.226584, 0.557303,
		0.522411, 0.720657, 0.455785,
		35.670254, 39.896523, 27.738007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877880, 39.966503, 27.395266>,  <35.304565, 39.392063, 27.418957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877880, 39.966503, 27.395266> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.233402, 40.141083, 27.451183>,  <35.446716, 40.245831, 27.484734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.233402, 40.141083, 27.451183>,  <34.877880, 39.966503, 27.395266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233402, 40.141083, 27.451183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278685, 0.756875, -0.591164,
		-0.363818, 0.486470, 0.794345,
		0.888803, 0.436448, 0.139793,
		35.500042, 40.272018, 27.493122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737701, 40.735630, 27.436993>,  <34.877880, 39.966503, 27.395266>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737701, 40.735630, 27.436993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.121426, 40.685978, 27.335556>,  <35.351662, 40.656189, 27.274694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.121426, 40.685978, 27.335556>,  <34.737701, 40.735630, 27.436993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121426, 40.685978, 27.335556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046816, 0.815812, -0.576419,
		0.278431, 0.564839, 0.776809,
		0.959314, -0.124126, -0.253591,
		35.409222, 40.648739, 27.259480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965137, 41.333145, 27.487362>,  <34.737701, 40.735630, 27.436993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965137, 41.333145, 27.487362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.250191, 41.155949, 27.269770>,  <35.421223, 41.049629, 27.139214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.250191, 41.155949, 27.269770>,  <34.965137, 41.333145, 27.487362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250191, 41.155949, 27.269770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066718, 0.729100, -0.681147,
		0.698358, 0.521700, 0.490025,
		0.712632, -0.442991, -0.543980,
		35.463982, 41.023052, 27.106575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436737, 41.885506, 27.266861>,  <34.965137, 41.333145, 27.487362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436737, 41.885506, 27.266861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.498806, 41.582516, 27.013201>,  <35.536045, 41.400723, 26.861004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.498806, 41.582516, 27.013201>,  <35.436737, 41.885506, 27.266861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498806, 41.582516, 27.013201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189478, 0.607189, -0.771634,
		0.969546, 0.239893, -0.049308,
		0.155170, -0.757478, -0.634152,
		35.545357, 41.355274, 26.822954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975525, 42.113560, 26.771646>,  <35.436737, 41.885506, 27.266861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975525, 42.113560, 26.771646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.732025, 41.827782, 26.633663>,  <35.585926, 41.656315, 26.550873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.732025, 41.827782, 26.633663>,  <35.975525, 42.113560, 26.771646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732025, 41.827782, 26.633663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100106, 0.500501, -0.859929,
		0.787021, -0.488949, -0.376200,
		-0.608750, -0.714442, -0.344958,
		35.549400, 41.613449, 26.530176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070316, 42.375340, 26.151773>,  <35.975525, 42.113560, 26.771646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070316, 42.375340, 26.151773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.793362, 42.091385, 26.100142>,  <35.627190, 41.921013, 26.069162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.793362, 42.091385, 26.100142>,  <36.070316, 42.375340, 26.151773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793362, 42.091385, 26.100142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316775, 0.459810, -0.829595,
		0.648273, -0.533510, -0.543240,
		-0.692385, -0.709889, -0.129080,
		35.585648, 41.878418, 26.061419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160229, 41.952698, 25.541233>,  <36.070316, 42.375340, 26.151773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160229, 41.952698, 25.541233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.769119, 41.941788, 25.624392>,  <35.534454, 41.935242, 25.674286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.769119, 41.941788, 25.624392>,  <36.160229, 41.952698, 25.541233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769119, 41.941788, 25.624392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193518, 0.499063, -0.844681,
		-0.080716, -0.866136, -0.493248,
		-0.977771, -0.027273, 0.207895,
		35.475788, 41.933605, 25.686760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810871, 41.926476, 24.892841>,  <36.160229, 41.952698, 25.541233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810871, 41.926476, 24.892841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.507545, 42.032925, 25.130878>,  <35.325550, 42.096794, 25.273701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.507545, 42.032925, 25.130878>,  <35.810871, 41.926476, 24.892841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507545, 42.032925, 25.130878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431670, 0.479062, -0.764304,
		-0.488488, -0.836467, -0.248400,
		-0.758314, 0.266126, 0.595093,
		35.280052, 42.112762, 25.309406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078674, 41.624901, 24.703382>,  <35.810871, 41.926476, 24.892841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078674, 41.624901, 24.703382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.042194, 41.994663, 24.851519>,  <35.020306, 42.216522, 24.940399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.042194, 41.994663, 24.851519>,  <35.078674, 41.624901, 24.703382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042194, 41.994663, 24.851519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470045, 0.287896, -0.834370,
		-0.877919, -0.250167, 0.408259,
		-0.091195, 0.924409, 0.370339,
		35.014835, 42.271988, 24.962620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430382, 41.903179, 24.417839>,  <35.078674, 41.624901, 24.703382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430382, 41.903179, 24.417839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.664581, 42.208523, 24.527004>,  <34.805099, 42.391727, 24.592505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.664581, 42.208523, 24.527004>,  <34.430382, 41.903179, 24.417839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664581, 42.208523, 24.527004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353716, 0.543468, -0.761267,
		-0.729438, 0.349185, 0.588210,
		0.585497, 0.763356, 0.272914,
		34.840229, 42.437531, 24.608879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411461, 41.173855, 24.178135>,  <34.430382, 41.903179, 24.417839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411461, 41.173855, 24.178135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.080505, 41.022522, 24.012106>,  <33.881931, 40.931721, 23.912489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.080505, 41.022522, 24.012106>,  <34.411461, 41.173855, 24.178135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080505, 41.022522, 24.012106> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022376, -0.760677, 0.648745,
		-0.561180, 0.527478, 0.637843,
		-0.827391, -0.378335, -0.415074,
		33.832287, 40.909023, 23.887583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936897, 41.137703, 24.664532>,  <34.411461, 41.173855, 24.178135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936897, 41.137703, 24.664532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.812622, 40.870831, 24.393728>,  <33.738056, 40.710709, 24.231247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.812622, 40.870831, 24.393728>,  <33.936897, 41.137703, 24.664532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812622, 40.870831, 24.393728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027173, -0.718200, 0.695306,
		-0.950123, 0.197629, 0.241266,
		-0.310690, -0.667182, -0.677008,
		33.719414, 40.670677, 24.190626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461044, 40.776325, 25.059099>,  <33.936897, 41.137703, 24.664532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461044, 40.776325, 25.059099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.495705, 40.536327, 24.740980>,  <33.516502, 40.392330, 24.550108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.495705, 40.536327, 24.740980>,  <33.461044, 40.776325, 25.059099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495705, 40.536327, 24.740980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054617, -0.799962, 0.597560,
		-0.994741, -0.008342, -0.102086,
		0.086650, -0.599993, -0.795299,
		33.521698, 40.356331, 24.502390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938885, 40.283108, 25.196447>,  <33.461044, 40.776325, 25.059099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938885, 40.283108, 25.196447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.205112, 40.108181, 24.954533>,  <33.364849, 40.003227, 24.809383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.205112, 40.108181, 24.954533>,  <32.938885, 40.283108, 25.196447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205112, 40.108181, 24.954533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054861, -0.836822, 0.544719,
		-0.744313, -0.329371, -0.580959,
		0.665574, -0.437313, -0.604788,
		33.404785, 39.976986, 24.773096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741203, 39.559845, 25.073881>,  <32.938885, 40.283108, 25.196447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741203, 39.559845, 25.073881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.129192, 39.572002, 24.977356>,  <33.361984, 39.579296, 24.919441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.129192, 39.572002, 24.977356>,  <32.741203, 39.559845, 25.073881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129192, 39.572002, 24.977356> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105113, -0.947104, 0.303224,
		-0.219333, -0.319483, -0.921859,
		0.969971, 0.030392, -0.241313,
		33.420185, 39.581120, 24.904963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873104, 38.894749, 24.800621>,  <32.741203, 39.559845, 25.073881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873104, 38.894749, 24.800621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.222527, 39.037720, 24.932766>,  <33.432182, 39.123505, 25.012053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.222527, 39.037720, 24.932766>,  <32.873104, 38.894749, 24.800621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222527, 39.037720, 24.932766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175351, -0.864292, 0.471434,
		0.454036, -0.353896, -0.817685,
		0.873558, 0.357430, 0.330364,
		33.484592, 39.144947, 25.031876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373981, 38.361420, 24.705008>,  <32.873104, 38.894749, 24.800621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373981, 38.361420, 24.705008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590431, 38.598938, 24.943201>,  <33.720299, 38.741447, 25.086117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.590431, 38.598938, 24.943201>,  <33.373981, 38.361420, 24.705008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590431, 38.598938, 24.943201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363200, -0.803684, 0.471357,
		0.758468, -0.038782, -0.650555,
		0.541121, 0.593791, 0.595483,
		33.752766, 38.777077, 25.121845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020714, 38.097164, 24.759550>,  <33.373981, 38.361420, 24.705008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020714, 38.097164, 24.759550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.002949, 38.328087, 25.085678>,  <33.992290, 38.466640, 25.281355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.002949, 38.328087, 25.085678>,  <34.020714, 38.097164, 24.759550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002949, 38.328087, 25.085678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495451, -0.695957, 0.519781,
		0.867500, 0.427036, -0.255117,
		-0.044415, 0.577308, 0.815318,
		33.989624, 38.501278, 25.330273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704117, 37.971573, 25.037584>,  <34.020714, 38.097164, 24.759550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704117, 37.971573, 25.037584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.479313, 38.130566, 25.327728>,  <34.344429, 38.225964, 25.501814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.479313, 38.130566, 25.327728>,  <34.704117, 37.971573, 25.037584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479313, 38.130566, 25.327728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385337, -0.650157, 0.654836,
		0.731886, 0.647534, 0.212230,
		-0.562012, 0.397486, 0.725360,
		34.310711, 38.249813, 25.545336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159016, 38.049911, 25.613474>,  <34.704117, 37.971573, 25.037584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159016, 38.049911, 25.613474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.802624, 38.079960, 25.792589>,  <34.588787, 38.097988, 25.900059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.802624, 38.079960, 25.792589>,  <35.159016, 38.049911, 25.613474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802624, 38.079960, 25.792589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311017, -0.617530, 0.722444,
		0.330796, 0.782951, 0.526841,
		-0.890978, 0.075125, 0.447788,
		34.535332, 38.102497, 25.926926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332924, 38.164459, 26.296970>,  <35.159016, 38.049911, 25.613474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332924, 38.164459, 26.296970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.975666, 37.988731, 26.258411>,  <34.761311, 37.883293, 26.235275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.975666, 37.988731, 26.258411>,  <35.332924, 38.164459, 26.296970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975666, 37.988731, 26.258411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252376, -0.666919, 0.701089,
		-0.372294, 0.601844, 0.706528,
		-0.893143, -0.439322, -0.096399,
		34.707722, 37.856934, 26.229492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198914, 38.081032, 26.956963>,  <35.332924, 38.164459, 26.296970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198914, 38.081032, 26.956963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.966755, 37.838963, 26.739008>,  <34.827457, 37.693722, 26.608236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.966755, 37.838963, 26.739008>,  <35.198914, 38.081032, 26.956963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966755, 37.838963, 26.739008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007668, -0.665028, 0.746780,
		-0.814295, 0.437610, 0.381342,
		-0.580401, -0.605174, -0.544884,
		34.792633, 37.657410, 26.575542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628376, 37.859028, 27.385176>,  <35.198914, 38.081032, 26.956963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628376, 37.859028, 27.385176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.669941, 37.588623, 27.093367>,  <34.694881, 37.426380, 26.918282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.669941, 37.588623, 27.093367>,  <34.628376, 37.859028, 27.385176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669941, 37.588623, 27.093367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045033, -0.729544, 0.682450,
		-0.993566, -0.103767, -0.045366,
		0.103912, -0.676016, -0.729523,
		34.701115, 37.385818, 26.874510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158131, 37.414925, 27.548321>,  <34.628376, 37.859028, 27.385176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158131, 37.414925, 27.548321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.398190, 37.201103, 27.310305>,  <34.542225, 37.072811, 27.167494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.398190, 37.201103, 27.310305>,  <34.158131, 37.414925, 27.548321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398190, 37.201103, 27.310305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233219, -0.594646, 0.769419,
		-0.765134, -0.600541, -0.232208,
		0.600148, -0.534553, -0.595042,
		34.578236, 37.040737, 27.131792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432499, 37.285137, 27.402393>,  <34.158131, 37.414925, 27.548321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432499, 37.285137, 27.402393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.088669, 37.292297, 27.606672>,  <32.882370, 37.296593, 27.729240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.088669, 37.292297, 27.606672>,  <33.432499, 37.285137, 27.402393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088669, 37.292297, 27.606672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396781, 0.606398, -0.689090,
		-0.322021, -0.794960, -0.514142,
		-0.859574, 0.017899, 0.510698,
		32.830795, 37.297668, 27.759882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004795, 37.241779, 26.939106>,  <33.432499, 37.285137, 27.402393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004795, 37.241779, 26.939106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.799736, 37.395012, 27.246466>,  <32.676701, 37.486954, 27.430882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.799736, 37.395012, 27.246466>,  <33.004795, 37.241779, 26.939106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799736, 37.395012, 27.246466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448827, 0.643366, -0.620189,
		-0.731947, -0.662817, -0.157882,
		-0.512648, 0.383084, 0.768400,
		32.645943, 37.509937, 27.476986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.385345, 37.243225, 26.623949>,  <33.004795, 37.241779, 26.939106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.385345, 37.243225, 26.623949> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.339039, 37.488354, 26.936628>,  <32.311253, 37.635429, 27.124235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.339039, 37.488354, 26.936628>,  <32.385345, 37.243225, 26.623949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339039, 37.488354, 26.936628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573634, 0.601232, -0.556296,
		-0.810889, -0.512810, 0.281929,
		-0.115770, 0.612818, 0.781698,
		32.304306, 37.672199, 27.171137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.655062, 37.415401, 26.464420>,  <32.385345, 37.243225, 26.623949>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.655062, 37.415401, 26.464420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.822855, 37.692535, 26.699030>,  <31.923531, 37.858818, 26.839796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.822855, 37.692535, 26.699030>,  <31.655062, 37.415401, 26.464420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822855, 37.692535, 26.699030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449519, 0.719881, -0.528870,
		-0.788648, -0.041801, 0.613422,
		0.419483, 0.692838, 0.586523,
		31.948700, 37.900387, 26.874987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090483, 37.882652, 26.750719>,  <31.655062, 37.415401, 26.464420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090483, 37.882652, 26.750719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.431530, 38.090714, 26.770622>,  <31.636158, 38.215549, 26.782564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.431530, 38.090714, 26.770622>,  <31.090483, 37.882652, 26.750719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.431530, 38.090714, 26.770622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398193, 0.708445, -0.582708,
		-0.338350, 0.477015, 0.811157,
		0.852620, 0.520157, 0.049758,
		31.687317, 38.246761, 26.785549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890408, 38.549164, 26.886333>,  <31.090483, 37.882652, 26.750719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890408, 38.549164, 26.886333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.250580, 38.571278, 26.713747>,  <31.466684, 38.584545, 26.610195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.250580, 38.571278, 26.713747>,  <30.890408, 38.549164, 26.886333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.250580, 38.571278, 26.713747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297390, 0.802122, -0.517842,
		0.317460, 0.594595, 0.738698,
		0.900432, 0.055287, -0.431468,
		31.520710, 38.587864, 26.584307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113783, 39.296680, 26.926392>,  <30.890408, 38.549164, 26.886333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113783, 39.296680, 26.926392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.315634, 39.109318, 26.636303>,  <31.436745, 38.996902, 26.462250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.315634, 39.109318, 26.636303>,  <31.113783, 39.296680, 26.926392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315634, 39.109318, 26.636303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307594, 0.687353, -0.657975,
		0.806683, 0.555106, 0.202778,
		0.504627, -0.468405, -0.725223,
		31.467022, 38.968796, 26.418736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442520, 39.870285, 27.316446>,  <31.113783, 39.296680, 26.926392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442520, 39.870285, 27.316446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.146751, 40.053070, 27.514208>,  <30.969290, 40.162743, 27.632866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.146751, 40.053070, 27.514208>,  <31.442520, 39.870285, 27.316446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146751, 40.053070, 27.514208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101171, -0.650608, 0.752645,
		0.665596, 0.606542, 0.434843,
		-0.739423, 0.456964, 0.494406,
		30.924925, 40.190159, 27.662529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717691, 40.033920, 27.954062>,  <31.442520, 39.870285, 27.316446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717691, 40.033920, 27.954062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.326469, 40.011650, 28.034372>,  <31.091736, 39.998287, 28.082558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.326469, 40.011650, 28.034372>,  <31.717691, 40.033920, 27.954062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.326469, 40.011650, 28.034372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195097, -0.582960, 0.788730,
		0.073130, 0.810591, 0.581029,
		-0.978054, -0.055677, 0.200776,
		31.033052, 39.994946, 28.094604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604181, 40.147511, 28.742247>,  <31.717691, 40.033920, 27.954062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604181, 40.147511, 28.742247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.262341, 39.987602, 28.609680>,  <31.057236, 39.891659, 28.530140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.262341, 39.987602, 28.609680>,  <31.604181, 40.147511, 28.742247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262341, 39.987602, 28.609680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055003, -0.564945, 0.823293,
		-0.516363, 0.721817, 0.460814,
		-0.854602, -0.399772, -0.331418,
		31.005960, 39.867672, 28.510254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282131, 40.028030, 29.401583>,  <31.604181, 40.147511, 28.742247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282131, 40.028030, 29.401583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.056408, 39.833527, 29.134718>,  <30.920975, 39.716824, 28.974600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.056408, 39.833527, 29.134718>,  <31.282131, 40.028030, 29.401583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056408, 39.833527, 29.134718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151382, -0.733478, 0.662642,
		-0.811567, 0.474930, 0.340295,
		-0.564307, -0.486264, -0.667162,
		30.887115, 39.687649, 28.934570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544704, 39.928928, 29.688194>,  <31.282131, 40.028030, 29.401583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544704, 39.928928, 29.688194> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.643194, 39.652576, 29.416296>,  <30.702288, 39.486767, 29.253157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.643194, 39.652576, 29.416296>,  <30.544704, 39.928928, 29.688194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643194, 39.652576, 29.416296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102757, -0.715995, 0.690501,
		-0.963750, -0.100169, -0.247288,
		0.246224, -0.690881, -0.679748,
		30.717062, 39.445312, 29.212372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271931, 39.413086, 29.955812>,  <30.544704, 39.928928, 29.688194>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271931, 39.413086, 29.955812> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.507515, 39.237083, 29.684660>,  <30.648865, 39.131481, 29.521969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.507515, 39.237083, 29.684660>,  <30.271931, 39.413086, 29.955812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507515, 39.237083, 29.684660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170981, -0.751962, 0.636646,
		-0.789866, -0.490865, -0.367645,
		0.588963, -0.440005, -0.677878,
		30.684204, 39.105083, 29.481297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093643, 38.744606, 30.061272>,  <30.271931, 39.413086, 29.955812>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093643, 38.744606, 30.061272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.444588, 38.752697, 29.869511>,  <30.655155, 38.757549, 29.754454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.444588, 38.752697, 29.869511>,  <30.093643, 38.744606, 30.061272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.444588, 38.752697, 29.869511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319328, -0.770341, 0.551909,
		-0.358142, -0.637311, -0.682326,
		0.877362, 0.020224, -0.479403,
		30.707796, 38.758762, 29.725689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.387211, 43.774647, 27.054508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.638531, 43.522312, 26.872391>,  <32.789322, 43.370911, 26.763121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.638531, 43.522312, 26.872391>,  <32.387211, 43.774647, 27.054508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638531, 43.522312, 26.872391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278111, -0.364431, 0.888732,
		-0.726565, -0.685009, -0.053529,
		0.628297, -0.630834, -0.455292,
		32.827019, 43.333061, 26.735804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216141, 43.051403, 27.322048>,  <32.387211, 43.774647, 27.054508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216141, 43.051403, 27.322048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.593063, 43.084110, 27.192200>,  <32.819218, 43.103733, 27.114290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.593063, 43.084110, 27.192200>,  <32.216141, 43.051403, 27.322048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.593063, 43.084110, 27.192200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334705, -0.248103, 0.909075,
		-0.006206, -0.965277, -0.261156,
		0.942302, 0.081769, -0.324623,
		32.875755, 43.108639, 27.094812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540535, 42.417072, 27.459835>,  <32.216141, 43.051403, 27.322048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540535, 42.417072, 27.459835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.854450, 42.663383, 27.431738>,  <33.042797, 42.811169, 27.414879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.854450, 42.663383, 27.431738>,  <32.540535, 42.417072, 27.459835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854450, 42.663383, 27.431738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490088, -0.547200, 0.678517,
		0.379378, -0.566914, -0.731219,
		0.784784, 0.615776, -0.070242,
		33.089886, 42.848118, 27.410666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040558, 42.011612, 27.644480>,  <32.540535, 42.417072, 27.459835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040558, 42.011612, 27.644480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.243706, 42.355801, 27.628202>,  <33.365593, 42.562313, 27.618437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.243706, 42.355801, 27.628202>,  <33.040558, 42.011612, 27.644480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243706, 42.355801, 27.628202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693904, -0.380650, 0.611230,
		0.510458, -0.338661, -0.790406,
		0.507867, 0.860474, -0.040692,
		33.396065, 42.613941, 27.615995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706757, 41.791077, 27.701036>,  <33.040558, 42.011612, 27.644480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706757, 41.791077, 27.701036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.712914, 42.173409, 27.818441>,  <33.716610, 42.402809, 27.888885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.712914, 42.173409, 27.818441>,  <33.706757, 41.791077, 27.701036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712914, 42.173409, 27.818441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645424, -0.233701, 0.727194,
		0.763669, 0.178246, -0.620515,
		0.015395, 0.955831, 0.293515,
		33.717533, 42.460159, 27.906496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.403461, 41.817284, 27.864752>,  <33.706757, 41.791077, 27.701036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.403461, 41.817284, 27.864752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.219486, 42.136917, 28.019630>,  <34.109100, 42.328697, 28.112556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.219486, 42.136917, 28.019630>,  <34.403461, 41.817284, 27.864752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219486, 42.136917, 28.019630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540620, -0.093918, 0.836008,
		0.704408, 0.593834, -0.388806,
		-0.459934, 0.799088, 0.387195,
		34.081505, 42.376644, 28.135788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941231, 42.218124, 28.219095>,  <34.403461, 41.817284, 27.864752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941231, 42.218124, 28.219095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.594059, 42.307224, 28.396673>,  <34.385757, 42.360683, 28.503220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.594059, 42.307224, 28.396673>,  <34.941231, 42.218124, 28.219095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594059, 42.307224, 28.396673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447115, -0.038882, 0.893631,
		0.216320, 0.974099, -0.065850,
		-0.867925, 0.222753, 0.443945,
		34.333683, 42.374050, 28.529858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016102, 42.719593, 28.781017>,  <34.941231, 42.218124, 28.219095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016102, 42.719593, 28.781017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.661831, 42.565170, 28.884190>,  <34.449268, 42.472515, 28.946093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.661831, 42.565170, 28.884190>,  <35.016102, 42.719593, 28.781017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661831, 42.565170, 28.884190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311626, -0.082473, 0.946619,
		-0.344176, 0.918781, 0.193350,
		-0.885682, -0.386056, 0.257931,
		34.396126, 42.449352, 28.961569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913464, 43.017933, 29.403872>,  <35.016102, 42.719593, 28.781017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913464, 43.017933, 29.403872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.682949, 42.692757, 29.370352>,  <34.544640, 42.497650, 29.350241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.682949, 42.692757, 29.370352>,  <34.913464, 43.017933, 29.403872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682949, 42.692757, 29.370352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279178, -0.292197, 0.914702,
		-0.768084, 0.503736, 0.395344,
		-0.576288, -0.812939, -0.083800,
		34.510063, 42.448875, 29.345211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614937, 43.057365, 30.007687>,  <34.913464, 43.017933, 29.403872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614937, 43.057365, 30.007687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.563564, 42.684074, 29.873472>,  <34.532742, 42.460098, 29.792944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.563564, 42.684074, 29.873472>,  <34.614937, 43.057365, 30.007687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563564, 42.684074, 29.873472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123581, -0.350760, 0.928275,
		-0.983989, 0.077751, 0.160377,
		-0.128428, -0.933232, -0.335536,
		34.525036, 42.404106, 29.772812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156830, 42.787640, 30.493404>,  <34.614937, 43.057365, 30.007687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156830, 42.787640, 30.493404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.331551, 42.472790, 30.319214>,  <34.436382, 42.283878, 30.214699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.331551, 42.472790, 30.319214>,  <34.156830, 42.787640, 30.493404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331551, 42.472790, 30.319214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037261, -0.499517, 0.865502,
		-0.898785, -0.361827, -0.247519,
		0.436802, -0.787124, -0.435477,
		34.462593, 42.236652, 30.188570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787807, 42.143219, 30.732157>,  <34.156830, 42.787640, 30.493404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787807, 42.143219, 30.732157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.149845, 42.027115, 30.607872>,  <34.367069, 41.957451, 30.533300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.149845, 42.027115, 30.607872>,  <33.787807, 42.143219, 30.732157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149845, 42.027115, 30.607872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158892, -0.446917, 0.880352,
		-0.394395, -0.846176, -0.358384,
		0.905100, -0.290262, -0.310712,
		34.421375, 41.940037, 30.514658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094940, 41.845516, 30.687294>,  <33.787807, 42.143219, 30.732157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094940, 41.845516, 30.687294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.738174, 41.898029, 30.860384>,  <32.524117, 41.929535, 30.964239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.738174, 41.898029, 30.860384>,  <33.094940, 41.845516, 30.687294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738174, 41.898029, 30.860384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284725, 0.580393, -0.762939,
		-0.351309, -0.803685, -0.480283,
		-0.891915, 0.131279, 0.432727,
		32.470600, 41.937412, 30.990202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587593, 41.638550, 30.155010>,  <33.094940, 41.845516, 30.687294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587593, 41.638550, 30.155010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.409615, 41.867413, 30.430590>,  <32.302826, 42.004730, 30.595938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.409615, 41.867413, 30.430590>,  <32.587593, 41.638550, 30.155010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409615, 41.867413, 30.430590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489044, 0.489232, -0.722142,
		-0.750237, -0.658243, 0.062128,
		-0.444950, 0.572161, 0.688949,
		32.276131, 42.039062, 30.637274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939539, 41.576141, 29.942457>,  <32.587593, 41.638550, 30.155010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939539, 41.576141, 29.942457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.938341, 41.888241, 30.192642>,  <31.937622, 42.075500, 30.342752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.938341, 41.888241, 30.192642>,  <31.939539, 41.576141, 29.942457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938341, 41.888241, 30.192642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443654, 0.559503, -0.700091,
		-0.896193, -0.279583, 0.344487,
		-0.002993, 0.780250, 0.625461,
		31.937443, 42.122314, 30.380280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289921, 41.898567, 29.795824>,  <31.939539, 41.576141, 29.942457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289921, 41.898567, 29.795824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.456490, 42.176281, 30.030624>,  <31.556431, 42.342907, 30.171505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.456490, 42.176281, 30.030624>,  <31.289921, 41.898567, 29.795824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.456490, 42.176281, 30.030624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504810, 0.713537, -0.485830,
		-0.756148, -0.094013, 0.647612,
		0.416421, 0.694281, 0.586999,
		31.581415, 42.384563, 30.206724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786173, 42.379250, 30.056570>,  <31.289921, 41.898567, 29.795824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786173, 42.379250, 30.056570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.133472, 42.577682, 30.059143>,  <31.341852, 42.696743, 30.060686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.133472, 42.577682, 30.059143>,  <30.786173, 42.379250, 30.056570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133472, 42.577682, 30.059143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426884, 0.753616, -0.499833,
		-0.252807, 0.431234, 0.866098,
		0.868251, 0.496084, 0.006433,
		31.393948, 42.726509, 30.061073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675005, 43.076042, 30.227091>,  <30.786173, 42.379250, 30.056570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675005, 43.076042, 30.227091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.025000, 43.107853, 30.036064>,  <31.234997, 43.126938, 29.921448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.025000, 43.107853, 30.036064>,  <30.675005, 43.076042, 30.227091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025000, 43.107853, 30.036064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378902, 0.726526, -0.573231,
		0.301378, 0.682522, 0.665834,
		0.874988, 0.079527, -0.477568,
		31.287497, 43.131710, 29.892794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943771, 43.768429, 30.222797>,  <30.675005, 43.076042, 30.227091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943771, 43.768429, 30.222797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.068792, 43.564472, 29.902216>,  <31.143805, 43.442101, 29.709867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.068792, 43.564472, 29.902216>,  <30.943771, 43.768429, 30.222797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.068792, 43.564472, 29.902216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285876, 0.754114, -0.591259,
		0.905862, 0.413915, 0.089934,
		0.312552, -0.509889, -0.801451,
		31.162558, 43.411507, 29.661781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118402, 44.305367, 29.761297>,  <30.943771, 43.768429, 30.222797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118402, 44.305367, 29.761297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.109592, 43.994583, 29.509630>,  <31.104305, 43.808113, 29.358631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.109592, 43.994583, 29.509630>,  <31.118402, 44.305367, 29.761297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109592, 43.994583, 29.509630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236583, 0.615496, -0.751794,
		0.971362, 0.132291, -0.197373,
		-0.022026, -0.776958, -0.629167,
		31.102985, 43.761497, 29.320881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487364, 44.477367, 29.106688>,  <31.118402, 44.305367, 29.761297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487364, 44.477367, 29.106688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.287363, 44.152187, 28.987278>,  <31.167362, 43.957081, 28.915632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.287363, 44.152187, 28.987278>,  <31.487364, 44.477367, 29.106688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.287363, 44.152187, 28.987278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205850, 0.446391, -0.870839,
		0.841204, -0.373969, -0.390541,
		-0.500001, -0.812946, -0.298525,
		31.137363, 43.908302, 28.897720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692154, 44.253170, 28.404154>,  <31.487364, 44.477367, 29.106688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692154, 44.253170, 28.404154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.325830, 44.095566, 28.435263>,  <31.106035, 44.001003, 28.453928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.325830, 44.095566, 28.435263>,  <31.692154, 44.253170, 28.404154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325830, 44.095566, 28.435263> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292194, 0.520838, -0.802091,
		0.275522, -0.757289, -0.592116,
		-0.915811, -0.394007, 0.077773,
		31.051086, 43.977364, 28.458595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458738, 44.152142, 27.760117>,  <31.692154, 44.253170, 28.404154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458738, 44.152142, 27.760117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.106903, 44.128716, 27.948961>,  <30.895802, 44.114662, 28.062269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.106903, 44.128716, 27.948961>,  <31.458738, 44.152142, 27.760117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.106903, 44.128716, 27.948961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448715, 0.431801, -0.782434,
		-0.158038, -0.900065, -0.406086,
		-0.879590, -0.058562, 0.472114,
		30.843025, 44.111145, 28.090595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985413, 43.880264, 27.255030>,  <31.458738, 44.152142, 27.760117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985413, 43.880264, 27.255030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.758945, 44.079880, 27.517454>,  <30.623064, 44.199650, 27.674910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.758945, 44.079880, 27.517454>,  <30.985413, 43.880264, 27.255030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758945, 44.079880, 27.517454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527743, 0.391946, -0.753569,
		-0.633198, -0.772879, 0.041455,
		-0.566170, 0.499036, 0.656060,
		30.589094, 44.229591, 27.714272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333832, 44.010582, 26.916594>,  <30.985413, 43.880264, 27.255030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333832, 44.010582, 26.916594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.299297, 44.267342, 27.221357>,  <30.278576, 44.421398, 27.404217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.299297, 44.267342, 27.221357>,  <30.333832, 44.010582, 26.916594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299297, 44.267342, 27.221357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434149, 0.664091, -0.608685,
		-0.896694, -0.383336, 0.221345,
		-0.086337, 0.641901, 0.761912,
		30.273396, 44.459911, 27.449930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305878, 43.441982, 26.492010>,  <30.333832, 44.010582, 26.916594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305878, 43.441982, 26.492010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.977718, 43.228836, 26.409067>,  <29.780823, 43.100948, 26.359301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.977718, 43.228836, 26.409067>,  <30.305878, 43.441982, 26.492010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977718, 43.228836, 26.409067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414047, -0.803736, 0.427287,
		-0.394349, 0.264689, 0.880016,
		-0.820399, -0.532868, -0.207358,
		29.731598, 43.068977, 26.346859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871824, 43.200665, 27.089554>,  <30.305878, 43.441982, 26.492010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871824, 43.200665, 27.089554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.821621, 42.938538, 26.791615>,  <29.791498, 42.781261, 26.612850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.821621, 42.938538, 26.791615>,  <29.871824, 43.200665, 27.089554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821621, 42.938538, 26.791615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425593, -0.713760, 0.556253,
		-0.896168, -0.247187, 0.368484,
		-0.125510, -0.655321, -0.744850,
		29.783968, 42.741940, 26.568159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534725, 42.577503, 27.356428>,  <29.871824, 43.200665, 27.089554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534725, 42.577503, 27.356428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.732288, 42.475925, 27.023787>,  <29.850826, 42.414978, 26.824202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.732288, 42.475925, 27.023787>,  <29.534725, 42.577503, 27.356428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732288, 42.475925, 27.023787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407214, -0.777481, 0.479270,
		-0.768263, -0.575358, -0.280599,
		0.493912, -0.253941, -0.831604,
		29.880461, 42.399742, 26.774305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431921, 41.815350, 27.236181>,  <29.534725, 42.577503, 27.356428>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431921, 41.815350, 27.236181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.743967, 41.856552, 26.989344>,  <29.931194, 41.881275, 26.841240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.743967, 41.856552, 26.989344>,  <29.431921, 41.815350, 27.236181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743967, 41.856552, 26.989344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323668, -0.910546, 0.257185,
		-0.535403, -0.400369, -0.743672,
		0.780117, 0.103005, -0.617096,
		29.978003, 41.887455, 26.804214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347202, 41.268284, 26.871437>,  <29.431921, 41.815350, 27.236181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347202, 41.268284, 26.871437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.728523, 41.379082, 26.823296>,  <29.957315, 41.445560, 26.794411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.728523, 41.379082, 26.823296>,  <29.347202, 41.268284, 26.871437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728523, 41.379082, 26.823296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301595, -0.894146, 0.330973,
		-0.015935, -0.351816, -0.935933,
		0.953303, 0.276998, -0.120355,
		30.014515, 41.462181, 26.787189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657824, 40.744743, 26.548063>,  <29.347202, 41.268284, 26.871437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657824, 40.744743, 26.548063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.991911, 40.921757, 26.678648>,  <30.192364, 41.027966, 26.756998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.991911, 40.921757, 26.678648>,  <29.657824, 40.744743, 26.548063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.991911, 40.921757, 26.678648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329938, -0.878188, 0.346305,
		0.439946, -0.181528, -0.879486,
		0.835218, 0.442531, 0.326462,
		30.242476, 41.054516, 26.776587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250875, 40.368118, 26.463572>,  <29.657824, 40.744743, 26.548063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250875, 40.368118, 26.463572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.351824, 40.589317, 26.781189>,  <30.412394, 40.722034, 26.971760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.351824, 40.589317, 26.781189>,  <30.250875, 40.368118, 26.463572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351824, 40.589317, 26.781189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322829, -0.821709, 0.469656,
		0.912189, 0.137811, -0.385900,
		0.252373, 0.552995, 0.794043,
		30.427536, 40.755215, 27.019402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.795654, 40.027401, 26.700535>,  <30.250875, 40.368118, 26.463572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.795654, 40.027401, 26.700535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.727526, 40.252254, 27.024261>,  <30.686649, 40.387169, 27.218496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.727526, 40.252254, 27.024261>,  <30.795654, 40.027401, 26.700535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.727526, 40.252254, 27.024261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322873, -0.744139, 0.584817,
		0.930991, 0.360913, -0.054756,
		-0.170321, 0.562138, 0.809315,
		30.676430, 40.420895, 27.267056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.453144, 39.893745, 26.542078>,  <30.795654, 40.027401, 26.700535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.453144, 39.893745, 26.542078> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.454363, 39.565430, 26.313587>,  <31.455093, 39.368443, 26.176493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.454363, 39.565430, 26.313587>,  <31.453144, 39.893745, 26.542078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454363, 39.565430, 26.313587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239955, 0.553943, -0.797226,
		0.970779, 0.139497, -0.195264,
		0.003046, -0.820785, -0.571229,
		31.455276, 39.319195, 26.142218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799253, 40.242786, 26.077278>,  <31.453144, 39.893745, 26.542078>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799253, 40.242786, 26.077278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.698818, 39.911278, 25.877239>,  <31.638557, 39.712372, 25.757215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.698818, 39.911278, 25.877239>,  <31.799253, 40.242786, 26.077278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698818, 39.911278, 25.877239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246833, 0.554391, -0.794811,
		0.935964, -0.076126, -0.343768,
		-0.251087, -0.828768, -0.500099,
		31.623491, 39.662647, 25.727209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212212, 40.137058, 25.383858>,  <31.799253, 40.242786, 26.077278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212212, 40.137058, 25.383858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.850189, 39.966965, 25.386587>,  <31.632975, 39.864910, 25.388226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.850189, 39.966965, 25.386587>,  <32.212212, 40.137058, 25.383858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850189, 39.966965, 25.386587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266039, 0.553563, -0.789171,
		0.331804, -0.716062, -0.614135,
		-0.905058, -0.425234, 0.006826,
		31.578672, 39.839394, 25.388636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039467, 40.166321, 24.663549>,  <32.212212, 40.137058, 25.383858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039467, 40.166321, 24.663549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.692360, 40.052013, 24.826185>,  <31.484095, 39.983429, 24.923767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.692360, 40.052013, 24.826185>,  <32.039467, 40.166321, 24.663549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.692360, 40.052013, 24.826185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494860, 0.421602, -0.759846,
		0.045720, -0.860575, -0.507267,
		-0.867769, -0.285766, 0.406588,
		31.432030, 39.966282, 24.948162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621313, 39.977116, 24.050323>,  <32.039467, 40.166321, 24.663549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621313, 39.977116, 24.050323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.391439, 40.075573, 24.362516>,  <31.253515, 40.134647, 24.549831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.391439, 40.075573, 24.362516>,  <31.621313, 39.977116, 24.050323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391439, 40.075573, 24.362516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487011, 0.663584, -0.567870,
		-0.657693, -0.706449, -0.261477,
		-0.574683, 0.246142, 0.780483,
		31.219034, 40.149414, 24.596661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911322, 39.903736, 23.789768>,  <31.621313, 39.977116, 24.050323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911322, 39.903736, 23.789768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.946751, 40.141808, 24.109247>,  <30.968008, 40.284649, 24.300934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.946751, 40.141808, 24.109247>,  <30.911322, 39.903736, 23.789768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946751, 40.141808, 24.109247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467146, 0.733017, -0.494430,
		-0.879733, -0.329314, 0.342961,
		0.088574, 0.595179, 0.798697,
		30.973322, 40.320362, 24.348856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369188, 40.250931, 23.811844>,  <30.911322, 39.903736, 23.789768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369188, 40.250931, 23.811844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.592161, 40.474796, 24.057135>,  <30.725945, 40.609116, 24.204309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.592161, 40.474796, 24.057135>,  <30.369188, 40.250931, 23.811844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592161, 40.474796, 24.057135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195088, 0.806246, -0.558488,
		-0.806977, 0.191685, 0.558610,
		0.557431, 0.559665, 0.613226,
		30.759390, 40.642696, 24.241102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851383, 40.808323, 24.134298>,  <30.369188, 40.250931, 23.811844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851383, 40.808323, 24.134298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.224234, 40.942455, 24.188986>,  <30.447945, 41.022934, 24.221798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.224234, 40.942455, 24.188986>,  <29.851383, 40.808323, 24.134298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224234, 40.942455, 24.188986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308994, 0.933364, -0.182631,
		-0.188850, 0.127990, 0.973629,
		0.932126, 0.335335, 0.136717,
		30.503872, 41.043056, 24.230001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.878807, 41.332943, 24.608603>,  <29.851383, 40.808323, 24.134298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.878807, 41.332943, 24.608603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.195412, 41.382996, 24.369320>,  <30.385374, 41.413029, 24.225750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.195412, 41.382996, 24.369320>,  <29.878807, 41.332943, 24.608603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195412, 41.382996, 24.369320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238761, 0.964341, -0.114192,
		0.562586, 0.233213, 0.793164,
		0.791511, 0.125134, -0.598207,
		30.432865, 41.420536, 24.189857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.136734, 33.611458, 36.892559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.491165, 33.686649, 36.723072>,  <36.703823, 33.731762, 36.621380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.491165, 33.686649, 36.723072>,  <36.136734, 33.611458, 36.892559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491165, 33.686649, 36.723072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436402, 0.646459, -0.625815,
		0.156276, 0.739430, 0.654845,
		0.886076, 0.187976, -0.423715,
		36.756989, 33.743042, 36.595959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157013, 34.373749, 36.702934>,  <36.136734, 33.611458, 36.892559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157013, 34.373749, 36.702934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.405453, 34.181694, 36.455154>,  <36.554516, 34.066463, 36.306488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.405453, 34.181694, 36.455154>,  <36.157013, 34.373749, 36.702934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405453, 34.181694, 36.455154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550838, 0.294808, -0.780811,
		0.557511, 0.826172, -0.081371,
		0.621095, -0.480133, -0.619445,
		36.591782, 34.037655, 36.269321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196640, 34.732918, 36.063374>,  <36.157013, 34.373749, 36.702934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196640, 34.732918, 36.063374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.355328, 34.397381, 35.914272>,  <36.450542, 34.196056, 35.824810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.355328, 34.397381, 35.914272>,  <36.196640, 34.732918, 36.063374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355328, 34.397381, 35.914272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529676, 0.122460, -0.839313,
		0.749703, 0.530414, -0.395735,
		0.396722, -0.838847, -0.372756,
		36.474342, 34.145725, 35.802444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490395, 34.932865, 35.402439>,  <36.196640, 34.732918, 36.063374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490395, 34.932865, 35.402439> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.435402, 34.536747, 35.394341>,  <36.402405, 34.299076, 35.389481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.435402, 34.536747, 35.394341>,  <36.490395, 34.932865, 35.402439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435402, 34.536747, 35.394341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333042, 0.065471, -0.940636,
		0.932835, -0.122580, -0.338812,
		-0.137485, -0.990297, -0.020250,
		36.394157, 34.239658, 35.388264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823490, 34.690434, 34.889088>,  <36.490395, 34.932865, 35.402439>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823490, 34.690434, 34.889088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.541130, 34.410713, 34.934143>,  <36.371716, 34.242882, 34.961174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.541130, 34.410713, 34.934143>,  <36.823490, 34.690434, 34.889088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541130, 34.410713, 34.934143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154550, -0.003126, -0.987980,
		0.691248, -0.714820, -0.105871,
		-0.705897, -0.699302, 0.112637,
		36.329361, 34.200924, 34.967934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833797, 34.308617, 34.241970>,  <36.823490, 34.690434, 34.889088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833797, 34.308617, 34.241970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.497593, 34.182835, 34.418453>,  <36.295872, 34.107365, 34.524342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.497593, 34.182835, 34.418453>,  <36.833797, 34.308617, 34.241970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497593, 34.182835, 34.418453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457598, -0.023986, -0.888836,
		0.290082, -0.948969, -0.123734,
		-0.840510, -0.314455, 0.441204,
		36.245441, 34.088497, 34.550816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600689, 33.866005, 33.682648>,  <36.833797, 34.308617, 34.241970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600689, 33.866005, 33.682648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.294918, 33.915546, 33.935730>,  <36.111454, 33.945271, 34.087578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.294918, 33.915546, 33.935730>,  <36.600689, 33.866005, 33.682648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294918, 33.915546, 33.935730> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638620, -0.010869, -0.769446,
		-0.088422, -0.992241, 0.087404,
		-0.764426, 0.123854, 0.632704,
		36.065590, 33.952702, 34.125542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177921, 33.341198, 33.476074>,  <36.600689, 33.866005, 33.682648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177921, 33.341198, 33.476074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.976189, 33.616333, 33.684891>,  <35.855148, 33.781414, 33.810181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.976189, 33.616333, 33.684891>,  <36.177921, 33.341198, 33.476074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976189, 33.616333, 33.684891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625100, 0.126273, -0.770263,
		-0.595739, -0.714793, 0.366287,
		-0.504327, 0.687842, 0.522042,
		35.824890, 33.822685, 33.841503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510303, 33.136745, 33.513386>,  <36.177921, 33.341198, 33.476074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510303, 33.136745, 33.513386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.507900, 33.535583, 33.543755>,  <35.506458, 33.774887, 33.561977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.507900, 33.535583, 33.543755>,  <35.510303, 33.136745, 33.513386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507900, 33.535583, 33.543755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638553, 0.054605, -0.767638,
		-0.769554, -0.053088, 0.636371,
		-0.006004, 0.997096, 0.075921,
		35.506100, 33.834713, 33.566532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826576, 33.352100, 33.593281>,  <35.510303, 33.136745, 33.513386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826576, 33.352100, 33.593281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.028942, 33.667557, 33.453510>,  <35.150364, 33.856831, 33.369648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.028942, 33.667557, 33.453510>,  <34.826576, 33.352100, 33.593281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028942, 33.667557, 33.453510> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771143, 0.232004, -0.592885,
		-0.386505, 0.569405, 0.725529,
		0.505917, 0.788639, -0.349422,
		35.180717, 33.904148, 33.348682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324188, 33.804256, 33.368546>,  <34.826576, 33.352100, 33.593281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324188, 33.804256, 33.368546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.635384, 33.981007, 33.189896>,  <34.822102, 34.087059, 33.082706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.635384, 33.981007, 33.189896>,  <34.324188, 33.804256, 33.368546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635384, 33.981007, 33.189896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617476, 0.406517, -0.673399,
		-0.115999, 0.799679, 0.589116,
		0.777989, 0.441879, -0.446627,
		34.868782, 34.113571, 33.055908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114403, 34.446957, 33.161720>,  <34.324188, 33.804256, 33.368546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114403, 34.446957, 33.161720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435574, 34.379601, 32.932999>,  <34.628277, 34.339188, 32.795765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435574, 34.379601, 32.932999>,  <34.114403, 34.446957, 33.161720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435574, 34.379601, 32.932999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465857, 0.421185, -0.778191,
		0.371874, 0.891206, 0.259734,
		0.802924, -0.168390, -0.571802,
		34.676453, 34.329082, 32.761459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001682, 35.091660, 33.571495>,  <34.114403, 34.446957, 33.161720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001682, 35.091660, 33.571495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.710545, 35.323570, 33.717976>,  <33.535862, 35.462715, 33.805862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.710545, 35.323570, 33.717976>,  <34.001682, 35.091660, 33.571495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710545, 35.323570, 33.717976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126645, -0.411188, 0.902710,
		0.673945, 0.703412, 0.225856,
		-0.727846, 0.579773, 0.366201,
		33.492191, 35.497501, 33.827835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226685, 35.268764, 34.268654>,  <34.001682, 35.091660, 33.571495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226685, 35.268764, 34.268654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.833530, 35.337700, 34.242622>,  <33.597637, 35.379063, 34.227001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.833530, 35.337700, 34.242622>,  <34.226685, 35.268764, 34.268654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833530, 35.337700, 34.242622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126008, -0.371240, 0.919947,
		0.134380, 0.912404, 0.386602,
		-0.982886, 0.172338, -0.065083,
		33.538666, 35.389400, 34.223099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001442, 35.586769, 34.925774>,  <34.226685, 35.268764, 34.268654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001442, 35.586769, 34.925774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.664440, 35.450863, 34.758564>,  <33.462238, 35.369320, 34.658237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.664440, 35.450863, 34.758564>,  <34.001442, 35.586769, 34.925774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664440, 35.450863, 34.758564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278116, -0.390230, 0.877708,
		-0.461343, 0.855732, 0.234276,
		-0.842505, -0.339769, -0.418022,
		33.411690, 35.348930, 34.633156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403503, 35.746281, 35.370842>,  <34.001442, 35.586769, 34.925774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403503, 35.746281, 35.370842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.296616, 35.432278, 35.147285>,  <33.232483, 35.243877, 35.013149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.296616, 35.432278, 35.147285>,  <33.403503, 35.746281, 35.370842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296616, 35.432278, 35.147285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399549, -0.437524, 0.805564,
		-0.876901, 0.438566, -0.196734,
		-0.267217, -0.785005, -0.558894,
		33.216450, 35.196777, 34.979618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717102, 35.605629, 35.550316>,  <33.403503, 35.746281, 35.370842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717102, 35.605629, 35.550316> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.844738, 35.258965, 35.396912>,  <32.921322, 35.050968, 35.304867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.844738, 35.258965, 35.396912>,  <32.717102, 35.605629, 35.550316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844738, 35.258965, 35.396912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353662, -0.484327, 0.800219,
		-0.879262, -0.119711, -0.461050,
		0.319094, -0.866658, -0.383513,
		32.940468, 34.998966, 35.281857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.073708, 35.174793, 35.590008>,  <32.717102, 35.605629, 35.550316>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.073708, 35.174793, 35.590008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.396870, 34.941208, 35.558331>,  <32.590767, 34.801056, 35.539322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.396870, 34.941208, 35.558331>,  <32.073708, 35.174793, 35.590008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396870, 34.941208, 35.558331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336732, -0.567741, 0.751187,
		-0.483629, -0.580222, -0.655321,
		0.807908, -0.583963, -0.079197,
		32.639240, 34.766018, 35.534573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820871, 34.500164, 35.568573>,  <32.073708, 35.174793, 35.590008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820871, 34.500164, 35.568573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.204391, 34.480087, 35.680416>,  <32.434505, 34.468040, 35.747520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.204391, 34.480087, 35.680416>,  <31.820871, 34.500164, 35.568573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204391, 34.480087, 35.680416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267045, -0.494922, 0.826885,
		0.096876, -0.867486, -0.487937,
		0.958802, -0.050196, 0.279604,
		32.492031, 34.465027, 35.764297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918015, 33.910641, 35.714272>,  <31.820871, 34.500164, 35.568573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918015, 33.910641, 35.714272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.202694, 34.097195, 35.924404>,  <32.373501, 34.209126, 36.050484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.202694, 34.097195, 35.924404>,  <31.918015, 33.910641, 35.714272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202694, 34.097195, 35.924404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309947, -0.462627, 0.830608,
		0.630413, -0.753967, -0.184696,
		0.711696, 0.466380, 0.525336,
		32.416203, 34.237110, 36.082005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.083504, 33.301785, 36.145149>,  <31.918015, 33.910641, 35.714272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.083504, 33.301785, 36.145149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.278687, 33.599705, 36.327217>,  <32.395798, 33.778458, 36.436459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.278687, 33.599705, 36.327217>,  <32.083504, 33.301785, 36.145149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278687, 33.599705, 36.327217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046103, -0.498742, 0.865524,
		0.871649, -0.443323, -0.209028,
		0.487957, 0.744796, 0.455167,
		32.425076, 33.823143, 36.463768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532803, 32.947346, 36.651218>,  <32.083504, 33.301785, 36.145149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532803, 32.947346, 36.651218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.477524, 33.330986, 36.750027>,  <32.444355, 33.561172, 36.809311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.477524, 33.330986, 36.750027>,  <32.532803, 32.947346, 36.651218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.477524, 33.330986, 36.750027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302947, -0.278396, 0.911438,
		0.942934, 0.051127, 0.329032,
		-0.138200, 0.959105, 0.247020,
		32.436066, 33.618717, 36.824131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587761, 32.911015, 37.403576>,  <32.532803, 32.947346, 36.651218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587761, 32.911015, 37.403576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.429955, 33.272675, 37.338001>,  <32.335270, 33.489670, 37.298656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.429955, 33.272675, 37.338001>,  <32.587761, 32.911015, 37.403576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429955, 33.272675, 37.338001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384754, -0.000524, 0.923019,
		0.834459, 0.427221, 0.348081,
		-0.394516, 0.904147, -0.163938,
		32.311600, 33.543919, 37.288818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844429, 33.410942, 37.888809>,  <32.587761, 32.911015, 37.403576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844429, 33.410942, 37.888809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.505398, 33.586887, 37.770065>,  <32.301979, 33.692455, 37.698818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.505398, 33.586887, 37.770065>,  <32.844429, 33.410942, 37.888809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505398, 33.586887, 37.770065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218096, 0.221242, 0.950519,
		0.483780, 0.870384, -0.091587,
		-0.847580, 0.439867, -0.296859,
		32.251125, 33.718849, 37.681007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826469, 34.068226, 38.142361>,  <32.844429, 33.410942, 37.888809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826469, 34.068226, 38.142361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.449116, 33.955647, 38.072144>,  <32.222706, 33.888100, 38.030014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.449116, 33.955647, 38.072144>,  <32.826469, 34.068226, 38.142361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449116, 33.955647, 38.072144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271395, 0.350615, 0.896334,
		-0.190727, 0.893226, -0.407149,
		-0.943381, -0.281453, -0.175546,
		32.166100, 33.871212, 38.019482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408112, 34.629818, 38.397175>,  <32.826469, 34.068226, 38.142361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408112, 34.629818, 38.397175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.167606, 34.310436, 38.384743>,  <32.023304, 34.118809, 38.377281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.167606, 34.310436, 38.384743>,  <32.408112, 34.629818, 38.397175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.167606, 34.310436, 38.384743> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426982, 0.288164, 0.857116,
		-0.675407, 0.528620, -0.514184,
		-0.601258, -0.798450, -0.031083,
		31.987228, 34.070900, 38.375420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759336, 34.809952, 38.675323>,  <32.408112, 34.629818, 38.397175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759336, 34.809952, 38.675323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.785856, 34.413239, 38.719082>,  <31.801767, 34.175209, 38.745338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.785856, 34.413239, 38.719082>,  <31.759336, 34.809952, 38.675323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.785856, 34.413239, 38.719082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456827, 0.067304, 0.887006,
		-0.887082, -0.108783, -0.448612,
		0.066298, -0.991785, 0.109399,
		31.805746, 34.115704, 38.751900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412479, 34.863091, 39.121239>,  <31.759336, 34.809952, 38.675323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412479, 34.863091, 39.121239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.757900, 34.944088, 39.305962>,  <32.965153, 34.992687, 39.416798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.757900, 34.944088, 39.305962>,  <32.412479, 34.863091, 39.121239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757900, 34.944088, 39.305962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114949, 0.812668, -0.571277,
		-0.490978, 0.546413, 0.678508,
		0.863555, 0.202491, 0.461812,
		33.016968, 35.004837, 39.444504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437939, 35.538467, 39.432159>,  <32.412479, 34.863091, 39.121239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437939, 35.538467, 39.432159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.813782, 35.443855, 39.333214>,  <33.039288, 35.387089, 39.273846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.813782, 35.443855, 39.333214>,  <32.437939, 35.538467, 39.432159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813782, 35.443855, 39.333214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063444, 0.830600, -0.553244,
		0.336317, 0.504140, 0.795446,
		0.939609, -0.236531, -0.247360,
		33.095665, 35.372894, 39.259007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632710, 36.181629, 39.313759>,  <32.437939, 35.538467, 39.432159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632710, 36.181629, 39.313759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.917728, 35.943802, 39.164757>,  <33.088741, 35.801105, 39.075356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.917728, 35.943802, 39.164757>,  <32.632710, 36.181629, 39.313759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917728, 35.943802, 39.164757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210358, 0.687536, -0.695013,
		0.669344, 0.416872, 0.614976,
		0.712550, -0.594568, -0.372506,
		33.131493, 35.765430, 39.053005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239502, 36.612354, 39.316677>,  <32.632710, 36.181629, 39.313759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239502, 36.612354, 39.316677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.283340, 36.309570, 39.058994>,  <33.309643, 36.127899, 38.904385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.283340, 36.309570, 39.058994>,  <33.239502, 36.612354, 39.316677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.283340, 36.309570, 39.058994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175782, 0.652656, -0.736981,
		0.978309, -0.032467, 0.204590,
		0.109599, -0.756958, -0.644206,
		33.316219, 36.082481, 38.865734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807407, 36.791489, 38.892300>,  <33.239502, 36.612354, 39.316677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807407, 36.791489, 38.892300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.623276, 36.516438, 38.667706>,  <33.512798, 36.351406, 38.532951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.623276, 36.516438, 38.667706>,  <33.807407, 36.791489, 38.892300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623276, 36.516438, 38.667706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120222, 0.578366, -0.806870,
		0.879571, -0.438927, -0.183569,
		-0.460327, -0.687631, -0.561483,
		33.485176, 36.310146, 38.499260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227386, 36.741665, 38.297611>,  <33.807407, 36.791489, 38.892300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227386, 36.741665, 38.297611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.881153, 36.581295, 38.177593>,  <33.673412, 36.485073, 38.105583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.881153, 36.581295, 38.177593>,  <34.227386, 36.741665, 38.297611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881153, 36.581295, 38.177593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022849, 0.630165, -0.776125,
		0.500248, -0.664943, -0.554619,
		-0.865581, -0.400927, -0.300046,
		33.621479, 36.461018, 38.087578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308853, 36.588089, 37.517803>,  <34.227386, 36.741665, 38.297611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308853, 36.588089, 37.517803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.920071, 36.626190, 37.603806>,  <33.686802, 36.649052, 37.655407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.920071, 36.626190, 37.603806>,  <34.308853, 36.588089, 37.517803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920071, 36.626190, 37.603806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115818, 0.601834, -0.790178,
		-0.204663, -0.792921, -0.573925,
		-0.971957, 0.095249, 0.215008,
		33.628483, 36.654766, 37.668308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026222, 36.536995, 36.912033>,  <34.308853, 36.588089, 37.517803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026222, 36.536995, 36.912033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.763332, 36.730022, 37.143612>,  <33.605598, 36.845840, 37.282558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.763332, 36.730022, 37.143612>,  <34.026222, 36.536995, 36.912033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763332, 36.730022, 37.143612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169120, 0.654133, -0.737230,
		-0.734473, -0.582439, -0.348302,
		-0.657228, 0.482570, 0.578945,
		33.566166, 36.874794, 37.317295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531254, 36.582241, 36.479706>,  <34.026222, 36.536995, 36.912033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531254, 36.582241, 36.479706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.461491, 36.862938, 36.756008>,  <33.419632, 37.031357, 36.921791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.461491, 36.862938, 36.756008>,  <33.531254, 36.582241, 36.479706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461491, 36.862938, 36.756008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243523, 0.648977, -0.720782,
		-0.954086, -0.293924, 0.057704,
		-0.174407, 0.701739, 0.690756,
		33.409168, 37.073460, 36.963234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053474, 36.930424, 36.145592>,  <33.531254, 36.582241, 36.479706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053474, 36.930424, 36.145592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.146370, 37.185581, 36.439301>,  <33.202106, 37.338676, 36.615524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.146370, 37.185581, 36.439301>,  <33.053474, 36.930424, 36.145592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146370, 37.185581, 36.439301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215926, 0.769885, -0.600544,
		-0.948388, -0.019076, 0.316538,
		0.232242, 0.637898, 0.734268,
		33.216042, 37.376949, 36.659580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454735, 37.486996, 36.162270>,  <33.053474, 36.930424, 36.145592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.454735, 37.486996, 36.162270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.804279, 37.619770, 36.304359>,  <33.014008, 37.699436, 36.389614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.804279, 37.619770, 36.304359>,  <32.454735, 37.486996, 36.162270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804279, 37.619770, 36.304359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118269, 0.853841, -0.506921,
		-0.471570, 0.400967, 0.785396,
		0.873861, 0.331937, 0.355224,
		33.066437, 37.719353, 36.410927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305153, 38.199158, 36.270813>,  <32.454735, 37.486996, 36.162270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305153, 38.199158, 36.270813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.704590, 38.207222, 36.251179>,  <32.944252, 38.212059, 36.239399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.704590, 38.207222, 36.251179>,  <32.305153, 38.199158, 36.270813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704590, 38.207222, 36.251179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045806, 0.794422, -0.605637,
		0.026785, 0.607032, 0.794226,
		0.998591, 0.020158, -0.049084,
		33.004166, 38.213268, 36.236454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.517941, 38.889946, 36.466251>,  <32.305153, 38.199158, 36.270813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.517941, 38.889946, 36.466251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.832710, 38.745163, 36.266357>,  <33.021572, 38.658295, 36.146423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.832710, 38.745163, 36.266357>,  <32.517941, 38.889946, 36.466251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832710, 38.745163, 36.266357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128832, 0.695653, -0.706731,
		0.603444, 0.620529, 0.500798,
		0.786929, -0.361954, -0.499732,
		33.068790, 38.636578, 36.116436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854160, 39.416218, 36.119267>,  <32.517941, 38.889946, 36.466251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854160, 39.416218, 36.119267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.992920, 39.113304, 35.897930>,  <33.076176, 38.931557, 35.765129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.992920, 39.113304, 35.897930>,  <32.854160, 39.416218, 36.119267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992920, 39.113304, 35.897930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153176, 0.536307, -0.830007,
		0.925310, 0.372686, 0.070046,
		0.346899, -0.757285, -0.553337,
		33.096989, 38.886120, 35.731930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354786, 39.732235, 35.710575>,  <32.854160, 39.416218, 36.119267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354786, 39.732235, 35.710575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.238682, 39.398758, 35.522659>,  <33.169022, 39.198669, 35.409908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.238682, 39.398758, 35.522659>,  <33.354786, 39.732235, 35.710575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238682, 39.398758, 35.522659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070682, 0.508262, -0.858297,
		0.954335, -0.215921, -0.206454,
		-0.290258, -0.833695, -0.469790,
		33.151604, 39.148651, 35.381721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719955, 39.711094, 35.024296>,  <33.354786, 39.732235, 35.710575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719955, 39.711094, 35.024296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.410522, 39.458424, 35.004066>,  <33.224865, 39.306820, 34.991928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.410522, 39.458424, 35.004066>,  <33.719955, 39.711094, 35.024296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410522, 39.458424, 35.004066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175553, 0.290306, -0.940693,
		0.608897, -0.718823, -0.335468,
		-0.773580, -0.631677, -0.050574,
		33.178448, 39.268921, 34.988895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926365, 39.257210, 34.464760>,  <33.719955, 39.711094, 35.024296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926365, 39.257210, 34.464760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.527946, 39.230251, 34.487900>,  <33.288895, 39.214077, 34.501781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.527946, 39.230251, 34.487900>,  <33.926365, 39.257210, 34.464760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527946, 39.230251, 34.487900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077108, 0.332961, -0.939783,
		0.044076, -0.940529, -0.336842,
		-0.996048, -0.067396, 0.057847,
		33.229134, 39.210033, 34.505253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.830933, 38.969902, 33.744423>,  <33.926365, 39.257210, 34.464760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.830933, 38.969902, 33.744423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.513477, 39.153107, 33.904598>,  <33.323002, 39.263031, 34.000706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.513477, 39.153107, 33.904598>,  <33.830933, 38.969902, 33.744423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513477, 39.153107, 33.904598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310123, 0.261704, -0.913966,
		-0.523409, -0.849548, -0.065658,
		-0.793642, 0.458016, 0.400442,
		33.275383, 39.290512, 34.024731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261909, 38.859509, 33.310215>,  <33.830933, 38.969902, 33.744423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261909, 38.859509, 33.310215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.126629, 39.172112, 33.519924>,  <33.045460, 39.359673, 33.645748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.126629, 39.172112, 33.519924>,  <33.261909, 38.859509, 33.310215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126629, 39.172112, 33.519924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419974, 0.373211, -0.827245,
		-0.842166, -0.499953, 0.201995,
		-0.338197, 0.781511, 0.524273,
		33.025169, 39.406567, 33.677208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560715, 38.999546, 33.063404>,  <33.261909, 38.859509, 33.310215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560715, 38.999546, 33.063404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.665646, 39.340591, 33.244171>,  <32.728603, 39.545219, 33.352631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.665646, 39.340591, 33.244171>,  <32.560715, 38.999546, 33.063404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665646, 39.340591, 33.244171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504445, 0.520402, -0.688998,
		-0.822629, -0.047224, 0.566614,
		0.262329, 0.852615, 0.451920,
		32.744343, 39.596375, 33.379745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037563, 39.356907, 32.931461>,  <32.560715, 38.999546, 33.063404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037563, 39.356907, 32.931461> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.287975, 39.645260, 33.050400>,  <32.438221, 39.818272, 33.121761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.287975, 39.645260, 33.050400>,  <32.037563, 39.356907, 32.931461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287975, 39.645260, 33.050400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425004, 0.635117, -0.644979,
		-0.653805, 0.277401, 0.703979,
		0.626027, 0.720885, 0.297346,
		32.475784, 39.861526, 33.139603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715027, 40.066616, 32.835930>,  <32.037563, 39.356907, 32.931461>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715027, 40.066616, 32.835930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.103630, 40.161358, 32.839260>,  <32.336792, 40.218204, 32.841259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.103630, 40.161358, 32.839260>,  <31.715027, 40.066616, 32.835930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103630, 40.161358, 32.839260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184177, 0.776604, -0.602467,
		-0.149160, 0.583769, 0.798101,
		0.971509, 0.236855, 0.008321,
		32.395084, 40.232414, 32.841755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738354, 40.873779, 32.816154>,  <31.715027, 40.066616, 32.835930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738354, 40.873779, 32.816154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.107510, 40.755550, 32.717438>,  <32.329002, 40.684612, 32.658207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.107510, 40.755550, 32.717438>,  <31.738354, 40.873779, 32.816154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107510, 40.755550, 32.717438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072319, 0.762562, -0.642860,
		0.378206, 0.575443, 0.725138,
		0.922892, -0.295575, -0.246790,
		32.384377, 40.666878, 32.643402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177349, 41.413166, 32.884121>,  <31.738354, 40.873779, 32.816154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177349, 41.413166, 32.884121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.358921, 41.177792, 32.616486>,  <32.467865, 41.036568, 32.455902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.358921, 41.177792, 32.616486>,  <32.177349, 41.413166, 32.884121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358921, 41.177792, 32.616486> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021751, 0.758010, -0.651881,
		0.890770, 0.281357, 0.356885,
		0.453933, -0.588438, -0.669093,
		32.495102, 41.001259, 32.415756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.719528, 41.770744, 32.627613>,  <32.177349, 41.413166, 32.884121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.719528, 41.770744, 32.627613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668133, 41.492889, 32.344498>,  <32.637295, 41.326176, 32.174629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.668133, 41.492889, 32.344498>,  <32.719528, 41.770744, 32.627613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668133, 41.492889, 32.344498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086905, 0.703076, -0.705784,
		0.987896, -0.152196, -0.029970,
		-0.128489, -0.694637, -0.707792,
		32.629585, 41.284500, 32.132160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.118286, 42.067421, 32.063377>,  <32.719528, 41.770744, 32.627613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.118286, 42.067421, 32.063377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.868748, 41.805996, 31.891951>,  <32.719025, 41.649139, 31.789095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.868748, 41.805996, 31.891951>,  <33.118286, 42.067421, 32.063377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868748, 41.805996, 31.891951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099319, 0.610207, -0.785991,
		0.775210, -0.447774, -0.445588,
		-0.623847, -0.653564, -0.428566,
		32.681595, 41.609928, 31.763380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330128, 41.856449, 31.376844>,  <33.118286, 42.067421, 32.063377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330128, 41.856449, 31.376844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.936275, 41.786602, 31.377935>,  <32.699963, 41.744694, 31.378590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.936275, 41.786602, 31.377935>,  <33.330128, 41.856449, 31.376844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936275, 41.786602, 31.377935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084843, 0.464631, -0.881430,
		0.152646, -0.868116, -0.472306,
		-0.984633, -0.174619, 0.002729,
		32.640884, 41.734215, 31.378754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858513, 41.479649, 31.122484>,  <33.330128, 41.856449, 31.376844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858513, 41.479649, 31.122484> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232235, 41.552876, 31.000130>,  <34.456467, 41.596809, 30.926716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232235, 41.552876, 31.000130>,  <33.858513, 41.479649, 31.122484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232235, 41.552876, 31.000130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355237, -0.406448, 0.841788,
		0.029772, -0.895147, -0.444776,
		0.934302, 0.183063, -0.305888,
		34.512527, 41.607796, 30.908363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244331, 40.885712, 31.212650>,  <33.858513, 41.479649, 31.122484>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244331, 40.885712, 31.212650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.541092, 41.148876, 31.160902>,  <34.719147, 41.306774, 31.129852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.541092, 41.148876, 31.160902>,  <34.244331, 40.885712, 31.212650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541092, 41.148876, 31.160902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525568, -0.450788, 0.721504,
		0.416366, -0.603278, -0.680217,
		0.741901, 0.657910, -0.129371,
		34.763664, 41.346249, 31.122091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815163, 40.464703, 31.234529>,  <34.244331, 40.885712, 31.212650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815163, 40.464703, 31.234529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.952492, 40.833683, 31.305206>,  <35.034889, 41.055069, 31.347612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.952492, 40.833683, 31.305206>,  <34.815163, 40.464703, 31.234529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952492, 40.833683, 31.305206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546464, -0.349193, 0.761211,
		0.763876, -0.164786, -0.623971,
		0.343323, 0.922448, 0.176690,
		35.055489, 41.110416, 31.358213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496105, 40.314236, 31.367529>,  <34.815163, 40.464703, 31.234529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496105, 40.314236, 31.367529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.403988, 40.650795, 31.563087>,  <35.348717, 40.852730, 31.680424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.403988, 40.650795, 31.563087>,  <35.496105, 40.314236, 31.367529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403988, 40.650795, 31.563087> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352871, -0.396005, 0.847740,
		0.906890, 0.367743, -0.205708,
		-0.230289, 0.841395, 0.488898,
		35.334900, 40.903214, 31.709757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042645, 40.346794, 31.778019>,  <35.496105, 40.314236, 31.367529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042645, 40.346794, 31.778019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.787174, 40.611187, 31.935602>,  <35.633892, 40.769821, 32.030151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.787174, 40.611187, 31.935602>,  <36.042645, 40.346794, 31.778019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787174, 40.611187, 31.935602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284331, -0.273022, 0.919029,
		0.715016, 0.698976, -0.013563,
		-0.638677, 0.660977, 0.393956,
		35.595570, 40.809479, 32.053787>
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
