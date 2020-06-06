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
	<23.996168, 34.870819, 34.696686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.264326, 34.986618, 34.969967>,  <24.425220, 35.056095, 35.133934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.264326, 34.986618, 34.969967>,  <23.996168, 34.870819, 34.696686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.264326, 34.986618, 34.969967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466560, -0.880420, -0.084752,
		0.576970, 0.375573, -0.725293,
		0.670393, 0.289493, 0.683203,
		24.465445, 35.073467, 35.174927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.699652, 34.778770, 34.379078>,  <23.996168, 34.870819, 34.696686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.699652, 34.778770, 34.379078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.663366, 34.759331, 34.776955>,  <24.641596, 34.747665, 35.015682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.663366, 34.759331, 34.776955>,  <24.699652, 34.778770, 34.379078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.663366, 34.759331, 34.776955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591172, -0.806415, 0.014512,
		0.801428, 0.589349, 0.101882,
		-0.090712, -0.048600, 0.994691,
		24.636152, 34.744751, 35.075363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.403687, 34.773544, 34.698547>,  <24.699652, 34.778770, 34.379078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.403687, 34.773544, 34.698547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.119564, 34.594215, 34.915611>,  <24.949091, 34.486618, 35.045849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.119564, 34.594215, 34.915611>,  <25.403687, 34.773544, 34.698547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.119564, 34.594215, 34.915611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625869, -0.755043, 0.195441,
		0.322112, 0.478456, 0.816899,
		-0.710304, -0.448318, 0.542660,
		24.906473, 34.459721, 35.078407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.605112, 34.727779, 35.458664>,  <25.403687, 34.773544, 34.698547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.605112, 34.727779, 35.458664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361773, 34.430153, 35.348194>,  <25.215769, 34.251575, 35.281910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.361773, 34.430153, 35.348194>,  <25.605112, 34.727779, 35.458664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.361773, 34.430153, 35.348194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673645, -0.668075, 0.316034,
		-0.419658, 0.006213, 0.907661,
		-0.608349, -0.744068, -0.276178,
		25.179268, 34.206932, 35.265339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169315, 35.306862, 35.490871>,  <25.605112, 34.727779, 35.458664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.169315, 35.306862, 35.490871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951992, 35.636757, 35.553646>,  <25.821598, 35.834694, 35.591312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.951992, 35.636757, 35.553646>,  <26.169315, 35.306862, 35.490871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.951992, 35.636757, 35.553646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598743, 0.511683, -0.616188,
		-0.588494, -0.240814, -0.771805,
		-0.543306, 0.824736, 0.156937,
		25.789000, 35.884178, 35.600727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.890059, 35.545818, 34.806190>,  <26.169315, 35.306862, 35.490871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.890059, 35.545818, 34.806190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950930, 35.842945, 35.066978>,  <25.987452, 36.021221, 35.223450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.950930, 35.842945, 35.066978>,  <25.890059, 35.545818, 34.806190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.950930, 35.842945, 35.066978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481326, 0.520446, -0.705310,
		-0.863231, 0.421142, -0.278337,
		0.152176, 0.742816, 0.651971,
		25.996582, 36.065788, 35.262569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.232740, 35.874321, 34.780590>,  <25.890059, 35.545818, 34.806190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.232740, 35.874321, 34.780590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462454, 36.084194, 35.031956>,  <25.600281, 36.210117, 35.182777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.462454, 36.084194, 35.031956>,  <25.232740, 35.874321, 34.780590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.462454, 36.084194, 35.031956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246852, 0.620909, -0.744000,
		-0.780554, 0.582392, 0.227058,
		0.574282, 0.524682, 0.628418,
		25.634739, 36.241600, 35.220482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.492161, 36.448986, 34.496655>,  <25.232740, 35.874321, 34.780590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.492161, 36.448986, 34.496655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782555, 36.491909, 34.768368>,  <25.956791, 36.517662, 34.931396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.782555, 36.491909, 34.768368>,  <25.492161, 36.448986, 34.496655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.782555, 36.491909, 34.768368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544158, 0.514356, -0.662820,
		-0.420521, 0.850837, 0.315022,
		0.725985, 0.107308, 0.679287,
		26.000351, 36.524101, 34.972153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.759775, 37.053013, 34.314419>,  <25.492161, 36.448986, 34.496655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.759775, 37.053013, 34.314419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041975, 36.921448, 34.565525>,  <26.211294, 36.842510, 34.716190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041975, 36.921448, 34.565525>,  <25.759775, 37.053013, 34.314419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.041975, 36.921448, 34.565525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697345, 0.480172, -0.532114,
		-0.126416, 0.813174, 0.568126,
		0.705499, -0.328912, 0.627764,
		26.253624, 36.822773, 34.753853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219244, 37.661327, 34.439251>,  <25.759775, 37.053013, 34.314419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219244, 37.661327, 34.439251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436247, 37.337395, 34.528568>,  <26.566448, 37.143036, 34.582161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436247, 37.337395, 34.528568>,  <26.219244, 37.661327, 34.439251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436247, 37.337395, 34.528568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704314, 0.293611, -0.646323,
		0.457848, 0.507908, 0.729660,
		0.542509, -0.809828, 0.223298,
		26.598999, 37.094448, 34.595558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816805, 37.941071, 34.616409>,  <26.219244, 37.661327, 34.439251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.816805, 37.941071, 34.616409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.887163, 37.561760, 34.510712>,  <26.929379, 37.334171, 34.447292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.887163, 37.561760, 34.510712>,  <26.816805, 37.941071, 34.616409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.887163, 37.561760, 34.510712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724309, 0.306456, -0.617625,
		0.666661, -0.082758, 0.740752,
		0.175895, -0.948280, -0.264245,
		26.939932, 37.277275, 34.431438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.541451, 37.919216, 34.614426>,  <26.816805, 37.941071, 34.616409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.541451, 37.919216, 34.614426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394983, 37.620415, 34.392467>,  <27.307102, 37.441135, 34.259293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.394983, 37.620415, 34.392467>,  <27.541451, 37.919216, 34.614426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394983, 37.620415, 34.392467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772639, 0.088270, -0.628679,
		0.518605, -0.658938, 0.544840,
		-0.366167, -0.747001, -0.554898,
		27.285133, 37.396313, 34.225998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892647, 37.273937, 34.571953>,  <27.541451, 37.919216, 34.614426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892647, 37.273937, 34.571953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727606, 37.421040, 34.238602>,  <27.628580, 37.509300, 34.038593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.727606, 37.421040, 34.238602>,  <27.892647, 37.273937, 34.571953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.727606, 37.421040, 34.238602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891685, -0.023908, -0.452025,
		-0.186160, -0.929614, -0.318059,
		-0.412604, 0.367758, -0.833374,
		27.603825, 37.531368, 33.988590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.281143, 37.149506, 33.916859>,  <27.892647, 37.273937, 34.571953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.281143, 37.149506, 33.916859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976610, 36.962612, 34.096664>,  <27.793890, 36.850475, 34.204548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.976610, 36.962612, 34.096664>,  <28.281143, 37.149506, 33.916859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.976610, 36.962612, 34.096664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193085, -0.498464, -0.845134,
		0.618945, -0.730222, 0.289279,
		-0.761331, -0.467237, 0.449517,
		27.748211, 36.822441, 34.231518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299561, 36.336857, 33.974323>,  <28.281143, 37.149506, 33.916859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299561, 36.336857, 33.974323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942762, 36.514702, 33.941685>,  <27.728683, 36.621410, 33.922100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.942762, 36.514702, 33.941685>,  <28.299561, 36.336857, 33.974323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.942762, 36.514702, 33.941685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115483, -0.398650, -0.909803,
		-0.437046, -0.802116, 0.406940,
		-0.891994, 0.444621, -0.081598,
		27.675163, 36.648087, 33.917206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.837511, 35.797649, 33.836437>,  <28.299561, 36.336857, 33.974323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.837511, 35.797649, 33.836437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663017, 36.123615, 33.683800>,  <27.558321, 36.319195, 33.592216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663017, 36.123615, 33.683800>,  <27.837511, 35.797649, 33.836437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663017, 36.123615, 33.683800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368364, -0.548634, -0.750539,
		-0.820981, -0.186845, 0.539517,
		-0.436232, 0.814917, -0.381591,
		27.532148, 36.368092, 33.569321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144987, 36.006233, 34.077816>,  <27.837511, 35.797649, 33.836437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144987, 36.006233, 34.077816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094727, 36.380882, 34.208626>,  <27.064571, 36.605671, 34.287109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.094727, 36.380882, 34.208626>,  <27.144987, 36.006233, 34.077816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094727, 36.380882, 34.208626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462686, -0.346914, 0.815826,
		0.877572, -0.048800, 0.476954,
		-0.125650, 0.936626, 0.327021,
		27.057032, 36.661869, 34.306732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.331949, 36.062103, 34.858200>,  <27.144987, 36.006233, 34.077816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.331949, 36.062103, 34.858200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112583, 36.382484, 34.762100>,  <26.980963, 36.574711, 34.704441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112583, 36.382484, 34.762100>,  <27.331949, 36.062103, 34.858200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112583, 36.382484, 34.762100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563328, -0.141550, 0.814018,
		0.617980, 0.581759, 0.528826,
		-0.548418, 0.800949, -0.240247,
		26.948057, 36.622768, 34.690025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236986, 36.406536, 35.471565>,  <27.331949, 36.062103, 34.858200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236986, 36.406536, 35.471565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923761, 36.510769, 35.245678>,  <26.735826, 36.573307, 35.110146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.923761, 36.510769, 35.245678>,  <27.236986, 36.406536, 35.471565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.923761, 36.510769, 35.245678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605828, -0.114218, 0.787354,
		0.140669, 0.958672, 0.247308,
		-0.783061, 0.260582, -0.564723,
		26.688843, 36.588943, 35.076260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887552, 36.798050, 35.905087>,  <27.236986, 36.406536, 35.471565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887552, 36.798050, 35.905087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634516, 36.700462, 35.611065>,  <26.482693, 36.641911, 35.434650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.634516, 36.700462, 35.611065>,  <26.887552, 36.798050, 35.905087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.634516, 36.700462, 35.611065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748879, -0.049344, 0.660868,
		-0.197502, 0.968527, -0.151489,
		-0.632593, -0.243970, -0.735054,
		26.444738, 36.627270, 35.390549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.154402, 37.056747, 36.082012>,  <26.887552, 36.798050, 35.905087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.154402, 37.056747, 36.082012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112467, 36.751980, 35.826359>,  <26.087307, 36.569118, 35.672966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.112467, 36.751980, 35.826359>,  <26.154402, 37.056747, 36.082012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.112467, 36.751980, 35.826359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738696, -0.370625, 0.562997,
		-0.665836, 0.531146, -0.523971,
		-0.104837, -0.761919, -0.639131,
		26.081017, 36.523403, 35.634621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.479464, 37.010506, 36.022312>,  <26.154402, 37.056747, 36.082012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.479464, 37.010506, 36.022312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.610971, 36.645351, 35.925518>,  <25.689877, 36.426258, 35.867443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.610971, 36.645351, 35.925518>,  <25.479464, 37.010506, 36.022312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.610971, 36.645351, 35.925518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665305, -0.405731, 0.626699,
		-0.670284, -0.045044, -0.740736,
		0.328769, -0.912882, -0.241987,
		25.709602, 36.371487, 35.852921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.862040, 36.587757, 35.888771>,  <25.479464, 37.010506, 36.022312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.862040, 36.587757, 35.888771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170973, 36.380650, 36.035965>,  <25.356333, 36.256386, 36.124283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.170973, 36.380650, 36.035965>,  <24.862040, 36.587757, 35.888771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.170973, 36.380650, 36.035965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604011, -0.419266, 0.677781,
		-0.196648, -0.745743, -0.636550,
		0.772335, -0.517767, 0.367989,
		25.402674, 36.225319, 36.146362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.701818, 35.847996, 35.923756>,  <24.862040, 36.587757, 35.888771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.701818, 35.847996, 35.923756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.970490, 35.944389, 36.203976>,  <25.131693, 36.002224, 36.372108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.970490, 35.944389, 36.203976>,  <24.701818, 35.847996, 35.923756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.970490, 35.944389, 36.203976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591942, -0.394041, 0.703091,
		0.445479, -0.886938, -0.122021,
		0.671679, 0.240983, 0.700553,
		25.171993, 36.016685, 36.414143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.844252, 34.979549, 35.946354>,  <24.701818, 35.847996, 35.923756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.844252, 34.979549, 35.946354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.850042, 34.827312, 36.316204>,  <24.853516, 34.735970, 36.538116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.850042, 34.827312, 36.316204>,  <24.844252, 34.979549, 35.946354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.850042, 34.827312, 36.316204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601813, -0.735161, -0.312025,
		0.798506, 0.560971, 0.218404,
		0.014475, -0.380592, 0.924630,
		24.854385, 34.713135, 36.593594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.532736, 34.782413, 36.265228>,  <24.844252, 34.979549, 35.946354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.532736, 34.782413, 36.265228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.276335, 34.522762, 36.429058>,  <25.122494, 34.366970, 36.527355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.276335, 34.522762, 36.429058>,  <25.532736, 34.782413, 36.265228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.276335, 34.522762, 36.429058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567432, -0.760110, -0.316629,
		0.516853, 0.029445, 0.855568,
		-0.641002, -0.649127, 0.409573,
		25.084034, 34.328026, 36.551929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.409227, 34.048431, 36.019539>,  <25.532736, 34.782413, 36.265228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.409227, 34.048431, 36.019539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772068, 34.180775, 35.915459>,  <25.989773, 34.260181, 35.853012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.772068, 34.180775, 35.915459>,  <25.409227, 34.048431, 36.019539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.772068, 34.180775, 35.915459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319629, -0.139226, 0.937259,
		0.273870, -0.933355, -0.232043,
		0.907101, 0.330854, -0.260197,
		26.044199, 34.280029, 35.837399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.840551, 34.158119, 36.676830>,  <25.409227, 34.048431, 36.019539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.840551, 34.158119, 36.676830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934166, 33.927902, 36.363403>,  <25.990335, 33.789772, 36.175346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934166, 33.927902, 36.363403>,  <25.840551, 34.158119, 36.676830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.934166, 33.927902, 36.363403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215857, -0.816598, 0.535326,
		-0.947962, 0.043853, -0.315348,
		0.234037, -0.575539, -0.783570,
		26.004377, 33.755241, 36.128334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.300539, 33.609825, 36.583275>,  <25.840551, 34.158119, 36.676830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.300539, 33.609825, 36.583275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.655878, 33.490620, 36.443546>,  <25.869081, 33.419098, 36.359707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.655878, 33.490620, 36.443546>,  <25.300539, 33.609825, 36.583275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.655878, 33.490620, 36.443546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111011, -0.877596, 0.466371,
		-0.445549, -0.375521, -0.812693,
		0.888349, -0.298009, -0.349325,
		25.922382, 33.401218, 36.338749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.245049, 32.816753, 36.524849>,  <25.300539, 33.609825, 36.583275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.245049, 32.816753, 36.524849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618153, 32.960918, 36.527920>,  <25.842016, 33.047417, 36.529762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618153, 32.960918, 36.527920>,  <25.245049, 32.816753, 36.524849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.618153, 32.960918, 36.527920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330671, -0.863888, 0.379939,
		0.143565, -0.351855, -0.924980,
		0.932762, 0.360410, 0.007676,
		25.897982, 33.069042, 36.530224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.710154, 32.387264, 36.009857>,  <25.245049, 32.816753, 36.524849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.710154, 32.387264, 36.009857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917572, 32.517986, 36.325912>,  <26.042023, 32.596420, 36.515545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917572, 32.517986, 36.325912>,  <25.710154, 32.387264, 36.009857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.917572, 32.517986, 36.325912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293972, -0.935886, 0.194158,
		0.802927, 0.131598, -0.581369,
		0.518544, 0.326801, 0.790135,
		26.073135, 32.616028, 36.562954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.454884, 32.157063, 35.912861>,  <25.710154, 32.387264, 36.009857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.454884, 32.157063, 35.912861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270550, 32.142887, 36.267570>,  <26.159950, 32.134380, 36.480396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270550, 32.142887, 36.267570>,  <26.454884, 32.157063, 35.912861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270550, 32.142887, 36.267570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141051, -0.989427, 0.033755,
		0.876206, 0.140637, 0.460960,
		-0.460834, -0.035442, 0.886779,
		26.132299, 32.132256, 36.533604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689367, 31.543159, 36.050339>,  <26.454884, 32.157063, 35.912861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.689367, 31.543159, 36.050339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.413986, 31.575912, 36.338596>,  <26.248756, 31.595564, 36.511551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.413986, 31.575912, 36.338596>,  <26.689367, 31.543159, 36.050339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.413986, 31.575912, 36.338596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107607, -0.994142, 0.010160,
		0.717252, -0.070551, 0.693233,
		-0.688455, 0.081884, 0.720642,
		26.207449, 31.600477, 36.554790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887489, 31.117918, 36.559586>,  <26.689367, 31.543159, 36.050339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887489, 31.117918, 36.559586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493074, 31.180037, 36.583626>,  <26.256426, 31.217308, 36.598049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.493074, 31.180037, 36.583626>,  <26.887489, 31.117918, 36.559586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.493074, 31.180037, 36.583626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158728, -0.985661, -0.057249,
		0.050347, -0.065989, 0.996549,
		-0.986038, 0.155298, 0.060100,
		26.197264, 31.226625, 36.601654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634785, 30.699659, 37.121349>,  <26.887489, 31.117918, 36.559586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.634785, 30.699659, 37.121349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.384672, 30.777103, 36.818951>,  <26.234604, 30.823570, 36.637512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.384672, 30.777103, 36.818951>,  <26.634785, 30.699659, 37.121349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.384672, 30.777103, 36.818951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193798, -0.976914, -0.089900,
		-0.755953, 0.090298, 0.648368,
		-0.625282, 0.193612, -0.756001,
		26.197088, 30.835188, 36.592152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.050121, 30.139303, 36.931133>,  <26.634785, 30.699659, 37.121349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.050121, 30.139303, 36.931133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.291868, 30.139654, 37.249817>,  <26.436916, 30.139864, 37.441025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.291868, 30.139654, 37.249817>,  <26.050121, 30.139303, 36.931133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.291868, 30.139654, 37.249817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693026, 0.492715, -0.526257,
		-0.393010, 0.870190, 0.297173,
		0.604365, 0.000876, 0.796707,
		26.473177, 30.139917, 37.488831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.570789, 29.893606, 36.342659>,  <26.050121, 30.139303, 36.931133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.570789, 29.893606, 36.342659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307497, 30.143690, 36.174923>,  <25.149521, 30.293739, 36.074284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.307497, 30.143690, 36.174923>,  <25.570789, 29.893606, 36.342659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.307497, 30.143690, 36.174923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223887, 0.694400, 0.683874,
		0.718752, 0.356264, -0.597052,
		-0.658233, 0.625208, -0.419338,
		25.110027, 30.331253, 36.049122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.602190, 30.477673, 35.883621>,  <25.570789, 29.893606, 36.342659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.602190, 30.477673, 35.883621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623457, 30.475313, 36.283047>,  <25.636217, 30.473898, 36.522701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623457, 30.475313, 36.283047>,  <25.602190, 30.477673, 35.883621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.623457, 30.475313, 36.283047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054798, 0.998459, 0.008815,
		-0.997081, -0.055188, 0.052761,
		0.053166, -0.005898, 0.998568,
		25.639408, 30.473543, 36.582619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.148809, 31.047760, 36.100689>,  <25.602190, 30.477673, 35.883621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.148809, 31.047760, 36.100689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.413702, 30.971172, 36.390457>,  <25.572638, 30.925219, 36.564320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.413702, 30.971172, 36.390457>,  <25.148809, 31.047760, 36.100689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.413702, 30.971172, 36.390457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058385, 0.977047, 0.204869,
		-0.747021, -0.093375, 0.658210,
		0.662231, -0.191471, 0.724423,
		25.612371, 30.913731, 36.607784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.928120, 31.301588, 36.758881>,  <25.148809, 31.047760, 36.100689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.928120, 31.301588, 36.758881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.327776, 31.293760, 36.744289>,  <25.567570, 31.289064, 36.735535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.327776, 31.293760, 36.744289>,  <24.928120, 31.301588, 36.758881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.327776, 31.293760, 36.744289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027810, 0.970033, 0.241376,
		0.030657, -0.242184, 0.969746,
		0.999143, -0.019569, -0.036473,
		25.627520, 31.287889, 36.733349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.120834, 31.709459, 37.293747>,  <24.928120, 31.301588, 36.758881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.120834, 31.709459, 37.293747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.458496, 31.693390, 37.079910>,  <25.661093, 31.683748, 36.951607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.458496, 31.693390, 37.079910>,  <25.120834, 31.709459, 37.293747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.458496, 31.693390, 37.079910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076005, 0.996084, 0.045162,
		0.530687, -0.078756, 0.843901,
		0.844153, -0.040174, -0.534595,
		25.711742, 31.681337, 36.919533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.697998, 32.047764, 37.730572>,  <25.120834, 31.709459, 37.293747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.697998, 32.047764, 37.730572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807594, 32.078625, 37.347118>,  <25.873352, 32.097141, 37.117046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807594, 32.078625, 37.347118>,  <25.697998, 32.047764, 37.730572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.807594, 32.078625, 37.347118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035898, 0.996903, 0.069970,
		0.961063, 0.015242, 0.275910,
		0.273989, 0.077150, -0.958633,
		25.889791, 32.101768, 37.059528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.979746, 32.265102, 38.325577>,  <25.697998, 32.047764, 37.730572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.979746, 32.265102, 38.325577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.268509, 32.072392, 38.524265>,  <26.441767, 31.956764, 38.643478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.268509, 32.072392, 38.524265>,  <25.979746, 32.265102, 38.325577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.268509, 32.072392, 38.524265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578392, 0.814167, -0.050930,
		-0.379880, 0.324069, 0.866413,
		0.721910, -0.481779, 0.496724,
		26.485083, 31.927858, 38.673283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.309135, 32.604916, 38.816662>,  <25.979746, 32.265102, 38.325577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.309135, 32.604916, 38.816662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589235, 32.322113, 38.777073>,  <26.757296, 32.152431, 38.753319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.589235, 32.322113, 38.777073>,  <26.309135, 32.604916, 38.816662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.589235, 32.322113, 38.777073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711722, 0.680552, 0.174071,
		-0.055714, -0.192333, 0.979747,
		0.700248, -0.707006, -0.098972,
		26.799311, 32.110012, 38.747383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.782499, 32.594208, 39.414268>,  <26.309135, 32.604916, 38.816662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.782499, 32.594208, 39.414268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023993, 32.437130, 39.136765>,  <27.168888, 32.342884, 38.970261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.023993, 32.437130, 39.136765>,  <26.782499, 32.594208, 39.414268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.023993, 32.437130, 39.136765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709371, 0.661707, 0.242769,
		0.363733, -0.638700, 0.678057,
		0.603732, -0.392690, -0.693760,
		27.205112, 32.319324, 38.928638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.546206, 32.545357, 39.582851>,  <26.782499, 32.594208, 39.414268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.546206, 32.545357, 39.582851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541183, 32.564487, 39.183342>,  <27.538170, 32.575966, 38.943634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.541183, 32.564487, 39.183342>,  <27.546206, 32.545357, 39.582851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541183, 32.564487, 39.183342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708947, 0.704824, 0.024842,
		0.705150, -0.707767, -0.042759,
		-0.012555, 0.047831, -0.998777,
		27.537416, 32.578838, 38.883709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125568, 32.105465, 39.193626>,  <27.546206, 32.545357, 39.582851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125568, 32.105465, 39.193626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956358, 32.463352, 39.136318>,  <27.854832, 32.678085, 39.101933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956358, 32.463352, 39.136318>,  <28.125568, 32.105465, 39.193626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.956358, 32.463352, 39.136318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850169, 0.446611, 0.278837,
		0.313466, -0.003846, -0.949591,
		-0.423026, 0.894720, -0.143267,
		27.829451, 32.731770, 39.093338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542835, 32.593777, 38.827888>,  <28.125568, 32.105465, 39.193626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542835, 32.593777, 38.827888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303141, 32.813793, 39.060566>,  <28.159325, 32.945805, 39.200172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303141, 32.813793, 39.060566>,  <28.542835, 32.593777, 38.827888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303141, 32.813793, 39.060566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761417, 0.616032, 0.201862,
		-0.247309, 0.563875, -0.787962,
		-0.599234, 0.550045, 0.581694,
		28.123371, 32.978806, 39.235073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336508, 33.319412, 38.658058>,  <28.542835, 32.593777, 38.827888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336508, 33.319412, 38.658058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412781, 33.258995, 39.046043>,  <28.458544, 33.222744, 39.278835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412781, 33.258995, 39.046043>,  <28.336508, 33.319412, 38.658058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412781, 33.258995, 39.046043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698963, 0.714680, -0.026117,
		-0.689268, 0.682948, 0.241849,
		0.190681, -0.151042, 0.969962,
		28.469986, 33.213684, 39.337032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193340, 33.983414, 39.076633>,  <28.336508, 33.319412, 38.658058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193340, 33.983414, 39.076633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502344, 33.762432, 39.201866>,  <28.687746, 33.629841, 39.277004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502344, 33.762432, 39.201866>,  <28.193340, 33.983414, 39.076633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502344, 33.762432, 39.201866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604669, 0.790547, -0.097005,
		-0.193911, 0.264246, 0.944761,
		0.772511, -0.552457, 0.313077,
		28.734098, 33.596695, 39.295788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495667, 34.253506, 39.688374>,  <28.193340, 33.983414, 39.076633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495667, 34.253506, 39.688374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.793457, 34.041168, 39.526405>,  <28.972132, 33.913765, 39.429226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.793457, 34.041168, 39.526405>,  <28.495667, 34.253506, 39.688374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.793457, 34.041168, 39.526405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645515, 0.727172, 0.233518,
		0.170482, -0.435229, 0.884031,
		0.744477, -0.530845, -0.404917,
		29.016800, 33.881916, 39.404930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099155, 33.933167, 40.100899>,  <28.495667, 34.253506, 39.688374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099155, 33.933167, 40.100899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154873, 34.082813, 39.734154>,  <29.188303, 34.172600, 39.514107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154873, 34.082813, 39.734154>,  <29.099155, 33.933167, 40.100899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154873, 34.082813, 39.734154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607754, 0.698699, 0.377430,
		0.781813, -0.609800, -0.130046,
		0.139294, 0.374116, -0.916861,
		29.196661, 34.195049, 39.459095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814646, 33.871620, 39.811333>,  <29.099155, 33.933167, 40.100899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814646, 33.871620, 39.811333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631775, 34.182625, 39.638607>,  <29.522053, 34.369228, 39.534973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631775, 34.182625, 39.638607>,  <29.814646, 33.871620, 39.811333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631775, 34.182625, 39.638607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765338, 0.591256, 0.254311,
		0.453043, -0.214219, -0.865368,
		-0.457176, 0.777513, -0.431814,
		29.494621, 34.415878, 39.509064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231041, 34.352600, 39.273235>,  <29.814646, 33.871620, 39.811333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231041, 34.352600, 39.273235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949596, 34.577526, 39.447014>,  <29.780731, 34.712482, 39.551281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.949596, 34.577526, 39.447014>,  <30.231041, 34.352600, 39.273235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949596, 34.577526, 39.447014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674824, 0.720282, 0.160642,
		-0.222590, 0.406201, -0.886258,
		-0.703609, 0.562311, 0.434442,
		29.738514, 34.746220, 39.577347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709631, 34.223522, 38.758190>,  <30.231041, 34.352600, 39.273235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709631, 34.223522, 38.758190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762186, 34.373550, 39.125244>,  <30.793718, 34.463566, 39.345478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762186, 34.373550, 39.125244>,  <30.709631, 34.223522, 38.758190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762186, 34.373550, 39.125244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921825, 0.294278, -0.252267,
		-0.364659, 0.879047, -0.307083,
		0.131387, 0.375068, 0.917639,
		30.801601, 34.486073, 39.400536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249191, 34.188259, 38.118767>,  <30.709631, 34.223522, 38.758190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249191, 34.188259, 38.118767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254490, 34.581291, 38.044617>,  <30.257669, 34.817108, 38.000126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.254490, 34.581291, 38.044617>,  <30.249191, 34.188259, 38.118767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254490, 34.581291, 38.044617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660865, 0.130524, 0.739068,
		0.750388, -0.132298, -0.647622,
		0.013247, 0.982579, -0.185375,
		30.258465, 34.876064, 37.989006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844130, 34.439259, 37.825447>,  <30.249191, 34.188259, 38.118767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844130, 34.439259, 37.825447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706516, 34.755707, 38.027740>,  <30.623949, 34.945576, 38.149117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.706516, 34.755707, 38.027740>,  <30.844130, 34.439259, 37.825447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706516, 34.755707, 38.027740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795587, -0.040453, 0.604488,
		0.498681, 0.610322, -0.615487,
		-0.344034, 0.791120, 0.505737,
		30.603306, 34.993042, 38.179462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442617, 34.533051, 38.111221>,  <30.844130, 34.439259, 37.825447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442617, 34.533051, 38.111221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208063, 34.812721, 38.274834>,  <31.067331, 34.980522, 38.373001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.208063, 34.812721, 38.274834>,  <31.442617, 34.533051, 38.111221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208063, 34.812721, 38.274834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634573, 0.082657, 0.768430,
		0.503460, 0.710155, -0.492147,
		-0.586384, 0.699177, 0.409031,
		31.032148, 35.022472, 38.397541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.804945, 35.254269, 38.231228>,  <31.442617, 34.533051, 38.111221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.804945, 35.254269, 38.231228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535543, 35.110630, 38.489666>,  <31.373901, 35.024448, 38.644730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535543, 35.110630, 38.489666>,  <31.804945, 35.254269, 38.231228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535543, 35.110630, 38.489666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712748, -0.083825, 0.696394,
		-0.195911, 0.929530, 0.312400,
		-0.673506, -0.359093, 0.646098,
		31.333492, 35.002903, 38.683495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425537, 35.801952, 38.094460>,  <31.804945, 35.254269, 38.231228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425537, 35.801952, 38.094460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229683, 35.638725, 38.402676>,  <32.112171, 35.540787, 38.587608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229683, 35.638725, 38.402676>,  <32.425537, 35.801952, 38.094460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229683, 35.638725, 38.402676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346263, -0.720050, -0.601357,
		0.800227, -0.561254, 0.211259,
		-0.489631, -0.408071, 0.770545,
		32.082794, 35.516304, 38.633839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111198, 35.828579, 37.880379>,  <32.425537, 35.801952, 38.094460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111198, 35.828579, 37.880379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442623, 36.051167, 37.905098>,  <33.641479, 36.184719, 37.919930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442623, 36.051167, 37.905098>,  <33.111198, 35.828579, 37.880379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442623, 36.051167, 37.905098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335834, -0.405637, -0.850103,
		-0.447990, 0.725120, -0.522978,
		0.828566, 0.556471, 0.061799,
		33.691193, 36.218109, 37.923637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258560, 36.153461, 37.206692>,  <33.111198, 35.828579, 37.880379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258560, 36.153461, 37.206692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602264, 36.110928, 37.406837>,  <33.808487, 36.085407, 37.526924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602264, 36.110928, 37.406837>,  <33.258560, 36.153461, 37.206692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602264, 36.110928, 37.406837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432267, -0.372086, -0.821399,
		0.273525, 0.922087, -0.273753,
		0.859261, -0.106339, 0.500363,
		33.860043, 36.079025, 37.556946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670620, 36.668705, 36.844593>,  <33.258560, 36.153461, 37.206692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670620, 36.668705, 36.844593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828735, 36.338810, 37.006359>,  <33.923603, 36.140873, 37.103420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828735, 36.338810, 37.006359>,  <33.670620, 36.668705, 36.844593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828735, 36.338810, 37.006359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346200, -0.274041, -0.897244,
		0.850820, 0.494677, 0.177201,
		0.395286, -0.824740, 0.404417,
		33.947323, 36.091389, 37.127686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475521, 36.669155, 36.774788>,  <33.670620, 36.668705, 36.844593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475521, 36.669155, 36.774788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292534, 36.314175, 36.797249>,  <34.182739, 36.101185, 36.810726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292534, 36.314175, 36.797249>,  <34.475521, 36.669155, 36.774788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292534, 36.314175, 36.797249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553519, -0.333617, -0.763097,
		0.695943, -0.318013, 0.643841,
		-0.457471, -0.887450, 0.056152,
		34.155293, 36.047939, 36.814095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967072, 35.968189, 36.986771>,  <34.475521, 36.669155, 36.774788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967072, 35.968189, 36.986771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670456, 35.938656, 36.720036>,  <34.492485, 35.920937, 36.559994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670456, 35.938656, 36.720036>,  <34.967072, 35.968189, 36.986771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670456, 35.938656, 36.720036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650509, -0.322369, -0.687689,
		-0.164192, -0.943730, 0.287079,
		-0.741538, -0.073835, -0.666835,
		34.447994, 35.916504, 36.519985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948570, 35.287148, 36.637470>,  <34.967072, 35.968189, 36.986771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948570, 35.287148, 36.637470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788666, 35.546818, 36.378624>,  <34.692722, 35.702621, 36.223316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788666, 35.546818, 36.378624>,  <34.948570, 35.287148, 36.637470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788666, 35.546818, 36.378624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561685, -0.384411, -0.732624,
		-0.724361, -0.656352, -0.210960,
		-0.399764, 0.649177, -0.647116,
		34.668736, 35.741570, 36.184490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020741, 34.993076, 35.944611>,  <34.948570, 35.287148, 36.637470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020741, 34.993076, 35.944611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937782, 35.367767, 35.831810>,  <34.888008, 35.592583, 35.764130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937782, 35.367767, 35.831810>,  <35.020741, 34.993076, 35.944611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937782, 35.367767, 35.831810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482771, -0.152717, -0.862329,
		-0.850835, -0.314985, -0.420553,
		-0.207395, 0.936730, -0.282002,
		34.875565, 35.648785, 35.747208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617664, 35.060066, 35.330719>,  <35.020741, 34.993076, 35.944611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617664, 35.060066, 35.330719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857136, 35.376854, 35.378670>,  <35.000816, 35.566929, 35.407440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857136, 35.376854, 35.378670>,  <34.617664, 35.060066, 35.330719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857136, 35.376854, 35.378670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485913, -0.240116, -0.840376,
		-0.636771, 0.561360, -0.528581,
		0.598674, 0.791972, 0.119873,
		35.036739, 35.614445, 35.414631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685993, 35.568230, 34.832535>,  <34.617664, 35.060066, 35.330719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685993, 35.568230, 34.832535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047165, 35.521507, 34.997982>,  <35.263866, 35.493473, 35.097252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047165, 35.521507, 34.997982>,  <34.685993, 35.568230, 34.832535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047165, 35.521507, 34.997982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362280, -0.310962, -0.878667,
		0.231257, 0.943217, -0.238457,
		0.902925, -0.116810, 0.413621,
		35.318043, 35.486465, 35.122066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155590, 35.939743, 34.494087>,  <34.685993, 35.568230, 34.832535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155590, 35.939743, 34.494087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415596, 35.690849, 34.668579>,  <35.571598, 35.541512, 34.773273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415596, 35.690849, 34.668579>,  <35.155590, 35.939743, 34.494087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415596, 35.690849, 34.668579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371374, -0.240724, -0.896735,
		0.662993, 0.744898, 0.074608,
		0.650016, -0.622237, 0.436234,
		35.610600, 35.504177, 34.799450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852242, 36.098648, 34.190834>,  <35.155590, 35.939743, 34.494087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852242, 36.098648, 34.190834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859756, 35.724060, 34.330929>,  <35.864265, 35.499306, 34.414986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859756, 35.724060, 34.330929>,  <35.852242, 36.098648, 34.190834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859756, 35.724060, 34.330929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404545, -0.313225, -0.859205,
		0.914325, 0.157826, 0.372961,
		0.018784, -0.936473, 0.350237,
		35.865391, 35.443119, 34.436001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493809, 35.869427, 34.022396>,  <35.852242, 36.098648, 34.190834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493809, 35.869427, 34.022396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310734, 35.521664, 34.096859>,  <36.200890, 35.313007, 34.141537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.310734, 35.521664, 34.096859>,  <36.493809, 35.869427, 34.022396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310734, 35.521664, 34.096859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331425, -0.361108, -0.871642,
		0.825032, -0.337246, 0.453418,
		-0.457690, -0.869406, 0.186153,
		36.173428, 35.260841, 34.152706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912582, 35.298126, 33.933525>,  <36.493809, 35.869427, 34.022396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912582, 35.298126, 33.933525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559441, 35.116207, 33.886665>,  <36.347557, 35.007053, 33.858551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559441, 35.116207, 33.886665>,  <36.912582, 35.298126, 33.933525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559441, 35.116207, 33.886665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317113, -0.393279, -0.863001,
		0.346420, -0.799055, 0.491431,
		-0.882855, -0.454800, -0.117151,
		36.294582, 34.979767, 33.851521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977207, 34.554153, 33.907871>,  <36.912582, 35.298126, 33.933525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977207, 34.554153, 33.907871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651722, 34.664997, 33.703491>,  <36.456429, 34.731503, 33.580864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651722, 34.664997, 33.703491>,  <36.977207, 34.554153, 33.907871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651722, 34.664997, 33.703491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288414, -0.570713, -0.768833,
		-0.504661, -0.772979, 0.384476,
		-0.813717, 0.277112, -0.510954,
		36.407608, 34.748131, 33.550205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617947, 33.998360, 33.697632>,  <36.977207, 34.554153, 33.907871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617947, 33.998360, 33.697632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478802, 34.264668, 33.433590>,  <36.395313, 34.424454, 33.275166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478802, 34.264668, 33.433590>,  <36.617947, 33.998360, 33.697632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478802, 34.264668, 33.433590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182309, -0.642605, -0.744192,
		-0.919649, -0.379220, 0.102163,
		-0.347863, 0.665770, -0.660107,
		36.374443, 34.464397, 33.235558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.236591, 33.635223, 33.235806>,  <36.617947, 33.998360, 33.697632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.236591, 33.635223, 33.235806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296783, 33.976753, 33.036469>,  <36.332897, 34.181671, 32.916866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.296783, 33.976753, 33.036469>,  <36.236591, 33.635223, 33.235806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296783, 33.976753, 33.036469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197554, -0.519882, -0.831080,
		-0.968674, 0.026609, -0.246907,
		0.150477, 0.853823, -0.498340,
		36.341927, 34.232899, 32.886967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683781, 33.736908, 32.649548>,  <36.236591, 33.635223, 33.235806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683781, 33.736908, 32.649548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998825, 33.960285, 32.545380>,  <36.187851, 34.094311, 32.482880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998825, 33.960285, 32.545380>,  <35.683781, 33.736908, 32.649548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998825, 33.960285, 32.545380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097402, -0.530159, -0.842285,
		-0.608430, 0.638025, -0.471951,
		0.787607, 0.558441, -0.260420,
		36.235107, 34.127819, 32.467255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558937, 33.923481, 31.870804>,  <35.683781, 33.736908, 32.649548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558937, 33.923481, 31.870804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951637, 33.971184, 31.930054>,  <36.187256, 33.999805, 31.965605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951637, 33.971184, 31.930054>,  <35.558937, 33.923481, 31.870804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951637, 33.971184, 31.930054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184070, -0.400249, -0.897730,
		-0.047776, 0.908613, -0.414898,
		0.981751, 0.119261, 0.148126,
		36.246162, 34.006962, 31.974491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813438, 34.139015, 31.253387>,  <35.558937, 33.923481, 31.870804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813438, 34.139015, 31.253387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134064, 34.016792, 31.458961>,  <36.326439, 33.943459, 31.582306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.134064, 34.016792, 31.458961>,  <35.813438, 34.139015, 31.253387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134064, 34.016792, 31.458961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343391, -0.468397, -0.814056,
		0.489466, 0.828999, -0.270525,
		0.801565, -0.305556, 0.513935,
		36.374535, 33.925125, 31.613142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338196, 34.301678, 30.904917>,  <35.813438, 34.139015, 31.253387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338196, 34.301678, 30.904917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507900, 34.029877, 31.144344>,  <36.609722, 33.866798, 31.288000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507900, 34.029877, 31.144344>,  <36.338196, 34.301678, 30.904917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507900, 34.029877, 31.144344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659457, -0.221158, -0.718474,
		0.620582, 0.699549, 0.354273,
		0.424258, -0.679500, 0.598570,
		36.635178, 33.826027, 31.323915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133892, 34.346973, 30.810328>,  <36.338196, 34.301678, 30.904917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133892, 34.346973, 30.810328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072227, 33.995529, 30.991117>,  <37.035229, 33.784664, 31.099592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072227, 33.995529, 30.991117>,  <37.133892, 34.346973, 30.810328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072227, 33.995529, 30.991117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789052, -0.384795, -0.478883,
		0.594669, 0.282807, 0.752588,
		-0.154161, -0.878608, 0.451976,
		37.025978, 33.731945, 31.126711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728893, 34.208641, 31.188705>,  <37.133892, 34.346973, 30.810328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728893, 34.208641, 31.188705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548378, 33.869541, 31.077229>,  <37.440071, 33.666080, 31.010342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.548378, 33.869541, 31.077229>,  <37.728893, 34.208641, 31.188705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548378, 33.869541, 31.077229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803448, -0.250079, -0.540307,
		0.388348, -0.467748, 0.793976,
		-0.451284, -0.847745, -0.278693,
		37.412994, 33.615219, 30.993620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220371, 33.746059, 31.109379>,  <37.728893, 34.208641, 31.188705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220371, 33.746059, 31.109379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935410, 33.560806, 30.898481>,  <37.764431, 33.449654, 30.771944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935410, 33.560806, 30.898481>,  <38.220371, 33.746059, 31.109379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935410, 33.560806, 30.898481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692734, -0.343938, -0.633897,
		0.112241, -0.816831, 0.565853,
		-0.712405, -0.463136, -0.527243,
		37.721687, 33.421867, 30.740309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571186, 33.068188, 30.932859>,  <38.220371, 33.746059, 31.109379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571186, 33.068188, 30.932859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248409, 33.141815, 30.708370>,  <38.054745, 33.185993, 30.573677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248409, 33.141815, 30.708370>,  <38.571186, 33.068188, 30.932859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248409, 33.141815, 30.708370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523516, -0.217044, -0.823907,
		-0.273467, -0.958650, 0.078777,
		-0.806937, 0.184071, -0.561223,
		38.006329, 33.197037, 30.540003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.620857, 32.562088, 30.527876>,  <38.571186, 33.068188, 30.932859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.620857, 32.562088, 30.527876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364632, 32.785629, 30.317213>,  <38.210896, 32.919754, 30.190815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364632, 32.785629, 30.317213>,  <38.620857, 32.562088, 30.527876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364632, 32.785629, 30.317213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555557, -0.136204, -0.820247,
		-0.530127, -0.818007, -0.223225,
		-0.640564, 0.558849, -0.526655,
		38.172462, 32.953285, 30.159216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.395504, 32.161221, 29.914413>,  <38.620857, 32.562088, 30.527876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.395504, 32.161221, 29.914413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346642, 32.551163, 29.839861>,  <38.317322, 32.785126, 29.795130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346642, 32.551163, 29.839861>,  <38.395504, 32.161221, 29.914413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346642, 32.551163, 29.839861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637498, -0.066863, -0.767545,
		-0.760706, -0.212580, -0.613299,
		-0.122158, 0.974853, -0.186382,
		38.309994, 32.843620, 29.783947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255054, 32.154839, 29.267450>,  <38.395504, 32.161221, 29.914413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255054, 32.154839, 29.267450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358311, 32.538975, 29.309601>,  <38.420265, 32.769459, 29.334890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358311, 32.538975, 29.309601>,  <38.255054, 32.154839, 29.267450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358311, 32.538975, 29.309601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410106, -0.010170, -0.911981,
		-0.874743, 0.278636, -0.396467,
		0.258143, 0.960343, 0.105374,
		38.435753, 32.827076, 29.341213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031551, 32.611088, 28.657230>,  <38.255054, 32.154839, 29.267450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031551, 32.611088, 28.657230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348026, 32.786266, 28.827980>,  <38.537910, 32.891373, 28.930429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348026, 32.786266, 28.827980>,  <38.031551, 32.611088, 28.657230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348026, 32.786266, 28.827980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475570, -0.001723, -0.879676,
		-0.384518, 0.898998, -0.209639,
		0.791188, 0.437949, 0.426874,
		38.585384, 32.917652, 28.956043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262833, 33.048470, 28.138693>,  <38.031551, 32.611088, 28.657230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262833, 33.048470, 28.138693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557518, 33.026596, 28.408289>,  <38.734329, 33.013470, 28.570047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557518, 33.026596, 28.408289>,  <38.262833, 33.048470, 28.138693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557518, 33.026596, 28.408289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661205, -0.150528, -0.734948,
		0.141646, 0.987092, -0.074738,
		0.736712, -0.054685, 0.673992,
		38.778530, 33.010189, 28.610487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674259, 33.502346, 27.895405>,  <38.262833, 33.048470, 28.138693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674259, 33.502346, 27.895405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900719, 33.286610, 28.144751>,  <39.036594, 33.157166, 28.294357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900719, 33.286610, 28.144751>,  <38.674259, 33.502346, 27.895405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900719, 33.286610, 28.144751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716136, -0.052662, -0.695971,
		0.408196, 0.840436, 0.356431,
		0.566149, -0.539346, 0.623363,
		39.070564, 33.124805, 28.331760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397408, 33.805534, 27.754332>,  <38.674259, 33.502346, 27.895405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397408, 33.805534, 27.754332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452545, 33.433949, 27.891748>,  <39.485630, 33.210999, 27.974199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452545, 33.433949, 27.891748>,  <39.397408, 33.805534, 27.754332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452545, 33.433949, 27.891748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618863, -0.190026, -0.762167,
		0.773309, 0.317669, 0.548707,
		0.137848, -0.928965, 0.343542,
		39.493900, 33.155258, 27.994812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072529, 33.631664, 27.665531>,  <39.397408, 33.805534, 27.754332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.072529, 33.631664, 27.665531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916058, 33.265362, 27.702133>,  <39.822174, 33.045582, 27.724094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916058, 33.265362, 27.702133>,  <40.072529, 33.631664, 27.665531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916058, 33.265362, 27.702133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527769, -0.304671, -0.792865,
		0.753949, -0.261859, 0.602488,
		-0.391179, -0.915754, 0.091505,
		39.798702, 32.990635, 27.729586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642597, 33.151581, 27.558641>,  <40.072529, 33.631664, 27.665531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642597, 33.151581, 27.558641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326927, 32.916794, 27.486340>,  <40.137527, 32.775921, 27.442959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326927, 32.916794, 27.486340>,  <40.642597, 33.151581, 27.558641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326927, 32.916794, 27.486340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478115, -0.402408, -0.780688,
		0.385503, -0.702520, 0.598209,
		-0.789172, -0.586971, -0.180756,
		40.090176, 32.740704, 27.432114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.805294, 32.501450, 27.577545>,  <40.642597, 33.151581, 27.558641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.805294, 32.501450, 27.577545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462414, 32.466125, 27.374601>,  <40.256687, 32.444931, 27.252834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.462414, 32.466125, 27.374601>,  <40.805294, 32.501450, 27.577545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462414, 32.466125, 27.374601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473705, -0.521697, -0.709532,
		-0.202031, -0.848548, 0.489029,
		-0.857197, -0.088308, -0.507360,
		40.205254, 32.439632, 27.222393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738640, 31.748016, 27.368811>,  <40.805294, 32.501450, 27.577545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738640, 31.748016, 27.368811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516613, 31.968794, 27.119890>,  <40.383396, 32.101261, 26.970537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.516613, 31.968794, 27.119890>,  <40.738640, 31.748016, 27.368811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.516613, 31.968794, 27.119890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406573, -0.472648, -0.781858,
		-0.725672, -0.686994, 0.037945,
		-0.555066, 0.551946, -0.622301,
		40.350094, 32.134377, 26.933201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375950, 31.225965, 26.947615>,  <40.738640, 31.748016, 27.368811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375950, 31.225965, 26.947615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393749, 31.584213, 26.770580>,  <40.404427, 31.799162, 26.664360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.393749, 31.584213, 26.770580>,  <40.375950, 31.225965, 26.947615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.393749, 31.584213, 26.770580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354785, -0.428313, -0.831069,
		-0.933888, -0.120046, -0.336810,
		0.044494, 0.895621, -0.442587,
		40.407097, 31.852900, 26.637804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248756, 31.038847, 26.226566>,  <40.375950, 31.225965, 26.947615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248756, 31.038847, 26.226566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411476, 31.403975, 26.212275>,  <40.509109, 31.623051, 26.203699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411476, 31.403975, 26.212275>,  <40.248756, 31.038847, 26.226566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411476, 31.403975, 26.212275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372341, -0.201400, -0.905980,
		-0.834190, 0.355251, -0.421809,
		0.406803, 0.912817, -0.035731,
		40.533516, 31.677820, 26.201555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105461, 31.177088, 25.558502>,  <40.248756, 31.038847, 26.226566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105461, 31.177088, 25.558502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397327, 31.412987, 25.696943>,  <40.572449, 31.554525, 25.780008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397327, 31.412987, 25.696943>,  <40.105461, 31.177088, 25.558502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397327, 31.412987, 25.696943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501562, -0.117557, -0.857097,
		-0.464783, 0.798987, -0.381572,
		0.729666, 0.589746, 0.346103,
		40.616226, 31.589911, 25.800774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380875, 31.385307, 24.906103>,  <40.105461, 31.177088, 25.558502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380875, 31.385307, 24.906103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663246, 31.485016, 25.171291>,  <40.832668, 31.544840, 25.330404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663246, 31.485016, 25.171291>,  <40.380875, 31.385307, 24.906103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663246, 31.485016, 25.171291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706302, -0.177804, -0.685218,
		-0.052925, 0.951972, -0.301577,
		0.705930, 0.249270, 0.662969,
		40.875027, 31.559797, 25.370182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026340, 31.766737, 24.533583>,  <40.380875, 31.385307, 24.906103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026340, 31.766737, 24.533583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134460, 31.583340, 24.872219>,  <41.199333, 31.473301, 25.075401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134460, 31.583340, 24.872219>,  <41.026340, 31.766737, 24.533583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134460, 31.583340, 24.872219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928638, -0.107917, -0.354943,
		0.254101, 0.882121, 0.396605,
		0.270302, -0.458494, 0.846593,
		41.215549, 31.445791, 25.126198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684566, 31.863762, 24.514898>,  <41.026340, 31.766737, 24.533583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684566, 31.863762, 24.514898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661564, 31.594421, 24.809732>,  <41.647762, 31.432817, 24.986633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661564, 31.594421, 24.809732>,  <41.684566, 31.863762, 24.514898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661564, 31.594421, 24.809732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956036, -0.249799, -0.153608,
		0.287555, 0.695846, 0.658111,
		-0.057508, -0.673349, 0.737085,
		41.644310, 31.392416, 25.030857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363113, 31.931383, 24.822973>,  <41.684566, 31.863762, 24.514898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363113, 31.931383, 24.822973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206898, 31.587257, 24.954021>,  <42.113167, 31.380781, 25.032650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206898, 31.587257, 24.954021>,  <42.363113, 31.931383, 24.822973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206898, 31.587257, 24.954021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788434, -0.496298, -0.363402,
		0.475237, 0.116382, 0.872127,
		-0.390541, -0.860316, 0.327618,
		42.089737, 31.329163, 25.052307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.771126, 31.652931, 25.275822>,  <42.363113, 31.931383, 24.822973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.771126, 31.652931, 25.275822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.588959, 31.331839, 25.121828>,  <42.479656, 31.139183, 25.029432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.588959, 31.331839, 25.121828>,  <42.771126, 31.652931, 25.275822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.588959, 31.331839, 25.121828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887847, -0.377601, -0.262954,
		0.065712, -0.461560, 0.884672,
		-0.455422, -0.802732, -0.384982,
		42.452332, 31.091019, 25.006332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.168774, 31.086422, 25.613209>,  <42.771126, 31.652931, 25.275822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.168774, 31.086422, 25.613209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965744, 30.968790, 25.289263>,  <42.843925, 30.898211, 25.094894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965744, 30.968790, 25.289263>,  <43.168774, 31.086422, 25.613209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965744, 30.968790, 25.289263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800745, -0.508003, -0.317395,
		-0.318073, -0.809598, 0.493335,
		-0.507579, -0.294081, -0.809864,
		42.813469, 30.880566, 25.046303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.263134, 30.461229, 25.647047>,  <43.168774, 31.086422, 25.613209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.263134, 30.461229, 25.647047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146263, 30.500643, 25.266537>,  <43.076141, 30.524292, 25.038231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.146263, 30.500643, 25.266537>,  <43.263134, 30.461229, 25.647047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.146263, 30.500643, 25.266537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807210, -0.508016, -0.300552,
		-0.512877, -0.855693, 0.068895,
		-0.292180, 0.098534, -0.951274,
		43.058609, 30.530203, 24.981155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.185917, 29.820528, 25.284456>,  <43.263134, 30.461229, 25.647047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.185917, 29.820528, 25.284456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230473, 30.091200, 24.993334>,  <43.257206, 30.253603, 24.818661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.230473, 30.091200, 24.993334>,  <43.185917, 29.820528, 25.284456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.230473, 30.091200, 24.993334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772492, -0.519683, -0.364946,
		-0.625178, -0.521571, -0.580616,
		0.111391, 0.676678, -0.727804,
		43.263889, 30.294203, 24.774992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.327320, 29.404900, 24.646515>,  <43.185917, 29.820528, 25.284456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.327320, 29.404900, 24.646515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453987, 29.775513, 24.565264>,  <43.529987, 29.997881, 24.516514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.453987, 29.775513, 24.565264>,  <43.327320, 29.404900, 24.646515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453987, 29.775513, 24.565264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832634, -0.374102, -0.408373,
		-0.454361, -0.039814, -0.889927,
		0.316664, 0.926533, -0.203128,
		43.548988, 30.053473, 24.504326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.699451, 29.375633, 24.133493>,  <43.327320, 29.404900, 24.646515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.699451, 29.375633, 24.133493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821445, 29.742846, 24.234848>,  <43.894642, 29.963173, 24.295660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.821445, 29.742846, 24.234848>,  <43.699451, 29.375633, 24.133493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.821445, 29.742846, 24.234848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901677, -0.192706, -0.387095,
		-0.306536, 0.346529, -0.886540,
		0.304981, 0.918031, 0.253386,
		43.912941, 30.018255, 24.310863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.057743, 29.633226, 23.541800>,  <43.699451, 29.375633, 24.133493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.057743, 29.633226, 23.541800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.163422, 29.887764, 23.831701>,  <44.226830, 30.040487, 24.005642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.163422, 29.887764, 23.831701>,  <44.057743, 29.633226, 23.541800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.163422, 29.887764, 23.831701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961326, -0.113138, -0.251101,
		-0.077789, 0.763064, -0.641625,
		0.264198, 0.636344, 0.724752,
		44.242680, 30.078667, 24.049128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.412762, 30.137112, 23.115549>,  <44.057743, 29.633226, 23.541800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.412762, 30.137112, 23.115549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.525902, 30.148127, 23.499056>,  <44.593784, 30.154736, 23.729160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.525902, 30.148127, 23.499056>,  <44.412762, 30.137112, 23.115549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.525902, 30.148127, 23.499056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949874, 0.130742, -0.283982,
		-0.133172, 0.991034, 0.010823,
		0.282851, 0.027538, 0.958769,
		44.610756, 30.156387, 23.786686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.741032, 30.825359, 23.272451>,  <44.412762, 30.137112, 23.115549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.741032, 30.825359, 23.272451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.909245, 30.550884, 23.509869>,  <45.010174, 30.386198, 23.652319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.909245, 30.550884, 23.509869>,  <44.741032, 30.825359, 23.272451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.909245, 30.550884, 23.509869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854015, 0.078540, -0.514285,
		0.306280, 0.723171, 0.619044,
		0.420536, -0.686189, 0.593544,
		45.035404, 30.345028, 23.687931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.336655, 31.107130, 23.607586>,  <44.741032, 30.825359, 23.272451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.336655, 31.107130, 23.607586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.399403, 30.714521, 23.563759>,  <45.437054, 30.478956, 23.537462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.399403, 30.714521, 23.563759>,  <45.336655, 31.107130, 23.607586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.399403, 30.714521, 23.563759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828916, 0.191166, -0.525694,
		0.536926, -0.008357, 0.843588,
		0.156872, -0.981522, -0.109569,
		45.446465, 30.420065, 23.530888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.760956, 31.147539, 24.172806>,  <45.336655, 31.107130, 23.607586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.760956, 31.147539, 24.172806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129879, 31.093498, 24.317638>,  <46.351231, 31.061073, 24.404537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129879, 31.093498, 24.317638>,  <45.760956, 31.147539, 24.172806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.129879, 31.093498, 24.317638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328392, -0.219970, -0.918571,
		0.203749, 0.966106, -0.158513,
		0.922304, -0.135104, 0.362080,
		46.406570, 31.052967, 24.426262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.225861, 31.660534, 23.794207>,  <45.760956, 31.147539, 24.172806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.225861, 31.660534, 23.794207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.462025, 31.369913, 23.934799>,  <46.603722, 31.195541, 24.019154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.462025, 31.369913, 23.934799>,  <46.225861, 31.660534, 23.794207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.462025, 31.369913, 23.934799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393047, -0.121529, -0.911452,
		0.704931, 0.676280, 0.213816,
		0.590412, -0.726551, 0.351479,
		46.639149, 31.151947, 24.040243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.972824, 31.693121, 23.584126>,  <46.225861, 31.660534, 23.794207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.972824, 31.693121, 23.584126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.854057, 31.311186, 23.588539>,  <46.782799, 31.082024, 23.591187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.854057, 31.311186, 23.588539>,  <46.972824, 31.693121, 23.584126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.854057, 31.311186, 23.588539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125053, -0.050335, -0.990873,
		0.946679, -0.292828, 0.134351,
		-0.296918, -0.954839, 0.011032,
		46.764980, 31.024734, 23.591848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.587044, 31.175028, 23.460442>,  <46.972824, 31.693121, 23.584126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.587044, 31.175028, 23.460442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.231426, 31.032379, 23.345602>,  <47.018055, 30.946789, 23.276699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.231426, 31.032379, 23.345602>,  <47.587044, 31.175028, 23.460442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.231426, 31.032379, 23.345602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401051, -0.304171, -0.864082,
		0.220826, -0.883345, 0.413446,
		-0.889041, -0.356624, -0.287098,
		46.964714, 30.925392, 23.259472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.633034, 30.469009, 23.301512>,  <47.587044, 31.175028, 23.460442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.633034, 30.469009, 23.301512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.336094, 30.646923, 23.101078>,  <47.157928, 30.753672, 22.980818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.336094, 30.646923, 23.101078>,  <47.633034, 30.469009, 23.301512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.336094, 30.646923, 23.101078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585523, 0.067114, -0.807873,
		-0.325700, -0.893119, -0.310254,
		-0.742349, 0.444785, -0.501083,
		47.113388, 30.780357, 22.950752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.166004, 29.978254, 23.779020>,  <47.633034, 30.469009, 23.301512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.166004, 29.978254, 23.779020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.164543, 30.377272, 23.807011>,  <47.163666, 30.616682, 23.823805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.164543, 30.377272, 23.807011>,  <47.166004, 29.978254, 23.779020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.164543, 30.377272, 23.807011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141604, -0.069789, 0.987460,
		0.989917, -0.006300, 0.141511,
		-0.003655, 0.997542, 0.069978,
		47.163448, 30.676535, 23.828005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.421532, 30.151430, 24.498453>,  <47.166004, 29.978254, 23.779020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.421532, 30.151430, 24.498453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.188511, 30.444513, 24.357729>,  <47.048698, 30.620363, 24.273294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.188511, 30.444513, 24.357729>,  <47.421532, 30.151430, 24.498453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.188511, 30.444513, 24.357729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189095, 0.298791, 0.935397,
		0.790490, 0.611445, -0.035511,
		-0.582554, 0.732706, -0.351813,
		47.013744, 30.664326, 24.252186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.548069, 30.759184, 24.897776>,  <47.421532, 30.151430, 24.498453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.548069, 30.759184, 24.897776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.195110, 30.854361, 24.735415>,  <46.983334, 30.911467, 24.637999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.195110, 30.854361, 24.735415>,  <47.548069, 30.759184, 24.897776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.195110, 30.854361, 24.735415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305031, 0.367535, 0.878564,
		0.358229, 0.899057, -0.251733,
		-0.882399, 0.237941, -0.405902,
		46.930389, 30.925743, 24.613644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.358242, 31.312607, 25.238310>,  <47.548069, 30.759184, 24.897776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.358242, 31.312607, 25.238310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.005608, 31.180437, 25.103476>,  <46.794025, 31.101135, 25.022575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.005608, 31.180437, 25.103476>,  <47.358242, 31.312607, 25.238310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.005608, 31.180437, 25.103476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376835, 0.062626, 0.924161,
		-0.284253, 0.941753, -0.179725,
		-0.881587, -0.330422, -0.337084,
		46.741131, 31.081310, 25.002350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.747738, 31.886272, 25.324722>,  <47.358242, 31.312607, 25.238310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.747738, 31.886272, 25.324722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.602631, 31.513521, 25.323877>,  <46.515568, 31.289871, 25.323370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.602631, 31.513521, 25.323877>,  <46.747738, 31.886272, 25.324722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.602631, 31.513521, 25.323877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492648, 0.189854, 0.849266,
		-0.791012, 0.309124, -0.527961,
		-0.362764, -0.931879, -0.002113,
		46.493801, 31.233957, 25.323244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.994259, 31.909031, 25.427299>,  <46.747738, 31.886272, 25.324722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.994259, 31.909031, 25.427299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.053459, 31.520891, 25.503735>,  <46.088982, 31.288008, 25.549595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.053459, 31.520891, 25.503735>,  <45.994259, 31.909031, 25.427299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.053459, 31.520891, 25.503735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683116, 0.039415, 0.729245,
		-0.715155, -0.238466, -0.657029,
		0.148003, -0.970351, 0.191088,
		46.097858, 31.229786, 25.561062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.338314, 31.781090, 25.694407>,  <45.994259, 31.909031, 25.427299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.338314, 31.781090, 25.694407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.561157, 31.458334, 25.772949>,  <45.694862, 31.264681, 25.820076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.561157, 31.458334, 25.772949>,  <45.338314, 31.781090, 25.694407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.561157, 31.458334, 25.772949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607676, -0.234946, 0.758638,
		-0.566005, -0.541965, -0.621218,
		0.557108, -0.806892, 0.196359,
		45.728291, 31.216267, 25.831858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.895863, 31.238010, 25.776871>,  <45.338314, 31.781090, 25.694407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.895863, 31.238010, 25.776871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230900, 31.155064, 25.979034>,  <45.431923, 31.105295, 26.100332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230900, 31.155064, 25.979034>,  <44.895863, 31.238010, 25.776871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.230900, 31.155064, 25.979034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538573, -0.468468, 0.700341,
		0.091542, -0.858800, -0.504066,
		0.837591, -0.207366, 0.505411,
		45.482178, 31.092854, 26.130657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.852146, 30.549812, 26.064653>,  <44.895863, 31.238010, 25.776871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.852146, 30.549812, 26.064653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.129543, 30.700689, 26.310186>,  <45.295982, 30.791216, 26.457506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.129543, 30.700689, 26.310186>,  <44.852146, 30.549812, 26.064653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.129543, 30.700689, 26.310186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447566, -0.442106, 0.777320,
		0.564580, -0.813798, -0.137779,
		0.693494, 0.377194, 0.613833,
		45.337593, 30.813847, 26.494337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.854340, 30.055460, 26.671385>,  <44.852146, 30.549812, 26.064653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.854340, 30.055460, 26.671385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059372, 30.370783, 26.807522>,  <45.182392, 30.559977, 26.889204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059372, 30.370783, 26.807522>,  <44.854340, 30.055460, 26.671385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.059372, 30.370783, 26.807522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357047, -0.164796, 0.919434,
		0.780886, -0.592799, 0.196994,
		0.512576, 0.788309, 0.340344,
		45.213146, 30.607275, 26.909624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.334763, 29.750683, 27.164146>,  <44.854340, 30.055460, 26.671385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.334763, 29.750683, 27.164146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.283901, 30.138083, 27.249790>,  <45.253384, 30.370522, 27.301176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.283901, 30.138083, 27.249790>,  <45.334763, 29.750683, 27.164146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.283901, 30.138083, 27.249790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261919, -0.240983, 0.934519,
		0.956677, 0.062744, 0.284309,
		-0.127149, 0.968499, 0.214109,
		45.245758, 30.428633, 27.314022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.496090, 29.874722, 27.897835>,  <45.334763, 29.750683, 27.164146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.496090, 29.874722, 27.897835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.270809, 30.192663, 27.807491>,  <45.135643, 30.383429, 27.753284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.270809, 30.192663, 27.807491>,  <45.496090, 29.874722, 27.897835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.270809, 30.192663, 27.807491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400586, -0.023568, 0.915956,
		0.722730, 0.606341, 0.331682,
		-0.563199, 0.794855, -0.225858,
		45.101849, 30.431120, 27.739735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.544601, 30.234957, 28.470701>,  <45.496090, 29.874722, 27.897835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.544601, 30.234957, 28.470701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.207027, 30.382921, 28.315298>,  <45.004482, 30.471701, 28.222055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.207027, 30.382921, 28.315298>,  <45.544601, 30.234957, 28.470701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.207027, 30.382921, 28.315298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402728, 0.041545, 0.914376,
		0.354380, 0.928137, 0.113913,
		-0.843934, 0.369912, -0.388510,
		44.953846, 30.493895, 28.198746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.285496, 30.727100, 28.960743>,  <45.544601, 30.234957, 28.470701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.285496, 30.727100, 28.960743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.968307, 30.626356, 28.738838>,  <44.777992, 30.565910, 28.605696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.968307, 30.626356, 28.738838>,  <45.285496, 30.727100, 28.960743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.968307, 30.626356, 28.738838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576048, 0.013432, 0.817305,
		-0.198394, 0.967671, -0.155735,
		-0.792974, -0.251859, -0.554760,
		44.730415, 30.550798, 28.572411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707973, 31.284863, 29.027714>,  <45.285496, 30.727100, 28.960743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707973, 31.284863, 29.027714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523743, 30.948513, 28.914013>,  <44.413204, 30.746702, 28.845793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523743, 30.948513, 28.914013>,  <44.707973, 31.284863, 29.027714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.523743, 30.948513, 28.914013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566859, 0.032219, 0.823185,
		-0.683037, 0.540270, -0.491496,
		-0.460578, -0.840874, -0.284250,
		44.385571, 30.696251, 28.828737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.900475, 31.365067, 29.094906>,  <44.707973, 31.284863, 29.027714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.900475, 31.365067, 29.094906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966644, 30.971119, 29.074232>,  <44.006348, 30.734751, 29.061829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.966644, 30.971119, 29.074232>,  <43.900475, 31.365067, 29.094906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966644, 30.971119, 29.074232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445985, -0.121448, 0.886763,
		-0.879620, -0.123645, -0.459326,
		0.165428, -0.984867, -0.051684,
		44.016273, 30.675659, 29.058727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279167, 30.936749, 29.034050>,  <43.900475, 31.365067, 29.094906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279167, 30.936749, 29.034050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574875, 30.760479, 29.237732>,  <43.752300, 30.654718, 29.359941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574875, 30.760479, 29.237732>,  <43.279167, 30.936749, 29.034050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574875, 30.760479, 29.237732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517147, 0.112810, 0.848430,
		-0.431322, -0.890552, -0.144495,
		0.739270, -0.440671, 0.509203,
		43.796658, 30.628277, 29.390493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000282, 30.297709, 29.263378>,  <43.279167, 30.936749, 29.034050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000282, 30.297709, 29.263378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.280270, 30.436016, 29.513332>,  <43.448261, 30.519001, 29.663305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.280270, 30.436016, 29.513332>,  <43.000282, 30.297709, 29.263378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280270, 30.436016, 29.513332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687103, 0.087442, 0.721279,
		0.194756, -0.934235, 0.298788,
		0.699971, 0.345771, 0.624886,
		43.490261, 30.539747, 29.700798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003517, 29.942190, 29.940193>,  <43.000282, 30.297709, 29.263378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003517, 29.942190, 29.940193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157803, 30.304157, 30.012133>,  <43.250374, 30.521338, 30.055296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157803, 30.304157, 30.012133>,  <43.003517, 29.942190, 29.940193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157803, 30.304157, 30.012133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684027, 0.149673, 0.713936,
		0.619136, -0.398397, 0.676720,
		0.385717, 0.904919, 0.179847,
		43.273518, 30.575632, 30.066086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930138, 30.012268, 30.649296>,  <43.003517, 29.942190, 29.940193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930138, 30.012268, 30.649296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015060, 30.380178, 30.517275>,  <43.066013, 30.600925, 30.438063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.015060, 30.380178, 30.517275>,  <42.930138, 30.012268, 30.649296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.015060, 30.380178, 30.517275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670358, 0.382835, 0.635655,
		0.711016, 0.086296, 0.697860,
		0.212311, 0.919778, -0.330051,
		43.078754, 30.656113, 30.418259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.788940, 30.456230, 31.203220>,  <42.930138, 30.012268, 30.649296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.788940, 30.456230, 31.203220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.820049, 30.737280, 30.920301>,  <42.838715, 30.905909, 30.750549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.820049, 30.737280, 30.920301>,  <42.788940, 30.456230, 31.203220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.820049, 30.737280, 30.920301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724910, 0.526905, 0.443708,
		0.684439, 0.478218, 0.550319,
		0.077776, 0.702623, -0.707299,
		42.843384, 30.948067, 30.708111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.806530, 31.126272, 31.516706>,  <42.788940, 30.456230, 31.203220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.806530, 31.126272, 31.516706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688194, 31.212963, 31.144575>,  <42.617191, 31.264977, 30.921297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688194, 31.212963, 31.144575>,  <42.806530, 31.126272, 31.516706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688194, 31.212963, 31.144575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709020, 0.602832, 0.365902,
		0.640130, 0.767870, -0.024682,
		-0.295844, 0.216725, -0.930326,
		42.599442, 31.277981, 30.865477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840889, 31.843117, 31.419376>,  <42.806530, 31.126272, 31.516706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.840889, 31.843117, 31.419376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594151, 31.740740, 31.121655>,  <42.446106, 31.679314, 30.943022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594151, 31.740740, 31.121655>,  <42.840889, 31.843117, 31.419376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594151, 31.740740, 31.121655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545657, 0.820574, 0.170048,
		0.567236, 0.511030, -0.645826,
		-0.616848, -0.255942, -0.744307,
		42.409096, 31.663958, 30.898363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.830730, 32.448334, 30.822723>,  <42.840889, 31.843117, 31.419376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.830730, 32.448334, 30.822723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482868, 32.253590, 30.790062>,  <42.274151, 32.136745, 30.770466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482868, 32.253590, 30.790062>,  <42.830730, 32.448334, 30.822723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.482868, 32.253590, 30.790062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493657, 0.857390, 0.145550,
		-0.000855, 0.166886, -0.985976,
		-0.869656, -0.486859, -0.081652,
		42.221970, 32.107533, 30.765566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.300617, 32.705845, 30.244762>,  <42.830730, 32.448334, 30.822723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.300617, 32.705845, 30.244762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072727, 32.519211, 30.515381>,  <41.935993, 32.407230, 30.677752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.072727, 32.519211, 30.515381>,  <42.300617, 32.705845, 30.244762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.072727, 32.519211, 30.515381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525181, 0.839894, 0.136976,
		-0.632139, -0.277271, -0.723548,
		-0.569725, -0.466582, 0.676547,
		41.901810, 32.379238, 30.718346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583385, 33.057114, 30.156254>,  <42.300617, 32.705845, 30.244762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583385, 33.057114, 30.156254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565617, 32.866886, 30.507677>,  <41.554955, 32.752750, 30.718531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.565617, 32.866886, 30.507677>,  <41.583385, 33.057114, 30.156254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.565617, 32.866886, 30.507677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648155, 0.682929, 0.336902,
		-0.760212, -0.554474, -0.338581,
		-0.044423, -0.475570, 0.878556,
		41.552288, 32.724216, 30.771244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938217, 33.239624, 30.365726>,  <41.583385, 33.057114, 30.156254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938217, 33.239624, 30.365726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111492, 33.096054, 30.696426>,  <41.215458, 33.009911, 30.894846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.111492, 33.096054, 30.696426>,  <40.938217, 33.239624, 30.365726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111492, 33.096054, 30.696426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573688, 0.597669, 0.560067,
		-0.695146, -0.716913, 0.052994,
		0.433192, -0.358926, 0.826751,
		41.241451, 32.988377, 30.944452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405407, 33.029259, 30.840466>,  <40.938217, 33.239624, 30.365726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405407, 33.029259, 30.840466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718262, 33.106750, 31.077358>,  <40.905975, 33.153244, 31.219494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.718262, 33.106750, 31.077358>,  <40.405407, 33.029259, 30.840466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.718262, 33.106750, 31.077358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591135, 0.531249, 0.606905,
		-0.197047, -0.824769, 0.530027,
		0.782133, 0.193729, 0.592231,
		40.952900, 33.164867, 31.255028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065742, 33.009167, 31.504835>,  <40.405407, 33.029259, 30.840466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065742, 33.009167, 31.504835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408188, 33.184628, 31.614122>,  <40.613655, 33.289906, 31.679695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.408188, 33.184628, 31.614122>,  <40.065742, 33.009167, 31.504835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.408188, 33.184628, 31.614122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505183, 0.598991, 0.621289,
		0.108875, -0.669921, 0.734406,
		0.856117, 0.438652, 0.273218,
		40.665024, 33.316223, 31.696087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199814, 32.985382, 32.309605>,  <40.065742, 33.009167, 31.504835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199814, 32.985382, 32.309605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412453, 33.294594, 32.171131>,  <40.540035, 33.480122, 32.088047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412453, 33.294594, 32.171131>,  <40.199814, 32.985382, 32.309605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412453, 33.294594, 32.171131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341018, 0.569460, 0.747946,
		0.775317, -0.279549, 0.566336,
		0.531593, 0.773025, -0.346181,
		40.571930, 33.526501, 32.067276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473927, 33.209366, 32.966141>,  <40.199814, 32.985382, 32.309605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473927, 33.209366, 32.966141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486897, 33.533508, 32.732124>,  <40.494678, 33.727993, 32.591713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486897, 33.533508, 32.732124>,  <40.473927, 33.209366, 32.966141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486897, 33.533508, 32.732124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420584, 0.542061, 0.727515,
		0.906674, 0.222471, 0.358398,
		0.032423, 0.810356, -0.585041,
		40.496624, 33.776615, 32.556614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647957, 33.797752, 33.444546>,  <40.473927, 33.209366, 32.966141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647957, 33.797752, 33.444546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520180, 33.990746, 33.118317>,  <40.443512, 34.106541, 32.922577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.520180, 33.990746, 33.118317>,  <40.647957, 33.797752, 33.444546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520180, 33.990746, 33.118317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436270, 0.689150, 0.578568,
		0.841203, 0.540633, -0.009654,
		-0.319446, 0.482481, -0.815577,
		40.424347, 34.135490, 32.873642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878498, 34.474220, 33.547810>,  <40.647957, 33.797752, 33.444546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878498, 34.474220, 33.547810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598625, 34.530716, 33.267666>,  <40.430702, 34.564613, 33.099579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.598625, 34.530716, 33.267666>,  <40.878498, 34.474220, 33.547810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598625, 34.530716, 33.267666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476851, 0.637659, 0.604983,
		0.532036, 0.757260, -0.378807,
		-0.699679, 0.141238, -0.700358,
		40.388721, 34.573086, 33.057560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.795013, 35.214756, 33.439503>,  <40.878498, 34.474220, 33.547810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.795013, 35.214756, 33.439503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455605, 35.028561, 33.338840>,  <40.251961, 34.916843, 33.278442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455605, 35.028561, 33.338840>,  <40.795013, 35.214756, 33.439503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455605, 35.028561, 33.338840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495802, 0.533185, 0.685488,
		-0.184908, 0.706424, -0.683209,
		-0.848522, -0.465488, -0.251656,
		40.201050, 34.888912, 33.263344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208363, 35.704269, 33.377563>,  <40.795013, 35.214756, 33.439503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208363, 35.704269, 33.377563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036770, 35.347775, 33.436436>,  <39.933815, 35.133877, 33.471760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.036770, 35.347775, 33.436436>,  <40.208363, 35.704269, 33.377563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036770, 35.347775, 33.436436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680875, 0.426099, 0.595691,
		-0.593618, 0.155330, -0.789614,
		-0.428982, -0.891242, 0.147180,
		39.908073, 35.080402, 33.480591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527508, 35.912842, 33.578743>,  <40.208363, 35.704269, 33.377563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527508, 35.912842, 33.578743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553925, 35.523251, 33.665466>,  <39.569775, 35.289497, 33.717499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553925, 35.523251, 33.665466>,  <39.527508, 35.912842, 33.578743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553925, 35.523251, 33.665466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609556, 0.132644, 0.781567,
		-0.789988, -0.183771, -0.584934,
		0.066042, -0.973978, 0.216806,
		39.573738, 35.231056, 33.730507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931534, 35.761177, 33.686291>,  <39.527508, 35.912842, 33.578743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931534, 35.761177, 33.686291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123192, 35.468513, 33.880238>,  <39.238186, 35.292915, 33.996605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123192, 35.468513, 33.880238>,  <38.931534, 35.761177, 33.686291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123192, 35.468513, 33.880238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536662, 0.192925, 0.821446,
		-0.694561, -0.653801, -0.300215,
		0.479144, -0.731658, 0.484868,
		39.266933, 35.249016, 34.025700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457230, 35.374336, 34.022102>,  <38.931534, 35.761177, 33.686291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457230, 35.374336, 34.022102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785046, 35.270111, 34.226242>,  <38.981735, 35.207577, 34.348728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785046, 35.270111, 34.226242>,  <38.457230, 35.374336, 34.022102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785046, 35.270111, 34.226242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495217, 0.126026, 0.859580,
		-0.288296, -0.957195, -0.025754,
		0.819540, -0.260567, 0.510352,
		39.030907, 35.191940, 34.379349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.155132, 34.911358, 34.486576>,  <38.457230, 35.374336, 34.022102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.155132, 34.911358, 34.486576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507988, 35.008083, 34.648243>,  <38.719704, 35.066120, 34.745243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507988, 35.008083, 34.648243>,  <38.155132, 34.911358, 34.486576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507988, 35.008083, 34.648243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413170, -0.014617, 0.910537,
		0.226089, -0.970212, 0.087016,
		0.882142, 0.241815, 0.404167,
		38.772629, 35.080627, 34.769493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198586, 34.535091, 35.014793>,  <38.155132, 34.911358, 34.486576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198586, 34.535091, 35.014793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467999, 34.819820, 35.094452>,  <38.629646, 34.990658, 35.142246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467999, 34.819820, 35.094452>,  <38.198586, 34.535091, 35.014793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467999, 34.819820, 35.094452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353830, 0.073941, 0.932382,
		0.648967, -0.698454, 0.301667,
		0.673532, 0.711825, 0.199149,
		38.670059, 35.033367, 35.154198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361271, 34.411942, 35.683426>,  <38.198586, 34.535091, 35.014793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.361271, 34.411942, 35.683426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503246, 34.781940, 35.629166>,  <38.588432, 35.003941, 35.596611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503246, 34.781940, 35.629166>,  <38.361271, 34.411942, 35.683426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503246, 34.781940, 35.629166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224725, 0.225258, 0.948028,
		0.907479, -0.306007, 0.287822,
		0.354937, 0.924997, -0.135649,
		38.609726, 35.059441, 35.588470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823807, 34.058109, 35.407219>,  <38.361271, 34.411942, 35.683426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823807, 34.058109, 35.407219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006359, 33.933460, 35.740593>,  <38.115891, 33.858669, 35.940617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006359, 33.933460, 35.740593>,  <37.823807, 34.058109, 35.407219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006359, 33.933460, 35.740593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526978, -0.660060, -0.535365,
		0.716948, 0.683529, -0.137017,
		0.456377, -0.311624, 0.833433,
		38.143272, 33.839973, 35.990623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306259, 33.829624, 35.144459>,  <37.823807, 34.058109, 35.407219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306259, 33.829624, 35.144459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350979, 33.661240, 35.504524>,  <38.377811, 33.560207, 35.720562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.350979, 33.661240, 35.504524>,  <38.306259, 33.829624, 35.144459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350979, 33.661240, 35.504524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519434, -0.747482, -0.414075,
		0.847166, 0.513866, 0.135098,
		0.111796, -0.420965, 0.900161,
		38.384518, 33.534950, 35.774574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020332, 33.572155, 35.230560>,  <38.306259, 33.829624, 35.144459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020332, 33.572155, 35.230560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845245, 33.360912, 35.521629>,  <38.740192, 33.234169, 35.696270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845245, 33.360912, 35.521629>,  <39.020332, 33.572155, 35.230560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845245, 33.360912, 35.521629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613943, -0.766827, -0.187217,
		0.656871, 0.364804, 0.659877,
		-0.437714, -0.528105, 0.727675,
		38.713932, 33.202480, 35.739933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.488224, 33.358093, 35.681664>,  <39.020332, 33.572155, 35.230560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.488224, 33.358093, 35.681664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183323, 33.104073, 35.731770>,  <39.000381, 32.951660, 35.761833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183323, 33.104073, 35.731770>,  <39.488224, 33.358093, 35.681664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183323, 33.104073, 35.731770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635418, -0.771015, -0.042188,
		0.123372, 0.047437, 0.991226,
		-0.762249, -0.635048, 0.125264,
		38.954647, 32.913559, 35.769348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664917, 32.953663, 36.115265>,  <39.488224, 33.358093, 35.681664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664917, 32.953663, 36.115265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365372, 32.723812, 35.983196>,  <39.185646, 32.585903, 35.903957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365372, 32.723812, 35.983196>,  <39.664917, 32.953663, 36.115265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365372, 32.723812, 35.983196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608081, -0.793871, 0.002460,
		-0.263524, -0.198927, 0.943919,
		-0.748861, -0.574628, -0.330168,
		39.140713, 32.551422, 35.884148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658428, 32.332825, 36.561829>,  <39.664917, 32.953663, 36.115265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658428, 32.332825, 36.561829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485516, 32.265182, 36.207531>,  <39.381767, 32.224598, 35.994953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485516, 32.265182, 36.207531>,  <39.658428, 32.332825, 36.561829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485516, 32.265182, 36.207531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635146, -0.754352, -0.165960,
		-0.640095, -0.634316, 0.433500,
		-0.432282, -0.169105, -0.885740,
		39.355831, 32.214451, 35.941811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.824619, 31.688723, 36.408413>,  <39.658428, 32.332825, 36.561829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.824619, 31.688723, 36.408413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722713, 31.798752, 36.037590>,  <39.661572, 31.864769, 35.815098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722713, 31.798752, 36.037590>,  <39.824619, 31.688723, 36.408413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722713, 31.798752, 36.037590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642161, -0.668656, -0.374871,
		-0.722998, -0.690822, -0.006294,
		-0.254761, 0.275073, -0.927056,
		39.646286, 31.881273, 35.759472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737335, 31.075939, 35.898663>,  <39.824619, 31.688723, 36.408413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737335, 31.075939, 35.898663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819241, 31.389626, 35.664371>,  <39.868382, 31.577837, 35.523796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819241, 31.389626, 35.664371>,  <39.737335, 31.075939, 35.898663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819241, 31.389626, 35.664371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730398, -0.520785, -0.441929,
		-0.651606, -0.337326, -0.679426,
		0.204761, 0.784216, -0.585729,
		39.880669, 31.624889, 35.488651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602821, 30.835197, 35.172127>,  <39.737335, 31.075939, 35.898663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602821, 30.835197, 35.172127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816654, 31.173233, 35.175026>,  <39.944954, 31.376055, 35.176765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816654, 31.173233, 35.175026>,  <39.602821, 30.835197, 35.172127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816654, 31.173233, 35.175026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627623, -0.391245, -0.673065,
		-0.565965, 0.364353, -0.739548,
		0.534578, 0.845088, 0.007245,
		39.977028, 31.426760, 35.177200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779022, 30.832649, 34.456966>,  <39.602821, 30.835197, 35.172127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779022, 30.832649, 34.456966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015350, 31.096540, 34.642738>,  <40.157146, 31.254875, 34.754200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015350, 31.096540, 34.642738>,  <39.779022, 30.832649, 34.456966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015350, 31.096540, 34.642738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791527, -0.362478, -0.492030,
		-0.156260, 0.658309, -0.736351,
		0.590819, 0.659727, 0.464428,
		40.192596, 31.294458, 34.782066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109123, 31.255836, 33.960651>,  <39.779022, 30.832649, 34.456966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109123, 31.255836, 33.960651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332443, 31.270777, 34.292171>,  <40.466434, 31.279741, 34.491081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332443, 31.270777, 34.292171>,  <40.109123, 31.255836, 33.960651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332443, 31.270777, 34.292171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808148, -0.250380, -0.533109,
		0.187602, 0.967427, -0.169973,
		0.558302, 0.037351, 0.828796,
		40.499935, 31.281982, 34.540810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.571136, 31.703009, 33.773113>,  <40.109123, 31.255836, 33.960651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.571136, 31.703009, 33.773113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729206, 31.478971, 34.064354>,  <40.824047, 31.344549, 34.239098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.729206, 31.478971, 34.064354>,  <40.571136, 31.703009, 33.773113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.729206, 31.478971, 34.064354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790995, -0.195543, -0.579733,
		0.467079, 0.805022, 0.365755,
		0.395177, -0.560091, 0.728103,
		40.847759, 31.310944, 34.282784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.287365, 31.880320, 33.799831>,  <40.571136, 31.703009, 33.773113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.287365, 31.880320, 33.799831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269970, 31.537056, 34.004448>,  <41.259533, 31.331097, 34.127216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269970, 31.537056, 34.004448>,  <41.287365, 31.880320, 33.799831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269970, 31.537056, 34.004448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922719, -0.230799, -0.308743,
		0.383013, 0.458578, 0.801878,
		-0.043489, -0.858160, 0.511537,
		41.256924, 31.279608, 34.157909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.965000, 31.713545, 34.113838>,  <41.287365, 31.880320, 33.799831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.965000, 31.713545, 34.113838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789894, 31.354437, 34.133308>,  <41.684830, 31.138973, 34.144993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.789894, 31.354437, 34.133308>,  <41.965000, 31.713545, 34.113838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789894, 31.354437, 34.133308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852005, -0.431528, -0.296430,
		0.287132, -0.088292, 0.953813,
		-0.437769, -0.897768, 0.048680,
		41.658562, 31.085106, 34.147911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.559261, 31.211340, 34.235035>,  <41.965000, 31.713545, 34.113838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.559261, 31.211340, 34.235035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.265514, 30.985060, 34.084999>,  <42.089268, 30.849291, 33.994980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.265514, 30.985060, 34.084999>,  <42.559261, 31.211340, 34.235035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.265514, 30.985060, 34.084999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674120, -0.543413, -0.500265,
		0.079174, -0.620230, 0.780414,
		-0.734366, -0.565701, -0.375085,
		42.045204, 30.815350, 33.972473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808678, 30.581146, 34.278690>,  <42.559261, 31.211340, 34.235035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808678, 30.581146, 34.278690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528431, 30.556684, 33.994324>,  <42.360283, 30.542007, 33.823704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528431, 30.556684, 33.994324>,  <42.808678, 30.581146, 34.278690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528431, 30.556684, 33.994324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559302, -0.665743, -0.493931,
		-0.443079, -0.743671, 0.500633,
		-0.700615, -0.061155, -0.710914,
		42.318245, 30.538338, 33.781048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.822239, 29.842779, 34.066761>,  <42.808678, 30.581146, 34.278690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.822239, 29.842779, 34.066761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642563, 30.046936, 33.773441>,  <42.534760, 30.169430, 33.597450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.642563, 30.046936, 33.773441>,  <42.822239, 29.842779, 34.066761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.642563, 30.046936, 33.773441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533877, -0.504779, -0.678361,
		-0.716386, -0.696203, -0.045747,
		-0.449185, 0.510391, -0.733303,
		42.507809, 30.200054, 33.553452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630234, 29.379883, 33.685478>,  <42.822239, 29.842779, 34.066761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630234, 29.379883, 33.685478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634239, 29.681177, 33.422409>,  <42.636642, 29.861954, 33.264568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634239, 29.681177, 33.422409>,  <42.630234, 29.379883, 33.685478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634239, 29.681177, 33.422409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419090, -0.600315, -0.681164,
		-0.907889, -0.268804, -0.321685,
		0.010013, 0.753237, -0.657673,
		42.637241, 29.907148, 33.225105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355446, 29.144823, 33.141369>,  <42.630234, 29.379883, 33.685478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355446, 29.144823, 33.141369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548176, 29.460672, 32.989403>,  <42.663815, 29.650183, 32.898224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548176, 29.460672, 32.989403>,  <42.355446, 29.144823, 33.141369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548176, 29.460672, 32.989403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359205, -0.573443, -0.736298,
		-0.799258, 0.218302, -0.559938,
		0.481828, 0.789625, -0.379914,
		42.692722, 29.697559, 32.875427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342918, 29.029770, 32.437756>,  <42.355446, 29.144823, 33.141369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342918, 29.029770, 32.437756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.637554, 29.299187, 32.462311>,  <42.814335, 29.460836, 32.477043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.637554, 29.299187, 32.462311>,  <42.342918, 29.029770, 32.437756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.637554, 29.299187, 32.462311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497130, -0.477642, -0.724376,
		-0.458576, 0.564090, -0.686666,
		0.736594, 0.673543, 0.061391,
		42.858532, 29.501249, 32.480728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.604923, 29.169750, 31.722609>,  <42.342918, 29.029770, 32.437756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.604923, 29.169750, 31.722609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900063, 29.302050, 31.957956>,  <43.077148, 29.381430, 32.099167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.900063, 29.302050, 31.957956>,  <42.604923, 29.169750, 31.722609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.900063, 29.302050, 31.957956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671766, -0.275127, -0.687776,
		-0.065604, 0.902724, -0.425189,
		0.737852, 0.330748, 0.588370,
		43.121418, 29.401274, 32.134468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.086163, 29.760902, 31.355246>,  <42.604923, 29.169750, 31.722609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.086163, 29.760902, 31.355246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259579, 29.548576, 31.646526>,  <43.363628, 29.421181, 31.821295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259579, 29.548576, 31.646526>,  <43.086163, 29.760902, 31.355246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259579, 29.548576, 31.646526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614944, -0.416420, -0.669655,
		0.658700, 0.738127, 0.145885,
		0.433541, -0.530813, 0.728203,
		43.389641, 29.389332, 31.864986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.780220, 29.833109, 31.201988>,  <43.086163, 29.760902, 31.355246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.780220, 29.833109, 31.201988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771511, 29.511477, 31.439636>,  <43.766285, 29.318497, 31.582226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.771511, 29.511477, 31.439636>,  <43.780220, 29.833109, 31.201988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.771511, 29.511477, 31.439636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621754, -0.476253, -0.621776,
		0.782910, 0.355859, 0.510310,
		-0.021773, -0.804082, 0.594120,
		43.764980, 29.270252, 31.617872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.525978, 29.599318, 31.377390>,  <43.780220, 29.833109, 31.201988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.525978, 29.599318, 31.377390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252983, 29.306959, 31.378380>,  <44.089188, 29.131544, 31.378973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.252983, 29.306959, 31.378380>,  <44.525978, 29.599318, 31.377390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.252983, 29.306959, 31.378380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602676, -0.564669, -0.563853,
		0.413515, -0.383330, 0.825871,
		-0.682486, -0.730895, 0.002476,
		44.048237, 29.087690, 31.379122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.857338, 28.928261, 31.588150>,  <44.525978, 29.599318, 31.377390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.857338, 28.928261, 31.588150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531754, 28.875528, 31.361843>,  <44.336403, 28.843889, 31.226059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.531754, 28.875528, 31.361843>,  <44.857338, 28.928261, 31.588150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531754, 28.875528, 31.361843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554886, -0.464742, -0.690012,
		-0.171971, -0.875577, 0.451432,
		-0.813958, -0.131832, -0.565768,
		44.287567, 28.835979, 31.192112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.115990, 28.324121, 31.194626>,  <44.857338, 28.928261, 31.588150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.115990, 28.324121, 31.194626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.787361, 28.457075, 31.009352>,  <44.590183, 28.536848, 30.898188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.787361, 28.457075, 31.009352>,  <45.115990, 28.324121, 31.194626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.787361, 28.457075, 31.009352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466256, -0.075774, -0.881399,
		-0.328062, -0.940094, -0.092724,
		-0.821572, 0.332387, -0.463183,
		44.540890, 28.556791, 30.870398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.925858, 27.803585, 30.710815>,  <45.115990, 28.324121, 31.194626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.925858, 27.803585, 30.710815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.767303, 28.145147, 30.575924>,  <44.672169, 28.350084, 30.494989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.767303, 28.145147, 30.575924>,  <44.925858, 27.803585, 30.710815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.767303, 28.145147, 30.575924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338657, -0.205418, -0.918213,
		-0.853339, -0.478174, -0.207755,
		-0.396389, 0.853905, -0.337228,
		44.648388, 28.401320, 30.474756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.618740, 27.661366, 30.173252>,  <44.925858, 27.803585, 30.710815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.618740, 27.661366, 30.173252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672691, 28.055393, 30.130451>,  <44.705063, 28.291809, 30.104771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.672691, 28.055393, 30.130451>,  <44.618740, 27.661366, 30.173252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.672691, 28.055393, 30.130451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186746, -0.131326, -0.973591,
		-0.973105, 0.111336, -0.201670,
		0.134880, 0.985067, -0.107002,
		44.713154, 28.350914, 30.098351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.218906, 27.852114, 29.567986>,  <44.618740, 27.661366, 30.173252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.218906, 27.852114, 29.567986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.470310, 28.157679, 29.626528>,  <44.621151, 28.341017, 29.661654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.470310, 28.157679, 29.626528>,  <44.218906, 27.852114, 29.567986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.470310, 28.157679, 29.626528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389848, -0.146566, -0.909141,
		-0.673051, 0.628457, -0.389927,
		0.628506, 0.763911, 0.146356,
		44.658863, 28.386852, 29.670435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.146557, 28.299770, 29.049078>,  <44.218906, 27.852114, 29.567986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.146557, 28.299770, 29.049078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517918, 28.393568, 29.164371>,  <44.740734, 28.449846, 29.233547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.517918, 28.393568, 29.164371>,  <44.146557, 28.299770, 29.049078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.517918, 28.393568, 29.164371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351794, -0.305015, -0.884990,
		-0.119608, 0.923027, -0.365670,
		0.928405, 0.234493, 0.288233,
		44.796440, 28.463915, 29.250841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.559422, 28.743826, 28.503736>,  <44.146557, 28.299770, 29.049078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.559422, 28.743826, 28.503736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.838554, 28.569963, 28.731459>,  <45.006035, 28.465647, 28.868092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.838554, 28.569963, 28.731459>,  <44.559422, 28.743826, 28.503736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.838554, 28.569963, 28.731459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507607, -0.260660, -0.821214,
		0.505340, 0.862051, 0.038737,
		0.697830, -0.434655, 0.569304,
		45.047905, 28.439568, 28.902250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.201904, 28.911427, 28.095297>,  <44.559422, 28.743826, 28.503736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.201904, 28.911427, 28.095297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.282257, 28.612513, 28.348663>,  <45.330467, 28.433165, 28.500683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.282257, 28.612513, 28.348663>,  <45.201904, 28.911427, 28.095297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.282257, 28.612513, 28.348663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530433, -0.460630, -0.711660,
		0.823582, 0.478945, 0.303851,
		0.200883, -0.747283, 0.633415,
		45.342522, 28.388329, 28.538689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.925838, 28.730453, 28.048454>,  <45.201904, 28.911427, 28.095297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.925838, 28.730453, 28.048454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.770500, 28.403229, 28.218142>,  <45.677299, 28.206894, 28.319954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.770500, 28.403229, 28.218142>,  <45.925838, 28.730453, 28.048454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.770500, 28.403229, 28.218142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490777, -0.573236, -0.656155,
		0.779954, -0.046616, 0.624099,
		-0.388343, -0.818063, 0.424219,
		45.653996, 28.157810, 28.345407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.470837, 28.309181, 28.004862>,  <45.925838, 28.730453, 28.048454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.470837, 28.309181, 28.004862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133610, 28.097935, 28.045519>,  <45.931274, 27.971186, 28.069914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133610, 28.097935, 28.045519>,  <46.470837, 28.309181, 28.004862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.133610, 28.097935, 28.045519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275884, -0.586914, -0.761196,
		0.461658, -0.613697, 0.640507,
		-0.843066, -0.528117, 0.101645,
		45.880692, 27.939499, 28.076012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.665161, 27.609032, 27.920073>,  <46.470837, 28.309181, 28.004862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.665161, 27.609032, 27.920073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.270016, 27.588497, 27.861431>,  <46.032928, 27.576176, 27.826246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.270016, 27.588497, 27.861431>,  <46.665161, 27.609032, 27.920073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.270016, 27.588497, 27.861431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147271, -0.609635, -0.778882,
		-0.049389, -0.791018, 0.609795,
		-0.987863, -0.051337, -0.146603,
		45.973656, 27.573095, 27.817450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.464336, 26.816795, 27.791275>,  <46.665161, 27.609032, 27.920073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.464336, 26.816795, 27.791275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.197357, 27.063276, 27.624033>,  <46.037170, 27.211164, 27.523687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.197357, 27.063276, 27.624033>,  <46.464336, 26.816795, 27.791275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.197357, 27.063276, 27.624033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088768, -0.491629, -0.866268,
		-0.739351, -0.615299, 0.273435,
		-0.667442, 0.616204, -0.418106,
		45.997124, 27.248137, 27.498602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.220921, 26.367619, 27.240627>,  <46.464336, 26.816795, 27.791275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.220921, 26.367619, 27.240627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.079411, 26.733442, 27.162212>,  <45.994507, 26.952936, 27.115164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.079411, 26.733442, 27.162212>,  <46.220921, 26.367619, 27.240627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.079411, 26.733442, 27.162212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097400, -0.244473, -0.964752,
		-0.930247, -0.322208, 0.175565,
		-0.353771, 0.914557, -0.196037,
		45.973278, 27.007809, 27.103401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.751743, 26.205423, 26.836864>,  <46.220921, 26.367619, 27.240627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.751743, 26.205423, 26.836864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.860367, 26.580448, 26.749929>,  <45.925541, 26.805462, 26.697769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.860367, 26.580448, 26.749929>,  <45.751743, 26.205423, 26.836864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.860367, 26.580448, 26.749929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273966, -0.141172, -0.951322,
		-0.922603, 0.317885, 0.218523,
		0.271561, 0.937560, -0.217335,
		45.941833, 26.861717, 26.684729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.261311, 26.347286, 26.389132>,  <45.751743, 26.205423, 26.836864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.261311, 26.347286, 26.389132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525593, 26.644648, 26.347530>,  <45.684162, 26.823065, 26.322569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.525593, 26.644648, 26.347530>,  <45.261311, 26.347286, 26.389132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.525593, 26.644648, 26.347530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080775, -0.067338, -0.994455,
		-0.746287, 0.665443, 0.015558,
		0.660705, 0.743406, -0.104004,
		45.723804, 26.867670, 26.316330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.458096, 25.981848, 26.483299>,  <45.261311, 26.347286, 26.389132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.458096, 25.981848, 26.483299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.488956, 25.583643, 26.505220>,  <44.507473, 25.344721, 26.518373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.488956, 25.583643, 26.505220>,  <44.458096, 25.981848, 26.483299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.488956, 25.583643, 26.505220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473703, 0.011762, 0.880606,
		-0.877298, -0.093904, -0.470669,
		0.077157, -0.995512, 0.054801,
		44.512104, 25.284990, 26.521662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.813759, 25.730135, 26.596624>,  <44.458096, 25.981848, 26.483299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.813759, 25.730135, 26.596624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070133, 25.460482, 26.743456>,  <44.223957, 25.298689, 26.831554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070133, 25.460482, 26.743456>,  <43.813759, 25.730135, 26.596624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.070133, 25.460482, 26.743456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496962, 0.000029, 0.867772,
		-0.585004, -0.738610, -0.335000,
		0.640935, -0.674133, 0.367079,
		44.262413, 25.258242, 26.853580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.356670, 25.158245, 26.951471>,  <43.813759, 25.730135, 26.596624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.356670, 25.158245, 26.951471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729336, 25.128094, 27.093634>,  <43.952934, 25.110003, 27.178930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.729336, 25.128094, 27.093634>,  <43.356670, 25.158245, 26.951471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.729336, 25.128094, 27.093634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363227, -0.214378, 0.906702,
		0.007847, -0.973838, -0.227108,
		0.931668, -0.075377, 0.355407,
		44.008835, 25.105480, 27.200256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238113, 24.771019, 27.478865>,  <43.356670, 25.158245, 26.951471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238113, 24.771019, 27.478865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601318, 24.911358, 27.570446>,  <43.819241, 24.995562, 27.625395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.601318, 24.911358, 27.570446>,  <43.238113, 24.771019, 27.478865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.601318, 24.911358, 27.570446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188224, -0.146590, 0.971125,
		0.374279, -0.924888, -0.067068,
		0.908013, 0.350848, 0.228952,
		43.873722, 25.016611, 27.639132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.598602, 24.369072, 28.033978>,  <43.238113, 24.771019, 27.478865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.598602, 24.369072, 28.033978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802380, 24.713257, 28.037512>,  <43.924644, 24.919767, 28.039633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.802380, 24.713257, 28.037512>,  <43.598602, 24.369072, 28.033978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.802380, 24.713257, 28.037512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051620, 0.020308, 0.998460,
		0.858956, -0.509113, 0.054763,
		0.509441, 0.860460, 0.008837,
		43.955212, 24.971395, 28.040163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.138832, 24.327785, 28.504333>,  <43.598602, 24.369072, 28.033978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.138832, 24.327785, 28.504333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060028, 24.718454, 28.470167>,  <44.012745, 24.952856, 28.449667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.060028, 24.718454, 28.470167>,  <44.138832, 24.327785, 28.504333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.060028, 24.718454, 28.470167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205298, 0.044097, 0.977706,
		0.958667, 0.210150, 0.191822,
		-0.197006, 0.976674, -0.085418,
		44.000927, 25.011457, 28.444542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.523594, 24.635803, 29.147625>,  <44.138832, 24.327785, 28.504333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.523594, 24.635803, 29.147625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229427, 24.867455, 29.006897>,  <44.052929, 25.006445, 28.922461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.229427, 24.867455, 29.006897>,  <44.523594, 24.635803, 29.147625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.229427, 24.867455, 29.006897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201957, 0.308282, 0.929610,
		0.646822, 0.754702, -0.109757,
		-0.735415, 0.579126, -0.351821,
		44.008804, 25.041193, 28.901350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.621674, 25.196747, 29.519150>,  <44.523594, 24.635803, 29.147625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.621674, 25.196747, 29.519150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.241337, 25.232374, 29.400507>,  <44.013134, 25.253750, 29.329321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.241337, 25.232374, 29.400507>,  <44.621674, 25.196747, 29.519150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.241337, 25.232374, 29.400507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231773, 0.430556, 0.872297,
		0.205399, 0.898158, -0.388746,
		-0.950838, 0.089068, -0.296605,
		43.956085, 25.259094, 29.311525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.402252, 25.856665, 29.795378>,  <44.621674, 25.196747, 29.519150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.402252, 25.856665, 29.795378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068993, 25.649105, 29.718851>,  <43.869038, 25.524570, 29.672935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068993, 25.649105, 29.718851>,  <44.402252, 25.856665, 29.795378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068993, 25.649105, 29.718851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373750, 0.273300, 0.886351,
		-0.407638, 0.809971, -0.421639,
		-0.833152, -0.518898, -0.191319,
		43.819046, 25.493435, 29.661455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.817753, 26.383528, 29.839594>,  <44.402252, 25.856665, 29.795378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.817753, 26.383528, 29.839594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678692, 26.010113, 29.874559>,  <43.595253, 25.786064, 29.895538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.678692, 26.010113, 29.874559>,  <43.817753, 26.383528, 29.839594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.678692, 26.010113, 29.874559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464916, 0.252593, 0.848557,
		-0.814241, 0.254365, -0.521833,
		-0.347655, -0.933539, 0.087413,
		43.574394, 25.730051, 29.900784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234848, 26.496954, 29.995152>,  <43.817753, 26.383528, 29.839594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234848, 26.496954, 29.995152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275757, 26.122473, 30.129648>,  <43.300304, 25.897783, 30.210346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.275757, 26.122473, 30.129648>,  <43.234848, 26.496954, 29.995152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.275757, 26.122473, 30.129648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621544, 0.203770, 0.756413,
		-0.776674, -0.286352, -0.561053,
		0.102274, -0.936205, 0.336244,
		43.306438, 25.841612, 30.230522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598877, 26.271395, 30.167299>,  <43.234848, 26.496954, 29.995152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598877, 26.271395, 30.167299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824776, 26.027681, 30.389952>,  <42.960316, 25.881454, 30.523542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.824776, 26.027681, 30.389952>,  <42.598877, 26.271395, 30.167299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824776, 26.027681, 30.389952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546638, 0.229127, 0.805412,
		-0.618262, -0.759128, -0.203658,
		0.564747, -0.609282, 0.556629,
		42.994202, 25.844896, 30.556940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.014709, 25.976931, 30.613962>,  <42.598877, 26.271395, 30.167299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.014709, 25.976931, 30.613962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367165, 25.889618, 30.781748>,  <42.578636, 25.837231, 30.882420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.367165, 25.889618, 30.781748>,  <42.014709, 25.976931, 30.613962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367165, 25.889618, 30.781748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358402, 0.270360, 0.893562,
		-0.308455, -0.937688, 0.159991,
		0.881138, -0.218282, 0.419463,
		42.631508, 25.824133, 30.907587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752918, 25.622440, 31.193178>,  <42.014709, 25.976931, 30.613962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752918, 25.622440, 31.193178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121552, 25.767147, 31.249487>,  <42.342731, 25.853971, 31.283272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.121552, 25.767147, 31.249487>,  <41.752918, 25.622440, 31.193178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121552, 25.767147, 31.249487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239967, 0.245862, 0.939131,
		0.305138, -0.899264, 0.313394,
		0.921578, 0.361769, 0.140771,
		42.398026, 25.875677, 31.291719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.800037, 25.541729, 31.843039>,  <41.752918, 25.622440, 31.193178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.800037, 25.541729, 31.843039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106655, 25.791218, 31.781883>,  <42.290627, 25.940912, 31.745190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.106655, 25.791218, 31.781883>,  <41.800037, 25.541729, 31.843039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106655, 25.791218, 31.781883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129562, 0.383385, 0.914456,
		0.628983, -0.681164, 0.374694,
		0.766546, 0.623724, -0.152890,
		42.336620, 25.978334, 31.736017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.212437, 25.531487, 32.503922>,  <41.800037, 25.541729, 31.843039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.212437, 25.531487, 32.503922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259083, 25.871170, 32.297913>,  <42.287071, 26.074980, 32.174309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.259083, 25.871170, 32.297913>,  <42.212437, 25.531487, 32.503922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.259083, 25.871170, 32.297913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042681, 0.513797, 0.856850,
		0.992260, -0.121903, 0.023672,
		0.116615, 0.849207, -0.515023,
		42.294067, 26.125933, 32.143406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740211, 25.893728, 32.867245>,  <42.212437, 25.531487, 32.503922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740211, 25.893728, 32.867245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552605, 26.163908, 32.639633>,  <42.440041, 26.326015, 32.503067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552605, 26.163908, 32.639633>,  <42.740211, 25.893728, 32.867245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552605, 26.163908, 32.639633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117740, 0.590719, 0.798241,
		0.875306, 0.441386, -0.197529,
		-0.469016, 0.675449, -0.569028,
		42.411900, 26.366543, 32.468925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.102924, 26.498238, 32.996796>,  <42.740211, 25.893728, 32.867245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.102924, 26.498238, 32.996796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746994, 26.619270, 32.860172>,  <42.533436, 26.691891, 32.778198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746994, 26.619270, 32.860172>,  <43.102924, 26.498238, 32.996796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746994, 26.619270, 32.860172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008160, 0.758951, 0.651097,
		0.456233, 0.576574, -0.677801,
		-0.889823, 0.302583, -0.341554,
		42.480045, 26.710045, 32.757706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.138935, 27.215931, 32.997044>,  <43.102924, 26.498238, 32.996796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.138935, 27.215931, 32.997044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743423, 27.158567, 32.980278>,  <42.506119, 27.124149, 32.970219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743423, 27.158567, 32.980278>,  <43.138935, 27.215931, 32.997044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743423, 27.158567, 32.980278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136664, 0.754729, 0.641644,
		-0.060382, 0.640170, -0.765857,
		-0.988776, -0.143409, -0.041917,
		42.446793, 27.115545, 32.967705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808548, 27.889431, 33.125416>,  <43.138935, 27.215931, 32.997044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808548, 27.889431, 33.125416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497692, 27.655031, 33.217201>,  <42.311176, 27.514391, 33.272270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.497692, 27.655031, 33.217201>,  <42.808548, 27.889431, 33.125416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.497692, 27.655031, 33.217201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272628, 0.642113, 0.716495,
		-0.567205, 0.494263, -0.658774,
		-0.777144, -0.586000, 0.229460,
		42.264549, 27.479231, 33.286037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.180790, 28.348272, 33.135025>,  <42.808548, 27.889431, 33.125416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.180790, 28.348272, 33.135025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060299, 28.017740, 33.325367>,  <41.988003, 27.819422, 33.439571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.060299, 28.017740, 33.325367>,  <42.180790, 28.348272, 33.135025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.060299, 28.017740, 33.325367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436145, 0.563172, 0.701865,
		-0.847962, 0.003878, -0.530043,
		-0.301228, -0.826330, 0.475857,
		41.969933, 27.769840, 33.468124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.531593, 28.396624, 33.301056>,  <42.180790, 28.348272, 33.135025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.531593, 28.396624, 33.301056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661766, 28.141430, 33.580219>,  <41.739868, 27.988314, 33.747719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661766, 28.141430, 33.580219>,  <41.531593, 28.396624, 33.301056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661766, 28.141430, 33.580219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539488, 0.480889, 0.691158,
		-0.776563, -0.601435, -0.187689,
		0.325429, -0.637983, 0.697907,
		41.759396, 27.950035, 33.789593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881424, 28.434589, 33.718674>,  <41.531593, 28.396624, 33.301056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881424, 28.434589, 33.718674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160343, 28.240568, 33.929768>,  <41.327694, 28.124155, 34.056423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.160343, 28.240568, 33.929768>,  <40.881424, 28.434589, 33.718674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160343, 28.240568, 33.929768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456714, 0.266782, 0.848669,
		-0.552439, -0.832797, -0.035504,
		0.697297, -0.485053, 0.527731,
		41.369534, 28.095053, 34.088085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522175, 27.955172, 34.227074>,  <40.881424, 28.434589, 33.718674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522175, 27.955172, 34.227074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885414, 28.067020, 34.351765>,  <41.103359, 28.134129, 34.426579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.885414, 28.067020, 34.351765>,  <40.522175, 27.955172, 34.227074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885414, 28.067020, 34.351765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394536, 0.321780, 0.860697,
		0.140361, -0.904583, 0.402527,
		0.908097, 0.279620, 0.311725,
		41.157845, 28.150906, 34.445282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665489, 27.640474, 34.799431>,  <40.522175, 27.955172, 34.227074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665489, 27.640474, 34.799431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910355, 27.956711, 34.805416>,  <41.057274, 28.146452, 34.809006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.910355, 27.956711, 34.805416>,  <40.665489, 27.640474, 34.799431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.910355, 27.956711, 34.805416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415931, 0.305853, 0.856420,
		0.672502, -0.530491, 0.516063,
		0.612162, 0.790591, 0.014961,
		41.094002, 28.193888, 34.809906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938835, 27.613176, 35.521206>,  <40.665489, 27.640474, 34.799431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938835, 27.613176, 35.521206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028435, 27.971643, 35.367992>,  <41.082195, 28.186724, 35.276066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.028435, 27.971643, 35.367992>,  <40.938835, 27.613176, 35.521206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.028435, 27.971643, 35.367992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424685, 0.443494, 0.789276,
		0.877194, -0.014126, 0.479929,
		0.223995, 0.896166, -0.383031,
		41.095634, 28.240494, 35.253082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.357372, 28.003078, 36.092659>,  <40.938835, 27.613176, 35.521206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.357372, 28.003078, 36.092659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230724, 28.290117, 35.844528>,  <41.154736, 28.462341, 35.695648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230724, 28.290117, 35.844528>,  <41.357372, 28.003078, 36.092659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230724, 28.290117, 35.844528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254231, 0.565848, 0.784336,
		0.913849, 0.406040, 0.003279,
		-0.316616, 0.717599, -0.620327,
		41.135738, 28.505398, 35.658428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.613037, 28.640305, 36.365017>,  <41.357372, 28.003078, 36.092659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.613037, 28.640305, 36.365017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308865, 28.754442, 36.131664>,  <41.126362, 28.822924, 35.991653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308865, 28.754442, 36.131664>,  <41.613037, 28.640305, 36.365017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308865, 28.754442, 36.131664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289512, 0.655152, 0.697825,
		0.581320, 0.699540, -0.415585,
		-0.760427, 0.285343, -0.583378,
		41.080738, 28.840046, 35.956650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454441, 29.355238, 36.556190>,  <41.613037, 28.640305, 36.365017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454441, 29.355238, 36.556190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120522, 29.243555, 36.366386>,  <40.920170, 29.176544, 36.252502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.120522, 29.243555, 36.366386>,  <41.454441, 29.355238, 36.556190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.120522, 29.243555, 36.366386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526735, 0.655833, 0.540771,
		0.160211, 0.701374, -0.694555,
		-0.834795, -0.279209, -0.474510,
		40.870083, 29.159792, 36.224033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106152, 29.908100, 36.377850>,  <41.454441, 29.355238, 36.556190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106152, 29.908100, 36.377850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800354, 29.654593, 36.330700>,  <40.616875, 29.502489, 36.302410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.800354, 29.654593, 36.330700>,  <41.106152, 29.908100, 36.377850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800354, 29.654593, 36.330700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627804, 0.690464, 0.359335,
		-0.146347, 0.348710, -0.925734,
		-0.764490, -0.633767, -0.117874,
		40.571007, 29.464462, 36.295338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594639, 30.265333, 36.089291>,  <41.106152, 29.908100, 36.377850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594639, 30.265333, 36.089291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385216, 29.958061, 36.236687>,  <40.259560, 29.773699, 36.325127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.385216, 29.958061, 36.236687>,  <40.594639, 30.265333, 36.089291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385216, 29.958061, 36.236687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657204, 0.639374, 0.399104,
		-0.542188, -0.033220, -0.839601,
		-0.523561, -0.768178, 0.368493,
		40.228149, 29.727608, 36.347233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954514, 30.398949, 35.931095>,  <40.594639, 30.265333, 36.089291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954514, 30.398949, 35.931095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918770, 30.146681, 36.239452>,  <39.897324, 29.995321, 36.424465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.918770, 30.146681, 36.239452>,  <39.954514, 30.398949, 35.931095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918770, 30.146681, 36.239452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669296, 0.611212, 0.422449,
		-0.737603, -0.478204, -0.476722,
		-0.089361, -0.630667, 0.770891,
		39.891960, 29.957481, 36.470718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175434, 30.349514, 36.136421>,  <39.954514, 30.398949, 35.931095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175434, 30.349514, 36.136421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385555, 30.254307, 36.463200>,  <39.511627, 30.197182, 36.659267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385555, 30.254307, 36.463200>,  <39.175434, 30.349514, 36.136421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385555, 30.254307, 36.463200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591520, 0.588020, 0.551667,
		-0.611690, -0.773033, 0.168094,
		0.525299, -0.238019, 0.816950,
		39.543144, 30.182901, 36.708286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681278, 30.171801, 36.670559>,  <39.175434, 30.349514, 36.136421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681278, 30.171801, 36.670559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028599, 30.238592, 36.857395>,  <39.236992, 30.278667, 36.969498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028599, 30.238592, 36.857395>,  <38.681278, 30.171801, 36.670559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028599, 30.238592, 36.857395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472487, 0.565136, 0.676296,
		-0.151047, -0.807923, 0.569601,
		0.868298, 0.166977, 0.467095,
		39.289089, 30.288685, 36.997524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552979, 30.091387, 37.332088>,  <38.681278, 30.171801, 36.670559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552979, 30.091387, 37.332088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884438, 30.315037, 37.342873>,  <39.083313, 30.449226, 37.349342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884438, 30.315037, 37.342873>,  <38.552979, 30.091387, 37.332088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884438, 30.315037, 37.342873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430992, 0.606529, 0.668108,
		0.357201, -0.565247, 0.743575,
		0.828646, 0.559123, 0.026964,
		39.133030, 30.482775, 37.350964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719643, 30.136566, 38.059223>,  <38.552979, 30.091387, 37.332088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719643, 30.136566, 38.059223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910709, 30.432699, 37.870018>,  <39.025349, 30.610378, 37.756496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.910709, 30.432699, 37.870018>,  <38.719643, 30.136566, 38.059223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910709, 30.432699, 37.870018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348562, 0.653920, 0.671485,
		0.806434, -0.155874, 0.570409,
		0.477670, 0.740332, -0.473012,
		39.054008, 30.654799, 37.728115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011829, 30.443769, 38.627625>,  <38.719643, 30.136566, 38.059223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011829, 30.443769, 38.627625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032722, 30.692081, 38.314728>,  <39.045258, 30.841068, 38.126987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.032722, 30.692081, 38.314728>,  <39.011829, 30.443769, 38.627625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032722, 30.692081, 38.314728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470029, 0.706406, 0.529211,
		0.881105, 0.340038, 0.328678,
		0.052228, 0.620778, -0.782245,
		39.048389, 30.878315, 38.080055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389385, 30.954348, 38.855865>,  <39.011829, 30.443769, 38.627625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389385, 30.954348, 38.855865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168797, 31.093033, 38.552376>,  <39.036442, 31.176245, 38.370281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168797, 31.093033, 38.552376>,  <39.389385, 30.954348, 38.855865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168797, 31.093033, 38.552376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394797, 0.692749, 0.603518,
		0.734855, 0.632367, -0.245151,
		-0.551473, 0.346713, -0.758727,
		39.003353, 31.197046, 38.324757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466728, 31.632105, 38.832104>,  <39.389385, 30.954348, 38.855865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466728, 31.632105, 38.832104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126659, 31.572687, 38.630058>,  <38.922619, 31.537037, 38.508831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126659, 31.572687, 38.630058>,  <39.466728, 31.632105, 38.832104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126659, 31.572687, 38.630058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471072, 0.643090, 0.603760,
		0.235149, 0.751246, -0.616713,
		-0.850174, -0.148542, -0.505113,
		38.871609, 31.528124, 38.478523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155628, 32.305698, 38.761711>,  <39.466728, 31.632105, 38.832104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155628, 32.305698, 38.761711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862217, 32.036274, 38.725372>,  <38.686169, 31.874620, 38.703571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.862217, 32.036274, 38.725372>,  <39.155628, 32.305698, 38.761711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862217, 32.036274, 38.725372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654878, 0.664684, 0.359624,
		-0.181846, 0.323286, -0.928665,
		-0.733530, -0.673558, -0.090843,
		38.642159, 31.834206, 38.698120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514034, 32.382133, 39.182468>,  <39.155628, 32.305698, 38.761711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514034, 32.382133, 39.182468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794140, 32.276436, 39.447742>,  <38.962204, 32.213017, 39.606907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.794140, 32.276436, 39.447742>,  <38.514034, 32.382133, 39.182468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794140, 32.276436, 39.447742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593921, -0.731077, 0.335833,
		0.396095, -0.629049, -0.668884,
		0.700261, -0.264243, 0.663181,
		39.004219, 32.197163, 39.646698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487522, 31.664772, 39.249496>,  <38.514034, 32.382133, 39.182468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487522, 31.664772, 39.249496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674194, 31.801182, 39.575909>,  <38.786198, 31.883028, 39.771755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.674194, 31.801182, 39.575909>,  <38.487522, 31.664772, 39.249496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674194, 31.801182, 39.575909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627052, -0.523099, 0.577212,
		0.623709, -0.781070, -0.030281,
		0.466683, 0.341024, 0.816033,
		38.814198, 31.903488, 39.820717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570953, 31.136536, 39.739559>,  <38.487522, 31.664772, 39.249496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570953, 31.136536, 39.739559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590954, 31.462921, 39.969936>,  <38.602955, 31.658752, 40.108162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.590954, 31.462921, 39.969936>,  <38.570953, 31.136536, 39.739559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.590954, 31.462921, 39.969936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661663, -0.404897, 0.631079,
		0.748133, -0.412632, 0.519647,
		0.050000, 0.815962, 0.575940,
		38.605953, 31.707710, 40.142719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394604, 30.895769, 40.389332>,  <38.570953, 31.136536, 39.739559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394604, 30.895769, 40.389332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385555, 31.291393, 40.447643>,  <38.380127, 31.528767, 40.482632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385555, 31.291393, 40.447643>,  <38.394604, 30.895769, 40.389332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385555, 31.291393, 40.447643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541760, -0.134678, 0.829674,
		0.840229, -0.060213, 0.538878,
		-0.022618, 0.989058, 0.145781,
		38.378769, 31.588110, 40.491379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642452, 31.014227, 41.077755>,  <38.394604, 30.895769, 40.389332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642452, 31.014227, 41.077755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399803, 31.307434, 40.954670>,  <38.254211, 31.483358, 40.880817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399803, 31.307434, 40.954670>,  <38.642452, 31.014227, 41.077755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399803, 31.307434, 40.954670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569567, -0.130700, 0.811487,
		0.554615, 0.667534, 0.496789,
		-0.606626, 0.733018, -0.307717,
		38.217815, 31.527340, 40.862354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590771, 31.470938, 41.638531>,  <38.642452, 31.014227, 41.077755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590771, 31.470938, 41.638531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272766, 31.584078, 41.423885>,  <38.081963, 31.651962, 41.295097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272766, 31.584078, 41.423885>,  <38.590771, 31.470938, 41.638531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272766, 31.584078, 41.423885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603631, -0.281588, 0.745880,
		0.059868, 0.916899, 0.394603,
		-0.795013, 0.282848, -0.536611,
		38.034264, 31.668932, 41.262901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232502, 31.938019, 42.038952>,  <38.590771, 31.470938, 41.638531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232502, 31.938019, 42.038952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988132, 31.761021, 41.776360>,  <37.841511, 31.654821, 41.618805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.988132, 31.761021, 41.776360>,  <38.232502, 31.938019, 42.038952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988132, 31.761021, 41.776360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606880, -0.270748, 0.747256,
		-0.508401, 0.854922, -0.103137,
		-0.610921, -0.442497, -0.656484,
		37.804855, 31.628271, 41.579414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592617, 32.061596, 42.356407>,  <38.232502, 31.938019, 42.038952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592617, 32.061596, 42.356407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526279, 31.763208, 42.098404>,  <37.486477, 31.584177, 41.943604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.526279, 31.763208, 42.098404>,  <37.592617, 32.061596, 42.356407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.526279, 31.763208, 42.098404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609663, -0.436536, 0.661625,
		-0.775117, 0.502964, -0.382389,
		-0.165847, -0.745965, -0.645005,
		37.476524, 31.539419, 41.904903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894642, 32.073742, 42.306152>,  <37.592617, 32.061596, 42.356407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894642, 32.073742, 42.306152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024055, 31.701878, 42.235664>,  <37.101704, 31.478758, 42.193371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024055, 31.701878, 42.235664>,  <36.894642, 32.073742, 42.306152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024055, 31.701878, 42.235664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808888, -0.368363, 0.458268,
		-0.490947, -0.005723, -0.871171,
		0.323530, -0.929664, -0.176218,
		37.121113, 31.422977, 42.182800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303364, 31.766899, 42.098133>,  <36.894642, 32.073742, 42.306152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303364, 31.766899, 42.098133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551456, 31.460857, 42.167336>,  <36.700310, 31.277233, 42.208858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551456, 31.460857, 42.167336>,  <36.303364, 31.766899, 42.098133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551456, 31.460857, 42.167336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764519, -0.540237, 0.351645,
		-0.175579, -0.350370, -0.920007,
		0.620228, -0.765104, 0.173010,
		36.737526, 31.231325, 42.219238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914936, 31.157940, 41.739941>,  <36.303364, 31.766899, 42.098133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914936, 31.157940, 41.739941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168777, 31.023657, 42.018387>,  <36.321083, 30.943087, 42.185455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168777, 31.023657, 42.018387>,  <35.914936, 31.157940, 41.739941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168777, 31.023657, 42.018387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765054, -0.400409, 0.504346,
		0.109418, -0.852627, -0.510936,
		0.634602, -0.335709, 0.696118,
		36.359158, 30.922943, 42.227222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693954, 30.470215, 41.884357>,  <35.914936, 31.157940, 41.739941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693954, 30.470215, 41.884357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911327, 30.592695, 42.197006>,  <36.041752, 30.666183, 42.384594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911327, 30.592695, 42.197006>,  <35.693954, 30.470215, 41.884357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911327, 30.592695, 42.197006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566970, -0.552762, 0.610737,
		0.619055, -0.775046, -0.126782,
		0.543430, 0.306199, 0.781618,
		36.074356, 30.684555, 42.431492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772404, 29.861343, 42.253254>,  <35.693954, 30.470215, 41.884357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772404, 29.861343, 42.253254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831337, 30.173767, 42.495987>,  <35.866699, 30.361221, 42.641624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831337, 30.173767, 42.495987>,  <35.772404, 29.861343, 42.253254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831337, 30.173767, 42.495987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463734, -0.487362, 0.739884,
		0.873638, -0.390418, 0.290398,
		0.147335, 0.781058, 0.606828,
		35.875538, 30.408085, 42.678036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022076, 29.508904, 42.877895>,  <35.772404, 29.861343, 42.253254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022076, 29.508904, 42.877895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888374, 29.872303, 42.978222>,  <35.808155, 30.090343, 43.038418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.888374, 29.872303, 42.978222>,  <36.022076, 29.508904, 42.877895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888374, 29.872303, 42.978222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677592, -0.416614, 0.606054,
		0.655092, 0.032624, 0.754845,
		-0.334251, 0.908498, 0.250814,
		35.788097, 30.144852, 43.053467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067650, 29.635065, 43.711685>,  <36.022076, 29.508904, 42.877895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067650, 29.635065, 43.711685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790558, 29.835495, 43.504204>,  <35.624302, 29.955753, 43.379715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.790558, 29.835495, 43.504204>,  <36.067650, 29.635065, 43.711685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790558, 29.835495, 43.504204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691121, -0.255686, 0.676000,
		0.206102, 0.826770, 0.523425,
		-0.692729, 0.501074, -0.518701,
		35.582741, 29.985817, 43.348595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657764, 29.878628, 44.220196>,  <36.067650, 29.635065, 43.711685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657764, 29.878628, 44.220196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448025, 29.882339, 43.879616>,  <35.322182, 29.884567, 43.675266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448025, 29.882339, 43.879616>,  <35.657764, 29.878628, 44.220196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448025, 29.882339, 43.879616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782945, -0.398350, 0.477822,
		-0.334741, 0.917186, 0.216141,
		-0.524352, 0.009280, -0.851451,
		35.290718, 29.885124, 43.624180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081936, 29.975843, 44.543793>,  <35.657764, 29.878628, 44.220196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081936, 29.975843, 44.543793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969517, 29.871574, 44.174347>,  <34.902065, 29.809013, 43.952679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969517, 29.871574, 44.174347>,  <35.081936, 29.975843, 44.543793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969517, 29.871574, 44.174347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849982, -0.379228, 0.365673,
		-0.445580, 0.887827, -0.114984,
		-0.281049, -0.260671, -0.923613,
		34.885201, 29.793373, 43.897263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424206, 30.239370, 44.359524>,  <35.081936, 29.975843, 44.543793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424206, 30.239370, 44.359524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484249, 29.913696, 44.135178>,  <34.520275, 29.718292, 44.000568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.484249, 29.913696, 44.135178>,  <34.424206, 30.239370, 44.359524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484249, 29.913696, 44.135178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831163, -0.411123, 0.374362,
		-0.535385, 0.409975, -0.738433,
		0.150108, -0.814186, -0.560865,
		34.529282, 29.669441, 43.966919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768387, 30.156008, 43.892376>,  <34.424206, 30.239370, 44.359524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768387, 30.156008, 43.892376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957134, 29.803802, 43.910416>,  <34.070385, 29.592480, 43.921242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957134, 29.803802, 43.910416>,  <33.768387, 30.156008, 43.892376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957134, 29.803802, 43.910416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775104, -0.389915, 0.497171,
		-0.420182, -0.269556, -0.866480,
		0.471869, -0.880514, 0.045098,
		34.098694, 29.539648, 43.923946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287666, 29.672283, 43.864960>,  <33.768387, 30.156008, 43.892376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287666, 29.672283, 43.864960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602905, 29.507109, 44.047558>,  <33.792049, 29.408005, 44.157116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602905, 29.507109, 44.047558>,  <33.287666, 29.672283, 43.864960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602905, 29.507109, 44.047558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607266, -0.400292, 0.686290,
		-0.100661, -0.818078, -0.566230,
		0.788096, -0.412935, 0.456497,
		33.839333, 29.383228, 44.184505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.968624, 29.368013, 44.391857>,  <33.287666, 29.672283, 43.864960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.968624, 29.368013, 44.391857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299500, 29.166086, 44.490578>,  <33.498024, 29.044930, 44.549809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299500, 29.166086, 44.490578>,  <32.968624, 29.368013, 44.391857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299500, 29.166086, 44.490578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495970, -0.449459, 0.742967,
		-0.264136, -0.736983, -0.622164,
		0.827192, -0.504819, 0.246803,
		33.547657, 29.014641, 44.564617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801899, 28.678074, 44.528030>,  <32.968624, 29.368013, 44.391857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801899, 28.678074, 44.528030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149700, 28.706303, 44.723576>,  <33.358379, 28.723240, 44.840904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149700, 28.706303, 44.723576>,  <32.801899, 28.678074, 44.528030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149700, 28.706303, 44.723576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406861, -0.458847, 0.789888,
		0.280057, -0.885708, -0.370255,
		0.869501, 0.070571, 0.488864,
		33.410549, 28.727474, 44.870235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952400, 27.943298, 44.587132>,  <32.801899, 28.678074, 44.528030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952400, 27.943298, 44.587132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103916, 28.171984, 44.878242>,  <33.194824, 28.309195, 45.052910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103916, 28.171984, 44.878242>,  <32.952400, 27.943298, 44.587132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103916, 28.171984, 44.878242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488773, -0.544187, 0.681881,
		0.785890, -0.614006, 0.073307,
		0.378786, 0.571714, 0.727781,
		33.217552, 28.343498, 45.096577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688587, 27.872715, 44.443821>,  <32.952400, 27.943298, 44.587132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688587, 27.872715, 44.443821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842670, 27.504543, 44.417202>,  <33.935120, 27.283640, 44.401230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.842670, 27.504543, 44.417202>,  <33.688587, 27.872715, 44.443821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842670, 27.504543, 44.417202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181181, 0.004723, 0.983438,
		-0.904869, -0.390886, 0.168583,
		0.385209, -0.920427, -0.066548,
		33.958233, 27.228415, 44.397236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096424, 28.438143, 44.969109>,  <33.688587, 27.872715, 44.443821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096424, 28.438143, 44.969109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959293, 28.442911, 44.593380>,  <33.877014, 28.445772, 44.367943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959293, 28.442911, 44.593380>,  <34.096424, 28.438143, 44.969109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959293, 28.442911, 44.593380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778120, 0.563821, -0.276833,
		0.526309, -0.825811, -0.202569,
		-0.342824, 0.011923, -0.939324,
		33.856445, 28.446487, 44.311584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604435, 28.462547, 44.490582>,  <34.096424, 28.438143, 44.969109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604435, 28.462547, 44.490582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326920, 28.673248, 44.294140>,  <34.160408, 28.799669, 44.176273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326920, 28.673248, 44.294140>,  <34.604435, 28.462547, 44.490582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326920, 28.673248, 44.294140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720135, 0.500131, -0.480909,
		-0.007701, -0.687315, -0.726319,
		-0.693791, 0.526751, -0.491108,
		34.118782, 28.831274, 44.146809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864399, 28.521158, 43.901394>,  <34.604435, 28.462547, 44.490582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864399, 28.521158, 43.901394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606865, 28.827185, 43.906235>,  <34.452343, 29.010799, 43.909138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606865, 28.827185, 43.906235>,  <34.864399, 28.521158, 43.901394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606865, 28.827185, 43.906235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614995, 0.526829, -0.586714,
		-0.455250, -0.370307, -0.809704,
		-0.643839, 0.765065, 0.012102,
		34.413712, 29.056704, 43.909866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596062, 28.660936, 43.168388>,  <34.864399, 28.521158, 43.901394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596062, 28.660936, 43.168388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581081, 28.980301, 43.408768>,  <34.572094, 29.171919, 43.552994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581081, 28.980301, 43.408768>,  <34.596062, 28.660936, 43.168388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581081, 28.980301, 43.408768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576959, 0.508286, -0.639346,
		-0.815914, 0.322778, -0.479686,
		-0.037451, 0.798410, 0.600948,
		34.569847, 29.219824, 43.589050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719669, 29.228907, 42.751747>,  <34.596062, 28.660936, 43.168388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719669, 29.228907, 42.751747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750534, 29.426167, 43.098354>,  <34.769054, 29.544521, 43.306320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750534, 29.426167, 43.098354>,  <34.719669, 29.228907, 42.751747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750534, 29.426167, 43.098354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602344, 0.669512, -0.434667,
		-0.794499, 0.555480, -0.245385,
		0.077161, 0.493148, 0.866517,
		34.773682, 29.574112, 43.358311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499020, 29.876852, 42.587635>,  <34.719669, 29.228907, 42.751747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499020, 29.876852, 42.587635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730682, 29.903410, 42.912640>,  <34.869678, 29.919344, 43.107643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.730682, 29.903410, 42.912640>,  <34.499020, 29.876852, 42.587635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730682, 29.903410, 42.912640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491111, 0.767107, -0.412744,
		-0.650686, 0.638075, 0.411666,
		0.579153, 0.066393, 0.812511,
		34.904427, 29.923328, 43.156391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622478, 30.631689, 42.767807>,  <34.499020, 29.876852, 42.587635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622478, 30.631689, 42.767807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911522, 30.433060, 42.960163>,  <35.084946, 30.313883, 43.075577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.911522, 30.433060, 42.960163>,  <34.622478, 30.631689, 42.767807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.911522, 30.433060, 42.960163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678804, 0.641205, -0.357884,
		-0.130633, 0.585039, 0.800415,
		0.722607, -0.496574, 0.480889,
		35.128304, 30.284088, 43.104431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969074, 31.211586, 43.117901>,  <34.622478, 30.631689, 42.767807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969074, 31.211586, 43.117901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147205, 30.889925, 43.275391>,  <35.254086, 30.696928, 43.369884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147205, 30.889925, 43.275391>,  <34.969074, 31.211586, 43.117901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147205, 30.889925, 43.275391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803778, 0.165302, -0.571504,
		0.394493, 0.570974, 0.719975,
		0.445327, -0.804154, 0.393726,
		35.280804, 30.648680, 43.393509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588238, 31.324602, 43.543007>,  <34.969074, 31.211586, 43.117901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588238, 31.324602, 43.543007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627354, 30.963423, 43.375618>,  <35.650826, 30.746716, 43.275185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.627354, 30.963423, 43.375618>,  <35.588238, 31.324602, 43.543007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627354, 30.963423, 43.375618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774048, 0.333307, -0.538290,
		0.625528, -0.271279, 0.731520,
		0.097794, -0.902947, -0.418476,
		35.656693, 30.692539, 43.250076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245945, 31.216240, 43.622784>,  <35.588238, 31.324602, 43.543007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245945, 31.216240, 43.622784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151989, 30.956793, 43.333199>,  <36.095615, 30.801125, 43.159447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151989, 30.956793, 43.333199>,  <36.245945, 31.216240, 43.622784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151989, 30.956793, 43.333199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836676, 0.244197, -0.490247,
		0.494772, -0.720876, 0.485323,
		-0.234893, -0.648618, -0.723961,
		36.081520, 30.762207, 43.116009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835518, 31.093832, 43.395733>,  <36.245945, 31.216240, 43.622784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835518, 31.093832, 43.395733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644779, 30.897280, 43.104210>,  <36.530334, 30.779348, 42.929295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644779, 30.897280, 43.104210>,  <36.835518, 31.093832, 43.395733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644779, 30.897280, 43.104210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836180, 0.002002, -0.548452,
		0.270958, -0.870943, 0.409927,
		-0.476850, -0.491380, -0.728807,
		36.501724, 30.749866, 42.885567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243439, 30.463287, 43.033760>,  <36.835518, 31.093832, 43.395733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243439, 30.463287, 43.033760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963913, 30.604149, 42.784714>,  <36.796200, 30.688665, 42.635284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963913, 30.604149, 42.784714>,  <37.243439, 30.463287, 43.033760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963913, 30.604149, 42.784714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714895, 0.373361, -0.591208,
		0.024265, -0.858249, -0.512660,
		-0.698811, 0.352152, -0.622617,
		36.754269, 30.709795, 42.597927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.688980, 30.431398, 42.429855>,  <37.243439, 30.463287, 43.033760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.688980, 30.431398, 42.429855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341457, 30.607555, 42.339314>,  <37.132946, 30.713249, 42.284988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.341457, 30.607555, 42.339314>,  <37.688980, 30.431398, 42.429855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341457, 30.607555, 42.339314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465981, 0.572571, -0.674555,
		-0.167462, -0.691533, -0.702665,
		-0.868803, 0.440391, -0.226358,
		37.080818, 30.739674, 42.271404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523277, 30.283747, 41.703896>,  <37.688980, 30.431398, 42.429855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523277, 30.283747, 41.703896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372711, 30.635721, 41.819847>,  <37.282372, 30.846905, 41.889420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372711, 30.635721, 41.819847>,  <37.523277, 30.283747, 41.703896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372711, 30.635721, 41.819847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431149, 0.443322, -0.785860,
		-0.820015, -0.170827, -0.546255,
		-0.376412, 0.879934, 0.289879,
		37.259789, 30.899702, 41.906811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256882, 30.568810, 41.092426>,  <37.523277, 30.283747, 41.703896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256882, 30.568810, 41.092426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311363, 30.878712, 41.339394>,  <37.344051, 31.064653, 41.487576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311363, 30.878712, 41.339394>,  <37.256882, 30.568810, 41.092426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311363, 30.878712, 41.339394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340115, 0.548778, -0.763652,
		-0.930468, 0.314004, -0.188760,
		0.136203, 0.774754, 0.617418,
		37.352222, 31.111137, 41.524620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930000, 31.066053, 40.796333>,  <37.256882, 30.568810, 41.092426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930000, 31.066053, 40.796333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212528, 31.235451, 41.023232>,  <37.382046, 31.337090, 41.159370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212528, 31.235451, 41.023232>,  <36.930000, 31.066053, 40.796333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212528, 31.235451, 41.023232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401620, 0.420134, -0.813750,
		-0.582939, 0.802583, 0.126664,
		0.706317, 0.423495, 0.567246,
		37.424423, 31.362499, 41.193405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922131, 31.762592, 40.614483>,  <36.930000, 31.066053, 40.796333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922131, 31.762592, 40.614483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278206, 31.667732, 40.770088>,  <37.491852, 31.610817, 40.863449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278206, 31.667732, 40.770088>,  <36.922131, 31.762592, 40.614483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278206, 31.667732, 40.770088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449836, 0.322159, -0.832983,
		0.072218, 0.916501, 0.393460,
		0.890186, -0.237149, 0.389010,
		37.545261, 31.596588, 40.886791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374226, 32.363110, 40.401379>,  <36.922131, 31.762592, 40.614483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374226, 32.363110, 40.401379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631748, 32.094509, 40.548126>,  <37.786263, 31.933348, 40.636173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631748, 32.094509, 40.548126>,  <37.374226, 32.363110, 40.401379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631748, 32.094509, 40.548126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632841, 0.197745, -0.748605,
		0.430145, 0.714128, 0.552265,
		0.643807, -0.671505, 0.366870,
		37.824890, 31.893057, 40.658188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941769, 32.776855, 40.478485>,  <37.374226, 32.363110, 40.401379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941769, 32.776855, 40.478485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041149, 32.389755, 40.461796>,  <38.100777, 32.157497, 40.451782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.041149, 32.389755, 40.461796>,  <37.941769, 32.776855, 40.478485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.041149, 32.389755, 40.461796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833065, 0.235452, -0.500565,
		0.494243, 0.089608, 0.864693,
		0.248448, -0.967746, -0.041721,
		38.115685, 32.099430, 40.449280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585464, 32.775448, 40.795769>,  <37.941769, 32.776855, 40.478485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585464, 32.775448, 40.795769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619488, 32.424099, 40.607632>,  <38.639900, 32.213287, 40.494747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.619488, 32.424099, 40.607632>,  <38.585464, 32.775448, 40.795769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619488, 32.424099, 40.607632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746633, 0.368770, -0.553667,
		0.659777, -0.304083, 0.687189,
		0.085054, -0.878375, -0.470344,
		38.645004, 32.160587, 40.466530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240948, 32.423588, 40.907417>,  <38.585464, 32.775448, 40.795769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240948, 32.423588, 40.907417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112019, 32.271690, 40.560570>,  <39.034660, 32.180550, 40.352459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112019, 32.271690, 40.560570>,  <39.240948, 32.423588, 40.907417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112019, 32.271690, 40.560570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840557, 0.306498, -0.446680,
		0.435396, -0.872841, 0.220407,
		-0.322326, -0.379747, -0.867120,
		39.015320, 32.157768, 40.300434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804420, 32.121349, 40.710205>,  <39.240948, 32.423588, 40.907417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804420, 32.121349, 40.710205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574715, 32.145126, 40.383602>,  <39.436890, 32.159393, 40.187641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574715, 32.145126, 40.383602>,  <39.804420, 32.121349, 40.710205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574715, 32.145126, 40.383602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813974, 0.148132, -0.561696,
		0.087564, -0.987180, -0.133449,
		-0.574263, 0.059439, -0.816510,
		39.402435, 32.162956, 40.138649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081287, 31.542742, 40.313137>,  <39.804420, 32.121349, 40.710205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081287, 31.542742, 40.313137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772125, 31.379000, 40.119209>,  <39.586628, 31.280754, 40.002853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.772125, 31.379000, 40.119209>,  <40.081287, 31.542742, 40.313137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772125, 31.379000, 40.119209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386510, 0.909688, -0.151910,
		0.503218, 0.069975, -0.861322,
		-0.772905, -0.409354, -0.484818,
		39.540253, 31.256193, 39.973763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533985, 31.112286, 40.812393>,  <40.081287, 31.542742, 40.313137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533985, 31.112286, 40.812393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771782, 31.430632, 40.858311>,  <40.914459, 31.621639, 40.885860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.771782, 31.430632, 40.858311>,  <40.533985, 31.112286, 40.812393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771782, 31.430632, 40.858311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789236, -0.550203, -0.272733,
		-0.153896, 0.252739, -0.955217,
		0.594494, 0.795864, 0.114797,
		40.950130, 31.669392, 40.892750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106716, 30.820070, 40.567120>,  <40.533985, 31.112286, 40.812393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106716, 30.820070, 40.567120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233784, 31.154558, 40.745926>,  <41.310024, 31.355251, 40.853210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233784, 31.154558, 40.745926>,  <41.106716, 30.820070, 40.567120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233784, 31.154558, 40.745926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946381, -0.308812, -0.094863,
		0.058717, 0.453181, -0.889483,
		0.317673, 0.836219, 0.447014,
		41.329086, 31.405424, 40.880032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754879, 31.103390, 40.239468>,  <41.106716, 30.820070, 40.567120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754879, 31.103390, 40.239468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731049, 31.187159, 40.629871>,  <41.716751, 31.237419, 40.864113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731049, 31.187159, 40.629871>,  <41.754879, 31.103390, 40.239468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731049, 31.187159, 40.629871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916802, -0.375292, 0.136493,
		0.394873, 0.902939, -0.169639,
		-0.059581, 0.209422, 0.976008,
		41.713173, 31.249985, 40.922672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100883, 31.783186, 39.966938>,  <41.754879, 31.103390, 40.239468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100883, 31.783186, 39.966938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451485, 31.967096, 40.024006>,  <42.661846, 32.077442, 40.058247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.451485, 31.967096, 40.024006>,  <42.100883, 31.783186, 39.966938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451485, 31.967096, 40.024006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275373, 0.721940, -0.634801,
		-0.394864, 0.517116, 0.759390,
		0.876500, 0.459775, 0.142669,
		42.714436, 32.105030, 40.066807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054497, 32.548069, 40.278927>,  <42.100883, 31.783186, 39.966938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054497, 32.548069, 40.278927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350769, 32.463242, 40.023922>,  <42.528530, 32.412346, 39.870918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350769, 32.463242, 40.023922>,  <42.054497, 32.548069, 40.278927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350769, 32.463242, 40.023922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432899, 0.575013, -0.694232,
		0.513806, 0.790180, 0.334093,
		0.740677, -0.212072, -0.637513,
		42.572971, 32.399620, 39.832668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244728, 33.226311, 39.866825>,  <42.054497, 32.548069, 40.278927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244728, 33.226311, 39.866825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326439, 32.935658, 39.604443>,  <42.375465, 32.761265, 39.447014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.326439, 32.935658, 39.604443>,  <42.244728, 33.226311, 39.866825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.326439, 32.935658, 39.604443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550118, 0.469054, -0.690912,
		0.809718, 0.501985, -0.303920,
		0.204273, -0.726636, -0.655952,
		42.387722, 32.717667, 39.407658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674938, 33.502815, 39.364346>,  <42.244728, 33.226311, 39.866825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674938, 33.502815, 39.364346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462143, 33.191635, 39.230614>,  <42.334465, 33.004925, 39.150375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.462143, 33.191635, 39.230614>,  <42.674938, 33.502815, 39.364346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462143, 33.191635, 39.230614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412766, 0.583008, -0.699804,
		0.739331, -0.234290, -0.631267,
		-0.531991, -0.777952, -0.334329,
		42.302547, 32.958248, 39.130314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864033, 33.618019, 38.615578>,  <42.674938, 33.502815, 39.364346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864033, 33.618019, 38.615578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.085800, 33.905846, 38.448326>,  <43.218861, 34.078541, 38.347973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.085800, 33.905846, 38.448326>,  <42.864033, 33.618019, 38.615578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.085800, 33.905846, 38.448326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828611, -0.430446, 0.357938,
		0.077579, -0.544917, -0.834893,
		0.554423, 0.719570, -0.418131,
		43.252129, 34.121716, 38.322887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.421711, 33.267075, 38.176529>,  <42.864033, 33.618019, 38.615578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.421711, 33.267075, 38.176529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498756, 33.640923, 38.296124>,  <43.544983, 33.865231, 38.367882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.498756, 33.640923, 38.296124>,  <43.421711, 33.267075, 38.176529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.498756, 33.640923, 38.296124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893867, -0.292818, 0.339497,
		0.404848, 0.201863, -0.891823,
		0.192610, 0.934617, 0.298986,
		43.556538, 33.921307, 38.385818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020889, 33.485970, 37.807491>,  <43.421711, 33.267075, 38.176529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020889, 33.485970, 37.807491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950531, 33.655884, 38.162708>,  <43.908314, 33.757832, 38.375839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.950531, 33.655884, 38.162708>,  <44.020889, 33.485970, 37.807491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950531, 33.655884, 38.162708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817658, -0.439299, 0.372092,
		0.548175, 0.791564, -0.270056,
		-0.175899, 0.424785, 0.888041,
		43.897762, 33.783318, 38.429119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705605, 33.863136, 38.150806>,  <44.020889, 33.485970, 37.807491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705605, 33.863136, 38.150806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424763, 33.654003, 38.344177>,  <44.256260, 33.528522, 38.460197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.424763, 33.654003, 38.344177>,  <44.705605, 33.863136, 38.150806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424763, 33.654003, 38.344177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704622, -0.608087, 0.365702,
		0.102763, 0.597391, 0.795339,
		-0.702102, -0.522832, 0.483424,
		44.214130, 33.497154, 38.489204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.433826, 33.949257, 37.850609>,  <44.705605, 33.863136, 38.150806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.433826, 33.949257, 37.850609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.343941, 34.161713, 37.523830>,  <45.290009, 34.289185, 37.327763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.343941, 34.161713, 37.523830>,  <45.433826, 33.949257, 37.850609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.343941, 34.161713, 37.523830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876266, -0.256567, -0.407837,
		-0.426217, -0.807508, -0.407762,
		-0.224714, 0.531135, -0.816945,
		45.276527, 34.321053, 37.278748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.633118, 33.608204, 37.317566>,  <45.433826, 33.949257, 37.850609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.633118, 33.608204, 37.317566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634739, 33.985264, 37.184063>,  <45.635712, 34.211498, 37.103962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.634739, 33.985264, 37.184063>,  <45.633118, 33.608204, 37.317566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.634739, 33.985264, 37.184063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893364, -0.153374, -0.422347,
		-0.449315, -0.296454, -0.842752,
		0.004049, 0.942651, -0.333755,
		45.635952, 34.268059, 37.083935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.744476, 33.622375, 36.551147>,  <45.633118, 33.608204, 37.317566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.744476, 33.622375, 36.551147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.883121, 33.959465, 36.715916>,  <45.966309, 34.161716, 36.814777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.883121, 33.959465, 36.715916>,  <45.744476, 33.622375, 36.551147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.883121, 33.959465, 36.715916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857970, -0.107335, -0.502362,
		-0.379138, 0.527540, -0.760234,
		0.346616, 0.842722, 0.411919,
		45.987106, 34.212280, 36.839493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.870972, 33.964016, 35.984844>,  <45.744476, 33.622375, 36.551147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.870972, 33.964016, 35.984844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.117119, 34.133205, 36.250904>,  <46.264805, 34.234718, 36.410538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.117119, 34.133205, 36.250904>,  <45.870972, 33.964016, 35.984844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.117119, 34.133205, 36.250904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751910, -0.061749, -0.656368,
		-0.236553, 0.904036, -0.356035,
		0.615365, 0.422972, 0.665147,
		46.301727, 34.260098, 36.450447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.149269, 34.732643, 35.846596>,  <45.870972, 33.964016, 35.984844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.149269, 34.732643, 35.846596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.410259, 34.505428, 36.047241>,  <46.566853, 34.369099, 36.167629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.410259, 34.505428, 36.047241>,  <46.149269, 34.732643, 35.846596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.410259, 34.505428, 36.047241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703043, 0.206658, -0.680458,
		0.282862, 0.796636, 0.534192,
		0.652472, -0.568035, 0.501613,
		46.606003, 34.335018, 36.197723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.697105, 35.145569, 36.198864>,  <46.149269, 34.732643, 35.846596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.697105, 35.145569, 36.198864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.806202, 34.773449, 36.100758>,  <46.871658, 34.550179, 36.041893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.806202, 34.773449, 36.100758>,  <46.697105, 35.145569, 36.198864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.806202, 34.773449, 36.100758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590902, 0.363159, -0.720382,
		0.759241, 0.051551, 0.648764,
		0.272741, -0.930300, -0.245264,
		46.888023, 34.494358, 36.027180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.450638, 34.779751, 36.397861>,  <46.697105, 35.145569, 36.198864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.450638, 34.779751, 36.397861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.269333, 34.675190, 36.056988>,  <47.160549, 34.612453, 35.852463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.269333, 34.675190, 36.056988>,  <47.450638, 34.779751, 36.397861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.269333, 34.675190, 36.056988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671383, 0.528760, -0.519286,
		0.586342, -0.807518, -0.064170,
		-0.453263, -0.261396, -0.852188,
		47.133354, 34.596771, 35.801331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.933609, 34.767845, 35.857643>,  <47.450638, 34.779751, 36.397861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.933609, 34.767845, 35.857643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.599865, 34.829147, 35.645851>,  <47.399616, 34.865929, 35.518776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.599865, 34.829147, 35.645851>,  <47.933609, 34.767845, 35.857643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.599865, 34.829147, 35.645851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465640, 0.710021, -0.528252,
		0.294989, -0.687302, -0.663775,
		-0.834362, 0.153252, -0.529483,
		47.349556, 34.875122, 35.487007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.009884, 34.688881, 35.072548>,  <47.933609, 34.767845, 35.857643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.009884, 34.688881, 35.072548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.701138, 34.930866, 35.150776>,  <47.515892, 35.076057, 35.197712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.701138, 34.930866, 35.150776>,  <48.009884, 34.688881, 35.072548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.701138, 34.930866, 35.150776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466377, 0.747802, -0.472530,
		-0.432112, -0.273518, -0.859341,
		-0.771862, 0.604963, 0.195571,
		47.469578, 35.112354, 35.209446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.371380, 28.901827, 28.950842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.341602, 29.251591, 28.759064>,  <38.323734, 29.461449, 28.643997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.341602, 29.251591, 28.759064>,  <38.371380, 28.901827, 28.950842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341602, 29.251591, 28.759064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366050, 0.423255, 0.828772,
		0.927613, 0.237199, 0.288567,
		-0.074447, 0.874409, -0.479444,
		38.319267, 29.513914, 28.615231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856613, 29.400381, 29.236225>,  <38.371380, 28.901827, 28.950842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856613, 29.400381, 29.236225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.570690, 29.600279, 29.040548>,  <38.399136, 29.720217, 28.923141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.570690, 29.600279, 29.040548>,  <38.856613, 29.400381, 29.236225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.570690, 29.600279, 29.040548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197488, 0.526799, 0.826730,
		0.670859, 0.687561, -0.277865,
		-0.714806, 0.499744, -0.489192,
		38.356247, 29.750202, 28.893791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942905, 30.163616, 29.525183>,  <38.856613, 29.400381, 29.236225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942905, 30.163616, 29.525183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.587803, 30.152546, 29.341387>,  <38.374741, 30.145903, 29.231110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.587803, 30.152546, 29.341387>,  <38.942905, 30.163616, 29.525183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.587803, 30.152546, 29.341387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387914, 0.582383, 0.714390,
		0.247826, 0.812443, -0.527749,
		-0.887753, -0.027677, -0.459487,
		38.321476, 30.144243, 29.203541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633884, 30.804201, 29.474184>,  <38.942905, 30.163616, 29.525183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633884, 30.804201, 29.474184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.303581, 30.579109, 29.458944>,  <38.105400, 30.444054, 29.449800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.303581, 30.579109, 29.458944>,  <38.633884, 30.804201, 29.474184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303581, 30.579109, 29.458944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340913, 0.444169, 0.828548,
		-0.449327, 0.697172, -0.558620,
		-0.825762, -0.562730, -0.038098,
		38.055851, 30.410290, 29.447515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177567, 31.251558, 29.718784>,  <38.633884, 30.804201, 29.474184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177567, 31.251558, 29.718784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.966961, 30.911940, 29.736227>,  <37.840595, 30.708168, 29.746693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.966961, 30.911940, 29.736227>,  <38.177567, 31.251558, 29.718784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966961, 30.911940, 29.736227> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643441, 0.431490, 0.632297,
		-0.555665, 0.304858, -0.773498,
		-0.526517, -0.849046, 0.043606,
		37.809006, 30.657227, 29.749310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436897, 31.467264, 29.482485>,  <38.177567, 31.251558, 29.718784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436897, 31.467264, 29.482485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.441345, 31.124557, 29.688717>,  <37.444012, 30.918934, 29.812456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.441345, 31.124557, 29.688717>,  <37.436897, 31.467264, 29.482485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441345, 31.124557, 29.688717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509391, 0.438842, 0.740229,
		-0.860463, -0.270863, -0.431551,
		0.011118, -0.856768, 0.515582,
		37.444679, 30.867527, 29.843391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742165, 31.450809, 29.798878>,  <37.436897, 31.467264, 29.482485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742165, 31.450809, 29.798878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.958763, 31.209284, 30.032866>,  <37.088722, 31.064369, 30.173258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.958763, 31.209284, 30.032866>,  <36.742165, 31.450809, 29.798878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958763, 31.209284, 30.032866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430723, 0.398292, 0.809840,
		-0.721981, -0.690487, -0.044402,
		0.541499, -0.603814, 0.584968,
		37.121212, 31.028139, 30.208355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275715, 31.009920, 30.286268>,  <36.742165, 31.450809, 29.798878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275715, 31.009920, 30.286268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636181, 31.016321, 30.459541>,  <36.852459, 31.020161, 30.563505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.636181, 31.016321, 30.459541>,  <36.275715, 31.009920, 30.286268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636181, 31.016321, 30.459541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419666, 0.282468, 0.862608,
		-0.108559, -0.959143, 0.261265,
		0.901163, 0.016000, 0.433184,
		36.906528, 31.021122, 30.589497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312630, 30.514332, 30.921253>,  <36.275715, 31.009920, 30.286268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312630, 30.514332, 30.921253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.627930, 30.754942, 30.973137>,  <36.817112, 30.899309, 31.004267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.627930, 30.754942, 30.973137>,  <36.312630, 30.514332, 30.921253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627930, 30.754942, 30.973137> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259993, 0.134509, 0.956196,
		0.557730, -0.787447, 0.262419,
		0.788252, 0.601527, 0.129711,
		36.864407, 30.935400, 31.012051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626698, 30.278646, 31.525747>,  <36.312630, 30.514332, 30.921253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626698, 30.278646, 31.525747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.752445, 30.651777, 31.455313>,  <36.827892, 30.875656, 31.413052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.752445, 30.651777, 31.455313>,  <36.626698, 30.278646, 31.525747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752445, 30.651777, 31.455313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198639, 0.246024, 0.948691,
		0.928286, -0.263260, 0.262638,
		0.314368, 0.932827, -0.176087,
		36.846756, 30.931625, 31.402487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055820, 30.481018, 32.024323>,  <36.626698, 30.278646, 31.525747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055820, 30.481018, 32.024323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.907848, 30.823147, 31.879225>,  <36.819065, 31.028423, 31.792166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.907848, 30.823147, 31.879225>,  <37.055820, 30.481018, 32.024323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907848, 30.823147, 31.879225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245432, 0.286602, 0.926079,
		0.896057, 0.431610, 0.103901,
		-0.369926, 0.855320, -0.362742,
		36.796871, 31.079742, 31.770403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308426, 31.023886, 32.538792>,  <37.055820, 30.481018, 32.024323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308426, 31.023886, 32.538792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.038170, 31.227724, 32.325691>,  <36.876019, 31.350027, 32.197830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.038170, 31.227724, 32.325691>,  <37.308426, 31.023886, 32.538792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038170, 31.227724, 32.325691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357048, 0.406049, 0.841214,
		0.645003, 0.758574, -0.092391,
		-0.675638, 0.509598, -0.532750,
		36.835480, 31.380604, 32.165867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.305786, 31.791023, 32.747158>,  <37.308426, 31.023886, 32.538792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.305786, 31.791023, 32.747158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.956673, 31.682465, 32.584877>,  <36.747204, 31.617331, 32.487507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.956673, 31.682465, 32.584877>,  <37.305786, 31.791023, 32.747158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956673, 31.682465, 32.584877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457951, 0.167659, 0.873024,
		-0.168914, 0.947753, -0.270615,
		-0.872782, -0.271395, -0.405704,
		36.694839, 31.601046, 32.463165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876698, 32.258686, 32.922592>,  <37.305786, 31.791023, 32.747158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876698, 32.258686, 32.922592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.629520, 31.953796, 32.845478>,  <36.481216, 31.770863, 32.799210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.629520, 31.953796, 32.845478>,  <36.876698, 32.258686, 32.922592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629520, 31.953796, 32.845478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508907, 0.200864, 0.837059,
		-0.599305, 0.615359, -0.512023,
		-0.617938, -0.762225, -0.192782,
		36.444138, 31.725128, 32.787643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190285, 32.515274, 33.028027>,  <36.876698, 32.258686, 32.922592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190285, 32.515274, 33.028027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.163155, 32.116203, 33.030777>,  <36.146877, 31.876762, 33.032429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.163155, 32.116203, 33.030777>,  <36.190285, 32.515274, 33.028027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163155, 32.116203, 33.030777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516828, 0.041030, 0.855106,
		-0.853399, 0.054442, -0.518408,
		-0.067824, -0.997674, 0.006878,
		36.142807, 31.816902, 33.032841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448494, 32.394341, 33.287025>,  <36.190285, 32.515274, 33.028027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448494, 32.394341, 33.287025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.704865, 32.091812, 33.339458>,  <35.858688, 31.910294, 33.370918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.704865, 32.091812, 33.339458>,  <35.448494, 32.394341, 33.287025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704865, 32.091812, 33.339458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189874, 0.009247, 0.981765,
		-0.743745, -0.654131, -0.137679,
		0.640930, -0.756324, 0.131079,
		35.897144, 31.864914, 33.378784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995110, 32.051716, 33.729275>,  <35.448494, 32.394341, 33.287025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995110, 32.051716, 33.729275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.321644, 31.824755, 33.772446>,  <35.517567, 31.688578, 33.798347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.321644, 31.824755, 33.772446>,  <34.995110, 32.051716, 33.729275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321644, 31.824755, 33.772446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111032, 0.029210, 0.993388,
		-0.566803, -0.822922, -0.039155,
		0.816337, -0.567402, 0.107927,
		35.566544, 31.654533, 33.804825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785023, 31.598269, 34.146900>,  <34.995110, 32.051716, 33.729275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785023, 31.598269, 34.146900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181725, 31.565079, 34.185970>,  <35.419746, 31.545166, 34.209412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.181725, 31.565079, 34.185970>,  <34.785023, 31.598269, 34.146900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181725, 31.565079, 34.185970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098196, -0.002261, 0.995165,
		-0.082352, -0.996549, -0.010390,
		0.991753, -0.082974, 0.097671,
		35.479252, 31.540186, 34.215271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846592, 31.112474, 34.763977>,  <34.785023, 31.598269, 34.146900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846592, 31.112474, 34.763977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.198261, 31.297245, 34.717197>,  <35.409264, 31.408108, 34.689129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.198261, 31.297245, 34.717197>,  <34.846592, 31.112474, 34.763977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198261, 31.297245, 34.717197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158612, -0.052267, 0.985957,
		0.449327, -0.885377, -0.119219,
		0.879174, 0.461927, -0.116947,
		35.462013, 31.435823, 34.682114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366142, 30.662477, 35.082169>,  <34.846592, 31.112474, 34.763977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366142, 30.662477, 35.082169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.480595, 31.045506, 35.068344>,  <35.549267, 31.275322, 35.060047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.480595, 31.045506, 35.068344>,  <35.366142, 30.662477, 35.082169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480595, 31.045506, 35.068344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279565, -0.048924, 0.958879,
		0.916501, -0.284024, -0.281701,
		0.286127, 0.957568, -0.034564,
		35.566433, 31.332775, 35.057976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893353, 30.731688, 35.516792>,  <35.366142, 30.662477, 35.082169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893353, 30.731688, 35.516792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.792988, 31.117723, 35.486736>,  <35.732769, 31.349344, 35.468704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.792988, 31.117723, 35.486736>,  <35.893353, 30.731688, 35.516792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792988, 31.117723, 35.486736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043345, 0.066340, 0.996855,
		0.967039, 0.253379, 0.025186,
		-0.250912, 0.965090, -0.075136,
		35.717716, 31.407249, 35.464195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228306, 30.936279, 36.063202>,  <35.893353, 30.731688, 35.516792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228306, 30.936279, 36.063202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.974342, 31.238657, 35.999401>,  <35.821964, 31.420084, 35.961121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.974342, 31.238657, 35.999401>,  <36.228306, 30.936279, 36.063202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974342, 31.238657, 35.999401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067972, 0.151001, 0.986194,
		0.769593, 0.636983, -0.044488,
		-0.634907, 0.755944, -0.159506,
		35.783871, 31.465441, 35.951550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250458, 30.893824, 36.791721>,  <36.228306, 30.936279, 36.063202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250458, 30.893824, 36.791721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.313236, 30.597500, 37.052971>,  <36.350903, 30.419706, 37.209721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.313236, 30.597500, 37.052971>,  <36.250458, 30.893824, 36.791721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313236, 30.597500, 37.052971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078748, -0.668601, -0.739440,
		0.984462, 0.064622, -0.163273,
		0.156949, -0.740808, 0.653123,
		36.360321, 30.375257, 37.248909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.765110, 30.537905, 36.542480>,  <36.250458, 30.893824, 36.791721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.765110, 30.537905, 36.542480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555119, 30.278723, 36.763226>,  <36.429123, 30.123215, 36.895672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555119, 30.278723, 36.763226>,  <36.765110, 30.537905, 36.542480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555119, 30.278723, 36.763226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026293, -0.660438, -0.750420,
		0.850708, -0.379445, 0.363754,
		-0.524980, -0.647953, 0.551863,
		36.397625, 30.084337, 36.928783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145226, 29.891087, 36.467556>,  <36.765110, 30.537905, 36.542480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145226, 29.891087, 36.467556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.771015, 29.801090, 36.576488>,  <36.546490, 29.747093, 36.641850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.771015, 29.801090, 36.576488>,  <37.145226, 29.891087, 36.467556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771015, 29.801090, 36.576488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016579, -0.742122, -0.670060,
		0.352860, -0.631376, 0.690546,
		-0.935529, -0.224989, 0.272333,
		36.490356, 29.733593, 36.658188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206581, 29.165234, 36.374249>,  <37.145226, 29.891087, 36.467556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206581, 29.165234, 36.374249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.819084, 29.261858, 36.396832>,  <36.586586, 29.319832, 36.410381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.819084, 29.261858, 36.396832>,  <37.206581, 29.165234, 36.374249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.819084, 29.261858, 36.396832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215761, -0.708151, -0.672287,
		-0.122419, -0.663453, 0.738135,
		-0.968742, 0.241561, 0.056456,
		36.528461, 29.334326, 36.413769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839245, 28.524136, 36.364319>,  <37.206581, 29.165234, 36.374249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839245, 28.524136, 36.364319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.554424, 28.792988, 36.283096>,  <36.383533, 28.954298, 36.234364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.554424, 28.792988, 36.283096>,  <36.839245, 28.524136, 36.364319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554424, 28.792988, 36.283096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318768, -0.567132, -0.759440,
		-0.625601, -0.476029, 0.618078,
		-0.712047, 0.672130, -0.203055,
		36.340809, 28.994627, 36.222179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287663, 28.119200, 36.265907>,  <36.839245, 28.524136, 36.364319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287663, 28.119200, 36.265907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.202755, 28.464670, 36.083038>,  <36.151810, 28.671953, 35.973316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.202755, 28.464670, 36.083038>,  <36.287663, 28.119200, 36.265907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202755, 28.464670, 36.083038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149574, -0.491032, -0.858204,
		-0.965697, -0.113786, 0.233413,
		-0.212265, 0.863679, -0.457169,
		36.139076, 28.723774, 35.945889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793785, 27.886900, 35.790398>,  <36.287663, 28.119200, 36.265907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793785, 27.886900, 35.790398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.943947, 28.230505, 35.651157>,  <36.034042, 28.436668, 35.567616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.943947, 28.230505, 35.651157>,  <35.793785, 27.886900, 35.790398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943947, 28.230505, 35.651157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044338, -0.391779, -0.918990,
		-0.925800, 0.329559, -0.185162,
		0.375404, 0.859011, -0.348097,
		36.056568, 28.488209, 35.546730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402863, 28.014853, 35.055908>,  <35.793785, 27.886900, 35.790398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402863, 28.014853, 35.055908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.742214, 28.226610, 35.055843>,  <35.945824, 28.353664, 35.055805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.742214, 28.226610, 35.055843>,  <35.402863, 28.014853, 35.055908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742214, 28.226610, 35.055843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167491, -0.268696, -0.948551,
		-0.502201, 0.804701, -0.316624,
		0.848375, 0.529395, -0.000159,
		35.996727, 28.385429, 35.055794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471302, 28.218252, 34.352222>,  <35.402863, 28.014853, 35.055908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471302, 28.218252, 34.352222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.836647, 28.274958, 34.504894>,  <36.055855, 28.308981, 34.596497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.836647, 28.274958, 34.504894>,  <35.471302, 28.218252, 34.352222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836647, 28.274958, 34.504894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383636, 0.014357, -0.923373,
		-0.136380, 0.989797, -0.041272,
		0.913359, 0.141763, 0.381679,
		36.110653, 28.317486, 34.619396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790298, 28.702518, 33.868660>,  <35.471302, 28.218252, 34.352222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790298, 28.702518, 33.868660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.089146, 28.521343, 34.063255>,  <36.268452, 28.412638, 34.180012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.089146, 28.521343, 34.063255>,  <35.790298, 28.702518, 33.868660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089146, 28.521343, 34.063255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520505, -0.056522, -0.851986,
		0.413394, 0.889748, 0.193529,
		0.747114, -0.452939, 0.486484,
		36.313278, 28.385462, 34.209202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459423, 29.033020, 33.708660>,  <35.790298, 28.702518, 33.868660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459423, 29.033020, 33.708660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.562698, 28.666004, 33.829628>,  <36.624664, 28.445795, 33.902210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.562698, 28.666004, 33.829628>,  <36.459423, 29.033020, 33.708660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562698, 28.666004, 33.829628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587088, -0.099587, -0.803374,
		0.767245, 0.384971, 0.512964,
		0.258191, -0.917540, 0.302419,
		36.640156, 28.390741, 33.920353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128376, 29.036594, 33.749836>,  <36.459423, 29.033020, 33.708660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128376, 29.036594, 33.749836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.012932, 28.660736, 33.676327>,  <36.943665, 28.435221, 33.632221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.012932, 28.660736, 33.676327>,  <37.128376, 29.036594, 33.749836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012932, 28.660736, 33.676327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615939, -0.035264, -0.787004,
		0.733024, -0.340327, 0.588942,
		-0.288606, -0.939646, -0.183772,
		36.926350, 28.378841, 33.621197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735062, 28.722048, 33.463699>,  <37.128376, 29.036594, 33.749836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735062, 28.722048, 33.463699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.437843, 28.483948, 33.341347>,  <37.259514, 28.341087, 33.267937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.437843, 28.483948, 33.341347>,  <37.735062, 28.722048, 33.463699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437843, 28.483948, 33.341347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507717, -0.203610, -0.837118,
		0.436016, -0.777315, 0.453510,
		-0.743043, -0.595252, -0.305879,
		37.214931, 28.305372, 33.249584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983433, 28.067165, 33.291641>,  <37.735062, 28.722048, 33.463699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983433, 28.067165, 33.291641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.634846, 28.032976, 33.098461>,  <37.425694, 28.012463, 32.982552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.634846, 28.032976, 33.098461>,  <37.983433, 28.067165, 33.291641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634846, 28.032976, 33.098461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489628, -0.208786, -0.846565,
		-0.028475, -0.974219, 0.223800,
		-0.871466, -0.085473, -0.482950,
		37.373405, 28.007334, 32.953575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168751, 27.457634, 33.034798>,  <37.983433, 28.067165, 33.291641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168751, 27.457634, 33.034798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863098, 27.630352, 32.843109>,  <37.679707, 27.733984, 32.728096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.863098, 27.630352, 32.843109>,  <38.168751, 27.457634, 33.034798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863098, 27.630352, 32.843109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457041, -0.161838, -0.874598,
		-0.455203, -0.887334, -0.073682,
		-0.764136, 0.431795, -0.479217,
		37.633858, 27.759892, 32.699345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978210, 26.963100, 32.441162>,  <38.168751, 27.457634, 33.034798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978210, 26.963100, 32.441162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.794819, 27.293741, 32.310612>,  <37.684784, 27.492126, 32.232281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.794819, 27.293741, 32.310612>,  <37.978210, 26.963100, 32.441162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794819, 27.293741, 32.310612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468235, -0.087463, -0.879265,
		-0.755349, -0.555948, -0.346944,
		-0.458481, 0.826602, -0.326379,
		37.657276, 27.541721, 32.212696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758354, 26.849125, 31.680588>,  <37.978210, 26.963100, 32.441162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758354, 26.849125, 31.680588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.748787, 27.243101, 31.749079>,  <37.743046, 27.479486, 31.790174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.748787, 27.243101, 31.749079>,  <37.758354, 26.849125, 31.680588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748787, 27.243101, 31.749079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347522, 0.168787, -0.922356,
		-0.937367, 0.037447, -0.346325,
		-0.023915, 0.984941, 0.171229,
		37.741611, 27.538584, 31.800447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286022, 27.111977, 31.222645>,  <37.758354, 26.849125, 31.680588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286022, 27.111977, 31.222645> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.556240, 27.386715, 31.329884>,  <37.718372, 27.551558, 31.394228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.556240, 27.386715, 31.329884>,  <37.286022, 27.111977, 31.222645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556240, 27.386715, 31.329884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301662, 0.074317, -0.950514,
		-0.672782, 0.722992, -0.156992,
		0.675547, 0.686847, 0.268099,
		37.758904, 27.592770, 31.410313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.295452, 27.786825, 30.657825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.663189, 27.801020, 30.814569>,  <37.883831, 27.809536, 30.908615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.663189, 27.801020, 30.814569>,  <37.295452, 27.786825, 30.657825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663189, 27.801020, 30.814569> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380460, 0.173744, -0.908330,
		-0.100315, 0.984151, 0.146229,
		0.919340, 0.035485, 0.391860,
		37.938992, 27.811665, 30.932127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719254, 28.195141, 30.168356>,  <37.295452, 27.786825, 30.657825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719254, 28.195141, 30.168356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.003597, 28.049391, 30.408989>,  <38.174206, 27.961941, 30.553370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.003597, 28.049391, 30.408989>,  <37.719254, 28.195141, 30.168356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003597, 28.049391, 30.408989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655166, 0.031981, -0.754808,
		0.255794, 0.930703, 0.261461,
		0.710864, -0.364376, 0.601584,
		38.216858, 27.940079, 30.589464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387657, 28.638021, 30.190025>,  <37.719254, 28.195141, 30.168356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387657, 28.638021, 30.190025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.505024, 28.265629, 30.276913>,  <38.575443, 28.042194, 30.329044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.505024, 28.265629, 30.276913>,  <38.387657, 28.638021, 30.190025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505024, 28.265629, 30.276913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662195, 0.034048, -0.748558,
		0.689497, 0.363477, 0.626481,
		0.293414, -0.930981, 0.217217,
		38.593048, 27.986334, 30.342077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109474, 28.635820, 30.124996>,  <38.387657, 28.638021, 30.190025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109474, 28.635820, 30.124996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.026947, 28.244646, 30.111864>,  <38.977432, 28.009941, 30.103985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.026947, 28.244646, 30.111864>,  <39.109474, 28.635820, 30.124996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026947, 28.244646, 30.111864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645294, -0.110764, -0.755861,
		0.735547, -0.177131, 0.653908,
		-0.206316, -0.977934, -0.032830,
		38.965054, 27.951265, 30.102015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755539, 28.254322, 29.959826>,  <39.109474, 28.635820, 30.124996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755539, 28.254322, 29.959826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.459488, 28.009836, 29.847668>,  <39.281857, 27.863144, 29.780373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.459488, 28.009836, 29.847668>,  <39.755539, 28.254322, 29.959826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459488, 28.009836, 29.847668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524360, -0.263510, -0.809697,
		0.421014, -0.746309, 0.515529,
		-0.740131, -0.611217, -0.280393,
		39.237450, 27.826471, 29.763550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048195, 27.539284, 29.820776>,  <39.755539, 28.254322, 29.959826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048195, 27.539284, 29.820776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.697403, 27.553671, 29.629101>,  <39.486927, 27.562304, 29.514095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.697403, 27.553671, 29.629101>,  <40.048195, 27.539284, 29.820776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697403, 27.553671, 29.629101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423620, -0.412890, -0.806268,
		-0.226848, -0.910071, 0.346859,
		-0.876976, 0.035964, -0.479187,
		39.434311, 27.564461, 29.485344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076759, 26.872122, 29.544544>,  <40.048195, 27.539284, 29.820776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076759, 26.872122, 29.544544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.785473, 27.070652, 29.355499>,  <39.610703, 27.189770, 29.242073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.785473, 27.070652, 29.355499>,  <40.076759, 26.872122, 29.544544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785473, 27.070652, 29.355499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210507, -0.494275, -0.843433,
		-0.652218, -0.713689, 0.255459,
		-0.728216, 0.496326, -0.472612,
		39.567009, 27.219549, 29.213717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659714, 26.444799, 29.082403>,  <40.076759, 26.872122, 29.544544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659714, 26.444799, 29.082403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.629047, 26.803230, 28.907513>,  <39.610649, 27.018290, 28.802578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.629047, 26.803230, 28.907513>,  <39.659714, 26.444799, 29.082403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629047, 26.803230, 28.907513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162010, -0.421493, -0.892242,
		-0.983806, -0.139241, -0.112859,
		-0.076667, 0.896078, -0.437226,
		39.606049, 27.072054, 28.776344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245659, 26.334887, 28.442797>,  <39.659714, 26.444799, 29.082403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245659, 26.334887, 28.442797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.449741, 26.672407, 28.376240>,  <39.572193, 26.874920, 28.336306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.449741, 26.672407, 28.376240>,  <39.245659, 26.334887, 28.442797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449741, 26.672407, 28.376240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226749, -0.318596, -0.920370,
		-0.829621, 0.431853, -0.353882,
		0.510210, 0.843801, -0.166391,
		39.602806, 26.925547, 28.326323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081470, 26.526646, 27.796043>,  <39.245659, 26.334887, 28.442797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081470, 26.526646, 27.796043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.443130, 26.681593, 27.868105>,  <39.660126, 26.774561, 27.911343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.443130, 26.681593, 27.868105>,  <39.081470, 26.526646, 27.796043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443130, 26.681593, 27.868105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323722, -0.346055, -0.880596,
		-0.278773, 0.854512, -0.438286,
		0.904151, 0.387369, 0.180153,
		39.714375, 26.797804, 27.922152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255714, 26.891378, 27.253166>,  <39.081470, 26.526646, 27.796043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255714, 26.891378, 27.253166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.615334, 26.810982, 27.408766>,  <39.831104, 26.762743, 27.502127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.615334, 26.810982, 27.408766>,  <39.255714, 26.891378, 27.253166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615334, 26.810982, 27.408766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357667, -0.175367, -0.917235,
		0.252576, 0.963768, -0.085774,
		0.899044, -0.200993, 0.389001,
		39.885048, 26.750685, 27.525467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649731, 27.052887, 26.743629>,  <39.255714, 26.891378, 27.253166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649731, 27.052887, 26.743629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.938221, 26.892481, 26.969555>,  <40.111317, 26.796236, 27.105110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.938221, 26.892481, 26.969555>,  <39.649731, 27.052887, 26.743629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938221, 26.892481, 26.969555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538468, -0.188360, -0.821324,
		0.435753, 0.896496, 0.080084,
		0.721229, -0.401017, 0.564813,
		40.154591, 26.772175, 27.138998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.197735, 27.213833, 26.362135>,  <39.649731, 27.052887, 26.743629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.197735, 27.213833, 26.362135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.328644, 26.922243, 26.602631>,  <40.407188, 26.747290, 26.746929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.328644, 26.922243, 26.602631>,  <40.197735, 27.213833, 26.362135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328644, 26.922243, 26.602631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682563, -0.257637, -0.683908,
		0.653454, 0.634207, 0.413255,
		0.327270, -0.728975, 0.601241,
		40.426826, 26.703550, 26.783003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814972, 27.290722, 26.382778>,  <40.197735, 27.213833, 26.362135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814972, 27.290722, 26.382778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.774086, 26.905180, 26.481194>,  <40.749554, 26.673855, 26.540243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.774086, 26.905180, 26.481194>,  <40.814972, 27.290722, 26.382778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774086, 26.905180, 26.481194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775017, -0.232213, -0.587729,
		0.623620, 0.130613, 0.770739,
		-0.102210, -0.963855, 0.246040,
		40.743423, 26.616024, 26.555006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569466, 26.923677, 26.516369>,  <40.814972, 27.290722, 26.382778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569466, 26.923677, 26.516369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.318214, 26.620340, 26.446659>,  <41.167465, 26.438339, 26.404833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.318214, 26.620340, 26.446659>,  <41.569466, 26.923677, 26.516369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318214, 26.620340, 26.446659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701785, -0.455383, -0.547836,
		0.336084, -0.466416, 0.818232,
		-0.628128, -0.758342, -0.174277,
		41.129776, 26.392838, 26.394377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.854870, 26.248686, 26.775429>,  <41.569466, 26.923677, 26.516369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.854870, 26.248686, 26.775429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.580055, 26.133242, 26.508692>,  <41.415165, 26.063974, 26.348650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.580055, 26.133242, 26.508692>,  <41.854870, 26.248686, 26.775429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580055, 26.133242, 26.508692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708820, -0.468097, -0.527692,
		-0.159848, -0.835217, 0.526176,
		-0.687039, -0.288613, -0.666843,
		41.373943, 26.046658, 26.308640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.993015, 25.546906, 26.668383>,  <41.854870, 26.248686, 26.775429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.993015, 25.546906, 26.668383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.785152, 25.676287, 26.352070>,  <41.660435, 25.753916, 26.162283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.785152, 25.676287, 26.352070>,  <41.993015, 25.546906, 26.668383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785152, 25.676287, 26.352070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649316, -0.452042, -0.611593,
		-0.555288, -0.831286, 0.024883,
		-0.519657, 0.323453, -0.790781,
		41.629253, 25.773323, 26.114836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.142384, 25.022816, 26.275053>,  <41.993015, 25.546906, 26.668383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.142384, 25.022816, 26.275053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.974686, 25.275879, 26.014599>,  <41.874065, 25.427717, 25.858326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.974686, 25.275879, 26.014599>,  <42.142384, 25.022816, 26.275053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.974686, 25.275879, 26.014599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632319, -0.311168, -0.709470,
		-0.651465, -0.709166, -0.269587,
		-0.419245, 0.632659, -0.651134,
		41.848911, 25.465677, 25.819258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.977318, 24.646574, 25.681011>,  <42.142384, 25.022816, 26.275053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.977318, 24.646574, 25.681011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.037331, 25.025169, 25.566713>,  <42.073338, 25.252327, 25.498135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.037331, 25.025169, 25.566713>,  <41.977318, 24.646574, 25.681011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037331, 25.025169, 25.566713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627326, -0.314516, -0.712420,
		-0.764169, -0.072371, -0.640944,
		0.150028, 0.946489, -0.285743,
		42.082340, 25.309116, 25.480989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.006557, 24.602209, 24.959583>,  <41.977318, 24.646574, 25.681011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.006557, 24.602209, 24.959583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.183750, 24.951366, 25.041386>,  <42.290066, 25.160860, 25.090467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.183750, 24.951366, 25.041386>,  <42.006557, 24.602209, 24.959583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183750, 24.951366, 25.041386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667666, -0.168969, -0.725032,
		-0.598320, 0.457719, -0.657652,
		0.442984, 0.872893, 0.204506,
		42.316647, 25.213234, 25.102737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.024643, 25.004377, 24.318510>,  <42.006557, 24.602209, 24.959583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.024643, 25.004377, 24.318510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.300709, 25.169035, 24.556576>,  <42.466347, 25.267830, 24.699415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.300709, 25.169035, 24.556576>,  <42.024643, 25.004377, 24.318510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300709, 25.169035, 24.556576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637036, 0.044571, -0.769545,
		-0.343305, 0.910254, -0.231471,
		0.690164, 0.411644, 0.595166,
		42.507759, 25.292528, 24.735125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429741, 25.438070, 23.921782>,  <42.024643, 25.004377, 24.318510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429741, 25.438070, 23.921782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.690140, 25.386963, 24.221083>,  <42.846378, 25.356298, 24.400663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.690140, 25.386963, 24.221083>,  <42.429741, 25.438070, 23.921782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690140, 25.386963, 24.221083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739127, -0.117841, -0.663178,
		0.172909, 0.984778, 0.017725,
		0.650995, -0.127770, 0.748252,
		42.885437, 25.348633, 24.445559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149757, 25.867924, 23.704229>,  <42.429741, 25.438070, 23.921782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149757, 25.867924, 23.704229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.248653, 25.591307, 23.975712>,  <43.307991, 25.425337, 24.138601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.248653, 25.591307, 23.975712>,  <43.149757, 25.867924, 23.704229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.248653, 25.591307, 23.975712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820357, -0.223356, -0.526428,
		0.515640, 0.686936, 0.512089,
		0.247244, -0.691543, 0.678704,
		43.322826, 25.383844, 24.179323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893169, 25.925968, 23.821733>,  <43.149757, 25.867924, 23.704229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893169, 25.925968, 23.821733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.797466, 25.541231, 23.874819>,  <43.740044, 25.310389, 23.906670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.797466, 25.541231, 23.874819>,  <43.893169, 25.925968, 23.821733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.797466, 25.541231, 23.874819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791739, -0.272383, -0.546769,
		0.562056, -0.025743, 0.826699,
		-0.239254, -0.961845, 0.132712,
		43.725689, 25.252678, 23.914633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.054867, 26.587378, 24.192719>,  <43.893169, 25.925968, 23.821733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.054867, 26.587378, 24.192719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.032295, 26.880966, 23.921988>,  <44.018753, 27.057119, 23.759548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.032295, 26.880966, 23.921988>,  <44.054867, 26.587378, 24.192719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.032295, 26.880966, 23.921988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676739, 0.470300, 0.566429,
		0.734057, 0.490000, 0.470170,
		-0.056429, 0.733974, -0.676829,
		44.015366, 27.101158, 23.718939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.039707, 27.177319, 24.529617>,  <44.054867, 26.587378, 24.192719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.039707, 27.177319, 24.529617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.898735, 27.290411, 24.172775>,  <43.814152, 27.358267, 23.958670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.898735, 27.290411, 24.172775>,  <44.039707, 27.177319, 24.529617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.898735, 27.290411, 24.172775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603766, 0.659650, 0.447581,
		0.715024, 0.696364, -0.061776,
		-0.352430, 0.282733, -0.892107,
		43.793007, 27.375231, 23.905144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934441, 27.926847, 24.461088>,  <44.039707, 27.177319, 24.529617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934441, 27.926847, 24.461088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.693027, 27.776535, 24.179794>,  <43.548180, 27.686348, 24.011017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.693027, 27.776535, 24.179794>,  <43.934441, 27.926847, 24.461088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693027, 27.776535, 24.179794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738150, 0.596800, 0.314586,
		0.301476, 0.708955, -0.637570,
		-0.603529, -0.375782, -0.703236,
		43.511971, 27.663801, 23.968824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.713627, 28.441429, 24.206137>,  <43.934441, 27.926847, 24.461088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.713627, 28.441429, 24.206137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.426304, 28.178724, 24.114315>,  <43.253910, 28.021101, 24.059221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.426304, 28.178724, 24.114315>,  <43.713627, 28.441429, 24.206137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.426304, 28.178724, 24.114315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691109, 0.635646, 0.343981,
		-0.079999, 0.405732, -0.910484,
		-0.718310, -0.656762, -0.229554,
		43.210812, 27.981695, 24.045448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196983, 28.849295, 24.089632>,  <43.713627, 28.441429, 24.206137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196983, 28.849295, 24.089632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.976646, 28.515545, 24.097589>,  <42.844444, 28.315294, 24.102364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.976646, 28.515545, 24.097589>,  <43.196983, 28.849295, 24.089632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976646, 28.515545, 24.097589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765300, 0.514458, 0.386845,
		-0.333008, 0.197865, -0.921930,
		-0.550838, -0.834376, 0.019892,
		42.811394, 28.265232, 24.103558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503593, 28.936478, 23.758698>,  <43.196983, 28.849295, 24.089632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503593, 28.936478, 23.758698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.473778, 28.623144, 24.005545>,  <42.455891, 28.435144, 24.153652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.473778, 28.623144, 24.005545>,  <42.503593, 28.936478, 23.758698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.473778, 28.623144, 24.005545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895069, 0.325386, 0.304919,
		-0.439655, -0.529636, -0.725389,
		-0.074535, -0.783332, 0.617118,
		42.451416, 28.388144, 24.190680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.765392, 28.689009, 23.743656>,  <42.503593, 28.936478, 23.758698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.765392, 28.689009, 23.743656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.923611, 28.545601, 24.081888>,  <42.018539, 28.459557, 24.284828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.923611, 28.545601, 24.081888>,  <41.765392, 28.689009, 23.743656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923611, 28.545601, 24.081888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782993, 0.349598, 0.514493,
		-0.480070, -0.865589, -0.142437,
		0.395544, -0.358520, 0.845582,
		42.042274, 28.438046, 24.335564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155640, 28.301111, 24.103222>,  <41.765392, 28.689009, 23.743656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155640, 28.301111, 24.103222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.453297, 28.367193, 24.362129>,  <41.631893, 28.406843, 24.517473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.453297, 28.367193, 24.362129>,  <41.155640, 28.301111, 24.103222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453297, 28.367193, 24.362129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655706, -0.004520, 0.755003,
		0.127656, -0.986249, 0.104962,
		0.744147, 0.165205, 0.647266,
		41.676540, 28.416754, 24.556309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.022896, 27.857655, 24.700090>,  <41.155640, 28.301111, 24.103222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.022896, 27.857655, 24.700090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.286278, 28.132875, 24.822092>,  <41.444305, 28.298008, 24.895292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.286278, 28.132875, 24.822092>,  <41.022896, 27.857655, 24.700090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286278, 28.132875, 24.822092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495720, 0.091555, 0.863643,
		0.566305, -0.719864, 0.401365,
		0.658453, 0.688050, 0.305003,
		41.483814, 28.339291, 24.913593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325642, 27.625130, 25.372965>,  <41.022896, 27.857655, 24.700090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325642, 27.625130, 25.372965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.318401, 28.021696, 25.321177>,  <41.314056, 28.259636, 25.290104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.318401, 28.021696, 25.321177>,  <41.325642, 27.625130, 25.372965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.318401, 28.021696, 25.321177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503680, 0.102818, 0.857750,
		0.863701, 0.080737, 0.497497,
		-0.018101, 0.991418, -0.129470,
		41.312969, 28.319122, 25.282335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398956, 27.784906, 26.098339>,  <41.325642, 27.625130, 25.372965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398956, 27.784906, 26.098339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.308899, 28.139141, 25.935835>,  <41.254864, 28.351683, 25.838333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.308899, 28.139141, 25.935835>,  <41.398956, 27.784906, 26.098339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308899, 28.139141, 25.935835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358105, 0.312568, 0.879808,
		0.906131, 0.343563, 0.246762,
		-0.225140, 0.885588, -0.406259,
		41.241356, 28.404818, 25.813957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510395, 28.249128, 26.598755>,  <41.398956, 27.784906, 26.098339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510395, 28.249128, 26.598755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.247601, 28.436447, 26.362429>,  <41.089924, 28.548838, 26.220633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.247601, 28.436447, 26.362429>,  <41.510395, 28.249128, 26.598755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.247601, 28.436447, 26.362429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538624, 0.256765, 0.802469,
		0.527494, 0.845441, 0.083543,
		-0.656989, 0.468296, -0.590817,
		41.050503, 28.576937, 26.185184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.373211, 28.986271, 26.816658>,  <41.510395, 28.249128, 26.598755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.373211, 28.986271, 26.816658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.048569, 28.867992, 26.615120>,  <40.853783, 28.797026, 26.494196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.048569, 28.867992, 26.615120>,  <41.373211, 28.986271, 26.816658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048569, 28.867992, 26.615120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571478, 0.222796, 0.789794,
		-0.121283, 0.928938, -0.349806,
		-0.811605, -0.295695, -0.503847,
		40.805088, 28.779284, 26.463966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934547, 29.529865, 27.031208>,  <41.373211, 28.986271, 26.816658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934547, 29.529865, 27.031208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.716339, 29.223589, 26.894899>,  <40.585415, 29.039824, 26.813114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.716339, 29.223589, 26.894899>,  <40.934547, 29.529865, 27.031208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716339, 29.223589, 26.894899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738004, 0.246174, 0.628290,
		-0.397186, 0.594237, -0.699375,
		-0.545521, -0.765690, -0.340772,
		40.552681, 28.993881, 26.792667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347355, 29.914597, 26.877106>,  <40.934547, 29.529865, 27.031208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347355, 29.914597, 26.877106> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.228474, 29.534922, 26.918512>,  <40.157143, 29.307117, 26.943357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.228474, 29.534922, 26.918512>,  <40.347355, 29.914597, 26.877106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.228474, 29.534922, 26.918512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758374, 0.300541, 0.578398,
		-0.580118, 0.093398, -0.809160,
		-0.297207, -0.949185, 0.103518,
		40.139313, 29.250166, 26.949568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614040, 30.035595, 26.787138>,  <40.347355, 29.914597, 26.877106>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614040, 30.035595, 26.787138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.682400, 29.684021, 26.965246>,  <39.723415, 29.473076, 27.072111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.682400, 29.684021, 26.965246>,  <39.614040, 30.035595, 26.787138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682400, 29.684021, 26.965246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759483, 0.170381, 0.627818,
		-0.627677, -0.445471, -0.638418,
		0.170900, -0.878935, 0.445272,
		39.733669, 29.420341, 27.098827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959377, 29.698072, 26.726671>,  <39.614040, 30.035595, 26.787138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959377, 29.698072, 26.726671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.142223, 29.496304, 27.019686>,  <39.251930, 29.375242, 27.195494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.142223, 29.496304, 27.019686>,  <38.959377, 29.698072, 26.726671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142223, 29.496304, 27.019686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717318, 0.277852, 0.638947,
		-0.525834, -0.817532, -0.234820,
		0.457114, -0.504421, 0.732534,
		39.279358, 29.344978, 27.239447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399940, 29.438074, 27.028591>,  <38.959377, 29.698072, 26.726671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399940, 29.438074, 27.028591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.687157, 29.359549, 27.295687>,  <38.859486, 29.312433, 27.455944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.687157, 29.359549, 27.295687>,  <38.399940, 29.438074, 27.028591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687157, 29.359549, 27.295687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653027, 0.141858, 0.743930,
		-0.240767, -0.970226, -0.026337,
		0.718044, -0.196313, 0.667738,
		38.902569, 29.300655, 27.496008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174206, 28.872076, 27.543550>,  <38.399940, 29.438074, 27.028591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174206, 28.872076, 27.543550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.436287, 29.119274, 27.717354>,  <38.593536, 29.267593, 27.821636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.436287, 29.119274, 27.717354>,  <38.174206, 28.872076, 27.543550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436287, 29.119274, 27.717354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691253, 0.258400, 0.674833,
		0.304770, -0.742500, 0.596497,
		0.655198, 0.617999, 0.434503,
		38.632847, 29.304672, 27.847706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140259, 28.684397, 28.239983>,  <38.174206, 28.872076, 27.543550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140259, 28.684397, 28.239983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.289009, 29.054930, 28.215912>,  <38.378258, 29.277248, 28.201469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.289009, 29.054930, 28.215912>,  <38.140259, 28.684397, 28.239983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289009, 29.054930, 28.215912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622127, 0.296815, 0.724472,
		0.688961, -0.231976, 0.686673,
		0.371875, 0.926331, -0.060175,
		38.400570, 29.332829, 28.197859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.665070, 27.137972, 33.527840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.753448, 27.527159, 33.554729>,  <36.806477, 27.760670, 33.570862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.753448, 27.527159, 33.554729>,  <36.665070, 27.137972, 33.527840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753448, 27.527159, 33.554729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326264, 0.008786, 0.945238,
		0.919093, -0.230784, 0.319385,
		0.220952, 0.972965, 0.067221,
		36.819733, 27.819048, 33.574894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890869, 27.207626, 34.307041>,  <36.665070, 27.137972, 33.527840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890869, 27.207626, 34.307041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.831161, 27.584698, 34.187656>,  <36.795338, 27.810940, 34.116024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.831161, 27.584698, 34.187656>,  <36.890869, 27.207626, 34.307041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831161, 27.584698, 34.187656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413534, 0.214667, 0.884821,
		0.898170, 0.255498, 0.357786,
		-0.149265, 0.942677, -0.298464,
		36.786381, 27.867500, 34.098118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174843, 27.634394, 34.837200>,  <36.890869, 27.207626, 34.307041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174843, 27.634394, 34.837200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.909954, 27.871317, 34.653618>,  <36.751022, 28.013470, 34.543468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.909954, 27.871317, 34.653618>,  <37.174843, 27.634394, 34.837200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909954, 27.871317, 34.653618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293250, 0.358783, 0.886160,
		0.689542, 0.721421, -0.063900,
		-0.662221, 0.592306, -0.458953,
		36.711288, 28.049009, 34.515930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314819, 28.416742, 35.065617>,  <37.174843, 27.634394, 34.837200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314819, 28.416742, 35.065617> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.938164, 28.400291, 34.931980>,  <36.712170, 28.390421, 34.851799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.938164, 28.400291, 34.931980>,  <37.314819, 28.416742, 35.065617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938164, 28.400291, 34.931980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304626, 0.526396, 0.793795,
		0.143218, 0.849244, -0.508205,
		-0.941643, -0.041127, -0.334091,
		36.655670, 28.387953, 34.831753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087208, 29.131714, 35.053638>,  <37.314819, 28.416742, 35.065617>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087208, 29.131714, 35.053638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.754482, 28.909832, 35.045734>,  <36.554848, 28.776703, 35.040993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.754482, 28.909832, 35.045734>,  <37.087208, 29.131714, 35.053638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754482, 28.909832, 35.045734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382651, 0.547283, 0.744351,
		-0.402080, 0.626722, -0.667496,
		-0.831811, -0.554707, -0.019765,
		36.504940, 28.743420, 35.039806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548920, 29.619190, 34.982983>,  <37.087208, 29.131714, 35.053638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548920, 29.619190, 34.982983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.411957, 29.289846, 35.164017>,  <36.329781, 29.092239, 35.272636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.411957, 29.289846, 35.164017>,  <36.548920, 29.619190, 34.982983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411957, 29.289846, 35.164017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251361, 0.544425, 0.800262,
		-0.905304, 0.160252, -0.393376,
		-0.342407, -0.823360, 0.452589,
		36.309235, 29.042839, 35.299793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845242, 29.743319, 35.210339>,  <36.548920, 29.619190, 34.982983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845242, 29.743319, 35.210339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.947590, 29.429518, 35.436291>,  <36.008999, 29.241238, 35.571861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.947590, 29.429518, 35.436291>,  <35.845242, 29.743319, 35.210339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947590, 29.429518, 35.436291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197127, 0.529713, 0.824951,
		-0.946399, -0.322433, -0.019109,
		0.255869, -0.784500, 0.564880,
		36.024349, 29.194168, 35.605755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491371, 29.897350, 35.811909>,  <35.845242, 29.743319, 35.210339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491371, 29.897350, 35.811909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.719650, 29.603659, 35.958992>,  <35.856617, 29.427444, 36.047241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.719650, 29.603659, 35.958992>,  <35.491371, 29.897350, 35.811909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719650, 29.603659, 35.958992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021177, 0.434481, 0.900432,
		-0.820885, -0.521665, 0.232410,
		0.570701, -0.734229, 0.367706,
		35.890862, 29.383390, 36.069305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256992, 29.722673, 36.514896>,  <35.491371, 29.897350, 35.811909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256992, 29.722673, 36.514896> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.641281, 29.613565, 36.494476>,  <35.871857, 29.548100, 36.482224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.641281, 29.613565, 36.494476>,  <35.256992, 29.722673, 36.514896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641281, 29.613565, 36.494476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157133, 0.383094, 0.910246,
		-0.228733, -0.882516, 0.410909,
		0.960724, -0.272771, -0.051047,
		35.929497, 29.531734, 36.479164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348305, 29.437983, 37.175518>,  <35.256992, 29.722673, 36.514896>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348305, 29.437983, 37.175518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.702583, 29.529640, 37.014004>,  <35.915150, 29.584635, 36.917095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.702583, 29.529640, 37.014004>,  <35.348305, 29.437983, 37.175518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702583, 29.529640, 37.014004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277445, 0.436104, 0.856059,
		0.372249, -0.870234, 0.322681,
		0.885695, 0.229141, -0.403781,
		35.968292, 29.598383, 36.892868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792683, 29.251291, 37.695381>,  <35.348305, 29.437983, 37.175518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792683, 29.251291, 37.695381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.972324, 29.516890, 37.456245>,  <36.080109, 29.676249, 37.312763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.972324, 29.516890, 37.456245>,  <35.792683, 29.251291, 37.695381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972324, 29.516890, 37.456245> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215624, 0.568795, 0.793712,
		0.867073, -0.485365, 0.112272,
		0.449100, 0.663998, -0.597843,
		36.107056, 29.716089, 37.276894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.356792, 29.426497, 38.097168>,  <35.792683, 29.251291, 37.695381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.356792, 29.426497, 38.097168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.357376, 29.703794, 37.808887>,  <36.357727, 29.870173, 37.635918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.357376, 29.703794, 37.808887>,  <36.356792, 29.426497, 38.097168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.357376, 29.703794, 37.808887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412336, 0.656163, 0.632004,
		0.911031, -0.298096, -0.284889,
		0.001464, 0.693245, -0.720700,
		36.357815, 29.911768, 37.592678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093731, 29.765522, 37.963840>,  <36.356792, 29.426497, 38.097168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093731, 29.765522, 37.963840> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.784157, 30.012960, 37.909637>,  <36.598412, 30.161425, 37.877117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.784157, 30.012960, 37.909637>,  <37.093731, 29.765522, 37.963840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784157, 30.012960, 37.909637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378924, 0.623815, 0.683572,
		0.507388, 0.477693, -0.717194,
		-0.773934, 0.618598, -0.135507,
		36.551975, 30.198540, 37.868984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404751, 30.427650, 37.888634>,  <37.093731, 29.765522, 37.963840>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404751, 30.427650, 37.888634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.020088, 30.451452, 37.995724>,  <36.789291, 30.465733, 38.059978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.020088, 30.451452, 37.995724>,  <37.404751, 30.427650, 37.888634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020088, 30.451452, 37.995724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232314, 0.695560, 0.679872,
		-0.145764, 0.716000, -0.682713,
		-0.961656, 0.059503, 0.267724,
		36.731590, 30.469303, 38.076042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628536, 31.043009, 38.285015>,  <37.404751, 30.427650, 37.888634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628536, 31.043009, 38.285015> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.928425, 31.276672, 38.409386>,  <38.108360, 31.416870, 38.484009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.928425, 31.276672, 38.409386>,  <37.628536, 31.043009, 38.285015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928425, 31.276672, 38.409386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531659, -0.251945, -0.808617,
		-0.394022, 0.771547, -0.499462,
		0.749723, 0.584157, 0.310928,
		38.153343, 31.451920, 38.502663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803947, 31.466818, 37.677856>,  <37.628536, 31.043009, 38.285015>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803947, 31.466818, 37.677856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.115639, 31.446634, 37.927738>,  <38.302654, 31.434525, 38.077667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.115639, 31.446634, 37.927738>,  <37.803947, 31.466818, 37.677856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115639, 31.446634, 37.927738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536922, -0.460417, -0.706917,
		0.323294, 0.886268, -0.331678,
		0.779228, -0.050457, 0.624706,
		38.349407, 31.431498, 38.115150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324261, 31.783298, 37.366825>,  <37.803947, 31.466818, 37.677856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324261, 31.783298, 37.366825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.515190, 31.577669, 37.651890>,  <38.629749, 31.454290, 37.822929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.515190, 31.577669, 37.651890>,  <38.324261, 31.783298, 37.366825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515190, 31.577669, 37.651890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688487, -0.285162, -0.666834,
		0.546027, 0.808956, 0.217819,
		0.477325, -0.514075, 0.712662,
		38.658386, 31.423447, 37.865688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020252, 31.808651, 37.108997>,  <38.324261, 31.783298, 37.366825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020252, 31.808651, 37.108997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.004993, 31.534311, 37.399696>,  <38.995838, 31.369707, 37.574116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.004993, 31.534311, 37.399696>,  <39.020252, 31.808651, 37.108997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004993, 31.534311, 37.399696> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618583, -0.587383, -0.521859,
		0.784793, 0.429642, 0.446664,
		-0.038150, -0.685849, 0.726743,
		38.993549, 31.328556, 37.617718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727764, 31.634541, 37.192684>,  <39.020252, 31.808651, 37.108997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727764, 31.634541, 37.192684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.533794, 31.324118, 37.353973>,  <39.417412, 31.137865, 37.450748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.533794, 31.324118, 37.353973>,  <39.727764, 31.634541, 37.192684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533794, 31.324118, 37.353973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646380, -0.628606, -0.432490,
		0.589104, 0.050910, 0.806452,
		-0.484922, -0.776056, 0.403222,
		39.388317, 31.091301, 37.474941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251083, 31.134478, 37.436871>,  <39.727764, 31.634541, 37.192684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251083, 31.134478, 37.436871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.906597, 30.931982, 37.418835>,  <39.699905, 30.810484, 37.408012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.906597, 30.931982, 37.418835>,  <40.251083, 31.134478, 37.436871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906597, 30.931982, 37.418835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460178, -0.739027, -0.492011,
		0.215752, -0.444476, 0.869420,
		-0.861212, -0.506241, -0.045092,
		39.648232, 30.780109, 37.405308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.342800, 30.412594, 37.714455>,  <40.251083, 31.134478, 37.436871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.342800, 30.412594, 37.714455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.022537, 30.384743, 37.476429>,  <39.830379, 30.368032, 37.333614>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.022537, 30.384743, 37.476429>,  <40.342800, 30.412594, 37.714455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022537, 30.384743, 37.476429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450095, -0.725440, -0.520721,
		-0.395423, -0.684754, 0.612171,
		-0.800659, -0.069630, -0.595060,
		39.782341, 30.363853, 37.297913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038685, 29.686251, 37.789520>,  <40.342800, 30.412594, 37.714455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038685, 29.686251, 37.789520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.925385, 29.852156, 37.443630>,  <39.857407, 29.951698, 37.236095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.925385, 29.852156, 37.443630>,  <40.038685, 29.686251, 37.789520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925385, 29.852156, 37.443630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432459, -0.749537, -0.501172,
		-0.856008, -0.515912, 0.032935,
		-0.283246, 0.414764, -0.864721,
		39.840412, 29.976585, 37.184216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876022, 29.123472, 37.488289>,  <40.038685, 29.686251, 37.789520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876022, 29.123472, 37.488289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.895687, 29.389736, 37.190434>,  <39.907486, 29.549494, 37.011723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.895687, 29.389736, 37.190434>,  <39.876022, 29.123472, 37.488289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895687, 29.389736, 37.190434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444215, -0.682314, -0.580621,
		-0.894570, -0.302233, -0.329240,
		0.049162, 0.665660, -0.744634,
		39.910435, 29.589434, 36.967045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.838566, 28.642815, 36.903641>,  <39.876022, 29.123472, 37.488289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.838566, 28.642815, 36.903641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.948647, 28.989420, 36.737064>,  <40.014694, 29.197384, 36.637119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.948647, 28.989420, 36.737064>,  <39.838566, 28.642815, 36.903641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948647, 28.989420, 36.737064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525055, -0.498322, -0.689922,
		-0.805347, -0.028788, -0.592105,
		0.275198, 0.866514, -0.416437,
		40.031204, 29.249374, 36.612133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.740189, 28.523758, 36.257393>,  <39.838566, 28.642815, 36.903641>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.740189, 28.523758, 36.257393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.976978, 28.845894, 36.270004>,  <40.119053, 29.039175, 36.277569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.976978, 28.845894, 36.270004>,  <39.740189, 28.523758, 36.257393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976978, 28.845894, 36.270004> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493375, -0.331178, -0.804302,
		-0.637296, 0.491680, -0.593384,
		0.591975, 0.805339, 0.031524,
		40.154572, 29.087496, 36.279461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.756374, 28.829039, 35.679348>,  <39.740189, 28.523758, 36.257393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.756374, 28.829039, 35.679348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.104446, 28.937515, 35.843903>,  <40.313290, 29.002602, 35.942635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.104446, 28.937515, 35.843903>,  <39.756374, 28.829039, 35.679348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104446, 28.937515, 35.843903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465176, -0.176863, -0.867370,
		-0.162464, 0.946137, -0.280054,
		0.870182, 0.271192, 0.411387,
		40.365501, 29.018873, 35.967319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113197, 29.227980, 35.204025>,  <39.756374, 28.829039, 35.679348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113197, 29.227980, 35.204025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.411411, 29.092398, 35.433559>,  <40.590340, 29.011049, 35.571278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.411411, 29.092398, 35.433559>,  <40.113197, 29.227980, 35.204025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411411, 29.092398, 35.433559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511732, -0.260468, -0.818711,
		0.426971, 0.904028, -0.020735,
		0.745538, -0.338955, 0.573832,
		40.635071, 28.990711, 35.605709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.734631, 29.482496, 34.930637>,  <40.113197, 29.227980, 35.204025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.734631, 29.482496, 34.930637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.858593, 29.177881, 35.158325>,  <40.932972, 28.995111, 35.294937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.858593, 29.177881, 35.158325>,  <40.734631, 29.482496, 34.930637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858593, 29.177881, 35.158325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516744, -0.367639, -0.773186,
		0.798080, 0.533759, 0.279587,
		0.309908, -0.761540, 0.569222,
		40.951565, 28.949419, 35.329090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184929, 30.138365, 34.837914>,  <40.734631, 29.482496, 34.930637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184929, 30.138365, 34.837914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.218758, 30.493734, 34.657448>,  <41.239056, 30.706955, 34.549168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.218758, 30.493734, 34.657448>,  <41.184929, 30.138365, 34.837914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218758, 30.493734, 34.657448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626741, 0.399434, 0.669066,
		0.774625, 0.226182, 0.590591,
		0.084572, 0.888422, -0.451169,
		41.244129, 30.760262, 34.522099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363338, 30.720718, 35.333290>,  <41.184929, 30.138365, 34.837914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363338, 30.720718, 35.333290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.183422, 30.877232, 35.012146>,  <41.075474, 30.971140, 34.819458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.183422, 30.877232, 35.012146>,  <41.363338, 30.720718, 35.333290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183422, 30.877232, 35.012146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675364, 0.439226, 0.592422,
		0.584442, 0.808689, 0.066698,
		-0.449790, 0.391282, -0.802862,
		41.048485, 30.994616, 34.771286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246044, 31.358486, 35.590313>,  <41.363338, 30.720718, 35.333290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246044, 31.358486, 35.590313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.018658, 31.335325, 35.262047>,  <40.882225, 31.321428, 35.065086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.018658, 31.335325, 35.262047>,  <41.246044, 31.358486, 35.590313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.018658, 31.335325, 35.262047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630074, 0.672058, 0.389030,
		0.529007, 0.738231, -0.418529,
		-0.568470, -0.057905, -0.820664,
		40.848118, 31.317953, 35.015846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.053593, 31.997433, 35.435429>,  <41.246044, 31.358486, 35.590313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.053593, 31.997433, 35.435429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.787651, 31.781479, 35.228935>,  <40.628086, 31.651907, 35.105038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.787651, 31.781479, 35.228935>,  <41.053593, 31.997433, 35.435429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787651, 31.781479, 35.228935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731681, 0.609829, 0.304552,
		0.150394, 0.580202, -0.800467,
		-0.664849, -0.539883, -0.516237,
		40.588196, 31.619514, 35.074062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704174, 32.565289, 35.218220>,  <41.053593, 31.997433, 35.435429>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704174, 32.565289, 35.218220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.487202, 32.232155, 35.174103>,  <40.357018, 32.032276, 35.147633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.487202, 32.232155, 35.174103>,  <40.704174, 32.565289, 35.218220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487202, 32.232155, 35.174103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822988, 0.500411, 0.268849,
		-0.168713, 0.236602, -0.956847,
		-0.542427, -0.832832, -0.110294,
		40.324474, 31.982306, 35.141014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059643, 32.635414, 34.663605>,  <40.704174, 32.565289, 35.218220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059643, 32.635414, 34.663605> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.012150, 32.336044, 34.924606>,  <39.983654, 32.156422, 35.081207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.012150, 32.336044, 34.924606>,  <40.059643, 32.635414, 34.663605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012150, 32.336044, 34.924606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812537, 0.450936, 0.369380,
		-0.570691, -0.486328, -0.661663,
		-0.118728, -0.748427, 0.652504,
		39.976532, 32.111515, 35.120358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368919, 32.462074, 34.581150>,  <40.059643, 32.635414, 34.663605>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368919, 32.462074, 34.581150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.449276, 32.264751, 34.919685>,  <39.497490, 32.146358, 35.122807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.449276, 32.264751, 34.919685>,  <39.368919, 32.462074, 34.581150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449276, 32.264751, 34.919685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772910, 0.450990, 0.446338,
		-0.601873, -0.743809, -0.290683,
		0.200895, -0.493311, 0.846337,
		39.509544, 32.116756, 35.173588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686184, 32.090698, 34.745544>,  <39.368919, 32.462074, 34.581150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686184, 32.090698, 34.745544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.883507, 32.112625, 35.092796>,  <39.001900, 32.125782, 35.301147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.883507, 32.112625, 35.092796>,  <38.686184, 32.090698, 34.745544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883507, 32.112625, 35.092796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797376, 0.427329, 0.426124,
		-0.347618, -0.902433, 0.254513,
		0.493309, 0.054814, 0.868125,
		39.031498, 32.129070, 35.353233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245670, 31.872177, 35.303356>,  <38.686184, 32.090698, 34.745544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245670, 31.872177, 35.303356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.526924, 32.086040, 35.490864>,  <38.695675, 32.214359, 35.603367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.526924, 32.086040, 35.490864>,  <38.245670, 31.872177, 35.303356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526924, 32.086040, 35.490864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710930, 0.516061, 0.477765,
		0.013528, -0.669194, 0.742965,
		0.703133, 0.534659, 0.468769,
		38.737865, 32.246437, 35.631493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003384, 32.046486, 36.019672>,  <38.245670, 31.872177, 35.303356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003384, 32.046486, 36.019672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.292088, 32.312675, 35.943573>,  <38.465309, 32.472389, 35.897915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.292088, 32.312675, 35.943573>,  <38.003384, 32.046486, 36.019672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292088, 32.312675, 35.943573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542402, 0.714579, 0.441788,
		0.429949, -0.215675, 0.876714,
		0.721764, 0.665478, -0.190250,
		38.508617, 32.512318, 35.886497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902233, 32.491783, 36.459766>,  <38.003384, 32.046486, 36.019672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902233, 32.491783, 36.459766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.131794, 32.707714, 36.213444>,  <38.269531, 32.837273, 36.065651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.131794, 32.707714, 36.213444>,  <37.902233, 32.491783, 36.459766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131794, 32.707714, 36.213444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334892, 0.840929, 0.425071,
		0.747316, -0.037720, 0.663397,
		0.573904, 0.539829, -0.615808,
		38.303967, 32.869663, 36.028702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403812, 32.767887, 36.811958>,  <37.902233, 32.491783, 36.459766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403812, 32.767887, 36.811958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.332623, 32.996525, 36.491558>,  <38.289909, 33.133705, 36.299316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.332623, 32.996525, 36.491558>,  <38.403812, 32.767887, 36.811958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332623, 32.996525, 36.491558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328830, 0.732660, 0.595885,
		0.927467, 0.369449, 0.057559,
		-0.177977, 0.571591, -0.801004,
		38.279228, 33.168003, 36.251255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<44.095104, 28.933468, 32.785328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883755, 29.099039, 32.488819>,  <43.756947, 29.198381, 32.310913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883755, 29.099039, 32.488819>,  <44.095104, 28.933468, 32.785328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.883755, 29.099039, 32.488819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573672, 0.469573, 0.671119,
		0.625876, 0.779849, -0.010651,
		-0.528373, 0.413928, -0.741273,
		43.725243, 29.223217, 32.266438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137962, 29.741098, 32.863655>,  <44.095104, 28.933468, 32.785328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137962, 29.741098, 32.863655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.815556, 29.626635, 32.656406>,  <43.622112, 29.557957, 32.532059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.815556, 29.626635, 32.656406>,  <44.137962, 29.741098, 32.863655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.815556, 29.626635, 32.656406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549763, 0.686287, 0.476205,
		0.219308, 0.668673, -0.710480,
		-0.806018, -0.286160, -0.518120,
		43.573750, 29.540787, 32.500969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.822338, 30.281801, 32.747028>,  <44.137962, 29.741098, 32.863655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.822338, 30.281801, 32.747028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515583, 30.030224, 32.695946>,  <43.331528, 29.879276, 32.665295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.515583, 30.030224, 32.695946>,  <43.822338, 30.281801, 32.747028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515583, 30.030224, 32.695946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612199, 0.657198, 0.439664,
		-0.192596, 0.415355, -0.889037,
		-0.766890, -0.628945, -0.127706,
		43.285515, 29.841541, 32.657635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319782, 30.603130, 32.265850>,  <43.822338, 30.281801, 32.747028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319782, 30.603130, 32.265850> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.141537, 30.327690, 32.494675>,  <43.034588, 30.162426, 32.631969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.141537, 30.327690, 32.494675>,  <43.319782, 30.603130, 32.265850>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.141537, 30.327690, 32.494675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594691, 0.705344, 0.385788,
		-0.669155, -0.168287, -0.723818,
		-0.445617, -0.688599, 0.572063,
		43.007851, 30.121111, 32.666294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577412, 30.835464, 32.334221>,  <43.319782, 30.603130, 32.265850>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577412, 30.835464, 32.334221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588078, 30.546921, 32.611038>,  <42.594479, 30.373795, 32.777130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588078, 30.546921, 32.611038>,  <42.577412, 30.835464, 32.334221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.588078, 30.546921, 32.611038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674402, 0.498029, 0.545113,
		-0.737882, -0.481253, -0.473207,
		0.026666, -0.721361, 0.692046,
		42.596077, 30.330513, 32.818653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904625, 30.763779, 32.518166>,  <42.577412, 30.835464, 32.334221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904625, 30.763779, 32.518166> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082615, 30.592360, 32.832703>,  <42.189411, 30.489508, 33.021427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.082615, 30.592360, 32.832703>,  <41.904625, 30.763779, 32.518166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082615, 30.592360, 32.832703> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728956, 0.336732, 0.596016,
		-0.520211, -0.838425, -0.162557,
		0.444977, -0.428550, 0.786346,
		42.216106, 30.463795, 33.068607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362095, 30.516014, 32.904408>,  <41.904625, 30.763779, 32.518166>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362095, 30.516014, 32.904408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662991, 30.537243, 33.167107>,  <41.843529, 30.549980, 33.324726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.662991, 30.537243, 33.167107>,  <41.362095, 30.516014, 32.904408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662991, 30.537243, 33.167107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657398, 0.127495, 0.742680,
		-0.044319, -0.990418, 0.130794,
		0.752239, 0.053069, 0.656749,
		41.888664, 30.553164, 33.364132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208603, 30.051622, 33.390457>,  <41.362095, 30.516014, 32.904408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208603, 30.051622, 33.390457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467903, 30.273430, 33.599178>,  <41.623482, 30.406515, 33.724411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467903, 30.273430, 33.599178>,  <41.208603, 30.051622, 33.390457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467903, 30.273430, 33.599178> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693125, 0.146060, 0.705864,
		0.315200, -0.819253, 0.479034,
		0.648249, 0.554519, 0.521806,
		41.662376, 30.439785, 33.755722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109760, 29.898907, 34.147255>,  <41.208603, 30.051622, 33.390457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109760, 29.898907, 34.147255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283840, 30.258974, 34.140316>,  <41.388287, 30.475014, 34.136154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283840, 30.258974, 34.140316>,  <41.109760, 29.898907, 34.147255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283840, 30.258974, 34.140316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606197, 0.307212, 0.733585,
		0.665677, -0.308742, 0.679377,
		0.435201, 0.900166, -0.017346,
		41.414402, 30.529024, 34.135113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.471985, 29.329121, 34.626637>,  <41.109760, 29.898907, 34.147255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.471985, 29.329121, 34.626637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370758, 29.018669, 34.857662>,  <41.310020, 28.832397, 34.996277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370758, 29.018669, 34.857662>,  <41.471985, 29.329121, 34.626637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370758, 29.018669, 34.857662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605260, -0.592749, -0.531327,
		0.754728, 0.215113, 0.619767,
		-0.253071, -0.776128, 0.577564,
		41.294838, 28.785831, 35.030930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.100586, 28.996983, 34.942024>,  <41.471985, 29.329121, 34.626637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.100586, 28.996983, 34.942024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797291, 28.739771, 34.898979>,  <41.615314, 28.585443, 34.873154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797291, 28.739771, 34.898979>,  <42.100586, 28.996983, 34.942024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797291, 28.739771, 34.898979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571420, -0.575967, -0.584587,
		0.313926, -0.504750, 0.804163,
		-0.758242, -0.643031, -0.107613,
		41.569817, 28.546862, 34.866695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408657, 28.377831, 34.827522>,  <42.100586, 28.996983, 34.942024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408657, 28.377831, 34.827522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026707, 28.317116, 34.725403>,  <41.797535, 28.280687, 34.664131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026707, 28.317116, 34.725403>,  <42.408657, 28.377831, 34.827522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.026707, 28.317116, 34.725403> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286255, -0.699524, -0.654770,
		-0.079200, -0.698303, 0.711407,
		-0.954874, -0.151786, -0.255295,
		41.740246, 28.271580, 34.648815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298996, 27.710768, 34.945328>,  <42.408657, 28.377831, 34.827522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298996, 27.710768, 34.945328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020859, 27.831501, 34.684437>,  <41.853977, 27.903940, 34.527905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020859, 27.831501, 34.684437>,  <42.298996, 27.710768, 34.945328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.020859, 27.831501, 34.684437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265680, -0.735283, -0.623517,
		-0.667767, -0.606841, 0.431083,
		-0.695343, 0.301834, -0.652223,
		41.812256, 27.922050, 34.488770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290600, 27.052010, 34.553917>,  <42.298996, 27.710768, 34.945328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290600, 27.052010, 34.553917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083557, 27.312454, 34.331879>,  <41.959332, 27.468721, 34.198654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083557, 27.312454, 34.331879>,  <42.290600, 27.052010, 34.553917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.083557, 27.312454, 34.331879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235953, -0.514991, -0.824082,
		-0.822440, -0.557529, 0.112931,
		-0.517609, 0.651111, -0.555100,
		41.928276, 27.507788, 34.165348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725300, 26.742447, 34.189987>,  <42.290600, 27.052010, 34.553917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725300, 26.742447, 34.189987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792198, 27.072668, 33.974400>,  <41.832336, 27.270802, 33.845047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.792198, 27.072668, 33.974400>,  <41.725300, 26.742447, 34.189987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792198, 27.072668, 33.974400> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025816, -0.542819, -0.839453,
		-0.985577, 0.154310, -0.069472,
		0.167246, 0.825552, -0.538973,
		41.842373, 27.320333, 33.812706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308617, 26.681610, 33.528061>,  <41.725300, 26.742447, 34.189987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308617, 26.681610, 33.528061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597816, 26.946712, 33.450050>,  <41.771336, 27.105774, 33.403244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.597816, 26.946712, 33.450050>,  <41.308617, 26.681610, 33.528061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.597816, 26.946712, 33.450050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080220, -0.360921, -0.929140,
		-0.686180, 0.656119, -0.314111,
		0.722995, 0.662755, -0.195023,
		41.814716, 27.145538, 33.391544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183216, 27.059189, 32.941410>,  <41.308617, 26.681610, 33.528061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183216, 27.059189, 32.941410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583168, 27.052950, 32.940636>,  <41.823139, 27.049208, 32.940170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583168, 27.052950, 32.940636>,  <41.183216, 27.059189, 32.941410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.583168, 27.052950, 32.940636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005181, -0.211028, -0.977466,
		0.014837, 0.977356, -0.211082,
		0.999876, -0.015596, -0.001932,
		41.883129, 27.048271, 32.940056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.423069, 27.292889, 32.327995>,  <41.183216, 27.059189, 32.941410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.423069, 27.292889, 32.327995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744846, 27.096365, 32.461552>,  <41.937912, 26.978451, 32.541683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744846, 27.096365, 32.461552>,  <41.423069, 27.292889, 32.327995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744846, 27.096365, 32.461552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106267, -0.433981, -0.894632,
		0.584442, 0.755165, -0.296905,
		0.804446, -0.491310, 0.333886,
		41.986179, 26.948973, 32.561718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931347, 27.373564, 31.869720>,  <41.423069, 27.292889, 32.327995>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931347, 27.373564, 31.869720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087833, 27.054129, 32.052677>,  <42.181725, 26.862467, 32.162453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087833, 27.054129, 32.052677>,  <41.931347, 27.373564, 31.869720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.087833, 27.054129, 32.052677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257881, -0.381967, -0.887468,
		0.883429, 0.465145, 0.056509,
		0.391216, -0.798587, 0.457392,
		42.205200, 26.814552, 32.189896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522957, 27.298626, 31.560247>,  <41.931347, 27.373564, 31.869720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522957, 27.298626, 31.560247> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440784, 26.943678, 31.725353>,  <42.391479, 26.730709, 31.824417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440784, 26.943678, 31.725353>,  <42.522957, 27.298626, 31.560247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440784, 26.943678, 31.725353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504041, -0.457455, -0.732583,
		0.838893, 0.057557, 0.541245,
		-0.205430, -0.887368, 0.412766,
		42.379154, 26.677467, 31.849184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163166, 26.953211, 31.590033>,  <42.522957, 27.298626, 31.560247>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163166, 26.953211, 31.590033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887840, 26.663553, 31.607222>,  <42.722645, 26.489759, 31.617535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.887840, 26.663553, 31.607222>,  <43.163166, 26.953211, 31.590033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.887840, 26.663553, 31.607222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497520, -0.514356, -0.698507,
		0.527923, -0.459409, 0.714312,
		-0.688311, -0.724142, 0.042975,
		42.681347, 26.446310, 31.620113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.540188, 26.422974, 31.695864>,  <43.163166, 26.953211, 31.590033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.540188, 26.422974, 31.695864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205311, 26.250160, 31.561722>,  <43.004387, 26.146471, 31.481237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205311, 26.250160, 31.561722>,  <43.540188, 26.422974, 31.695864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205311, 26.250160, 31.561722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541307, -0.566980, -0.620902,
		0.078113, -0.701341, 0.708533,
		-0.837188, -0.432035, -0.335353,
		42.954155, 26.120550, 31.461117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801151, 25.736776, 31.616354>,  <43.540188, 26.422974, 31.695864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801151, 25.736776, 31.616354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461861, 25.765043, 31.406397>,  <43.258286, 25.782003, 31.280422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.461861, 25.765043, 31.406397>,  <43.801151, 25.736776, 31.616354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461861, 25.765043, 31.406397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406021, -0.549603, -0.730126,
		-0.340078, -0.832432, 0.437498,
		-0.848230, 0.070666, -0.524892,
		43.207394, 25.786243, 31.248928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.632298, 32.822647, 26.132292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.851738, 32.585228, 26.367830>,  <39.983402, 32.442776, 26.509153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.851738, 32.585228, 26.367830>,  <39.632298, 32.822647, 26.132292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851738, 32.585228, 26.367830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656368, 0.130515, 0.743066,
		-0.517896, -0.794147, -0.317984,
		0.548602, -0.593546, 0.588846,
		40.016319, 32.407166, 26.544485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137848, 32.381508, 26.452631>,  <39.632298, 32.822647, 26.132292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137848, 32.381508, 26.452631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.464134, 32.389896, 26.683861>,  <39.659904, 32.394928, 26.822599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.464134, 32.389896, 26.683861>,  <39.137848, 32.381508, 26.452631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464134, 32.389896, 26.683861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577148, 0.096677, 0.810897,
		-0.038881, -0.995095, 0.090964,
		0.815714, 0.020972, 0.578076,
		39.708847, 32.396187, 26.857283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890862, 32.250759, 27.214836>,  <39.137848, 32.381508, 26.452631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890862, 32.250759, 27.214836> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.259460, 32.390816, 27.282053>,  <39.480621, 32.474850, 27.322382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.259460, 32.390816, 27.282053>,  <38.890862, 32.250759, 27.214836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259460, 32.390816, 27.282053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240330, 0.174209, 0.954931,
		0.305090, -0.920353, 0.244684,
		0.921500, 0.350144, 0.168039,
		39.535912, 32.495857, 27.332464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254589, 31.829050, 27.832331>,  <38.890862, 32.250759, 27.214836>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254589, 31.829050, 27.832331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.419460, 32.191010, 27.789871>,  <39.518383, 32.408184, 27.764395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.419460, 32.191010, 27.789871>,  <39.254589, 31.829050, 27.832331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.419460, 32.191010, 27.789871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223129, 0.213214, 0.951185,
		0.883359, -0.368372, 0.289791,
		0.412177, 0.904899, -0.106150,
		39.543114, 32.462479, 27.758026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658051, 32.004459, 28.530071>,  <39.254589, 31.829050, 27.832331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658051, 32.004459, 28.530071> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.600368, 32.355812, 28.347795>,  <39.565758, 32.566624, 28.238430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.600368, 32.355812, 28.347795>,  <39.658051, 32.004459, 28.530071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600368, 32.355812, 28.347795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254427, 0.412111, 0.874889,
		0.956280, 0.242103, 0.164055,
		-0.144205, 0.878379, -0.455692,
		39.557106, 32.619328, 28.211088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895611, 32.417767, 29.040968>,  <39.658051, 32.004459, 28.530071>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.895611, 32.417767, 29.040968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.650013, 32.650288, 28.827389>,  <39.502655, 32.789799, 28.699242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.650013, 32.650288, 28.827389>,  <39.895611, 32.417767, 29.040968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650013, 32.650288, 28.827389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554226, 0.164148, 0.816020,
		0.562000, 0.796959, 0.221386,
		-0.613995, 0.581301, -0.533947,
		39.465813, 32.824677, 28.667204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821369, 33.006603, 29.377457>,  <39.895611, 32.417767, 29.040968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821369, 33.006603, 29.377457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.491749, 32.977585, 29.152716>,  <39.293976, 32.960175, 29.017872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.491749, 32.977585, 29.152716>,  <39.821369, 33.006603, 29.377457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491749, 32.977585, 29.152716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557667, 0.278493, 0.781952,
		0.099745, 0.957694, -0.269948,
		-0.824050, -0.072545, -0.561853,
		39.244534, 32.955822, 28.984159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520958, 33.573277, 29.483402>,  <39.821369, 33.006603, 29.377457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520958, 33.573277, 29.483402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.213619, 33.368591, 29.329630>,  <39.029217, 33.245781, 29.237366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.213619, 33.368591, 29.329630>,  <39.520958, 33.573277, 29.483402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213619, 33.368591, 29.329630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589775, 0.332766, 0.735821,
		-0.248601, 0.792097, -0.557476,
		-0.768351, -0.511711, -0.384433,
		38.983112, 33.215076, 29.214300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889359, 34.033127, 29.494133>,  <39.520958, 33.573277, 29.483402>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889359, 34.033127, 29.494133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.760300, 33.654560, 29.488508>,  <38.682865, 33.427422, 29.485132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.760300, 33.654560, 29.488508>,  <38.889359, 34.033127, 29.494133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760300, 33.654560, 29.488508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537931, 0.171125, 0.825437,
		-0.778798, 0.273894, -0.564319,
		-0.322652, -0.946413, -0.014064,
		38.663506, 33.370636, 29.484289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139099, 34.118492, 29.681086>,  <38.889359, 34.033127, 29.494133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139099, 34.118492, 29.681086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.206657, 33.724304, 29.688219>,  <38.247192, 33.487789, 29.692499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.206657, 33.724304, 29.688219>,  <38.139099, 34.118492, 29.681086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206657, 33.724304, 29.688219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713646, -0.109791, 0.691849,
		-0.679840, -0.129580, -0.721821,
		0.168899, -0.985472, 0.017834,
		38.257328, 33.428661, 29.693569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464008, 33.795876, 29.371311>,  <38.139099, 34.118492, 29.681086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464008, 33.795876, 29.371311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.673496, 33.557770, 29.615074>,  <37.799191, 33.414906, 29.761332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.673496, 33.557770, 29.615074>,  <37.464008, 33.795876, 29.371311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673496, 33.557770, 29.615074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701279, 0.104890, 0.705129,
		-0.483660, -0.796654, -0.362514,
		0.523719, -0.595265, 0.609407,
		37.830612, 33.379189, 29.797895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980659, 33.414425, 29.684029>,  <37.464008, 33.795876, 29.371311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980659, 33.414425, 29.684029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.292007, 33.336308, 29.922691>,  <37.478817, 33.289436, 30.065889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.292007, 33.336308, 29.922691>,  <36.980659, 33.414425, 29.684029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292007, 33.336308, 29.922691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613990, -0.038536, 0.788373,
		-0.130973, -0.979987, -0.149905,
		0.778372, -0.195296, 0.596655,
		37.525520, 33.277721, 30.101688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796768, 32.801758, 30.097828>,  <36.980659, 33.414425, 29.684029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796768, 32.801758, 30.097828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.088154, 32.982136, 30.304127>,  <37.262985, 33.090363, 30.427906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.088154, 32.982136, 30.304127>,  <36.796768, 32.801758, 30.097828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088154, 32.982136, 30.304127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590936, 0.032721, 0.806055,
		0.346608, -0.891954, 0.290314,
		0.728462, 0.450942, 0.515746,
		37.306694, 33.117416, 30.458851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839890, 32.444862, 30.718460>,  <36.796768, 32.801758, 30.097828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839890, 32.444862, 30.718460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.008686, 32.801334, 30.785049>,  <37.109966, 33.015217, 30.825003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.008686, 32.801334, 30.785049>,  <36.839890, 32.444862, 30.718460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008686, 32.801334, 30.785049> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443473, 0.042760, 0.895267,
		0.790729, -0.451623, 0.413260,
		0.421995, 0.891184, 0.166471,
		37.135284, 33.068691, 30.834991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342236, 32.105732, 31.164701>,  <36.839890, 32.444862, 30.718460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342236, 32.105732, 31.164701> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.195404, 31.740160, 31.233965>,  <37.107304, 31.520817, 31.275522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.195404, 31.740160, 31.233965>,  <37.342236, 32.105732, 31.164701>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195404, 31.740160, 31.233965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653957, -0.385945, -0.650682,
		0.661507, -0.125616, 0.739344,
		-0.367082, -0.913930, 0.173158,
		37.085281, 31.465981, 31.285912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939358, 31.684267, 31.082401>,  <37.342236, 32.105732, 31.164701>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939358, 31.684267, 31.082401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.611351, 31.456392, 31.060389>,  <37.414547, 31.319668, 31.047180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.611351, 31.456392, 31.060389>,  <37.939358, 31.684267, 31.082401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611351, 31.456392, 31.060389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326553, -0.386739, -0.862436,
		0.470034, -0.725184, 0.503165,
		-0.820019, -0.569685, -0.055031,
		37.365345, 31.285486, 31.043879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115932, 30.973196, 31.053541>,  <37.939358, 31.684267, 31.082401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115932, 30.973196, 31.053541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.744289, 30.969303, 30.905666>,  <37.521305, 30.966967, 30.816940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.744289, 30.969303, 30.905666>,  <38.115932, 30.973196, 31.053541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744289, 30.969303, 30.905666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315263, -0.543417, -0.778015,
		-0.193322, -0.839407, 0.507960,
		-0.929105, -0.009733, -0.369688,
		37.465557, 30.966383, 30.794760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918079, 30.209063, 30.879757>,  <38.115932, 30.973196, 31.053541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918079, 30.209063, 30.879757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.683174, 30.452816, 30.666677>,  <37.542229, 30.599068, 30.538830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.683174, 30.452816, 30.666677>,  <37.918079, 30.209063, 30.879757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683174, 30.452816, 30.666677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109482, -0.592289, -0.798252,
		-0.801955, -0.527107, 0.281115,
		-0.587266, 0.609386, -0.532699,
		37.506992, 30.635632, 30.506868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529404, 29.745733, 30.511904>,  <37.918079, 30.209063, 30.879757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529404, 29.745733, 30.511904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.494022, 30.086058, 30.304714>,  <37.472794, 30.290253, 30.180401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.494022, 30.086058, 30.304714>,  <37.529404, 29.745733, 30.511904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494022, 30.086058, 30.304714> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090914, -0.510944, -0.854793,
		-0.991923, -0.122700, -0.032156,
		-0.088453, 0.850812, -0.517972,
		37.467487, 30.341301, 30.149323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213806, 29.537384, 29.893530>,  <37.529404, 29.745733, 30.511904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213806, 29.537384, 29.893530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.400906, 29.879337, 29.803740>,  <37.513165, 30.084509, 29.749865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.400906, 29.879337, 29.803740>,  <37.213806, 29.537384, 29.893530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400906, 29.879337, 29.803740> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226075, -0.361242, -0.904651,
		-0.854459, 0.372402, -0.362238,
		0.467749, 0.854881, -0.224476,
		37.541229, 30.135801, 29.736397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027367, 29.688732, 29.151575>,  <37.213806, 29.537384, 29.893530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027367, 29.688732, 29.151575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.351494, 29.891794, 29.268650>,  <37.545971, 30.013632, 29.338896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.351494, 29.891794, 29.268650>,  <37.027367, 29.688732, 29.151575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351494, 29.891794, 29.268650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419325, -0.153446, -0.894774,
		-0.409325, 0.847785, -0.337214,
		0.810320, 0.507656, 0.292688,
		37.594589, 30.044090, 29.356457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170914, 30.182215, 28.615009>,  <37.027367, 29.688732, 29.151575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170914, 30.182215, 28.615009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.528542, 30.162914, 28.793140>,  <37.743118, 30.151335, 28.900019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.528542, 30.162914, 28.793140>,  <37.170914, 30.182215, 28.615009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528542, 30.162914, 28.793140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438237, -0.111516, -0.891915,
		0.092695, 0.992591, -0.078558,
		0.894067, -0.048249, 0.445327,
		37.796761, 30.148439, 28.926739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603207, 30.474161, 28.120270>,  <37.170914, 30.182215, 28.615009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603207, 30.474161, 28.120270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.832031, 30.273401, 28.379759>,  <37.969326, 30.152946, 28.535452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.832031, 30.273401, 28.379759>,  <37.603207, 30.474161, 28.120270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832031, 30.273401, 28.379759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625520, -0.244629, -0.740866,
		0.530535, 0.829612, 0.174004,
		0.572064, -0.501898, 0.648723,
		38.003651, 30.122831, 28.574375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389534, 30.674456, 28.023130>,  <37.603207, 30.474161, 28.120270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389534, 30.674456, 28.023130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.363384, 30.319613, 28.205893>,  <38.347694, 30.106707, 28.315550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.363384, 30.319613, 28.205893>,  <38.389534, 30.674456, 28.023130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363384, 30.319613, 28.205893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605535, -0.399208, -0.688447,
		0.793129, 0.231667, 0.563274,
		-0.065373, -0.887110, 0.456906,
		38.343773, 30.053480, 28.342964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042812, 30.484755, 28.239513>,  <38.389534, 30.674456, 28.023130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042812, 30.484755, 28.239513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.862469, 30.128279, 28.219500>,  <38.754261, 29.914392, 28.207491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.862469, 30.128279, 28.219500>,  <39.042812, 30.484755, 28.239513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862469, 30.128279, 28.219500> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675395, -0.303965, -0.671897,
		0.583579, -0.336727, 0.738952,
		-0.450862, -0.891190, -0.050037,
		38.727211, 29.860922, 28.204489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632957, 29.999525, 28.293207>,  <39.042812, 30.484755, 28.239513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632957, 29.999525, 28.293207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.322212, 29.770794, 28.187756>,  <39.135765, 29.633554, 28.124485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.322212, 29.770794, 28.187756>,  <39.632957, 29.999525, 28.293207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322212, 29.770794, 28.187756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610719, -0.582306, -0.536602,
		0.153332, -0.577867, 0.801598,
		-0.776860, -0.571829, -0.263629,
		39.089153, 29.599245, 28.108667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779549, 29.313589, 28.482464>,  <39.632957, 29.999525, 28.293207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779549, 29.313589, 28.482464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.523487, 29.313200, 28.175167>,  <39.369850, 29.312967, 27.990789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.523487, 29.313200, 28.175167>,  <39.779549, 29.313589, 28.482464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523487, 29.313200, 28.175167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661204, -0.509861, -0.550319,
		-0.391161, -0.860256, 0.327035,
		-0.640158, -0.000973, -0.768243,
		39.331440, 29.312908, 27.944695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.852898, 28.718107, 28.229183>,  <39.779549, 29.313589, 28.482464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.852898, 28.718107, 28.229183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.677773, 28.918087, 27.930288>,  <39.572697, 29.038074, 27.750952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.677773, 28.918087, 27.930288>,  <39.852898, 28.718107, 28.229183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677773, 28.918087, 27.930288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624628, -0.428643, -0.652767,
		-0.646649, -0.752539, -0.124616,
		-0.437817, 0.499950, -0.747239,
		39.546429, 29.068071, 27.706116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.218906, 28.255812, 28.297436>,  <39.852898, 28.718107, 28.229183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.218906, 28.255812, 28.297436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.345348, 27.908022, 28.449272>,  <39.421215, 27.699348, 28.540375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.345348, 27.908022, 28.449272>,  <39.218906, 28.255812, 28.297436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345348, 27.908022, 28.449272> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667557, 0.080457, 0.740199,
		-0.674125, -0.487382, -0.554990,
		0.316107, -0.869474, 0.379593,
		39.440182, 27.647181, 28.563150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.643593, 28.119398, 28.655661>,  <39.218906, 28.255812, 28.297436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.643593, 28.119398, 28.655661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.912125, 27.862358, 28.803377>,  <39.073246, 27.708134, 28.892008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.912125, 27.862358, 28.803377>,  <38.643593, 28.119398, 28.655661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912125, 27.862358, 28.803377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573427, -0.134657, 0.808114,
		-0.469568, -0.754275, -0.458885,
		0.671332, -0.642602, 0.369291,
		39.113525, 27.669579, 28.914165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285831, 27.519852, 28.939394>,  <38.643593, 28.119398, 28.655661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285831, 27.519852, 28.939394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.649326, 27.509029, 29.105988>,  <38.867424, 27.502537, 29.205944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.649326, 27.509029, 29.105988>,  <38.285831, 27.519852, 28.939394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649326, 27.509029, 29.105988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417074, -0.096042, 0.903784,
		0.015552, -0.995010, -0.098559,
		0.908740, -0.027051, 0.416486,
		38.921947, 27.500912, 29.230934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261662, 27.022346, 29.458721>,  <38.285831, 27.519852, 28.939394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261662, 27.022346, 29.458721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.573463, 27.259916, 29.538351>,  <38.760544, 27.402458, 29.586128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.573463, 27.259916, 29.538351>,  <38.261662, 27.022346, 29.458721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573463, 27.259916, 29.538351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319410, 0.103489, 0.941949,
		0.538843, -0.797838, 0.270375,
		0.779503, 0.593923, 0.199073,
		38.807316, 27.438093, 29.598072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708042, 26.686499, 29.943316>,  <38.261662, 27.022346, 29.458721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708042, 26.686499, 29.943316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.723885, 27.082298, 29.998915>,  <38.733391, 27.319778, 30.032274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.723885, 27.082298, 29.998915>,  <38.708042, 26.686499, 29.943316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723885, 27.082298, 29.998915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191694, -0.128998, 0.972940,
		0.980655, -0.065180, 0.184573,
		0.039606, 0.989500, 0.138997,
		38.735767, 27.379148, 30.040613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970718, 26.777121, 30.649456>,  <38.708042, 26.686499, 29.943316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970718, 26.777121, 30.649456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.833843, 27.141512, 30.557343>,  <38.751717, 27.360146, 30.502075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.833843, 27.141512, 30.557343>,  <38.970718, 26.777121, 30.649456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833843, 27.141512, 30.557343> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378485, 0.090687, 0.921154,
		0.860033, 0.402366, 0.313759,
		-0.342188, 0.910976, -0.230284,
		38.731186, 27.414804, 30.488258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076130, 27.239334, 31.176474>,  <38.970718, 26.777121, 30.649456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076130, 27.239334, 31.176474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.811909, 27.482761, 31.000607>,  <38.653374, 27.628819, 30.895086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.811909, 27.482761, 31.000607>,  <39.076130, 27.239334, 31.176474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811909, 27.482761, 31.000607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351508, 0.266780, 0.897369,
		0.663405, 0.747311, 0.037693,
		-0.660558, 0.608568, -0.439669,
		38.613743, 27.665331, 30.868706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.081009, 27.942741, 31.479515>,  <39.076130, 27.239334, 31.176474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.081009, 27.942741, 31.479515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.714127, 27.893978, 31.327789>,  <38.493999, 27.864721, 31.236753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.714127, 27.893978, 31.327789>,  <39.081009, 27.942741, 31.479515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714127, 27.893978, 31.327789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397283, 0.207905, 0.893835,
		-0.030103, 0.970523, -0.239123,
		-0.917202, -0.121907, -0.379313,
		38.438965, 27.857407, 31.213995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.585896, 28.483702, 31.767109>,  <39.081009, 27.942741, 31.479515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.585896, 28.483702, 31.767109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.342896, 28.192509, 31.639996>,  <38.197094, 28.017794, 31.563728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.342896, 28.192509, 31.639996>,  <38.585896, 28.483702, 31.767109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.342896, 28.192509, 31.639996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547786, 0.094245, 0.831293,
		-0.575218, 0.679087, -0.456033,
		-0.607499, -0.727983, -0.317783,
		38.160645, 27.974113, 31.544661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908512, 28.821119, 31.855135>,  <38.585896, 28.483702, 31.767109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908512, 28.821119, 31.855135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.853775, 28.425030, 31.844320>,  <37.820934, 28.187376, 31.837831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.853775, 28.425030, 31.844320>,  <37.908512, 28.821119, 31.855135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853775, 28.425030, 31.844320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605008, 0.061935, 0.793808,
		-0.784373, 0.124983, -0.607568,
		-0.136843, -0.990224, -0.027035,
		37.812721, 28.127962, 31.836210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145981, 28.694857, 31.850050>,  <37.908512, 28.821119, 31.855135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145981, 28.694857, 31.850050> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.297108, 28.345345, 31.972532>,  <37.387783, 28.135637, 32.046021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.297108, 28.345345, 31.972532>,  <37.145981, 28.694857, 31.850050>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297108, 28.345345, 31.972532> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609243, 0.014413, 0.792852,
		-0.697193, -0.486104, -0.526900,
		0.377815, -0.873782, 0.306204,
		37.410454, 28.083210, 32.064392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623386, 28.109238, 31.942112>,  <37.145981, 28.694857, 31.850050>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623386, 28.109238, 31.942112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.937046, 28.031149, 32.177738>,  <37.125244, 27.984295, 32.319115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.937046, 28.031149, 32.177738>,  <36.623386, 28.109238, 31.942112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937046, 28.031149, 32.177738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614041, -0.106761, 0.782020,
		-0.089770, -0.974933, -0.203584,
		0.784152, -0.195211, 0.589065,
		37.172291, 27.972582, 32.354458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.162846, 28.055260, 32.503532>,  <36.623386, 28.109238, 31.942112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.162846, 28.055260, 32.503532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.539448, 28.029419, 32.635834>,  <36.765408, 28.013914, 32.715214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.539448, 28.029419, 32.635834>,  <36.162846, 28.055260, 32.503532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539448, 28.029419, 32.635834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336917, -0.157804, 0.928216,
		-0.007772, -0.985355, -0.170339,
		0.941503, -0.064604, 0.330756,
		36.821899, 28.010038, 32.735062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229019, 27.517347, 32.939434>,  <36.162846, 28.055260, 32.503532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229019, 27.517347, 32.939434> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.517929, 27.778887, 33.029598>,  <36.691273, 27.935810, 33.083694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.517929, 27.778887, 33.029598>,  <36.229019, 27.517347, 32.939434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517929, 27.778887, 33.029598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341408, 0.053640, 0.938383,
		0.601468, -0.754724, 0.261971,
		0.722272, 0.653846, 0.225406,
		36.734612, 27.975040, 33.097221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.848804, 25.076786, 31.151953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.546413, 25.279360, 30.986048>,  <43.364979, 25.400904, 30.886505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.546413, 25.279360, 30.986048>,  <43.848804, 25.076786, 31.151953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.546413, 25.279360, 30.986048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145835, -0.487389, -0.860920,
		-0.638150, -0.711321, 0.294598,
		-0.755974, 0.506433, -0.414763,
		43.319622, 25.431290, 30.861618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.413841, 24.627504, 30.624346>,  <43.848804, 25.076786, 31.151953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.413841, 24.627504, 30.624346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.365505, 25.009167, 30.514812>,  <43.336502, 25.238165, 30.449093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.365505, 25.009167, 30.514812>,  <43.413841, 24.627504, 30.624346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.365505, 25.009167, 30.514812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232163, -0.241038, -0.942338,
		-0.965141, -0.177447, -0.192393,
		-0.120841, 0.954156, -0.273832,
		43.329254, 25.295414, 30.432663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.023785, 24.544197, 30.014442>,  <43.413841, 24.627504, 30.624346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.023785, 24.544197, 30.014442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.188911, 24.907475, 29.986837>,  <43.287987, 25.125441, 29.970274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.188911, 24.907475, 29.986837>,  <43.023785, 24.544197, 30.014442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.188911, 24.907475, 29.986837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235737, -0.179729, -0.955053,
		-0.879777, 0.377996, -0.288291,
		0.412821, 0.908194, -0.069014,
		43.312759, 25.179934, 29.966133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.742180, 24.773216, 29.373909>,  <43.023785, 24.544197, 30.014442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.742180, 24.773216, 29.373909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.052517, 25.009068, 29.463709>,  <43.238720, 25.150579, 29.517590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.052517, 25.009068, 29.463709>,  <42.742180, 24.773216, 29.373909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052517, 25.009068, 29.463709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349593, -0.105548, -0.930937,
		-0.525214, 0.800747, -0.288019,
		0.775845, 0.589630, 0.224500,
		43.285271, 25.185957, 29.531059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.764679, 25.463266, 28.927811>,  <42.742180, 24.773216, 29.373909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.764679, 25.463266, 28.927811> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.148170, 25.416040, 29.031273>,  <43.378265, 25.387705, 29.093351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.148170, 25.416040, 29.031273>,  <42.764679, 25.463266, 28.927811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148170, 25.416040, 29.031273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253232, -0.059100, -0.965599,
		0.129291, 0.991246, -0.026763,
		0.958727, -0.118066, 0.258656,
		43.435787, 25.380621, 29.108870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112179, 25.832476, 28.366568>,  <42.764679, 25.463266, 28.927811>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112179, 25.832476, 28.366568> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.383995, 25.597446, 28.542284>,  <43.547085, 25.456429, 28.647715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.383995, 25.597446, 28.542284>,  <43.112179, 25.832476, 28.366568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383995, 25.597446, 28.542284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481294, -0.094872, -0.871410,
		0.553694, 0.803590, 0.218326,
		0.679543, -0.587574, 0.439293,
		43.587856, 25.421175, 28.674072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.688923, 26.214117, 28.247776>,  <43.112179, 25.832476, 28.366568>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.688923, 26.214117, 28.247776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.755535, 25.823826, 28.304653>,  <43.795502, 25.589651, 28.338779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.755535, 25.823826, 28.304653>,  <43.688923, 26.214117, 28.247776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.755535, 25.823826, 28.304653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441157, -0.055243, -0.895728,
		0.881844, 0.211894, 0.421251,
		0.166528, -0.975730, 0.142194,
		43.805492, 25.531107, 28.347311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.381191, 26.156870, 27.855566>,  <43.688923, 26.214117, 28.247776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.381191, 26.156870, 27.855566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.255680, 25.783848, 27.926994>,  <44.180374, 25.560036, 27.969852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.255680, 25.783848, 27.926994>,  <44.381191, 26.156870, 27.855566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.255680, 25.783848, 27.926994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351646, -0.288830, -0.890462,
		0.881980, -0.216612, 0.418557,
		-0.313777, -0.932554, 0.178572,
		44.161549, 25.504082, 27.980566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972698, 25.737410, 27.803825>,  <44.381191, 26.156870, 27.855566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.972698, 25.737410, 27.803825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.665436, 25.482750, 27.776646>,  <44.481079, 25.329954, 27.760338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.665436, 25.482750, 27.776646>,  <44.972698, 25.737410, 27.803825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.665436, 25.482750, 27.776646> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309949, -0.276895, -0.909539,
		0.560244, -0.719725, 0.410027,
		-0.768152, -0.636651, -0.067950,
		44.434990, 25.291754, 27.756260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.220531, 25.029943, 27.657007>,  <44.972698, 25.737410, 27.803825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.220531, 25.029943, 27.657007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.845142, 25.049585, 27.520267>,  <44.619911, 25.061371, 27.438223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.845142, 25.049585, 27.520267>,  <45.220531, 25.029943, 27.657007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.845142, 25.049585, 27.520267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329950, -0.164884, -0.929487,
		-0.102005, -0.985090, 0.138537,
		-0.938471, 0.049102, -0.341850,
		44.563602, 25.064318, 27.417713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.179630, 24.446976, 27.263388>,  <45.220531, 25.029943, 27.657007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.179630, 24.446976, 27.263388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.891499, 24.688375, 27.126619>,  <44.718620, 24.833216, 27.044558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.891499, 24.688375, 27.126619>,  <45.179630, 24.446976, 27.263388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.891499, 24.688375, 27.126619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285134, -0.191735, -0.939115,
		-0.632312, -0.773969, -0.033964,
		-0.720333, 0.603498, -0.341921,
		44.675400, 24.869425, 27.024042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.657269, 24.046608, 26.810843>,  <45.179630, 24.446976, 27.263388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.657269, 24.046608, 26.810843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.656128, 24.438572, 26.731071>,  <44.655445, 24.673750, 26.683208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.656128, 24.438572, 26.731071>,  <44.657269, 24.046608, 26.810843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.656128, 24.438572, 26.731071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058979, -0.198917, -0.978240,
		-0.998255, -0.014552, -0.057226,
		-0.002852, 0.979908, -0.199429,
		44.655273, 24.732544, 26.671244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.401646, 24.045851, 26.150185>,  <44.657269, 24.046608, 26.810843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.401646, 24.045851, 26.150185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.548489, 24.416273, 26.185175>,  <44.636593, 24.638527, 26.206169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.548489, 24.416273, 26.185175>,  <44.401646, 24.045851, 26.150185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.548489, 24.416273, 26.185175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169075, 0.026045, -0.985259,
		-0.914684, 0.376484, -0.147011,
		0.367105, 0.926057, 0.087477,
		44.658619, 24.694090, 26.211418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.927063, 24.478054, 25.758596>,  <44.401646, 24.045851, 26.150185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.927063, 24.478054, 25.758596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.315044, 24.569458, 25.792002>,  <44.547832, 24.624300, 25.812046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.315044, 24.569458, 25.792002>,  <43.927063, 24.478054, 25.758596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.315044, 24.569458, 25.792002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039859, 0.189382, -0.981094,
		-0.240004, 0.954944, 0.174583,
		0.969953, 0.228508, 0.083515,
		44.606030, 24.638010, 25.817057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586323, 25.184492, 25.536694>,  <43.927063, 24.478054, 25.758596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586323, 25.184492, 25.536694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.391338, 25.270643, 25.198227>,  <43.274349, 25.322334, 24.995148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.391338, 25.270643, 25.198227>,  <43.586323, 25.184492, 25.536694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.391338, 25.270643, 25.198227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714360, 0.458872, 0.528324,
		0.502071, 0.862003, -0.069824,
		-0.487458, 0.215377, -0.846167,
		43.245102, 25.335257, 24.944378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418758, 25.812815, 25.601364>,  <43.586323, 25.184492, 25.536694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418758, 25.812815, 25.601364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.139759, 25.690147, 25.342302>,  <42.972359, 25.616547, 25.186865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.139759, 25.690147, 25.342302>,  <43.418758, 25.812815, 25.601364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139759, 25.690147, 25.342302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710245, 0.415849, 0.567997,
		0.095140, 0.856169, -0.507862,
		-0.697496, -0.306667, -0.647654,
		42.930511, 25.598146, 25.148006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886616, 26.464533, 25.443392>,  <43.418758, 25.812815, 25.601364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886616, 26.464533, 25.443392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.724937, 26.112654, 25.343185>,  <42.627930, 25.901525, 25.283062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.724937, 26.112654, 25.343185>,  <42.886616, 26.464533, 25.443392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.724937, 26.112654, 25.343185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869215, 0.284152, 0.404627,
		-0.284765, 0.381300, -0.879499,
		-0.404195, -0.879698, -0.250515,
		42.603680, 25.848743, 25.268030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.224651, 26.568808, 25.179403>,  <42.886616, 26.464533, 25.443392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.224651, 26.568808, 25.179403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.179310, 26.174829, 25.231611>,  <42.152103, 25.938442, 25.262936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.179310, 26.174829, 25.231611>,  <42.224651, 26.568808, 25.179403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.179310, 26.174829, 25.231611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818111, 0.167072, 0.550256,
		-0.563778, -0.044406, -0.824732,
		-0.113355, -0.984944, 0.130520,
		42.145302, 25.879347, 25.270767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506512, 26.329969, 24.891973>,  <42.224651, 26.568808, 25.179403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506512, 26.329969, 24.891973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.606907, 26.079081, 25.186890>,  <41.667145, 25.928547, 25.363840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.606907, 26.079081, 25.186890>,  <41.506512, 26.329969, 24.891973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606907, 26.079081, 25.186890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833100, 0.247872, 0.494473,
		-0.492897, -0.738345, -0.460325,
		0.250990, -0.627221, 0.737291,
		41.682205, 25.890915, 25.408077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791374, 26.104290, 25.198336>,  <41.506512, 26.329969, 24.891973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791374, 26.104290, 25.198336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.060528, 25.977875, 25.465874>,  <41.222019, 25.902025, 25.626396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.060528, 25.977875, 25.465874>,  <40.791374, 26.104290, 25.198336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060528, 25.977875, 25.465874> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688981, 0.061438, 0.722170,
		-0.269327, -0.946755, -0.176405,
		0.672880, -0.316040, 0.668843,
		41.262390, 25.883062, 25.666527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476299, 25.527290, 25.605389>,  <40.791374, 26.104290, 25.198336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476299, 25.527290, 25.605389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.759731, 25.736301, 25.795074>,  <40.929790, 25.861708, 25.908886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.759731, 25.736301, 25.795074>,  <40.476299, 25.527290, 25.605389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759731, 25.736301, 25.795074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607987, 0.111016, 0.786147,
		0.358137, -0.845366, 0.396352,
		0.708583, 0.522525, 0.474212,
		40.972305, 25.893059, 25.937338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347149, 25.406763, 26.186159>,  <40.476299, 25.527290, 25.605389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347149, 25.406763, 26.186159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.599911, 25.710339, 26.249037>,  <40.751568, 25.892483, 26.286764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.599911, 25.710339, 26.249037>,  <40.347149, 25.406763, 26.186159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599911, 25.710339, 26.249037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551708, 0.298015, 0.778977,
		0.544349, -0.578965, 0.607029,
		0.631904, 0.758938, 0.157195,
		40.789482, 25.938021, 26.296196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.634274, 25.422127, 26.877615>,  <40.347149, 25.406763, 26.186159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.634274, 25.422127, 26.877615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.665462, 25.805811, 26.768923>,  <40.684177, 26.036022, 26.703709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.665462, 25.805811, 26.768923>,  <40.634274, 25.422127, 26.877615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.665462, 25.805811, 26.768923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451829, 0.276961, 0.848023,
		0.888690, 0.056651, 0.454995,
		0.077975, 0.959210, -0.271729,
		40.688854, 26.093575, 26.687405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885986, 25.702600, 27.449123>,  <40.634274, 25.422127, 26.877615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885986, 25.702600, 27.449123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.726276, 26.010387, 27.249725>,  <40.630451, 26.195059, 27.130087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.726276, 26.010387, 27.249725>,  <40.885986, 25.702600, 27.449123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.726276, 26.010387, 27.249725> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369714, 0.362420, 0.855548,
		0.838981, 0.525903, 0.139777,
		-0.399277, 0.769466, -0.498497,
		40.606495, 26.241228, 27.100176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057037, 26.208311, 27.805828>,  <40.885986, 25.702600, 27.449123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057037, 26.208311, 27.805828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.762314, 26.371447, 27.590132>,  <40.585480, 26.469328, 27.460714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.762314, 26.371447, 27.590132>,  <41.057037, 26.208311, 27.805828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762314, 26.371447, 27.590132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381400, 0.407822, 0.829587,
		0.558250, 0.816914, -0.144938,
		-0.736811, 0.407838, -0.539238,
		40.541271, 26.493797, 27.428360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995708, 26.721142, 28.121941>,  <41.057037, 26.208311, 27.805828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995708, 26.721142, 28.121941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.650173, 26.728426, 27.920565>,  <40.442852, 26.732798, 27.799738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.650173, 26.728426, 27.920565>,  <40.995708, 26.721142, 28.121941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650173, 26.728426, 27.920565> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377762, 0.637736, 0.671259,
		0.333288, 0.770039, -0.544021,
		-0.863838, 0.018212, -0.503441,
		40.391022, 26.733889, 27.769533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814014, 27.420341, 28.186672>,  <40.995708, 26.721142, 28.121941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814014, 27.420341, 28.186672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.463345, 27.235235, 28.134077>,  <40.252941, 27.124170, 28.102520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.463345, 27.235235, 28.134077>,  <40.814014, 27.420341, 28.186672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463345, 27.235235, 28.134077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342739, 0.408997, 0.845725,
		-0.337596, 0.786491, -0.517166,
		-0.876675, -0.462767, -0.131486,
		40.200340, 27.096405, 28.094631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273914, 28.017689, 28.251675>,  <40.814014, 27.420341, 28.186672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273914, 28.017689, 28.251675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.059414, 27.680372, 28.266108>,  <39.930714, 27.477983, 28.274767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.059414, 27.680372, 28.266108>,  <40.273914, 28.017689, 28.251675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059414, 27.680372, 28.266108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667440, 0.449816, 0.593455,
		-0.516684, 0.294157, -0.804058,
		-0.536247, -0.843289, 0.036080,
		39.898540, 27.427385, 28.276932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846684, 28.266701, 27.663660>,  <40.273914, 28.017689, 28.251675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846684, 28.266701, 27.663660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.807621, 28.618362, 27.477091>,  <39.784184, 28.829359, 27.365150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.807621, 28.618362, 27.477091>,  <39.846684, 28.266701, 27.663660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.807621, 28.618362, 27.477091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500410, -0.361732, -0.786600,
		-0.860263, -0.310219, -0.404613,
		-0.097657, 0.879155, -0.466422,
		39.778324, 28.882109, 27.337164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710938, 28.068012, 27.003405>,  <39.846684, 28.266701, 27.663660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710938, 28.068012, 27.003405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.871902, 28.433828, 26.986982>,  <39.968479, 28.653318, 26.977129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.871902, 28.433828, 26.986982>,  <39.710938, 28.068012, 27.003405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871902, 28.433828, 26.986982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608028, -0.300528, -0.734836,
		-0.684374, 0.270743, -0.677001,
		0.402410, 0.914539, -0.041054,
		39.992626, 28.708191, 26.974667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623161, 28.244843, 26.273731>,  <39.710938, 28.068012, 27.003405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623161, 28.244843, 26.273731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.898781, 28.505953, 26.399647>,  <40.064152, 28.662619, 26.475197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.898781, 28.505953, 26.399647>,  <39.623161, 28.244843, 26.273731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898781, 28.505953, 26.399647> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562337, -0.207592, -0.800427,
		-0.457151, 0.728553, -0.510121,
		0.689051, 0.652775, 0.314791,
		40.105495, 28.701786, 26.494083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735367, 28.776875, 25.794569>,  <39.623161, 28.244843, 26.273731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735367, 28.776875, 25.794569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.066574, 28.734018, 26.014719>,  <40.265297, 28.708303, 26.146809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.066574, 28.734018, 26.014719>,  <39.735367, 28.776875, 25.794569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066574, 28.734018, 26.014719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558748, 0.075676, -0.825878,
		0.046836, 0.991360, 0.122526,
		0.828014, -0.107142, 0.550376,
		40.314980, 28.701876, 26.179832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173080, 29.116220, 25.400017>,  <39.735367, 28.776875, 25.794569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173080, 29.116220, 25.400017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.448486, 28.949440, 25.637367>,  <40.613731, 28.849371, 25.779778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.448486, 28.949440, 25.637367>,  <40.173080, 29.116220, 25.400017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448486, 28.949440, 25.637367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697742, 0.157767, -0.698760,
		0.197735, 0.895131, 0.399551,
		0.688518, -0.416953, 0.593375,
		40.655041, 28.824354, 25.815380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748352, 29.559509, 25.385012>,  <40.173080, 29.116220, 25.400017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748352, 29.559509, 25.385012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.887207, 29.205494, 25.509077>,  <40.970520, 28.993084, 25.583515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.887207, 29.205494, 25.509077>,  <40.748352, 29.559509, 25.385012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887207, 29.205494, 25.509077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714114, 0.035078, -0.699150,
		0.607896, 0.464192, 0.644196,
		0.347137, -0.885040, 0.310162,
		40.991348, 28.939981, 25.602125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402210, 29.553528, 25.034260>,  <40.748352, 29.559509, 25.385012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402210, 29.553528, 25.034260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.377972, 29.168112, 25.138508>,  <41.363430, 28.936863, 25.201057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.377972, 29.168112, 25.138508>,  <41.402210, 29.553528, 25.034260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377972, 29.168112, 25.138508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807349, -0.200845, -0.554841,
		0.586954, 0.176792, 0.790082,
		-0.060593, -0.963538, 0.260620,
		41.359795, 28.879051, 25.216694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764492, 30.118759, 25.425907>,  <41.402210, 29.553528, 25.034260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764492, 30.118759, 25.425907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.849239, 30.494278, 25.317265>,  <41.900085, 30.719589, 25.252079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.849239, 30.494278, 25.317265>,  <41.764492, 30.118759, 25.425907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.849239, 30.494278, 25.317265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790976, 0.327946, 0.516535,
		0.573995, 0.105399, 0.812047,
		0.211865, 0.938798, -0.271608,
		41.912800, 30.775917, 25.235783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.682770, 30.471758, 26.015553>,  <41.764492, 30.118759, 25.425907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.682770, 30.471758, 26.015553> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.650909, 30.748363, 25.728369>,  <41.631794, 30.914328, 25.556059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.650909, 30.748363, 25.728369>,  <41.682770, 30.471758, 26.015553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650909, 30.748363, 25.728369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784836, 0.400544, 0.472860,
		0.614564, 0.601142, 0.510822,
		-0.079649, 0.691514, -0.717958,
		41.627014, 30.955818, 25.512981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494045, 31.118025, 26.368382>,  <41.682770, 30.471758, 26.015553>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494045, 31.118025, 26.368382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.436840, 31.219513, 25.985722>,  <41.402519, 31.280405, 25.756126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.436840, 31.219513, 25.985722>,  <41.494045, 31.118025, 26.368382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436840, 31.219513, 25.985722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671105, 0.685573, 0.282149,
		0.727438, 0.682361, 0.072228,
		-0.143010, 0.253718, -0.956648,
		41.393936, 31.295628, 25.698727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635872, 31.738403, 26.349489>,  <41.494045, 31.118025, 26.368382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635872, 31.738403, 26.349489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.432598, 31.713917, 26.005861>,  <41.310635, 31.699224, 25.799685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.432598, 31.713917, 26.005861>,  <41.635872, 31.738403, 26.349489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432598, 31.713917, 26.005861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710479, 0.593585, 0.377989,
		0.486792, 0.802439, -0.345144,
		-0.508186, -0.061216, -0.859069,
		41.280144, 31.695553, 25.748140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537914, 32.423603, 26.095692>,  <41.635872, 31.738403, 26.349489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537914, 32.423603, 26.095692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.250240, 32.164242, 25.995810>,  <41.077637, 32.008625, 25.935881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.250240, 32.164242, 25.995810>,  <41.537914, 32.423603, 26.095692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250240, 32.164242, 25.995810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664002, 0.535520, 0.521842,
		-0.204639, 0.541105, -0.815676,
		-0.719183, -0.648400, -0.249707,
		41.034485, 31.969721, 25.920898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025417, 32.859444, 25.905003>,  <41.537914, 32.423603, 26.095692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025417, 32.859444, 25.905003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.865986, 32.509632, 26.015512>,  <40.770325, 32.299744, 26.081818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.865986, 32.509632, 26.015512>,  <41.025417, 32.859444, 25.905003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865986, 32.509632, 26.015512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681610, 0.484014, 0.548760,
		-0.613628, 0.030415, -0.789009,
		-0.398582, -0.874532, 0.276273,
		40.746410, 32.247272, 26.098394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377640, 33.036392, 25.983797>,  <41.025417, 32.859444, 25.905003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377640, 33.036392, 25.983797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.377029, 32.679226, 26.163885>,  <40.376663, 32.464928, 26.271938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.377029, 32.679226, 26.163885>,  <40.377640, 33.036392, 25.983797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377029, 32.679226, 26.163885> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763712, 0.291683, 0.575904,
		-0.645556, -0.342961, -0.682375,
		-0.001525, -0.892916, 0.450221,
		40.376572, 32.411350, 26.298952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<46.675488, 27.731339, 26.110153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.379684, 27.471825, 26.181944>,  <46.202202, 27.316116, 26.225018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.379684, 27.471825, 26.181944>,  <46.675488, 27.731339, 26.110153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.379684, 27.471825, 26.181944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022418, 0.242739, 0.969833,
		-0.672777, 0.721220, -0.164963,
		-0.739506, -0.648783, 0.179477,
		46.157833, 27.277189, 26.235786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.220009, 28.164871, 26.460407>,  <46.675488, 27.731339, 26.110153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.220009, 28.164871, 26.460407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.162632, 27.777008, 26.539591>,  <46.128204, 27.544291, 26.587101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.162632, 27.777008, 26.539591>,  <46.220009, 28.164871, 26.460407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.162632, 27.777008, 26.539591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135908, 0.217435, 0.966567,
		-0.980282, 0.111745, -0.162974,
		-0.143445, -0.969657, 0.197960,
		46.119598, 27.486111, 26.598980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.551292, 28.191694, 26.761522>,  <46.220009, 28.164871, 26.460407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.551292, 28.191694, 26.761522> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.727085, 27.850384, 26.873791>,  <45.832561, 27.645597, 26.941151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.727085, 27.850384, 26.873791>,  <45.551292, 28.191694, 26.761522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.727085, 27.850384, 26.873791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238283, 0.190522, 0.952325,
		-0.866072, -0.485404, -0.119592,
		0.439478, -0.853279, 0.280669,
		45.858929, 27.594400, 26.957991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.027039, 27.893049, 27.038916>,  <45.551292, 28.191694, 26.761522>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.027039, 27.893049, 27.038916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.345074, 27.696650, 27.181328>,  <45.535892, 27.578810, 27.266775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.345074, 27.696650, 27.181328>,  <45.027039, 27.893049, 27.038916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.345074, 27.696650, 27.181328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293188, 0.202723, 0.934315,
		-0.530926, -0.847243, 0.017226,
		0.795084, -0.491002, 0.356032,
		45.583599, 27.549349, 27.288137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.718906, 27.458429, 27.659979>,  <45.027039, 27.893049, 27.038916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.718906, 27.458429, 27.659979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.112019, 27.520985, 27.699335>,  <45.347885, 27.558517, 27.722950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.112019, 27.520985, 27.699335>,  <44.718906, 27.458429, 27.659979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.112019, 27.520985, 27.699335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127455, 0.188288, 0.973809,
		0.133761, -0.969583, 0.204978,
		0.982783, 0.156383, 0.098393,
		45.406853, 27.567902, 27.728853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.795261, 27.098181, 28.314913>,  <44.718906, 27.458429, 27.659979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.795261, 27.098181, 28.314913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.096043, 27.347828, 28.230026>,  <45.276512, 27.497616, 28.179094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.096043, 27.347828, 28.230026>,  <44.795261, 27.098181, 28.314913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.096043, 27.347828, 28.230026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082502, 0.230293, 0.969618,
		0.654029, -0.746619, 0.121679,
		0.751957, 0.624120, -0.212216,
		45.321629, 27.535065, 28.166361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.062923, 27.164888, 28.913134>,  <44.795261, 27.098181, 28.314913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.062923, 27.164888, 28.913134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.254444, 27.470341, 28.739874>,  <45.369354, 27.653612, 28.635918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.254444, 27.470341, 28.739874>,  <45.062923, 27.164888, 28.913134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.254444, 27.470341, 28.739874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003779, 0.495168, 0.868789,
		0.877917, -0.414337, 0.239971,
		0.478797, 0.763632, -0.433151,
		45.398083, 27.699430, 28.609928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.463711, 27.472918, 29.476458>,  <45.062923, 27.164888, 28.913134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.463711, 27.472918, 29.476458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.477024, 27.754948, 29.193117>,  <45.485012, 27.924166, 29.023113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.477024, 27.754948, 29.193117>,  <45.463711, 27.472918, 29.476458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.477024, 27.754948, 29.193117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027835, 0.709122, 0.704536,
		0.999058, -0.003735, 0.043230,
		0.033287, 0.705076, -0.708350,
		45.487011, 27.966471, 28.980612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.972225, 28.010887, 29.702587>,  <45.463711, 27.472918, 29.476458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.972225, 28.010887, 29.702587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.698315, 28.158211, 29.451054>,  <45.533970, 28.246605, 29.300135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.698315, 28.158211, 29.451054>,  <45.972225, 28.010887, 29.702587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.698315, 28.158211, 29.451054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296094, 0.647839, 0.701878,
		0.665890, 0.666823, -0.334571,
		-0.684777, 0.368309, -0.628831,
		45.492882, 28.268703, 29.262403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.987637, 28.726061, 29.796741>,  <45.972225, 28.010887, 29.702587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.987637, 28.726061, 29.796741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.624550, 28.641504, 29.651770>,  <45.406696, 28.590771, 29.564787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.624550, 28.641504, 29.651770>,  <45.987637, 28.726061, 29.796741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.624550, 28.641504, 29.651770> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414770, 0.582450, 0.699083,
		0.063316, 0.784898, -0.616382,
		-0.907721, -0.211394, -0.362430,
		45.352234, 28.578087, 29.543041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.527878, 29.306189, 29.615725>,  <45.987637, 28.726061, 29.796741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.527878, 29.306189, 29.615725> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.256012, 29.015453, 29.655245>,  <45.092892, 28.841011, 29.678957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.256012, 29.015453, 29.655245>,  <45.527878, 29.306189, 29.615725>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.256012, 29.015453, 29.655245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512722, 0.567071, 0.644630,
		-0.524570, 0.387474, -0.758084,
		-0.679664, -0.726839, 0.098802,
		45.052113, 28.797401, 29.684885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.804485, 29.559004, 29.678959>,  <45.527878, 29.306189, 29.615725>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.804485, 29.559004, 29.678959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.803799, 29.192514, 29.839226>,  <44.803387, 28.972622, 29.935387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.803799, 29.192514, 29.839226>,  <44.804485, 29.559004, 29.678959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.803799, 29.192514, 29.839226> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685407, 0.292827, 0.666685,
		-0.728158, -0.273477, -0.628487,
		-0.001715, -0.916222, 0.400667,
		44.803284, 28.917648, 29.959427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.296265, 29.423439, 29.007048>,  <44.804485, 29.559004, 29.678959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.296265, 29.423439, 29.007048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.181324, 29.806511, 29.013735>,  <44.112358, 30.036354, 29.017748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.181324, 29.806511, 29.013735>,  <44.296265, 29.423439, 29.007048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.181324, 29.806511, 29.013735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247314, 0.091046, -0.964648,
		-0.925346, -0.273057, -0.263010,
		-0.287350, 0.957680, 0.016718,
		44.095119, 30.093815, 29.018751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883080, 29.579426, 28.374962>,  <44.296265, 29.423439, 29.007048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883080, 29.579426, 28.374962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.047588, 29.917534, 28.511419>,  <44.146294, 30.120398, 28.593294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.047588, 29.917534, 28.511419>,  <43.883080, 29.579426, 28.374962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.047588, 29.917534, 28.511419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370242, 0.187088, -0.909900,
		-0.832934, 0.500519, -0.236011,
		0.411267, 0.845268, 0.341145,
		44.170967, 30.171114, 28.613764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.716927, 30.125437, 27.817221>,  <43.883080, 29.579426, 28.374962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.716927, 30.125437, 27.817221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.011406, 30.271273, 28.045286>,  <44.188095, 30.358774, 28.182125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.011406, 30.271273, 28.045286>,  <43.716927, 30.125437, 27.817221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011406, 30.271273, 28.045286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494563, 0.285263, -0.820995,
		-0.461971, 0.886398, 0.029699,
		0.736200, 0.364588, 0.570163,
		44.232265, 30.380650, 28.216335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839539, 30.817129, 27.626402>,  <43.716927, 30.125437, 27.817221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839539, 30.817129, 27.626402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.185963, 30.723619, 27.803169>,  <44.393818, 30.667513, 27.909229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.185963, 30.723619, 27.803169>,  <43.839539, 30.817129, 27.626402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.185963, 30.723619, 27.803169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499611, 0.372488, -0.782076,
		0.018220, 0.898110, 0.439392,
		0.866058, -0.233774, 0.441919,
		44.445782, 30.653486, 27.935745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.333649, 31.410845, 27.493191>,  <43.839539, 30.817129, 27.626402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.333649, 31.410845, 27.493191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.585499, 31.113909, 27.584852>,  <44.736607, 30.935747, 27.639849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.585499, 31.113909, 27.584852>,  <44.333649, 31.410845, 27.493191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.585499, 31.113909, 27.584852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553706, 0.221870, -0.802610,
		0.544965, 0.632225, 0.550731,
		0.629621, -0.742338, 0.229155,
		44.774384, 30.891207, 27.653599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.988350, 31.767893, 27.483284>,  <44.333649, 31.410845, 27.493191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.988350, 31.767893, 27.483284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.043633, 31.374401, 27.437372>,  <45.076801, 31.138306, 27.409826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.043633, 31.374401, 27.437372>,  <44.988350, 31.767893, 27.483284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.043633, 31.374401, 27.437372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588515, 0.174781, -0.789368,
		0.796586, 0.041545, 0.603096,
		0.138204, -0.983730, -0.114778,
		45.085094, 31.079283, 27.402939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.763115, 31.615305, 27.469828>,  <44.988350, 31.767893, 27.483284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.763115, 31.615305, 27.469828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.572464, 31.308317, 27.298332>,  <45.458073, 31.124125, 27.195435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.572464, 31.308317, 27.298332>,  <45.763115, 31.615305, 27.469828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.572464, 31.308317, 27.298332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611214, 0.061230, -0.789093,
		0.631857, -0.638154, 0.439905,
		-0.476627, -0.767470, -0.428737,
		45.429474, 31.078075, 27.169710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.321125, 31.319813, 27.078091>,  <45.763115, 31.615305, 27.469828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.321125, 31.319813, 27.078091> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.006317, 31.156294, 26.893274>,  <45.817432, 31.058182, 26.782385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.006317, 31.156294, 26.893274>,  <46.321125, 31.319813, 27.078091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.006317, 31.156294, 26.893274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487933, 0.045829, -0.871677,
		0.377514, -0.911474, 0.163397,
		-0.787023, -0.408797, -0.462039,
		45.770210, 31.033655, 26.754662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.526936, 30.687441, 26.776180>,  <46.321125, 31.319813, 27.078091>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.526936, 30.687441, 26.776180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.207401, 30.816835, 26.573313>,  <46.015682, 30.894472, 26.451591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.207401, 30.816835, 26.573313>,  <46.526936, 30.687441, 26.776180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.207401, 30.816835, 26.573313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534299, -0.005820, -0.845276,
		-0.276387, -0.946215, -0.168189,
		-0.798833, 0.323487, -0.507170,
		45.967751, 30.913881, 26.421162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.504700, 30.242796, 26.251238>,  <46.526936, 30.687441, 26.776180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.504700, 30.242796, 26.251238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.261719, 30.536493, 26.129982>,  <46.115932, 30.712711, 26.057228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.261719, 30.536493, 26.129982>,  <46.504700, 30.242796, 26.251238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.261719, 30.536493, 26.129982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370974, -0.075228, -0.925591,
		-0.702414, -0.674705, -0.226689,
		-0.607448, 0.734244, -0.303139,
		46.079483, 30.756767, 26.039040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.344440, 29.965437, 25.605530>,  <46.504700, 30.242796, 26.251238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.344440, 29.965437, 25.605530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.272285, 30.358236, 25.627954>,  <46.228992, 30.593916, 25.641409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.272285, 30.358236, 25.627954>,  <46.344440, 29.965437, 25.605530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.272285, 30.358236, 25.627954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191392, 0.090950, -0.977291,
		-0.964795, -0.165562, -0.204353,
		-0.180388, 0.981997, 0.056061,
		46.218170, 30.652836, 25.644773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.801521, 30.114832, 25.220959>,  <46.344440, 29.965437, 25.605530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.801521, 30.114832, 25.220959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.016285, 30.450897, 25.251570>,  <46.145142, 30.652536, 25.269936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.016285, 30.450897, 25.251570>,  <45.801521, 30.114832, 25.220959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.016285, 30.450897, 25.251570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112324, 0.018711, -0.993495,
		-0.836129, 0.542013, -0.084325,
		0.536910, 0.840162, 0.076526,
		46.177357, 30.702946, 25.274527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.657196, 30.533808, 24.597128>,  <45.801521, 30.114832, 25.220959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.657196, 30.533808, 24.597128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.016399, 30.651293, 24.728167>,  <46.231922, 30.721785, 24.806789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.016399, 30.651293, 24.728167>,  <45.657196, 30.533808, 24.597128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.016399, 30.651293, 24.728167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353657, -0.038902, -0.934566,
		-0.261751, 0.955101, -0.138809,
		0.898005, 0.293714, 0.327595,
		46.285801, 30.739407, 24.826445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.999702, 30.155357, 24.992847>,  <45.657196, 30.533808, 24.597128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.999702, 30.155357, 24.992847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.895515, 30.209988, 24.610538>,  <44.833004, 30.242765, 24.381153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.895515, 30.209988, 24.610538>,  <44.999702, 30.155357, 24.992847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.895515, 30.209988, 24.610538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958397, -0.156299, 0.238844,
		-0.116766, 0.978222, 0.171605,
		-0.260464, 0.136577, -0.955775,
		44.817375, 30.250961, 24.323807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.660450, 30.878033, 24.963768>,  <44.999702, 30.155357, 24.992847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.660450, 30.878033, 24.963768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.511177, 30.628355, 24.689217>,  <44.421612, 30.478548, 24.524487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.511177, 30.628355, 24.689217>,  <44.660450, 30.878033, 24.963768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.511177, 30.628355, 24.689217> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919494, 0.150329, 0.363224,
		-0.123540, 0.766670, -0.630044,
		-0.373187, -0.624195, -0.686377,
		44.399220, 30.441097, 24.483303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.205109, 31.270723, 24.662752>,  <44.660450, 30.878033, 24.963768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.205109, 31.270723, 24.662752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.125450, 30.895643, 24.548872>,  <44.077656, 30.670595, 24.480543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.125450, 30.895643, 24.548872>,  <44.205109, 31.270723, 24.662752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.125450, 30.895643, 24.548872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964111, 0.135425, 0.228365,
		-0.175583, 0.319962, -0.931018,
		-0.199151, -0.937702, -0.284700,
		44.065704, 30.614332, 24.463463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.806553, 31.247625, 24.112177>,  <44.205109, 31.270723, 24.662752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.806553, 31.247625, 24.112177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.739155, 30.893330, 24.285183>,  <43.698715, 30.680752, 24.388987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.739155, 30.893330, 24.285183>,  <43.806553, 31.247625, 24.112177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739155, 30.893330, 24.285183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966402, 0.234850, 0.104460,
		-0.194101, -0.400384, -0.895554,
		-0.168497, -0.885742, 0.432517,
		43.688606, 30.627607, 24.414938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.307819, 31.004753, 23.750368>,  <43.806553, 31.247625, 24.112177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.307819, 31.004753, 23.750368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.299763, 30.804850, 24.096741>,  <43.294930, 30.684908, 24.304564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.299763, 30.804850, 24.096741>,  <43.307819, 31.004753, 23.750368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.299763, 30.804850, 24.096741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982474, 0.170426, 0.075502,
		-0.185310, -0.849232, -0.494434,
		-0.020146, -0.499760, 0.865930,
		43.293720, 30.654922, 24.356520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709122, 30.653568, 23.722517>,  <43.307819, 31.004753, 23.750368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709122, 30.653568, 23.722517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.821060, 30.651169, 24.106527>,  <42.888222, 30.649729, 24.336933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.821060, 30.651169, 24.106527>,  <42.709122, 30.653568, 23.722517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821060, 30.651169, 24.106527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959531, -0.034484, 0.279485,
		0.031429, -0.999387, -0.015405,
		0.279845, -0.005998, 0.960027,
		42.905014, 30.649368, 24.394535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.168625, 30.348036, 23.979820>,  <42.709122, 30.653568, 23.722517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.168625, 30.348036, 23.979820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.344078, 30.526644, 24.291777>,  <42.449348, 30.633808, 24.478951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.344078, 30.526644, 24.291777>,  <42.168625, 30.348036, 23.979820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344078, 30.526644, 24.291777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898177, 0.189110, 0.396883,
		0.029731, -0.874562, 0.484001,
		0.438628, 0.446518, 0.779889,
		42.475666, 30.660599, 24.525743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.985855, 29.944506, 24.584047>,  <42.168625, 30.348036, 23.979820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.985855, 29.944506, 24.584047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.106918, 30.299107, 24.724052>,  <42.179558, 30.511868, 24.808056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.106918, 30.299107, 24.724052>,  <41.985855, 29.944506, 24.584047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.106918, 30.299107, 24.724052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895942, 0.139374, 0.421737,
		0.325089, -0.441235, 0.836438,
		0.302663, 0.886502, 0.350012,
		42.197716, 30.565058, 24.829056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.113617, 29.437639, 25.297775>,  <41.985855, 29.944506, 24.584047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.113617, 29.437639, 25.297775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.945179, 29.100040, 25.164900>,  <41.844116, 28.897482, 25.085175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.945179, 29.100040, 25.164900>,  <42.113617, 29.437639, 25.297775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945179, 29.100040, 25.164900> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855632, -0.248118, -0.454238,
		0.300954, -0.475507, 0.826632,
		-0.421095, -0.843997, -0.332187,
		41.818851, 28.846842, 25.065245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415752, 28.744358, 25.555090>,  <42.113617, 29.437639, 25.297775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415752, 28.744358, 25.555090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.223267, 28.663124, 25.213987>,  <42.107777, 28.614384, 25.009325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.223267, 28.663124, 25.213987>,  <42.415752, 28.744358, 25.555090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223267, 28.663124, 25.213987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753267, -0.593353, -0.283762,
		-0.448357, -0.778903, 0.438505,
		-0.481211, -0.203085, -0.852756,
		42.078903, 28.602200, 24.958160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529350, 28.086626, 25.469416>,  <42.415752, 28.744358, 25.555090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529350, 28.086626, 25.469416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.379982, 28.202101, 25.116776>,  <42.290363, 28.271385, 24.905191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.379982, 28.202101, 25.116776>,  <42.529350, 28.086626, 25.469416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379982, 28.202101, 25.116776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659328, -0.585932, -0.471136,
		-0.652569, -0.757195, 0.028458,
		-0.373416, 0.288686, -0.881601,
		42.267956, 28.288706, 24.852295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485188, 27.397963, 24.967901>,  <42.529350, 28.086626, 25.469416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485188, 27.397963, 24.967901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.460030, 27.723768, 24.737213>,  <42.444935, 27.919252, 24.598801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.460030, 27.723768, 24.737213>,  <42.485188, 27.397963, 24.967901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460030, 27.723768, 24.737213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488477, -0.478793, -0.729484,
		-0.870307, -0.327600, -0.367757,
		-0.062899, 0.814516, -0.576722,
		42.441158, 27.968122, 24.564196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.166592, 27.155329, 24.289427>,  <42.485188, 27.397963, 24.967901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.166592, 27.155329, 24.289427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.389977, 27.482767, 24.235729>,  <42.524006, 27.679230, 24.203510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.389977, 27.482767, 24.235729>,  <42.166592, 27.155329, 24.289427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.389977, 27.482767, 24.235729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562050, -0.492423, -0.664544,
		-0.610099, 0.295670, -0.735091,
		0.558462, 0.818595, -0.134245,
		42.557514, 27.728346, 24.195456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.401417, 27.091602, 23.603472>,  <42.166592, 27.155329, 24.289427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.401417, 27.091602, 23.603472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.638889, 27.384272, 23.737453>,  <42.781372, 27.559874, 23.817842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.638889, 27.384272, 23.737453>,  <42.401417, 27.091602, 23.603472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.638889, 27.384272, 23.737453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753257, -0.358863, -0.551199,
		-0.283093, 0.579547, -0.764189,
		0.593685, 0.731671, 0.334956,
		42.816994, 27.603773, 23.837940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680862, 27.450773, 23.005388>,  <42.401417, 27.091602, 23.603472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680862, 27.450773, 23.005388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.937454, 27.501415, 23.308035>,  <43.091412, 27.531801, 23.489622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.937454, 27.501415, 23.308035>,  <42.680862, 27.450773, 23.005388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.937454, 27.501415, 23.308035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758098, -0.255581, -0.599972,
		0.117417, 0.958462, -0.259932,
		0.641484, 0.126607, 0.756617,
		43.129898, 27.539398, 23.535021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.236408, 27.815710, 22.835703>,  <42.680862, 27.450773, 23.005388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.236408, 27.815710, 22.835703> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.419796, 27.646271, 23.148209>,  <43.529827, 27.544607, 23.335712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.419796, 27.646271, 23.148209>,  <43.236408, 27.815710, 22.835703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.419796, 27.646271, 23.148209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818525, -0.141146, -0.556861,
		0.346157, 0.894787, 0.282013,
		0.458467, -0.423596, 0.781264,
		43.557335, 27.519192, 23.382587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967575, 28.005577, 22.709946>,  <43.236408, 27.815710, 22.835703>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.967575, 28.005577, 22.709946> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.960419, 27.710457, 22.979858>,  <43.956123, 27.533384, 23.141806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.960419, 27.710457, 22.979858>,  <43.967575, 28.005577, 22.709946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.960419, 27.710457, 22.979858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848411, -0.368301, -0.380201,
		0.529035, 0.565690, 0.632548,
		-0.017892, -0.737800, 0.674782,
		43.955051, 27.489117, 23.182293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.932442, 32.068161, 35.312103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735119, 31.811079, 35.077641>,  <34.616726, 31.656830, 34.936962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.735119, 31.811079, 35.077641>,  <34.932442, 32.068161, 35.312103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735119, 31.811079, 35.077641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383932, -0.765538, 0.516282,
		-0.780540, 0.029644, 0.624402,
		-0.493308, -0.642707, -0.586152,
		34.587128, 31.618267, 34.901794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415585, 32.599979, 35.305901>,  <34.932442, 32.068161, 35.312103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415585, 32.599979, 35.305901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.531887, 32.221874, 35.365147>,  <35.601669, 31.995010, 35.400696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.531887, 32.221874, 35.365147>,  <35.415585, 32.599979, 35.305901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531887, 32.221874, 35.365147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422800, -0.011936, -0.906144,
		0.858313, 0.326089, 0.396188,
		0.290755, -0.945263, 0.148115,
		35.619114, 31.938295, 35.409580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085175, 32.537300, 35.105263>,  <35.415585, 32.599979, 35.305901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085175, 32.537300, 35.105263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.924919, 32.171379, 35.084774>,  <35.828766, 31.951826, 35.072483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.924919, 32.171379, 35.084774>,  <36.085175, 32.537300, 35.105263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924919, 32.171379, 35.084774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170502, -0.019513, -0.985164,
		0.900233, -0.403424, 0.163794,
		-0.400635, -0.914805, -0.051219,
		35.804729, 31.896938, 35.069408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540436, 32.118988, 34.735310>,  <36.085175, 32.537300, 35.105263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540436, 32.118988, 34.735310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.195362, 31.919704, 34.700504>,  <35.988319, 31.800135, 34.679619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.195362, 31.919704, 34.700504>,  <36.540436, 32.118988, 34.735310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195362, 31.919704, 34.700504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149621, -0.087056, -0.984903,
		0.483108, -0.862678, 0.149643,
		-0.862682, -0.498205, -0.087018,
		35.936558, 31.770243, 34.674400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793957, 31.583055, 34.400524>,  <36.540436, 32.118988, 34.735310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793957, 31.583055, 34.400524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.398689, 31.573109, 34.339977>,  <36.161530, 31.567141, 34.303650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.398689, 31.573109, 34.339977>,  <36.793957, 31.583055, 34.400524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398689, 31.573109, 34.339977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153333, -0.187499, -0.970223,
		-0.004253, -0.981950, 0.189093,
		-0.988165, -0.024868, -0.151363,
		36.102242, 31.565649, 34.294567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752014, 31.119957, 33.935394>,  <36.793957, 31.583055, 34.400524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752014, 31.119957, 33.935394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.393497, 31.290596, 33.886951>,  <36.178387, 31.392981, 33.857883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.393497, 31.290596, 33.886951>,  <36.752014, 31.119957, 33.935394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393497, 31.290596, 33.886951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126094, -0.016668, -0.991878,
		-0.425153, -0.904287, -0.038852,
		-0.896295, 0.426600, -0.121111,
		36.124607, 31.418575, 33.850616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400925, 30.725965, 33.446198>,  <36.752014, 31.119957, 33.935394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400925, 30.725965, 33.446198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.221600, 31.083466, 33.440220>,  <36.114006, 31.297966, 33.436634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.221600, 31.083466, 33.440220>,  <36.400925, 30.725965, 33.446198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221600, 31.083466, 33.440220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018205, -0.025840, -0.999500,
		-0.893691, -0.447818, 0.027855,
		-0.448314, 0.893751, -0.014940,
		36.087105, 31.351591, 33.435738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842514, 30.565706, 32.987186>,  <36.400925, 30.725965, 33.446198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842514, 30.565706, 32.987186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.937511, 30.953514, 33.011280>,  <35.994511, 31.186199, 33.025738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.937511, 30.953514, 33.011280>,  <35.842514, 30.565706, 32.987186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937511, 30.953514, 33.011280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172065, 0.019045, -0.984901,
		-0.956029, 0.244272, -0.162297,
		0.237493, 0.969520, 0.060238,
		36.008759, 31.244370, 33.029350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616825, 30.753651, 32.419613>,  <35.842514, 30.565706, 32.987186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616825, 30.753651, 32.419613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.869678, 31.044554, 32.526581>,  <36.021389, 31.219095, 32.590759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.869678, 31.044554, 32.526581>,  <35.616825, 30.753651, 32.419613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869678, 31.044554, 32.526581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247666, 0.137380, -0.959056,
		-0.734217, 0.672477, -0.093274,
		0.632129, 0.727256, 0.267417,
		36.059319, 31.262730, 32.606808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481709, 31.411251, 32.026825>,  <35.616825, 30.753651, 32.419613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481709, 31.411251, 32.026825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.859573, 31.448391, 32.152676>,  <36.086292, 31.470675, 32.228188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.859573, 31.448391, 32.152676>,  <35.481709, 31.411251, 32.026825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859573, 31.448391, 32.152676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309358, 0.066945, -0.948586,
		-0.109137, 0.993427, 0.034517,
		0.944662, 0.092848, 0.314631,
		36.142971, 31.476246, 32.247066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780972, 31.827293, 31.506765>,  <35.481709, 31.411251, 32.026825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780972, 31.827293, 31.506765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.106785, 31.708733, 31.706236>,  <36.302273, 31.637596, 31.825918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.106785, 31.708733, 31.706236>,  <35.780972, 31.827293, 31.506765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106785, 31.708733, 31.706236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490021, -0.108565, -0.864924,
		0.310504, 0.948873, 0.056814,
		0.814534, -0.296403, 0.498677,
		36.351147, 31.619812, 31.855839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.372711, 32.166088, 31.198317>,  <35.780972, 31.827293, 31.506765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.372711, 32.166088, 31.198317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.512222, 31.839531, 31.382425>,  <36.595928, 31.643597, 31.492891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.512222, 31.839531, 31.382425>,  <36.372711, 32.166088, 31.198317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512222, 31.839531, 31.382425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468426, -0.273514, -0.840099,
		0.811744, 0.508614, 0.287024,
		0.348781, -0.816395, 0.460272,
		36.616856, 31.594612, 31.520508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853264, 32.564663, 31.593939>,  <36.372711, 32.166088, 31.198317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853264, 32.564663, 31.593939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.919224, 32.932037, 31.450113>,  <36.958797, 33.152462, 31.363817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.919224, 32.932037, 31.450113>,  <36.853264, 32.564663, 31.593939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919224, 32.932037, 31.450113> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382686, 0.395574, 0.834909,
		0.909044, -0.000074, 0.416701,
		0.164897, 0.918434, -0.359566,
		36.968693, 33.207569, 31.342243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293934, 33.017948, 32.050751>,  <36.853264, 32.564663, 31.593939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293934, 33.017948, 32.050751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.087032, 33.283028, 31.834129>,  <36.962891, 33.442078, 31.704157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.087032, 33.283028, 31.834129>,  <37.293934, 33.017948, 32.050751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087032, 33.283028, 31.834129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241643, 0.493945, 0.835241,
		0.821012, 0.562891, -0.095356,
		-0.517250, 0.662701, -0.541553,
		36.931858, 33.481838, 31.671663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511955, 33.612827, 32.307800>,  <37.293934, 33.017948, 32.050751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511955, 33.612827, 32.307800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.174717, 33.701286, 32.111725>,  <36.972374, 33.754360, 31.994080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.174717, 33.701286, 32.111725>,  <37.511955, 33.612827, 32.307800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174717, 33.701286, 32.111725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289492, 0.581545, 0.760263,
		0.453197, 0.782880, -0.426277,
		-0.843093, 0.221145, -0.490192,
		36.921787, 33.767632, 31.964666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472675, 34.236504, 32.341393>,  <37.511955, 33.612827, 32.307800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472675, 34.236504, 32.341393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.097179, 34.154289, 32.230747>,  <36.871880, 34.104961, 32.164360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.097179, 34.154289, 32.230747>,  <37.472675, 34.236504, 32.341393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097179, 34.154289, 32.230747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332011, 0.754511, 0.566112,
		0.092349, 0.623272, -0.776533,
		-0.938744, -0.205538, -0.276611,
		36.815556, 34.092628, 32.147762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172859, 34.873924, 32.035145>,  <37.472675, 34.236504, 32.341393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172859, 34.873924, 32.035145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.890842, 34.628815, 32.177925>,  <36.721630, 34.481750, 32.263596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.890842, 34.628815, 32.177925>,  <37.172859, 34.873924, 32.035145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890842, 34.628815, 32.177925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383849, 0.752992, 0.534475,
		-0.596297, 0.239813, -0.766107,
		-0.705046, -0.612775, 0.356955,
		36.679329, 34.444981, 32.285011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525677, 35.301628, 32.109890>,  <37.172859, 34.873924, 32.035145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525677, 35.301628, 32.109890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.494854, 34.983597, 32.350525>,  <36.476360, 34.792778, 32.494907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.494854, 34.983597, 32.350525>,  <36.525677, 35.301628, 32.109890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494854, 34.983597, 32.350525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288926, 0.595300, 0.749760,
		-0.954245, -0.116037, -0.275594,
		-0.077061, -0.795081, 0.601588,
		36.471737, 34.745071, 32.531002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.858555, 35.358078, 32.464081>,  <36.525677, 35.301628, 32.109890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.858555, 35.358078, 32.464081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.050774, 35.091541, 32.692139>,  <36.166103, 34.931618, 32.828976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.050774, 35.091541, 32.692139>,  <35.858555, 35.358078, 32.464081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050774, 35.091541, 32.692139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436186, 0.382405, 0.814560,
		-0.760802, -0.640122, -0.106886,
		0.480545, -0.666341, 0.570147,
		36.194939, 34.891640, 32.863182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285454, 34.896259, 32.961857>,  <35.858555, 35.358078, 32.464081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285454, 34.896259, 32.961857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.651909, 34.911064, 33.121513>,  <35.871784, 34.919945, 33.217308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.651909, 34.911064, 33.121513>,  <35.285454, 34.896259, 32.961857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651909, 34.911064, 33.121513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393785, 0.269279, 0.878875,
		-0.074956, -0.962351, 0.261271,
		0.916141, 0.037008, 0.399144,
		35.926750, 34.922165, 33.241257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151611, 34.483051, 33.644043>,  <35.285454, 34.896259, 32.961857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151611, 34.483051, 33.644043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.500904, 34.671787, 33.692760>,  <35.710480, 34.785030, 33.721989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.500904, 34.671787, 33.692760>,  <35.151611, 34.483051, 33.644043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500904, 34.671787, 33.692760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230960, 0.180660, 0.956044,
		0.429100, -0.862975, 0.266734,
		0.873230, 0.471844, 0.121792,
		35.762875, 34.813339, 33.729298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286709, 34.318104, 34.335777>,  <35.151611, 34.483051, 33.644043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286709, 34.318104, 34.335777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.573677, 34.590927, 34.279060>,  <35.745857, 34.754620, 34.245029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.573677, 34.590927, 34.279060>,  <35.286709, 34.318104, 34.335777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573677, 34.590927, 34.279060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059969, 0.263241, 0.962865,
		0.694055, -0.682275, 0.229756,
		0.717420, 0.682059, -0.141788,
		35.788902, 34.795544, 34.236523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873287, 34.203735, 34.844212>,  <35.286709, 34.318104, 34.335777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873287, 34.203735, 34.844212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.836975, 34.580654, 34.715321>,  <35.815186, 34.806805, 34.637985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.836975, 34.580654, 34.715321>,  <35.873287, 34.203735, 34.844212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836975, 34.580654, 34.715321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209813, 0.298202, 0.931157,
		0.973518, 0.152140, 0.170635,
		-0.090783, 0.942300, -0.322226,
		35.809742, 34.863342, 34.618652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234337, 34.527939, 35.304977>,  <35.873287, 34.203735, 34.844212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234337, 34.527939, 35.304977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019619, 34.826008, 35.146702>,  <35.890789, 35.004848, 35.051735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.019619, 34.826008, 35.146702>,  <36.234337, 34.527939, 35.304977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019619, 34.826008, 35.146702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102227, 0.408090, 0.907200,
		0.837495, 0.527433, -0.142885,
		-0.536797, 0.745169, -0.395692,
		35.858582, 35.049557, 35.027996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441807, 35.144932, 35.649700>,  <36.234337, 34.527939, 35.304977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441807, 35.144932, 35.649700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.089558, 35.229626, 35.480148>,  <35.878208, 35.280441, 35.378418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.089558, 35.229626, 35.480148>,  <36.441807, 35.144932, 35.649700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089558, 35.229626, 35.480148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272007, 0.506587, 0.818157,
		0.387961, 0.835786, -0.388520,
		-0.880624, 0.211733, -0.423876,
		35.825371, 35.293144, 35.352985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877155, 35.690914, 35.327351>,  <36.441807, 35.144932, 35.649700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877155, 35.690914, 35.327351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.737366, 35.898903, 35.639118>,  <36.653492, 36.023697, 35.826180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.737366, 35.898903, 35.639118>,  <36.877155, 35.690914, 35.327351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737366, 35.898903, 35.639118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902261, -0.037488, 0.429558,
		0.252577, 0.853360, -0.456049,
		-0.349472, 0.519972, 0.779422,
		36.632523, 36.054893, 35.872944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489895, 35.975803, 35.641716>,  <36.877155, 35.690914, 35.327351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489895, 35.975803, 35.641716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202599, 36.064358, 35.905567>,  <37.030220, 36.117493, 36.063877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.202599, 36.064358, 35.905567>,  <37.489895, 35.975803, 35.641716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202599, 36.064358, 35.905567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695789, 0.230098, 0.680391,
		-0.001149, 0.947651, -0.319306,
		-0.718245, 0.221388, 0.659630,
		36.987125, 36.130775, 36.103455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630211, 36.645935, 35.998493>,  <37.489895, 35.975803, 35.641716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630211, 36.645935, 35.998493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.395798, 36.427395, 36.237850>,  <37.255150, 36.296272, 36.381462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.395798, 36.427395, 36.237850>,  <37.630211, 36.645935, 35.998493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395798, 36.427395, 36.237850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603791, 0.198051, 0.772148,
		-0.540376, 0.813803, 0.213819,
		-0.586029, -0.546352, 0.598389,
		37.219990, 36.263489, 36.417366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227467, 36.335773, 35.672146>,  <37.630211, 36.645935, 35.998493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227467, 36.335773, 35.672146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.305367, 35.948757, 35.736580>,  <38.352104, 35.716549, 35.775238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.305367, 35.948757, 35.736580>,  <38.227467, 36.335773, 35.672146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305367, 35.948757, 35.736580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729458, 0.033079, -0.683225,
		0.655717, 0.250557, 0.712220,
		0.194747, -0.967537, 0.161080,
		38.363789, 35.658497, 35.784904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902653, 36.284222, 35.529140>,  <38.227467, 36.335773, 35.672146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902653, 36.284222, 35.529140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.788345, 35.900986, 35.521194>,  <38.719761, 35.671043, 35.516426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.788345, 35.900986, 35.521194>,  <38.902653, 36.284222, 35.529140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788345, 35.900986, 35.521194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766351, -0.216038, -0.605007,
		0.575361, -0.188116, 0.795972,
		-0.285772, -0.958092, -0.019863,
		38.702614, 35.613560, 35.515236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545948, 35.971970, 35.375065>,  <38.902653, 36.284222, 35.529140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545948, 35.971970, 35.375065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.279270, 35.681465, 35.308071>,  <39.119263, 35.507160, 35.267876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.279270, 35.681465, 35.308071>,  <39.545948, 35.971970, 35.375065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279270, 35.681465, 35.308071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586804, -0.372930, -0.718738,
		0.459536, -0.577461, 0.674808,
		-0.666699, -0.726266, -0.167482,
		39.079262, 35.463585, 35.257828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949947, 35.445934, 35.187328>,  <39.545948, 35.971970, 35.375065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949947, 35.445934, 35.187328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.595428, 35.299313, 35.074108>,  <39.382717, 35.211342, 35.006176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.595428, 35.299313, 35.074108>,  <39.949947, 35.445934, 35.187328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595428, 35.299313, 35.074108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430730, -0.427878, -0.794602,
		0.170150, -0.826172, 0.537112,
		-0.886296, -0.366551, -0.283053,
		39.329540, 35.189346, 34.989193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.941345, 34.748959, 35.097614>,  <39.949947, 35.445934, 35.187328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.941345, 34.748959, 35.097614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.638512, 34.877869, 34.870293>,  <39.456814, 34.955215, 34.733898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.638512, 34.877869, 34.870293>,  <39.941345, 34.748959, 35.097614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638512, 34.877869, 34.870293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479907, -0.315910, -0.818468,
		-0.443307, -0.892378, 0.084505,
		-0.757079, 0.322278, -0.568303,
		39.411388, 34.974552, 34.699802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827663, 34.271137, 34.577190>,  <39.941345, 34.748959, 35.097614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827663, 34.271137, 34.577190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.625042, 34.569092, 34.403507>,  <39.503468, 34.747864, 34.299297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.625042, 34.569092, 34.403507>,  <39.827663, 34.271137, 34.577190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625042, 34.569092, 34.403507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359080, -0.275593, -0.891690,
		-0.783876, -0.607607, -0.127872,
		-0.506556, 0.744891, -0.434210,
		39.473076, 34.792561, 34.273243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552292, 33.956310, 34.022358>,  <39.827663, 34.271137, 34.577190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552292, 33.956310, 34.022358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.550159, 34.345097, 33.928337>,  <39.548878, 34.578369, 33.871925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.550159, 34.345097, 33.928337>,  <39.552292, 33.956310, 34.022358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550159, 34.345097, 33.928337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181563, -0.230202, -0.956055,
		-0.983365, -0.047777, -0.175245,
		-0.005336, 0.971969, -0.235047,
		39.548557, 34.636688, 33.857822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276726, 33.983841, 33.426071>,  <39.552292, 33.956310, 34.022358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276726, 33.983841, 33.426071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.462078, 34.338306, 33.425224>,  <39.573288, 34.550983, 33.424717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.462078, 34.338306, 33.425224>,  <39.276726, 33.983841, 33.426071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462078, 34.338306, 33.425224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354291, -0.187453, -0.916155,
		-0.812256, 0.423773, -0.400819,
		0.463377, 0.886159, -0.002121,
		39.601089, 34.604153, 33.424587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044350, 34.462418, 32.827309>,  <39.276726, 33.983841, 33.426071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044350, 34.462418, 32.827309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.404804, 34.569195, 32.963951>,  <39.621078, 34.633263, 33.045937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.404804, 34.569195, 32.963951>,  <39.044350, 34.462418, 32.827309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404804, 34.569195, 32.963951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401491, -0.216523, -0.889901,
		-0.163587, 0.939074, -0.302292,
		0.901135, 0.266943, 0.341609,
		39.675144, 34.649277, 33.066433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374451, 34.580875, 32.182274>,  <39.044350, 34.462418, 32.827309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374451, 34.580875, 32.182274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.672222, 34.600300, 32.448647>,  <39.850883, 34.611954, 32.608471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.672222, 34.600300, 32.448647>,  <39.374451, 34.580875, 32.182274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672222, 34.600300, 32.448647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622587, -0.410880, -0.666005,
		0.241276, 0.910395, -0.336106,
		0.744427, 0.048564, 0.665935,
		39.895550, 34.614868, 32.648426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975166, 34.724648, 31.803062>,  <39.374451, 34.580875, 32.182274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975166, 34.724648, 31.803062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.108501, 34.557213, 32.140980>,  <40.188503, 34.456753, 32.343731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.108501, 34.557213, 32.140980>,  <39.975166, 34.724648, 31.803062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108501, 34.557213, 32.140980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644943, -0.552352, -0.528162,
		0.687704, 0.720898, 0.085846,
		0.333334, -0.418585, 0.844793,
		40.208500, 34.431637, 32.394417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698544, 34.881390, 31.755835>,  <39.975166, 34.724648, 31.803062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698544, 34.881390, 31.755835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.621098, 34.558365, 31.978676>,  <40.574631, 34.364552, 32.112381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.621098, 34.558365, 31.978676>,  <40.698544, 34.881390, 31.755835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621098, 34.558365, 31.978676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663114, -0.526219, -0.532328,
		0.723043, 0.266353, 0.637389,
		-0.193619, -0.807558, 0.557102,
		40.563011, 34.316097, 32.145805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398140, 34.405487, 31.606245>,  <40.698544, 34.881390, 31.755835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398140, 34.405487, 31.606245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.143051, 34.142502, 31.766771>,  <40.989998, 33.984711, 31.863087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.143051, 34.142502, 31.766771>,  <41.398140, 34.405487, 31.606245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143051, 34.142502, 31.766771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534920, -0.752896, -0.383416,
		0.554229, -0.029842, 0.831829,
		-0.637723, -0.657462, 0.401314,
		40.951733, 33.945263, 31.887165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825451, 33.980511, 31.963633>,  <41.398140, 34.405487, 31.606245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825451, 33.980511, 31.963633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.492081, 33.779587, 31.871475>,  <41.292057, 33.659035, 31.816181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.492081, 33.779587, 31.871475>,  <41.825451, 33.980511, 31.963633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492081, 33.779587, 31.871475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548406, -0.700336, -0.456925,
		0.068163, -0.507165, 0.859149,
		-0.833430, -0.502308, -0.230395,
		41.242050, 33.628895, 31.802357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.002735, 33.210396, 32.018143>,  <41.825451, 33.980511, 31.963633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.002735, 33.210396, 32.018143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.660965, 33.200241, 31.810564>,  <41.455902, 33.194149, 31.686016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.660965, 33.200241, 31.810564>,  <42.002735, 33.210396, 32.018143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.660965, 33.200241, 31.810564> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314662, -0.820088, -0.477958,
		-0.413449, -0.571674, 0.708695,
		-0.854429, -0.025388, -0.518948,
		41.404636, 33.192623, 31.654879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640358, 32.547928, 32.081268>,  <42.002735, 33.210396, 32.018143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640358, 32.547928, 32.081268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.552647, 32.702847, 31.723070>,  <41.500019, 32.795799, 31.508150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.552647, 32.702847, 31.723070>,  <41.640358, 32.547928, 32.081268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.552647, 32.702847, 31.723070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370968, -0.815805, -0.443672,
		-0.902385, -0.429489, 0.035214,
		-0.219280, 0.387300, -0.895497,
		41.486862, 32.819035, 31.454420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541142, 31.967625, 31.831713>,  <41.640358, 32.547928, 32.081268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541142, 31.967625, 31.831713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.515221, 32.201500, 31.508247>,  <41.499668, 32.341824, 31.314167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.515221, 32.201500, 31.508247>,  <41.541142, 31.967625, 31.831713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.515221, 32.201500, 31.508247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317982, -0.756027, -0.572112,
		-0.945879, -0.294216, -0.136928,
		-0.064803, 0.584689, -0.808665,
		41.495781, 32.376907, 31.265648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986012, 31.698473, 31.354904>,  <41.541142, 31.967625, 31.831713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986012, 31.698473, 31.354904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.265797, 31.902224, 31.154388>,  <41.433666, 32.024475, 31.034079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.265797, 31.902224, 31.154388>,  <40.986012, 31.698473, 31.354904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265797, 31.902224, 31.154388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248856, -0.831123, -0.497297,
		-0.669946, 0.223090, -0.708099,
		0.699459, 0.509377, -0.501290,
		41.475636, 32.055038, 31.004002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133446, 31.437490, 30.638405>,  <40.986012, 31.698473, 31.354904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133446, 31.437490, 30.638405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.469624, 31.652716, 30.664148>,  <41.671329, 31.781851, 30.679594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.469624, 31.652716, 30.664148>,  <41.133446, 31.437490, 30.638405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.469624, 31.652716, 30.664148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475769, -0.675804, -0.562968,
		-0.259421, 0.503761, -0.823969,
		0.840443, 0.538065, 0.064357,
		41.721756, 31.814135, 30.683455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.575855, 31.390057, 29.984560>,  <41.133446, 31.437490, 30.638405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.575855, 31.390057, 29.984560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.848553, 31.453640, 30.270206>,  <42.012169, 31.491789, 30.441595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.848553, 31.453640, 30.270206>,  <41.575855, 31.390057, 29.984560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848553, 31.453640, 30.270206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662068, -0.549364, -0.509770,
		0.311278, 0.820324, -0.479765,
		0.681742, 0.158957, 0.714115,
		42.053074, 31.501328, 30.484442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158413, 31.551418, 29.687531>,  <41.575855, 31.390057, 29.984560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158413, 31.551418, 29.687531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.303535, 31.458872, 30.048605>,  <42.390610, 31.403343, 30.265249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.303535, 31.458872, 30.048605>,  <42.158413, 31.551418, 29.687531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303535, 31.458872, 30.048605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702372, -0.568716, -0.428060,
		0.612411, 0.789324, -0.043825,
		0.362802, -0.231367, 0.902687,
		42.412376, 31.389462, 30.319410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819424, 31.875502, 29.757483>,  <42.158413, 31.551418, 29.687531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819424, 31.875502, 29.757483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.825523, 31.585918, 30.033354>,  <42.829182, 31.412169, 30.198875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.825523, 31.585918, 30.033354>,  <42.819424, 31.875502, 29.757483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.825523, 31.585918, 30.033354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906696, -0.280761, -0.314762,
		0.421508, 0.630126, 0.652129,
		0.015247, -0.723957, 0.689676,
		42.830097, 31.368731, 30.240257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457581, 31.905138, 30.169228>,  <42.819424, 31.875502, 29.757483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457581, 31.905138, 30.169228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.333275, 31.528595, 30.221798>,  <43.258690, 31.302670, 30.253340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.333275, 31.528595, 30.221798>,  <43.457581, 31.905138, 30.169228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333275, 31.528595, 30.221798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912262, -0.334223, -0.236797,
		0.266835, 0.046304, 0.962629,
		-0.310768, -0.941356, 0.131424,
		43.240044, 31.246189, 30.261225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.069012, 31.543680, 30.551062>,  <43.457581, 31.905138, 30.169228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.069012, 31.543680, 30.551062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.833691, 31.270262, 30.378242>,  <43.692497, 31.106211, 30.274551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.833691, 31.270262, 30.378242>,  <44.069012, 31.543680, 30.551062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.833691, 31.270262, 30.378242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783952, -0.351099, -0.512005,
		0.198286, -0.639919, 0.742419,
		-0.588305, -0.683544, -0.432048,
		43.657200, 31.065199, 30.248629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.353779, 30.895395, 30.603708>,  <44.069012, 31.543680, 30.551062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.353779, 30.895395, 30.603708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.087826, 30.805943, 30.318636>,  <43.928253, 30.752272, 30.147593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.087826, 30.805943, 30.318636>,  <44.353779, 30.895395, 30.603708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087826, 30.805943, 30.318636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715275, -0.465503, -0.521237,
		-0.215192, -0.856328, 0.469464,
		-0.664886, -0.223630, -0.712682,
		43.888359, 30.738853, 30.104832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.539097, 30.192986, 30.324329>,  <44.353779, 30.895395, 30.603708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.539097, 30.192986, 30.324329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.309345, 30.354771, 30.039656>,  <44.171494, 30.451841, 29.868851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.309345, 30.354771, 30.039656>,  <44.539097, 30.192986, 30.324329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.309345, 30.354771, 30.039656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693356, -0.221764, -0.685623,
		-0.435134, -0.887260, -0.153058,
		-0.574383, 0.404462, -0.711684,
		44.137032, 30.476109, 29.826151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.161503, 29.507656, 30.103134>,  <44.539097, 30.192986, 30.324329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.161503, 29.507656, 30.103134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.318733, 29.152719, 30.199562>,  <44.413071, 28.939758, 30.257418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.318733, 29.152719, 30.199562>,  <44.161503, 29.507656, 30.103134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318733, 29.152719, 30.199562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481411, 0.024770, 0.876145,
		-0.783412, -0.460445, -0.417440,
		0.393077, -0.887342, 0.241068,
		44.436657, 28.886517, 30.271883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.562004, 29.086815, 30.158627>,  <44.161503, 29.507656, 30.103134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.562004, 29.086815, 30.158627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.854950, 28.922367, 30.375744>,  <44.030716, 28.823698, 30.506014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.854950, 28.922367, 30.375744>,  <43.562004, 29.086815, 30.158627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.854950, 28.922367, 30.375744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618764, -0.069095, 0.782533,
		-0.284209, -0.908960, -0.304988,
		0.732364, -0.411118, 0.542794,
		44.074657, 28.799032, 30.538582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320530, 28.489454, 30.470064>,  <43.562004, 29.086815, 30.158627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320530, 28.489454, 30.470064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.616306, 28.593487, 30.718447>,  <43.793770, 28.655907, 30.867476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.616306, 28.593487, 30.718447>,  <43.320530, 28.489454, 30.470064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.616306, 28.593487, 30.718447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662687, 0.118643, 0.739439,
		0.118643, -0.958269, 0.260083,
		-0.739439, -0.260083, -0.620956,
		43.838139, 28.671513, 30.904734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177853, 28.099089, 31.136894>,  <43.320530, 28.489454, 30.470064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177853, 28.099089, 31.136894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.409809, 28.421322, 31.185505>,  <43.548981, 28.614662, 31.214670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.409809, 28.421322, 31.185505>,  <43.177853, 28.099089, 31.136894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409809, 28.421322, 31.185505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573050, 0.297297, 0.763694,
		0.579089, -0.512497, 0.634038,
		0.579888, 0.805582, 0.121525,
		43.583775, 28.662996, 31.221962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282402, 28.226971, 31.939892>,  <43.177853, 28.099089, 31.136894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.282402, 28.226971, 31.939892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.363609, 28.566366, 31.744404>,  <43.412334, 28.770004, 31.627111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.363609, 28.566366, 31.744404>,  <43.282402, 28.226971, 31.939892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363609, 28.566366, 31.744404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480566, 0.521207, 0.705265,
		0.853136, 0.091682, 0.513570,
		0.203016, 0.848491, -0.488720,
		43.424515, 28.820913, 31.597788>
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
