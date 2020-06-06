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
	<24.342909, 35.189163, 34.801479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.399712, 34.804962, 34.897205>,  <24.433794, 34.574440, 34.954639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.399712, 34.804962, 34.897205>,  <24.342909, 35.189163, 34.801479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.399712, 34.804962, 34.897205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044665, 0.247735, 0.967798,
		-0.988857, -0.126746, 0.078082,
		0.142008, -0.960501, 0.239314,
		24.442314, 34.516811, 34.968998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.821842, 34.861916, 35.291546>,  <24.342909, 35.189163, 34.801479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.821842, 34.861916, 35.291546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188845, 34.706017, 35.323254>,  <24.409046, 34.612476, 35.342278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.188845, 34.706017, 35.323254>,  <23.821842, 34.861916, 35.291546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.188845, 34.706017, 35.323254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163859, 0.552036, 0.817561,
		-0.362402, -0.737126, 0.570359,
		0.917505, -0.389744, 0.079274,
		24.464096, 34.589092, 35.347034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.912395, 34.629894, 36.010357>,  <23.821842, 34.861916, 35.291546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.912395, 34.629894, 36.010357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.275801, 34.692276, 35.855289>,  <24.493843, 34.729706, 35.762249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.275801, 34.692276, 35.855289>,  <23.912395, 34.629894, 36.010357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.275801, 34.692276, 35.855289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273172, 0.480370, 0.833440,
		0.316198, -0.863090, 0.393821,
		0.908513, 0.155951, -0.387664,
		24.548355, 34.739063, 35.738991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.325006, 34.469856, 36.524834>,  <23.912395, 34.629894, 36.010357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.325006, 34.469856, 36.524834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.518888, 34.705597, 36.266308>,  <24.635218, 34.847042, 36.111191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.518888, 34.705597, 36.266308>,  <24.325006, 34.469856, 36.524834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.518888, 34.705597, 36.266308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254611, 0.611852, 0.748873,
		0.836801, -0.527540, 0.146511,
		0.484703, 0.589355, -0.646316,
		24.664299, 34.882404, 36.072414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.039022, 34.388588, 36.719528>,  <24.325006, 34.469856, 36.524834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.039022, 34.388588, 36.719528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.953087, 34.752270, 36.576874>,  <24.901525, 34.970478, 36.491283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.953087, 34.752270, 36.576874>,  <25.039022, 34.388588, 36.719528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.953087, 34.752270, 36.576874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427383, 0.415862, 0.802747,
		0.878173, 0.020040, -0.477922,
		-0.214837, 0.909207, -0.356634,
		24.888636, 35.025032, 36.469883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.714548, 34.939091, 36.715164>,  <25.039022, 34.388588, 36.719528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.714548, 34.939091, 36.715164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337866, 35.069004, 36.750271>,  <25.111856, 35.146954, 36.771336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.337866, 35.069004, 36.750271>,  <25.714548, 34.939091, 36.715164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.337866, 35.069004, 36.750271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206447, 0.351872, 0.912998,
		0.265649, 0.877895, -0.398411,
		-0.941706, 0.324788, 0.087765,
		25.055353, 35.166439, 36.776600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.797741, 35.701099, 36.888569>,  <25.714548, 34.939091, 36.715164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.797741, 35.701099, 36.888569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460802, 35.543507, 37.035667>,  <25.258638, 35.448952, 37.123924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.460802, 35.543507, 37.035667>,  <25.797741, 35.701099, 36.888569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.460802, 35.543507, 37.035667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219821, 0.371842, 0.901893,
		-0.492071, 0.840543, -0.226614,
		-0.842345, -0.393981, 0.367742,
		25.208099, 35.425312, 37.145988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.453056, 36.279144, 37.238060>,  <25.797741, 35.701099, 36.888569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.453056, 36.279144, 37.238060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352554, 35.937717, 37.420612>,  <25.292253, 35.732861, 37.530144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352554, 35.937717, 37.420612>,  <25.453056, 36.279144, 37.238060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.352554, 35.937717, 37.420612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283950, 0.385762, 0.877816,
		-0.925334, 0.350147, 0.145446,
		-0.251257, -0.853572, 0.456383,
		25.277178, 35.681644, 37.557526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.061102, 36.539562, 37.931038>,  <25.453056, 36.279144, 37.238060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.061102, 36.539562, 37.931038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200401, 36.166443, 37.968155>,  <25.283981, 35.942570, 37.990425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.200401, 36.166443, 37.968155>,  <25.061102, 36.539562, 37.931038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.200401, 36.166443, 37.968155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372000, 0.228380, 0.899699,
		-0.860429, -0.278801, 0.426534,
		0.348249, -0.932798, 0.092791,
		25.304876, 35.886604, 37.995991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.815138, 36.330517, 38.509377>,  <25.061102, 36.539562, 37.931038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.815138, 36.330517, 38.509377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.138178, 36.102848, 38.447639>,  <25.332003, 35.966248, 38.410595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.138178, 36.102848, 38.447639>,  <24.815138, 36.330517, 38.509377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.138178, 36.102848, 38.447639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355424, 0.260918, 0.897550,
		-0.470593, -0.779718, 0.413016,
		0.807599, -0.569176, -0.154344,
		25.380457, 35.932095, 38.401337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.943893, 36.159264, 39.198513>,  <24.815138, 36.330517, 38.509377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.943893, 36.159264, 39.198513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.280708, 36.076088, 38.999420>,  <25.482798, 36.026184, 38.879967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.280708, 36.076088, 38.999420>,  <24.943893, 36.159264, 39.198513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.280708, 36.076088, 38.999420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536387, 0.225070, 0.813408,
		-0.057113, -0.951896, 0.301052,
		0.842037, -0.207936, -0.497730,
		25.533319, 36.013706, 38.850101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.475765, 35.798592, 39.688145>,  <24.943893, 36.159264, 39.198513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.475765, 35.798592, 39.688145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.674204, 36.004765, 39.408653>,  <25.793266, 36.128468, 39.240959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.674204, 36.004765, 39.408653>,  <25.475765, 35.798592, 39.688145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.674204, 36.004765, 39.408653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639305, 0.327694, 0.695634,
		0.587520, -0.791801, -0.166950,
		0.496095, 0.515430, -0.698728,
		25.823032, 36.159393, 39.199036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.186255, 36.233162, 39.825756>,  <25.475765, 35.798592, 39.688145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.186255, 36.233162, 39.825756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497305, 36.015705, 39.952087>,  <26.683935, 35.885231, 40.027885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.497305, 36.015705, 39.952087>,  <26.186255, 36.233162, 39.825756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497305, 36.015705, 39.952087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581714, -0.812709, 0.033360,
		0.238544, -0.209666, -0.948228,
		0.777628, -0.543640, 0.315833,
		26.730593, 35.852612, 40.046837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012030, 36.930870, 39.524845>,  <26.186255, 36.233162, 39.825756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.012030, 36.930870, 39.524845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331541, 36.690521, 39.536877>,  <26.523247, 36.546310, 39.544098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331541, 36.690521, 39.536877>,  <26.012030, 36.930870, 39.524845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331541, 36.690521, 39.536877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376837, -0.538678, -0.753538,
		0.468987, 0.590572, -0.656716,
		0.798777, -0.600875, 0.030083,
		26.571175, 36.510258, 39.545902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.117306, 36.856689, 38.833027>,  <26.012030, 36.930870, 39.524845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.117306, 36.856689, 38.833027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288109, 36.551529, 39.027203>,  <26.390591, 36.368435, 39.143707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288109, 36.551529, 39.027203>,  <26.117306, 36.856689, 38.833027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288109, 36.551529, 39.027203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337830, -0.632565, -0.696945,
		0.838771, 0.133604, -0.527839,
		0.427007, -0.762897, 0.485442,
		26.416210, 36.322659, 39.172836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.720011, 36.530220, 38.419949>,  <26.117306, 36.856689, 38.833027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.720011, 36.530220, 38.419949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487776, 36.306068, 38.656219>,  <26.348434, 36.171577, 38.797981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.487776, 36.306068, 38.656219>,  <26.720011, 36.530220, 38.419949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.487776, 36.306068, 38.656219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347600, -0.485439, -0.802199,
		0.736270, -0.671065, 0.087053,
		-0.580587, -0.560375, 0.590676,
		26.313601, 36.137955, 38.833424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.708920, 35.829308, 38.195305>,  <26.720011, 36.530220, 38.419949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.708920, 35.829308, 38.195305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362213, 35.878502, 38.388630>,  <26.154190, 35.908020, 38.504623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.362213, 35.878502, 38.388630>,  <26.708920, 35.829308, 38.195305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.362213, 35.878502, 38.388630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458765, -0.576681, -0.675998,
		0.195578, -0.807659, 0.556270,
		-0.866766, 0.122987, 0.483312,
		26.102182, 35.915398, 38.533623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.371658, 35.211365, 38.034569>,  <26.708920, 35.829308, 38.195305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.371658, 35.211365, 38.034569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065981, 35.434361, 38.164322>,  <25.882574, 35.568157, 38.242172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.065981, 35.434361, 38.164322>,  <26.371658, 35.211365, 38.034569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.065981, 35.434361, 38.164322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603646, -0.441014, -0.664168,
		-0.227207, -0.703362, 0.673542,
		-0.764192, 0.557484, 0.324380,
		25.836723, 35.601604, 38.261635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.803238, 34.665585, 38.151112>,  <26.371658, 35.211365, 38.034569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.803238, 34.665585, 38.151112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662497, 35.037304, 38.106197>,  <25.578053, 35.260334, 38.079250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662497, 35.037304, 38.106197>,  <25.803238, 34.665585, 38.151112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.662497, 35.037304, 38.106197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717641, -0.344823, -0.605053,
		-0.600991, -0.132310, 0.788228,
		-0.351853, 0.929296, -0.112285,
		25.556940, 35.316093, 38.072514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.104441, 34.632454, 38.296661>,  <25.803238, 34.665585, 38.151112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.104441, 34.632454, 38.296661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.147467, 34.967518, 38.082462>,  <25.173283, 35.168556, 37.953941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.147467, 34.967518, 38.082462>,  <25.104441, 34.632454, 38.296661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.147467, 34.967518, 38.082462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695838, -0.321277, -0.642332,
		-0.710097, 0.441715, 0.548315,
		0.107567, 0.837657, -0.535500,
		25.179737, 35.218815, 37.921814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.381439, 34.798771, 37.967373>,  <25.104441, 34.632454, 38.296661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.381439, 34.798771, 37.967373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.659830, 35.001945, 37.764347>,  <24.826864, 35.123848, 37.642532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.659830, 35.001945, 37.764347>,  <24.381439, 34.798771, 37.967373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.659830, 35.001945, 37.764347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520587, -0.129933, -0.843864,
		-0.494577, 0.851540, 0.173993,
		0.695976, 0.507934, -0.507563,
		24.868624, 35.154327, 37.612080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.027260, 34.960690, 37.378197>,  <24.381439, 34.798771, 37.967373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.027260, 34.960690, 37.378197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.386152, 35.129593, 37.326546>,  <24.601488, 35.230934, 37.295555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.386152, 35.129593, 37.326546>,  <24.027260, 34.960690, 37.378197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.386152, 35.129593, 37.326546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188170, 0.101094, -0.976919,
		-0.399459, 0.900821, 0.170162,
		0.897232, 0.422258, -0.129125,
		24.655321, 35.256271, 37.287807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.865068, 35.603214, 37.063782>,  <24.027260, 34.960690, 37.378197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.865068, 35.603214, 37.063782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.228933, 35.475212, 36.957867>,  <24.447252, 35.398411, 36.894318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.228933, 35.475212, 36.957867>,  <23.865068, 35.603214, 37.063782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.228933, 35.475212, 36.957867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285110, -0.017492, -0.958335,
		0.302044, 0.947253, -0.107149,
		0.909660, -0.320009, -0.264788,
		24.501831, 35.379208, 36.878429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.024574, 36.020996, 36.510376>,  <23.865068, 35.603214, 37.063782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.024574, 36.020996, 36.510376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202145, 35.662571, 36.511532>,  <24.308687, 35.447517, 36.512226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.202145, 35.662571, 36.511532>,  <24.024574, 36.020996, 36.510376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.202145, 35.662571, 36.511532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179767, -0.092214, -0.979378,
		0.877845, 0.434254, -0.202019,
		0.443927, -0.896058, 0.002885,
		24.335323, 35.393753, 36.512398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.343130, 36.039936, 35.844254>,  <24.024574, 36.020996, 36.510376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.343130, 36.039936, 35.844254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.346706, 35.645298, 35.909435>,  <24.348852, 35.408516, 35.948544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.346706, 35.645298, 35.909435>,  <24.343130, 36.039936, 35.844254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.346706, 35.645298, 35.909435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055694, -0.163196, -0.985021,
		0.998408, -0.000269, -0.056406,
		0.008941, -0.986594, 0.162951,
		24.349388, 35.349319, 35.958321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.912283, 35.860794, 35.392586>,  <24.343130, 36.039936, 35.844254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.912283, 35.860794, 35.392586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.998831, 35.632763, 35.709621>,  <25.050760, 35.495945, 35.899841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.998831, 35.632763, 35.709621>,  <24.912283, 35.860794, 35.392586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.998831, 35.632763, 35.709621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214297, -0.819755, -0.531110,
		0.952502, -0.054933, -0.299536,
		0.216371, -0.570073, 0.792591,
		25.063742, 35.461742, 35.947399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.505592, 35.510094, 35.313889>,  <24.912283, 35.860794, 35.392586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.505592, 35.510094, 35.313889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.249146, 35.300167, 35.537865>,  <25.095278, 35.174210, 35.672253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.249146, 35.300167, 35.537865>,  <25.505592, 35.510094, 35.313889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.249146, 35.300167, 35.537865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024358, -0.715339, -0.698353,
		0.767056, -0.461366, 0.445832,
		-0.641117, -0.524816, 0.559943,
		25.056810, 35.142723, 35.705849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.740156, 34.898121, 35.244957>,  <25.505592, 35.510094, 35.313889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.740156, 34.898121, 35.244957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.377842, 34.845249, 35.405994>,  <25.160454, 34.813526, 35.502617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.377842, 34.845249, 35.405994>,  <25.740156, 34.898121, 35.244957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.377842, 34.845249, 35.405994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131860, -0.815004, -0.564253,
		0.402695, -0.564178, 0.720791,
		-0.905787, -0.132178, 0.402591,
		25.106106, 34.805595, 35.526772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.678850, 34.242352, 35.548664>,  <25.740156, 34.898121, 35.244957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.678850, 34.242352, 35.548664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.299761, 34.344631, 35.472317>,  <25.072308, 34.405998, 35.426506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.299761, 34.344631, 35.472317>,  <25.678850, 34.242352, 35.548664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.299761, 34.344631, 35.472317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135452, -0.864006, -0.484919,
		-0.288911, -0.433716, 0.853476,
		-0.947725, 0.255704, -0.190873,
		25.015444, 34.421341, 35.415054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.199661, 33.785053, 35.873798>,  <25.678850, 34.242352, 35.548664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.199661, 33.785053, 35.873798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059280, 33.952602, 35.538803>,  <24.975052, 34.053131, 35.337807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059280, 33.952602, 35.538803>,  <25.199661, 33.785053, 35.873798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059280, 33.952602, 35.538803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065038, -0.903115, -0.424444,
		-0.934133, -0.094490, 0.344190,
		-0.350949, 0.418873, -0.837485,
		24.953995, 34.078262, 35.287560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.531502, 33.475864, 35.625957>,  <25.199661, 33.785053, 35.873798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.531502, 33.475864, 35.625957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.703739, 33.653065, 35.311420>,  <24.807081, 33.759384, 35.122696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.703739, 33.653065, 35.311420>,  <24.531502, 33.475864, 35.625957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.703739, 33.653065, 35.311420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061963, -0.854688, -0.515432,
		-0.900415, 0.270667, -0.340576,
		0.430596, 0.442999, -0.786345,
		24.832918, 33.785965, 35.075516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.096790, 33.368313, 34.947414>,  <24.531502, 33.475864, 35.625957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.096790, 33.368313, 34.947414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.487349, 33.442856, 34.903740>,  <24.721684, 33.487579, 34.877533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.487349, 33.442856, 34.903740>,  <24.096790, 33.368313, 34.947414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.487349, 33.442856, 34.903740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093734, -0.821052, -0.563105,
		-0.194587, 0.539579, -0.819140,
		0.976396, 0.186354, -0.109189,
		24.780268, 33.498764, 34.870983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.318850, 33.292213, 34.295002>,  <24.096790, 33.368313, 34.947414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.318850, 33.292213, 34.295002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.670527, 33.248886, 34.480598>,  <24.881533, 33.222889, 34.591957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.670527, 33.248886, 34.480598>,  <24.318850, 33.292213, 34.295002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.670527, 33.248886, 34.480598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113456, -0.898208, -0.424676,
		0.462762, 0.426014, -0.777408,
		0.879192, -0.108323, 0.463990,
		24.934284, 33.216389, 34.619797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.731062, 32.882359, 33.869404>,  <24.318850, 33.292213, 34.295002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.731062, 32.882359, 33.869404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.955233, 32.880989, 34.200684>,  <25.089735, 32.880169, 34.399452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.955233, 32.880989, 34.200684>,  <24.731062, 32.882359, 33.869404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.955233, 32.880989, 34.200684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393913, -0.878539, -0.270187,
		0.728529, 0.477658, -0.491008,
		0.560427, -0.003425, 0.828197,
		25.123360, 32.879963, 34.449142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.482981, 32.731575, 33.724094>,  <24.731062, 32.882359, 33.869404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.482981, 32.731575, 33.724094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.443489, 32.633835, 34.109955>,  <25.419794, 32.575191, 34.341469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.443489, 32.633835, 34.109955>,  <25.482981, 32.731575, 33.724094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.443489, 32.633835, 34.109955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352250, -0.915201, -0.195773,
		0.930684, 0.320469, 0.176430,
		-0.098730, -0.244350, 0.964648,
		25.413870, 32.560532, 34.399349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.202597, 32.519058, 34.015739>,  <25.482981, 32.731575, 33.724094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.202597, 32.519058, 34.015739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003489, 32.510345, 34.362553>,  <25.884024, 32.505116, 34.570641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.003489, 32.510345, 34.362553>,  <26.202597, 32.519058, 34.015739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.003489, 32.510345, 34.362553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036548, -0.998269, -0.046067,
		0.866537, -0.054619, 0.496114,
		-0.497772, -0.021786, 0.867034,
		25.854156, 32.503811, 34.622662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589411, 32.185074, 34.536301>,  <26.202597, 32.519058, 34.015739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.589411, 32.185074, 34.536301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200081, 32.142284, 34.617485>,  <25.966482, 32.116611, 34.666195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200081, 32.142284, 34.617485>,  <26.589411, 32.185074, 34.536301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200081, 32.142284, 34.617485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076963, -0.985623, -0.150412,
		0.216136, -0.130779, 0.967565,
		-0.973325, -0.106977, 0.202963,
		25.908083, 32.110191, 34.678375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663822, 31.706905, 34.977390>,  <26.589411, 32.185074, 34.536301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.663822, 31.706905, 34.977390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280922, 31.688379, 34.863182>,  <26.051182, 31.677263, 34.794659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280922, 31.688379, 34.863182>,  <26.663822, 31.706905, 34.977390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280922, 31.688379, 34.863182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161306, -0.904830, -0.394033,
		-0.240099, -0.423246, 0.873622,
		-0.957253, -0.046313, -0.285521,
		25.993746, 31.674486, 34.777527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.574736, 31.047701, 35.071781>,  <26.663822, 31.706905, 34.977390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.574736, 31.047701, 35.071781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.266022, 31.166868, 34.847073>,  <26.080793, 31.238369, 34.712246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.266022, 31.166868, 34.847073>,  <26.574736, 31.047701, 35.071781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.266022, 31.166868, 34.847073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055119, -0.911475, -0.407647,
		-0.633489, -0.283652, 0.719884,
		-0.771786, 0.297919, -0.561775,
		26.034487, 31.256245, 34.678539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810755, 30.438560, 34.613640>,  <26.574736, 31.047701, 35.071781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810755, 30.438560, 34.613640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471779, 30.343990, 34.423504>,  <26.268393, 30.287249, 34.309422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.471779, 30.343990, 34.423504>,  <26.810755, 30.438560, 34.613640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471779, 30.343990, 34.423504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387218, 0.887794, 0.248764,
		0.363191, 0.394873, -0.843900,
		-0.847440, -0.236425, -0.475341,
		26.217546, 30.273064, 34.280903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608377, 31.068737, 34.218746>,  <26.810755, 30.438560, 34.613640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608377, 31.068737, 34.218746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272717, 30.859381, 34.277924>,  <26.071320, 30.733767, 34.313431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.272717, 30.859381, 34.277924>,  <26.608377, 31.068737, 34.218746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.272717, 30.859381, 34.277924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454220, 0.823994, 0.338700,
		-0.299179, 0.217021, -0.929190,
		-0.839152, -0.523389, 0.147946,
		26.020971, 30.702364, 34.322308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.998859, 31.295078, 33.856739>,  <26.608377, 31.068737, 34.218746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.998859, 31.295078, 33.856739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901232, 31.138691, 34.211720>,  <25.842655, 31.044859, 34.424709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901232, 31.138691, 34.211720>,  <25.998859, 31.295078, 33.856739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.901232, 31.138691, 34.211720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515408, 0.827476, 0.222797,
		-0.821453, -0.403024, -0.403468,
		-0.244067, -0.390968, 0.887454,
		25.828012, 31.021400, 34.477955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.232132, 31.191185, 33.973515>,  <25.998859, 31.295078, 33.856739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.232132, 31.191185, 33.973515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.390642, 31.243887, 34.336967>,  <25.485748, 31.275507, 34.555038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.390642, 31.243887, 34.336967>,  <25.232132, 31.191185, 33.973515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.390642, 31.243887, 34.336967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285783, 0.958188, -0.014302,
		-0.872522, -0.254003, 0.417357,
		0.396274, 0.131753, 0.908630,
		25.509523, 31.283413, 34.609558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.751867, 31.622997, 34.443642>,  <25.232132, 31.191185, 33.973515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.751867, 31.622997, 34.443642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130890, 31.634855, 34.570927>,  <25.358303, 31.641970, 34.647297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130890, 31.634855, 34.570927>,  <24.751867, 31.622997, 34.443642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130890, 31.634855, 34.570927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110783, 0.964422, 0.240036,
		-0.299778, -0.262700, 0.917127,
		0.947555, 0.029645, 0.318215,
		25.415157, 31.643749, 34.666389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.746336, 31.911249, 35.141102>,  <24.751867, 31.622997, 34.443642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.746336, 31.911249, 35.141102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.109972, 31.972103, 34.985970>,  <25.328154, 32.008614, 34.892891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.109972, 31.972103, 34.985970>,  <24.746336, 31.911249, 35.141102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.109972, 31.972103, 34.985970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095568, 0.982268, 0.161294,
		0.405494, -0.109566, 0.907507,
		0.909088, 0.152133, -0.387833,
		25.382698, 32.017742, 34.869621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.170269, 32.309425, 35.594128>,  <24.746336, 31.911249, 35.141102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.170269, 32.309425, 35.594128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.280811, 32.380051, 35.216248>,  <25.347137, 32.422424, 34.989521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.280811, 32.380051, 35.216248>,  <25.170269, 32.309425, 35.594128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.280811, 32.380051, 35.216248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063767, 0.984182, 0.165288,
		0.958937, 0.014562, 0.283244,
		0.276357, 0.176562, -0.944697,
		25.363718, 32.433018, 34.932838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.737013, 32.811787, 35.581787>,  <25.170269, 32.309425, 35.594128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.737013, 32.811787, 35.581787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547201, 32.836090, 35.230530>,  <25.433313, 32.850674, 35.019775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.547201, 32.836090, 35.230530>,  <25.737013, 32.811787, 35.581787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.547201, 32.836090, 35.230530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021116, 0.998113, 0.057652,
		0.879987, 0.008815, -0.474917,
		-0.474529, 0.060762, -0.878140,
		25.404842, 32.854317, 34.967087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078447, 33.325668, 35.292294>,  <25.737013, 32.811787, 35.581787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.078447, 33.325668, 35.292294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737343, 33.286114, 35.087151>,  <25.532681, 33.262383, 34.964066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.737343, 33.286114, 35.087151>,  <26.078447, 33.325668, 35.292294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.737343, 33.286114, 35.087151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042096, 0.991733, -0.121216,
		0.520605, -0.081779, -0.849872,
		-0.852759, -0.098882, -0.512859,
		25.481516, 33.256451, 34.933292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.152491, 33.585598, 34.573616>,  <26.078447, 33.325668, 35.292294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.152491, 33.585598, 34.573616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763039, 33.599297, 34.663837>,  <25.529367, 33.607517, 34.717972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.763039, 33.599297, 34.663837>,  <26.152491, 33.585598, 34.573616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763039, 33.599297, 34.663837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025030, 0.966667, -0.254810,
		-0.226763, -0.253736, -0.940317,
		-0.973628, 0.034245, 0.225555,
		25.470951, 33.609570, 34.731503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.822258, 33.790283, 33.952496>,  <26.152491, 33.585598, 34.573616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.822258, 33.790283, 33.952496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620899, 33.897778, 34.280975>,  <25.500084, 33.962273, 34.478065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.620899, 33.897778, 34.280975>,  <25.822258, 33.790283, 33.952496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.620899, 33.897778, 34.280975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207238, 0.885113, -0.416686,
		-0.838834, -0.379944, -0.389873,
		-0.503399, 0.268734, 0.821202,
		25.469879, 33.978397, 34.527336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.114307, 33.992031, 33.834248>,  <25.822258, 33.790283, 33.952496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.114307, 33.992031, 33.834248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207760, 34.232246, 34.140129>,  <25.263832, 34.376377, 34.323658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.207760, 34.232246, 34.140129>,  <25.114307, 33.992031, 33.834248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.207760, 34.232246, 34.140129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351874, 0.785381, -0.509275,
		-0.906422, -0.150095, 0.394804,
		0.233632, 0.600539, 0.764702,
		25.277849, 34.412407, 34.369541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.036589, 33.531681, 33.151623>,  <25.114307, 33.992031, 33.834248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.036589, 33.531681, 33.151623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.037527, 33.931499, 33.163597>,  <25.038090, 34.171391, 33.170780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.037527, 33.931499, 33.163597>,  <25.036589, 33.531681, 33.151623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.037527, 33.931499, 33.163597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888501, 0.011651, -0.458727,
		-0.458868, 0.027673, -0.888073,
		0.002348, 0.999549, 0.029934,
		25.038231, 34.231365, 33.172577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.898735, 33.853027, 32.416260>,  <25.036589, 33.531681, 33.151623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.898735, 33.853027, 32.416260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179382, 34.038101, 32.633018>,  <25.347771, 34.149147, 32.763073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179382, 34.038101, 32.633018>,  <24.898735, 33.853027, 32.416260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.179382, 34.038101, 32.633018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691185, -0.257081, -0.675406,
		-0.173187, 0.848430, -0.500173,
		0.701620, 0.462683, 0.541899,
		25.389868, 34.176907, 32.795589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.263659, 34.360794, 32.016876>,  <24.898735, 33.853027, 32.416260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.263659, 34.360794, 32.016876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.503279, 34.238136, 32.312744>,  <25.647051, 34.164539, 32.490265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.503279, 34.238136, 32.312744>,  <25.263659, 34.360794, 32.016876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.503279, 34.238136, 32.312744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715086, -0.210743, -0.666512,
		0.360263, 0.928200, 0.093033,
		0.599051, -0.306646, 0.739666,
		25.682995, 34.146141, 32.534645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.952097, 34.771866, 32.076950>,  <25.263659, 34.360794, 32.016876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.952097, 34.771866, 32.076950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954630, 34.389202, 32.193401>,  <25.956150, 34.159603, 32.263271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.954630, 34.389202, 32.193401>,  <25.952097, 34.771866, 32.076950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.954630, 34.389202, 32.193401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787401, -0.174691, -0.591171,
		0.616409, 0.232974, 0.752172,
		0.006330, -0.956664, 0.291125,
		25.956530, 34.102203, 32.280739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682413, 34.541088, 32.069164>,  <25.952097, 34.771866, 32.076950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682413, 34.541088, 32.069164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459352, 34.210041, 32.043648>,  <26.325516, 34.011414, 32.028339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.459352, 34.210041, 32.043648>,  <26.682413, 34.541088, 32.069164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459352, 34.210041, 32.043648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524752, -0.291944, -0.799627,
		0.643164, -0.479389, 0.597099,
		-0.557651, -0.827621, -0.063793,
		26.292057, 33.961754, 32.024509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.138622, 33.935970, 31.888889>,  <26.682413, 34.541088, 32.069164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.138622, 33.935970, 31.888889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771961, 33.863239, 31.746515>,  <26.551966, 33.819603, 31.661091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771961, 33.863239, 31.746515>,  <27.138622, 33.935970, 31.888889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.771961, 33.863239, 31.746515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384089, -0.154369, -0.910300,
		0.110569, -0.971139, 0.211339,
		-0.916652, -0.181823, -0.355935,
		26.496965, 33.808693, 31.639734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361814, 33.562576, 31.352922>,  <27.138622, 33.935970, 31.888889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.361814, 33.562576, 31.352922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979410, 33.669544, 31.304710>,  <26.749968, 33.733723, 31.275784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.979410, 33.669544, 31.304710>,  <27.361814, 33.562576, 31.352922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.979410, 33.669544, 31.304710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139236, 0.052050, -0.988890,
		-0.258172, -0.962174, -0.086995,
		-0.956013, 0.267417, -0.120532,
		26.692606, 33.749767, 31.268551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039433, 33.665462, 30.966658>,  <27.361814, 33.562576, 31.352922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039433, 33.665462, 30.966658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662148, 33.792717, 30.928404>,  <27.435778, 33.869068, 30.905451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662148, 33.792717, 30.928404>,  <28.039433, 33.665462, 30.966658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662148, 33.792717, 30.928404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326508, 0.940856, -0.090452,
		0.061202, -0.116540, -0.991299,
		-0.943211, 0.318131, -0.095634,
		27.379185, 33.888157, 30.899714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.062595, 34.160763, 30.396370>,  <28.039433, 33.665462, 30.966658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.062595, 34.160763, 30.396370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760061, 34.240864, 30.645483>,  <27.578541, 34.288925, 30.794950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.760061, 34.240864, 30.645483>,  <28.062595, 34.160763, 30.396370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.760061, 34.240864, 30.645483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187293, 0.978430, -0.087159,
		-0.626801, 0.050721, -0.777527,
		-0.756334, 0.200256, 0.622781,
		27.533161, 34.300941, 30.832317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.059929, 34.858269, 30.325254>,  <28.062595, 34.160763, 30.396370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.059929, 34.858269, 30.325254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797274, 34.814934, 30.623808>,  <27.639681, 34.788933, 30.802940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797274, 34.814934, 30.623808>,  <28.059929, 34.858269, 30.325254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797274, 34.814934, 30.623808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234275, 0.911376, 0.338391,
		-0.716897, 0.397060, -0.573064,
		-0.656638, -0.108337, 0.746384,
		27.600283, 34.782433, 30.847723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514805, 35.463913, 30.114704>,  <28.059929, 34.858269, 30.325254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514805, 35.463913, 30.114704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499424, 35.858963, 30.175518>,  <28.490194, 36.095993, 30.212006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.499424, 35.858963, 30.175518>,  <28.514805, 35.463913, 30.114704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.499424, 35.858963, 30.175518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909896, 0.097498, -0.403216,
		-0.413050, 0.122830, -0.902387,
		-0.038454, 0.987627, 0.152034,
		28.487888, 36.155251, 30.221128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585438, 35.791100, 29.526974>,  <28.514805, 35.463913, 30.114704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585438, 35.791100, 29.526974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.738256, 35.982513, 29.843214>,  <28.829948, 36.097363, 30.032957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.738256, 35.982513, 29.843214>,  <28.585438, 35.791100, 29.526974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.738256, 35.982513, 29.843214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894100, 0.024958, -0.447171,
		-0.233717, 0.877716, -0.418320,
		0.382049, 0.478531, 0.790599,
		28.852871, 36.126072, 30.080393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875910, 36.555321, 29.519680>,  <28.585438, 35.791100, 29.526974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875910, 36.555321, 29.519680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085894, 36.347218, 29.789125>,  <29.211884, 36.222355, 29.950792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.085894, 36.347218, 29.789125>,  <28.875910, 36.555321, 29.519680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.085894, 36.347218, 29.789125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800001, 0.031438, -0.599174,
		0.290545, 0.853433, 0.432707,
		0.524958, -0.520254, 0.673613,
		29.243382, 36.191143, 29.991209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444214, 36.980038, 29.778921>,  <28.875910, 36.555321, 29.519680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444214, 36.980038, 29.778921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562418, 36.599358, 29.812262>,  <29.633341, 36.370949, 29.832266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.562418, 36.599358, 29.812262>,  <29.444214, 36.980038, 29.778921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.562418, 36.599358, 29.812262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821180, 0.208455, -0.531234,
		0.488198, 0.225433, 0.843115,
		0.295509, -0.951697, 0.083354,
		29.651072, 36.313850, 29.837267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203697, 36.709274, 30.114025>,  <29.444214, 36.980038, 29.778921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203697, 36.709274, 30.114025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037716, 36.519844, 29.803276>,  <29.938128, 36.406185, 29.616827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037716, 36.519844, 29.803276>,  <30.203697, 36.709274, 30.114025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037716, 36.519844, 29.803276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774062, 0.264986, -0.574987,
		0.478163, -0.839943, 0.256624,
		-0.414955, -0.473580, -0.776875,
		29.913229, 36.377769, 29.570213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591938, 36.084858, 29.766430>,  <30.203697, 36.709274, 30.114025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591938, 36.084858, 29.766430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370052, 36.272346, 29.491449>,  <30.236921, 36.384842, 29.326462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.370052, 36.272346, 29.491449>,  <30.591938, 36.084858, 29.766430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370052, 36.272346, 29.491449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746192, -0.085267, -0.660248,
		-0.368092, -0.879219, -0.302461,
		-0.554713, 0.468726, -0.687452,
		30.203638, 36.412964, 29.285213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.675140, 35.770496, 29.092268>,  <30.591938, 36.084858, 29.766430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.675140, 35.770496, 29.092268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592854, 36.159775, 29.051140>,  <30.543482, 36.393341, 29.026463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592854, 36.159775, 29.051140>,  <30.675140, 35.770496, 29.092268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592854, 36.159775, 29.051140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840865, 0.122036, -0.527307,
		-0.500624, -0.194934, -0.843431,
		-0.205719, 0.973195, -0.102819,
		30.531137, 36.451733, 29.020294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730286, 35.885540, 28.360815>,  <30.675140, 35.770496, 29.092268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730286, 35.885540, 28.360815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813261, 36.212780, 28.575359>,  <30.863047, 36.409122, 28.704086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.813261, 36.212780, 28.575359>,  <30.730286, 35.885540, 28.360815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813261, 36.212780, 28.575359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812841, 0.160921, -0.559817,
		-0.544297, 0.552102, -0.631604,
		0.207438, 0.818100, 0.536360,
		30.875492, 36.458210, 28.736267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881941, 36.337814, 27.816763>,  <30.730286, 35.885540, 28.360815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881941, 36.337814, 27.816763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028221, 36.510483, 28.146591>,  <31.115990, 36.614086, 28.344488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028221, 36.510483, 28.146591>,  <30.881941, 36.337814, 27.816763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028221, 36.510483, 28.146591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827834, 0.254053, -0.500148,
		-0.425386, 0.865513, -0.264448,
		0.365701, 0.431675, 0.824572,
		31.137932, 36.639984, 28.393963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.060926, 36.959641, 27.589828>,  <30.881941, 36.337814, 27.816763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.060926, 36.959641, 27.589828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263010, 36.890427, 27.928017>,  <31.384260, 36.848896, 28.130930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263010, 36.890427, 27.928017>,  <31.060926, 36.959641, 27.589828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263010, 36.890427, 27.928017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828095, 0.372995, -0.418490,
		-0.242943, 0.911555, 0.331732,
		0.505211, -0.173037, 0.845470,
		31.414574, 36.838516, 28.181658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418705, 37.533192, 27.767033>,  <31.060926, 36.959641, 27.589828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418705, 37.533192, 27.767033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622456, 37.263393, 27.980797>,  <31.744705, 37.101513, 28.109055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622456, 37.263393, 27.980797>,  <31.418705, 37.533192, 27.767033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622456, 37.263393, 27.980797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841552, 0.260684, -0.473112,
		0.179799, 0.690724, 0.700409,
		0.509375, -0.674495, 0.534409,
		31.775269, 37.061047, 28.141119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944729, 37.934147, 28.166327>,  <31.418705, 37.533192, 27.767033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944729, 37.934147, 28.166327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034836, 37.553398, 28.083187>,  <32.088902, 37.324951, 28.033304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034836, 37.553398, 28.083187>,  <31.944729, 37.934147, 28.166327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034836, 37.553398, 28.083187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850584, 0.296175, -0.434496,
		0.475142, -0.078913, 0.876363,
		0.225269, -0.951868, -0.207848,
		32.102417, 37.267838, 28.020832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718231, 37.939896, 28.194176>,  <31.944729, 37.934147, 28.166327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718231, 37.939896, 28.194176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575890, 37.613327, 28.012264>,  <32.490486, 37.417385, 27.903116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575890, 37.613327, 28.012264>,  <32.718231, 37.939896, 28.194176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575890, 37.613327, 28.012264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798863, -0.013214, -0.601368,
		0.484960, -0.577306, 0.656911,
		-0.355854, -0.816421, -0.454780,
		32.469135, 37.368401, 27.875830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339619, 37.688770, 28.088612>,  <32.718231, 37.939896, 28.194176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339619, 37.688770, 28.088612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084515, 37.483101, 27.859215>,  <32.931454, 37.359699, 27.721577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084515, 37.483101, 27.859215>,  <33.339619, 37.688770, 28.088612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084515, 37.483101, 27.859215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658147, 0.023017, -0.752538,
		0.400133, -0.857379, 0.323721,
		-0.637759, -0.514171, -0.573491,
		32.893188, 37.328850, 27.687168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707066, 37.123024, 27.825006>,  <33.339619, 37.688770, 28.088612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707066, 37.123024, 27.825006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399971, 37.168793, 27.572819>,  <33.215714, 37.196255, 27.421507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.399971, 37.168793, 27.572819>,  <33.707066, 37.123024, 27.825006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399971, 37.168793, 27.572819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592823, -0.246602, -0.766648,
		-0.243157, -0.962344, 0.121525,
		-0.767747, 0.114373, -0.630463,
		33.169651, 37.203121, 27.383678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881630, 36.605328, 27.329664>,  <33.707066, 37.123024, 27.825006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881630, 36.605328, 27.329664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606602, 36.841835, 27.161072>,  <33.441586, 36.983742, 27.059917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606602, 36.841835, 27.161072>,  <33.881630, 36.605328, 27.329664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606602, 36.841835, 27.161072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517166, -0.008679, -0.855841,
		-0.509693, -0.806426, -0.299819,
		-0.687570, 0.591272, -0.421480,
		33.400330, 37.019218, 27.034628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.904514, 36.402424, 26.606211>,  <33.881630, 36.605328, 27.329664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.904514, 36.402424, 26.606211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690998, 36.740658, 26.609346>,  <33.562889, 36.943596, 26.611227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690998, 36.740658, 26.609346>,  <33.904514, 36.402424, 26.606211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690998, 36.740658, 26.609346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137152, 0.095718, -0.985914,
		-0.834420, -0.525197, -0.167067,
		-0.533791, 0.845580, 0.007837,
		33.530861, 36.994331, 26.611698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448498, 36.317085, 26.068983>,  <33.904514, 36.402424, 26.606211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448498, 36.317085, 26.068983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523415, 36.700653, 26.154205>,  <33.568363, 36.930794, 26.205339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.523415, 36.700653, 26.154205>,  <33.448498, 36.317085, 26.068983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523415, 36.700653, 26.154205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176392, 0.180539, -0.967622,
		-0.966337, 0.218809, -0.135333,
		0.187291, 0.958920, 0.213057,
		33.579601, 36.988331, 26.218122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187878, 36.829262, 25.552546>,  <33.448498, 36.317085, 26.068983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187878, 36.829262, 25.552546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456810, 37.057827, 25.740782>,  <33.618168, 37.194965, 25.853724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456810, 37.057827, 25.740782>,  <33.187878, 36.829262, 25.552546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456810, 37.057827, 25.740782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192873, 0.478539, -0.856621,
		-0.714682, 0.666699, 0.211527,
		0.672332, 0.571413, 0.470591,
		33.658508, 37.229252, 25.881960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043407, 37.488331, 25.378166>,  <33.187878, 36.829262, 25.552546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043407, 37.488331, 25.378166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417534, 37.547035, 25.506945>,  <33.642010, 37.582256, 25.584211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417534, 37.547035, 25.506945>,  <33.043407, 37.488331, 25.378166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417534, 37.547035, 25.506945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188928, 0.562180, -0.805146,
		-0.299156, 0.813889, 0.498087,
		0.935314, 0.146762, 0.321946,
		33.698128, 37.591064, 25.603529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122707, 38.277786, 25.289404>,  <33.043407, 37.488331, 25.378166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122707, 38.277786, 25.289404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488564, 38.117542, 25.311090>,  <33.708076, 38.021397, 25.324102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488564, 38.117542, 25.311090>,  <33.122707, 38.277786, 25.289404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488564, 38.117542, 25.311090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307483, 0.602336, -0.736645,
		0.262451, 0.690438, 0.674103,
		0.914644, -0.400608, 0.054214,
		33.762959, 37.997360, 25.327354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641113, 38.868111, 25.315413>,  <33.122707, 38.277786, 25.289404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641113, 38.868111, 25.315413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826241, 38.532715, 25.200354>,  <33.937317, 38.331478, 25.131317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826241, 38.532715, 25.200354>,  <33.641113, 38.868111, 25.315413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826241, 38.532715, 25.200354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377228, 0.479938, -0.792060,
		0.802186, 0.258067, 0.538423,
		0.462814, -0.838487, -0.287650,
		33.965084, 38.281170, 25.114059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286880, 39.062160, 25.278652>,  <33.641113, 38.868111, 25.315413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286880, 39.062160, 25.278652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212975, 38.742348, 25.050051>,  <34.168633, 38.550461, 24.912889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212975, 38.742348, 25.050051>,  <34.286880, 39.062160, 25.278652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212975, 38.742348, 25.050051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292484, 0.510431, -0.808649,
		0.938251, -0.316565, 0.139539,
		-0.184765, -0.799529, -0.571503,
		34.157543, 38.502487, 24.878599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834145, 39.085213, 24.806839>,  <34.286880, 39.062160, 25.278652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834145, 39.085213, 24.806839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562790, 38.845490, 24.636845>,  <34.399975, 38.701656, 24.534849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562790, 38.845490, 24.636845>,  <34.834145, 39.085213, 24.806839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562790, 38.845490, 24.636845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156842, 0.446978, -0.880688,
		0.717764, -0.664107, -0.209229,
		-0.678391, -0.599310, -0.424985,
		34.359272, 38.665695, 24.509350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264881, 38.777462, 24.268307>,  <34.834145, 39.085213, 24.806839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264881, 38.777462, 24.268307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880203, 38.732651, 24.168236>,  <34.649395, 38.705765, 24.108192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880203, 38.732651, 24.168236>,  <35.264881, 38.777462, 24.268307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880203, 38.732651, 24.168236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242965, 0.074208, -0.967193,
		0.126923, -0.990930, -0.044145,
		-0.961696, -0.112033, -0.250180,
		34.591694, 38.699043, 24.093182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398453, 38.557533, 23.622637>,  <35.264881, 38.777462, 24.268307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398453, 38.557533, 23.622637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012760, 38.662880, 23.634548>,  <34.781345, 38.726089, 23.641695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012760, 38.662880, 23.634548>,  <35.398453, 38.557533, 23.622637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012760, 38.662880, 23.634548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033097, 0.231106, -0.972365,
		-0.262975, -0.936603, -0.231557,
		-0.964235, 0.263372, 0.029776,
		34.723488, 38.741890, 23.643480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047707, 38.165482, 23.173218>,  <35.398453, 38.557533, 23.622637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047707, 38.165482, 23.173218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827473, 38.495853, 23.221695>,  <34.695332, 38.694077, 23.250780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827473, 38.495853, 23.221695>,  <35.047707, 38.165482, 23.173218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827473, 38.495853, 23.221695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075095, 0.193594, -0.978204,
		-0.831394, -0.529485, -0.168614,
		-0.550587, 0.825934, 0.121192,
		34.662296, 38.743633, 23.258053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709854, 38.230915, 22.524801>,  <35.047707, 38.165482, 23.173218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709854, 38.230915, 22.524801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671711, 38.593529, 22.689289>,  <34.648823, 38.811096, 22.787983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671711, 38.593529, 22.689289>,  <34.709854, 38.230915, 22.524801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671711, 38.593529, 22.689289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091774, 0.419350, -0.903174,
		-0.991203, -0.048387, -0.123185,
		-0.095359, 0.906534, 0.411220,
		34.643105, 38.865490, 22.812654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301071, 38.595715, 22.078825>,  <34.709854, 38.230915, 22.524801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301071, 38.595715, 22.078825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488983, 38.870972, 22.300007>,  <34.601730, 39.036125, 22.432716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488983, 38.870972, 22.300007>,  <34.301071, 38.595715, 22.078825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488983, 38.870972, 22.300007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236123, 0.505604, -0.829826,
		-0.850617, 0.520403, 0.075037,
		0.469783, 0.688146, 0.552955,
		34.629917, 39.077415, 22.465893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078030, 39.194931, 21.751850>,  <34.301071, 38.595715, 22.078825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078030, 39.194931, 21.751850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389912, 39.302120, 21.978214>,  <34.577042, 39.366436, 22.114033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389912, 39.302120, 21.978214>,  <34.078030, 39.194931, 21.751850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389912, 39.302120, 21.978214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361195, 0.545771, -0.756090,
		-0.511471, 0.793929, 0.328748,
		0.779702, 0.267976, 0.565909,
		34.623821, 39.382511, 22.147987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131611, 39.876713, 21.756561>,  <34.078030, 39.194931, 21.751850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131611, 39.876713, 21.756561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503864, 39.746819, 21.824055>,  <34.727215, 39.668880, 21.864552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503864, 39.746819, 21.824055>,  <34.131611, 39.876713, 21.756561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503864, 39.746819, 21.824055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340844, 0.601272, -0.722702,
		0.133235, 0.730080, 0.670247,
		0.930631, -0.324739, 0.168733,
		34.783054, 39.649395, 21.874674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603806, 40.515930, 21.758894>,  <34.131611, 39.876713, 21.756561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603806, 40.515930, 21.758894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851341, 40.207100, 21.701021>,  <34.999863, 40.021801, 21.666298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851341, 40.207100, 21.701021>,  <34.603806, 40.515930, 21.758894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851341, 40.207100, 21.701021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468712, 0.510743, -0.720729,
		0.630355, 0.378201, 0.677950,
		0.618839, -0.772079, -0.144682,
		35.036991, 39.975475, 21.657616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274250, 40.733307, 21.546230>,  <34.603806, 40.515930, 21.758894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274250, 40.733307, 21.546230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330719, 40.353352, 21.434668>,  <35.364601, 40.125378, 21.367729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330719, 40.353352, 21.434668>,  <35.274250, 40.733307, 21.546230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330719, 40.353352, 21.434668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730208, 0.290146, -0.618557,
		0.668482, -0.116339, 0.734573,
		0.141171, -0.949885, -0.278909,
		35.373070, 40.068386, 21.350994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985882, 40.556427, 21.510981>,  <35.274250, 40.733307, 21.546230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985882, 40.556427, 21.510981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826809, 40.277363, 21.272614>,  <35.731365, 40.109924, 21.129593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.826809, 40.277363, 21.272614>,  <35.985882, 40.556427, 21.510981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826809, 40.277363, 21.272614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679737, 0.212232, -0.702080,
		0.616288, -0.684269, 0.389827,
		-0.397678, -0.697663, -0.595919,
		35.707504, 40.068066, 21.093838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.507488, 40.079945, 21.183552>,  <35.985882, 40.556427, 21.510981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.507488, 40.079945, 21.183552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206818, 40.078297, 20.919744>,  <36.026417, 40.077309, 20.761459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206818, 40.078297, 20.919744>,  <36.507488, 40.079945, 21.183552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206818, 40.078297, 20.919744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653385, 0.131550, -0.745508,
		0.089829, -0.991301, -0.096193,
		-0.751677, -0.004117, -0.659519,
		35.981316, 40.077061, 20.721889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859360, 39.980938, 20.551203>,  <36.507488, 40.079945, 21.183552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859360, 39.980938, 20.551203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494076, 40.055588, 20.406303>,  <36.274906, 40.100380, 20.319363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494076, 40.055588, 20.406303>,  <36.859360, 39.980938, 20.551203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494076, 40.055588, 20.406303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400426, 0.246075, -0.882670,
		-0.075590, -0.951114, -0.299448,
		-0.913206, 0.186628, -0.362250,
		36.220116, 40.111576, 20.297628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890064, 39.691250, 19.827461>,  <36.859360, 39.980938, 20.551203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890064, 39.691250, 19.827461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587959, 39.951668, 19.857700>,  <36.406696, 40.107918, 19.875845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.587959, 39.951668, 19.857700>,  <36.890064, 39.691250, 19.827461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.587959, 39.951668, 19.857700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318143, 0.465006, -0.826169,
		-0.573028, -0.599924, -0.558328,
		-0.755264, 0.651045, 0.075600,
		36.361382, 40.146980, 19.880381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687374, 39.687061, 19.084702>,  <36.890064, 39.691250, 19.827461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687374, 39.687061, 19.084702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563934, 39.991703, 19.312639>,  <36.489872, 40.174488, 19.449402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.563934, 39.991703, 19.312639>,  <36.687374, 39.687061, 19.084702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563934, 39.991703, 19.312639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031223, 0.590650, -0.806323,
		-0.950680, -0.266621, -0.158493,
		-0.308597, 0.761607, 0.569844,
		36.471355, 40.220184, 19.483593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405140, 40.104687, 18.644756>,  <36.687374, 39.687061, 19.084702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405140, 40.104687, 18.644756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448254, 40.347610, 18.959604>,  <36.474121, 40.493362, 19.148514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448254, 40.347610, 18.959604>,  <36.405140, 40.104687, 18.644756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448254, 40.347610, 18.959604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164212, 0.769984, -0.616571,
		-0.980519, 0.195711, -0.016735,
		0.107784, 0.607307, 0.787122,
		36.480587, 40.529804, 19.195742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204403, 40.748749, 18.416203>,  <36.405140, 40.104687, 18.644756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204403, 40.748749, 18.416203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408798, 40.851402, 18.744358>,  <36.531433, 40.912994, 18.941252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408798, 40.851402, 18.744358>,  <36.204403, 40.748749, 18.416203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408798, 40.851402, 18.744358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282358, 0.851325, -0.442177,
		-0.811891, 0.457589, 0.362554,
		0.510986, 0.256630, 0.820386,
		36.562096, 40.928391, 18.990475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914070, 41.413452, 18.689789>,  <36.204403, 40.748749, 18.416203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914070, 41.413452, 18.689789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297462, 41.369911, 18.795212>,  <36.527500, 41.343788, 18.858465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.297462, 41.369911, 18.795212>,  <35.914070, 41.413452, 18.689789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297462, 41.369911, 18.795212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210426, 0.893759, -0.396125,
		-0.192436, 0.435138, 0.879559,
		0.958483, -0.108853, 0.263555,
		36.585007, 41.337254, 18.874279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088902, 42.060715, 18.980520>,  <35.914070, 41.413452, 18.689789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088902, 42.060715, 18.980520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421738, 41.873924, 18.860819>,  <36.621441, 41.761852, 18.788998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421738, 41.873924, 18.860819>,  <36.088902, 42.060715, 18.980520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421738, 41.873924, 18.860819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244298, 0.792980, -0.558123,
		0.497932, 0.391303, 0.773915,
		0.832095, -0.466973, -0.299256,
		36.671368, 41.733833, 18.771042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434708, 42.576038, 18.901041>,  <36.088902, 42.060715, 18.980520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434708, 42.576038, 18.901041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665302, 42.328743, 18.687332>,  <36.803661, 42.180367, 18.559107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665302, 42.328743, 18.687332>,  <36.434708, 42.576038, 18.901041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665302, 42.328743, 18.687332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156158, 0.725165, -0.670634,
		0.802044, 0.303182, 0.514592,
		0.576489, -0.618236, -0.534270,
		36.838249, 42.143272, 18.527052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125210, 42.916187, 18.758947>,  <36.434708, 42.576038, 18.901041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125210, 42.916187, 18.758947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065201, 42.632092, 18.483831>,  <37.029194, 42.461636, 18.318762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065201, 42.632092, 18.483831>,  <37.125210, 42.916187, 18.758947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065201, 42.632092, 18.483831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158036, 0.669493, -0.725812,
		0.975970, -0.217586, 0.011801,
		-0.150026, -0.710236, -0.687792,
		37.020191, 42.419022, 18.277494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650433, 43.082172, 18.376356>,  <37.125210, 42.916187, 18.758947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650433, 43.082172, 18.376356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419487, 42.857552, 18.139273>,  <37.280918, 42.722778, 17.997023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419487, 42.857552, 18.139273>,  <37.650433, 43.082172, 18.376356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419487, 42.857552, 18.139273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370513, 0.466682, -0.803074,
		0.727577, -0.683274, -0.061384,
		-0.577367, -0.561555, -0.592709,
		37.246277, 42.689087, 17.961460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099369, 42.862061, 17.899319>,  <37.650433, 43.082172, 18.376356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099369, 42.862061, 17.899319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730656, 42.853970, 17.744446>,  <37.509426, 42.849113, 17.651522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.730656, 42.853970, 17.744446>,  <38.099369, 42.862061, 17.899319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730656, 42.853970, 17.744446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302593, 0.586808, -0.751062,
		0.242394, -0.809473, -0.534788,
		-0.921782, -0.020230, -0.387180,
		37.454121, 42.847900, 17.628292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215046, 43.028439, 17.284472>,  <38.099369, 42.862061, 17.899319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215046, 43.028439, 17.284472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820011, 43.089390, 17.269222>,  <37.582989, 43.125961, 17.260073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.820011, 43.089390, 17.269222>,  <38.215046, 43.028439, 17.284472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820011, 43.089390, 17.269222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112805, 0.519131, -0.847218,
		-0.109311, -0.841001, -0.529876,
		-0.987586, 0.152383, -0.038122,
		37.523735, 43.135105, 17.257786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033653, 42.882999, 16.618534>,  <38.215046, 43.028439, 17.284472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033653, 42.882999, 16.618534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728615, 43.100758, 16.758297>,  <37.545593, 43.231415, 16.842154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728615, 43.100758, 16.758297>,  <38.033653, 42.882999, 16.618534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728615, 43.100758, 16.758297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075677, 0.611511, -0.787609,
		-0.642439, -0.574182, -0.507531,
		-0.762591, 0.544399, 0.349406,
		37.499836, 43.264076, 16.863119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607876, 42.979710, 16.030178>,  <38.033653, 42.882999, 16.618534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607876, 42.979710, 16.030178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514019, 43.257481, 16.302271>,  <37.457706, 43.424145, 16.465527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.514019, 43.257481, 16.302271>,  <37.607876, 42.979710, 16.030178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514019, 43.257481, 16.302271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044245, 0.706672, -0.706156,
		-0.971075, -0.135595, -0.196539,
		-0.234640, 0.694426, 0.680232,
		37.443626, 43.465809, 16.506340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019924, 43.434937, 15.779064>,  <37.607876, 42.979710, 16.030178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019924, 43.434937, 15.779064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273186, 43.629517, 16.019888>,  <37.425144, 43.746265, 16.164383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273186, 43.629517, 16.019888>,  <37.019924, 43.434937, 15.779064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273186, 43.629517, 16.019888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065382, 0.741440, -0.667827,
		-0.771256, 0.462204, 0.437643,
		0.633158, 0.486451, 0.602060,
		37.463135, 43.775452, 16.200506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736237, 44.058033, 15.913726>,  <37.019924, 43.434937, 15.779064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736237, 44.058033, 15.913726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134953, 44.073627, 15.941705>,  <37.374184, 44.082985, 15.958492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134953, 44.073627, 15.941705>,  <36.736237, 44.058033, 15.913726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134953, 44.073627, 15.941705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012260, 0.788910, -0.614386,
		-0.079132, 0.613271, 0.785899,
		0.996789, 0.038982, 0.069947,
		37.433990, 44.085323, 15.962688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081581, 44.810097, 16.135197>,  <36.736237, 44.058033, 15.913726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081581, 44.810097, 16.135197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368660, 44.603714, 15.948139>,  <37.540909, 44.479885, 15.835905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.368660, 44.603714, 15.948139>,  <37.081581, 44.810097, 16.135197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.368660, 44.603714, 15.948139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254915, 0.819616, -0.513077,
		0.648015, 0.249027, 0.719765,
		0.717701, -0.515960, -0.467642,
		37.583969, 44.448925, 15.807846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487389, 44.946571, 16.662937>,  <37.081581, 44.810097, 16.135197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487389, 44.946571, 16.662937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480835, 45.337837, 16.745811>,  <36.476902, 45.572598, 16.795536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.480835, 45.337837, 16.745811>,  <36.487389, 44.946571, 16.662937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480835, 45.337837, 16.745811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374494, 0.198133, -0.905813,
		-0.927084, 0.062747, -0.369564,
		-0.016386, 0.978165, 0.207185,
		36.475918, 45.631287, 16.807966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181152, 45.282677, 16.037312>,  <36.487389, 44.946571, 16.662937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181152, 45.282677, 16.037312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407478, 45.550732, 16.229465>,  <36.543274, 45.711567, 16.344759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407478, 45.550732, 16.229465>,  <36.181152, 45.282677, 16.037312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407478, 45.550732, 16.229465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354453, 0.328349, -0.875529,
		-0.744461, 0.665658, -0.051749,
		0.565811, 0.670139, 0.480387,
		36.577221, 45.751774, 16.373581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197983, 46.032120, 15.647891>,  <36.181152, 45.282677, 16.037312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197983, 46.032120, 15.647891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518345, 45.987705, 15.883252>,  <36.710564, 45.961056, 16.024469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518345, 45.987705, 15.883252>,  <36.197983, 46.032120, 15.647891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518345, 45.987705, 15.883252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552817, 0.514714, -0.655334,
		-0.230092, 0.850141, 0.473622,
		0.800907, -0.111039, 0.588403,
		36.758617, 45.954395, 16.059772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.508888, 46.718143, 15.790021>,  <36.197983, 46.032120, 15.647891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.508888, 46.718143, 15.790021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771091, 46.421551, 15.847316>,  <36.928413, 46.243595, 15.881693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.771091, 46.421551, 15.847316>,  <36.508888, 46.718143, 15.790021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771091, 46.421551, 15.847316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682857, 0.500961, -0.531737,
		0.322516, 0.446369, 0.834709,
		0.655508, -0.741480, 0.143238,
		36.967743, 46.199108, 15.890287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128147, 46.971798, 16.231564>,  <36.508888, 46.718143, 15.790021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128147, 46.971798, 16.231564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215996, 46.673649, 15.979789>,  <37.268703, 46.494759, 15.828725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215996, 46.673649, 15.979789>,  <37.128147, 46.971798, 16.231564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215996, 46.673649, 15.979789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758452, 0.536250, -0.370387,
		0.613611, -0.396051, 0.683100,
		0.219621, -0.745372, -0.629434,
		37.281883, 46.450039, 15.790958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244358, 46.707237, 16.929232>,  <37.128147, 46.971798, 16.231564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244358, 46.707237, 16.929232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000179, 46.445362, 16.750912>,  <36.853672, 46.288239, 16.643919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000179, 46.445362, 16.750912>,  <37.244358, 46.707237, 16.929232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000179, 46.445362, 16.750912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480591, -0.141234, 0.865497,
		-0.629592, 0.742589, -0.228420,
		-0.610448, -0.654686, -0.445801,
		36.817043, 46.248955, 16.617172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509747, 46.916412, 17.050846>,  <37.244358, 46.707237, 16.929232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509747, 46.916412, 17.050846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486767, 46.525066, 16.971354>,  <36.472977, 46.290257, 16.923658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486767, 46.525066, 16.971354>,  <36.509747, 46.916412, 17.050846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486767, 46.525066, 16.971354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581644, -0.128985, 0.803152,
		-0.811412, 0.161733, -0.561652,
		-0.057451, -0.978369, -0.198731,
		36.469532, 46.231556, 16.911734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849014, 46.719524, 17.107224>,  <36.509747, 46.916412, 17.050846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849014, 46.719524, 17.107224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019188, 46.359280, 17.142794>,  <36.121292, 46.143131, 17.164135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019188, 46.359280, 17.142794>,  <35.849014, 46.719524, 17.107224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019188, 46.359280, 17.142794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638623, -0.229138, 0.734613,
		-0.641226, -0.369315, -0.672634,
		0.425430, -0.900612, 0.088924,
		36.146816, 46.089096, 17.169472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273190, 46.243305, 17.240345>,  <35.849014, 46.719524, 17.107224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.273190, 46.243305, 17.240345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603966, 46.043652, 17.343908>,  <35.802433, 45.923859, 17.406046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603966, 46.043652, 17.343908>,  <35.273190, 46.243305, 17.240345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603966, 46.043652, 17.343908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524729, -0.519574, 0.674316,
		-0.202048, -0.693479, -0.691566,
		0.826943, -0.499129, 0.258910,
		35.852047, 45.893913, 17.421581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114468, 45.546173, 17.266922>,  <35.273190, 46.243305, 17.240345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114468, 45.546173, 17.266922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448521, 45.576805, 17.484798>,  <35.648952, 45.595184, 17.615524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448521, 45.576805, 17.484798>,  <35.114468, 45.546173, 17.266922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448521, 45.576805, 17.484798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386991, -0.621915, 0.680779,
		0.390882, -0.779332, -0.489748,
		0.835134, 0.076576, 0.544690,
		35.699062, 45.599777, 17.648205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267906, 44.823605, 17.401867>,  <35.114468, 45.546173, 17.266922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267906, 44.823605, 17.401867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493500, 45.024727, 17.663891>,  <35.628857, 45.145401, 17.821106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493500, 45.024727, 17.663891>,  <35.267906, 44.823605, 17.401867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493500, 45.024727, 17.663891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387422, -0.539429, 0.747610,
		0.729265, -0.675424, -0.109429,
		0.563983, 0.502810, 0.655061,
		35.662693, 45.175571, 17.860409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762730, 44.279167, 17.721874>,  <35.267906, 44.823605, 17.401867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762730, 44.279167, 17.721874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682690, 44.601349, 17.945019>,  <35.634666, 44.794659, 18.078905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682690, 44.601349, 17.945019>,  <35.762730, 44.279167, 17.721874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682690, 44.601349, 17.945019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409413, -0.586023, 0.699256,
		0.890135, -0.088474, 0.447025,
		-0.200101, 0.805450, 0.557862,
		35.622658, 44.842983, 18.112377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894993, 44.050385, 18.537050>,  <35.762730, 44.279167, 17.721874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894993, 44.050385, 18.537050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690662, 44.394238, 18.540775>,  <35.568066, 44.600552, 18.543011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690662, 44.394238, 18.540775>,  <35.894993, 44.050385, 18.537050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690662, 44.394238, 18.540775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532759, -0.325049, 0.781352,
		0.674706, 0.394169, 0.624021,
		-0.510822, 0.859636, 0.009315,
		35.537415, 44.652130, 18.543570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918064, 44.247108, 19.213816>,  <35.894993, 44.050385, 18.537050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918064, 44.247108, 19.213816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604847, 44.451626, 19.072157>,  <35.416916, 44.574337, 18.987162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.604847, 44.451626, 19.072157>,  <35.918064, 44.247108, 19.213816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604847, 44.451626, 19.072157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522225, -0.231212, 0.820866,
		0.337820, 0.827719, 0.448060,
		-0.783044, 0.511294, -0.354148,
		35.369934, 44.605015, 18.965912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782036, 44.754913, 19.691248>,  <35.918064, 44.247108, 19.213816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782036, 44.754913, 19.691248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432785, 44.718761, 19.499628>,  <35.223236, 44.697071, 19.384657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432785, 44.718761, 19.499628>,  <35.782036, 44.754913, 19.691248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432785, 44.718761, 19.499628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447327, -0.242102, 0.860979,
		-0.193791, 0.966032, 0.170957,
		-0.873123, -0.090376, -0.479049,
		35.170849, 44.691650, 19.355913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324177, 45.028923, 20.155033>,  <35.782036, 44.754913, 19.691248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324177, 45.028923, 20.155033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100151, 44.807213, 19.908747>,  <34.965736, 44.674187, 19.760975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100151, 44.807213, 19.908747>,  <35.324177, 45.028923, 20.155033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100151, 44.807213, 19.908747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575182, -0.274730, 0.770513,
		-0.596232, 0.785685, -0.164944,
		-0.560065, -0.554277, -0.615714,
		34.932133, 44.640930, 19.724033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612633, 45.182961, 20.331005>,  <35.324177, 45.028923, 20.155033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612633, 45.182961, 20.331005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599724, 44.841465, 20.123127>,  <34.591976, 44.636566, 19.998400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599724, 44.841465, 20.123127>,  <34.612633, 45.182961, 20.331005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599724, 44.841465, 20.123127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558056, -0.415976, 0.718009,
		-0.829175, 0.313194, -0.463010,
		-0.032276, -0.853741, -0.519697,
		34.590042, 44.585342, 19.967218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869270, 44.958210, 20.440456>,  <34.612633, 45.182961, 20.331005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869270, 44.958210, 20.440456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073677, 44.642208, 20.304955>,  <34.196320, 44.452606, 20.223654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.073677, 44.642208, 20.304955>,  <33.869270, 44.958210, 20.440456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073677, 44.642208, 20.304955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605081, -0.610523, 0.511017,
		-0.610523, -0.056164, -0.790004,
		-0.511017, 0.790004, 0.338755,
		34.226982, 44.405209, 20.203327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380192, 44.316643, 20.348312>,  <33.869270, 44.958210, 20.440456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380192, 44.316643, 20.348312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737541, 44.137043, 20.355038>,  <33.951950, 44.029285, 20.359074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.737541, 44.137043, 20.355038>,  <33.380192, 44.316643, 20.348312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737541, 44.137043, 20.355038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342031, -0.655323, 0.673473,
		-0.291369, -0.607415, -0.739021,
		0.893374, -0.448997, 0.016814,
		34.005554, 44.002342, 20.360083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253120, 43.633625, 20.178476>,  <33.380192, 44.316643, 20.348312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253120, 43.633625, 20.178476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595238, 43.656727, 20.384441>,  <33.800510, 43.670586, 20.508020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595238, 43.656727, 20.384441>,  <33.253120, 43.633625, 20.178476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595238, 43.656727, 20.384441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306866, -0.744276, 0.593199,
		0.417494, -0.665370, -0.618855,
		0.855296, 0.057752, 0.514911,
		33.851826, 43.674053, 20.538914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483482, 43.054768, 20.278753>,  <33.253120, 43.633625, 20.178476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483482, 43.054768, 20.278753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689644, 43.215534, 20.581493>,  <33.813339, 43.311993, 20.763138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689644, 43.215534, 20.581493>,  <33.483482, 43.054768, 20.278753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689644, 43.215534, 20.581493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283811, -0.753293, 0.593297,
		0.808587, -0.520588, -0.274180,
		0.515401, 0.401917, 0.756852,
		33.844265, 43.336109, 20.808548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687889, 42.488991, 20.480146>,  <33.483482, 43.054768, 20.278753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687889, 42.488991, 20.480146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759056, 42.757427, 20.768028>,  <33.801758, 42.918491, 20.940758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759056, 42.757427, 20.768028>,  <33.687889, 42.488991, 20.480146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759056, 42.757427, 20.768028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140029, -0.706667, 0.693551,
		0.974031, -0.224177, -0.031758,
		0.177921, 0.671093, 0.719707,
		33.812431, 42.958755, 20.983940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138527, 42.107281, 20.998974>,  <33.687889, 42.488991, 20.480146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138527, 42.107281, 20.998974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974598, 42.419926, 21.187071>,  <33.876240, 42.607513, 21.299929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.974598, 42.419926, 21.187071>,  <34.138527, 42.107281, 20.998974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974598, 42.419926, 21.187071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181183, -0.575002, 0.797838,
		0.893990, 0.241772, 0.377264,
		-0.409823, 0.781613, 0.470241,
		33.851650, 42.654411, 21.328144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421257, 42.099167, 21.614222>,  <34.138527, 42.107281, 20.998974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421257, 42.099167, 21.614222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068878, 42.287792, 21.629984>,  <33.857449, 42.400967, 21.639441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068878, 42.287792, 21.629984>,  <34.421257, 42.099167, 21.614222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068878, 42.287792, 21.629984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296589, -0.615111, 0.730530,
		0.368731, 0.631873, 0.681743,
		-0.880949, 0.471567, 0.039404,
		33.804592, 42.429264, 21.641806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326324, 42.069290, 22.374025>,  <34.421257, 42.099167, 21.614222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326324, 42.069290, 22.374025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976116, 42.157028, 22.201813>,  <33.765991, 42.209671, 22.098486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976116, 42.157028, 22.201813>,  <34.326324, 42.069290, 22.374025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976116, 42.157028, 22.201813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473593, -0.566211, 0.674622,
		-0.095798, 0.794540, 0.599607,
		-0.875518, 0.219342, -0.430530,
		33.713459, 42.222832, 22.072653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962467, 42.363972, 22.871304>,  <34.326324, 42.069290, 22.374025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962467, 42.363972, 22.871304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694942, 42.242123, 22.600040>,  <33.534428, 42.169014, 22.437283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.694942, 42.242123, 22.600040>,  <33.962467, 42.363972, 22.871304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694942, 42.242123, 22.600040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481052, -0.518163, 0.707175,
		-0.566821, 0.799193, 0.200010,
		-0.668808, -0.304627, -0.678159,
		33.494301, 42.150734, 22.396593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322075, 42.578972, 23.170679>,  <33.962467, 42.363972, 22.871304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322075, 42.578972, 23.170679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226753, 42.320133, 22.880997>,  <33.169559, 42.164829, 22.707188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.226753, 42.320133, 22.880997>,  <33.322075, 42.578972, 23.170679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226753, 42.320133, 22.880997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511807, -0.550065, 0.659911,
		-0.825387, 0.527916, -0.200105,
		-0.238307, -0.647097, -0.724207,
		33.155262, 42.126003, 22.663734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609470, 42.645573, 23.080050>,  <33.322075, 42.578972, 23.170679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609470, 42.645573, 23.080050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707275, 42.284931, 22.937323>,  <32.765961, 42.068546, 22.851686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707275, 42.284931, 22.937323>,  <32.609470, 42.645573, 23.080050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707275, 42.284931, 22.937323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538168, -0.432295, 0.723530,
		-0.806590, 0.015113, -0.590919,
		0.244516, -0.901606, -0.356818,
		32.780632, 42.014450, 22.830276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024101, 42.341331, 22.954514>,  <32.609470, 42.645573, 23.080050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024101, 42.341331, 22.954514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281116, 42.038498, 23.001785>,  <32.435326, 41.856796, 23.030149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.281116, 42.038498, 23.001785>,  <32.024101, 42.341331, 22.954514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281116, 42.038498, 23.001785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675047, -0.486312, 0.554808,
		-0.362562, -0.436266, -0.823542,
		0.642542, -0.757082, 0.118182,
		32.473881, 41.811375, 23.037239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628513, 41.774899, 23.020647>,  <32.024101, 42.341331, 22.954514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628513, 41.774899, 23.020647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973631, 41.615665, 23.145304>,  <32.180702, 41.520126, 23.220097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973631, 41.615665, 23.145304>,  <31.628513, 41.774899, 23.020647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973631, 41.615665, 23.145304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503703, -0.729644, 0.462496,
		0.043274, -0.556012, -0.830047,
		0.862792, -0.398083, 0.311640,
		32.232468, 41.496239, 23.238796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304113, 41.255875, 23.275169>,  <31.628513, 41.774899, 23.020647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304113, 41.255875, 23.275169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670437, 41.216053, 23.430803>,  <31.890230, 41.192162, 23.524183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.670437, 41.216053, 23.430803>,  <31.304113, 41.255875, 23.275169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.670437, 41.216053, 23.430803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373484, -0.567319, 0.733934,
		0.147672, -0.817459, -0.556735,
		0.915807, -0.099550, 0.389085,
		31.945179, 41.186188, 23.547529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419336, 40.578190, 23.447691>,  <31.304113, 41.255875, 23.275169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419336, 40.578190, 23.447691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712679, 40.744450, 23.662882>,  <31.888685, 40.844208, 23.791996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712679, 40.744450, 23.662882>,  <31.419336, 40.578190, 23.447691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712679, 40.744450, 23.662882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151831, -0.671203, 0.725557,
		0.662673, -0.613774, -0.429123,
		0.733357, 0.415653, 0.537978,
		31.932686, 40.869144, 23.824276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726759, 40.058708, 23.685553>,  <31.419336, 40.578190, 23.447691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726759, 40.058708, 23.685553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842661, 40.345181, 23.939524>,  <31.912201, 40.517063, 24.091908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842661, 40.345181, 23.939524>,  <31.726759, 40.058708, 23.685553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842661, 40.345181, 23.939524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194917, -0.605329, 0.771741,
		0.937043, -0.347373, -0.035801,
		0.289753, 0.716176, 0.634929,
		31.929586, 40.560032, 24.130003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314453, 39.723202, 24.238920>,  <31.726759, 40.058708, 23.685553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314453, 39.723202, 24.238920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166943, 40.046940, 24.421772>,  <32.078438, 40.241180, 24.531483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166943, 40.046940, 24.421772>,  <32.314453, 39.723202, 24.238920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166943, 40.046940, 24.421772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015741, -0.486286, 0.873658,
		0.929384, 0.329381, 0.166592,
		-0.368778, 0.809342, 0.457132,
		32.056309, 40.289742, 24.558912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478745, 39.639523, 24.909250>,  <32.314453, 39.723202, 24.238920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478745, 39.639523, 24.909250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221500, 39.941868, 24.958380>,  <32.067154, 40.123276, 24.987858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221500, 39.941868, 24.958380>,  <32.478745, 39.639523, 24.909250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221500, 39.941868, 24.958380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200736, -0.321184, 0.925498,
		0.738997, 0.570540, 0.358285,
		-0.643108, 0.755861, 0.122826,
		32.028568, 40.168625, 24.995228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643391, 40.034775, 25.514538>,  <32.478745, 39.639523, 24.909250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643391, 40.034775, 25.514538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251698, 40.085262, 25.451078>,  <32.016682, 40.115555, 25.413002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251698, 40.085262, 25.451078>,  <32.643391, 40.034775, 25.514538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251698, 40.085262, 25.451078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182942, -0.212898, 0.959795,
		0.087365, 0.968888, 0.231567,
		-0.979234, 0.126216, -0.158650,
		31.957928, 40.123127, 25.403482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377110, 40.310402, 26.131680>,  <32.643391, 40.034775, 25.514538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377110, 40.310402, 26.131680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046307, 40.178600, 25.949478>,  <31.847824, 40.099518, 25.840158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046307, 40.178600, 25.949478>,  <32.377110, 40.310402, 26.131680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046307, 40.178600, 25.949478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437521, -0.131558, 0.889532,
		-0.353030, 0.934943, -0.035365,
		-0.827010, -0.329504, -0.455501,
		31.798204, 40.079750, 25.812828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831114, 40.658680, 26.427658>,  <32.377110, 40.310402, 26.131680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831114, 40.658680, 26.427658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663519, 40.339500, 26.254347>,  <31.562962, 40.147995, 26.150360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.663519, 40.339500, 26.254347>,  <31.831114, 40.658680, 26.427658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663519, 40.339500, 26.254347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548855, -0.157567, 0.820933,
		-0.723330, 0.581770, -0.371937,
		-0.418989, -0.797945, -0.433280,
		31.537823, 40.100117, 26.124363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160479, 40.779671, 26.392448>,  <31.831114, 40.658680, 26.427658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160479, 40.779671, 26.392448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188383, 40.381565, 26.365383>,  <31.205126, 40.142700, 26.349144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.188383, 40.381565, 26.365383>,  <31.160479, 40.779671, 26.392448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188383, 40.381565, 26.365383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319514, -0.086546, 0.943621,
		-0.945010, -0.044209, -0.324039,
		0.069761, -0.995266, -0.067661,
		31.209312, 40.082985, 26.345085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522825, 40.523373, 26.508289>,  <31.160479, 40.779671, 26.392448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522825, 40.523373, 26.508289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740356, 40.193775, 26.571888>,  <30.870874, 39.996017, 26.610048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.740356, 40.193775, 26.571888>,  <30.522825, 40.523373, 26.508289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.740356, 40.193775, 26.571888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494980, -0.161954, 0.853678,
		-0.677678, -0.542953, -0.495937,
		0.543826, -0.823998, 0.158998,
		30.903503, 39.946575, 26.619587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993238, 40.015228, 26.714745>,  <30.522825, 40.523373, 26.508289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993238, 40.015228, 26.714745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347790, 39.861538, 26.818052>,  <30.560520, 39.769325, 26.880037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.347790, 39.861538, 26.818052>,  <29.993238, 40.015228, 26.714745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347790, 39.861538, 26.818052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407732, -0.383638, 0.828599,
		-0.219283, -0.839760, -0.496708,
		0.886381, -0.384221, 0.258272,
		30.613703, 39.746269, 26.895533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847679, 39.299969, 26.971001>,  <29.993238, 40.015228, 26.714745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847679, 39.299969, 26.971001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217775, 39.370674, 27.105272>,  <30.439835, 39.413097, 27.185835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217775, 39.370674, 27.105272>,  <29.847679, 39.299969, 26.971001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217775, 39.370674, 27.105272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259140, -0.351748, 0.899511,
		0.277078, -0.919253, -0.279645,
		0.925243, 0.176767, 0.335677,
		30.495348, 39.423706, 27.205975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066372, 38.664635, 27.380531>,  <29.847679, 39.299969, 26.971001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066372, 38.664635, 27.380531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284359, 38.974461, 27.508940>,  <30.415152, 39.160358, 27.585985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.284359, 38.974461, 27.508940>,  <30.066372, 38.664635, 27.380531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284359, 38.974461, 27.508940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197245, -0.253696, 0.946960,
		0.814927, -0.579382, 0.014524,
		0.544967, 0.774568, 0.321023,
		30.447849, 39.206829, 27.605247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543919, 38.363670, 27.916937>,  <30.066372, 38.664635, 27.380531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543919, 38.363670, 27.916937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486349, 38.751278, 27.997227>,  <30.451807, 38.983841, 28.045401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486349, 38.751278, 27.997227>,  <30.543919, 38.363670, 27.916937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486349, 38.751278, 27.997227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108309, -0.217043, 0.970135,
		0.983644, 0.117883, 0.136190,
		-0.143922, 0.969018, 0.200726,
		30.443172, 39.041985, 28.057444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907833, 38.489094, 28.529423>,  <30.543919, 38.363670, 27.916937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907833, 38.489094, 28.529423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630079, 38.776680, 28.517345>,  <30.463427, 38.949234, 28.510099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.630079, 38.776680, 28.517345>,  <30.907833, 38.489094, 28.529423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630079, 38.776680, 28.517345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212538, -0.164821, 0.963152,
		0.687499, 0.675217, 0.267258,
		-0.694386, 0.718969, -0.030194,
		30.421762, 38.992371, 28.508287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064621, 38.953953, 29.089706>,  <30.907833, 38.489094, 28.529423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064621, 38.953953, 29.089706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692614, 39.088627, 29.030773>,  <30.469410, 39.169434, 28.995413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692614, 39.088627, 29.030773>,  <31.064621, 38.953953, 29.089706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692614, 39.088627, 29.030773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096372, 0.163440, 0.981835,
		0.354651, 0.927324, -0.119555,
		-0.930019, 0.336687, -0.147332,
		30.413609, 39.189632, 28.986574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509260, 38.881760, 28.402710>,  <31.064621, 38.953953, 29.089706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509260, 38.881760, 28.402710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802593, 38.898212, 28.674160>,  <31.978594, 38.908085, 28.837030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.802593, 38.898212, 28.674160>,  <31.509260, 38.881760, 28.402710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.802593, 38.898212, 28.674160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153891, 0.962220, -0.224612,
		-0.662224, 0.269149, 0.699298,
		0.733333, 0.041127, 0.678625,
		32.022594, 38.910549, 28.877747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476255, 39.547886, 28.862833>,  <31.509260, 38.881760, 28.402710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476255, 39.547886, 28.862833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855127, 39.433666, 28.921223>,  <32.082451, 39.365135, 28.956257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.855127, 39.433666, 28.921223>,  <31.476255, 39.547886, 28.862833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855127, 39.433666, 28.921223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304787, 0.943121, -0.132773,
		-0.099757, 0.170251, 0.980338,
		0.947182, -0.285549, 0.145973,
		32.139282, 39.348003, 28.965015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800749, 40.089867, 29.314005>,  <31.476255, 39.547886, 28.862833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800749, 40.089867, 29.314005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108555, 39.899998, 29.143112>,  <32.293240, 39.786076, 29.040577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.108555, 39.899998, 29.143112>,  <31.800749, 40.089867, 29.314005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108555, 39.899998, 29.143112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417887, 0.880145, -0.225201,
		0.482922, -0.005238, 0.875648,
		0.769517, -0.474676, -0.427231,
		32.339409, 39.757595, 29.014942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422592, 40.270931, 29.732290>,  <31.800749, 40.089867, 29.314005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422592, 40.270931, 29.732290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522556, 40.159832, 29.361259>,  <32.582535, 40.093174, 29.138641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.522556, 40.159832, 29.361259>,  <32.422592, 40.270931, 29.732290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522556, 40.159832, 29.361259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350879, 0.918841, -0.180596,
		0.902457, -0.280335, 0.327084,
		0.249911, -0.277747, -0.927578,
		32.597530, 40.076508, 29.082987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126026, 40.559612, 29.607073>,  <32.422592, 40.270931, 29.732290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126026, 40.559612, 29.607073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007095, 40.497974, 29.230169>,  <32.935738, 40.460991, 29.004028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007095, 40.497974, 29.230169>,  <33.126026, 40.559612, 29.607073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007095, 40.497974, 29.230169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421198, 0.864498, -0.274290,
		0.856846, -0.478432, -0.192140,
		-0.297334, -0.154095, -0.942256,
		32.917896, 40.451744, 28.947493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772297, 40.668484, 29.153891>,  <33.126026, 40.559612, 29.607073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772297, 40.668484, 29.153891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460289, 40.685616, 28.904173>,  <33.273087, 40.695892, 28.754343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460289, 40.685616, 28.904173>,  <33.772297, 40.668484, 29.153891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460289, 40.685616, 28.904173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556769, 0.502876, -0.661154,
		0.285626, -0.863297, -0.416095,
		-0.780017, 0.042826, -0.624292,
		33.226284, 40.698463, 28.716885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010204, 40.537285, 28.452221>,  <33.772297, 40.668484, 29.153891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010204, 40.537285, 28.452221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665882, 40.734001, 28.399824>,  <33.459290, 40.852032, 28.368387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665882, 40.734001, 28.399824>,  <34.010204, 40.537285, 28.452221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665882, 40.734001, 28.399824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450092, 0.615497, -0.646978,
		-0.237551, -0.615880, -0.751173,
		-0.860806, 0.491787, -0.130991,
		33.407639, 40.881538, 28.360527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929714, 40.604050, 27.718534>,  <34.010204, 40.537285, 28.452221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929714, 40.604050, 27.718534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686249, 40.885326, 27.865524>,  <33.540169, 41.054092, 27.953718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686249, 40.885326, 27.865524>,  <33.929714, 40.604050, 27.718534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686249, 40.885326, 27.865524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251840, 0.610428, -0.750969,
		-0.752396, -0.364545, -0.548641,
		-0.608668, 0.703196, 0.367477,
		33.503647, 41.096287, 27.975767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578785, 40.881145, 27.266661>,  <33.929714, 40.604050, 27.718534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578785, 40.881145, 27.266661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559326, 41.183609, 27.527689>,  <33.547649, 41.365089, 27.684307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559326, 41.183609, 27.527689>,  <33.578785, 40.881145, 27.266661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559326, 41.183609, 27.527689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363256, 0.622001, -0.693657,
		-0.930419, 0.203307, -0.304939,
		-0.048647, 0.756163, 0.652573,
		33.544731, 41.410458, 27.723461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326080, 41.373329, 26.897028>,  <33.578785, 40.881145, 27.266661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326080, 41.373329, 26.897028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461075, 41.610973, 27.189093>,  <33.542072, 41.753559, 27.364330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461075, 41.610973, 27.189093>,  <33.326080, 41.373329, 26.897028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461075, 41.610973, 27.189093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261060, 0.686169, -0.678984,
		-0.904407, 0.419762, 0.076472,
		0.337484, 0.594114, 0.730159,
		33.562321, 41.789207, 27.408140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.124203, 42.035862, 26.689619>,  <33.326080, 41.373329, 26.897028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.124203, 42.035862, 26.689619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419983, 42.107868, 26.949097>,  <33.597450, 42.151073, 27.104784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419983, 42.107868, 26.949097>,  <33.124203, 42.035862, 26.689619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419983, 42.107868, 26.949097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287554, 0.786801, -0.546129,
		-0.608706, 0.590371, 0.530037,
		0.739452, 0.180017, 0.648694,
		33.641819, 42.161873, 27.143705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213535, 42.781776, 26.585953>,  <33.124203, 42.035862, 26.689619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213535, 42.781776, 26.585953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543781, 42.671726, 26.782997>,  <33.741928, 42.605698, 26.901224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543781, 42.671726, 26.782997>,  <33.213535, 42.781776, 26.585953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543781, 42.671726, 26.782997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534224, 0.662089, -0.525588,
		-0.181551, 0.697099, 0.693608,
		0.825617, -0.275121, 0.492610,
		33.791466, 42.589191, 26.930780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575706, 43.409580, 26.684469>,  <33.213535, 42.781776, 26.585953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575706, 43.409580, 26.684469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853951, 43.127758, 26.740662>,  <34.020897, 42.958664, 26.774376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.853951, 43.127758, 26.740662>,  <33.575706, 43.409580, 26.684469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853951, 43.127758, 26.740662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672790, 0.570272, -0.471321,
		0.251960, 0.422368, 0.870702,
		0.695607, -0.704554, 0.140479,
		34.062634, 42.916393, 26.782804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164867, 43.750477, 26.855846>,  <33.575706, 43.409580, 26.684469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164867, 43.750477, 26.855846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258793, 43.390053, 26.709995>,  <34.315147, 43.173798, 26.622484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258793, 43.390053, 26.709995>,  <34.164867, 43.750477, 26.855846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258793, 43.390053, 26.709995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610185, 0.428637, -0.666292,
		0.756661, -0.066034, 0.650464,
		0.234815, -0.901060, -0.364626,
		34.329239, 43.119736, 26.600607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963413, 43.755974, 26.811594>,  <34.164867, 43.750477, 26.855846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963413, 43.755974, 26.811594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813366, 43.487640, 26.555698>,  <34.723339, 43.326641, 26.402161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813366, 43.487640, 26.555698>,  <34.963413, 43.755974, 26.811594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813366, 43.487640, 26.555698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576639, 0.371486, -0.727658,
		0.725793, -0.641856, 0.247479,
		-0.375116, -0.670835, -0.639741,
		34.700832, 43.286388, 26.363775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496674, 43.778515, 26.378908>,  <34.963413, 43.755974, 26.811594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.496674, 43.778515, 26.378908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220322, 43.573639, 26.174809>,  <35.054512, 43.450714, 26.052349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220322, 43.573639, 26.174809>,  <35.496674, 43.778515, 26.378908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220322, 43.573639, 26.174809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464314, 0.226637, -0.856182,
		0.554169, -0.828431, 0.081239,
		-0.690876, -0.512190, -0.510247,
		35.013058, 43.419983, 26.021734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821484, 43.362431, 25.916832>,  <35.496674, 43.778515, 26.378908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821484, 43.362431, 25.916832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465847, 43.430313, 25.746786>,  <35.252464, 43.471043, 25.644758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465847, 43.430313, 25.746786>,  <35.821484, 43.362431, 25.916832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465847, 43.430313, 25.746786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453706, 0.203776, -0.867541,
		-0.060596, -0.964197, -0.258170,
		-0.889089, 0.169703, -0.425114,
		35.199120, 43.481224, 25.619251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915203, 43.007835, 25.182846>,  <35.821484, 43.362431, 25.916832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915203, 43.007835, 25.182846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579369, 43.225037, 25.176567>,  <35.377869, 43.355358, 25.172800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579369, 43.225037, 25.176567>,  <35.915203, 43.007835, 25.182846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579369, 43.225037, 25.176567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158319, 0.216943, -0.963260,
		-0.519649, -0.811222, -0.268110,
		-0.839583, 0.543005, -0.015698,
		35.327492, 43.387939, 25.171858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453060, 42.700512, 24.659161>,  <35.915203, 43.007835, 25.182846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453060, 42.700512, 24.659161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354549, 43.085392, 24.705662>,  <35.295444, 43.316322, 24.733562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354549, 43.085392, 24.705662>,  <35.453060, 42.700512, 24.659161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354549, 43.085392, 24.705662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137833, 0.153497, -0.978489,
		-0.959348, -0.224957, -0.170426,
		-0.246278, 0.962202, 0.116251,
		35.280666, 43.374054, 24.740538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054607, 42.892933, 24.042248>,  <35.453060, 42.700512, 24.659161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054607, 42.892933, 24.042248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187237, 43.243931, 24.180853>,  <35.266815, 43.454529, 24.264015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187237, 43.243931, 24.180853>,  <35.054607, 42.892933, 24.042248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187237, 43.243931, 24.180853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144518, 0.315714, -0.937784,
		-0.932295, 0.361021, -0.022131,
		0.331572, 0.877490, 0.346512,
		35.286709, 43.507179, 24.284807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792194, 43.322708, 23.596310>,  <35.054607, 42.892933, 24.042248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792194, 43.322708, 23.596310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086159, 43.537758, 23.761658>,  <35.262535, 43.666786, 23.860867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086159, 43.537758, 23.761658>,  <34.792194, 43.322708, 23.596310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086159, 43.537758, 23.761658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291202, 0.300323, -0.908299,
		-0.612465, 0.787890, 0.064154,
		0.734907, 0.537620, 0.413372,
		35.306629, 43.699043, 23.885670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682243, 44.084442, 23.274628>,  <34.792194, 43.322708, 23.596310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682243, 44.084442, 23.274628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052288, 44.032917, 23.417500>,  <35.274315, 44.002003, 23.503223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052288, 44.032917, 23.417500>,  <34.682243, 44.084442, 23.274628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052288, 44.032917, 23.417500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379081, 0.366883, -0.849526,
		-0.021616, 0.921306, 0.388237,
		0.925111, -0.128810, 0.357181,
		35.329823, 43.994274, 23.524654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052742, 44.692879, 23.154661>,  <34.682243, 44.084442, 23.274628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052742, 44.692879, 23.154661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334419, 44.413219, 23.204142>,  <35.503426, 44.245422, 23.233829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334419, 44.413219, 23.204142>,  <35.052742, 44.692879, 23.154661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334419, 44.413219, 23.204142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396925, 0.243202, -0.885044,
		0.588692, 0.672344, 0.448771,
		0.704196, -0.699147, 0.123699,
		35.545677, 44.203476, 23.241251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769073, 44.981514, 23.098915>,  <35.052742, 44.692879, 23.154661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769073, 44.981514, 23.098915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817471, 44.591019, 23.027002>,  <35.846508, 44.356720, 22.983854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817471, 44.591019, 23.027002>,  <35.769073, 44.981514, 23.098915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817471, 44.591019, 23.027002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616288, 0.215858, -0.757360,
		0.778171, -0.019163, 0.627760,
		0.120994, -0.976237, -0.179784,
		35.853767, 44.298149, 22.973066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403809, 44.978443, 22.889282>,  <35.769073, 44.981514, 23.098915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403809, 44.978443, 22.889282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280155, 44.615158, 22.776436>,  <36.205963, 44.397186, 22.708729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280155, 44.615158, 22.776436>,  <36.403809, 44.978443, 22.889282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280155, 44.615158, 22.776436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629532, 0.026927, -0.776508,
		0.712830, -0.417646, 0.563424,
		-0.309134, -0.908211, -0.282116,
		36.187416, 44.342693, 22.691801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967312, 44.793758, 22.522631>,  <36.403809, 44.978443, 22.889282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967312, 44.793758, 22.522631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667103, 44.549007, 22.422766>,  <36.486977, 44.402157, 22.362846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.667103, 44.549007, 22.422766>,  <36.967312, 44.793758, 22.522631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667103, 44.549007, 22.422766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435752, -0.174178, -0.883053,
		0.496833, -0.771538, 0.397349,
		-0.750518, -0.611875, -0.249662,
		36.441948, 44.365444, 22.347868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236549, 44.151638, 22.346222>,  <36.967312, 44.793758, 22.522631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236549, 44.151638, 22.346222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885174, 44.184772, 22.157976>,  <36.674347, 44.204651, 22.045029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.885174, 44.184772, 22.157976>,  <37.236549, 44.151638, 22.346222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885174, 44.184772, 22.157976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468696, -0.042506, -0.882336,
		-0.093094, -0.995656, -0.001486,
		-0.878440, 0.082837, -0.470617,
		36.621643, 44.209621, 22.016790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246872, 43.616196, 21.922798>,  <37.236549, 44.151638, 22.346222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246872, 43.616196, 21.922798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962261, 43.847763, 21.763510>,  <36.791492, 43.986702, 21.667936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962261, 43.847763, 21.763510>,  <37.246872, 43.616196, 21.922798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962261, 43.847763, 21.763510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425829, -0.095535, -0.899746,
		-0.558923, -0.809769, -0.178544,
		-0.711530, 0.578918, -0.398220,
		36.748802, 44.021439, 21.644043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088417, 43.262901, 21.151072>,  <37.246872, 43.616196, 21.922798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088417, 43.262901, 21.151072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978092, 43.646809, 21.172117>,  <36.911896, 43.877151, 21.184744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.978092, 43.646809, 21.172117>,  <37.088417, 43.262901, 21.151072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978092, 43.646809, 21.172117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541450, 0.200359, -0.816509,
		-0.794202, -0.196719, -0.574930,
		-0.275815, 0.959770, 0.052613,
		36.895348, 43.934738, 21.187901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894901, 43.462452, 20.482983>,  <37.088417, 43.262901, 21.151072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894901, 43.462452, 20.482983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954903, 43.807182, 20.676788>,  <36.990906, 44.014019, 20.793072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.954903, 43.807182, 20.676788>,  <36.894901, 43.462452, 20.482983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.954903, 43.807182, 20.676788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402922, 0.394229, -0.825977,
		-0.902857, 0.319125, -0.288111,
		0.150008, 0.861826, 0.484515,
		36.999905, 44.065731, 20.822144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704433, 43.942055, 20.012350>,  <36.894901, 43.462452, 20.482983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704433, 43.942055, 20.012350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955097, 44.135891, 20.256470>,  <37.105495, 44.252193, 20.402941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.955097, 44.135891, 20.256470>,  <36.704433, 43.942055, 20.012350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955097, 44.135891, 20.256470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424296, 0.444721, -0.788794,
		-0.653657, 0.753255, 0.073079,
		0.626662, 0.484594, 0.610298,
		37.143097, 44.281269, 20.439560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853809, 44.631477, 19.660213>,  <36.704433, 43.942055, 20.012350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853809, 44.631477, 19.660213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146770, 44.567150, 19.924856>,  <37.322548, 44.528553, 20.083641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146770, 44.567150, 19.924856>,  <36.853809, 44.631477, 19.660213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146770, 44.567150, 19.924856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671993, 0.327138, -0.664384,
		-0.109592, 0.931192, 0.347666,
		0.732404, -0.160818, 0.661606,
		37.366493, 44.518906, 20.123339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264046, 45.204742, 19.602055>,  <36.853809, 44.631477, 19.660213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264046, 45.204742, 19.602055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495064, 44.928188, 19.775686>,  <37.633675, 44.762257, 19.879866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495064, 44.928188, 19.775686>,  <37.264046, 45.204742, 19.602055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495064, 44.928188, 19.775686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772179, 0.290108, -0.565312,
		0.264920, 0.661679, 0.701426,
		0.577544, -0.691389, 0.434079,
		37.668327, 44.720772, 19.905910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909130, 45.506138, 19.995653>,  <37.264046, 45.204742, 19.602055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909130, 45.506138, 19.995653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985092, 45.124462, 19.903170>,  <38.030670, 44.895458, 19.847679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985092, 45.124462, 19.903170>,  <37.909130, 45.506138, 19.995653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985092, 45.124462, 19.903170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776497, 0.290087, -0.559376,
		0.600822, -0.073303, 0.796015,
		0.189910, -0.954189, -0.231211,
		38.042065, 44.838207, 19.833807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517544, 45.530357, 19.809439>,  <37.909130, 45.506138, 19.995653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517544, 45.530357, 19.809439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457962, 45.153614, 19.688965>,  <38.422215, 44.927567, 19.616680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457962, 45.153614, 19.688965>,  <38.517544, 45.530357, 19.809439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457962, 45.153614, 19.688965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819819, 0.052685, -0.570193,
		0.552911, -0.331848, 0.764308,
		-0.148950, -0.941860, -0.301186,
		38.413277, 44.871056, 19.598610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173088, 45.162006, 19.905745>,  <38.517544, 45.530357, 19.809439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173088, 45.162006, 19.905745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979847, 44.945591, 19.630384>,  <38.863903, 44.815742, 19.465168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979847, 44.945591, 19.630384>,  <39.173088, 45.162006, 19.905745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979847, 44.945591, 19.630384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860439, -0.147858, -0.487630,
		0.162039, -0.827901, 0.536958,
		-0.483103, -0.541034, -0.688400,
		38.834915, 44.783279, 19.423864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570232, 44.580364, 19.839520>,  <39.173088, 45.162006, 19.905745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570232, 44.580364, 19.839520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348320, 44.584854, 19.506750>,  <39.215172, 44.587547, 19.307089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348320, 44.584854, 19.506750>,  <39.570232, 44.580364, 19.839520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348320, 44.584854, 19.506750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826076, -0.111662, -0.552387,
		-0.099097, -0.993683, 0.052670,
		-0.554778, 0.011231, -0.831923,
		39.181885, 44.588223, 19.257174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813339, 44.070900, 19.428396>,  <39.570232, 44.580364, 19.839520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813339, 44.070900, 19.428396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620407, 44.322754, 19.184786>,  <39.504646, 44.473866, 19.038620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620407, 44.322754, 19.184786>,  <39.813339, 44.070900, 19.428396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620407, 44.322754, 19.184786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805592, 0.045757, -0.590701,
		-0.344061, -0.775540, -0.529302,
		-0.482332, 0.629638, -0.609025,
		39.475708, 44.511646, 19.002079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096889, 44.098274, 18.774319>,  <39.813339, 44.070900, 19.428396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096889, 44.098274, 18.774319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397877, 43.837948, 18.814791>,  <40.578468, 43.681751, 18.839073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.397877, 43.837948, 18.814791>,  <40.096889, 44.098274, 18.774319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397877, 43.837948, 18.814791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626038, -0.659012, 0.416869,
		-0.204626, -0.377021, -0.903318,
		0.752465, -0.650814, 0.101179,
		40.623615, 43.642704, 18.845144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828484, 43.426807, 18.501387>,  <40.096889, 44.098274, 18.774319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828484, 43.426807, 18.501387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119186, 43.344440, 18.763508>,  <40.293610, 43.295021, 18.920780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.119186, 43.344440, 18.763508>,  <39.828484, 43.426807, 18.501387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119186, 43.344440, 18.763508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599820, -0.655137, 0.459360,
		0.334724, -0.726907, -0.599638,
		0.726757, -0.205916, 0.655304,
		40.337212, 43.282665, 18.960098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871166, 42.736858, 18.558491>,  <39.828484, 43.426807, 18.501387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871166, 42.736858, 18.558491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071445, 42.830032, 18.891966>,  <40.191612, 42.885937, 19.092051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.071445, 42.830032, 18.891966>,  <39.871166, 42.736858, 18.558491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.071445, 42.830032, 18.891966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550333, -0.657745, 0.514300,
		0.668156, -0.716318, -0.201139,
		0.500700, 0.232939, 0.833690,
		40.221657, 42.899914, 19.142073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045666, 42.098167, 18.786949>,  <39.871166, 42.736858, 18.558491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045666, 42.098167, 18.786949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056808, 42.342899, 19.103148>,  <40.063496, 42.489738, 19.292866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056808, 42.342899, 19.103148>,  <40.045666, 42.098167, 18.786949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056808, 42.342899, 19.103148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523340, -0.664835, 0.533018,
		0.851668, -0.428549, 0.301674,
		0.027861, 0.611833, 0.790496,
		40.065166, 42.526447, 19.340296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914162, 41.688599, 19.411001>,  <40.045666, 42.098167, 18.786949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914162, 41.688599, 19.411001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885941, 42.024986, 19.625584>,  <39.869007, 42.226818, 19.754333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885941, 42.024986, 19.625584>,  <39.914162, 41.688599, 19.411001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885941, 42.024986, 19.625584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556535, -0.479498, 0.678492,
		0.827823, -0.250690, 0.501859,
		-0.070549, 0.840973, 0.536457,
		39.864777, 42.277279, 19.786520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074440, 41.413582, 20.015406>,  <39.914162, 41.688599, 19.411001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074440, 41.413582, 20.015406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862652, 41.746300, 20.082075>,  <39.735577, 41.945930, 20.122076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862652, 41.746300, 20.082075>,  <40.074440, 41.413582, 20.015406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862652, 41.746300, 20.082075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343370, -0.389794, 0.854493,
		0.775728, 0.395201, 0.491998,
		-0.529474, 0.831791, 0.166674,
		39.703808, 41.995838, 20.132078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076920, 41.562466, 20.734232>,  <40.074440, 41.413582, 20.015406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076920, 41.562466, 20.734232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764435, 41.798992, 20.654181>,  <39.576942, 41.940910, 20.606150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764435, 41.798992, 20.654181>,  <40.076920, 41.562466, 20.734232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764435, 41.798992, 20.654181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435716, -0.286901, 0.853135,
		0.447059, 0.753677, 0.481777,
		-0.781210, 0.591320, -0.200128,
		39.530071, 41.976387, 20.594143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958954, 41.970413, 21.380310>,  <40.076920, 41.562466, 20.734232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958954, 41.970413, 21.380310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618431, 41.950123, 21.171425>,  <39.414120, 41.937946, 21.046093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.618431, 41.950123, 21.171425>,  <39.958954, 41.970413, 21.380310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.618431, 41.950123, 21.171425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505154, -0.189714, 0.841919,
		-0.141782, 0.980528, 0.135878,
		-0.851304, -0.050730, -0.522215,
		39.363041, 41.934902, 21.014761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342010, 42.354942, 21.832373>,  <39.958954, 41.970413, 21.380310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342010, 42.354942, 21.832373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107502, 42.140091, 21.589796>,  <38.966797, 42.011181, 21.444250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.107502, 42.140091, 21.589796>,  <39.342010, 42.354942, 21.832373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.107502, 42.140091, 21.589796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573921, -0.252939, 0.778869,
		-0.571747, 0.804681, -0.159980,
		-0.586276, -0.537132, -0.606441,
		38.931618, 41.978951, 21.407864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726692, 42.652420, 21.992252>,  <39.342010, 42.354942, 21.832373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726692, 42.652420, 21.992252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658089, 42.291435, 21.834190>,  <38.616928, 42.074844, 21.739353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.658089, 42.291435, 21.834190>,  <38.726692, 42.652420, 21.992252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.658089, 42.291435, 21.834190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563603, -0.239104, 0.790684,
		-0.808045, 0.358320, -0.467622,
		-0.171508, -0.902461, -0.395157,
		38.606636, 42.020699, 21.715643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922489, 42.533398, 21.951321>,  <38.726692, 42.652420, 21.992252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922489, 42.533398, 21.951321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112526, 42.181477, 21.945292>,  <38.226547, 41.970322, 21.941673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.112526, 42.181477, 21.945292>,  <37.922489, 42.533398, 21.951321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112526, 42.181477, 21.945292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608012, -0.340613, 0.717150,
		-0.636088, -0.331549, -0.696756,
		0.475094, -0.879806, -0.015074,
		38.255054, 41.917534, 21.940769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369896, 42.018295, 21.945442>,  <37.922489, 42.533398, 21.951321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369896, 42.018295, 21.945442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679344, 41.805141, 22.082581>,  <37.865013, 41.677250, 22.164864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679344, 41.805141, 22.082581>,  <37.369896, 42.018295, 21.945442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679344, 41.805141, 22.082581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554312, -0.306999, 0.773621,
		-0.306999, -0.788532, -0.532887,
		-0.773621, 0.532887, -0.342845,
		37.911430, 41.645275, 22.185434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092918, 41.271118, 22.144344>,  <37.369896, 42.018295, 21.945442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092918, 41.271118, 22.144344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436771, 41.363888, 22.326443>,  <37.643082, 41.419548, 22.435701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436771, 41.363888, 22.326443>,  <37.092918, 41.271118, 22.144344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436771, 41.363888, 22.326443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340996, -0.403107, 0.849251,
		0.380472, -0.885278, -0.267438,
		0.859630, 0.231921, 0.455247,
		37.694660, 41.433464, 22.463017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359367, 40.625050, 22.402613>,  <37.092918, 41.271118, 22.144344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359367, 40.625050, 22.402613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572376, 40.902264, 22.596981>,  <37.700184, 41.068592, 22.713602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572376, 40.902264, 22.596981>,  <37.359367, 40.625050, 22.402613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572376, 40.902264, 22.596981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370869, -0.324999, 0.869961,
		0.760837, -0.643490, 0.083954,
		0.532526, 0.693034, 0.485922,
		37.732136, 41.110172, 22.742758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737648, 40.338573, 23.025728>,  <37.359367, 40.625050, 22.402613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737648, 40.338573, 23.025728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748699, 40.730526, 23.104788>,  <37.755329, 40.965698, 23.152224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748699, 40.730526, 23.104788>,  <37.737648, 40.338573, 23.025728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748699, 40.730526, 23.104788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204422, -0.188007, 0.960659,
		0.978493, -0.066945, 0.195115,
		0.027628, 0.979884, 0.197648,
		37.756989, 41.024490, 23.164082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052277, 40.438568, 23.725183>,  <37.737648, 40.338573, 23.025728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052277, 40.438568, 23.725183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822784, 40.755802, 23.643353>,  <37.685089, 40.946144, 23.594254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822784, 40.755802, 23.643353>,  <38.052277, 40.438568, 23.725183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822784, 40.755802, 23.643353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369581, -0.027775, 0.928783,
		0.730923, 0.608476, 0.309045,
		-0.573726, 0.793086, -0.204580,
		37.650665, 40.993729, 23.581978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140388, 40.816879, 24.416159>,  <38.052277, 40.438568, 23.725183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140388, 40.816879, 24.416159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831093, 40.976982, 24.219425>,  <37.645515, 41.073044, 24.101385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.831093, 40.976982, 24.219425>,  <38.140388, 40.816879, 24.416159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831093, 40.976982, 24.219425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475494, 0.147174, 0.867321,
		0.419533, 0.904509, 0.076518,
		-0.773238, 0.400254, -0.491833,
		37.599121, 41.097057, 24.071875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915245, 41.304970, 24.780548>,  <38.140388, 40.816879, 24.416159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915245, 41.304970, 24.780548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590656, 41.253872, 24.552448>,  <37.395901, 41.223213, 24.415588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590656, 41.253872, 24.552448>,  <37.915245, 41.304970, 24.780548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590656, 41.253872, 24.552448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579130, 0.306364, 0.755480,
		0.078195, 0.943304, -0.322589,
		-0.811477, -0.127746, -0.570252,
		37.347214, 41.215549, 24.381372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433182, 41.942905, 24.801456>,  <37.915245, 41.304970, 24.780548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433182, 41.942905, 24.801456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205975, 41.627544, 24.706984>,  <37.069649, 41.438328, 24.650301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205975, 41.627544, 24.706984>,  <37.433182, 41.942905, 24.801456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205975, 41.627544, 24.706984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651452, 0.255331, 0.714435,
		-0.502955, 0.559673, -0.658637,
		-0.568020, -0.788399, -0.236180,
		37.035568, 41.391026, 24.636129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749310, 42.148830, 24.876099>,  <37.433182, 41.942905, 24.801456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749310, 42.148830, 24.876099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724548, 41.750313, 24.900013>,  <36.709690, 41.511204, 24.914362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724548, 41.750313, 24.900013>,  <36.749310, 42.148830, 24.876099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724548, 41.750313, 24.900013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555709, 0.084162, 0.827106,
		-0.829069, 0.017979, -0.558857,
		-0.061905, -0.996290, 0.059785,
		36.705978, 41.451427, 24.917948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118816, 42.049404, 25.235722>,  <36.749310, 42.148830, 24.876099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118816, 42.049404, 25.235722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258392, 41.675293, 25.259352>,  <36.342140, 41.450825, 25.273529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258392, 41.675293, 25.259352>,  <36.118816, 42.049404, 25.235722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258392, 41.675293, 25.259352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670210, -0.204995, 0.713299,
		-0.655025, -0.288492, -0.698366,
		0.348943, -0.935280, 0.059073,
		36.363075, 41.394711, 25.277073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503773, 41.640999, 25.163282>,  <36.118816, 42.049404, 25.235722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503773, 41.640999, 25.163282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801334, 41.447445, 25.347658>,  <35.979870, 41.331314, 25.458282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801334, 41.447445, 25.347658>,  <35.503773, 41.640999, 25.163282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801334, 41.447445, 25.347658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550390, -0.052403, 0.833262,
		-0.379046, -0.873563, -0.305306,
		0.743905, -0.483882, 0.460937,
		36.024506, 41.302280, 25.485939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197853, 41.030781, 25.578112>,  <35.503773, 41.640999, 25.163282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197853, 41.030781, 25.578112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560345, 41.102463, 25.731281>,  <35.777840, 41.145473, 25.823183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560345, 41.102463, 25.731281>,  <35.197853, 41.030781, 25.578112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560345, 41.102463, 25.731281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357346, -0.159357, 0.920277,
		0.225941, -0.970820, -0.080375,
		0.906231, 0.179206, 0.382923,
		35.832214, 41.156223, 25.846159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181709, 40.596252, 26.152336>,  <35.197853, 41.030781, 25.578112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181709, 40.596252, 26.152336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494175, 40.837326, 26.217522>,  <35.681652, 40.981972, 26.256632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494175, 40.837326, 26.217522>,  <35.181709, 40.596252, 26.152336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494175, 40.837326, 26.217522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062280, -0.184494, 0.980858,
		0.621216, -0.776357, -0.106584,
		0.781161, 0.602687, 0.162962,
		35.728523, 41.018131, 26.266411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772430, 40.221809, 26.408281>,  <35.181709, 40.596252, 26.152336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772430, 40.221809, 26.408281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831547, 40.599964, 26.524487>,  <35.867016, 40.826859, 26.594210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831547, 40.599964, 26.524487>,  <35.772430, 40.221809, 26.408281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831547, 40.599964, 26.524487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268394, -0.321051, 0.908235,
		0.951905, -0.056253, -0.301184,
		0.147787, 0.945390, 0.290512,
		35.875881, 40.883579, 26.611641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397823, 40.228298, 26.778753>,  <35.772430, 40.221809, 26.408281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397823, 40.228298, 26.778753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206955, 40.558605, 26.899027>,  <36.092434, 40.756790, 26.971191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.206955, 40.558605, 26.899027>,  <36.397823, 40.228298, 26.778753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206955, 40.558605, 26.899027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197599, -0.232571, 0.952295,
		0.856307, 0.513823, -0.052195,
		-0.477172, 0.825770, 0.300683,
		36.063805, 40.806335, 26.989231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751286, 40.438976, 27.398918>,  <36.397823, 40.228298, 26.778753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751286, 40.438976, 27.398918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407894, 40.644058, 27.403841>,  <36.201859, 40.767109, 27.406796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407894, 40.644058, 27.403841>,  <36.751286, 40.438976, 27.398918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407894, 40.644058, 27.403841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061968, -0.127520, 0.989898,
		0.509097, 0.849041, 0.141244,
		-0.858475, 0.512707, 0.012307,
		36.150352, 40.797871, 27.407534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805504, 41.007633, 27.977606>,  <36.751286, 40.438976, 27.398918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805504, 41.007633, 27.977606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420235, 40.926723, 27.906750>,  <36.189072, 40.878178, 27.864237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420235, 40.926723, 27.906750>,  <36.805504, 41.007633, 27.977606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420235, 40.926723, 27.906750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150161, -0.141824, 0.978436,
		-0.223037, 0.969005, 0.106227,
		-0.963175, -0.202277, -0.177138,
		36.131283, 40.866039, 27.853609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463177, 41.452717, 28.324253>,  <36.805504, 41.007633, 27.977606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463177, 41.452717, 28.324253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201782, 41.153614, 28.277235>,  <36.044945, 40.974152, 28.249025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201782, 41.153614, 28.277235>,  <36.463177, 41.452717, 28.324253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201782, 41.153614, 28.277235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080458, -0.085789, 0.993059,
		-0.752649, 0.658410, -0.004101,
		-0.653488, -0.747755, -0.117544,
		36.005737, 40.929287, 28.241972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916447, 41.671104, 28.784082>,  <36.463177, 41.452717, 28.324253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916447, 41.671104, 28.784082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894558, 41.276913, 28.719782>,  <35.881424, 41.040398, 28.681202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894558, 41.276913, 28.719782>,  <35.916447, 41.671104, 28.784082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894558, 41.276913, 28.719782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178138, -0.148774, 0.972694,
		-0.982483, 0.081861, -0.167410,
		-0.054719, -0.985477, -0.160751,
		35.878143, 40.981270, 28.671556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416729, 41.375187, 29.359987>,  <35.916447, 41.671104, 28.784082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416729, 41.375187, 29.359987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566406, 41.029121, 29.226440>,  <35.656212, 40.821480, 29.146313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566406, 41.029121, 29.226440>,  <35.416729, 41.375187, 29.359987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566406, 41.029121, 29.226440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065024, -0.383613, 0.921202,
		-0.925068, -0.322998, -0.199802,
		0.374193, -0.865167, -0.333866,
		35.678665, 40.769573, 29.126280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061340, 40.852390, 29.770369>,  <35.416729, 41.375187, 29.359987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061340, 40.852390, 29.770369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398731, 40.673080, 29.651981>,  <35.601166, 40.565495, 29.580948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398731, 40.673080, 29.651981>,  <35.061340, 40.852390, 29.770369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398731, 40.673080, 29.651981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066846, -0.459106, 0.885863,
		-0.532992, -0.766988, -0.357280,
		0.843476, -0.448275, -0.295970,
		35.651775, 40.538597, 29.563190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996563, 40.158470, 29.873552>,  <35.061340, 40.852390, 29.770369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996563, 40.158470, 29.873552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390728, 40.226345, 29.868244>,  <35.627228, 40.267071, 29.865059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390728, 40.226345, 29.868244>,  <34.996563, 40.158470, 29.873552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390728, 40.226345, 29.868244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123000, -0.656060, 0.744618,
		0.117647, -0.735385, -0.667359,
		0.985408, 0.169687, -0.013269,
		35.686352, 40.277252, 29.864264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339844, 39.545700, 30.051296>,  <34.996563, 40.158470, 29.873552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339844, 39.545700, 30.051296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676506, 39.757553, 30.093439>,  <35.878506, 39.884666, 30.118725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.676506, 39.757553, 30.093439>,  <35.339844, 39.545700, 30.051296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.676506, 39.757553, 30.093439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310384, -0.634123, 0.708202,
		0.441898, -0.563362, -0.698104,
		0.841658, 0.529633, 0.105359,
		35.929005, 39.916443, 30.125048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897675, 39.088512, 30.000303>,  <35.339844, 39.545700, 30.051296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897675, 39.088512, 30.000303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057236, 39.378448, 30.224977>,  <36.152973, 39.552410, 30.359783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057236, 39.378448, 30.224977>,  <35.897675, 39.088512, 30.000303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057236, 39.378448, 30.224977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343743, -0.686062, 0.641218,
		0.850130, -0.062705, -0.522826,
		0.398899, 0.724836, 0.561687,
		36.176907, 39.595898, 30.393484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643654, 38.896740, 30.141294>,  <35.897675, 39.088512, 30.000303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643654, 38.896740, 30.141294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539574, 39.154404, 30.429005>,  <36.477127, 39.309002, 30.601631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539574, 39.154404, 30.429005>,  <36.643654, 38.896740, 30.141294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539574, 39.154404, 30.429005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364803, -0.624138, 0.690920,
		0.893988, 0.442172, -0.072590,
		-0.260200, 0.644155, 0.719278,
		36.461514, 39.347649, 30.644789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218246, 38.847412, 30.535023>,  <36.643654, 38.896740, 30.141294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218246, 38.847412, 30.535023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937145, 39.027882, 30.755051>,  <36.768482, 39.136162, 30.887068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937145, 39.027882, 30.755051>,  <37.218246, 38.847412, 30.535023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937145, 39.027882, 30.755051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188737, -0.627247, 0.755605,
		0.685938, 0.634825, 0.355648,
		-0.702757, 0.451175, 0.550068,
		36.726318, 39.163235, 30.920071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376705, 38.745041, 31.148703>,  <37.218246, 38.847412, 30.535023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376705, 38.745041, 31.148703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998489, 38.835796, 31.242067>,  <36.771561, 38.890251, 31.298086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998489, 38.835796, 31.242067>,  <37.376705, 38.745041, 31.148703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998489, 38.835796, 31.242067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037332, -0.636739, 0.770175,
		0.323369, 0.736942, 0.593590,
		-0.945536, 0.226891, 0.233413,
		36.714828, 38.903862, 31.312092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243477, 38.893753, 31.883207>,  <37.376705, 38.745041, 31.148703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243477, 38.893753, 31.883207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877800, 38.783077, 31.764759>,  <36.658394, 38.716671, 31.693689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877800, 38.783077, 31.764759>,  <37.243477, 38.893753, 31.883207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877800, 38.783077, 31.764759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063308, -0.624199, 0.778697,
		-0.400298, 0.730628, 0.553123,
		-0.914196, -0.276694, -0.296120,
		36.603542, 38.700069, 31.675922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766762, 38.894424, 32.481049>,  <37.243477, 38.893753, 31.883207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766762, 38.894424, 32.481049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548092, 38.669216, 32.233128>,  <36.416889, 38.534092, 32.084373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548092, 38.669216, 32.233128>,  <36.766762, 38.894424, 32.481049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548092, 38.669216, 32.233128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167009, -0.652011, 0.739588,
		-0.820523, 0.507824, 0.262405,
		-0.546671, -0.563025, -0.619801,
		36.384090, 38.500309, 32.047188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752399, 39.122166, 33.169575>,  <36.766762, 38.894424, 32.481049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752399, 39.122166, 33.169575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932697, 39.384911, 33.411354>,  <37.040874, 39.542557, 33.556423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932697, 39.384911, 33.411354>,  <36.752399, 39.122166, 33.169575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932697, 39.384911, 33.411354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619041, 0.257845, -0.741825,
		-0.643131, 0.708554, -0.290402,
		0.450745, 0.656862, 0.604452,
		37.067921, 39.581970, 33.592690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.664062, 39.822132, 32.881477>,  <36.752399, 39.122166, 33.169575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.664062, 39.822132, 32.881477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994530, 39.802551, 33.105995>,  <37.192810, 39.790802, 33.240707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994530, 39.802551, 33.105995>,  <36.664062, 39.822132, 32.881477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994530, 39.802551, 33.105995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549687, 0.288691, -0.783902,
		-0.123671, 0.956170, 0.265412,
		0.826166, -0.048947, 0.561297,
		37.242378, 39.787868, 33.274384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019131, 40.562317, 33.122066>,  <36.664062, 39.822132, 32.881477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019131, 40.562317, 33.122066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254124, 40.245258, 33.056858>,  <37.395119, 40.055023, 33.017731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.254124, 40.245258, 33.056858>,  <37.019131, 40.562317, 33.122066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.254124, 40.245258, 33.056858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495156, 0.511441, -0.702316,
		0.640064, 0.331877, 0.692947,
		0.587484, -0.792644, -0.163024,
		37.430370, 40.007465, 33.007950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732506, 40.586315, 33.319054>,  <37.019131, 40.562317, 33.122066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732506, 40.586315, 33.319054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680641, 40.379559, 32.980583>,  <37.649525, 40.255505, 32.777500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680641, 40.379559, 32.980583>,  <37.732506, 40.586315, 33.319054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680641, 40.379559, 32.980583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479509, 0.714272, -0.509791,
		0.867905, -0.471848, 0.155241,
		-0.129659, -0.516890, -0.846176,
		37.641743, 40.224491, 32.726730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354519, 40.574310, 32.875740>,  <37.732506, 40.586315, 33.319054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354519, 40.574310, 32.875740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006969, 40.564602, 32.677967>,  <37.798439, 40.558777, 32.559303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.006969, 40.564602, 32.677967>,  <38.354519, 40.574310, 32.875740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006969, 40.564602, 32.677967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226869, 0.868207, -0.441301,
		0.439983, -0.495608, -0.748858,
		-0.868876, -0.024272, -0.494434,
		37.746307, 40.557320, 32.529636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733101, 40.106087, 33.320309>,  <38.354519, 40.574310, 32.875740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733101, 40.106087, 33.320309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951324, 39.897057, 33.058231>,  <39.082260, 39.771637, 32.900986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.951324, 39.897057, 33.058231>,  <38.733101, 40.106087, 33.320309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.951324, 39.897057, 33.058231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837860, 0.322607, 0.440357,
		-0.018751, -0.789201, 0.613849,
		0.545562, -0.522577, -0.655191,
		39.114994, 39.740284, 32.861675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227451, 39.860500, 33.717052>,  <38.733101, 40.106087, 33.320309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227451, 39.860500, 33.717052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333855, 39.838799, 33.332073>,  <39.397697, 39.825779, 33.101086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333855, 39.838799, 33.332073>,  <39.227451, 39.860500, 33.717052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333855, 39.838799, 33.332073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960865, 0.095017, 0.260213,
		0.077331, -0.993996, 0.077408,
		0.266005, -0.054256, -0.962444,
		39.413658, 39.822521, 33.043339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.747963, 39.378345, 33.675095>,  <39.227451, 39.860500, 33.717052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.747963, 39.378345, 33.675095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784378, 39.645954, 33.380035>,  <39.806225, 39.806519, 33.202999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.784378, 39.645954, 33.380035>,  <39.747963, 39.378345, 33.675095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784378, 39.645954, 33.380035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973424, 0.096521, 0.207675,
		0.210138, -0.736948, -0.642456,
		0.091035, 0.669022, -0.737646,
		39.811687, 39.846661, 33.158741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349350, 39.867271, 33.488979>,  <39.747963, 39.378345, 33.675095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349350, 39.867271, 33.488979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432842, 39.992481, 33.859589>,  <40.482937, 40.067608, 34.081955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432842, 39.992481, 33.859589>,  <40.349350, 39.867271, 33.488979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432842, 39.992481, 33.859589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616797, 0.693075, -0.373106,
		-0.758942, 0.649357, -0.048406,
		0.208730, 0.313022, 0.926525,
		40.495461, 40.086388, 34.137547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990284, 40.398899, 33.889137>,  <40.349350, 39.867271, 33.488979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990284, 40.398899, 33.889137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710258, 40.318623, 34.163258>,  <39.542244, 40.270458, 34.327728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.710258, 40.318623, 34.163258>,  <39.990284, 40.398899, 33.889137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.710258, 40.318623, 34.163258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375393, 0.712951, 0.592267,
		-0.607450, 0.671880, -0.423770,
		-0.700060, -0.200692, 0.685302,
		39.500240, 40.258415, 34.368847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651325, 40.629745, 33.786644>,  <39.990284, 40.398899, 33.889137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651325, 40.629745, 33.786644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949280, 40.559715, 33.529121>,  <41.128052, 40.517696, 33.374607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949280, 40.559715, 33.529121>,  <40.651325, 40.629745, 33.786644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949280, 40.559715, 33.529121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559302, -0.689965, -0.459489,
		-0.363757, 0.702351, -0.611870,
		0.744891, -0.175077, -0.643806,
		41.172749, 40.507191, 33.335979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587521, 40.784557, 33.067101>,  <40.651325, 40.629745, 33.786644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587521, 40.784557, 33.067101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828552, 40.467316, 33.102615>,  <40.973171, 40.276970, 33.123924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828552, 40.467316, 33.102615>,  <40.587521, 40.784557, 33.067101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828552, 40.467316, 33.102615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603134, -0.525425, -0.600132,
		0.522619, 0.308076, -0.794959,
		0.602578, -0.793106, 0.088786,
		41.009327, 40.229385, 33.129250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712170, 40.391548, 32.418785>,  <40.587521, 40.784557, 33.067101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712170, 40.391548, 32.418785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.751778, 40.126583, 32.715813>,  <40.775543, 39.967606, 32.894028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.751778, 40.126583, 32.715813>,  <40.712170, 40.391548, 32.418785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751778, 40.126583, 32.715813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603173, -0.633473, -0.484659,
		0.791440, -0.399904, -0.462277,
		0.099022, -0.662412, 0.742567,
		40.781483, 39.927860, 32.938583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981243, 39.689602, 32.294910>,  <40.712170, 40.391548, 32.418785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981243, 39.689602, 32.294910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697971, 39.672543, 32.576809>,  <40.528008, 39.662308, 32.745949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697971, 39.672543, 32.576809>,  <40.981243, 39.689602, 32.294910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697971, 39.672543, 32.576809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616868, -0.448183, -0.646998,
		0.343449, -0.892924, 0.291084,
		-0.708179, -0.042650, 0.704744,
		40.485519, 39.659748, 32.788231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.594578, 39.461514, 32.027119>,  <40.981243, 39.689602, 32.294910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.594578, 39.461514, 32.027119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347237, 39.363010, 32.325649>,  <41.198833, 39.303909, 32.504768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347237, 39.363010, 32.325649>,  <41.594578, 39.461514, 32.027119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347237, 39.363010, 32.325649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250114, -0.838602, -0.483932,
		0.745039, -0.485907, 0.456959,
		-0.618353, -0.246256, 0.746323,
		41.161732, 39.289135, 32.549545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677917, 38.746338, 32.125168>,  <41.594578, 39.461514, 32.027119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677917, 38.746338, 32.125168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308842, 38.833809, 32.252182>,  <41.087399, 38.886292, 32.328392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308842, 38.833809, 32.252182>,  <41.677917, 38.746338, 32.125168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308842, 38.833809, 32.252182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379877, -0.656397, -0.651795,
		0.065898, -0.722027, 0.688719,
		-0.922687, 0.218677, 0.317536,
		41.032036, 38.899410, 32.347443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.327202, 38.169640, 32.162460>,  <41.677917, 38.746338, 32.125168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.327202, 38.169640, 32.162460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016697, 38.421532, 32.174110>,  <40.830395, 38.572666, 32.181103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016697, 38.421532, 32.174110>,  <41.327202, 38.169640, 32.162460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016697, 38.421532, 32.174110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464628, -0.540291, -0.701575,
		-0.426067, -0.558142, 0.712000,
		-0.776266, 0.629733, 0.029128,
		40.783817, 38.610451, 32.182850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736500, 37.802616, 32.161118>,  <41.327202, 38.169640, 32.162460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736500, 37.802616, 32.161118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605625, 38.156216, 32.027557>,  <40.527100, 38.368378, 31.947422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.605625, 38.156216, 32.027557>,  <40.736500, 37.802616, 32.161118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605625, 38.156216, 32.027557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482254, -0.460075, -0.745495,
		-0.812637, -0.082894, 0.576845,
		-0.327189, 0.884002, -0.333898,
		40.507469, 38.421417, 31.927387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092987, 37.595684, 32.025330>,  <40.736500, 37.802616, 32.161118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092987, 37.595684, 32.025330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154041, 37.943058, 31.836637>,  <40.190674, 38.151482, 31.723423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154041, 37.943058, 31.836637>,  <40.092987, 37.595684, 32.025330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154041, 37.943058, 31.836637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392079, -0.384937, -0.835523,
		-0.907180, 0.312485, 0.281739,
		0.152637, 0.868433, -0.471726,
		40.199833, 38.203587, 31.695120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420734, 37.846943, 31.643427>,  <40.092987, 37.595684, 32.025330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420734, 37.846943, 31.643427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759975, 37.959435, 31.463814>,  <39.963520, 38.026932, 31.356047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759975, 37.959435, 31.463814>,  <39.420734, 37.846943, 31.643427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759975, 37.959435, 31.463814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189365, -0.630629, -0.752627,
		-0.494836, 0.723336, -0.481583,
		0.848103, 0.281232, -0.449032,
		40.014408, 38.043804, 31.329103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384209, 37.526218, 31.015848>,  <39.420734, 37.846943, 31.643427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384209, 37.526218, 31.015848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764469, 37.646961, 31.044531>,  <39.992626, 37.719406, 31.061741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.764469, 37.646961, 31.044531>,  <39.384209, 37.526218, 31.015848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764469, 37.646961, 31.044531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266006, -0.674032, -0.689146,
		-0.159695, 0.674212, -0.721066,
		0.950652, 0.301861, 0.071705,
		40.049664, 37.737518, 31.066042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803905, 36.956806, 31.373091>,  <39.384209, 37.526218, 31.015848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803905, 36.956806, 31.373091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942326, 36.645187, 31.163965>,  <40.025379, 36.458214, 31.038490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.942326, 36.645187, 31.163965>,  <39.803905, 36.956806, 31.373091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942326, 36.645187, 31.163965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611053, -0.609993, 0.504502,
		-0.711944, 0.144883, -0.687128,
		0.346050, -0.779049, -0.522812,
		40.046139, 36.411472, 31.007122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126640, 37.171875, 30.773943>,  <39.803905, 36.956806, 31.373091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126640, 37.171875, 30.773943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848789, 37.363995, 30.559725>,  <39.682079, 37.479267, 30.431194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.848789, 37.363995, 30.559725>,  <40.126640, 37.171875, 30.773943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.848789, 37.363995, 30.559725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433820, 0.873540, 0.220745,
		0.573842, -0.078994, -0.815147,
		-0.694626, 0.480300, -0.535544,
		39.640400, 37.508083, 30.399061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.410172, 37.737465, 30.283199>,  <40.126640, 37.171875, 30.773943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.410172, 37.737465, 30.283199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052872, 37.832493, 30.435863>,  <39.838490, 37.889507, 30.527462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.052872, 37.832493, 30.435863>,  <40.410172, 37.737465, 30.283199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052872, 37.832493, 30.435863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425276, 0.721778, 0.546056,
		-0.145749, 0.650076, -0.745760,
		-0.893251, 0.237567, 0.381660,
		39.784897, 37.903763, 30.550362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.268738, 38.527416, 30.203421>,  <40.410172, 37.737465, 30.283199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.268738, 38.527416, 30.203421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104279, 38.354546, 30.524462>,  <40.005604, 38.250824, 30.717087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104279, 38.354546, 30.524462>,  <40.268738, 38.527416, 30.203421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104279, 38.354546, 30.524462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431096, 0.683599, 0.588938,
		-0.803188, 0.588142, -0.094752,
		-0.411152, -0.432181, 0.802604,
		39.980934, 38.224892, 30.765244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127697, 39.051304, 30.554428>,  <40.268738, 38.527416, 30.203421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127697, 39.051304, 30.554428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132591, 38.750965, 30.818573>,  <40.135529, 38.570763, 30.977060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132591, 38.750965, 30.818573>,  <40.127697, 39.051304, 30.554428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132591, 38.750965, 30.818573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475594, 0.585298, 0.656687,
		-0.879580, 0.306032, 0.364257,
		0.012232, -0.750847, 0.660363,
		40.136261, 38.525711, 31.016682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545227, 39.424801, 30.946730>,  <40.127697, 39.051304, 30.554428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545227, 39.424801, 30.946730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403751, 39.121983, 31.166471>,  <40.318867, 38.940292, 31.298317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403751, 39.121983, 31.166471>,  <40.545227, 39.424801, 30.946730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403751, 39.121983, 31.166471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499385, 0.343773, 0.795258,
		-0.790899, 0.555610, 0.256469,
		-0.353686, -0.757045, 0.549353,
		40.297646, 38.894871, 31.331278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086231, 39.574005, 31.567856>,  <40.545227, 39.424801, 30.946730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086231, 39.574005, 31.567856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231682, 39.212624, 31.658665>,  <40.318954, 38.995792, 31.713150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.231682, 39.212624, 31.658665>,  <40.086231, 39.574005, 31.567856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231682, 39.212624, 31.658665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313683, 0.348227, 0.883369,
		-0.877141, -0.250008, 0.410025,
		0.363631, -0.903457, 0.227021,
		40.340771, 38.941586, 31.726770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819283, 39.482182, 32.220577>,  <40.086231, 39.574005, 31.567856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819283, 39.482182, 32.220577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128300, 39.229717, 32.192799>,  <40.313709, 39.078239, 32.176132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.128300, 39.229717, 32.192799>,  <39.819283, 39.482182, 32.220577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128300, 39.229717, 32.192799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401163, 0.400372, 0.823875,
		-0.492191, -0.664335, 0.562501,
		0.772539, -0.631158, -0.069447,
		40.360062, 39.040371, 32.171963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.884003, 39.334335, 32.914532>,  <39.819283, 39.482182, 32.220577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.884003, 39.334335, 32.914532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220970, 39.227680, 32.727238>,  <40.423149, 39.163689, 32.614861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.220970, 39.227680, 32.727238>,  <39.884003, 39.334335, 32.914532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220970, 39.227680, 32.727238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536445, 0.496645, 0.682327,
		0.050612, -0.825984, 0.561417,
		0.842416, -0.266636, -0.468231,
		40.473694, 39.147690, 32.586769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317490, 39.055618, 33.432426>,  <39.884003, 39.334335, 32.914532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317490, 39.055618, 33.432426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557991, 39.170151, 33.134026>,  <40.702290, 39.238869, 32.954987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557991, 39.170151, 33.134026>,  <40.317490, 39.055618, 33.432426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557991, 39.170151, 33.134026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563926, 0.509382, 0.650014,
		0.566115, -0.811509, 0.144798,
		0.601250, 0.286327, -0.746000,
		40.738365, 39.256050, 32.910225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920692, 39.149010, 33.702412>,  <40.317490, 39.055618, 33.432426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920692, 39.149010, 33.702412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015087, 39.333687, 33.360382>,  <41.071724, 39.444492, 33.155167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015087, 39.333687, 33.360382>,  <40.920692, 39.149010, 33.702412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015087, 39.333687, 33.360382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650181, 0.578934, 0.492037,
		0.722202, -0.672064, -0.163566,
		0.235987, 0.461698, -0.855071,
		41.085884, 39.472195, 33.103863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708786, 39.150887, 33.442814>,  <40.920692, 39.149010, 33.702412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708786, 39.150887, 33.442814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518967, 39.483513, 33.327370>,  <41.405075, 39.683090, 33.258102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518967, 39.483513, 33.327370>,  <41.708786, 39.150887, 33.442814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518967, 39.483513, 33.327370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675375, 0.554259, 0.486483,
		0.564507, 0.035943, -0.824645,
		-0.474553, 0.831568, -0.288608,
		41.376602, 39.732983, 33.240788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169292, 39.557358, 33.071560>,  <41.708786, 39.150887, 33.442814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169292, 39.557358, 33.071560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900284, 39.811840, 33.222801>,  <41.738880, 39.964527, 33.313545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.900284, 39.811840, 33.222801>,  <42.169292, 39.557358, 33.071560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900284, 39.811840, 33.222801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740045, 0.583038, 0.335261,
		-0.007157, 0.505285, -0.862923,
		-0.672519, 0.636203, 0.378107,
		41.698528, 40.002701, 33.336235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.527550, 40.153702, 33.015972>,  <42.169292, 39.557358, 33.071560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.527550, 40.153702, 33.015972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244267, 40.137245, 33.297894>,  <42.074299, 40.127373, 33.467049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.244267, 40.137245, 33.297894>,  <42.527550, 40.153702, 33.015972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244267, 40.137245, 33.297894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639546, 0.385469, 0.665127,
		-0.299044, 0.921803, -0.246681,
		-0.708205, -0.041138, 0.704808,
		42.031807, 40.124905, 33.509335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752804, 39.736694, 33.581791>,  <42.527550, 40.153702, 33.015972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752804, 39.736694, 33.581791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800972, 39.399513, 33.372055>,  <42.829872, 39.197205, 33.246216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.800972, 39.399513, 33.372055>,  <42.752804, 39.736694, 33.581791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.800972, 39.399513, 33.372055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964882, 0.223594, -0.137872,
		0.233458, -0.489319, 0.840276,
		0.120417, -0.842955, -0.524335,
		42.837097, 39.146626, 33.214756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.372890, 39.290600, 33.832253>,  <42.752804, 39.736694, 33.581791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.372890, 39.290600, 33.832253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295841, 39.222527, 33.445690>,  <43.249611, 39.181683, 33.213753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.295841, 39.222527, 33.445690>,  <43.372890, 39.290600, 33.832253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.295841, 39.222527, 33.445690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919146, 0.313569, -0.238424,
		0.343610, -0.934190, 0.096027,
		-0.192622, -0.170187, -0.966402,
		43.238056, 39.171471, 33.155769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888893, 38.833607, 33.537701>,  <43.372890, 39.290600, 33.832253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888893, 38.833607, 33.537701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.715519, 39.041908, 33.243504>,  <43.611496, 39.166889, 33.066986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.715519, 39.041908, 33.243504>,  <43.888893, 38.833607, 33.537701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715519, 39.041908, 33.243504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901162, 0.244638, -0.357853,
		-0.006424, -0.817905, -0.575318,
		-0.433434, 0.520754, -0.735493,
		43.585487, 39.198135, 33.022854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071812, 38.543793, 32.814617>,  <43.888893, 38.833607, 33.537701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071812, 38.543793, 32.814617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991417, 38.935600, 32.819408>,  <43.943180, 39.170685, 32.822285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.991417, 38.935600, 32.819408>,  <44.071812, 38.543793, 32.814617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.991417, 38.935600, 32.819408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923506, 0.193547, -0.331174,
		-0.326710, -0.055499, -0.943494,
		-0.200990, 0.979520, 0.011980,
		43.931122, 39.229458, 32.823002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.082069, 38.868763, 32.084179>,  <44.071812, 38.543793, 32.814617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.082069, 38.868763, 32.084179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196838, 39.051010, 32.421246>,  <44.265701, 39.160358, 32.623486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.196838, 39.051010, 32.421246>,  <44.082069, 38.868763, 32.084179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196838, 39.051010, 32.421246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957806, -0.121080, -0.260665,
		-0.016733, 0.881903, -0.471134,
		0.286927, 0.455617, 0.842666,
		44.282917, 39.187695, 32.674046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646961, 39.343143, 31.994694>,  <44.082069, 38.868763, 32.084179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646961, 39.343143, 31.994694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.649216, 39.202103, 32.368996>,  <44.650570, 39.117477, 32.593578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.649216, 39.202103, 32.368996>,  <44.646961, 39.343143, 31.994694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.649216, 39.202103, 32.368996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993439, -0.104915, -0.045519,
		0.114225, 0.929874, 0.349695,
		0.005639, -0.352600, 0.935757,
		44.650906, 39.096321, 32.649723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.961319, 39.808056, 32.546852>,  <44.646961, 39.343143, 31.994694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.961319, 39.808056, 32.546852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.984047, 39.409363, 32.569820>,  <44.997684, 39.170147, 32.583599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.984047, 39.409363, 32.569820>,  <44.961319, 39.808056, 32.546852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.984047, 39.409363, 32.569820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995386, 0.052099, -0.080580,
		0.077325, 0.061731, 0.995093,
		0.056817, -0.996732, 0.057417,
		45.001091, 39.110344, 32.587044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443832, 40.068207, 33.075302>,  <44.961319, 39.808056, 32.546852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443832, 40.068207, 33.075302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544384, 40.219593, 32.718971>,  <44.604717, 40.310425, 32.505173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544384, 40.219593, 32.718971>,  <44.443832, 40.068207, 33.075302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544384, 40.219593, 32.718971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545083, 0.705195, 0.453415,
		0.799807, -0.599555, -0.029021,
		0.251382, 0.378463, -0.890827,
		44.619797, 40.333134, 32.451721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.347439, 39.926495, 33.825630>,  <44.443832, 40.068207, 33.075302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.347439, 39.926495, 33.825630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087532, 40.130127, 34.051422>,  <43.931587, 40.252308, 34.186897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.087532, 40.130127, 34.051422>,  <44.347439, 39.926495, 33.825630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.087532, 40.130127, 34.051422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161429, -0.818084, 0.551978,
		0.742794, 0.267534, 0.613745,
		-0.649768, 0.509082, 0.564480,
		43.892601, 40.282852, 34.220764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.597015, 39.824329, 34.515831>,  <44.347439, 39.926495, 33.825630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.597015, 39.824329, 34.515831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206749, 39.911652, 34.507561>,  <43.972591, 39.964046, 34.502598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.206749, 39.911652, 34.507561>,  <44.597015, 39.824329, 34.515831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.206749, 39.911652, 34.507561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201511, -0.855427, 0.477114,
		0.086472, 0.469667, 0.878599,
		-0.975662, 0.218305, -0.020672,
		43.914051, 39.977142, 34.501358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495132, 39.664654, 35.139767>,  <44.597015, 39.824329, 34.515831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495132, 39.664654, 35.139767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146889, 39.627346, 34.946548>,  <43.937943, 39.604961, 34.830616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.146889, 39.627346, 34.946548>,  <44.495132, 39.664654, 35.139767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.146889, 39.627346, 34.946548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275641, -0.720799, 0.635981,
		-0.407496, 0.686840, 0.601828,
		-0.870614, -0.093271, -0.483044,
		43.885704, 39.599365, 34.801636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.073101, 39.576756, 35.650143>,  <44.495132, 39.664654, 35.139767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.073101, 39.576756, 35.650143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945744, 39.400093, 35.314629>,  <43.869328, 39.294094, 35.113319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945744, 39.400093, 35.314629>,  <44.073101, 39.576756, 35.650143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.945744, 39.400093, 35.314629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091980, -0.866267, 0.491041,
		-0.943484, 0.233498, 0.235195,
		-0.318399, -0.441656, -0.838786,
		43.850224, 39.267597, 35.062992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392498, 39.238098, 35.764107>,  <44.073101, 39.576756, 35.650143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392498, 39.238098, 35.764107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584484, 39.043827, 35.471874>,  <43.699677, 38.927265, 35.296535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584484, 39.043827, 35.471874>,  <43.392498, 39.238098, 35.764107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584484, 39.043827, 35.471874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338241, -0.870838, 0.356700,
		-0.809461, 0.075911, -0.582246,
		0.479964, -0.485674, -0.730585,
		43.728474, 38.898125, 35.252697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963829, 38.759712, 35.487030>,  <43.392498, 39.238098, 35.764107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963829, 38.759712, 35.487030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339500, 38.639046, 35.421371>,  <43.564903, 38.566647, 35.381977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339500, 38.639046, 35.421371>,  <42.963829, 38.759712, 35.487030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339500, 38.639046, 35.421371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233015, -0.910832, 0.340719,
		-0.252289, -0.281748, -0.925726,
		0.939177, -0.301667, -0.164141,
		43.621254, 38.548546, 35.372128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.952404, 38.021267, 35.215958>,  <42.963829, 38.759712, 35.487030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.952404, 38.021267, 35.215958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.318615, 38.083080, 35.364513>,  <43.538342, 38.120167, 35.453648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.318615, 38.083080, 35.364513>,  <42.952404, 38.021267, 35.215958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.318615, 38.083080, 35.364513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058421, -0.964555, 0.257336,
		0.397990, -0.213901, -0.892104,
		0.915528, 0.154534, 0.371387,
		43.593273, 38.129440, 35.475929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.547558, 37.607204, 34.831100>,  <42.952404, 38.021267, 35.215958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.547558, 37.607204, 34.831100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.652534, 37.673103, 35.211414>,  <43.715519, 37.712643, 35.439602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.652534, 37.673103, 35.211414>,  <43.547558, 37.607204, 34.831100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.652534, 37.673103, 35.211414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204239, -0.972477, 0.112134,
		0.943087, 0.164759, -0.288863,
		0.262438, 0.164749, 0.950781,
		43.731266, 37.722527, 35.496647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.188332, 37.299580, 34.930645>,  <43.547558, 37.607204, 34.831100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.188332, 37.299580, 34.930645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078388, 37.345814, 35.312450>,  <44.012421, 37.373554, 35.541534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.078388, 37.345814, 35.312450>,  <44.188332, 37.299580, 34.930645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.078388, 37.345814, 35.312450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371726, -0.902777, 0.216363,
		0.886720, 0.414286, 0.205169,
		-0.274858, 0.115586, 0.954512,
		43.995930, 37.380489, 35.598804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.751411, 37.348095, 35.558498>,  <44.188332, 37.299580, 34.930645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.751411, 37.348095, 35.558498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403625, 37.171925, 35.647995>,  <44.194954, 37.066223, 35.701694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.403625, 37.171925, 35.647995>,  <44.751411, 37.348095, 35.558498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.403625, 37.171925, 35.647995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478492, -0.863428, 0.159807,
		0.122806, 0.246007, 0.961457,
		-0.869462, -0.440424, 0.223746,
		44.142788, 37.039799, 35.715118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.793465, 36.990658, 36.204185>,  <44.751411, 37.348095, 35.558498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.793465, 36.990658, 36.204185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.526760, 36.830959, 35.952461>,  <44.366737, 36.735142, 35.801426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.526760, 36.830959, 35.952461>,  <44.793465, 36.990658, 36.204185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.526760, 36.830959, 35.952461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363919, -0.911307, 0.192568,
		-0.650379, -0.100623, 0.752916,
		-0.666761, -0.399243, -0.629314,
		44.326733, 36.711185, 35.763668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.507252, 36.468719, 36.531910>,  <44.793465, 36.990658, 36.204185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.507252, 36.468719, 36.531910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469433, 36.395435, 36.140503>,  <44.446739, 36.351463, 35.905659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469433, 36.395435, 36.140503>,  <44.507252, 36.468719, 36.531910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.469433, 36.395435, 36.140503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116293, -0.978223, 0.171917,
		-0.988704, -0.097540, 0.113797,
		-0.094550, -0.183209, -0.978517,
		44.441067, 36.340473, 35.846947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.968258, 36.022476, 36.260979>,  <44.507252, 36.468719, 36.531910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.968258, 36.022476, 36.260979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313946, 36.012600, 36.059978>,  <44.521358, 36.006676, 35.939377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.313946, 36.012600, 36.059978>,  <43.968258, 36.022476, 36.260979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.313946, 36.012600, 36.059978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192990, -0.906119, 0.376434,
		-0.464620, -0.422301, -0.778325,
		0.864224, -0.024690, -0.502501,
		44.573212, 36.005192, 35.909229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.048309, 35.369507, 35.811760>,  <43.968258, 36.022476, 36.260979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.048309, 35.369507, 35.811760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407482, 35.516460, 35.908707>,  <44.622986, 35.604633, 35.966877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407482, 35.516460, 35.908707>,  <44.048309, 35.369507, 35.811760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407482, 35.516460, 35.908707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292905, -0.909833, 0.293955,
		0.328511, -0.192961, -0.924579,
		0.897935, 0.367382, 0.242371,
		44.676861, 35.626675, 35.981419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.589951, 34.810013, 35.607086>,  <44.048309, 35.369507, 35.811760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.589951, 34.810013, 35.607086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.754745, 35.087395, 35.843521>,  <44.853622, 35.253822, 35.985382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.754745, 35.087395, 35.843521>,  <44.589951, 34.810013, 35.607086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.754745, 35.087395, 35.843521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574430, -0.701219, 0.422281,
		0.707315, 0.165563, -0.687237,
		0.411989, 0.693456, 0.591087,
		44.878342, 35.295433, 36.020847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.246944, 34.765450, 35.469662>,  <44.589951, 34.810013, 35.607086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.246944, 34.765450, 35.469662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.138683, 34.848698, 35.845627>,  <45.073727, 34.898647, 36.071205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.138683, 34.848698, 35.845627>,  <45.246944, 34.765450, 35.469662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.138683, 34.848698, 35.845627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560968, -0.759362, 0.329673,
		0.782345, 0.616487, 0.088773,
		-0.270650, 0.208119, 0.939912,
		45.057487, 34.911133, 36.127602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.843998, 34.908215, 35.887157>,  <45.246944, 34.765450, 35.469662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.843998, 34.908215, 35.887157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.576694, 34.788757, 36.159698>,  <45.416313, 34.717083, 36.323223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.576694, 34.788757, 36.159698>,  <45.843998, 34.908215, 35.887157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.576694, 34.788757, 36.159698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720118, -0.489543, 0.491709,
		0.186706, 0.819244, 0.542200,
		-0.668259, -0.298643, 0.681353,
		45.376217, 34.699165, 36.364105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.041729, 34.976208, 35.257977>,  <45.843998, 34.908215, 35.887157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.041729, 34.976208, 35.257977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.988419, 35.371613, 35.229473>,  <45.956432, 35.608856, 35.212372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.988419, 35.371613, 35.229473>,  <46.041729, 34.976208, 35.257977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.988419, 35.371613, 35.229473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380874, -0.015294, -0.924500,
		-0.914971, -0.150357, -0.374460,
		-0.133278, 0.988513, -0.071260,
		45.948437, 35.668167, 35.208096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.626656, 35.354179, 34.713062>,  <46.041729, 34.976208, 35.257977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.626656, 35.354179, 34.713062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.936382, 35.602081, 34.764183>,  <46.122219, 35.750824, 34.794857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.936382, 35.602081, 34.764183>,  <45.626656, 35.354179, 34.713062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.936382, 35.602081, 34.764183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350040, -0.251243, -0.902413,
		-0.527165, 0.743492, -0.411481,
		0.774318, 0.619755, 0.127805,
		46.168678, 35.788010, 34.802525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.280170, 35.131111, 34.303219>,  <45.626656, 35.354179, 34.713062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.280170, 35.131111, 34.303219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.489407, 34.841679, 34.123077>,  <46.614948, 34.668018, 34.014992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.489407, 34.841679, 34.123077>,  <46.280170, 35.131111, 34.303219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.489407, 34.841679, 34.123077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806006, 0.591728, -0.014543,
		0.277008, -0.355378, 0.892733,
		0.523087, -0.723577, -0.450350,
		46.646332, 34.624607, 33.987972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.908470, 35.106956, 34.645103>,  <46.280170, 35.131111, 34.303219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.908470, 35.106956, 34.645103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.956982, 34.957367, 34.277313>,  <46.986088, 34.867611, 34.056641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.956982, 34.957367, 34.277313>,  <46.908470, 35.106956, 34.645103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.956982, 34.957367, 34.277313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696253, 0.692267, -0.189732,
		0.707477, -0.617177, 0.344338,
		0.121276, -0.373977, -0.919474,
		46.993362, 34.845173, 34.001472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.320503, 35.426117, 34.134785>,  <46.908470, 35.106956, 34.645103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.320503, 35.426117, 34.134785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.649231, 35.517643, 34.343502>,  <47.846466, 35.572559, 34.468731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.649231, 35.517643, 34.343502>,  <47.320503, 35.426117, 34.134785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.649231, 35.517643, 34.343502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422088, -0.370651, 0.827320,
		0.382704, -0.900146, -0.208027,
		0.821815, 0.228813, 0.521791,
		47.895775, 35.586288, 34.500038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.574650, 34.851753, 34.379292>,  <47.320503, 35.426117, 34.134785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.574650, 34.851753, 34.379292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.674412, 35.152702, 34.623169>,  <47.734268, 35.333271, 34.769497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.674412, 35.152702, 34.623169>,  <47.574650, 34.851753, 34.379292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.674412, 35.152702, 34.623169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415559, -0.485527, 0.769138,
		0.874704, -0.445192, 0.191563,
		0.249405, 0.752374, 0.609697,
		47.749233, 35.378414, 34.806076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.125542, 34.835693, 34.968487>,  <47.574650, 34.851753, 34.379292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.125542, 34.835693, 34.968487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.838020, 35.089764, 35.081535>,  <47.665508, 35.242207, 35.149364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.838020, 35.089764, 35.081535>,  <48.125542, 34.835693, 34.968487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.838020, 35.089764, 35.081535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362692, -0.689430, 0.627009,
		0.593111, 0.348189, 0.725936,
		-0.718800, 0.635178, 0.282623,
		47.622379, 35.280315, 35.166321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.788158, 37.830036, 22.886581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.398232, 37.885658, 22.816849>,  <38.164276, 37.919033, 22.775009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.398232, 37.885658, 22.816849>,  <38.788158, 37.830036, 22.886581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398232, 37.885658, 22.816849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192787, -0.132593, 0.972241,
		0.112083, 0.981367, 0.156063,
		-0.974818, 0.139058, -0.174333,
		38.105785, 37.927376, 22.764549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462460, 38.326553, 23.409393>,  <38.788158, 37.830036, 22.886581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462460, 38.326553, 23.409393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.167255, 38.093243, 23.273672>,  <37.990131, 37.953255, 23.192240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.167255, 38.093243, 23.273672>,  <38.462460, 38.326553, 23.409393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167255, 38.093243, 23.273672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377225, -0.060302, 0.924156,
		-0.559499, 0.810032, -0.175522,
		-0.738012, -0.583276, -0.339303,
		37.945850, 37.918259, 23.171881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861050, 38.502163, 23.775566>,  <38.462460, 38.326553, 23.409393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861050, 38.502163, 23.775566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.733402, 38.162003, 23.608246>,  <37.656815, 37.957905, 23.507854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.733402, 38.162003, 23.608246>,  <37.861050, 38.502163, 23.775566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733402, 38.162003, 23.608246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468413, -0.242165, 0.849674,
		-0.823864, 0.467085, -0.321061,
		-0.319120, -0.850404, -0.418300,
		37.637665, 37.906879, 23.482756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136284, 38.504139, 23.835825>,  <37.861050, 38.502163, 23.775566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136284, 38.504139, 23.835825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.241474, 38.122574, 23.778009>,  <37.304588, 37.893635, 23.743320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.241474, 38.122574, 23.778009>,  <37.136284, 38.504139, 23.835825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241474, 38.122574, 23.778009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541457, -0.269911, 0.796224,
		-0.798542, -0.131124, -0.587483,
		0.262972, -0.953916, -0.144537,
		37.320366, 37.836399, 23.734648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488407, 38.087090, 23.938210>,  <37.136284, 38.504139, 23.835825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488407, 38.087090, 23.938210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.776966, 37.811935, 23.970194>,  <36.950104, 37.646843, 23.989384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.776966, 37.811935, 23.970194>,  <36.488407, 38.087090, 23.938210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776966, 37.811935, 23.970194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485385, -0.419891, 0.766872,
		-0.493951, -0.592029, -0.636800,
		0.721397, -0.687890, 0.079957,
		36.993385, 37.605568, 23.994183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071594, 37.470821, 24.063280>,  <36.488407, 38.087090, 23.938210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071594, 37.470821, 24.063280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.447960, 37.401539, 24.179684>,  <36.673779, 37.359970, 24.249525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.447960, 37.401539, 24.179684>,  <36.071594, 37.470821, 24.063280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447960, 37.401539, 24.179684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334613, -0.343126, 0.877667,
		-0.052164, -0.923181, -0.380808,
		0.940911, -0.173206, 0.291010,
		36.730232, 37.349579, 24.266987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105465, 36.748379, 24.197893>,  <36.071594, 37.470821, 24.063280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105465, 36.748379, 24.197893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.380344, 36.930862, 24.424040>,  <36.545273, 37.040352, 24.559727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.380344, 36.930862, 24.424040>,  <36.105465, 36.748379, 24.197893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380344, 36.930862, 24.424040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331619, -0.495430, 0.802856,
		0.646369, -0.739204, -0.189169,
		0.687194, 0.456209, 0.565365,
		36.586502, 37.067726, 24.593649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262657, 36.220818, 24.778187>,  <36.105465, 36.748379, 24.197893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.262657, 36.220818, 24.778187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.402775, 36.574284, 24.902395>,  <36.486847, 36.786366, 24.976919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.402775, 36.574284, 24.902395>,  <36.262657, 36.220818, 24.778187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402775, 36.574284, 24.902395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212026, -0.248108, 0.945245,
		0.912326, -0.396952, 0.100450,
		0.350294, 0.883669, 0.310520,
		36.507862, 36.839386, 24.995552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577904, 35.980503, 25.271854>,  <36.262657, 36.220818, 24.778187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577904, 35.980503, 25.271854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.538223, 36.375359, 25.321999>,  <36.514416, 36.612270, 25.352085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.538223, 36.375359, 25.321999>,  <36.577904, 35.980503, 25.271854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538223, 36.375359, 25.321999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090825, -0.134439, 0.986751,
		0.990914, 0.086501, 0.102993,
		-0.099201, 0.987139, 0.125361,
		36.508465, 36.671501, 25.359608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988811, 36.174328, 25.862309>,  <36.577904, 35.980503, 25.271854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988811, 36.174328, 25.862309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.697876, 36.445755, 25.821272>,  <36.523315, 36.608612, 25.796650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.697876, 36.445755, 25.821272>,  <36.988811, 36.174328, 25.862309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697876, 36.445755, 25.821272> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266527, -0.141547, 0.953377,
		0.632408, 0.720772, 0.283809,
		-0.727340, 0.678566, -0.102590,
		36.479675, 36.649326, 25.790495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137127, 36.725037, 26.356529>,  <36.988811, 36.174328, 25.862309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137127, 36.725037, 26.356529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.744232, 36.717743, 26.281832>,  <36.508495, 36.713367, 26.237013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.744232, 36.717743, 26.281832>,  <37.137127, 36.725037, 26.356529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744232, 36.717743, 26.281832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187225, 0.029605, 0.981871,
		-0.012375, 0.999395, -0.032493,
		-0.982239, -0.018234, -0.186745,
		36.449562, 36.712273, 26.225809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766575, 37.308823, 26.668657>,  <37.137127, 36.725037, 26.356529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766575, 37.308823, 26.668657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.458649, 37.066319, 26.588818>,  <36.273895, 36.920818, 26.540913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.458649, 37.066319, 26.588818>,  <36.766575, 37.308823, 26.668657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458649, 37.066319, 26.588818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277430, 0.036188, 0.960064,
		-0.574822, 0.794446, -0.196051,
		-0.769813, -0.606256, -0.199602,
		36.227703, 36.884441, 26.528936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323074, 37.558990, 27.248465>,  <36.766575, 37.308823, 26.668657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323074, 37.558990, 27.248465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.155140, 37.241074, 27.073175>,  <36.054379, 37.050323, 26.968002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.155140, 37.241074, 27.073175>,  <36.323074, 37.558990, 27.248465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155140, 37.241074, 27.073175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428378, -0.252141, 0.867708,
		-0.800143, 0.552021, -0.234615,
		-0.419837, -0.794794, -0.438223,
		36.029190, 37.002636, 26.941710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570980, 37.561844, 27.365974>,  <36.323074, 37.558990, 27.248465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570980, 37.561844, 27.365974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.657581, 37.172142, 27.340788>,  <35.709541, 36.938320, 27.325676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.657581, 37.172142, 27.340788>,  <35.570980, 37.561844, 27.365974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657581, 37.172142, 27.340788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344818, -0.136646, 0.928670,
		-0.913361, -0.179344, -0.365523,
		0.216499, -0.974250, -0.062967,
		35.722530, 36.879868, 27.321898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996170, 37.193298, 27.527105>,  <35.570980, 37.561844, 27.365974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996170, 37.193298, 27.527105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.288986, 36.931328, 27.602144>,  <35.464676, 36.774147, 27.647167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.288986, 36.931328, 27.602144>,  <34.996170, 37.193298, 27.527105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288986, 36.931328, 27.602144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430641, -0.231473, 0.872335,
		-0.527894, -0.719367, -0.451486,
		0.732036, -0.654929, 0.187596,
		35.508598, 36.734848, 27.658422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697021, 36.683285, 27.866989>,  <34.996170, 37.193298, 27.527105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697021, 36.683285, 27.866989> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.079346, 36.604424, 27.954220>,  <35.308739, 36.557106, 28.006557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.079346, 36.604424, 27.954220>,  <34.697021, 36.683285, 27.866989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079346, 36.604424, 27.954220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254553, -0.183945, 0.949403,
		-0.147064, -0.962962, -0.226003,
		0.955811, -0.197153, 0.218073,
		35.366089, 36.545280, 28.019642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641197, 36.104210, 28.273451>,  <34.697021, 36.683285, 27.866989>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641197, 36.104210, 28.273451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.992321, 36.273666, 28.362865>,  <35.202995, 36.375340, 28.416513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.992321, 36.273666, 28.362865>,  <34.641197, 36.104210, 28.273451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992321, 36.273666, 28.362865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232940, -0.030221, 0.972021,
		0.418547, -0.905324, 0.072156,
		0.877814, 0.423645, 0.223535,
		35.255665, 36.400761, 28.429926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184692, 35.462910, 28.379276>,  <34.641197, 36.104210, 28.273451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184692, 35.462910, 28.379276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.346725, 35.784599, 28.553232>,  <35.443943, 35.977615, 28.657606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.346725, 35.784599, 28.553232>,  <35.184692, 35.462910, 28.379276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346725, 35.784599, 28.553232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199158, -0.386624, 0.900476,
		0.892326, -0.451377, 0.003555,
		0.405080, 0.804227, 0.434890,
		35.468250, 36.025867, 28.683699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498211, 35.220032, 28.911402>,  <35.184692, 35.462910, 28.379276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498211, 35.220032, 28.911402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.465378, 35.602245, 29.024696>,  <35.445679, 35.831573, 29.092672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.465378, 35.602245, 29.024696>,  <35.498211, 35.220032, 28.911402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465378, 35.602245, 29.024696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216128, -0.294499, 0.930891,
		0.972909, 0.015193, 0.230690,
		-0.082081, 0.955531, 0.283237,
		35.440754, 35.888905, 29.109667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971004, 35.255650, 29.443632>,  <35.498211, 35.220032, 28.911402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971004, 35.255650, 29.443632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.688354, 35.537529, 29.469194>,  <35.518764, 35.706657, 29.484531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.688354, 35.537529, 29.469194>,  <35.971004, 35.255650, 29.443632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688354, 35.537529, 29.469194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241618, -0.325191, 0.914260,
		0.665057, 0.630598, 0.400056,
		-0.706625, 0.704696, 0.063907,
		35.476368, 35.748940, 29.488367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036041, 35.530270, 30.131083>,  <35.971004, 35.255650, 29.443632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036041, 35.530270, 30.131083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.672100, 35.664040, 30.032831>,  <35.453735, 35.744301, 29.973881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.672100, 35.664040, 30.032831>,  <36.036041, 35.530270, 30.131083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672100, 35.664040, 30.032831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328850, -0.220170, 0.918359,
		0.253039, 0.916345, 0.310297,
		-0.909851, 0.334421, -0.245628,
		35.399143, 35.764366, 29.959143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196980, 36.267906, 30.458853>,  <36.036041, 35.530270, 30.131083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196980, 36.267906, 30.458853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.366158, 36.556938, 30.677576>,  <36.467663, 36.730358, 30.808809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.366158, 36.556938, 30.677576>,  <36.196980, 36.267906, 30.458853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366158, 36.556938, 30.677576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293167, 0.461871, -0.837095,
		-0.857422, 0.514350, -0.016491,
		0.422943, 0.722578, 0.546808,
		36.493042, 36.773712, 30.841619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009270, 36.902271, 30.156321>,  <36.196980, 36.267906, 30.458853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009270, 36.902271, 30.156321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.335812, 36.992146, 30.369141>,  <36.531738, 37.046070, 30.496834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.335812, 36.992146, 30.369141>,  <36.009270, 36.902271, 30.156321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335812, 36.992146, 30.369141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448997, 0.332533, -0.829351,
		-0.363272, 0.915935, 0.170580,
		0.816355, 0.224690, 0.532052,
		36.580719, 37.059551, 30.528757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258759, 37.559822, 29.945759>,  <36.009270, 36.902271, 30.156321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258759, 37.559822, 29.945759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.574947, 37.380772, 30.112984>,  <36.764660, 37.273342, 30.213320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.574947, 37.380772, 30.112984>,  <36.258759, 37.559822, 29.945759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574947, 37.380772, 30.112984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598322, 0.418349, -0.683370,
		0.131000, 0.790324, 0.598521,
		0.790474, -0.447630, 0.418065,
		36.812088, 37.246483, 30.238403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769669, 38.021664, 29.971550>,  <36.258759, 37.559822, 29.945759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769669, 38.021664, 29.971550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.991627, 37.688904, 29.969217>,  <37.124802, 37.489250, 29.967817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.991627, 37.688904, 29.969217>,  <36.769669, 38.021664, 29.971550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991627, 37.688904, 29.969217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599348, 0.404623, -0.690697,
		0.576948, 0.379772, 0.723121,
		0.554899, -0.831898, -0.005831,
		37.158096, 37.439335, 29.967468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446781, 38.294258, 30.004553>,  <36.769669, 38.021664, 29.971550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446781, 38.294258, 30.004553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.524651, 37.914223, 29.907038>,  <37.571373, 37.686203, 29.848530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.524651, 37.914223, 29.907038>,  <37.446781, 38.294258, 30.004553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524651, 37.914223, 29.907038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613316, 0.311869, -0.725659,
		0.765470, -0.008250, 0.643418,
		0.194676, -0.950089, -0.243786,
		37.583054, 37.629196, 29.833902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128925, 38.251266, 29.915031>,  <37.446781, 38.294258, 30.004553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128925, 38.251266, 29.915031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.987286, 37.928978, 29.725119>,  <37.902302, 37.735603, 29.611170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.987286, 37.928978, 29.725119>,  <38.128925, 38.251266, 29.915031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987286, 37.928978, 29.725119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611748, 0.184438, -0.769251,
		0.707372, -0.562842, 0.427590,
		-0.354103, -0.805725, -0.474784,
		37.881054, 37.687260, 29.582684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834564, 37.875309, 29.791544>,  <38.128925, 38.251266, 29.915031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834564, 37.875309, 29.791544> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.529583, 37.778225, 29.551624>,  <38.346596, 37.719975, 29.407673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.529583, 37.778225, 29.551624>,  <38.834564, 37.875309, 29.791544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529583, 37.778225, 29.551624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575305, 0.169949, -0.800089,
		0.296124, -0.955097, 0.010053,
		-0.762453, -0.242709, -0.599798,
		38.300846, 37.705414, 29.371685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188023, 37.811981, 29.167059>,  <38.834564, 37.875309, 29.791544>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188023, 37.811981, 29.167059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.817764, 37.783413, 29.018425>,  <38.595608, 37.766273, 28.929245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.817764, 37.783413, 29.018425>,  <39.188023, 37.811981, 29.167059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817764, 37.783413, 29.018425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350400, 0.208834, -0.913021,
		0.142804, -0.975340, -0.168283,
		-0.925649, -0.071417, -0.371582,
		38.540070, 37.761986, 28.906950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136681, 37.237606, 28.709953>,  <39.188023, 37.811981, 29.167059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136681, 37.237606, 28.709953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.873566, 37.521023, 28.607756>,  <38.715694, 37.691074, 28.546436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.873566, 37.521023, 28.607756>,  <39.136681, 37.237606, 28.709953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873566, 37.521023, 28.607756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295717, -0.069028, -0.952778,
		-0.692721, -0.702283, -0.164123,
		-0.657791, 0.708544, -0.255494,
		38.676228, 37.733585, 28.531107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947044, 37.058849, 28.066196>,  <39.136681, 37.237606, 28.709953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947044, 37.058849, 28.066196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.806175, 37.431606, 28.100958>,  <38.721653, 37.655262, 28.121815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.806175, 37.431606, 28.100958>,  <38.947044, 37.058849, 28.066196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806175, 37.431606, 28.100958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044386, 0.109379, -0.993009,
		-0.934882, -0.345854, -0.079883,
		-0.352174, 0.931891, 0.086906,
		38.700523, 37.711174, 28.127029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464115, 37.190414, 27.421858>,  <38.947044, 37.058849, 28.066196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464115, 37.190414, 27.421858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.550060, 37.556255, 27.558874>,  <38.601627, 37.775761, 27.641085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.550060, 37.556255, 27.558874>,  <38.464115, 37.190414, 27.421858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550060, 37.556255, 27.558874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104270, 0.327245, -0.939169,
		-0.971063, 0.237507, -0.025053,
		0.214860, 0.914604, 0.342540,
		38.614517, 37.830635, 27.661636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.081779, 37.565590, 27.003374>,  <38.464115, 37.190414, 27.421858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.081779, 37.565590, 27.003374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.382282, 37.778599, 27.159338>,  <38.562584, 37.906406, 27.252916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.382282, 37.778599, 27.159338>,  <38.081779, 37.565590, 27.003374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382282, 37.778599, 27.159338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224225, 0.349698, -0.909634,
		-0.620753, 0.770797, 0.143308,
		0.751258, 0.532525, 0.389908,
		38.607658, 37.938354, 27.276310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015907, 38.259888, 26.694250>,  <38.081779, 37.565590, 27.003374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015907, 38.259888, 26.694250> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.398361, 38.184978, 26.784346>,  <38.627834, 38.140034, 26.838404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.398361, 38.184978, 26.784346>,  <38.015907, 38.259888, 26.694250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.398361, 38.184978, 26.784346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276922, 0.327233, -0.903456,
		0.095486, 0.926201, 0.364739,
		0.956137, -0.187271, 0.225239,
		38.685204, 38.128796, 26.851917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357937, 38.902359, 26.527225>,  <38.015907, 38.259888, 26.694250>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.357937, 38.902359, 26.527225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.654320, 38.635483, 26.557823>,  <38.832150, 38.475357, 26.576181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.654320, 38.635483, 26.557823>,  <38.357937, 38.902359, 26.527225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654320, 38.635483, 26.557823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372495, 0.313533, -0.873467,
		0.558781, 0.675692, 0.480837,
		0.740953, -0.667186, 0.076496,
		38.876606, 38.435326, 26.580772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910156, 39.300636, 26.332661>,  <38.357937, 38.902359, 26.527225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910156, 39.300636, 26.332661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.031143, 38.921711, 26.290499>,  <39.103733, 38.694355, 26.265202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.031143, 38.921711, 26.290499>,  <38.910156, 39.300636, 26.332661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031143, 38.921711, 26.290499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488731, 0.249076, -0.836124,
		0.818326, 0.201384, 0.538319,
		0.302464, -0.947315, -0.105403,
		39.121883, 38.637516, 26.258879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631428, 39.210819, 26.258921>,  <38.910156, 39.300636, 26.332661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631428, 39.210819, 26.258921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.478382, 38.879173, 26.095861>,  <39.386555, 38.680187, 25.998026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.478382, 38.879173, 26.095861>,  <39.631428, 39.210819, 26.258921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478382, 38.879173, 26.095861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556097, 0.145683, -0.818250,
		0.737807, -0.539770, 0.405325,
		-0.382618, -0.829111, -0.407650,
		39.363598, 38.630440, 25.973566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080631, 39.055977, 25.719776>,  <39.631428, 39.210819, 26.258921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080631, 39.055977, 25.719776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.789165, 38.792427, 25.645006>,  <39.614288, 38.634296, 25.600143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.789165, 38.792427, 25.645006>,  <40.080631, 39.055977, 25.719776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789165, 38.792427, 25.645006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291119, -0.050924, -0.955330,
		0.619922, -0.750529, 0.228916,
		-0.728661, -0.658872, -0.186925,
		39.570568, 38.594765, 25.588928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385578, 38.443275, 25.467106>,  <40.080631, 39.055977, 25.719776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385578, 38.443275, 25.467106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.012398, 38.494884, 25.332670>,  <39.788490, 38.525848, 25.252008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.012398, 38.494884, 25.332670>,  <40.385578, 38.443275, 25.467106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012398, 38.494884, 25.332670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332425, -0.049623, -0.941823,
		-0.138196, -0.990399, 0.003405,
		-0.932950, 0.129024, -0.336091,
		39.732513, 38.533592, 25.231842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284641, 37.947693, 24.862312>,  <40.385578, 38.443275, 25.467106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284641, 37.947693, 24.862312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.002140, 38.230476, 24.847288>,  <39.832638, 38.400146, 24.838274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.002140, 38.230476, 24.847288>,  <40.284641, 37.947693, 24.862312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002140, 38.230476, 24.847288> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024384, -0.077311, -0.996709,
		-0.707541, -0.703012, 0.071839,
		-0.706252, 0.706964, -0.037558,
		39.790264, 38.442566, 24.836021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.852764, 37.677929, 24.328016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.823952, 38.074802, 24.368773>,  <39.806664, 38.312927, 24.393227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.823952, 38.074802, 24.368773>,  <39.852764, 37.677929, 24.328016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823952, 38.074802, 24.368773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111363, 0.109519, -0.987727,
		-0.991166, -0.059804, -0.118382,
		-0.072035, 0.992184, 0.101892,
		39.802341, 38.372459, 24.399340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925831, 37.830414, 23.659546>,  <39.852764, 37.677929, 24.328016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925831, 37.830414, 23.659546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.885017, 38.187256, 23.835609>,  <39.860531, 38.401360, 23.941248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.885017, 38.187256, 23.835609>,  <39.925831, 37.830414, 23.659546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885017, 38.187256, 23.835609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091470, 0.449006, -0.888835,
		-0.990567, -0.050427, -0.127414,
		-0.102031, 0.892105, 0.440158,
		39.854408, 38.454887, 23.967657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312675, 38.299313, 23.411406>,  <39.925831, 37.830414, 23.659546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312675, 38.299313, 23.411406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.631802, 38.499363, 23.546085>,  <39.823277, 38.619392, 23.626892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.631802, 38.499363, 23.546085>,  <39.312675, 38.299313, 23.411406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631802, 38.499363, 23.546085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124386, 0.409907, -0.903607,
		-0.589936, 0.762789, 0.264819,
		0.797812, 0.500130, 0.336699,
		39.871143, 38.649403, 23.647095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316448, 38.930676, 23.046457>,  <39.312675, 38.299313, 23.411406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316448, 38.930676, 23.046457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.677902, 38.974255, 23.212141>,  <39.894775, 39.000401, 23.311550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.677902, 38.974255, 23.212141>,  <39.316448, 38.930676, 23.046457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.677902, 38.974255, 23.212141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261731, 0.625050, -0.735398,
		-0.339020, 0.772945, 0.536304,
		0.903638, 0.108948, 0.414208,
		39.948994, 39.006939, 23.336403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462299, 39.578674, 23.054863>,  <39.316448, 38.930676, 23.046457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462299, 39.578674, 23.054863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.817467, 39.394894, 23.063890>,  <40.030567, 39.284626, 23.069307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.817467, 39.394894, 23.063890>,  <39.462299, 39.578674, 23.054863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817467, 39.394894, 23.063890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276352, 0.493556, -0.824641,
		0.367742, 0.738450, 0.565206,
		0.887916, -0.459451, 0.022570,
		40.083843, 39.257057, 23.070662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088772, 40.108082, 22.816790>,  <39.462299, 39.578674, 23.054863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088772, 40.108082, 22.816790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.163795, 39.720161, 22.754431>,  <40.208809, 39.487408, 22.717016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.163795, 39.720161, 22.754431>,  <40.088772, 40.108082, 22.816790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163795, 39.720161, 22.754431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376464, 0.217567, -0.900522,
		0.907247, 0.110209, 0.405902,
		0.187556, -0.969803, -0.155898,
		40.220062, 39.429222, 22.707661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707150, 40.146175, 22.469166>,  <40.088772, 40.108082, 22.816790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707150, 40.146175, 22.469166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.609070, 39.767231, 22.386818>,  <40.550220, 39.539864, 22.337410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.609070, 39.767231, 22.386818>,  <40.707150, 40.146175, 22.469166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.609070, 39.767231, 22.386818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312368, 0.123823, -0.941856,
		0.917770, -0.295252, 0.265564,
		-0.245202, -0.947361, -0.205869,
		40.535511, 39.483021, 22.325058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368599, 39.828773, 22.321735>,  <40.707150, 40.146175, 22.469166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368599, 39.828773, 22.321735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.052879, 39.646931, 22.156649>,  <40.863445, 39.537827, 22.057596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.052879, 39.646931, 22.156649>,  <41.368599, 39.828773, 22.321735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052879, 39.646931, 22.156649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420943, 0.088700, -0.902740,
		0.446999, -0.886265, 0.121353,
		-0.789303, -0.454607, -0.412716,
		40.816090, 39.510548, 22.032833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643787, 39.384476, 21.786749>,  <41.368599, 39.828773, 22.321735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643787, 39.384476, 21.786749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.259312, 39.393372, 21.676756>,  <41.028625, 39.398708, 21.610760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.259312, 39.393372, 21.676756>,  <41.643787, 39.384476, 21.786749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259312, 39.393372, 21.676756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273407, -0.056350, -0.960246,
		-0.036850, -0.998163, 0.048083,
		-0.961192, 0.022239, -0.274982,
		40.970955, 39.400043, 21.594261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571377, 38.835743, 21.391932>,  <41.643787, 39.384476, 21.786749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571377, 38.835743, 21.391932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.294456, 39.110390, 21.303133>,  <41.128304, 39.275177, 21.249853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.294456, 39.110390, 21.303133>,  <41.571377, 38.835743, 21.391932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.294456, 39.110390, 21.303133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375768, 0.080381, -0.923221,
		-0.616052, -0.722565, -0.313655,
		-0.692299, 0.686614, -0.221998,
		41.086765, 39.316376, 21.236534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684654, 38.917511, 20.689426>,  <41.571377, 38.835743, 21.391932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684654, 38.917511, 20.689426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.463642, 39.239899, 20.774393>,  <41.331036, 39.433331, 20.825373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.463642, 39.239899, 20.774393>,  <41.684654, 38.917511, 20.689426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.463642, 39.239899, 20.774393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299264, 0.429693, -0.851942,
		-0.777916, -0.407153, -0.478616,
		-0.552529, 0.805972, 0.212419,
		41.297882, 39.481689, 20.838120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426559, 39.159512, 20.038282>,  <41.684654, 38.917511, 20.689426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426559, 39.159512, 20.038282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.366699, 39.471722, 20.281061>,  <41.330784, 39.659046, 20.426727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.366699, 39.471722, 20.281061>,  <41.426559, 39.159512, 20.038282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.366699, 39.471722, 20.281061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126061, 0.623911, -0.771261,
		-0.980669, -0.038911, -0.191765,
		-0.149654, 0.780526, 0.606945,
		41.321804, 39.705879, 20.463144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904324, 39.521305, 19.765631>,  <41.426559, 39.159512, 20.038282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904324, 39.521305, 19.765631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.151142, 39.782181, 19.941769>,  <41.299232, 39.938705, 20.047451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.151142, 39.782181, 19.941769>,  <40.904324, 39.521305, 19.765631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.151142, 39.782181, 19.941769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075797, 0.507716, -0.858184,
		-0.783269, 0.562914, 0.263850,
		0.617045, 0.652190, 0.440346,
		41.336254, 39.977837, 20.073872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651615, 40.167416, 19.463097>,  <40.904324, 39.521305, 19.765631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651615, 40.167416, 19.463097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.005623, 40.236046, 19.636211>,  <41.218029, 40.277225, 19.740080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.005623, 40.236046, 19.636211>,  <40.651615, 40.167416, 19.463097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005623, 40.236046, 19.636211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251639, 0.605815, -0.754762,
		-0.391690, 0.776884, 0.492981,
		0.885018, 0.171580, 0.432786,
		41.271130, 40.287521, 19.766047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679379, 40.825268, 19.374081>,  <40.651615, 40.167416, 19.463097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679379, 40.825268, 19.374081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.060287, 40.725311, 19.444210>,  <41.288834, 40.665337, 19.486288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.060287, 40.725311, 19.444210>,  <40.679379, 40.825268, 19.374081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060287, 40.725311, 19.444210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283652, 0.512102, -0.810736,
		0.112812, 0.821770, 0.558541,
		0.952268, -0.249892, 0.175325,
		41.345966, 40.650345, 19.496807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063839, 41.472984, 19.366348>,  <40.679379, 40.825268, 19.374081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063839, 41.472984, 19.366348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.323441, 41.181534, 19.278807>,  <41.479202, 41.006664, 19.226282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.323441, 41.181534, 19.278807>,  <41.063839, 41.472984, 19.366348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323441, 41.181534, 19.278807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361666, 0.548571, -0.753835,
		0.669320, 0.410091, 0.619545,
		0.649005, -0.728626, -0.218854,
		41.518143, 40.962948, 19.213150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644493, 41.818645, 19.185194>,  <41.063839, 41.472984, 19.366348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644493, 41.818645, 19.185194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.714161, 41.446884, 19.055042>,  <41.755962, 41.223827, 18.976952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.714161, 41.446884, 19.055042>,  <41.644493, 41.818645, 19.185194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.714161, 41.446884, 19.055042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291333, 0.364274, -0.884551,
		0.940633, 0.059268, 0.334211,
		0.174170, -0.929404, -0.325381,
		41.766411, 41.168064, 18.957428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.340530, 41.862007, 18.897326>,  <41.644493, 41.818645, 19.185194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.340530, 41.862007, 18.897326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.151142, 41.545826, 18.741882>,  <42.037510, 41.356117, 18.648617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.151142, 41.545826, 18.741882>,  <42.340530, 41.862007, 18.897326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151142, 41.545826, 18.741882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333691, 0.247335, -0.909657,
		0.815153, -0.560372, 0.146659,
		-0.473472, -0.790448, -0.388607,
		42.009102, 41.308693, 18.625299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775623, 41.591465, 18.466246>,  <42.340530, 41.862007, 18.897326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775623, 41.591465, 18.466246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.432201, 41.433655, 18.335257>,  <42.226147, 41.338970, 18.256662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.432201, 41.433655, 18.335257>,  <42.775623, 41.591465, 18.466246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.432201, 41.433655, 18.335257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240658, 0.253886, -0.936817,
		0.452736, -0.883116, -0.123030,
		-0.858553, -0.394523, -0.327472,
		42.174637, 41.315296, 18.237015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.010273, 41.205044, 17.744085>,  <42.775623, 41.591465, 18.466246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.010273, 41.205044, 17.744085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.617912, 41.282394, 17.752411>,  <42.382496, 41.328804, 17.757406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.617912, 41.282394, 17.752411>,  <43.010273, 41.205044, 17.744085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617912, 41.282394, 17.752411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084301, 0.519174, -0.850501,
		-0.175271, -0.832505, -0.525562,
		-0.980904, 0.193373, 0.020815,
		42.323643, 41.340405, 17.758656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792942, 41.069862, 17.047821>,  <43.010273, 41.205044, 17.744085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792942, 41.069862, 17.047821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.484238, 41.276299, 17.196428>,  <42.299015, 41.400162, 17.285593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.484238, 41.276299, 17.196428>,  <42.792942, 41.069862, 17.047821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.484238, 41.276299, 17.196428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067289, 0.514675, -0.854741,
		-0.632338, -0.684658, -0.362481,
		-0.771765, 0.516094, 0.371519,
		42.252708, 41.431126, 17.307884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188152, 41.050037, 16.506569>,  <42.792942, 41.069862, 17.047821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188152, 41.050037, 16.506569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.117737, 41.375381, 16.728361>,  <42.075485, 41.570587, 16.861437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.117737, 41.375381, 16.728361>,  <42.188152, 41.050037, 16.506569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117737, 41.375381, 16.728361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241575, 0.510355, -0.825336,
		-0.954280, -0.279242, 0.106644,
		-0.176042, 0.813365, 0.554479,
		42.064922, 41.619392, 16.894705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.598217, 41.298985, 16.320864>,  <42.188152, 41.050037, 16.506569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.598217, 41.298985, 16.320864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.778908, 41.620350, 16.476025>,  <41.887321, 41.813171, 16.569120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.778908, 41.620350, 16.476025>,  <41.598217, 41.298985, 16.320864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778908, 41.620350, 16.476025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208438, 0.517797, -0.829722,
		-0.867467, 0.293952, 0.401364,
		0.451724, 0.803417, 0.387901,
		41.914425, 41.861374, 16.592396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.904873, 41.580505, 16.094490>,  <41.598217, 41.298985, 16.320864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.904873, 41.580505, 16.094490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.638077, 41.878078, 16.110886>,  <40.477997, 42.056622, 16.120724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.638077, 41.878078, 16.110886>,  <40.904873, 41.580505, 16.094490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638077, 41.878078, 16.110886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096327, -0.140657, 0.985361,
		0.738811, 0.653280, 0.165478,
		-0.666992, 0.743936, 0.040991,
		40.437981, 42.101261, 16.123182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916752, 42.046047, 16.713514>,  <40.904873, 41.580505, 16.094490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916752, 42.046047, 16.713514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.532059, 42.063416, 16.605309>,  <40.301243, 42.073837, 16.540386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.532059, 42.063416, 16.605309>,  <40.916752, 42.046047, 16.713514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532059, 42.063416, 16.605309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273774, -0.190151, 0.942810,
		-0.010499, 0.980794, 0.194763,
		-0.961737, 0.043422, -0.270513,
		40.243538, 42.076443, 16.524155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502186, 42.275166, 17.281279>,  <40.916752, 42.046047, 16.713514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502186, 42.275166, 17.281279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.210232, 42.141644, 17.042671>,  <40.035057, 42.061531, 16.899506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.210232, 42.141644, 17.042671>,  <40.502186, 42.275166, 17.281279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210232, 42.141644, 17.042671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520581, -0.294118, 0.801555,
		-0.443012, 0.895582, 0.040899,
		-0.729887, -0.333808, -0.596521,
		39.991264, 42.041500, 16.863714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.853195, 42.409580, 17.665165>,  <40.502186, 42.275166, 17.281279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.853195, 42.409580, 17.665165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.782578, 42.106876, 17.413404>,  <39.740208, 41.925255, 17.262348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.782578, 42.106876, 17.413404>,  <39.853195, 42.409580, 17.665165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782578, 42.106876, 17.413404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378689, -0.538006, 0.753090,
		-0.908530, 0.371303, -0.191593,
		-0.176546, -0.756759, -0.629402,
		39.729614, 41.879848, 17.224585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323437, 42.187351, 17.969051>,  <39.853195, 42.409580, 17.665165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323437, 42.187351, 17.969051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.432537, 41.895870, 17.717785>,  <39.497997, 41.720982, 17.567026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.432537, 41.895870, 17.717785>,  <39.323437, 42.187351, 17.969051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.432537, 41.895870, 17.717785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495835, -0.666002, 0.557305,
		-0.824471, 0.159460, -0.542973,
		0.272753, -0.728707, -0.628165,
		39.514362, 41.677258, 17.529335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778576, 41.696884, 17.787191>,  <39.323437, 42.187351, 17.969051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778576, 41.696884, 17.787191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.076183, 41.461895, 17.659876>,  <39.254749, 41.320900, 17.583487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.076183, 41.461895, 17.659876>,  <38.778576, 41.696884, 17.787191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076183, 41.461895, 17.659876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484566, -0.802408, 0.348335,
		-0.460034, -0.104937, -0.881678,
		0.744019, -0.587477, -0.318286,
		39.299389, 41.285652, 17.564390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441643, 41.157448, 17.358261>,  <38.778576, 41.696884, 17.787191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441643, 41.157448, 17.358261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.791969, 41.064255, 17.527332>,  <39.002167, 41.008339, 17.628775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.791969, 41.064255, 17.527332>,  <38.441643, 41.157448, 17.358261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791969, 41.064255, 17.527332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442104, -0.738589, 0.508951,
		0.193607, -0.632617, -0.749875,
		0.875820, -0.232986, 0.422678,
		39.054714, 40.994358, 17.654135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476807, 40.389088, 17.346416>,  <38.441643, 41.157448, 17.358261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476807, 40.389088, 17.346416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.724358, 40.515453, 17.634081>,  <38.872887, 40.591274, 17.806679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.724358, 40.515453, 17.634081>,  <38.476807, 40.389088, 17.346416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724358, 40.515453, 17.634081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309193, -0.743665, 0.592758,
		0.722076, -0.589202, -0.362556,
		0.618874, 0.315916, 0.719160,
		38.910019, 40.610229, 17.849829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762154, 39.748737, 17.576006>,  <38.476807, 40.389088, 17.346416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762154, 39.748737, 17.576006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.815468, 40.014877, 17.869822>,  <38.847458, 40.174561, 18.046112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.815468, 40.014877, 17.869822>,  <38.762154, 39.748737, 17.576006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815468, 40.014877, 17.869822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238784, -0.697761, 0.675360,
		0.961882, -0.265414, 0.065871,
		0.133288, 0.665346, 0.734541,
		38.855453, 40.214481, 18.090183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054668, 39.339535, 18.180218>,  <38.762154, 39.748737, 17.576006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054668, 39.339535, 18.180218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.919018, 39.678493, 18.343637>,  <38.837627, 39.881870, 18.441689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.919018, 39.678493, 18.343637>,  <39.054668, 39.339535, 18.180218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919018, 39.678493, 18.343637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286228, -0.506638, 0.813260,
		0.896140, 0.158860, 0.414363,
		-0.339126, 0.847397, 0.408549,
		38.817280, 39.932713, 18.466202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480415, 39.508762, 18.823385>,  <39.054668, 39.339535, 18.180218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480415, 39.508762, 18.823385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.122494, 39.686283, 18.842842>,  <38.907742, 39.792797, 18.854517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.122494, 39.686283, 18.842842>,  <39.480415, 39.508762, 18.823385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122494, 39.686283, 18.842842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180830, -0.459882, 0.869373,
		0.408198, 0.769123, 0.491757,
		-0.894804, 0.443801, 0.048642,
		38.854053, 39.819424, 18.857435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493610, 39.763657, 19.426470>,  <39.480415, 39.508762, 18.823385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493610, 39.763657, 19.426470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.097630, 39.746651, 19.372520>,  <38.860043, 39.736446, 19.340151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.097630, 39.746651, 19.372520>,  <39.493610, 39.763657, 19.426470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097630, 39.746651, 19.372520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109453, -0.373569, 0.921122,
		-0.089543, 0.926628, 0.365161,
		-0.989950, -0.042512, -0.134873,
		38.800644, 39.733898, 19.332058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113792, 40.193176, 19.981236>,  <39.493610, 39.763657, 19.426470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.113792, 40.193176, 19.981236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.863331, 39.920670, 19.829546>,  <38.713055, 39.757168, 19.738533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.863331, 39.920670, 19.829546>,  <39.113792, 40.193176, 19.981236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863331, 39.920670, 19.829546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227803, -0.305302, 0.924606,
		-0.745677, 0.665336, 0.035973,
		-0.626156, -0.681263, -0.379222,
		38.675484, 39.716290, 19.715778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678883, 40.178543, 20.586887>,  <39.113792, 40.193176, 19.981236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678883, 40.178543, 20.586887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.516171, 39.899509, 20.350952>,  <38.418545, 39.732090, 20.209391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.516171, 39.899509, 20.350952>,  <38.678883, 40.178543, 20.586887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516171, 39.899509, 20.350952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396057, -0.447165, 0.801986,
		-0.823206, 0.559842, -0.094384,
		-0.406781, -0.697581, -0.589839,
		38.394135, 39.690235, 20.174000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997963, 40.044712, 20.854076>,  <38.678883, 40.178543, 20.586887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997963, 40.044712, 20.854076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.108772, 39.728256, 20.635954>,  <38.175259, 39.538383, 20.505079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.108772, 39.728256, 20.635954>,  <37.997963, 40.044712, 20.854076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108772, 39.728256, 20.635954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290131, -0.609902, 0.737457,
		-0.916013, -0.046084, -0.398492,
		0.277026, -0.791135, -0.545308,
		38.191879, 39.490917, 20.472361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404167, 39.423267, 20.944580>,  <37.997963, 40.044712, 20.854076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404167, 39.423267, 20.944580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.744431, 39.257797, 20.814812>,  <37.948589, 39.158516, 20.736950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.744431, 39.257797, 20.814812>,  <37.404167, 39.423267, 20.944580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744431, 39.257797, 20.814812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027003, -0.650670, 0.758880,
		-0.525024, -0.636788, -0.564669,
		0.850659, -0.413678, -0.324422,
		37.999626, 39.133694, 20.717485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391304, 38.738636, 21.056543>,  <37.404167, 39.423267, 20.944580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391304, 38.738636, 21.056543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.789928, 38.727753, 21.025215>,  <38.029102, 38.721222, 21.006418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.789928, 38.727753, 21.025215>,  <37.391304, 38.738636, 21.056543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789928, 38.727753, 21.025215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017745, -0.852768, 0.521988,
		-0.080990, -0.521581, -0.849349,
		0.996557, -0.027204, -0.078321,
		38.088894, 38.719593, 21.001719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536575, 38.039787, 20.907730>,  <37.391304, 38.738636, 21.056543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536575, 38.039787, 20.907730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.865425, 38.213108, 21.055441>,  <38.062733, 38.317101, 21.144068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.865425, 38.213108, 21.055441>,  <37.536575, 38.039787, 20.907730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865425, 38.213108, 21.055441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048964, -0.700052, 0.712411,
		0.567201, -0.567608, -0.596745,
		0.822123, 0.433299, 0.369278,
		38.112061, 38.343098, 21.166224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803604, 37.427326, 21.220945>,  <37.536575, 38.039787, 20.907730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803604, 37.427326, 21.220945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.989239, 37.749069, 21.369343>,  <38.100620, 37.942116, 21.458382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.989239, 37.749069, 21.369343>,  <37.803604, 37.427326, 21.220945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989239, 37.749069, 21.369343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010617, -0.423850, 0.905670,
		0.885724, -0.416374, -0.205244,
		0.464090, 0.804353, 0.370994,
		38.128468, 37.990376, 21.480640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335983, 37.227463, 21.663185>,  <37.803604, 37.427326, 21.220945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335983, 37.227463, 21.663185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.223980, 37.585957, 21.800797>,  <38.156776, 37.801052, 21.883364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.223980, 37.585957, 21.800797>,  <38.335983, 37.227463, 21.663185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.223980, 37.585957, 21.800797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097655, -0.383098, 0.918531,
		0.955017, 0.223602, 0.194793,
		-0.280010, 0.896235, 0.344030,
		38.139977, 37.854828, 21.904005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744972, 37.457211, 22.233133>,  <38.335983, 37.227463, 21.663185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744972, 37.457211, 22.233133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.394772, 37.647411, 22.267523>,  <38.184650, 37.761532, 22.288157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.394772, 37.647411, 22.267523>,  <38.744972, 37.457211, 22.233133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394772, 37.647411, 22.267523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044097, -0.255800, 0.965723,
		0.481198, 0.841702, 0.244922,
		-0.875502, 0.475505, 0.085974,
		38.132122, 37.790062, 22.293316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.847797, 38.000740, 27.370628> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.497684, 38.064709, 27.188066>,  <39.287617, 38.103088, 27.078529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.497684, 38.064709, 27.188066>,  <39.847797, 38.000740, 27.370628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497684, 38.064709, 27.188066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436673, 0.144242, 0.887981,
		0.207837, 0.976535, -0.056421,
		-0.875283, 0.159918, -0.456405,
		39.235100, 38.112682, 27.051146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.638626, 38.641556, 27.613867>,  <39.847797, 38.000740, 27.370628>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.638626, 38.641556, 27.613867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.313015, 38.433163, 27.511154>,  <39.117649, 38.308128, 27.449526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.313015, 38.433163, 27.511154>,  <39.638626, 38.641556, 27.613867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313015, 38.433163, 27.511154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338781, 0.066773, 0.938493,
		-0.471793, 0.850951, -0.230854,
		-0.814026, -0.520983, -0.256783,
		39.068806, 38.276867, 27.434120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060452, 39.013355, 27.953260>,  <39.638626, 38.641556, 27.613867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060452, 39.013355, 27.953260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.919491, 38.644245, 27.890913>,  <38.834915, 38.422779, 27.853504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.919491, 38.644245, 27.890913>,  <39.060452, 39.013355, 27.953260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919491, 38.644245, 27.890913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488980, 0.039546, 0.871398,
		-0.797944, 0.383294, -0.465156,
		-0.352397, -0.922779, -0.155867,
		38.813770, 38.367413, 27.844152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289730, 38.996761, 28.100512>,  <39.060452, 39.013355, 27.953260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289730, 38.996761, 28.100512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.406559, 38.614208, 28.102142>,  <38.476658, 38.384674, 28.103121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.406559, 38.614208, 28.102142>,  <38.289730, 38.996761, 28.100512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406559, 38.614208, 28.102142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550052, -0.164494, 0.818770,
		-0.782390, -0.241385, -0.574107,
		0.292076, -0.956387, 0.004076,
		38.494183, 38.327293, 28.103365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728600, 38.559742, 28.222500>,  <38.289730, 38.996761, 28.100512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728600, 38.559742, 28.222500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.029171, 38.318741, 28.330088>,  <38.209515, 38.174141, 28.394640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.029171, 38.318741, 28.330088>,  <37.728600, 38.559742, 28.222500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029171, 38.318741, 28.330088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574088, -0.396076, 0.716621,
		-0.325231, -0.692905, -0.643512,
		0.751430, -0.602500, 0.268973,
		38.254601, 38.137989, 28.410780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407490, 38.016945, 28.362539>,  <37.728600, 38.559742, 28.222500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407490, 38.016945, 28.362539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.748737, 37.890369, 28.528458>,  <37.953484, 37.814423, 28.628008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.748737, 37.890369, 28.528458>,  <37.407490, 38.016945, 28.362539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748737, 37.890369, 28.528458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521024, -0.475694, 0.708696,
		-0.026945, -0.820719, -0.570696,
		0.853116, -0.316442, 0.414797,
		38.004673, 37.795437, 28.652897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374725, 37.365963, 28.494810>,  <37.407490, 38.016945, 28.362539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374725, 37.365963, 28.494810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.675011, 37.453609, 28.744104>,  <37.855183, 37.506199, 28.893681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.675011, 37.453609, 28.744104>,  <37.374725, 37.365963, 28.494810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.675011, 37.453609, 28.744104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485828, -0.456168, 0.745575,
		0.447668, -0.862496, -0.235997,
		0.750710, 0.219116, 0.623236,
		37.900223, 37.519344, 28.931076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534271, 36.696804, 28.809553>,  <37.374725, 37.365963, 28.494810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534271, 36.696804, 28.809553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.650837, 36.997334, 29.046396>,  <37.720776, 37.177650, 29.188501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.650837, 36.997334, 29.046396>,  <37.534271, 36.696804, 28.809553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650837, 36.997334, 29.046396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459852, -0.432736, 0.775420,
		0.838817, -0.498249, 0.219393,
		0.291413, 0.751324, 0.592107,
		37.738262, 37.222733, 29.224028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724838, 36.387108, 29.468739>,  <37.534271, 36.696804, 28.809553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724838, 36.387108, 29.468739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.676567, 36.769993, 29.573952>,  <37.647602, 36.999722, 29.637079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.676567, 36.769993, 29.573952>,  <37.724838, 36.387108, 29.468739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676567, 36.769993, 29.573952> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648501, -0.276634, 0.709169,
		0.751587, -0.084996, 0.654135,
		-0.120680, 0.957209, 0.263035,
		37.640362, 37.057156, 29.652863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689816, 36.316528, 30.241358>,  <37.724838, 36.387108, 29.468739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689816, 36.316528, 30.241358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.556122, 36.684238, 30.158190>,  <37.475906, 36.904865, 30.108290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.556122, 36.684238, 30.158190>,  <37.689816, 36.316528, 30.241358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556122, 36.684238, 30.158190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672373, -0.077975, 0.736094,
		0.660457, 0.385825, 0.644155,
		-0.334232, 0.919271, -0.207919,
		37.455853, 36.960018, 30.095814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872982, 36.790966, 30.794493>,  <37.689816, 36.316528, 30.241358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872982, 36.790966, 30.794493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.538883, 36.934334, 30.627689>,  <37.338425, 37.020355, 30.527607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.538883, 36.934334, 30.627689>,  <37.872982, 36.790966, 30.794493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538883, 36.934334, 30.627689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428229, 0.051729, 0.902188,
		0.344935, 0.932125, 0.110280,
		-0.835248, 0.358422, -0.417006,
		37.288307, 37.041859, 30.502588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633598, 37.361542, 31.229149>,  <37.872982, 36.790966, 30.794493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633598, 37.361542, 31.229149> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.309185, 37.272518, 31.012743>,  <37.114536, 37.219105, 30.882898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.309185, 37.272518, 31.012743>,  <37.633598, 37.361542, 31.229149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309185, 37.272518, 31.012743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527004, -0.123522, 0.840838,
		-0.253961, 0.967063, -0.017108,
		-0.811031, -0.222556, -0.541016,
		37.065876, 37.205750, 30.850439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054134, 37.633686, 31.606586>,  <37.633598, 37.361542, 31.229149>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054134, 37.633686, 31.606586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.897102, 37.358341, 31.362604>,  <36.802883, 37.193134, 31.216215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.897102, 37.358341, 31.362604>,  <37.054134, 37.633686, 31.606586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897102, 37.358341, 31.362604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479245, -0.412939, 0.774471,
		-0.784988, 0.596358, -0.167781,
		-0.392579, -0.688359, -0.609954,
		36.779327, 37.151833, 31.179619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.286572, 37.349957, 31.537365>,  <37.054134, 37.633686, 31.606586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.286572, 37.349957, 31.537365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.155159, 37.633434, 31.787107>,  <36.076313, 37.803520, 31.936953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.155159, 37.633434, 31.787107>,  <36.286572, 37.349957, 31.537365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155159, 37.633434, 31.787107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091686, 0.681856, -0.725718,
		-0.940033, -0.181175, -0.288987,
		-0.328529, 0.708694, 0.624356,
		36.056599, 37.846043, 31.974415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788975, 37.785374, 31.179024>,  <36.286572, 37.349957, 31.537365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788975, 37.785374, 31.179024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.951057, 37.999096, 31.475760>,  <36.048309, 38.127327, 31.653801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.951057, 37.999096, 31.475760>,  <35.788975, 37.785374, 31.179024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951057, 37.999096, 31.475760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067271, 0.791816, -0.607044,
		-0.911746, 0.295884, 0.284908,
		0.405209, 0.534303, 0.741839,
		36.072620, 38.159386, 31.698311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459332, 38.441242, 31.219698>,  <35.788975, 37.785374, 31.179024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459332, 38.441242, 31.219698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.812759, 38.531799, 31.383677>,  <36.024815, 38.586136, 31.482063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.812759, 38.531799, 31.383677>,  <35.459332, 38.441242, 31.219698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812759, 38.531799, 31.383677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061062, 0.812212, -0.580158,
		-0.464307, 0.537641, 0.703819,
		0.883567, 0.226394, 0.409945,
		36.077831, 38.599716, 31.506660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414989, 39.098366, 31.492294>,  <35.459332, 38.441242, 31.219698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414989, 39.098366, 31.492294> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.801460, 39.030029, 31.415037>,  <36.033344, 38.989025, 31.368683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.801460, 39.030029, 31.415037>,  <35.414989, 39.098366, 31.492294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801460, 39.030029, 31.415037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045089, 0.849415, -0.525796,
		0.253890, 0.499306, 0.828392,
		0.966182, -0.170846, -0.193144,
		36.091316, 38.978775, 31.357094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781219, 39.758911, 31.632486>,  <35.414989, 39.098366, 31.492294>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781219, 39.758911, 31.632486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.059891, 39.576511, 31.410961>,  <36.227093, 39.467072, 31.278046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.059891, 39.576511, 31.410961>,  <35.781219, 39.758911, 31.632486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059891, 39.576511, 31.410961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078810, 0.815965, -0.572704,
		0.713043, 0.355344, 0.604401,
		0.696677, -0.455996, -0.553813,
		36.268894, 39.439713, 31.244818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173325, 40.259647, 31.544956>,  <35.781219, 39.758911, 31.632486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173325, 40.259647, 31.544956> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.268600, 39.988903, 31.266352>,  <36.325764, 39.826458, 31.099190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.268600, 39.988903, 31.266352>,  <36.173325, 40.259647, 31.544956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268600, 39.988903, 31.266352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060308, 0.705458, -0.706181,
		0.969346, 0.210207, 0.127209,
		0.238185, -0.676862, -0.696510,
		36.340057, 39.785843, 31.057398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596386, 40.596611, 31.091909>,  <36.173325, 40.259647, 31.544956>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596386, 40.596611, 31.091909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.486717, 40.289864, 30.859791>,  <36.420914, 40.105816, 30.720520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.486717, 40.289864, 30.859791>,  <36.596386, 40.596611, 31.091909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486717, 40.289864, 30.859791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043826, 0.612758, -0.789055,
		0.960681, -0.190906, -0.201611,
		-0.274173, -0.766866, -0.580298,
		36.404465, 40.059803, 30.685701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925846, 40.732716, 30.409527>,  <36.596386, 40.596611, 31.091909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925846, 40.732716, 30.409527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.648388, 40.460869, 30.314041>,  <36.481915, 40.297760, 30.256750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.648388, 40.460869, 30.314041>,  <36.925846, 40.732716, 30.409527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648388, 40.460869, 30.314041> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171713, 0.477858, -0.861490,
		0.699553, -0.556576, -0.448162,
		-0.693643, -0.679613, -0.238716,
		36.440296, 40.256985, 30.242426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979546, 40.472782, 29.693968>,  <36.925846, 40.732716, 30.409527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979546, 40.472782, 29.693968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.588570, 40.422974, 29.762211>,  <36.353985, 40.393089, 29.803156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.588570, 40.422974, 29.762211>,  <36.979546, 40.472782, 29.693968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588570, 40.422974, 29.762211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192798, 0.196096, -0.961444,
		0.086263, -0.972646, -0.215679,
		-0.977439, -0.124520, 0.170609,
		36.295338, 40.385616, 29.813393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704273, 40.151279, 29.103003>,  <36.979546, 40.472782, 29.693968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704273, 40.151279, 29.103003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.332973, 40.213078, 29.238340>,  <36.110191, 40.250156, 29.319544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.332973, 40.213078, 29.238340>,  <36.704273, 40.151279, 29.103003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332973, 40.213078, 29.238340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306594, 0.197193, -0.931190,
		-0.210585, -0.968115, -0.135677,
		-0.928253, 0.154497, 0.338344,
		36.054497, 40.259426, 29.339844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289627, 39.724510, 28.680748>,  <36.704273, 40.151279, 29.103003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289627, 39.724510, 28.680748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.086945, 40.044247, 28.809933>,  <35.965336, 40.236088, 28.887444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.086945, 40.044247, 28.809933>,  <36.289627, 39.724510, 28.680748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086945, 40.044247, 28.809933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255571, 0.218500, -0.941776,
		-0.823365, -0.559745, 0.093572,
		-0.506708, 0.799340, 0.322960,
		35.934933, 40.284050, 28.906820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596085, 39.689812, 28.379532>,  <36.289627, 39.724510, 28.680748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596085, 39.689812, 28.379532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.651173, 40.073647, 28.477703>,  <35.684223, 40.303947, 28.536606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.651173, 40.073647, 28.477703>,  <35.596085, 39.689812, 28.379532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651173, 40.073647, 28.477703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191255, 0.268886, -0.943992,
		-0.971831, 0.083064, 0.220555,
		0.137716, 0.959584, 0.245426,
		35.692486, 40.361523, 28.551331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125740, 40.037388, 28.099361>,  <35.596085, 39.689812, 28.379532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125740, 40.037388, 28.099361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.390995, 40.330734, 28.159256>,  <35.550148, 40.506741, 28.195192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.390995, 40.330734, 28.159256>,  <35.125740, 40.037388, 28.099361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390995, 40.330734, 28.159256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062949, 0.253982, -0.965158,
		-0.745845, 0.630608, 0.214589,
		0.663138, 0.733367, 0.149735,
		35.589935, 40.550743, 28.204176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826981, 40.774799, 27.829636>,  <35.125740, 40.037388, 28.099361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826981, 40.774799, 27.829636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.226082, 40.801491, 27.827536>,  <35.465542, 40.817505, 27.826275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.226082, 40.801491, 27.827536>,  <34.826981, 40.774799, 27.829636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226082, 40.801491, 27.827536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024012, 0.283571, -0.958650,
		-0.062484, 0.956626, 0.284538,
		0.997757, 0.066733, -0.005252,
		35.525410, 40.821510, 27.825960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066280, 41.497253, 27.686743>,  <34.826981, 40.774799, 27.829636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066280, 41.497253, 27.686743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.394032, 41.296055, 27.576752>,  <35.590683, 41.175335, 27.510757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.394032, 41.296055, 27.576752>,  <35.066280, 41.497253, 27.686743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394032, 41.296055, 27.576752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096233, 0.593567, -0.799011,
		0.565118, 0.628230, 0.534760,
		0.819378, -0.502997, -0.274979,
		35.639847, 41.145157, 27.494259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845524, 42.207222, 27.616131>,  <35.066280, 41.497253, 27.686743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845524, 42.207222, 27.616131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.519970, 42.352215, 27.434490>,  <34.324638, 42.439209, 27.325506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.519970, 42.352215, 27.434490>,  <34.845524, 42.207222, 27.616131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.519970, 42.352215, 27.434490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579065, -0.441769, 0.685218,
		0.047769, 0.820640, 0.569446,
		-0.813881, 0.362479, -0.454100,
		34.275806, 42.460957, 27.298260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445763, 42.480648, 28.126894>,  <34.845524, 42.207222, 27.616131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445763, 42.480648, 28.126894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.207634, 42.377014, 27.822664>,  <34.064758, 42.314835, 27.640127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.207634, 42.377014, 27.822664>,  <34.445763, 42.480648, 28.126894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207634, 42.377014, 27.822664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571028, -0.529513, 0.627330,
		-0.565265, 0.807769, 0.167284,
		-0.595317, -0.259084, -0.760574,
		34.029037, 42.299290, 27.594492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818905, 42.652885, 28.295967>,  <34.445763, 42.480648, 28.126894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818905, 42.652885, 28.295967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.749630, 42.373337, 28.018381>,  <33.708065, 42.205608, 27.851830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.749630, 42.373337, 28.018381>,  <33.818905, 42.652885, 28.295967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749630, 42.373337, 28.018381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478722, -0.556044, 0.679441,
		-0.860716, 0.449888, -0.238263,
		-0.173188, -0.698867, -0.693967,
		33.697674, 42.163677, 27.810190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.172379, 42.346714, 28.449654>,  <33.818905, 42.652885, 28.295967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.172379, 42.346714, 28.449654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.355179, 42.049267, 28.254440>,  <33.464859, 41.870796, 28.137312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.355179, 42.049267, 28.254440>,  <33.172379, 42.346714, 28.449654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.355179, 42.049267, 28.254440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402167, -0.662144, 0.632318,
		-0.793353, -0.092702, -0.601662,
		0.457004, -0.743620, -0.488033,
		33.492279, 41.826180, 28.108030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686375, 41.900703, 28.556271>,  <33.172379, 42.346714, 28.449654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686375, 41.900703, 28.556271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.925957, 41.657803, 28.347466>,  <33.069706, 41.512062, 28.222181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.925957, 41.657803, 28.347466>,  <32.686375, 41.900703, 28.556271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925957, 41.657803, 28.347466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498506, -0.792914, 0.350399,
		-0.626692, 0.050354, -0.777638,
		0.598956, -0.607250, -0.522015,
		33.105644, 41.475628, 28.190861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216557, 41.436329, 28.185900>,  <32.686375, 41.900703, 28.556271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216557, 41.436329, 28.185900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.573704, 41.258247, 28.212975>,  <32.787991, 41.151398, 28.229219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.573704, 41.258247, 28.212975>,  <32.216557, 41.436329, 28.185900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573704, 41.258247, 28.212975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444229, -0.846156, 0.294415,
		-0.073801, -0.292942, -0.953278,
		0.892869, -0.445202, 0.067686,
		32.841564, 41.124687, 28.233280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224274, 40.757858, 27.862572>,  <32.216557, 41.436329, 28.185900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224274, 40.757858, 27.862572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.504330, 40.741169, 28.147686>,  <32.672363, 40.731155, 28.318754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.504330, 40.741169, 28.147686>,  <32.224274, 40.757858, 27.862572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504330, 40.741169, 28.147686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344287, -0.894297, 0.285830,
		0.625515, -0.445524, -0.640499,
		0.700141, -0.041725, 0.712784,
		32.714371, 40.728653, 28.361521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392399, 40.092258, 27.836264>,  <32.224274, 40.757858, 27.862572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392399, 40.092258, 27.836264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.592892, 40.197674, 28.165947>,  <32.713188, 40.260921, 28.363756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.592892, 40.197674, 28.165947>,  <32.392399, 40.092258, 27.836264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592892, 40.197674, 28.165947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033382, -0.945897, 0.322744,
		0.864671, -0.189282, -0.465313,
		0.501228, 0.263534, 0.824209,
		32.743259, 40.276733, 28.413210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941505, 39.657959, 27.879190>,  <32.392399, 40.092258, 27.836264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941505, 39.657959, 27.879190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.838612, 39.775391, 28.247461>,  <32.776875, 39.845848, 28.468424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.838612, 39.775391, 28.247461>,  <32.941505, 39.657959, 27.879190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838612, 39.775391, 28.247461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067058, -0.955862, 0.286060,
		0.964019, 0.011846, 0.265568,
		-0.257235, 0.293576, 0.920676,
		32.761440, 39.863464, 28.523664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332050, 39.240902, 28.372576>,  <32.941505, 39.657959, 27.879190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332050, 39.240902, 28.372576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.021664, 39.397465, 28.570436>,  <32.835430, 39.491402, 28.689154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.021664, 39.397465, 28.570436>,  <33.332050, 39.240902, 28.372576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.021664, 39.397465, 28.570436> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190171, -0.892874, 0.408180,
		0.601425, 0.222665, 0.767273,
		-0.775965, 0.391403, 0.494652,
		32.788876, 39.514885, 28.718832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328259, 38.966335, 29.082342>,  <33.332050, 39.240902, 28.372576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328259, 38.966335, 29.082342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.951958, 39.093510, 29.035189>,  <32.726177, 39.169815, 29.006897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.951958, 39.093510, 29.035189>,  <33.328259, 38.966335, 29.082342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951958, 39.093510, 29.035189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331507, -0.789279, 0.516858,
		0.071283, 0.525317, 0.847916,
		-0.940756, 0.317933, -0.117884,
		32.669731, 39.188889, 28.999823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960651, 38.946770, 29.747272>,  <33.328259, 38.966335, 29.082342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960651, 38.946770, 29.747272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.684151, 38.911922, 29.460335>,  <32.518250, 38.891014, 29.288172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.684151, 38.911922, 29.460335>,  <32.960651, 38.946770, 29.747272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.684151, 38.911922, 29.460335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527384, -0.617824, 0.583232,
		-0.494005, 0.781475, 0.381124,
		-0.691249, -0.087121, -0.717346,
		32.476776, 38.885788, 29.245131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.313595, 44.290340, 24.433716> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000225, 44.106037, 24.266884>,  <35.812202, 43.995457, 24.166784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000225, 44.106037, 24.266884>,  <36.313595, 44.290340, 24.433716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000225, 44.106037, 24.266884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317728, -0.279835, 0.905948,
		-0.534137, 0.842255, 0.072833,
		-0.783420, -0.460759, -0.417078,
		35.765198, 43.967808, 24.141760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704082, 44.619793, 24.799099>,  <36.313595, 44.290340, 24.433716>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704082, 44.619793, 24.799099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555527, 44.284073, 24.640278>,  <35.466393, 44.082642, 24.544985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555527, 44.284073, 24.640278>,  <35.704082, 44.619793, 24.799099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555527, 44.284073, 24.640278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475010, -0.195688, 0.857947,
		-0.797771, 0.507234, -0.325999,
		-0.371386, -0.839297, -0.397055,
		35.444111, 44.032284, 24.521162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986874, 44.575546, 25.074211>,  <35.704082, 44.619793, 24.799099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986874, 44.575546, 25.074211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077477, 44.206093, 24.950542>,  <35.131840, 43.984421, 24.876341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077477, 44.206093, 24.950542>,  <34.986874, 44.575546, 25.074211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077477, 44.206093, 24.950542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483007, -0.382159, 0.787819,
		-0.845813, -0.029113, -0.532685,
		0.226507, -0.923638, -0.309173,
		35.145428, 43.929001, 24.857790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340065, 44.256409, 25.097811>,  <34.986874, 44.575546, 25.074211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340065, 44.256409, 25.097811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631054, 43.983082, 25.122667>,  <34.805649, 43.819088, 25.137581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631054, 43.983082, 25.122667>,  <34.340065, 44.256409, 25.097811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631054, 43.983082, 25.122667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469350, -0.429521, 0.771507,
		-0.500494, -0.590415, -0.633179,
		0.727472, -0.683317, 0.062139,
		34.849297, 43.778088, 25.141310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040363, 43.564960, 25.181717>,  <34.340065, 44.256409, 25.097811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040363, 43.564960, 25.181717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409584, 43.548752, 25.334728>,  <34.631119, 43.539024, 25.426535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409584, 43.548752, 25.334728>,  <34.040363, 43.564960, 25.181717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409584, 43.548752, 25.334728> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359586, -0.444113, 0.820647,
		0.136630, -0.895054, -0.424512,
		0.923055, -0.040523, 0.382529,
		34.686501, 43.536594, 25.449486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981152, 42.857021, 25.364534>,  <34.040363, 43.564960, 25.181717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981152, 42.857021, 25.364534> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298084, 43.000000, 25.562302>,  <34.488243, 43.085789, 25.680962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298084, 43.000000, 25.562302>,  <33.981152, 42.857021, 25.364534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298084, 43.000000, 25.562302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214317, -0.595677, 0.774104,
		0.571214, -0.719306, -0.395364,
		0.792327, 0.357446, 0.494419,
		34.535782, 43.107235, 25.710627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447208, 42.279312, 25.547770>,  <33.981152, 42.857021, 25.364534>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447208, 42.279312, 25.547770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505497, 42.588856, 25.794313>,  <34.540470, 42.774582, 25.942240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505497, 42.588856, 25.794313>,  <34.447208, 42.279312, 25.547770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.505497, 42.588856, 25.794313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021835, -0.620343, 0.784027,
		0.989084, -0.127710, -0.073502,
		0.145725, 0.773864, 0.616360,
		34.549213, 42.821014, 25.979221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690178, 41.941818, 26.115877>,  <34.447208, 42.279312, 25.547770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690178, 41.941818, 26.115877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586979, 42.295803, 26.270939>,  <34.525059, 42.508194, 26.363976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586979, 42.295803, 26.270939>,  <34.690178, 41.941818, 26.115877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586979, 42.295803, 26.270939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256234, -0.449545, 0.855718,
		0.931548, 0.121441, 0.342738,
		-0.257995, 0.884964, 0.387656,
		34.509579, 42.561291, 26.387236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922375, 42.007179, 26.858280>,  <34.690178, 41.941818, 26.115877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922375, 42.007179, 26.858280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658146, 42.307426, 26.864140>,  <34.499611, 42.487576, 26.867655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.658146, 42.307426, 26.864140>,  <34.922375, 42.007179, 26.858280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658146, 42.307426, 26.864140> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443997, -0.406315, 0.798608,
		0.605404, 0.521033, 0.601673,
		-0.660570, 0.750621, 0.014647,
		34.459976, 42.532612, 26.868534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511257, 42.026737, 27.244543>,  <34.922375, 42.007179, 26.858280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511257, 42.026737, 27.244543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687393, 41.671051, 27.194925>,  <35.793076, 41.457638, 27.165154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687393, 41.671051, 27.194925>,  <35.511257, 42.026737, 27.244543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687393, 41.671051, 27.194925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240252, 0.249825, -0.938012,
		0.865089, 0.383244, 0.323645,
		0.440342, -0.889220, -0.124046,
		35.819496, 41.404285, 27.157711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089813, 42.129295, 26.875538>,  <35.511257, 42.026737, 27.244543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089813, 42.129295, 26.875538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040039, 41.739574, 26.800432>,  <36.010174, 41.505741, 26.755369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040039, 41.739574, 26.800432>,  <36.089813, 42.129295, 26.875538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040039, 41.739574, 26.800432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342385, 0.135447, -0.929745,
		0.931283, -0.179979, 0.316732,
		-0.124434, -0.974301, -0.187762,
		36.002708, 41.447285, 26.744104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726910, 41.863396, 26.554756>,  <36.089813, 42.129295, 26.875538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726910, 41.863396, 26.554756> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433048, 41.605564, 26.470083>,  <36.256733, 41.450867, 26.419279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433048, 41.605564, 26.470083>,  <36.726910, 41.863396, 26.554756>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433048, 41.605564, 26.470083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264117, 0.015679, -0.964363,
		0.624926, -0.764378, 0.158725,
		-0.734650, -0.644578, -0.211683,
		36.212654, 41.412189, 26.406578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043182, 41.370388, 26.218590>,  <36.726910, 41.863396, 26.554756>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043182, 41.370388, 26.218590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663761, 41.294746, 26.117008>,  <36.436108, 41.249359, 26.056059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663761, 41.294746, 26.117008>,  <37.043182, 41.370388, 26.218590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663761, 41.294746, 26.117008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296737, -0.251125, -0.921349,
		0.110460, -0.949302, 0.294320,
		-0.948549, -0.189108, -0.253954,
		36.379196, 41.238014, 26.040821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050579, 40.690201, 26.039448>,  <37.043182, 41.370388, 26.218590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050579, 40.690201, 26.039448> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725407, 40.847771, 25.867884>,  <36.530304, 40.942310, 25.764946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725407, 40.847771, 25.867884>,  <37.050579, 40.690201, 26.039448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725407, 40.847771, 25.867884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311507, -0.328141, -0.891789,
		-0.492037, -0.858574, 0.144048,
		-0.812935, 0.393921, -0.428909,
		36.481525, 40.965946, 25.739210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892029, 40.259510, 25.433161>,  <37.050579, 40.690201, 26.039448>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892029, 40.259510, 25.433161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732689, 40.623817, 25.389668>,  <36.637085, 40.842400, 25.363571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732689, 40.623817, 25.389668>,  <36.892029, 40.259510, 25.433161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732689, 40.623817, 25.389668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398068, 0.064860, -0.915060,
		-0.826351, -0.407801, -0.388384,
		-0.398353, 0.910764, -0.108736,
		36.613182, 40.897045, 25.357046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522728, 40.225311, 24.857531>,  <36.892029, 40.259510, 25.433161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522728, 40.225311, 24.857531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594669, 40.617718, 24.886538>,  <36.637833, 40.853161, 24.903942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594669, 40.617718, 24.886538>,  <36.522728, 40.225311, 24.857531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594669, 40.617718, 24.886538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367797, 0.001313, -0.929905,
		-0.912348, 0.193916, -0.360579,
		0.179850, 0.981017, 0.072519,
		36.648624, 40.912022, 24.908293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276497, 40.422222, 24.235682>,  <36.522728, 40.225311, 24.857531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276497, 40.422222, 24.235682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513725, 40.716038, 24.367577>,  <36.656063, 40.892326, 24.446714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513725, 40.716038, 24.367577>,  <36.276497, 40.422222, 24.235682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513725, 40.716038, 24.367577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444747, 0.042524, -0.894646,
		-0.671171, 0.677237, -0.301462,
		0.593068, 0.734535, 0.329740,
		36.691647, 40.936398, 24.466499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329945, 40.925144, 23.638336>,  <36.276497, 40.422222, 24.235682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329945, 40.925144, 23.638336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640724, 41.030125, 23.867233>,  <36.827194, 41.093113, 24.004572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640724, 41.030125, 23.867233>,  <36.329945, 40.925144, 23.638336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640724, 41.030125, 23.867233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508074, 0.275350, -0.816115,
		-0.371758, 0.924825, 0.080589,
		0.776953, 0.262452, 0.572243,
		36.873810, 41.108860, 24.038906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540085, 41.676754, 23.641005>,  <36.329945, 40.925144, 23.638336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540085, 41.676754, 23.641005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863186, 41.466347, 23.747475>,  <37.057045, 41.340103, 23.811356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863186, 41.466347, 23.747475>,  <36.540085, 41.676754, 23.641005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863186, 41.466347, 23.747475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504058, 0.382093, -0.774552,
		0.305724, 0.759810, 0.573778,
		0.807749, -0.526017, 0.266174,
		37.105511, 41.308540, 23.827326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079159, 42.141144, 23.483917>,  <36.540085, 41.676754, 23.641005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079159, 42.141144, 23.483917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253223, 41.781136, 23.493685>,  <37.357662, 41.565132, 23.499544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253223, 41.781136, 23.493685>,  <37.079159, 42.141144, 23.483917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253223, 41.781136, 23.493685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587696, 0.263398, -0.765007,
		0.682090, 0.347253, 0.643559,
		0.435163, -0.900020, 0.024418,
		37.383774, 41.511131, 23.501011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681061, 42.288738, 23.493893>,  <37.079159, 42.141144, 23.483917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681061, 42.288738, 23.493893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684734, 41.901035, 23.395535>,  <37.686939, 41.668415, 23.336519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684734, 41.901035, 23.395535>,  <37.681061, 42.288738, 23.493893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684734, 41.901035, 23.395535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766282, 0.164806, -0.621008,
		0.642439, -0.182721, 0.744235,
		0.009183, -0.969253, -0.245894,
		37.687489, 41.610260, 23.321766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379406, 41.932182, 23.537077>,  <37.681061, 42.288738, 23.493893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379406, 41.932182, 23.537077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178177, 41.715385, 23.267807>,  <38.057438, 41.585308, 23.106245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178177, 41.715385, 23.267807>,  <38.379406, 41.932182, 23.537077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178177, 41.715385, 23.267807> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717195, 0.172814, -0.675105,
		0.482233, -0.822426, 0.301773,
		-0.503073, -0.541988, -0.673176,
		38.027256, 41.552788, 23.065853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837914, 41.362049, 23.126465>,  <38.379406, 41.932182, 23.537077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837914, 41.362049, 23.126465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505329, 41.428425, 22.914377>,  <38.305779, 41.468250, 22.787125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505329, 41.428425, 22.914377>,  <38.837914, 41.362049, 23.126465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505329, 41.428425, 22.914377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540259, 0.018927, -0.841286,
		-0.129565, -0.985955, -0.105386,
		-0.831465, 0.165937, -0.530218,
		38.255890, 41.478207, 22.755312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.364037, 38.994770, 20.487003> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.428555, 39.343418, 20.672157>,  <35.467266, 39.552608, 20.783249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.428555, 39.343418, 20.672157>,  <35.364037, 38.994770, 20.487003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428555, 39.343418, 20.672157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446066, -0.353996, 0.822017,
		0.880346, -0.339063, 0.331703,
		0.161294, 0.871620, 0.462884,
		35.476944, 39.604904, 20.811022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403053, 38.760994, 21.120714>,  <35.364037, 38.994770, 20.487003>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403053, 38.760994, 21.120714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.395367, 39.157673, 21.171560>,  <35.390755, 39.395679, 21.202068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.395367, 39.157673, 21.171560>,  <35.403053, 38.760994, 21.120714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395367, 39.157673, 21.171560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306005, -0.126871, 0.943538,
		0.951836, -0.020768, 0.305904,
		-0.019215, 0.991702, 0.127116,
		35.389603, 39.455185, 21.209696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846333, 38.915470, 21.699192>,  <35.403053, 38.760994, 21.120714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846333, 38.915470, 21.699192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.598347, 39.226246, 21.655363>,  <35.449554, 39.412712, 21.629066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.598347, 39.226246, 21.655363>,  <35.846333, 38.915470, 21.699192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598347, 39.226246, 21.655363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368329, -0.164877, 0.914959,
		0.692801, 0.607603, 0.388388,
		-0.619968, 0.776939, -0.109571,
		35.412357, 39.459328, 21.622492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976650, 39.296871, 22.281586>,  <35.846333, 38.915470, 21.699192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976650, 39.296871, 22.281586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.610355, 39.393391, 22.153084>,  <35.390579, 39.451302, 22.075983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.610355, 39.393391, 22.153084>,  <35.976650, 39.296871, 22.281586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610355, 39.393391, 22.153084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374697, -0.224288, 0.899610,
		0.145020, 0.944177, 0.295802,
		-0.915736, 0.241297, -0.321254,
		35.335636, 39.465778, 22.056707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676781, 39.794498, 22.795082>,  <35.976650, 39.296871, 22.281586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676781, 39.794498, 22.795082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.375050, 39.641449, 22.581694>,  <35.194012, 39.549618, 22.453661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.375050, 39.641449, 22.581694>,  <35.676781, 39.794498, 22.795082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375050, 39.641449, 22.581694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527060, -0.131515, 0.839590,
		-0.391408, 0.914495, -0.102461,
		-0.754326, -0.382625, -0.533470,
		35.148750, 39.526661, 22.421652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134308, 39.989075, 23.206221>,  <35.676781, 39.794498, 22.795082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134308, 39.989075, 23.206221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.019394, 39.687046, 22.970480>,  <34.950443, 39.505829, 22.829035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.019394, 39.687046, 22.970480>,  <35.134308, 39.989075, 23.206221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019394, 39.687046, 22.970480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555655, -0.369801, 0.744644,
		-0.780200, 0.541405, -0.313318,
		-0.287289, -0.755068, -0.589354,
		34.933208, 39.460526, 22.793674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435753, 39.991165, 23.273075>,  <35.134308, 39.989075, 23.206221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435753, 39.991165, 23.273075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.481434, 39.617085, 23.138998>,  <34.508842, 39.392635, 23.058552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.481434, 39.617085, 23.138998>,  <34.435753, 39.991165, 23.273075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481434, 39.617085, 23.138998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317642, -0.354066, 0.879626,
		-0.941308, 0.006012, -0.337496,
		0.114207, -0.935201, -0.335195,
		34.515697, 39.336525, 23.038439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806995, 39.691429, 23.420412>,  <34.435753, 39.991165, 23.273075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806995, 39.691429, 23.420412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.095470, 39.419365, 23.367849>,  <34.268555, 39.256126, 23.336311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.095470, 39.419365, 23.367849>,  <33.806995, 39.691429, 23.420412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095470, 39.419365, 23.367849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331739, -0.505623, 0.796426,
		-0.608141, -0.530780, -0.590286,
		0.721188, -0.680160, -0.131410,
		34.311829, 39.215317, 23.328426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403923, 39.150753, 23.677931>,  <33.806995, 39.691429, 23.420412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403923, 39.150753, 23.677931> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.781734, 39.020077, 23.664474>,  <34.008423, 38.941669, 23.656401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.781734, 39.020077, 23.664474>,  <33.403923, 39.150753, 23.677931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781734, 39.020077, 23.664474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168958, -0.571202, 0.803232,
		-0.281628, -0.752993, -0.594716,
		0.944531, -0.326694, -0.033642,
		34.065094, 38.922070, 23.654383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442265, 38.420254, 23.658657>,  <33.403923, 39.150753, 23.677931>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442265, 38.420254, 23.658657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.796909, 38.519314, 23.814905>,  <34.009697, 38.578751, 23.908655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.796909, 38.519314, 23.814905>,  <33.442265, 38.420254, 23.658657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796909, 38.519314, 23.814905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157883, -0.631776, 0.758902,
		0.434731, -0.734524, -0.521040,
		0.886612, 0.247655, 0.390622,
		34.062893, 38.593609, 23.932091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483875, 37.839497, 24.032578>,  <33.442265, 38.420254, 23.658657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483875, 37.839497, 24.032578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.772270, 38.082790, 24.165384>,  <33.945309, 38.228767, 24.245068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.772270, 38.082790, 24.165384>,  <33.483875, 37.839497, 24.032578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772270, 38.082790, 24.165384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074133, -0.408685, 0.909660,
		0.688973, -0.680465, -0.249566,
		0.720986, 0.608230, 0.332018,
		33.988567, 38.265259, 24.264990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908699, 37.367569, 24.224112>,  <33.483875, 37.839497, 24.032578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908699, 37.367569, 24.224112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.977276, 37.706821, 24.424625>,  <34.018421, 37.910374, 24.544933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.977276, 37.706821, 24.424625>,  <33.908699, 37.367569, 24.224112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977276, 37.706821, 24.424625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100258, -0.521195, 0.847528,
		0.980080, -0.095042, -0.174385,
		0.171439, 0.848129, 0.501285,
		34.028709, 37.961262, 24.575010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496918, 37.146030, 24.723368>,  <33.908699, 37.367569, 24.224112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496918, 37.146030, 24.723368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.357712, 37.501518, 24.842741>,  <34.274189, 37.714809, 24.914364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.357712, 37.501518, 24.842741>,  <34.496918, 37.146030, 24.723368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357712, 37.501518, 24.842741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115940, -0.356687, 0.927002,
		0.930292, 0.288010, 0.227171,
		-0.348015, 0.888721, 0.298432,
		34.253307, 37.768135, 24.932270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875660, 37.332520, 25.324087>,  <34.496918, 37.146030, 24.723368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875660, 37.332520, 25.324087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.529671, 37.533089, 25.332026>,  <34.322075, 37.653431, 25.336788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.529671, 37.533089, 25.332026>,  <34.875660, 37.332520, 25.324087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529671, 37.533089, 25.332026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162281, -0.316933, 0.934462,
		0.474847, 0.805066, 0.355511,
		-0.864977, 0.501419, 0.019848,
		34.270176, 37.683514, 25.337980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618439, 37.558647, 25.591949>,  <34.875660, 37.332520, 25.324087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618439, 37.558647, 25.591949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.885891, 37.263466, 25.628529>,  <36.046360, 37.086357, 25.650476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.885891, 37.263466, 25.628529>,  <35.618439, 37.558647, 25.591949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885891, 37.263466, 25.628529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487062, 0.341706, -0.803746,
		0.561878, 0.581947, 0.587903,
		0.668628, -0.737953, 0.091447,
		36.086479, 37.042080, 25.655962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311314, 37.955921, 25.635969>,  <35.618439, 37.558647, 25.591949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311314, 37.955921, 25.635969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.382515, 37.566429, 25.579166>,  <36.425236, 37.332733, 25.545084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.382515, 37.566429, 25.579166>,  <36.311314, 37.955921, 25.635969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382515, 37.566429, 25.579166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668400, 0.225557, -0.708777,
		0.722188, 0.031247, 0.690991,
		0.178005, -0.973729, -0.142009,
		36.435917, 37.274311, 25.536564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098179, 37.934753, 25.506363>,  <36.311314, 37.955921, 25.635969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098179, 37.934753, 25.506363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.915550, 37.612556, 25.355247>,  <36.805973, 37.419239, 25.264578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.915550, 37.612556, 25.355247>,  <37.098179, 37.934753, 25.506363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915550, 37.612556, 25.355247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496022, 0.122054, -0.859689,
		0.738584, -0.579901, 0.343816,
		-0.456570, -0.805492, -0.377791,
		36.778580, 37.370911, 25.241911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608849, 37.488194, 25.233425>,  <37.098179, 37.934753, 25.506363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608849, 37.488194, 25.233425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.280937, 37.376106, 25.033649>,  <37.084190, 37.308853, 24.913784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.280937, 37.376106, 25.033649>,  <37.608849, 37.488194, 25.233425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280937, 37.376106, 25.033649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476982, 0.148552, -0.866268,
		0.316934, -0.948373, 0.011878,
		-0.819781, -0.280216, -0.499438,
		37.035004, 37.292042, 24.883818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.941185, 37.133507, 24.769062>,  <37.608849, 37.488194, 25.233425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.941185, 37.133507, 24.769062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.573624, 37.199131, 24.625565>,  <37.353088, 37.238506, 24.539467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.573624, 37.199131, 24.625565>,  <37.941185, 37.133507, 24.769062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573624, 37.199131, 24.625565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368373, 0.031546, -0.929143,
		-0.141123, -0.985945, -0.089425,
		-0.918905, 0.164065, -0.358744,
		37.297951, 37.248352, 24.517941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.847809, 36.678585, 24.179783>,  <37.941185, 37.133507, 24.769062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.847809, 36.678585, 24.179783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.589890, 36.973831, 24.100359>,  <37.435139, 37.150978, 24.052704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.589890, 36.973831, 24.100359>,  <37.847809, 36.678585, 24.179783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589890, 36.973831, 24.100359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424938, 0.130231, -0.895805,
		-0.635349, -0.661987, -0.397625,
		-0.644795, 0.738115, -0.198561,
		37.396450, 37.195267, 24.040791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714092, 36.602253, 23.501640>,  <37.847809, 36.678585, 24.179783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714092, 36.602253, 23.501640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.565784, 36.964436, 23.584282>,  <37.476799, 37.181744, 23.633867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.565784, 36.964436, 23.584282>,  <37.714092, 36.602253, 23.501640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565784, 36.964436, 23.584282> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328306, 0.335879, -0.882837,
		-0.868759, -0.259503, -0.421800,
		-0.370773, 0.905452, 0.206602,
		37.454552, 37.236073, 23.646263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283920, 36.804871, 22.921621>,  <37.714092, 36.602253, 23.501640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283920, 36.804871, 22.921621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.402355, 37.141205, 23.102873>,  <37.473415, 37.343006, 23.211624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.402355, 37.141205, 23.102873>,  <37.283920, 36.804871, 22.921621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402355, 37.141205, 23.102873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262388, 0.384549, -0.885028,
		-0.918415, 0.380938, -0.106767,
		0.296084, 0.840838, 0.453129,
		37.491180, 37.393456, 23.238811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878983, 37.414864, 22.634325>,  <37.283920, 36.804871, 22.921621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878983, 37.414864, 22.634325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.219250, 37.552658, 22.793165>,  <37.423412, 37.635334, 22.888470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.219250, 37.552658, 22.793165>,  <36.878983, 37.414864, 22.634325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219250, 37.552658, 22.793165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212381, 0.465790, -0.859031,
		-0.480886, 0.815091, 0.323073,
		0.850672, 0.344482, 0.397102,
		37.474453, 37.656002, 22.912296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891159, 37.995117, 22.370695>,  <36.878983, 37.414864, 22.634325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891159, 37.995117, 22.370695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.269382, 37.964203, 22.497150>,  <37.496315, 37.945652, 22.573025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.269382, 37.964203, 22.497150>,  <36.891159, 37.995117, 22.370695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269382, 37.964203, 22.497150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322097, 0.361316, -0.875045,
		-0.046596, 0.929235, 0.366540,
		0.945559, -0.077288, 0.316140,
		37.553051, 37.941017, 22.591991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166252, 38.694870, 22.309671>,  <36.891159, 37.995117, 22.370695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166252, 38.694870, 22.309671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.456501, 38.420151, 22.326584>,  <37.630650, 38.255322, 22.336731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.456501, 38.420151, 22.326584>,  <37.166252, 38.694870, 22.309671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456501, 38.420151, 22.326584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367133, 0.334454, -0.867960,
		0.581970, 0.645331, 0.494832,
		0.725620, -0.686795, 0.042280,
		37.674187, 38.214111, 22.339268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.868198, 39.113712, 22.250153>,  <37.166252, 38.694870, 22.309671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.868198, 39.113712, 22.250153> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.925728, 38.734352, 22.137119>,  <37.960247, 38.506737, 22.069300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.925728, 38.734352, 22.137119>,  <37.868198, 39.113712, 22.250153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925728, 38.734352, 22.137119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337071, 0.315424, -0.887069,
		0.930429, 0.032330, 0.365043,
		0.143823, -0.948400, -0.282582,
		37.968876, 38.449833, 22.052345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618603, 39.040169, 22.021255>,  <37.868198, 39.113712, 22.250153>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618603, 39.040169, 22.021255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.480534, 38.708565, 21.845259>,  <38.397694, 38.509602, 21.739660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.480534, 38.708565, 21.845259>,  <38.618603, 39.040169, 22.021255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480534, 38.708565, 21.845259> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367865, 0.311791, -0.876049,
		0.863442, -0.464245, 0.197343,
		-0.345171, -0.829013, -0.439993,
		38.376984, 38.459862, 21.713261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240433, 38.806702, 21.705229>,  <38.618603, 39.040169, 22.021255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240433, 38.806702, 21.705229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.905441, 38.690727, 21.519943>,  <38.704445, 38.621143, 21.408772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.905441, 38.690727, 21.519943>,  <39.240433, 38.806702, 21.705229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905441, 38.690727, 21.519943> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317275, 0.432182, -0.844130,
		0.444944, -0.853904, -0.269949,
		-0.837474, -0.289943, -0.463219,
		38.654198, 38.603748, 21.380980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879490, 38.808548, 21.502962>,  <39.240433, 38.806702, 21.705229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879490, 38.808548, 21.502962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.152443, 39.046467, 21.672937>,  <40.316216, 39.189217, 21.774923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.152443, 39.046467, 21.672937>,  <39.879490, 38.808548, 21.502962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152443, 39.046467, 21.672937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296015, -0.306676, 0.904613,
		0.668376, -0.743083, -0.033204,
		0.682385, 0.594792, 0.424939,
		40.357159, 39.224903, 21.800419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154007, 38.312584, 22.018379>,  <39.879490, 38.808548, 21.502962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154007, 38.312584, 22.018379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.278397, 38.681339, 22.110828>,  <40.353031, 38.902592, 22.166298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.278397, 38.681339, 22.110828>,  <40.154007, 38.312584, 22.018379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278397, 38.681339, 22.110828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177691, -0.182500, 0.967016,
		0.933661, -0.341782, 0.107059,
		0.310970, 0.921889, 0.231125,
		40.371689, 38.957905, 22.180166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664356, 38.203209, 22.531414>,  <40.154007, 38.312584, 22.018379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664356, 38.203209, 22.531414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.543407, 38.580620, 22.585577>,  <40.470840, 38.807064, 22.618074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.543407, 38.580620, 22.585577>,  <40.664356, 38.203209, 22.531414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543407, 38.580620, 22.585577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129001, -0.181256, 0.974939,
		0.944421, 0.277324, 0.176522,
		-0.302369, 0.943524, 0.135407,
		40.452698, 38.863678, 22.626200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056286, 38.433346, 23.125607>,  <40.664356, 38.203209, 22.531414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056286, 38.433346, 23.125607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.761795, 38.702999, 23.101892>,  <40.585098, 38.864792, 23.087664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.761795, 38.702999, 23.101892>,  <41.056286, 38.433346, 23.125607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761795, 38.702999, 23.101892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242646, -0.181187, 0.953044,
		0.631733, 0.716046, 0.296970,
		-0.736231, 0.674129, -0.059284,
		40.540924, 38.905239, 23.084106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186825, 38.917233, 23.692423>,  <41.056286, 38.433346, 23.125607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186825, 38.917233, 23.692423> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.800423, 38.943653, 23.592447>,  <40.568581, 38.959503, 23.532463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.800423, 38.943653, 23.592447>,  <41.186825, 38.917233, 23.692423>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800423, 38.943653, 23.592447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258417, -0.273537, 0.926498,
		-0.007173, 0.959591, 0.281307,
		-0.966007, 0.066049, -0.249937,
		40.510620, 38.963467, 23.517466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832901, 39.262718, 24.282766>,  <41.186825, 38.917233, 23.692423>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832901, 39.262718, 24.282766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.540844, 39.093819, 24.067881>,  <40.365608, 38.992481, 23.938950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.540844, 39.093819, 24.067881>,  <40.832901, 39.262718, 24.282766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540844, 39.093819, 24.067881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445442, -0.302052, 0.842820,
		-0.518144, 0.854677, 0.032455,
		-0.730143, -0.422246, -0.537215,
		40.321800, 38.967144, 23.906715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213108, 39.598919, 24.508312>,  <40.832901, 39.262718, 24.282766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213108, 39.598919, 24.508312> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.098255, 39.261292, 24.327158>,  <40.029343, 39.058716, 24.218466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.098255, 39.261292, 24.327158>,  <40.213108, 39.598919, 24.508312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.098255, 39.261292, 24.327158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542639, -0.246285, 0.803048,
		-0.789365, 0.476337, -0.387306,
		-0.287134, -0.844066, -0.452887,
		40.012115, 39.008072, 24.191292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430923, 39.611774, 24.425406>,  <40.213108, 39.598919, 24.508312>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430923, 39.611774, 24.425406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.561817, 39.233849, 24.431686>,  <39.640354, 39.007095, 24.435455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.561817, 39.233849, 24.431686>,  <39.430923, 39.611774, 24.425406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561817, 39.233849, 24.431686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487325, -0.154500, 0.859444,
		-0.809588, -0.288891, -0.510989,
		0.327233, -0.944813, 0.015702,
		39.659988, 38.950405, 24.436398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787868, 39.238930, 24.611431>,  <39.430923, 39.611774, 24.425406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787868, 39.238930, 24.611431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.088490, 38.986427, 24.688040>,  <39.268864, 38.834927, 24.734005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.088490, 38.986427, 24.688040>,  <38.787868, 39.238930, 24.611431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088490, 38.986427, 24.688040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454609, -0.285242, 0.843782,
		-0.478017, -0.721212, -0.501351,
		0.751552, -0.631261, 0.191519,
		39.313957, 38.797050, 24.745495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498974, 38.655560, 24.840302>,  <38.787868, 39.238930, 24.611431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498974, 38.655560, 24.840302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.877464, 38.610531, 24.961615>,  <39.104557, 38.583515, 25.034403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.877464, 38.610531, 24.961615>,  <38.498974, 38.655560, 24.840302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877464, 38.610531, 24.961615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316274, -0.518975, 0.794126,
		0.068003, -0.847345, -0.526671,
		0.946227, -0.112569, 0.303285,
		39.161331, 38.576759, 25.052601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519669, 37.993454, 25.133064>,  <38.498974, 38.655560, 24.840302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519669, 37.993454, 25.133064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.829941, 38.189587, 25.292011>,  <39.016102, 38.307266, 25.387379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.829941, 38.189587, 25.292011>,  <38.519669, 37.993454, 25.133064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829941, 38.189587, 25.292011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223333, -0.375626, 0.899460,
		0.590295, -0.786435, -0.181857,
		0.775677, 0.490332, 0.397367,
		39.062645, 38.336685, 25.411221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026543, 37.460205, 25.549892>,  <38.519669, 37.993454, 25.133064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026543, 37.460205, 25.549892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.099834, 37.836815, 25.663006>,  <39.143810, 38.062778, 25.730873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.099834, 37.836815, 25.663006>,  <39.026543, 37.460205, 25.549892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099834, 37.836815, 25.663006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045699, -0.279185, 0.959149,
		0.982008, -0.188666, -0.008127,
		0.183228, 0.941521, 0.282783,
		39.154804, 38.119270, 25.747841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427921, 37.386879, 26.168550>,  <39.026543, 37.460205, 25.549892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427921, 37.386879, 26.168550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.347672, 37.776623, 26.209288>,  <39.299522, 38.010468, 26.233730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.347672, 37.776623, 26.209288>,  <39.427921, 37.386879, 26.168550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347672, 37.776623, 26.209288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056337, -0.115258, 0.991737,
		0.978047, 0.193227, 0.078016,
		-0.200623, 0.974361, 0.101842,
		39.287483, 38.068932, 26.239840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790684, 37.530094, 26.740402>,  <39.427921, 37.386879, 26.168550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790684, 37.530094, 26.740402> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.525620, 37.823208, 26.678547>,  <39.366581, 37.999077, 26.641434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.525620, 37.823208, 26.678547>,  <39.790684, 37.530094, 26.740402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525620, 37.823208, 26.678547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220208, 0.006706, 0.975430,
		0.715813, 0.680432, 0.156920,
		-0.662661, 0.732781, -0.154637,
		39.326820, 38.043041, 26.632156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.056637, 41.024727, 22.503525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.714039, 41.216740, 22.427635>,  <38.508480, 41.331947, 22.382101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.714039, 41.216740, 22.427635>,  <39.056637, 41.024727, 22.503525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714039, 41.216740, 22.427635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305005, 0.174146, -0.936293,
		-0.416407, -0.859794, -0.295565,
		-0.856491, 0.480028, -0.189726,
		38.457092, 41.360748, 22.370718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770683, 40.732307, 21.908516>,  <39.056637, 41.024727, 22.503525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770683, 40.732307, 21.908516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.594955, 41.091530, 21.899632>,  <38.489517, 41.307064, 21.894300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.594955, 41.091530, 21.899632>,  <38.770683, 40.732307, 21.908516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594955, 41.091530, 21.899632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258847, 0.102873, -0.960425,
		-0.860230, -0.427684, -0.277653,
		-0.439321, 0.898056, -0.022211,
		38.463158, 41.360947, 21.892969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.272827, 40.791435, 21.253902>,  <38.770683, 40.732307, 21.908516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.272827, 40.791435, 21.253902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.372128, 41.159779, 21.374168>,  <38.431709, 41.380783, 21.446327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.372128, 41.159779, 21.374168>,  <38.272827, 40.791435, 21.253902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372128, 41.159779, 21.374168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269515, 0.232466, -0.934516,
		-0.930447, 0.313030, -0.190474,
		0.248252, 0.920854, 0.300664,
		38.446602, 41.436035, 21.464367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172546, 41.174606, 20.685966>,  <38.272827, 40.791435, 21.253902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172546, 41.174606, 20.685966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.409378, 41.410969, 20.905155>,  <38.551479, 41.552784, 21.036669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.409378, 41.410969, 20.905155>,  <38.172546, 41.174606, 20.685966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409378, 41.410969, 20.905155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472899, 0.295827, -0.829972,
		-0.652538, 0.750546, -0.104284,
		0.592082, 0.590904, 0.547970,
		38.587002, 41.588242, 21.069546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243797, 41.855640, 20.352421>,  <38.172546, 41.174606, 20.685966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243797, 41.855640, 20.352421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.584461, 41.886353, 20.559795>,  <38.788860, 41.904778, 20.684219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.584461, 41.886353, 20.559795>,  <38.243797, 41.855640, 20.352421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584461, 41.886353, 20.559795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390609, 0.566534, -0.725578,
		-0.349419, 0.820454, 0.452507,
		0.851664, 0.076777, 0.518435,
		38.839962, 41.909386, 20.715326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494446, 42.557640, 20.270075>,  <38.243797, 41.855640, 20.352421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494446, 42.557640, 20.270075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.823902, 42.354050, 20.370125>,  <39.021576, 42.231895, 20.430155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.823902, 42.354050, 20.370125>,  <38.494446, 42.557640, 20.270075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823902, 42.354050, 20.370125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533093, 0.544383, -0.647656,
		0.193479, 0.666774, 0.719707,
		0.823637, -0.508979, 0.250126,
		39.070992, 42.201355, 20.445162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947964, 43.060402, 20.354078>,  <38.494446, 42.557640, 20.270075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947964, 43.060402, 20.354078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.166203, 42.735092, 20.273172>,  <39.297146, 42.539906, 20.224628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.166203, 42.735092, 20.273172>,  <38.947964, 43.060402, 20.354078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166203, 42.735092, 20.273172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590671, 0.544388, -0.595609,
		0.594503, 0.205491, 0.777393,
		0.545596, -0.813275, -0.202263,
		39.329880, 42.491108, 20.212494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515396, 43.404793, 20.261120>,  <38.947964, 43.060402, 20.354078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515396, 43.404793, 20.261120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.634609, 43.050529, 20.118689>,  <39.706139, 42.837971, 20.033230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.634609, 43.050529, 20.118689>,  <39.515396, 43.404793, 20.261120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634609, 43.050529, 20.118689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782359, 0.440360, -0.440452,
		0.546890, -0.147310, 0.824143,
		0.298037, -0.885654, -0.356078,
		39.724022, 42.784832, 20.011866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207218, 43.416698, 20.307646>,  <39.515396, 43.404793, 20.261120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207218, 43.416698, 20.307646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.146294, 43.141357, 20.023966>,  <40.109741, 42.976151, 19.853758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.146294, 43.141357, 20.023966>,  <40.207218, 43.416698, 20.307646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146294, 43.141357, 20.023966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702582, 0.429271, -0.567542,
		0.695112, -0.584714, 0.418245,
		-0.152309, -0.688357, -0.709201,
		40.100601, 42.934849, 19.811205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847336, 43.080536, 20.196331>,  <40.207218, 43.416698, 20.307646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847336, 43.080536, 20.196331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.641510, 43.052383, 19.854507>,  <40.518013, 43.035492, 19.649414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.641510, 43.052383, 19.854507>,  <40.847336, 43.080536, 20.196331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.641510, 43.052383, 19.854507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793612, 0.338260, -0.505727,
		0.324657, -0.938417, -0.118201,
		-0.514565, -0.070382, -0.854558,
		40.487141, 43.031269, 19.598141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363056, 43.059364, 19.689484>,  <40.847336, 43.080536, 20.196331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363056, 43.059364, 19.689484> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.036404, 43.135986, 19.471706>,  <40.840412, 43.181957, 19.341040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.036404, 43.135986, 19.471706>,  <41.363056, 43.059364, 19.689484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036404, 43.135986, 19.471706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575848, 0.333914, -0.746258,
		0.038850, -0.922935, -0.382990,
		-0.816633, 0.191551, -0.544443,
		40.791412, 43.193451, 19.308372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478592, 42.676193, 19.040026>,  <41.363056, 43.059364, 19.689484>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478592, 42.676193, 19.040026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.223293, 42.978561, 18.981754>,  <41.070114, 43.159981, 18.946791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.223293, 42.978561, 18.981754>,  <41.478592, 42.676193, 19.040026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223293, 42.978561, 18.981754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625894, 0.399362, -0.669901,
		-0.448214, -0.518743, -0.728018,
		-0.638249, 0.755920, -0.145679,
		41.031818, 43.205338, 18.938051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673203, 42.780880, 18.368233>,  <41.478592, 42.676193, 19.040026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673203, 42.780880, 18.368233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.477982, 43.103600, 18.501427>,  <41.360847, 43.297230, 18.581343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.477982, 43.103600, 18.501427>,  <41.673203, 42.780880, 18.368233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.477982, 43.103600, 18.501427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520641, 0.575312, -0.630832,
		-0.700525, -0.134515, -0.700836,
		-0.488055, 0.806798, 0.332986,
		41.331566, 43.345638, 18.601322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930130, 43.332054, 17.833853>,  <41.673203, 42.780880, 18.368233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930130, 43.332054, 17.833853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.174183, 43.501171, 18.101879>,  <42.320614, 43.602642, 18.262695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.174183, 43.501171, 18.101879>,  <41.930130, 43.332054, 17.833853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.174183, 43.501171, 18.101879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791539, 0.288185, 0.538902,
		0.034743, -0.859182, 0.510489,
		0.610130, 0.422795, 0.670064,
		42.357224, 43.628010, 18.302898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945877, 42.687351, 17.574030>,  <41.930130, 43.332054, 17.833853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945877, 42.687351, 17.574030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.962116, 42.343029, 17.371103>,  <41.971859, 42.136436, 17.249348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.962116, 42.343029, 17.371103>,  <41.945877, 42.687351, 17.574030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962116, 42.343029, 17.371103> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234277, -0.501782, 0.832664,
		-0.971322, 0.085051, -0.222036,
		0.040595, -0.860803, -0.507317,
		41.974297, 42.084789, 17.218908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355064, 42.246403, 17.783100>,  <41.945877, 42.687351, 17.574030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355064, 42.246403, 17.783100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.631310, 41.999580, 17.632212>,  <41.797058, 41.851486, 17.541677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.631310, 41.999580, 17.632212>,  <41.355064, 42.246403, 17.783100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631310, 41.999580, 17.632212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123972, -0.614867, 0.778825,
		-0.712520, -0.491102, -0.501133,
		0.690613, -0.617055, -0.377223,
		41.838493, 41.814465, 17.519045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.072979, 41.655769, 17.926250>,  <41.355064, 42.246403, 17.783100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.072979, 41.655769, 17.926250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.457973, 41.562840, 17.870195>,  <41.688972, 41.507080, 17.836563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.457973, 41.562840, 17.870195>,  <41.072979, 41.655769, 17.926250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.457973, 41.562840, 17.870195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042396, -0.638944, 0.768084,
		-0.267983, -0.733332, -0.624827,
		0.962490, -0.232324, -0.140136,
		41.746719, 41.493141, 17.828154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063023, 40.926540, 17.768324>,  <41.072979, 41.655769, 17.926250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.063023, 40.926540, 17.768324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.408749, 41.056545, 17.921854>,  <41.616184, 41.134548, 18.013973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.408749, 41.056545, 17.921854>,  <41.063023, 40.926540, 17.768324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408749, 41.056545, 17.921854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133002, -0.588286, 0.797641,
		0.485043, -0.740464, -0.465238,
		0.864317, 0.325013, 0.383827,
		41.668045, 41.154049, 18.037003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483883, 40.271496, 18.044912>,  <41.063023, 40.926540, 17.768324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483883, 40.271496, 18.044912> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.670105, 40.576199, 18.225130>,  <41.781837, 40.759018, 18.333261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.670105, 40.576199, 18.225130>,  <41.483883, 40.271496, 18.044912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670105, 40.576199, 18.225130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174255, -0.420218, 0.890535,
		0.867697, -0.493099, -0.062893,
		0.465551, 0.761755, 0.450547,
		41.809769, 40.804726, 18.360294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107311, 40.006996, 18.394285>,  <41.483883, 40.271496, 18.044912>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107311, 40.006996, 18.394285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.025620, 40.351246, 18.580879>,  <41.976604, 40.557796, 18.692835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.025620, 40.351246, 18.580879>,  <42.107311, 40.006996, 18.394285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025620, 40.351246, 18.580879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077254, -0.489211, 0.868737,
		0.975869, 0.141387, 0.166400,
		-0.204233, 0.860629, 0.466483,
		41.964348, 40.609436, 18.720823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.427746, 40.013462, 19.008347>,  <42.107311, 40.006996, 18.394285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.427746, 40.013462, 19.008347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.164082, 40.307007, 19.074005>,  <42.005882, 40.483135, 19.113401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.164082, 40.307007, 19.074005>,  <42.427746, 40.013462, 19.008347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.164082, 40.307007, 19.074005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096263, -0.298832, 0.949438,
		0.745812, 0.610034, 0.267624,
		-0.659164, 0.733865, 0.164149,
		41.966331, 40.527164, 19.123249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513958, 40.224571, 19.799923>,  <42.427746, 40.013462, 19.008347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.513958, 40.224571, 19.799923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.159840, 40.391491, 19.717833>,  <41.947369, 40.491642, 19.668579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.159840, 40.391491, 19.717833>,  <42.513958, 40.224571, 19.799923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.159840, 40.391491, 19.717833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289404, -0.148948, 0.945547,
		0.364009, 0.896479, 0.252631,
		-0.885292, 0.417300, -0.205226,
		41.894253, 40.516682, 19.656265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399746, 40.599701, 20.370541>,  <42.513958, 40.224571, 19.799923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399746, 40.599701, 20.370541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.045471, 40.533123, 20.197172>,  <41.832905, 40.493176, 20.093151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.045471, 40.533123, 20.197172>,  <42.399746, 40.599701, 20.370541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045471, 40.533123, 20.197172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406727, -0.172036, 0.897205,
		-0.223900, 0.970927, 0.084672,
		-0.885687, -0.166445, -0.433422,
		41.779766, 40.483189, 20.067146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838085, 40.969460, 20.814152>,  <42.399746, 40.599701, 20.370541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.838085, 40.969460, 20.814152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.675381, 40.674969, 20.597813>,  <41.577759, 40.498276, 20.468010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.675381, 40.674969, 20.597813>,  <41.838085, 40.969460, 20.814152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.675381, 40.674969, 20.597813> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381503, -0.401042, 0.832839,
		-0.830059, 0.545105, -0.117741,
		-0.406766, -0.736224, -0.540848,
		41.553352, 40.454102, 20.435558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.246979, 40.791538, 21.070990>,  <41.838085, 40.969460, 20.814152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.246979, 40.791538, 21.070990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.269012, 40.444069, 20.874062>,  <41.282234, 40.235588, 20.755905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.269012, 40.444069, 20.874062>,  <41.246979, 40.791538, 21.070990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269012, 40.444069, 20.874062> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543458, -0.439718, 0.715053,
		-0.837627, 0.228168, -0.496306,
		0.055082, -0.868670, -0.492320,
		41.285538, 40.183468, 20.726366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597267, 40.528503, 21.149616>,  <41.246979, 40.791538, 21.070990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597267, 40.528503, 21.149616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.810368, 40.202515, 21.058401>,  <40.938229, 40.006924, 21.003672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.810368, 40.202515, 21.058401>,  <40.597267, 40.528503, 21.149616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810368, 40.202515, 21.058401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437298, -0.495809, 0.750296,
		-0.724532, -0.300000, -0.620527,
		0.532752, -0.814969, -0.228040,
		40.970192, 39.958023, 20.989990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.151142, 40.104977, 20.827942>,  <40.597267, 40.528503, 21.149616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.151142, 40.104977, 20.827942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.448746, 39.880138, 20.972439>,  <40.627308, 39.745235, 21.059137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.448746, 39.880138, 20.972439>,  <40.151142, 40.104977, 20.827942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.448746, 39.880138, 20.972439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588415, -0.295040, 0.752807,
		-0.316571, -0.772655, -0.550261,
		0.744009, -0.562099, 0.361241,
		40.671947, 39.711510, 21.080812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757061, 39.478840, 21.113068>,  <40.151142, 40.104977, 20.827942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757061, 39.478840, 21.113068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.118080, 39.485992, 21.285152>,  <40.334694, 39.490284, 21.388403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.118080, 39.485992, 21.285152>,  <39.757061, 39.478840, 21.113068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118080, 39.485992, 21.285152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414072, -0.238000, 0.878579,
		0.118098, -0.971101, -0.207404,
		0.902551, 0.017879, 0.430213,
		40.388844, 39.491356, 21.414217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379589, 38.785519, 20.951445>,  <39.757061, 39.478840, 21.113068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379589, 38.785519, 20.951445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.980591, 38.781021, 20.979359>,  <38.741192, 38.778324, 20.996107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.980591, 38.781021, 20.979359>,  <39.379589, 38.785519, 20.951445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980591, 38.781021, 20.979359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065421, 0.520692, -0.851234,
		-0.026767, -0.853671, -0.520125,
		-0.997499, -0.011242, 0.069785,
		38.681343, 38.777649, 21.000294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080406, 38.543629, 20.366514>,  <39.379589, 38.785519, 20.951445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080406, 38.543629, 20.366514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.767750, 38.755463, 20.498320>,  <38.580158, 38.882565, 20.577404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.767750, 38.755463, 20.498320>,  <39.080406, 38.543629, 20.366514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767750, 38.755463, 20.498320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147072, 0.356913, -0.922487,
		-0.606145, -0.769514, -0.201090,
		-0.781638, 0.529586, 0.329515,
		38.533257, 38.914337, 20.597174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708904, 38.449127, 19.855135>,  <39.080406, 38.543629, 20.366514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708904, 38.449127, 19.855135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.567856, 38.779442, 20.031195>,  <38.483227, 38.977631, 20.136829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.567856, 38.779442, 20.031195>,  <38.708904, 38.449127, 19.855135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567856, 38.779442, 20.031195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042801, 0.455636, -0.889137,
		-0.934785, -0.332371, -0.125324,
		-0.352625, 0.825788, 0.440148,
		38.462067, 39.027180, 20.163239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097446, 38.554920, 19.610249>,  <38.708904, 38.449127, 19.855135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097446, 38.554920, 19.610249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.176460, 38.917339, 19.759947>,  <38.223869, 39.134792, 19.849766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.176460, 38.917339, 19.759947>,  <38.097446, 38.554920, 19.610249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176460, 38.917339, 19.759947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145078, 0.404581, -0.902921,
		-0.969501, 0.124063, 0.211366,
		0.197534, 0.906047, 0.374243,
		38.235722, 39.189152, 19.872219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542885, 39.057850, 19.349731>,  <38.097446, 38.554920, 19.610249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542885, 39.057850, 19.349731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.884098, 39.233616, 19.462343>,  <38.088825, 39.339073, 19.529909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.884098, 39.233616, 19.462343>,  <37.542885, 39.057850, 19.349731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.884098, 39.233616, 19.462343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027986, 0.500172, -0.865474,
		-0.521110, 0.746154, 0.414364,
		0.853030, 0.439411, 0.281527,
		38.140007, 39.365440, 19.546801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530640, 39.753315, 19.099722>,  <37.542885, 39.057850, 19.349731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530640, 39.753315, 19.099722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.925270, 39.749184, 19.164907>,  <38.162048, 39.746704, 19.204018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.925270, 39.749184, 19.164907>,  <37.530640, 39.753315, 19.099722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925270, 39.749184, 19.164907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141666, 0.550449, -0.822762,
		-0.081205, 0.834805, 0.544524,
		0.986578, -0.010328, 0.162963,
		38.221245, 39.746086, 19.213797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695858, 40.336231, 18.944040>,  <37.530640, 39.753315, 19.099722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695858, 40.336231, 18.944040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.061184, 40.177933, 18.905598>,  <38.280380, 40.082954, 18.882532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.061184, 40.177933, 18.905598>,  <37.695858, 40.336231, 18.944040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061184, 40.177933, 18.905598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123275, 0.493569, -0.860926,
		0.388141, 0.774452, 0.499571,
		0.913318, -0.395745, -0.096104,
		38.335178, 40.059208, 18.876766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785751, 41.075504, 19.180641>,  <37.695858, 40.336231, 18.944040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785751, 41.075504, 19.180641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.410877, 41.181339, 19.089703>,  <37.185955, 41.244839, 19.035139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.410877, 41.181339, 19.089703>,  <37.785751, 41.075504, 19.180641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410877, 41.181339, 19.089703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345994, -0.621871, 0.702542,
		0.044500, 0.737070, 0.674350,
		-0.937181, 0.264584, -0.227348,
		37.129723, 41.260715, 19.021498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503311, 41.225540, 19.834629>,  <37.785751, 41.075504, 19.180641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503311, 41.225540, 19.834629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.207726, 41.127193, 19.583714>,  <37.030376, 41.068188, 19.433165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.207726, 41.127193, 19.583714>,  <37.503311, 41.225540, 19.834629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207726, 41.127193, 19.583714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448606, -0.515097, 0.730361,
		-0.502683, 0.821113, 0.270340,
		-0.738960, -0.245864, -0.627287,
		36.986038, 41.053432, 19.395527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876644, 41.344532, 20.208742>,  <37.503311, 41.225540, 19.834629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876644, 41.344532, 20.208742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.741913, 41.111034, 19.913231>,  <36.661076, 40.970936, 19.735924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.741913, 41.111034, 19.913231>,  <36.876644, 41.344532, 20.208742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741913, 41.111034, 19.913231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525071, -0.534846, 0.661997,
		-0.781568, 0.610890, -0.126355,
		-0.336827, -0.583741, -0.738779,
		36.640865, 40.935913, 19.691597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143700, 41.267437, 20.209326>,  <36.876644, 41.344532, 20.208742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143700, 41.267437, 20.209326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.222504, 40.947617, 19.982378>,  <36.269787, 40.755726, 19.846209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.222504, 40.947617, 19.982378>,  <36.143700, 41.267437, 20.209326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222504, 40.947617, 19.982378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540549, -0.571389, 0.617512,
		-0.817920, 0.185034, -0.544766,
		0.197013, -0.799548, -0.567370,
		36.281609, 40.707752, 19.812166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507870, 41.110611, 19.927496>,  <36.143700, 41.267437, 20.209326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507870, 41.110611, 19.927496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.741795, 40.786251, 19.919191>,  <35.882149, 40.591637, 19.914209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.741795, 40.786251, 19.919191>,  <35.507870, 41.110611, 19.927496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741795, 40.786251, 19.919191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710027, -0.524108, 0.470290,
		-0.392239, -0.260293, -0.882268,
		0.584817, -0.810899, -0.020761,
		35.917240, 40.542980, 19.912962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079716, 40.563824, 19.879827>,  <35.507870, 41.110611, 19.927496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079716, 40.563824, 19.879827> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.420673, 40.417698, 20.029478>,  <35.625248, 40.330021, 20.119268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.420673, 40.417698, 20.029478>,  <35.079716, 40.563824, 19.879827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420673, 40.417698, 20.029478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520849, -0.529851, 0.669309,
		-0.046279, -0.765377, -0.641916,
		0.852394, -0.365316, 0.374125,
		35.676392, 40.308102, 20.141716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015495, 39.831787, 19.915436>,  <35.079716, 40.563824, 19.879827>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015495, 39.831787, 19.915436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.287365, 39.945580, 20.185877>,  <35.450485, 40.013855, 20.348143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.287365, 39.945580, 20.185877>,  <35.015495, 39.831787, 19.915436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287365, 39.945580, 20.185877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508407, -0.481712, 0.713776,
		0.528741, -0.828870, -0.182775,
		0.679673, 0.284479, 0.676104,
		35.491268, 40.030922, 20.388708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.894596, 45.371967, 18.232582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.071232, 45.109760, 18.477629>,  <39.177212, 44.952438, 18.624657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.071232, 45.109760, 18.477629>,  <38.894596, 45.371967, 18.232582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071232, 45.109760, 18.477629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881219, -0.188506, 0.433496,
		-0.168680, -0.731278, -0.660893,
		0.441588, -0.655513, 0.612619,
		39.203709, 44.913105, 18.661413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.401077, 44.839539, 18.275217>,  <38.894596, 45.371967, 18.232582>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.401077, 44.839539, 18.275217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.653732, 44.777985, 18.579153>,  <38.805325, 44.741055, 18.761515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.653732, 44.777985, 18.579153>,  <38.401077, 44.839539, 18.275217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.653732, 44.777985, 18.579153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768625, -0.252302, 0.587842,
		0.101251, -0.955335, -0.277639,
		0.631635, -0.153881, 0.759840,
		38.843224, 44.731819, 18.807106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091305, 44.147079, 18.599150>,  <38.401077, 44.839539, 18.275217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091305, 44.147079, 18.599150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.336689, 44.327221, 18.858643>,  <38.483917, 44.435307, 19.014339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.336689, 44.327221, 18.858643>,  <38.091305, 44.147079, 18.599150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336689, 44.327221, 18.858643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623476, -0.228010, 0.747856,
		0.484714, -0.863248, 0.140908,
		0.613457, 0.450350, 0.648734,
		38.520725, 44.462326, 19.053263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140308, 43.652847, 19.190895>,  <38.091305, 44.147079, 18.599150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140308, 43.652847, 19.190895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.229622, 44.026379, 19.302683>,  <38.283211, 44.250496, 19.369757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.229622, 44.026379, 19.302683>,  <38.140308, 43.652847, 19.190895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229622, 44.026379, 19.302683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590767, -0.098406, 0.800819,
		0.775330, -0.343916, 0.529703,
		0.223288, 0.933830, 0.279471,
		38.296608, 44.306526, 19.386524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323414, 43.581768, 19.904903>,  <38.140308, 43.652847, 19.190895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323414, 43.581768, 19.904903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.248379, 43.972729, 19.865902>,  <38.203358, 44.207306, 19.842501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.248379, 43.972729, 19.865902>,  <38.323414, 43.581768, 19.904903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248379, 43.972729, 19.865902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633116, -0.044419, 0.772782,
		0.750983, 0.206693, 0.627138,
		-0.187585, 0.977397, -0.097503,
		38.192104, 44.265949, 19.836651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449997, 43.896393, 20.621925>,  <38.323414, 43.581768, 19.904903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449997, 43.896393, 20.621925> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.216633, 44.142284, 20.409609>,  <38.076614, 44.289818, 20.282219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.216633, 44.142284, 20.409609>,  <38.449997, 43.896393, 20.621925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216633, 44.142284, 20.409609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613488, 0.094720, 0.784003,
		0.532227, 0.783029, 0.321869,
		-0.583410, 0.614730, -0.530791,
		38.041611, 44.326702, 20.250372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275463, 44.431610, 21.082340>,  <38.449997, 43.896393, 20.621925>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275463, 44.431610, 21.082340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.001595, 44.454895, 20.791733>,  <37.837273, 44.468864, 20.617369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.001595, 44.454895, 20.791733>,  <38.275463, 44.431610, 21.082340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001595, 44.454895, 20.791733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708240, 0.182227, 0.682048,
		0.172094, 0.981532, -0.083539,
		-0.684675, 0.058211, -0.726521,
		37.796192, 44.472359, 20.573776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835049, 44.934978, 21.344156>,  <38.275463, 44.431610, 21.082340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835049, 44.934978, 21.344156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.637211, 44.729115, 21.064013>,  <37.518509, 44.605595, 20.895927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.637211, 44.729115, 21.064013>,  <37.835049, 44.934978, 21.344156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637211, 44.729115, 21.064013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732609, -0.186677, 0.654550,
		-0.467612, 0.836826, -0.284715,
		-0.494595, -0.514660, -0.700358,
		37.488831, 44.574718, 20.853905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174320, 45.191879, 21.473164>,  <37.835049, 44.934978, 21.344156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174320, 45.191879, 21.473164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.134251, 44.848640, 21.271713>,  <37.110207, 44.642696, 21.150843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.134251, 44.848640, 21.271713>,  <37.174320, 45.191879, 21.473164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134251, 44.848640, 21.271713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698076, -0.300063, 0.650118,
		-0.708981, 0.416695, -0.568956,
		-0.100179, -0.858095, -0.503624,
		37.104198, 44.591213, 21.120626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516861, 45.186790, 21.217108>,  <37.174320, 45.191879, 21.473164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516861, 45.186790, 21.217108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.646259, 44.808453, 21.227871>,  <36.723896, 44.581448, 21.234329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.646259, 44.808453, 21.227871>,  <36.516861, 45.186790, 21.217108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646259, 44.808453, 21.227871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768922, -0.246196, 0.590039,
		-0.551464, -0.211561, -0.806926,
		0.323492, -0.945849, 0.026906,
		36.743305, 44.524696, 21.235943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986450, 44.735405, 20.929541>,  <36.516861, 45.186790, 21.217108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986450, 44.735405, 20.929541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.226528, 44.547356, 21.188385>,  <36.370575, 44.434525, 21.343691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.226528, 44.547356, 21.188385>,  <35.986450, 44.735405, 20.929541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226528, 44.547356, 21.188385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779335, -0.161630, 0.605403,
		-0.180029, -0.867668, -0.463401,
		0.600189, -0.470135, 0.647106,
		36.406586, 44.406319, 21.382517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509861, 44.353546, 21.389307>,  <35.986450, 44.735405, 20.929541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509861, 44.353546, 21.389307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.849930, 44.294212, 21.591377>,  <36.053970, 44.258610, 21.712620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.849930, 44.294212, 21.591377>,  <35.509861, 44.353546, 21.389307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849930, 44.294212, 21.591377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524270, -0.326818, 0.786340,
		0.048460, -0.933374, -0.355619,
		0.850172, -0.148335, 0.505178,
		36.104980, 44.249710, 21.742931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107288, 43.788681, 21.105303>,  <35.509861, 44.353546, 21.389307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107288, 43.788681, 21.105303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.747192, 43.733620, 20.940079>,  <34.531136, 43.700584, 20.840944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.747192, 43.733620, 20.940079>,  <35.107288, 43.788681, 21.105303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747192, 43.733620, 20.940079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326364, 0.414603, -0.849465,
		0.288186, -0.899531, -0.328318,
		-0.900242, -0.137653, -0.413057,
		34.477119, 43.692322, 20.816162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.219898, 43.604866, 20.480452>,  <35.107288, 43.788681, 21.105303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.219898, 43.604866, 20.480452> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.842464, 43.734459, 20.453045>,  <34.616005, 43.812214, 20.436600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.842464, 43.734459, 20.453045>,  <35.219898, 43.604866, 20.480452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842464, 43.734459, 20.453045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190508, 0.361854, -0.912562,
		-0.270857, -0.874128, -0.403158,
		-0.943580, 0.323978, -0.068518,
		34.559391, 43.831654, 20.432489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891899, 43.332878, 19.863514>,  <35.219898, 43.604866, 20.480452>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891899, 43.332878, 19.863514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.702110, 43.671276, 19.960814>,  <34.588238, 43.874313, 20.019194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.702110, 43.671276, 19.960814>,  <34.891899, 43.332878, 19.863514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702110, 43.671276, 19.960814> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219101, 0.381135, -0.898182,
		-0.852567, -0.372867, -0.366196,
		-0.474472, 0.845994, 0.243248,
		34.559769, 43.925076, 20.033789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523079, 43.477596, 19.258377>,  <34.891899, 43.332878, 19.863514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523079, 43.477596, 19.258377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.518505, 43.819714, 19.465582>,  <34.515762, 44.024986, 19.589905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.518505, 43.819714, 19.465582>,  <34.523079, 43.477596, 19.258377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518505, 43.819714, 19.465582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289245, 0.498729, -0.817072,
		-0.957187, 0.140493, -0.253091,
		-0.011431, 0.855296, 0.518014,
		34.515076, 44.076302, 19.620987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125259, 43.983688, 18.908318>,  <34.523079, 43.477596, 19.258377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125259, 43.983688, 18.908318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.345837, 44.196747, 19.165127>,  <34.478184, 44.324581, 19.319212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.345837, 44.196747, 19.165127>,  <34.125259, 43.983688, 18.908318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345837, 44.196747, 19.165127> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355223, 0.546428, -0.758441,
		-0.754800, 0.646302, 0.112118,
		0.551447, 0.532644, 0.642025,
		34.511272, 44.356541, 19.357735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048977, 44.651814, 18.639149>,  <34.125259, 43.983688, 18.908318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048977, 44.651814, 18.639149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.380943, 44.659931, 18.862156>,  <34.580124, 44.664803, 18.995960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.380943, 44.659931, 18.862156>,  <34.048977, 44.651814, 18.639149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380943, 44.659931, 18.862156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505334, 0.396083, -0.766653,
		-0.236382, 0.917990, 0.318460,
		0.829917, 0.020294, 0.557518,
		34.629917, 44.666019, 19.029411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423687, 45.366535, 18.605919>,  <34.048977, 44.651814, 18.639149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423687, 45.366535, 18.605919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.713108, 45.110374, 18.708960>,  <34.886761, 44.956676, 18.770784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.713108, 45.110374, 18.708960>,  <34.423687, 45.366535, 18.605919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713108, 45.110374, 18.708960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642036, 0.487312, -0.591876,
		0.253507, 0.593641, 0.763757,
		0.723549, -0.640404, 0.257602,
		34.930172, 44.918255, 18.786240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981544, 45.822071, 18.775492>,  <34.423687, 45.366535, 18.605919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981544, 45.822071, 18.775492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.144550, 45.462582, 18.710712>,  <35.242355, 45.246887, 18.671844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.144550, 45.462582, 18.710712>,  <34.981544, 45.822071, 18.775492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144550, 45.462582, 18.710712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660151, 0.412460, -0.627756,
		0.630975, 0.148913, 0.761377,
		0.407519, -0.898722, -0.161947,
		35.266808, 45.192966, 18.662128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586575, 45.909893, 18.841391>,  <34.981544, 45.822071, 18.775492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586575, 45.909893, 18.841391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.589489, 45.574471, 18.623486>,  <35.591240, 45.373219, 18.492743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.589489, 45.574471, 18.623486>,  <35.586575, 45.909893, 18.841391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589489, 45.574471, 18.623486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629017, 0.427344, -0.649395,
		0.777357, -0.337933, 0.530582,
		0.007288, -0.838557, -0.544765,
		35.591675, 45.322903, 18.460056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284878, 45.743191, 18.850510>,  <35.586575, 45.909893, 18.841391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284878, 45.743191, 18.850510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.104343, 45.579433, 18.533350>,  <35.996021, 45.481178, 18.343054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.104343, 45.579433, 18.533350>,  <36.284878, 45.743191, 18.850510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104343, 45.579433, 18.533350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504595, 0.615763, -0.605161,
		0.735988, -0.673225, -0.071338,
		-0.451337, -0.409395, -0.792901,
		35.968941, 45.456615, 18.295481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728191, 45.889507, 18.351109>,  <36.284878, 45.743191, 18.850510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728191, 45.889507, 18.351109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.399429, 45.781521, 18.150476>,  <36.202171, 45.716728, 18.030096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.399429, 45.781521, 18.150476>,  <36.728191, 45.889507, 18.351109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.399429, 45.781521, 18.150476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435957, 0.268607, -0.858948,
		0.366620, -0.924643, -0.103074,
		-0.821907, -0.269971, -0.501581,
		36.152859, 45.700531, 18.000002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920620, 45.362293, 17.913904>,  <36.728191, 45.889507, 18.351109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920620, 45.362293, 17.913904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.597061, 45.545128, 17.765984>,  <36.402924, 45.654827, 17.677231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.597061, 45.545128, 17.765984>,  <36.920620, 45.362293, 17.913904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597061, 45.545128, 17.765984> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452541, 0.082492, -0.887920,
		-0.375352, -0.885588, -0.273578,
		-0.808899, 0.457088, -0.369801,
		36.354393, 45.682255, 17.655043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758480, 44.968056, 17.375154>,  <36.920620, 45.362293, 17.913904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758480, 44.968056, 17.375154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.564487, 45.310364, 17.303087>,  <36.448093, 45.515747, 17.259846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.564487, 45.310364, 17.303087>,  <36.758480, 44.968056, 17.375154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564487, 45.310364, 17.303087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356964, 0.005635, -0.934101,
		-0.798357, -0.517332, -0.308210,
		-0.484977, 0.855766, -0.180170,
		36.418995, 45.567093, 17.249037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161701, 44.439754, 17.275669>,  <36.758480, 44.968056, 17.375154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161701, 44.439754, 17.275669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.242947, 44.137150, 17.027012>,  <37.291695, 43.955589, 16.877817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.242947, 44.137150, 17.027012>,  <37.161701, 44.439754, 17.275669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242947, 44.137150, 17.027012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191149, -0.653298, 0.732574,
		-0.960317, -0.029967, -0.277297,
		0.203110, -0.756508, -0.621645,
		37.303879, 43.910198, 16.840519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575279, 44.015800, 17.337154>,  <37.161701, 44.439754, 17.275669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575279, 44.015800, 17.337154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.887928, 43.799786, 17.212296>,  <37.075516, 43.670177, 17.137381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.887928, 43.799786, 17.212296>,  <36.575279, 44.015800, 17.337154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887928, 43.799786, 17.212296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292383, -0.759251, 0.581420,
		-0.550985, -0.363182, -0.751341,
		0.781618, -0.540033, -0.312148,
		37.122414, 43.637775, 17.118650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220127, 43.285480, 17.051687>,  <36.575279, 44.015800, 17.337154>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220127, 43.285480, 17.051687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.609268, 43.242744, 17.133810>,  <36.842751, 43.217102, 17.183083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.609268, 43.242744, 17.133810>,  <36.220127, 43.285480, 17.051687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609268, 43.242744, 17.133810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203162, -0.819132, 0.536422,
		0.110862, -0.563568, -0.818597,
		0.972849, -0.106839, 0.205306,
		36.901123, 43.210693, 17.195402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282764, 42.611412, 17.018263>,  <36.220127, 43.285480, 17.051687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282764, 42.611412, 17.018263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.627789, 42.695450, 17.202372>,  <36.834805, 42.745872, 17.312838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.627789, 42.695450, 17.202372>,  <36.282764, 42.611412, 17.018263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627789, 42.695450, 17.202372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106016, -0.814463, 0.570447,
		0.494724, -0.540841, -0.680249,
		0.862560, 0.210096, 0.460272,
		36.886555, 42.758480, 17.340454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494156, 42.004547, 17.236660>,  <36.282764, 42.611412, 17.018263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494156, 42.004547, 17.236660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.752159, 42.207005, 17.465672>,  <36.906960, 42.328480, 17.603079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.752159, 42.207005, 17.465672>,  <36.494156, 42.004547, 17.236660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752159, 42.207005, 17.465672> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006290, -0.745665, 0.666291,
		0.764153, -0.433362, -0.477773,
		0.645004, 0.506144, 0.572528,
		36.945660, 42.358849, 17.637430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958931, 41.439369, 17.395227>,  <36.494156, 42.004547, 17.236660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958931, 41.439369, 17.395227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.010406, 41.742458, 17.651133>,  <37.041290, 41.924313, 17.804676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.010406, 41.742458, 17.651133>,  <36.958931, 41.439369, 17.395227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010406, 41.742458, 17.651133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069934, -0.650456, 0.756318,
		0.989216, -0.052589, -0.136696,
		0.128689, 0.757721, 0.639764,
		37.049011, 41.969776, 17.843061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502937, 41.229179, 17.847216>,  <36.958931, 41.439369, 17.395227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502937, 41.229179, 17.847216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.309418, 41.510998, 18.054888>,  <37.193306, 41.680088, 18.179491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.309418, 41.510998, 18.054888>,  <37.502937, 41.229179, 17.847216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309418, 41.510998, 18.054888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077193, -0.556565, 0.827210,
		0.871766, 0.440283, 0.214881,
		-0.483802, 0.704546, 0.519182,
		37.164276, 41.722363, 18.210642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827579, 41.257774, 18.467911>,  <37.502937, 41.229179, 17.847216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827579, 41.257774, 18.467911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.459072, 41.385983, 18.556025>,  <37.237968, 41.462910, 18.608892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.459072, 41.385983, 18.556025>,  <37.827579, 41.257774, 18.467911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459072, 41.385983, 18.556025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005678, -0.577420, 0.816427,
		0.388881, 0.750900, 0.533780,
		-0.921270, 0.320524, 0.220284,
		37.182690, 41.482140, 18.622110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444637, 41.080311, 18.905285>,  <37.827579, 41.257774, 18.467911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444637, 41.080311, 18.905285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.576675, 40.719284, 18.794710>,  <38.655899, 40.502670, 18.728365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.576675, 40.719284, 18.794710>,  <38.444637, 41.080311, 18.905285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.576675, 40.719284, 18.794710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577869, 0.424778, -0.696872,
		0.746396, 0.070287, 0.661780,
		0.330091, -0.902565, -0.276436,
		38.675701, 40.448513, 18.711779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164848, 41.035248, 18.987261>,  <38.444637, 41.080311, 18.905285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164848, 41.035248, 18.987261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.072483, 40.764034, 18.708134>,  <39.017063, 40.601307, 18.540657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.072483, 40.764034, 18.708134>,  <39.164848, 41.035248, 18.987261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072483, 40.764034, 18.708134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605882, 0.460970, -0.648393,
		0.761304, -0.572520, 0.304363,
		-0.230915, -0.678033, -0.697818,
		39.003208, 40.560623, 18.498789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765625, 40.862057, 18.782909>,  <39.164848, 41.035248, 18.987261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765625, 40.862057, 18.782909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.515362, 40.778996, 18.482128>,  <39.365204, 40.729160, 18.301659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.515362, 40.778996, 18.482128>,  <39.765625, 40.862057, 18.782909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515362, 40.778996, 18.482128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613825, 0.463826, -0.638815,
		0.481428, -0.861246, -0.162732,
		-0.625657, -0.207655, -0.751953,
		39.327663, 40.716702, 18.256542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137539, 40.634830, 18.235107>,  <39.765625, 40.862057, 18.782909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137539, 40.634830, 18.235107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.803226, 40.747482, 18.046579>,  <39.602638, 40.815075, 17.933462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.803226, 40.747482, 18.046579>,  <40.137539, 40.634830, 18.235107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803226, 40.747482, 18.046579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548633, 0.462066, -0.696776,
		0.021546, -0.840938, -0.540702,
		-0.835786, 0.281634, -0.471322,
		39.552490, 40.831974, 17.905182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292236, 40.493729, 17.497137>,  <40.137539, 40.634830, 18.235107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292236, 40.493729, 17.497137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.988293, 40.753319, 17.512354>,  <39.805927, 40.909073, 17.521484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.988293, 40.753319, 17.512354>,  <40.292236, 40.493729, 17.497137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988293, 40.753319, 17.512354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384963, 0.496349, -0.778101,
		-0.523850, -0.576601, -0.626986,
		-0.759858, 0.648975, 0.038042,
		39.760334, 40.948009, 17.523767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985611, 40.674568, 16.867302>,  <40.292236, 40.493729, 17.497137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985611, 40.674568, 16.867302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.829239, 40.992271, 17.053343>,  <39.735416, 41.182896, 17.164967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.829239, 40.992271, 17.053343>,  <39.985611, 40.674568, 16.867302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.829239, 40.992271, 17.053343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303657, 0.588318, -0.749449,
		-0.868887, -0.151753, -0.471176,
		-0.390933, 0.794262, 0.465101,
		39.711960, 41.230549, 17.192873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515663, 40.918007, 16.382690>,  <39.985611, 40.674568, 16.867302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515663, 40.918007, 16.382690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.578613, 41.211533, 16.647038>,  <39.616383, 41.387650, 16.805647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.578613, 41.211533, 16.647038>,  <39.515663, 40.918007, 16.382690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578613, 41.211533, 16.647038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271148, 0.611382, -0.743432,
		-0.949586, 0.296188, -0.102759,
		0.157371, 0.733816, 0.660870,
		39.625824, 41.431679, 16.845299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074234, 41.477318, 16.149132>,  <39.515663, 40.918007, 16.382690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074234, 41.477318, 16.149132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.346355, 41.664803, 16.374519>,  <39.509628, 41.777294, 16.509752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.346355, 41.664803, 16.374519>,  <39.074234, 41.477318, 16.149132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346355, 41.664803, 16.374519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152349, 0.661566, -0.734248,
		-0.716919, 0.585358, 0.378660,
		0.680306, 0.468708, 0.563468,
		39.550446, 41.805416, 16.543560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014587, 42.154594, 16.212872>,  <39.074234, 41.477318, 16.149132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014587, 42.154594, 16.212872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.407078, 42.125061, 16.284145>,  <39.642570, 42.107342, 16.326910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.407078, 42.125061, 16.284145>,  <39.014587, 42.154594, 16.212872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.407078, 42.125061, 16.284145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176192, 0.718956, -0.672353,
		-0.078468, 0.691124, 0.718464,
		0.981223, -0.073829, 0.178185,
		39.701447, 42.102913, 16.337601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.148308, 35.385399, 29.852518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.445225, 35.569458, 30.047359>,  <34.623375, 35.679893, 30.164265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.445225, 35.569458, 30.047359>,  <34.148308, 35.385399, 29.852518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445225, 35.569458, 30.047359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206026, 0.535000, -0.819346,
		-0.637619, 0.708550, 0.302324,
		0.742291, 0.460144, 0.487105,
		34.667912, 35.707500, 30.193491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249081, 36.129669, 29.566042>,  <34.148308, 35.385399, 29.852518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249081, 36.129669, 29.566042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.611229, 36.054237, 29.718220>,  <34.828518, 36.008980, 29.809526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.611229, 36.054237, 29.718220>,  <34.249081, 36.129669, 29.566042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611229, 36.054237, 29.718220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415093, 0.581750, -0.699474,
		-0.089419, 0.791205, 0.604978,
		0.905374, -0.188575, 0.380444,
		34.882843, 35.997665, 29.832354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647541, 36.766399, 29.723186>,  <34.249081, 36.129669, 29.566042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647541, 36.766399, 29.723186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.901276, 36.464500, 29.656279>,  <35.053516, 36.283363, 29.616133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.901276, 36.464500, 29.656279>,  <34.647541, 36.766399, 29.723186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901276, 36.464500, 29.656279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403532, 0.507835, -0.761095,
		0.659377, 0.415291, 0.626701,
		0.634337, -0.754743, -0.167272,
		35.091576, 36.238079, 29.606096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266258, 37.056889, 29.535826>,  <34.647541, 36.766399, 29.723186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266258, 37.056889, 29.535826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.311272, 36.686256, 29.392277>,  <35.338280, 36.463879, 29.306149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.311272, 36.686256, 29.392277>,  <35.266258, 37.056889, 29.535826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311272, 36.686256, 29.392277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608424, 0.349798, -0.712363,
		0.785593, -0.138179, 0.603118,
		0.112536, -0.926579, -0.358870,
		35.345032, 36.408283, 29.284616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928162, 37.008137, 29.371435>,  <35.266258, 37.056889, 29.535826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928162, 37.008137, 29.371435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.754177, 36.727207, 29.146030>,  <35.649784, 36.558651, 29.010788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.754177, 36.727207, 29.146030>,  <35.928162, 37.008137, 29.371435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754177, 36.727207, 29.146030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549612, 0.288637, -0.783974,
		0.713255, -0.650714, 0.260459,
		-0.434965, -0.702325, -0.563512,
		35.623688, 36.516510, 28.976976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439346, 36.890026, 28.816011>,  <35.928162, 37.008137, 29.371435>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439346, 36.890026, 28.816011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.090805, 36.741692, 28.687492>,  <35.881680, 36.652691, 28.610380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.090805, 36.741692, 28.687492>,  <36.439346, 36.890026, 28.816011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090805, 36.741692, 28.687492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319691, 0.067680, -0.945102,
		0.372222, -0.926230, 0.059579,
		-0.871349, -0.370834, -0.321299,
		35.829399, 36.630440, 28.591103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523159, 36.206898, 28.491617>,  <36.439346, 36.890026, 28.816011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523159, 36.206898, 28.491617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.178547, 36.348370, 28.345917>,  <35.971779, 36.433254, 28.258495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.178547, 36.348370, 28.345917>,  <36.523159, 36.206898, 28.491617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178547, 36.348370, 28.345917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215297, -0.395244, -0.892989,
		-0.459802, -0.847757, 0.264368,
		-0.861528, 0.353681, -0.364253,
		35.920090, 36.454472, 28.236641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349747, 35.778820, 27.801733>,  <36.523159, 36.206898, 28.491617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349747, 35.778820, 27.801733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.082081, 36.069069, 27.737616>,  <35.921482, 36.243217, 27.699144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.082081, 36.069069, 27.737616>,  <36.349747, 35.778820, 27.801733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082081, 36.069069, 27.737616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169470, -0.061008, -0.983645,
		-0.723531, -0.685387, -0.082146,
		-0.669166, 0.725619, -0.160294,
		35.881332, 36.286755, 27.689528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072060, 35.647484, 27.114908>,  <36.349747, 35.778820, 27.801733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072060, 35.647484, 27.114908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.975216, 36.030258, 27.178993>,  <35.917110, 36.259922, 27.217443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.975216, 36.030258, 27.178993>,  <36.072060, 35.647484, 27.114908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975216, 36.030258, 27.178993> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216265, 0.214192, -0.952550,
		-0.945841, -0.195969, -0.258808,
		-0.242105, 0.956932, 0.160211,
		35.902584, 36.317337, 27.227057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553398, 35.833191, 26.646772>,  <36.072060, 35.647484, 27.114908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553398, 35.833191, 26.646772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.704437, 36.194401, 26.728716>,  <35.795063, 36.411125, 26.777882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.704437, 36.194401, 26.728716>,  <35.553398, 35.833191, 26.646772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.704437, 36.194401, 26.728716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090268, 0.184288, -0.978718,
		-0.921558, 0.388056, -0.011927,
		0.377600, 0.903023, 0.204861,
		35.817719, 36.465309, 26.790174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145824, 36.287560, 26.172651>,  <35.553398, 35.833191, 26.646772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145824, 36.287560, 26.172651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.482410, 36.467510, 26.292353>,  <35.684361, 36.575481, 26.364174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.482410, 36.467510, 26.292353>,  <35.145824, 36.287560, 26.172651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482410, 36.467510, 26.292353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130153, 0.368773, -0.920362,
		-0.524405, 0.813399, 0.251756,
		0.841463, 0.449876, 0.299253,
		35.734848, 36.602474, 26.382128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099621, 36.939018, 26.013483>,  <35.145824, 36.287560, 26.172651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099621, 36.939018, 26.013483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.485138, 36.837376, 26.045811>,  <35.716450, 36.776390, 26.065207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.485138, 36.837376, 26.045811>,  <35.099621, 36.939018, 26.013483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485138, 36.837376, 26.045811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175803, 0.377661, -0.909102,
		0.200482, 0.890395, 0.408659,
		0.963795, -0.254102, 0.080819,
		35.774277, 36.761147, 26.070057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965515, 37.722248, 25.970890>,  <35.099621, 36.939018, 26.013483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965515, 37.722248, 25.970890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.574337, 37.711182, 25.888081>,  <34.339630, 37.704544, 25.838396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.574337, 37.711182, 25.888081>,  <34.965515, 37.722248, 25.970890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574337, 37.711182, 25.888081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197250, -0.203560, 0.958987,
		-0.068671, 0.978672, 0.193614,
		-0.977945, -0.027664, -0.207022,
		34.280952, 37.702881, 25.825974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517498, 37.858788, 26.553928>,  <34.965515, 37.722248, 25.970890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517498, 37.858788, 26.553928> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.228123, 37.702168, 26.326479>,  <34.054497, 37.608196, 26.190010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.228123, 37.702168, 26.326479>,  <34.517498, 37.858788, 26.553928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228123, 37.702168, 26.326479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443829, -0.367118, 0.817459,
		-0.528828, 0.843749, 0.091805,
		-0.723434, -0.391550, -0.568623,
		34.011093, 37.584702, 26.155891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851295, 38.158440, 26.713194>,  <34.517498, 37.858788, 26.553928>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851295, 38.158440, 26.713194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.749634, 37.828434, 26.511297>,  <33.688637, 37.630432, 26.390160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.749634, 37.828434, 26.511297>,  <33.851295, 38.158440, 26.713194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749634, 37.828434, 26.511297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735887, -0.173695, 0.654446,
		-0.627597, 0.537760, -0.562971,
		-0.254150, -0.825011, -0.504741,
		33.673389, 37.580929, 26.359875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145554, 38.241722, 26.674772>,  <33.851295, 38.158440, 26.713194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145554, 38.241722, 26.674772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.235485, 37.854179, 26.633265>,  <33.289444, 37.621655, 26.608360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.235485, 37.854179, 26.633265>,  <33.145554, 38.241722, 26.674772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235485, 37.854179, 26.633265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713255, -0.236192, 0.659910,
		-0.663869, -0.074349, -0.744144,
		0.224825, -0.968858, -0.103770,
		33.302933, 37.563522, 26.602133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573139, 37.838932, 26.441343>,  <33.145554, 38.241722, 26.674772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573139, 37.838932, 26.441343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.831326, 37.598522, 26.629871>,  <32.986237, 37.454277, 26.742989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.831326, 37.598522, 26.629871>,  <32.573139, 37.838932, 26.441343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831326, 37.598522, 26.629871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697078, -0.211336, 0.685141,
		-0.312180, -0.770782, -0.555372,
		0.645465, -0.601025, 0.471321,
		33.024963, 37.418217, 26.771269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102493, 37.413212, 26.711849>,  <32.573139, 37.838932, 26.441343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102493, 37.413212, 26.711849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.441067, 37.306042, 26.895924>,  <32.644211, 37.241741, 27.006369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.441067, 37.306042, 26.895924>,  <32.102493, 37.413212, 26.711849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441067, 37.306042, 26.895924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527879, -0.308591, 0.791274,
		-0.069991, -0.912682, -0.402632,
		0.846430, -0.267923, 0.460187,
		32.694996, 37.225666, 27.033979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149345, 36.676102, 26.831995>,  <32.102493, 37.413212, 26.711849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149345, 36.676102, 26.831995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.387211, 36.843090, 27.106829>,  <32.529930, 36.943283, 27.271729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.387211, 36.843090, 27.106829>,  <32.149345, 36.676102, 26.831995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387211, 36.843090, 27.106829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608561, -0.324738, 0.724016,
		0.525381, -0.848681, 0.060948,
		0.594667, 0.417475, 0.687086,
		32.565613, 36.968334, 27.312954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366478, 36.168659, 27.363075>,  <32.149345, 36.676102, 26.831995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366478, 36.168659, 27.363075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.407410, 36.527924, 27.534109>,  <32.431969, 36.743484, 27.636728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.407410, 36.527924, 27.534109>,  <32.366478, 36.168659, 27.363075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407410, 36.527924, 27.534109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565495, -0.301103, 0.767823,
		0.818378, -0.320368, 0.477096,
		0.102331, 0.898165, 0.427582,
		32.438110, 36.797375, 27.662384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565834, 36.054535, 28.097427>,  <32.366478, 36.168659, 27.363075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565834, 36.054535, 28.097427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.409679, 36.420654, 28.057764>,  <32.315987, 36.640327, 28.033966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.409679, 36.420654, 28.057764>,  <32.565834, 36.054535, 28.097427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409679, 36.420654, 28.057764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649039, -0.197225, 0.734745,
		0.652954, 0.351190, 0.671057,
		-0.390384, 0.915297, -0.099157,
		32.292564, 36.695244, 28.028017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472549, 36.177757, 28.805843>,  <32.565834, 36.054535, 28.097427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472549, 36.177757, 28.805843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258499, 36.445648, 28.599890>,  <32.130070, 36.606380, 28.476318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.258499, 36.445648, 28.599890>,  <32.472549, 36.177757, 28.805843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258499, 36.445648, 28.599890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653196, 0.058463, 0.754928,
		0.535696, 0.740304, 0.406177,
		-0.535130, 0.669725, -0.514883,
		32.097961, 36.646564, 28.445425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098267, 36.694168, 29.332315>,  <32.472549, 36.177757, 28.805843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098267, 36.694168, 29.332315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.890497, 36.749565, 28.995029>,  <31.765835, 36.782803, 28.792658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.890497, 36.749565, 28.995029>,  <32.098267, 36.694168, 29.332315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.890497, 36.749565, 28.995029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849775, 0.020079, 0.526764,
		0.089885, 0.990159, 0.107260,
		-0.519426, 0.138494, -0.843217,
		31.734669, 36.791115, 28.742064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658241, 37.221264, 29.427160>,  <32.098267, 36.694168, 29.332315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658241, 37.221264, 29.427160> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.484507, 37.035271, 29.118578>,  <31.380266, 36.923676, 28.933428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.484507, 37.035271, 29.118578>,  <31.658241, 37.221264, 29.427160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484507, 37.035271, 29.118578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890709, 0.094188, 0.444710,
		-0.134120, 0.880297, -0.455071,
		-0.434338, -0.464980, -0.771456,
		31.354204, 36.895775, 28.887142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.123959, 37.650021, 29.203133>,  <31.658241, 37.221264, 29.427160>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.123959, 37.650021, 29.203133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.031504, 37.276360, 29.094368>,  <30.976030, 37.052162, 29.029108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.031504, 37.276360, 29.094368>,  <31.123959, 37.650021, 29.203133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.031504, 37.276360, 29.094368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880520, 0.081972, 0.466867,
		-0.413835, 0.347335, -0.841486,
		-0.231138, -0.934151, -0.271913,
		30.962162, 36.996113, 29.012794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486761, 37.755947, 28.974148>,  <31.123959, 37.650021, 29.203133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486761, 37.755947, 28.974148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.501137, 37.357292, 29.003584>,  <30.509762, 37.118099, 29.021246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.501137, 37.357292, 29.003584>,  <30.486761, 37.755947, 28.974148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.501137, 37.357292, 29.003584> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910089, -0.002217, 0.414407,
		-0.412852, -0.081868, -0.907111,
		0.035937, -0.996641, 0.073592,
		30.511917, 37.058300, 29.025661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.915110, 38.281666, 29.211754>,  <30.486761, 37.755947, 28.974148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.915110, 38.281666, 29.211754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.772560, 38.633377, 29.338165>,  <29.687031, 38.844402, 29.414013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.772560, 38.633377, 29.338165>,  <29.915110, 38.281666, 29.211754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772560, 38.633377, 29.338165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448724, 0.457741, -0.767542,
		-0.819539, -0.131723, -0.557679,
		-0.356375, 0.879274, 0.316029,
		29.665648, 38.897160, 29.432974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486868, 38.695511, 28.780989>,  <29.915110, 38.281666, 29.211754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486868, 38.695511, 28.780989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.658646, 38.974522, 29.010435>,  <29.761713, 39.141930, 29.148102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.658646, 38.974522, 29.010435>,  <29.486868, 38.695511, 28.780989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.658646, 38.974522, 29.010435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331344, 0.469174, -0.818589,
		-0.840112, 0.541602, -0.029637,
		0.429445, 0.697526, 0.573615,
		29.787479, 39.183781, 29.182520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262775, 39.398712, 28.609072>,  <29.486868, 38.695511, 28.780989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.262775, 39.398712, 28.609072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.638063, 39.399899, 28.747482>,  <29.863235, 39.400612, 28.830528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.638063, 39.399899, 28.747482>,  <29.262775, 39.398712, 28.609072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638063, 39.399899, 28.747482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334123, 0.252406, -0.908104,
		-0.090037, 0.967617, 0.235820,
		0.938219, 0.002970, 0.346028,
		29.919529, 39.400791, 28.851292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618469, 40.058495, 28.395147>,  <29.262775, 39.398712, 28.609072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618469, 40.058495, 28.395147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.868551, 39.751892, 28.453909>,  <30.018600, 39.567928, 28.489166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.868551, 39.751892, 28.453909>,  <29.618469, 40.058495, 28.395147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868551, 39.751892, 28.453909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435677, 0.186604, -0.880547,
		0.647536, 0.614525, 0.450617,
		0.625206, -0.766510, 0.146902,
		30.056112, 39.521938, 28.497980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265867, 40.331104, 28.243006>,  <29.618469, 40.058495, 28.395147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265867, 40.331104, 28.243006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.335615, 39.938549, 28.210844>,  <30.377464, 39.703014, 28.191547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.335615, 39.938549, 28.210844>,  <30.265867, 40.331104, 28.243006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335615, 39.938549, 28.210844> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529787, 0.162334, -0.832450,
		0.830012, 0.102558, 0.548235,
		0.174371, -0.981392, -0.080405,
		30.387926, 39.644131, 28.186722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027412, 40.288956, 28.085604>,  <30.265867, 40.331104, 28.243006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027412, 40.288956, 28.085604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.851637, 39.959297, 27.942680>,  <30.746172, 39.761501, 27.856926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.851637, 39.959297, 27.942680>,  <31.027412, 40.288956, 28.085604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851637, 39.959297, 27.942680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559367, 0.060169, -0.826734,
		0.702852, -0.563166, 0.434562,
		-0.439441, -0.824151, -0.357306,
		30.719805, 39.712051, 27.835489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558804, 39.913807, 27.691078>,  <31.027412, 40.288956, 28.085604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558804, 39.913807, 27.691078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.224920, 39.740944, 27.554552>,  <31.024590, 39.637226, 27.472635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.224920, 39.740944, 27.554552>,  <31.558804, 39.913807, 27.691078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224920, 39.740944, 27.554552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383082, -0.010419, -0.923656,
		0.395611, -0.901737, 0.174250,
		-0.834710, -0.432160, -0.341317,
		30.974506, 39.611298, 27.452158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797100, 39.370754, 27.304850>,  <31.558804, 39.913807, 27.691078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797100, 39.370754, 27.304850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.434664, 39.468147, 27.166451>,  <31.217201, 39.526585, 27.083410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.434664, 39.468147, 27.166451>,  <31.797100, 39.370754, 27.304850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434664, 39.468147, 27.166451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374010, 0.078685, -0.924081,
		-0.197772, -0.966709, -0.162360,
		-0.906092, 0.243481, -0.345997,
		31.162836, 39.541191, 27.062651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627878, 38.883953, 26.813673>,  <31.797100, 39.370754, 27.304850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627878, 38.883953, 26.813673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.400162, 39.204296, 26.739344>,  <31.263533, 39.396503, 26.694746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.400162, 39.204296, 26.739344>,  <31.627878, 38.883953, 26.813673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400162, 39.204296, 26.739344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292714, -0.013769, -0.956101,
		-0.768261, -0.598694, -0.226584,
		-0.569292, 0.800860, -0.185824,
		31.229374, 39.444553, 26.683596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372787, 38.794056, 26.082287>,  <31.627878, 38.883953, 26.813673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372787, 38.794056, 26.082287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.314659, 39.176937, 26.182404>,  <31.279781, 39.406666, 26.242474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.314659, 39.176937, 26.182404>,  <31.372787, 38.794056, 26.082287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314659, 39.176937, 26.182404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070735, 0.262383, -0.962368,
		-0.986852, -0.122150, -0.105838,
		-0.145323, 0.957201, 0.250293,
		31.271063, 39.464096, 26.257492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824594, 39.037777, 25.669235>,  <31.372787, 38.794056, 26.082287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824594, 39.037777, 25.669235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.034872, 39.357449, 25.785824>,  <31.161039, 39.549252, 25.855778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.034872, 39.357449, 25.785824>,  <30.824594, 39.037777, 25.669235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034872, 39.357449, 25.785824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032387, 0.323585, -0.945644,
		-0.850057, 0.506560, 0.144224,
		0.525694, 0.799181, 0.291471,
		31.192581, 39.597202, 25.873264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735546, 39.555714, 25.243509>,  <30.824594, 39.037777, 25.669235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735546, 39.555714, 25.243509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.047319, 39.735729, 25.417841>,  <31.234383, 39.843739, 25.522440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.047319, 39.735729, 25.417841>,  <30.735546, 39.555714, 25.243509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047319, 39.735729, 25.417841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212633, 0.464343, -0.859751,
		-0.589299, 0.762790, 0.266231,
		0.779432, 0.450041, 0.435831,
		31.281149, 39.870743, 25.548590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723181, 40.265053, 25.075838>,  <30.735546, 39.555714, 25.243509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723181, 40.265053, 25.075838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.107008, 40.223671, 25.180548>,  <31.337305, 40.198841, 25.243374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.107008, 40.223671, 25.180548>,  <30.723181, 40.265053, 25.075838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.107008, 40.223671, 25.180548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279497, 0.460250, -0.842646,
		-0.033310, 0.881742, 0.470555,
		0.959569, -0.103450, 0.261775,
		31.394878, 40.192635, 25.259081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098024, 41.017197, 25.064707>,  <30.723181, 40.265053, 25.075838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098024, 41.017197, 25.064707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.350843, 40.712257, 25.009071>,  <31.502535, 40.529293, 24.975691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.350843, 40.712257, 25.009071>,  <31.098024, 41.017197, 25.064707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350843, 40.712257, 25.009071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529820, 0.556096, -0.640350,
		0.565514, 0.331041, 0.755385,
		0.632048, -0.762345, -0.139088,
		31.540459, 40.483555, 24.967344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571085, 41.379803, 25.073074>,  <31.098024, 41.017197, 25.064707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571085, 41.379803, 25.073074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.706873, 41.038788, 24.914110>,  <31.788345, 40.834179, 24.818731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.706873, 41.038788, 24.914110>,  <31.571085, 41.379803, 25.073074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706873, 41.038788, 24.914110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462512, 0.519188, -0.718698,
		0.819050, 0.060169, 0.570558,
		0.339470, -0.852540, -0.397412,
		31.808714, 40.783028, 24.794886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241917, 41.516888, 24.947897>,  <31.571085, 41.379803, 25.073074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241917, 41.516888, 24.947897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.146866, 41.217583, 24.700142>,  <32.089836, 41.038002, 24.551489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.146866, 41.217583, 24.700142>,  <32.241917, 41.516888, 24.947897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146866, 41.217583, 24.700142> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392085, 0.509509, -0.765943,
		0.888709, -0.424860, 0.172309,
		-0.237626, -0.748261, -0.619387,
		32.075577, 40.993103, 24.514326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792416, 41.417709, 24.573399>,  <32.241917, 41.516888, 24.947897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792416, 41.417709, 24.573399> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.528667, 41.236088, 24.333710>,  <32.370419, 41.127113, 24.189898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.528667, 41.236088, 24.333710>,  <32.792416, 41.417709, 24.573399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528667, 41.236088, 24.333710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425780, 0.431365, -0.795384,
		0.619634, -0.779587, -0.091099,
		-0.659367, -0.454058, -0.599221,
		32.330856, 41.099869, 24.153944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186550, 41.252083, 24.136440>,  <32.792416, 41.417709, 24.573399>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186550, 41.252083, 24.136440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.834175, 41.211781, 23.951488>,  <32.622749, 41.187599, 23.840517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.834175, 41.211781, 23.951488>,  <33.186550, 41.252083, 24.136440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834175, 41.211781, 23.951488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423674, 0.267373, -0.865455,
		0.210826, -0.958311, -0.192852,
		-0.880939, -0.100754, -0.462380,
		32.569893, 41.181553, 23.812775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351601, 40.943951, 23.567879>,  <33.186550, 41.252083, 24.136440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351601, 40.943951, 23.567879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.009876, 41.137474, 23.491898>,  <32.804844, 41.253590, 23.446310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.009876, 41.137474, 23.491898>,  <33.351601, 40.943951, 23.567879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009876, 41.137474, 23.491898> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359433, 0.285928, -0.888287,
		-0.375451, -0.827146, -0.418169,
		-0.854309, 0.483812, -0.189952,
		32.753582, 41.282619, 23.434912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197636, 40.725639, 22.940868>,  <33.351601, 40.943951, 23.567879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197636, 40.725639, 22.940868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982342, 41.060741, 22.977688>,  <32.853165, 41.261803, 22.999779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982342, 41.060741, 22.977688>,  <33.197636, 40.725639, 22.940868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982342, 41.060741, 22.977688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365093, 0.330205, -0.870444,
		-0.759611, -0.434899, -0.483586,
		-0.538237, 0.837752, 0.092049,
		32.820869, 41.312065, 23.005302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904472, 40.801800, 22.275208>,  <33.197636, 40.725639, 22.940868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904472, 40.801800, 22.275208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.882553, 41.163670, 22.444233>,  <32.869400, 41.380791, 22.545649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.882553, 41.163670, 22.444233>,  <32.904472, 40.801800, 22.275208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882553, 41.163670, 22.444233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411468, 0.406056, -0.815973,
		-0.909775, 0.129159, -0.394496,
		-0.054797, 0.904674, 0.422565,
		32.866116, 41.435074, 22.571003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806866, 41.203419, 21.761324>,  <32.904472, 40.801800, 22.275208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806866, 41.203419, 21.761324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.917095, 41.473705, 22.034809>,  <32.983234, 41.635876, 22.198900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.917095, 41.473705, 22.034809>,  <32.806866, 41.203419, 21.761324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.917095, 41.473705, 22.034809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422418, 0.553780, -0.717559,
		-0.863495, 0.486553, -0.132828,
		0.275573, 0.675717, 0.683715,
		32.999767, 41.676422, 22.239923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652889, 41.829014, 21.495262>,  <32.806866, 41.203419, 21.761324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652889, 41.829014, 21.495262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.911495, 41.934910, 21.781460>,  <33.066658, 41.998447, 21.953178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.911495, 41.934910, 21.781460>,  <32.652889, 41.829014, 21.495262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911495, 41.934910, 21.781460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455854, 0.617963, -0.640561,
		-0.611731, 0.740293, 0.278839,
		0.646515, 0.264741, 0.715493,
		33.105450, 42.014332, 21.996107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523708, 42.467453, 21.606525>,  <32.652889, 41.829014, 21.495262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523708, 42.467453, 21.606525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.888630, 42.408012, 21.759165>,  <33.107582, 42.372349, 21.850748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.888630, 42.408012, 21.759165>,  <32.523708, 42.467453, 21.606525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888630, 42.408012, 21.759165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352231, 0.760070, -0.546101,
		-0.208888, 0.632621, 0.745759,
		0.912304, -0.148605, 0.381598,
		33.162323, 42.363430, 21.873644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761139, 43.172493, 21.764751>,  <32.523708, 42.467453, 21.606525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761139, 43.172493, 21.764751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.080364, 42.932709, 21.740290>,  <33.271900, 42.788837, 21.725613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.080364, 42.932709, 21.740290>,  <32.761139, 43.172493, 21.764751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080364, 42.932709, 21.740290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477623, 0.691184, -0.542348,
		0.367387, 0.403618, 0.837925,
		0.798062, -0.599464, -0.061155,
		33.319782, 42.752869, 21.721943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268341, 43.635208, 21.900608>,  <32.761139, 43.172493, 21.764751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268341, 43.635208, 21.900608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449158, 43.311703, 21.750109>,  <33.557648, 43.117599, 21.659809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449158, 43.311703, 21.750109>,  <33.268341, 43.635208, 21.900608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449158, 43.311703, 21.750109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541513, 0.584002, -0.604735,
		0.708814, 0.069626, 0.701950,
		0.452046, -0.808760, -0.376246,
		33.584770, 43.069073, 21.637236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973476, 43.691349, 22.048990>,  <33.268341, 43.635208, 21.900608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973476, 43.691349, 22.048990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.931252, 43.485683, 21.708523>,  <33.905918, 43.362282, 21.504242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.931252, 43.485683, 21.708523>,  <33.973476, 43.691349, 22.048990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931252, 43.485683, 21.708523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582425, 0.661806, -0.472011,
		0.806001, -0.545569, 0.229602,
		-0.105563, -0.514167, -0.851169,
		33.899582, 43.331432, 21.453173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584614, 43.825035, 21.763062>,  <33.973476, 43.691349, 22.048990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584614, 43.825035, 21.763062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.352394, 43.686459, 21.468323>,  <34.213062, 43.603313, 21.291479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.352394, 43.686459, 21.468323>,  <34.584614, 43.825035, 21.763062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352394, 43.686459, 21.468323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464889, 0.601925, -0.649280,
		0.668465, -0.719489, -0.188389,
		-0.580546, -0.346441, -0.736848,
		34.178230, 43.582527, 21.247269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447468, 43.723507, 21.799095>,  <34.584614, 43.825035, 21.763062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447468, 43.723507, 21.799095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.752583, 43.901279, 21.986984>,  <35.935650, 44.007942, 22.099718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.752583, 43.901279, 21.986984>,  <35.447468, 43.723507, 21.799095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752583, 43.901279, 21.986984> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346866, -0.331839, 0.877249,
		0.545753, -0.832082, -0.098961,
		0.762783, 0.444435, 0.469723,
		35.981419, 44.034611, 22.127901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841999, 43.210297, 22.137291>,  <35.447468, 43.723507, 21.799095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841999, 43.210297, 22.137291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.920971, 43.553452, 22.327047>,  <35.968353, 43.759346, 22.440901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.920971, 43.553452, 22.327047>,  <35.841999, 43.210297, 22.137291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920971, 43.553452, 22.327047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222761, -0.431999, 0.873931,
		0.954672, -0.278217, 0.105814,
		0.197431, 0.857888, 0.474393,
		35.980202, 43.810818, 22.469366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.220905, 43.060497, 22.765347>,  <35.841999, 43.210297, 22.137291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.220905, 43.060497, 22.765347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.098118, 43.436893, 22.822355>,  <36.024445, 43.662731, 22.856560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.098118, 43.436893, 22.822355>,  <36.220905, 43.060497, 22.765347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098118, 43.436893, 22.822355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171196, -0.201903, 0.964327,
		0.936196, 0.271619, 0.223071,
		-0.306968, 0.940988, 0.142521,
		36.006027, 43.719189, 22.865112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474693, 43.342422, 23.379660>,  <36.220905, 43.060497, 22.765347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474693, 43.342422, 23.379660> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.183632, 43.611858, 23.327810>,  <36.008995, 43.773521, 23.296700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.183632, 43.611858, 23.327810>,  <36.474693, 43.342422, 23.379660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183632, 43.611858, 23.327810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258187, -0.093873, 0.961524,
		0.635504, 0.733120, 0.242219,
		-0.727650, 0.673589, -0.129625,
		35.965336, 43.813934, 23.288923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549900, 43.770218, 23.986786>,  <36.474693, 43.342422, 23.379660>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549900, 43.770218, 23.986786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.190636, 43.858807, 23.834858>,  <35.975079, 43.911961, 23.743700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.190636, 43.858807, 23.834858>,  <36.549900, 43.770218, 23.986786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190636, 43.858807, 23.834858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401647, -0.061844, 0.913704,
		0.178870, 0.973204, 0.144499,
		-0.898157, 0.221472, -0.379822,
		35.921188, 43.925247, 23.720911>
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
