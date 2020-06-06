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
	<24.568935, 34.900387, 35.465824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.538548, 34.804947, 35.078568>,  <24.520315, 34.747684, 34.846214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.538548, 34.804947, 35.078568>,  <24.568935, 34.900387, 35.465824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.538548, 34.804947, 35.078568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928193, 0.337780, -0.156083,
		0.364260, -0.910480, 0.195805,
		-0.075972, -0.238600, -0.968142,
		24.515757, 34.733368, 34.788124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.067251, 34.353878, 35.317291>,  <24.568935, 34.900387, 35.465824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.067251, 34.353878, 35.317291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.957533, 34.590405, 35.013947>,  <24.891703, 34.732319, 34.831940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.957533, 34.590405, 35.013947>,  <25.067251, 34.353878, 35.317291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.957533, 34.590405, 35.013947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951552, 0.280850, -0.125187,
		0.138961, -0.755958, -0.639701,
		-0.274296, 0.591313, -0.758361,
		24.875244, 34.767799, 34.786438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.596975, 34.352489, 34.893993>,  <25.067251, 34.353878, 35.317291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.596975, 34.352489, 34.893993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411486, 34.696323, 34.808140>,  <25.300192, 34.902626, 34.756626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.411486, 34.696323, 34.808140>,  <25.596975, 34.352489, 34.893993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.411486, 34.696323, 34.808140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885652, 0.443161, -0.138666,
		-0.024077, -0.254396, -0.966800,
		-0.463725, 0.859588, -0.214636,
		25.272367, 34.954201, 34.743748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.749029, 34.642063, 34.262360>,  <25.596975, 34.352489, 34.893993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.749029, 34.642063, 34.262360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680080, 34.903416, 34.557217>,  <25.638712, 35.060226, 34.734131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.680080, 34.903416, 34.557217>,  <25.749029, 34.642063, 34.262360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.680080, 34.903416, 34.557217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907098, 0.397024, -0.139801,
		-0.384007, 0.644562, -0.661120,
		-0.172370, 0.653385, 0.737141,
		25.628370, 35.099430, 34.778358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.856552, 35.259079, 34.049583>,  <25.749029, 34.642063, 34.262360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.856552, 35.259079, 34.049583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896282, 35.301003, 34.445393>,  <25.920120, 35.326157, 34.682877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896282, 35.301003, 34.445393>,  <25.856552, 35.259079, 34.049583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896282, 35.301003, 34.445393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804438, 0.576852, -0.141849,
		-0.585674, 0.810096, -0.027019,
		0.099326, 0.104813, 0.989519,
		25.926081, 35.332447, 34.742249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671644, 36.050148, 34.255989>,  <25.856552, 35.259079, 34.049583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671644, 36.050148, 34.255989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931080, 35.822277, 34.457897>,  <26.086740, 35.685555, 34.579044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.931080, 35.822277, 34.457897>,  <25.671644, 36.050148, 34.255989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.931080, 35.822277, 34.457897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738337, 0.632008, -0.235424,
		-0.184906, 0.525387, 0.830529,
		0.648589, -0.569679, 0.504775,
		26.125656, 35.651375, 34.609329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.156233, 36.415081, 34.745090>,  <25.671644, 36.050148, 34.255989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.156233, 36.415081, 34.745090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.361147, 36.083164, 34.656540>,  <26.484095, 35.884014, 34.603409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.361147, 36.083164, 34.656540>,  <26.156233, 36.415081, 34.745090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.361147, 36.083164, 34.656540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809759, 0.552571, -0.197372,
		0.286102, -0.078147, 0.955007,
		0.512285, -0.829794, -0.221372,
		26.514832, 35.834225, 34.590130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861483, 36.560841, 34.991863>,  <26.156233, 36.415081, 34.745090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861483, 36.560841, 34.991863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904657, 36.234524, 34.764591>,  <26.930563, 36.038734, 34.628227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.904657, 36.234524, 34.764591>,  <26.861483, 36.560841, 34.991863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.904657, 36.234524, 34.764591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896735, 0.326633, -0.298625,
		0.429203, -0.477274, 0.766808,
		0.107939, -0.815795, -0.568180,
		26.937038, 35.989784, 34.594139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.371330, 36.041080, 35.386570>,  <26.861483, 36.560841, 34.991863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.371330, 36.041080, 35.386570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326996, 36.065586, 34.989792>,  <27.300396, 36.080288, 34.751724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.326996, 36.065586, 34.989792>,  <27.371330, 36.041080, 35.386570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.326996, 36.065586, 34.989792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944619, 0.316703, -0.085986,
		0.308886, -0.946545, -0.092969,
		-0.110833, 0.061260, -0.991949,
		27.293745, 36.083965, 34.692207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884134, 35.638901, 35.083576>,  <27.371330, 36.041080, 35.386570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884134, 35.638901, 35.083576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772509, 35.883202, 34.787170>,  <27.705532, 36.029781, 34.609325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772509, 35.883202, 34.787170>,  <27.884134, 35.638901, 35.083576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772509, 35.883202, 34.787170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958920, 0.218180, -0.181302,
		0.050944, -0.761168, -0.646550,
		-0.279065, 0.610754, -0.741015,
		27.688789, 36.066429, 34.564865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.202946, 35.391521, 34.450039>,  <27.884134, 35.638901, 35.083576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.202946, 35.391521, 34.450039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105167, 35.778870, 34.429985>,  <28.046501, 36.011276, 34.417953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.105167, 35.778870, 34.429985>,  <28.202946, 35.391521, 34.450039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.105167, 35.778870, 34.429985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969351, 0.242728, -0.037974,
		-0.024605, -0.057876, -0.998021,
		-0.244445, 0.968366, -0.050130,
		28.031834, 36.069378, 34.414948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866796, 35.672321, 34.267803>,  <28.202946, 35.391521, 34.450039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866796, 35.672321, 34.267803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655893, 36.005909, 34.332909>,  <28.529352, 36.206062, 34.371971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.655893, 36.005909, 34.332909>,  <28.866796, 35.672321, 34.267803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655893, 36.005909, 34.332909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849648, 0.515218, 0.112467,
		0.009934, 0.197592, -0.980234,
		-0.527257, 0.833971, 0.162765,
		28.497717, 36.256100, 34.381737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138157, 36.332951, 34.641460>,  <28.866796, 35.672321, 34.267803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138157, 36.332951, 34.641460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.079218, 36.671059, 34.436012>,  <29.043856, 36.873924, 34.312744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.079218, 36.671059, 34.436012>,  <29.138157, 36.332951, 34.641460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.079218, 36.671059, 34.436012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985263, -0.079830, 0.151271,
		0.086863, 0.528342, 0.844576,
		-0.147345, 0.845270, -0.513622,
		29.035015, 36.924641, 34.281925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683229, 36.731422, 35.028572>,  <29.138157, 36.332951, 34.641460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683229, 36.731422, 35.028572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632740, 36.813885, 34.640434>,  <28.602446, 36.863361, 34.407551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632740, 36.813885, 34.640434>,  <28.683229, 36.731422, 35.028572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632740, 36.813885, 34.640434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954792, -0.290639, 0.062454,
		-0.269144, 0.934360, 0.233522,
		-0.126226, 0.206156, -0.970344,
		28.594872, 36.875732, 34.349331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119274, 37.245510, 34.872650>,  <28.683229, 36.731422, 35.028572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119274, 37.245510, 34.872650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186024, 36.987392, 34.574455>,  <28.226074, 36.832523, 34.395538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.186024, 36.987392, 34.574455>,  <28.119274, 37.245510, 34.872650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.186024, 36.987392, 34.574455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946726, -0.316078, 0.061676,
		-0.275431, 0.695479, -0.663662,
		0.166875, -0.645294, -0.745485,
		28.236086, 36.793804, 34.350811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712763, 37.325863, 34.255623>,  <28.119274, 37.245510, 34.872650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.712763, 37.325863, 34.255623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811214, 36.941803, 34.308590>,  <27.870285, 36.711369, 34.340370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811214, 36.941803, 34.308590>,  <27.712763, 37.325863, 34.255623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.811214, 36.941803, 34.308590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958762, -0.261216, -0.111985,
		0.142114, -0.099399, -0.984847,
		0.246127, -0.960149, 0.132422,
		27.885052, 36.653759, 34.348316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.273624, 36.987198, 33.767326>,  <27.712763, 37.325863, 34.255623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.273624, 36.987198, 33.767326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411161, 36.690178, 33.997242>,  <27.493683, 36.511967, 34.135193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.411161, 36.690178, 33.997242>,  <27.273624, 36.987198, 33.767326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411161, 36.690178, 33.997242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914365, -0.404124, 0.024903,
		0.213796, -0.534134, -0.817920,
		0.343842, -0.742553, 0.574794,
		27.514315, 36.467411, 34.169682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196672, 36.424122, 33.385990>,  <27.273624, 36.987198, 33.767326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196672, 36.424122, 33.385990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219624, 36.323105, 33.772343>,  <27.233395, 36.262497, 34.004154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219624, 36.323105, 33.772343>,  <27.196672, 36.424122, 33.385990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219624, 36.323105, 33.772343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956353, -0.291569, -0.019421,
		0.286527, -0.922611, -0.258246,
		0.057378, -0.252539, 0.965884,
		27.236837, 36.247341, 34.062107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580063, 35.830395, 33.424107>,  <27.196672, 36.424122, 33.385990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580063, 35.830395, 33.424107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268616, 35.657204, 33.242435>,  <27.081747, 35.553288, 33.133430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268616, 35.657204, 33.242435>,  <27.580063, 35.830395, 33.424107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268616, 35.657204, 33.242435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627441, 0.546805, 0.554366,
		0.008320, 0.716613, -0.697422,
		-0.778619, -0.432979, -0.454182,
		27.035030, 35.527309, 33.106182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046551, 36.425270, 33.397373>,  <27.580063, 35.830395, 33.424107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046551, 36.425270, 33.397373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088404, 36.690269, 33.694061>,  <28.113516, 36.849270, 33.872074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088404, 36.690269, 33.694061>,  <28.046551, 36.425270, 33.397373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.088404, 36.690269, 33.694061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948920, 0.156721, -0.273841,
		-0.297662, 0.732485, -0.612260,
		0.104631, 0.662498, 0.741720,
		28.119793, 36.889019, 33.916576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314516, 37.178562, 33.137150>,  <28.046551, 36.425270, 33.397373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314516, 37.178562, 33.137150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.418343, 37.093830, 33.514030>,  <28.480639, 37.042992, 33.740158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.418343, 37.093830, 33.514030>,  <28.314516, 37.178562, 33.137150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.418343, 37.093830, 33.514030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965599, 0.072717, -0.249663,
		-0.015627, 0.974597, 0.223421,
		0.259567, -0.211833, 0.942206,
		28.496212, 37.030281, 33.796692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725603, 37.717346, 33.550682>,  <28.314516, 37.178562, 33.137150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725603, 37.717346, 33.550682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821239, 37.359516, 33.701717>,  <28.878620, 37.144817, 33.792339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.821239, 37.359516, 33.701717>,  <28.725603, 37.717346, 33.550682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.821239, 37.359516, 33.701717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965798, 0.178902, -0.187694,
		0.100355, 0.409548, 0.906752,
		0.239090, -0.894575, 0.377587,
		28.892967, 37.091145, 33.814995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268145, 37.860950, 34.011223>,  <28.725603, 37.717346, 33.550682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268145, 37.860950, 34.011223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294598, 37.492363, 33.858112>,  <29.310469, 37.271210, 33.766247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.294598, 37.492363, 33.858112>,  <29.268145, 37.860950, 34.011223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294598, 37.492363, 33.858112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984406, 0.122922, -0.125839,
		0.163009, -0.368484, 0.915231,
		0.066133, -0.921471, -0.382775,
		29.314438, 37.215923, 33.743279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051731, 37.833851, 33.996311>,  <29.268145, 37.860950, 34.011223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051731, 37.833851, 33.996311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935047, 37.509457, 33.793449>,  <29.865038, 37.314819, 33.671734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935047, 37.509457, 33.793449>,  <30.051731, 37.833851, 33.996311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935047, 37.509457, 33.793449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936117, -0.133165, -0.325501,
		0.196444, -0.569703, 0.798028,
		-0.291708, -0.810990, -0.507150,
		29.847534, 37.266159, 33.641304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618313, 38.327721, 34.134323>,  <30.051731, 37.833851, 33.996311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618313, 38.327721, 34.134323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997351, 38.443066, 34.189339>,  <31.224773, 38.512272, 34.222347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.997351, 38.443066, 34.189339>,  <30.618313, 38.327721, 34.134323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997351, 38.443066, 34.189339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226242, 0.301713, 0.926166,
		0.225572, -0.908745, 0.351140,
		0.947593, 0.288360, 0.137538,
		31.281628, 38.529575, 34.230598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901384, 38.037319, 34.688656>,  <30.618313, 38.327721, 34.134323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901384, 38.037319, 34.688656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094490, 38.381023, 34.620995>,  <31.210354, 38.587246, 34.580399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094490, 38.381023, 34.620995>,  <30.901384, 38.037319, 34.688656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094490, 38.381023, 34.620995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157046, 0.274959, 0.948543,
		0.861554, -0.431359, 0.267684,
		0.482764, 0.859260, -0.169149,
		31.239319, 38.638802, 34.570251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384432, 38.094521, 35.203346>,  <30.901384, 38.037319, 34.688656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384432, 38.094521, 35.203346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260519, 38.454445, 35.080467>,  <31.186171, 38.670399, 35.006741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260519, 38.454445, 35.080467>,  <31.384432, 38.094521, 35.203346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260519, 38.454445, 35.080467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048589, 0.307689, 0.950246,
		0.949565, 0.309298, -0.051596,
		-0.309784, 0.899813, -0.307199,
		31.167583, 38.724388, 34.988308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848774, 38.501842, 35.530033>,  <31.384432, 38.094521, 35.203346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848774, 38.501842, 35.530033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535131, 38.715855, 35.404224>,  <31.346947, 38.844261, 35.328739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535131, 38.715855, 35.404224>,  <31.848774, 38.501842, 35.530033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535131, 38.715855, 35.404224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030896, 0.472493, 0.880792,
		0.619859, 0.700351, -0.353954,
		-0.784105, 0.535031, -0.314517,
		31.299900, 38.876366, 35.309868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.986240, 39.315594, 35.776989>,  <31.848774, 38.501842, 35.530033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.986240, 39.315594, 35.776989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606829, 39.198067, 35.729717>,  <31.379181, 39.127552, 35.701355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.606829, 39.198067, 35.729717>,  <31.986240, 39.315594, 35.776989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606829, 39.198067, 35.729717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192865, 0.239947, 0.951435,
		-0.251190, 0.925255, -0.284263,
		-0.948529, -0.293816, -0.118177,
		31.322269, 39.109921, 35.694263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675327, 39.189247, 35.709595>,  <31.986240, 39.315594, 35.776989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675327, 39.189247, 35.709595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547573, 39.075634, 35.347973>,  <32.470921, 39.007465, 35.131001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547573, 39.075634, 35.347973>,  <32.675327, 39.189247, 35.709595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547573, 39.075634, 35.347973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839580, -0.527212, -0.130974,
		-0.439428, -0.800858, 0.406854,
		-0.319389, -0.284033, -0.904055,
		32.451756, 38.990425, 35.076756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670952, 38.475204, 35.477726>,  <32.675327, 39.189247, 35.709595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670952, 38.475204, 35.477726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758423, 38.693058, 35.153862>,  <32.810905, 38.823772, 34.959545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758423, 38.693058, 35.153862>,  <32.670952, 38.475204, 35.477726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758423, 38.693058, 35.153862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855879, -0.505575, -0.108925,
		-0.468668, -0.669151, -0.576704,
		0.218680, 0.544638, -0.809659,
		32.824028, 38.856449, 34.910965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801605, 37.986710, 34.939381>,  <32.670952, 38.475204, 35.477726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801605, 37.986710, 34.939381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966747, 38.332703, 34.825291>,  <33.065834, 38.540298, 34.756836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966747, 38.332703, 34.825291>,  <32.801605, 37.986710, 34.939381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966747, 38.332703, 34.825291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894674, -0.443812, -0.050894,
		-0.170609, -0.234170, -0.957109,
		0.412858, 0.864983, -0.285224,
		33.090603, 38.592197, 34.739723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389103, 37.717205, 34.488197>,  <32.801605, 37.986710, 34.939381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389103, 37.717205, 34.488197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494503, 38.101284, 34.525280>,  <33.557743, 38.331730, 34.547531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.494503, 38.101284, 34.525280>,  <33.389103, 37.717205, 34.488197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494503, 38.101284, 34.525280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964658, -0.262145, -0.026753,
		-0.001384, 0.096482, -0.995334,
		0.263503, 0.960193, 0.092709,
		33.573555, 38.389343, 34.553093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862530, 37.779949, 33.959248>,  <33.389103, 37.717205, 34.488197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862530, 37.779949, 33.959248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908249, 38.060093, 34.241081>,  <33.935680, 38.228180, 34.410183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908249, 38.060093, 34.241081>,  <33.862530, 37.779949, 33.959248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908249, 38.060093, 34.241081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985372, -0.170166, 0.009297,
		0.126408, 0.693214, -0.709560,
		0.114298, 0.700356, 0.704584,
		33.942539, 38.270199, 34.452457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338863, 38.315590, 33.815117>,  <33.862530, 37.779949, 33.959248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338863, 38.315590, 33.815117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335850, 38.233757, 34.206646>,  <34.334042, 38.184658, 34.441563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.335850, 38.233757, 34.206646>,  <34.338863, 38.315590, 33.815117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335850, 38.233757, 34.206646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982264, -0.184907, -0.031086,
		0.187350, 0.961226, 0.202346,
		-0.007535, -0.204581, 0.978821,
		34.333588, 38.172382, 34.500294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422024, 38.999214, 33.960369>,  <34.338863, 38.315590, 33.815117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422024, 38.999214, 33.960369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376892, 38.909443, 34.347542>,  <34.349812, 38.855579, 34.579845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376892, 38.909443, 34.347542>,  <34.422024, 38.999214, 33.960369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376892, 38.909443, 34.347542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986748, 0.089016, 0.135661,
		-0.116609, 0.970415, 0.211415,
		-0.112828, -0.224433, 0.967936,
		34.343044, 38.842113, 34.637924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652405, 39.544724, 34.272293>,  <34.422024, 38.999214, 33.960369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652405, 39.544724, 34.272293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696362, 39.206581, 34.481403>,  <34.722736, 39.003696, 34.606869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.696362, 39.206581, 34.481403>,  <34.652405, 39.544724, 34.272293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.696362, 39.206581, 34.481403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987696, 0.151755, 0.037770,
		-0.111262, 0.512189, 0.851636,
		0.109894, -0.845360, 0.522772,
		34.729328, 38.952972, 34.638233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126472, 39.768555, 34.587574>,  <34.652405, 39.544724, 34.272293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126472, 39.768555, 34.587574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146797, 39.371391, 34.630547>,  <35.158993, 39.133091, 34.656330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146797, 39.371391, 34.630547>,  <35.126472, 39.768555, 34.587574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146797, 39.371391, 34.630547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993453, 0.039231, -0.107298,
		0.102323, 0.112180, 0.988406,
		0.050812, -0.992913, 0.107431,
		35.162041, 39.073517, 34.662777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565781, 39.498718, 35.199192>,  <35.126472, 39.768555, 34.587574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565781, 39.498718, 35.199192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560471, 39.279217, 34.864841>,  <35.557285, 39.147518, 34.664230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.560471, 39.279217, 34.864841>,  <35.565781, 39.498718, 35.199192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.560471, 39.279217, 34.864841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993787, 0.085148, -0.071680,
		0.110508, -0.831638, 0.544212,
		-0.013273, -0.548751, -0.835880,
		35.556488, 39.114590, 34.614079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017754, 39.232944, 34.693497>,  <35.565781, 39.498718, 35.199192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017754, 39.232944, 34.693497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819733, 39.004089, 34.431938>,  <35.700920, 38.866776, 34.275002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.819733, 39.004089, 34.431938>,  <36.017754, 39.232944, 34.693497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819733, 39.004089, 34.431938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057060, 0.729557, -0.681535,
		0.866986, -0.374709, -0.328525,
		-0.495055, -0.572136, -0.653897,
		35.671215, 38.832447, 34.235767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659878, 39.008114, 34.377769>,  <36.017754, 39.232944, 34.693497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659878, 39.008114, 34.377769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519718, 38.884590, 34.731461>,  <36.435623, 38.810478, 34.943676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519718, 38.884590, 34.731461>,  <36.659878, 39.008114, 34.377769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519718, 38.884590, 34.731461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819034, -0.356918, -0.449214,
		0.454316, -0.881617, -0.127857,
		-0.350400, -0.308805, 0.884228,
		36.414597, 38.791950, 34.996731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399006, 38.355247, 34.258892>,  <36.659878, 39.008114, 34.377769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399006, 38.355247, 34.258892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189846, 38.465984, 34.581367>,  <36.064350, 38.532429, 34.774853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.189846, 38.465984, 34.581367>,  <36.399006, 38.355247, 34.258892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.189846, 38.465984, 34.581367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839248, -0.332678, -0.430102,
		0.149128, -0.901488, 0.406300,
		-0.522899, 0.276846, 0.806184,
		36.032978, 38.549038, 34.823223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703300, 38.161335, 34.105309>,  <36.399006, 38.355247, 34.258892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703300, 38.161335, 34.105309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661907, 38.370899, 34.443493>,  <35.637070, 38.496639, 34.646404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661907, 38.370899, 34.443493>,  <35.703300, 38.161335, 34.105309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661907, 38.370899, 34.443493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988763, 0.038015, -0.144580,
		-0.107887, -0.850923, 0.514092,
		-0.103483, 0.523913, 0.845462,
		35.630863, 38.528072, 34.697132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197269, 37.771702, 34.679432>,  <35.703300, 38.161335, 34.105309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197269, 37.771702, 34.679432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192928, 38.171581, 34.688286>,  <35.190323, 38.411507, 34.693600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192928, 38.171581, 34.688286>,  <35.197269, 37.771702, 34.679432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192928, 38.171581, 34.688286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989685, -0.013905, 0.142583,
		0.142847, -0.020363, 0.989535,
		-0.010856, 0.999696, 0.022139,
		35.189671, 38.471489, 34.694927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800091, 37.834930, 35.321915>,  <35.197269, 37.771702, 34.679432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800091, 37.834930, 35.321915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792000, 38.177677, 35.115856>,  <34.787148, 38.383324, 34.992222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792000, 38.177677, 35.115856>,  <34.800091, 37.834930, 35.321915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792000, 38.177677, 35.115856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997689, 0.016133, 0.066002,
		0.064866, 0.515290, 0.854558,
		-0.020223, 0.856864, -0.515145,
		34.785934, 38.434738, 34.961311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351082, 38.249363, 35.714890>,  <34.800091, 37.834930, 35.321915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351082, 38.249363, 35.714890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351677, 38.356274, 35.329441>,  <34.352032, 38.420422, 35.098171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351677, 38.356274, 35.329441>,  <34.351082, 38.249363, 35.714890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351677, 38.356274, 35.329441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990865, 0.130334, 0.034624,
		0.134846, 0.954765, 0.265027,
		0.001485, 0.267276, -0.963619,
		34.352123, 38.436455, 35.040356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058666, 39.004642, 35.493706>,  <34.351082, 38.249363, 35.714890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058666, 39.004642, 35.493706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032784, 38.795403, 35.153782>,  <34.017254, 38.669857, 34.949829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032784, 38.795403, 35.153782>,  <34.058666, 39.004642, 35.493706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032784, 38.795403, 35.153782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946127, 0.302908, -0.114412,
		0.317263, 0.796627, -0.514520,
		-0.064709, -0.523100, -0.849812,
		34.013371, 38.638474, 34.898838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921169, 39.581097, 34.985397>,  <34.058666, 39.004642, 35.493706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921169, 39.581097, 34.985397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807415, 39.220589, 34.854656>,  <33.739162, 39.004284, 34.776211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807415, 39.220589, 34.854656>,  <33.921169, 39.581097, 34.985397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807415, 39.220589, 34.854656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912323, 0.359175, -0.196622,
		0.294607, 0.242278, -0.924396,
		-0.284383, -0.901274, -0.326851,
		33.722099, 38.950207, 34.756599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648308, 39.688065, 34.302185>,  <33.921169, 39.581097, 34.985397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648308, 39.688065, 34.302185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468704, 39.358181, 34.439732>,  <33.360943, 39.160248, 34.522259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.468704, 39.358181, 34.439732>,  <33.648308, 39.688065, 34.302185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468704, 39.358181, 34.439732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871137, 0.318426, -0.373800,
		0.198783, -0.467390, -0.861413,
		-0.449006, -0.824713, 0.343863,
		33.334003, 39.110767, 34.542889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227909, 39.370426, 33.808334>,  <33.648308, 39.688065, 34.302185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227909, 39.370426, 33.808334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079178, 39.274345, 34.167007>,  <32.989937, 39.216698, 34.382214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079178, 39.274345, 34.167007>,  <33.227909, 39.370426, 33.808334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079178, 39.274345, 34.167007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920819, 0.217832, -0.323485,
		-0.117627, -0.945968, -0.302174,
		-0.371830, -0.240197, 0.896688,
		32.967628, 39.202286, 34.436012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644630, 39.162151, 33.596718>,  <33.227909, 39.370426, 33.808334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644630, 39.162151, 33.596718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590878, 39.149967, 33.992901>,  <32.558624, 39.142658, 34.230610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590878, 39.149967, 33.992901>,  <32.644630, 39.162151, 33.596718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590878, 39.149967, 33.992901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988839, 0.069017, -0.132040,
		-0.064340, -0.997151, -0.039370,
		-0.134381, -0.030435, 0.990462,
		32.550564, 39.140831, 34.290039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.146782, 39.710430, 33.962189>,  <32.644630, 39.162151, 33.596718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.146782, 39.710430, 33.962189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512215, 39.858589, 33.895046>,  <32.731476, 39.947483, 33.854763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512215, 39.858589, 33.895046>,  <32.146782, 39.710430, 33.962189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512215, 39.858589, 33.895046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400616, 0.748900, -0.527878,
		-0.069820, 0.549504, 0.832568,
		0.913582, 0.370397, -0.167852,
		32.786289, 39.969707, 33.844692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842575, 39.066170, 33.696735>,  <32.146782, 39.710430, 33.962189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842575, 39.066170, 33.696735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964783, 39.174404, 33.331562>,  <32.038109, 39.239346, 33.112457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964783, 39.174404, 33.331562>,  <31.842575, 39.066170, 33.696735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964783, 39.174404, 33.331562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591154, -0.805520, -0.040915,
		-0.746454, -0.527182, -0.406061,
		0.305520, 0.270586, -0.912930,
		32.056438, 39.255581, 33.057682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861294, 38.465275, 33.307175>,  <31.842575, 39.066170, 33.696735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861294, 38.465275, 33.307175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114609, 38.727730, 33.143009>,  <32.266598, 38.885201, 33.044510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114609, 38.727730, 33.143009>,  <31.861294, 38.465275, 33.307175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114609, 38.727730, 33.143009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678746, -0.725660, -0.112788,
		-0.371823, -0.207138, -0.904899,
		0.633286, 0.656134, -0.410411,
		32.304596, 38.924568, 33.019886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222984, 38.261410, 32.750023>,  <31.861294, 38.465275, 33.307175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222984, 38.261410, 32.750023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466961, 38.569656, 32.823898>,  <32.613346, 38.754604, 32.868225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.466961, 38.569656, 32.823898>,  <32.222984, 38.261410, 32.750023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466961, 38.569656, 32.823898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770233, -0.631316, 0.090445,
		0.186296, 0.087087, -0.978626,
		0.609946, 0.770620, 0.184690,
		32.649944, 38.800842, 32.879307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455364, 38.624298, 32.150196>,  <32.222984, 38.261410, 32.750023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455364, 38.624298, 32.150196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606308, 38.269032, 32.045311>,  <32.696873, 38.055870, 31.982380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.606308, 38.269032, 32.045311>,  <32.455364, 38.624298, 32.150196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606308, 38.269032, 32.045311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878042, -0.253146, -0.406151,
		0.294352, 0.383500, -0.875377,
		0.377357, -0.888170, -0.262215,
		32.719517, 38.002579, 31.966646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482769, 38.424248, 31.384987>,  <32.455364, 38.624298, 32.150196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482769, 38.424248, 31.384987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492920, 38.080227, 31.588814>,  <32.499008, 37.873814, 31.711109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492920, 38.080227, 31.588814>,  <32.482769, 38.424248, 31.384987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492920, 38.080227, 31.588814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765108, -0.344776, -0.543819,
		0.643402, -0.376075, -0.666785,
		0.025375, -0.860056, 0.509567,
		32.500534, 37.822208, 31.741684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302795, 38.043102, 30.838888>,  <32.482769, 38.424248, 31.384987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302795, 38.043102, 30.838888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263012, 37.821899, 31.169775>,  <32.239143, 37.689178, 31.368307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263012, 37.821899, 31.169775>,  <32.302795, 38.043102, 30.838888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263012, 37.821899, 31.169775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760006, -0.494380, -0.421875,
		0.642261, -0.670649, -0.371122,
		-0.099454, -0.553009, 0.827218,
		32.233177, 37.655998, 31.417940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492771, 37.330482, 30.684383>,  <32.302795, 38.043102, 30.838888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492771, 37.330482, 30.684383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226418, 37.322712, 30.982704>,  <32.066605, 37.318050, 31.161695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226418, 37.322712, 30.982704>,  <32.492771, 37.330482, 30.684383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226418, 37.322712, 30.982704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640051, -0.498741, -0.584458,
		0.383314, -0.866533, 0.319673,
		-0.665887, -0.019425, 0.745800,
		32.026653, 37.316883, 31.206444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169056, 36.624119, 30.746109>,  <32.492771, 37.330482, 30.684383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169056, 36.624119, 30.746109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914265, 36.859985, 30.944725>,  <31.761389, 37.001503, 31.063894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914265, 36.859985, 30.944725>,  <32.169056, 36.624119, 30.746109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914265, 36.859985, 30.944725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770557, -0.468412, -0.432241,
		-0.022292, -0.657941, 0.752739,
		-0.636981, 0.589664, 0.496540,
		31.723171, 37.036884, 31.093687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705509, 36.134045, 31.112499>,  <32.169056, 36.624119, 30.746109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705509, 36.134045, 31.112499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516338, 36.485283, 31.083420>,  <31.402836, 36.696026, 31.065971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.516338, 36.485283, 31.083420>,  <31.705509, 36.134045, 31.112499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516338, 36.485283, 31.083420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810303, -0.465847, -0.355522,
		-0.346050, -0.109227, 0.931836,
		-0.472926, 0.878098, -0.072700,
		31.374460, 36.748711, 31.061609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160414, 36.259899, 30.679943>,  <31.705509, 36.134045, 31.112499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160414, 36.259899, 30.679943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990772, 36.438850, 30.364985>,  <30.888988, 36.546223, 30.176010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990772, 36.438850, 30.364985>,  <31.160414, 36.259899, 30.679943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990772, 36.438850, 30.364985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808624, -0.204407, -0.551674,
		-0.407756, -0.870673, -0.275071,
		-0.424102, 0.447378, -0.787395,
		30.863543, 36.573063, 30.128765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606129, 36.074127, 30.106985>,  <31.160414, 36.259899, 30.679943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606129, 36.074127, 30.106985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.976797, 36.202263, 30.028334>,  <31.199198, 36.279144, 29.981142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.976797, 36.202263, 30.028334>,  <30.606129, 36.074127, 30.106985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.976797, 36.202263, 30.028334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215866, 0.025309, -0.976095,
		-0.307701, 0.946966, 0.092602,
		0.926672, 0.320336, -0.196630,
		31.254799, 36.298363, 29.969345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.142981, 35.544491, 30.006620>,  <30.606129, 36.074127, 30.106985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.142981, 35.544491, 30.006620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179728, 35.835621, 29.734787>,  <31.201777, 36.010300, 29.571688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179728, 35.835621, 29.734787>,  <31.142981, 35.544491, 30.006620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179728, 35.835621, 29.734787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617620, 0.576983, 0.534449,
		0.781092, 0.370625, 0.502525,
		0.091869, 0.727824, -0.679583,
		31.207289, 36.053967, 29.530912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910000, 34.987152, 30.273745>,  <31.142981, 35.544491, 30.006620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910000, 34.987152, 30.273745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281246, 34.944221, 30.416340>,  <31.503994, 34.918461, 30.501898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.281246, 34.944221, 30.416340>,  <30.910000, 34.987152, 30.273745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.281246, 34.944221, 30.416340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046185, -0.916955, -0.396310,
		0.369421, 0.384285, -0.846081,
		0.928114, -0.107329, 0.356490,
		31.559681, 34.912022, 30.523287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.408619, 34.935150, 29.727053>,  <30.910000, 34.987152, 30.273745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.408619, 34.935150, 29.727053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523199, 34.742153, 30.058147>,  <31.591948, 34.626354, 30.256805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523199, 34.742153, 30.058147>,  <31.408619, 34.935150, 29.727053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523199, 34.742153, 30.058147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036688, -0.857784, -0.512700,
		0.957393, 0.177231, -0.228010,
		0.286450, -0.482490, 0.827738,
		31.609135, 34.597404, 30.306469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.106400, 34.571487, 29.603340>,  <31.408619, 34.935150, 29.727053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.106400, 34.571487, 29.603340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844870, 34.398533, 29.851713>,  <31.687952, 34.294762, 30.000736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844870, 34.398533, 29.851713>,  <32.106400, 34.571487, 29.603340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844870, 34.398533, 29.851713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021690, -0.831012, -0.555832,
		0.756335, -0.349949, 0.552714,
		-0.653825, -0.432384, 0.620933,
		31.648722, 34.268818, 30.037992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421883, 33.869656, 29.795753>,  <32.106400, 34.571487, 29.603340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421883, 33.869656, 29.795753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025391, 33.921967, 29.788082>,  <31.787497, 33.953354, 29.783480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025391, 33.921967, 29.788082>,  <32.421883, 33.869656, 29.795753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025391, 33.921967, 29.788082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085057, -0.742189, -0.664771,
		-0.101172, -0.657307, 0.746801,
		-0.991226, 0.130777, -0.019181,
		31.728024, 33.961201, 29.782328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029202, 33.252625, 29.946859>,  <32.421883, 33.869656, 29.795753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029202, 33.252625, 29.946859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810738, 33.501423, 29.722420>,  <31.679661, 33.650703, 29.587755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.810738, 33.501423, 29.722420>,  <32.029202, 33.252625, 29.946859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810738, 33.501423, 29.722420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087969, -0.708708, -0.699996,
		-0.833051, -0.332949, 0.441782,
		-0.546157, 0.621995, -0.561101,
		31.646891, 33.688023, 29.554089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520704, 32.809624, 29.636066>,  <32.029202, 33.252625, 29.946859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520704, 32.809624, 29.636066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460302, 33.132626, 29.407988>,  <31.424061, 33.326427, 29.271139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460302, 33.132626, 29.407988>,  <31.520704, 32.809624, 29.636066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460302, 33.132626, 29.407988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273505, -0.588425, -0.760888,
		-0.949943, 0.041055, 0.309713,
		-0.151004, 0.807509, -0.570199,
		31.415001, 33.374878, 29.236927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899513, 32.656063, 29.238091>,  <31.520704, 32.809624, 29.636066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899513, 32.656063, 29.238091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062750, 32.968082, 29.048361>,  <31.160692, 33.155296, 28.934523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.062750, 32.968082, 29.048361>,  <30.899513, 32.656063, 29.238091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062750, 32.968082, 29.048361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261899, -0.397688, -0.879348,
		-0.874569, 0.483078, 0.042003,
		0.408090, 0.780051, -0.474323,
		31.185177, 33.202099, 28.906063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.433262, 32.801197, 28.716522>,  <30.899513, 32.656063, 29.238091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.433262, 32.801197, 28.716522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774483, 32.979214, 28.607531>,  <30.979216, 33.086021, 28.542135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774483, 32.979214, 28.607531>,  <30.433262, 32.801197, 28.716522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774483, 32.979214, 28.607531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207071, -0.190595, -0.959581,
		-0.478985, 0.874993, -0.070433,
		0.853051, 0.445040, -0.272478,
		31.030397, 33.112724, 28.525787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310526, 33.064041, 28.055571>,  <30.433262, 32.801197, 28.716522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310526, 33.064041, 28.055571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710356, 33.056007, 28.047131>,  <30.950254, 33.051186, 28.042067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710356, 33.056007, 28.047131>,  <30.310526, 33.064041, 28.055571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710356, 33.056007, 28.047131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024409, -0.182040, -0.982988,
		0.015901, 0.983086, -0.182453,
		0.999576, -0.020084, -0.021102,
		31.010229, 33.049984, 28.040800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455326, 33.469494, 27.355291>,  <30.310526, 33.064041, 28.055571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455326, 33.469494, 27.355291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777935, 33.256630, 27.458309>,  <30.971500, 33.128914, 27.520121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777935, 33.256630, 27.458309>,  <30.455326, 33.469494, 27.355291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777935, 33.256630, 27.458309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174757, -0.201568, -0.963758,
		0.564784, 0.822301, -0.069571,
		0.806523, -0.532157, 0.257545,
		31.019892, 33.096981, 27.535572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975008, 33.715370, 26.956406>,  <30.455326, 33.469494, 27.355291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975008, 33.715370, 26.956406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061628, 33.341602, 27.069517>,  <31.113602, 33.117340, 27.137384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061628, 33.341602, 27.069517>,  <30.975008, 33.715370, 26.956406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061628, 33.341602, 27.069517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137297, -0.257623, -0.956441,
		0.966569, 0.245944, 0.072505,
		0.216552, -0.934421, 0.282778,
		31.126595, 33.061275, 27.154350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559635, 33.431656, 26.506580>,  <30.975008, 33.715370, 26.956406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559635, 33.431656, 26.506580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389519, 33.096394, 26.643183>,  <31.287449, 32.895237, 26.725145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389519, 33.096394, 26.643183>,  <31.559635, 33.431656, 26.506580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389519, 33.096394, 26.643183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033268, -0.362601, -0.931351,
		0.904446, -0.407454, 0.126326,
		-0.425289, -0.838154, 0.341508,
		31.261932, 32.844948, 26.745636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894831, 32.896305, 26.156992>,  <31.559635, 33.431656, 26.506580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894831, 32.896305, 26.156992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553900, 32.731884, 26.286343>,  <31.349340, 32.633232, 26.363953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.553900, 32.731884, 26.286343>,  <31.894831, 32.896305, 26.156992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553900, 32.731884, 26.286343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127701, -0.436025, -0.890828,
		0.507180, -0.800572, 0.319144,
		-0.852327, -0.411055, 0.323377,
		31.298203, 32.608566, 26.383356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828110, 32.166904, 25.888039>,  <31.894831, 32.896305, 26.156992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828110, 32.166904, 25.888039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444017, 32.233200, 25.977913>,  <31.213562, 32.272976, 26.031837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444017, 32.233200, 25.977913>,  <31.828110, 32.166904, 25.888039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444017, 32.233200, 25.977913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279137, -0.552789, -0.785179,
		-0.005929, -0.816673, 0.577070,
		-0.960233, 0.165737, 0.224686,
		31.155947, 32.282921, 26.045319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548550, 31.511862, 25.751545>,  <31.828110, 32.166904, 25.888039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548550, 31.511862, 25.751545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263874, 31.792852, 25.753567>,  <31.093069, 31.961447, 25.754780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.263874, 31.792852, 25.753567>,  <31.548550, 31.511862, 25.751545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.263874, 31.792852, 25.753567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446414, -0.446685, -0.775363,
		-0.542419, -0.554072, 0.631496,
		-0.711686, 0.702480, 0.005055,
		31.050367, 32.003597, 25.755083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.961805, 31.139198, 25.560934>,  <31.548550, 31.511862, 25.751545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.961805, 31.139198, 25.560934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869577, 31.522743, 25.494699>,  <30.814240, 31.752871, 25.454958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869577, 31.522743, 25.494699>,  <30.961805, 31.139198, 25.560934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869577, 31.522743, 25.494699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483972, -0.260638, -0.835367,
		-0.844161, -0.112473, 0.524159,
		-0.230572, 0.958863, -0.165586,
		30.800406, 31.810402, 25.445024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231394, 31.218660, 25.341251>,  <30.961805, 31.139198, 25.560934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231394, 31.218660, 25.341251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369720, 31.574139, 25.220829>,  <30.452717, 31.787426, 25.148575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369720, 31.574139, 25.220829>,  <30.231394, 31.218660, 25.341251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369720, 31.574139, 25.220829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604560, -0.034341, -0.795819,
		-0.717578, 0.457214, 0.525393,
		0.345817, 0.888694, -0.301056,
		30.473465, 31.840746, 25.130512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.628653, 31.698112, 25.179363>,  <30.231394, 31.218660, 25.341251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.628653, 31.698112, 25.179363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946056, 31.833673, 24.977180>,  <30.136499, 31.915010, 24.855871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946056, 31.833673, 24.977180>,  <29.628653, 31.698112, 25.179363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946056, 31.833673, 24.977180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534122, -0.010189, -0.845346,
		-0.291639, 0.940767, 0.172929,
		0.793512, 0.338901, -0.505455,
		30.184111, 31.935345, 24.825544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272985, 32.136528, 24.708086>,  <29.628653, 31.698112, 25.179363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272985, 32.136528, 24.708086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637789, 32.072445, 24.557049>,  <29.856670, 32.033993, 24.466427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.637789, 32.072445, 24.557049>,  <29.272985, 32.136528, 24.708086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.637789, 32.072445, 24.557049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406720, -0.234011, -0.883073,
		0.053117, 0.958943, -0.278581,
		0.912007, -0.160210, -0.377592,
		29.911390, 32.024384, 24.443771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.264284, 32.424957, 24.058815>,  <29.272985, 32.136528, 24.708086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.264284, 32.424957, 24.058815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560640, 32.156349, 24.063639>,  <29.738455, 31.995186, 24.066534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.560640, 32.156349, 24.063639>,  <29.264284, 32.424957, 24.058815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560640, 32.156349, 24.063639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215241, -0.254411, -0.942840,
		0.636202, 0.695945, -0.333028,
		0.740891, -0.671517, 0.012061,
		29.782907, 31.954893, 24.067257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580881, 32.434086, 23.408997>,  <29.264284, 32.424957, 24.058815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580881, 32.434086, 23.408997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677347, 32.077557, 23.562555>,  <29.735226, 31.863638, 23.654690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.677347, 32.077557, 23.562555>,  <29.580881, 32.434086, 23.408997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.677347, 32.077557, 23.562555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077889, -0.412071, -0.907816,
		0.967354, 0.189032, -0.168801,
		0.241164, -0.891327, 0.383895,
		29.749697, 31.810158, 23.677725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.975279, 32.178902, 22.849241>,  <29.580881, 32.434086, 23.408997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.975279, 32.178902, 22.849241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881987, 31.867056, 23.081724>,  <29.826012, 31.679949, 23.221214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881987, 31.867056, 23.081724>,  <29.975279, 32.178902, 22.849241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881987, 31.867056, 23.081724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115873, -0.615713, -0.779404,
		0.965494, -0.114433, 0.233938,
		-0.233228, -0.779617, 0.581208,
		29.812017, 31.633171, 23.256086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382481, 31.606169, 22.572081>,  <29.975279, 32.178902, 22.849241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382481, 31.606169, 22.572081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064737, 31.445271, 22.754154>,  <29.874090, 31.348732, 22.863400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064737, 31.445271, 22.754154>,  <30.382481, 31.606169, 22.572081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064737, 31.445271, 22.754154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020545, -0.766702, -0.641675,
		0.607101, -0.500368, 0.617301,
		-0.794359, -0.402244, 0.455185,
		29.826429, 31.324598, 22.890709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446377, 30.796230, 22.509720>,  <30.382481, 31.606169, 22.572081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446377, 30.796230, 22.509720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061220, 30.872599, 22.586023>,  <29.830126, 30.918421, 22.631805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.061220, 30.872599, 22.586023>,  <30.446377, 30.796230, 22.509720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061220, 30.872599, 22.586023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266573, -0.562321, -0.782773,
		-0.042182, -0.804577, 0.592349,
		-0.962891, 0.190923, 0.190758,
		29.772352, 30.929876, 22.643251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082832, 30.145641, 22.386003>,  <30.446377, 30.796230, 22.509720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082832, 30.145641, 22.386003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790533, 30.417429, 22.359690>,  <29.615154, 30.580502, 22.343901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790533, 30.417429, 22.359690>,  <30.082832, 30.145641, 22.386003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790533, 30.417429, 22.359690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425395, -0.528619, -0.734576,
		-0.533912, -0.508791, 0.675329,
		-0.730737, 0.679480, -0.065799,
		29.571308, 30.621271, 22.339954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.361189, 29.815039, 22.383009>,  <30.082832, 30.145641, 22.386003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.361189, 29.815039, 22.383009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312998, 30.171101, 22.207230>,  <29.284084, 30.384737, 22.101763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312998, 30.171101, 22.207230>,  <29.361189, 29.815039, 22.383009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312998, 30.171101, 22.207230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289021, -0.454946, -0.842313,
		-0.949712, 0.025530, 0.312083,
		-0.120477, 0.890153, -0.439446,
		29.276855, 30.438147, 22.075396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.745193, 29.686617, 22.076191>,  <29.361189, 29.815039, 22.383009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.745193, 29.686617, 22.076191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947750, 29.991705, 21.915281>,  <29.069284, 30.174759, 21.818735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.947750, 29.991705, 21.915281>,  <28.745193, 29.686617, 22.076191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947750, 29.991705, 21.915281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234763, -0.326944, -0.915420,
		-0.829732, 0.557999, 0.013498,
		0.506390, 0.762722, -0.402274,
		29.099667, 30.220522, 21.794600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368330, 29.786858, 21.477589>,  <28.745193, 29.686617, 22.076191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368330, 29.786858, 21.477589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658373, 30.048260, 21.390736>,  <28.832399, 30.205101, 21.338623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.658373, 30.048260, 21.390736>,  <28.368330, 29.786858, 21.477589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.658373, 30.048260, 21.390736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180094, -0.124376, -0.975755,
		-0.664668, 0.746632, 0.027507,
		0.725109, 0.653507, -0.217133,
		28.875906, 30.244312, 21.325596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192268, 30.368374, 20.995584>,  <28.368330, 29.786858, 21.477589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192268, 30.368374, 20.995584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.588606, 30.319149, 20.973364>,  <28.826408, 30.289614, 20.960032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.588606, 30.319149, 20.973364>,  <28.192268, 30.368374, 20.995584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.588606, 30.319149, 20.973364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060382, -0.035856, -0.997531,
		0.120766, 0.991751, -0.042958,
		0.990843, -0.123062, -0.055554,
		28.885859, 30.282230, 20.956697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.420647, 30.922594, 20.495291>,  <28.192268, 30.368374, 20.995584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.420647, 30.922594, 20.495291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698196, 30.634701, 20.504412>,  <28.864727, 30.461964, 20.509884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698196, 30.634701, 20.504412>,  <28.420647, 30.922594, 20.495291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698196, 30.634701, 20.504412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132778, 0.096753, -0.986412,
		0.707748, 0.687475, 0.162699,
		0.693875, -0.719734, 0.022804,
		28.906359, 30.418781, 20.511253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838600, 31.074602, 19.904757>,  <28.420647, 30.922594, 20.495291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838600, 31.074602, 19.904757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984764, 30.716967, 20.008354>,  <29.072462, 30.502384, 20.070513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.984764, 30.716967, 20.008354>,  <28.838600, 31.074602, 19.904757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.984764, 30.716967, 20.008354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189776, -0.200834, -0.961068,
		0.911296, 0.400335, 0.096290,
		0.365411, -0.894091, 0.258993,
		29.094387, 30.448740, 20.086052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615997, 30.934885, 19.625179>,  <28.838600, 31.074602, 19.904757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615997, 30.934885, 19.625179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432177, 30.589912, 19.710054>,  <29.321884, 30.382929, 19.760981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432177, 30.589912, 19.710054>,  <29.615997, 30.934885, 19.625179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432177, 30.589912, 19.710054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135914, -0.304387, -0.942802,
		0.877689, -0.404428, 0.257098,
		-0.459553, -0.862430, 0.212189,
		29.294310, 30.331182, 19.773712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033350, 30.338158, 19.410681>,  <29.615997, 30.934885, 19.625179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033350, 30.338158, 19.410681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648546, 30.236586, 19.370567>,  <29.417664, 30.175642, 19.346500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648546, 30.236586, 19.370567>,  <30.033350, 30.338158, 19.410681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648546, 30.236586, 19.370567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175789, -0.295081, -0.939162,
		0.208890, -0.921112, 0.328509,
		-0.962010, -0.253930, -0.100282,
		29.359943, 30.160406, 19.340483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998764, 29.933676, 18.823792>,  <30.033350, 30.338158, 19.410681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998764, 29.933676, 18.823792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600801, 29.937449, 18.863941>,  <29.362024, 29.939713, 18.888031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.600801, 29.937449, 18.863941>,  <29.998764, 29.933676, 18.823792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600801, 29.937449, 18.863941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100183, -0.204146, -0.973801,
		0.011307, -0.978895, 0.204051,
		-0.994905, 0.009431, 0.100377,
		29.302330, 29.940279, 18.894054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795982, 29.295250, 18.572611>,  <29.998764, 29.933676, 18.823792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795982, 29.295250, 18.572611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452312, 29.497984, 18.544500>,  <29.246111, 29.619623, 18.527634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452312, 29.497984, 18.544500>,  <29.795982, 29.295250, 18.572611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452312, 29.497984, 18.544500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188297, -0.440882, -0.877592,
		-0.475780, -0.740770, 0.474230,
		-0.859173, 0.506836, -0.070278,
		29.194559, 29.650034, 18.523418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296398, 28.759594, 18.304556>,  <29.795982, 29.295250, 18.572611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296398, 28.759594, 18.304556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127218, 29.109835, 18.211233>,  <29.025709, 29.319979, 18.155239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.127218, 29.109835, 18.211233>,  <29.296398, 28.759594, 18.304556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.127218, 29.109835, 18.211233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309139, -0.381450, -0.871165,
		-0.851790, -0.296336, 0.432018,
		-0.422951, 0.875603, -0.233306,
		29.000334, 29.372515, 18.141241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620472, 28.701410, 18.124741>,  <29.296398, 28.759594, 18.304556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620472, 28.701410, 18.124741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707596, 29.058331, 17.966574>,  <28.759871, 29.272484, 17.871674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.707596, 29.058331, 17.966574>,  <28.620472, 28.701410, 18.124741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.707596, 29.058331, 17.966574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106679, -0.380951, -0.918420,
		-0.970143, 0.242225, 0.012214,
		0.217811, 0.892302, -0.395417,
		28.772940, 29.326021, 17.847948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349594, 28.628996, 17.563974>,  <28.620472, 28.701410, 18.124741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349594, 28.628996, 17.563974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522482, 28.986959, 17.519567>,  <28.626215, 29.201738, 17.492924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.522482, 28.986959, 17.519567>,  <28.349594, 28.628996, 17.563974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.522482, 28.986959, 17.519567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128330, -0.060818, -0.989865,
		-0.892591, 0.442084, 0.088558,
		0.432217, 0.894910, -0.111018,
		28.652147, 29.255432, 17.486261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.812019, 29.092606, 17.356613>,  <28.349594, 28.628996, 17.563974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.812019, 29.092606, 17.356613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178650, 29.209015, 17.246929>,  <28.398628, 29.278860, 17.181118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178650, 29.209015, 17.246929>,  <27.812019, 29.092606, 17.356613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178650, 29.209015, 17.246929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325338, 0.144087, -0.934556,
		-0.232467, 0.945804, 0.226748,
		0.916578, 0.291023, -0.274210,
		28.453623, 29.296322, 17.164665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.780825, 29.839903, 17.135635>,  <27.812019, 29.092606, 17.356613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.780825, 29.839903, 17.135635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.063339, 29.637255, 16.937851>,  <28.232849, 29.515665, 16.819180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.063339, 29.637255, 16.937851>,  <27.780825, 29.839903, 17.135635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063339, 29.637255, 16.937851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486370, 0.160259, -0.858931,
		0.514395, 0.847143, -0.133217,
		0.706288, -0.506622, -0.494461,
		28.275225, 29.485268, 16.789513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770012, 30.255205, 16.486105>,  <27.780825, 29.839903, 17.135635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770012, 30.255205, 16.486105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959551, 29.906967, 16.433144>,  <28.073275, 29.698025, 16.401367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.959551, 29.906967, 16.433144>,  <27.770012, 30.255205, 16.486105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959551, 29.906967, 16.433144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038422, 0.129770, -0.990799,
		0.879767, 0.474577, 0.028041,
		0.473850, -0.870595, -0.132402,
		28.101706, 29.645788, 16.393423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.060699, 30.417627, 16.005257>,  <27.770012, 30.255205, 16.486105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.060699, 30.417627, 16.005257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075054, 30.020775, 15.957271>,  <28.083668, 29.782663, 15.928479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075054, 30.020775, 15.957271>,  <28.060699, 30.417627, 16.005257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.075054, 30.020775, 15.957271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316430, 0.102583, -0.943053,
		0.947937, 0.071803, -0.310259,
		0.035887, -0.992130, -0.119963,
		28.085819, 29.723137, 15.921282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322083, 30.278460, 15.279172>,  <28.060699, 30.417627, 16.005257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322083, 30.278460, 15.279172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.177126, 29.915123, 15.362679>,  <28.090151, 29.697121, 15.412784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.177126, 29.915123, 15.362679>,  <28.322083, 30.278460, 15.279172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.177126, 29.915123, 15.362679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226508, -0.131446, -0.965099,
		0.904083, -0.397032, -0.158112,
		-0.362392, -0.908343, 0.208769,
		28.068409, 29.642620, 15.425310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.408920, 29.892044, 14.605457>,  <28.322083, 30.278460, 15.279172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.408920, 29.892044, 14.605457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125853, 29.709064, 14.820844>,  <27.956013, 29.599277, 14.950075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125853, 29.709064, 14.820844>,  <28.408920, 29.892044, 14.605457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125853, 29.709064, 14.820844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531216, -0.158005, -0.832373,
		0.465848, -0.875086, -0.131189,
		-0.707669, -0.457449, 0.538465,
		27.913551, 29.571831, 14.982384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.297594, 29.319761, 14.244372>,  <28.408920, 29.892044, 14.605457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.297594, 29.319761, 14.244372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967787, 29.375633, 14.463701>,  <27.769903, 29.409157, 14.595299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967787, 29.375633, 14.463701>,  <28.297594, 29.319761, 14.244372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967787, 29.375633, 14.463701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565826, -0.208758, -0.797660,
		0.003050, -0.967941, 0.251159,
		-0.824519, 0.139680, 0.548323,
		27.720430, 29.417538, 14.628198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.860918, 28.697969, 14.162798>,  <28.297594, 29.319761, 14.244372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.860918, 28.697969, 14.162798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644419, 29.022264, 14.252019>,  <27.514519, 29.216843, 14.305552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644419, 29.022264, 14.252019>,  <27.860918, 28.697969, 14.162798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644419, 29.022264, 14.252019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486861, -0.085877, -0.869247,
		-0.685578, -0.579075, 0.441198,
		-0.541248, 0.810739, 0.223053,
		27.482044, 29.265486, 14.318935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264828, 28.437717, 13.932354>,  <27.860918, 28.697969, 14.162798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264828, 28.437717, 13.932354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530678, 28.722631, 13.842090>,  <27.690187, 28.893579, 13.787931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.530678, 28.722631, 13.842090>,  <27.264828, 28.437717, 13.932354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.530678, 28.722631, 13.842090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454264, -0.624996, -0.634842,
		-0.593225, 0.319423, -0.738954,
		0.664626, 0.712284, -0.225661,
		27.730066, 28.936317, 13.774391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251223, 27.971369, 13.309745>,  <27.264828, 28.437717, 13.932354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251223, 27.971369, 13.309745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017776, 27.988079, 13.634127>,  <26.877708, 27.998106, 13.828755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017776, 27.988079, 13.634127>,  <27.251223, 27.971369, 13.309745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017776, 27.988079, 13.634127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756431, 0.335210, -0.561646,
		-0.295304, -0.941217, -0.164032,
		-0.583616, 0.041777, 0.810954,
		26.842691, 28.000612, 13.877413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664145, 28.097548, 12.894779>,  <27.251223, 27.971369, 13.309745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664145, 28.097548, 12.894779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562613, 28.154488, 13.277466>,  <26.501694, 28.188652, 13.507078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562613, 28.154488, 13.277466>,  <26.664145, 28.097548, 12.894779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562613, 28.154488, 13.277466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816799, 0.498246, -0.290842,
		-0.518082, -0.855270, -0.010199,
		-0.253830, 0.142349, 0.956717,
		26.486464, 28.197193, 13.564481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.997925, 27.781273, 13.051208>,  <26.664145, 28.097548, 12.894779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.997925, 27.781273, 13.051208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060581, 28.108017, 13.273273>,  <26.098175, 28.304064, 13.406511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.060581, 28.108017, 13.273273>,  <25.997925, 27.781273, 13.051208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.060581, 28.108017, 13.273273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943917, 0.289239, -0.159254,
		-0.290662, -0.499081, 0.816354,
		0.156641, 0.816859, 0.555162,
		26.107573, 28.353075, 13.439821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.547487, 27.899981, 13.675776>,  <25.997925, 27.781273, 13.051208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.547487, 27.899981, 13.675776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658976, 28.251022, 13.519762>,  <25.725868, 28.461647, 13.426154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658976, 28.251022, 13.519762>,  <25.547487, 27.899981, 13.675776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.658976, 28.251022, 13.519762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954583, 0.208641, -0.212697,
		-0.105287, 0.431603, 0.895898,
		0.278722, 0.877604, -0.390034,
		25.742592, 28.514303, 13.402752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.121037, 28.304873, 13.981236>,  <25.547487, 27.899981, 13.675776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.121037, 28.304873, 13.981236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255972, 28.513561, 13.667801>,  <25.336933, 28.638775, 13.479740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.255972, 28.513561, 13.667801>,  <25.121037, 28.304873, 13.981236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.255972, 28.513561, 13.667801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941214, 0.202731, -0.270217,
		0.017880, 0.828678, 0.559441,
		0.337339, 0.521722, -0.783587,
		25.357174, 28.670078, 13.432725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.932501, 28.990339, 13.719710>,  <25.121037, 28.304873, 13.981236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.932501, 28.990339, 13.719710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.621159, 28.862652, 13.935955>,  <24.434353, 28.786039, 14.065701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.621159, 28.862652, 13.935955>,  <24.932501, 28.990339, 13.719710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.621159, 28.862652, 13.935955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306943, 0.557676, 0.771222,
		-0.547674, 0.766223, -0.336089,
		-0.778357, -0.319218, 0.540612,
		24.387651, 28.766886, 14.098139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.513760, 29.525311, 13.970562>,  <24.932501, 28.990339, 13.719710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.513760, 29.525311, 13.970562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.521364, 29.199884, 14.203028>,  <24.525927, 29.004629, 14.342506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.521364, 29.199884, 14.203028>,  <24.513760, 29.525311, 13.970562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.521364, 29.199884, 14.203028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182283, 0.574347, 0.798059,
		-0.983062, 0.090764, 0.159218,
		0.019011, -0.813565, 0.581163,
		24.527067, 28.955814, 14.377377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.013084, 29.552427, 14.550114>,  <24.513760, 29.525311, 13.970562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.013084, 29.552427, 14.550114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.297779, 29.303545, 14.680525>,  <24.468596, 29.154215, 14.758772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.297779, 29.303545, 14.680525>,  <24.013084, 29.552427, 14.550114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.297779, 29.303545, 14.680525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038595, 0.428791, 0.902579,
		-0.701387, -0.654980, 0.281171,
		0.711735, -0.622205, 0.326028,
		24.511299, 29.116884, 14.778333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.981970, 29.257006, 15.268360>,  <24.013084, 29.552427, 14.550114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.981970, 29.257006, 15.268360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.374069, 29.218508, 15.199248>,  <24.609329, 29.195410, 15.157781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.374069, 29.218508, 15.199248>,  <23.981970, 29.257006, 15.268360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.374069, 29.218508, 15.199248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197484, 0.428768, 0.881566,
		-0.010762, -0.898273, 0.439305,
		0.980247, -0.096243, -0.172780,
		24.668144, 29.189634, 15.147414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.232759, 28.917934, 15.852063>,  <23.981970, 29.257006, 15.268360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.232759, 28.917934, 15.852063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542482, 29.098637, 15.674813>,  <24.728317, 29.207058, 15.568463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.542482, 29.098637, 15.674813>,  <24.232759, 28.917934, 15.852063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.542482, 29.098637, 15.674813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350835, 0.276316, 0.894743,
		0.526650, -0.848271, 0.055461,
		0.774309, 0.451758, -0.443125,
		24.774775, 29.234163, 15.541876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.737110, 28.885845, 16.344801>,  <24.232759, 28.917934, 15.852063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.737110, 28.885845, 16.344801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.893942, 29.168100, 16.108717>,  <24.988041, 29.337454, 15.967067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.893942, 29.168100, 16.108717>,  <24.737110, 28.885845, 16.344801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.893942, 29.168100, 16.108717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493611, 0.380024, 0.782259,
		0.776286, -0.598042, -0.199312,
		0.392081, 0.705639, -0.590208,
		25.011566, 29.379791, 15.931655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.462112, 28.873316, 16.432423>,  <24.737110, 28.885845, 16.344801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.462112, 28.873316, 16.432423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354366, 29.235891, 16.302309>,  <25.289719, 29.453436, 16.224241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.354366, 29.235891, 16.302309>,  <25.462112, 28.873316, 16.432423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.354366, 29.235891, 16.302309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699610, 0.416300, 0.580724,
		0.661807, -0.071146, -0.746290,
		-0.269365, 0.906439, -0.325285,
		25.273558, 29.507824, 16.204723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.066042, 29.274773, 16.339123>,  <25.462112, 28.873316, 16.432423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.066042, 29.274773, 16.339123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779932, 29.553576, 16.359381>,  <25.608267, 29.720858, 16.371534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.779932, 29.553576, 16.359381>,  <26.066042, 29.274773, 16.339123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779932, 29.553576, 16.359381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555623, 0.523239, 0.646146,
		0.423868, 0.490311, -0.761532,
		-0.715275, 0.697006, 0.050644,
		25.565350, 29.762678, 16.374575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.397697, 29.920675, 16.209045>,  <26.066042, 29.274773, 16.339123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.397697, 29.920675, 16.209045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.050285, 29.994303, 16.393120>,  <25.841837, 30.038479, 16.503565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.050285, 29.994303, 16.393120>,  <26.397697, 29.920675, 16.209045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.050285, 29.994303, 16.393120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460714, 0.642167, 0.612669,
		-0.182742, 0.744137, -0.642546,
		-0.868532, 0.184070, 0.460186,
		25.789726, 30.049524, 16.531176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442383, 30.692612, 16.295557>,  <26.397697, 29.920675, 16.209045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.442383, 30.692612, 16.295557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172174, 30.524227, 16.537703>,  <26.010050, 30.423197, 16.682989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.172174, 30.524227, 16.537703>,  <26.442383, 30.692612, 16.295557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.172174, 30.524227, 16.537703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242873, 0.648156, 0.721739,
		-0.696193, 0.634575, -0.335602,
		-0.675520, -0.420961, 0.605363,
		25.969519, 30.397938, 16.719311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.176939, 31.296892, 16.648314>,  <26.442383, 30.692612, 16.295557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.176939, 31.296892, 16.648314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033354, 30.998377, 16.872528>,  <25.947203, 30.819267, 17.007057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033354, 30.998377, 16.872528>,  <26.176939, 31.296892, 16.648314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033354, 30.998377, 16.872528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124202, 0.557025, 0.821156,
		-0.925051, 0.364384, -0.107261,
		-0.358963, -0.746289, 0.560534,
		25.925665, 30.774490, 17.040688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.804382, 31.605957, 17.081402>,  <26.176939, 31.296892, 16.648314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.804382, 31.605957, 17.081402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864710, 31.250885, 17.255424>,  <25.900908, 31.037842, 17.359838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864710, 31.250885, 17.255424>,  <25.804382, 31.605957, 17.081402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.864710, 31.250885, 17.255424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223544, 0.459317, 0.859683,
		-0.962955, -0.032402, 0.267710,
		0.150820, -0.887681, 0.435058,
		25.909956, 30.984581, 17.385942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.499897, 31.686489, 17.772135>,  <25.804382, 31.605957, 17.081402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.499897, 31.686489, 17.772135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750383, 31.378365, 17.820255>,  <25.900675, 31.193489, 17.849127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.750383, 31.378365, 17.820255>,  <25.499897, 31.686489, 17.772135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.750383, 31.378365, 17.820255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276881, 0.363972, 0.889304,
		-0.728827, -0.523589, 0.441210,
		0.626218, -0.770311, 0.120301,
		25.938250, 31.147272, 17.856346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.384150, 31.501669, 18.468693>,  <25.499897, 31.686489, 17.772135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.384150, 31.501669, 18.468693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738337, 31.352940, 18.357199>,  <25.950850, 31.263702, 18.290302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.738337, 31.352940, 18.357199>,  <25.384150, 31.501669, 18.468693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.738337, 31.352940, 18.357199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374776, 0.216750, 0.901423,
		-0.274753, -0.902645, 0.331275,
		0.885468, -0.371822, -0.278737,
		26.003977, 31.241392, 18.273579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.634886, 30.945730, 18.902359>,  <25.384150, 31.501669, 18.468693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.634886, 30.945730, 18.902359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965797, 31.085398, 18.726318>,  <26.164345, 31.169199, 18.620693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965797, 31.085398, 18.726318>,  <25.634886, 30.945730, 18.902359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.965797, 31.085398, 18.726318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369575, 0.251758, 0.894445,
		0.423114, -0.902606, 0.079230,
		0.827278, 0.349171, -0.440103,
		26.213982, 31.190149, 18.594288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142269, 30.976513, 19.370760>,  <25.634886, 30.945730, 18.902359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142269, 30.976513, 19.370760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366188, 31.180408, 19.109442>,  <26.500540, 31.302746, 18.952650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.366188, 31.180408, 19.109442>,  <26.142269, 30.976513, 19.370760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.366188, 31.180408, 19.109442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659499, 0.203254, 0.723704,
		0.501684, -0.835976, -0.222390,
		0.559798, 0.509737, -0.653295,
		26.534128, 31.333330, 18.913454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.865170, 30.739180, 19.491163>,  <26.142269, 30.976513, 19.370760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.865170, 30.739180, 19.491163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840097, 31.113958, 19.353643>,  <26.825054, 31.338825, 19.271132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840097, 31.113958, 19.353643>,  <26.865170, 30.739180, 19.491163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.840097, 31.113958, 19.353643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540226, 0.321501, 0.777685,
		0.839183, -0.136984, -0.526315,
		-0.062681, 0.936948, -0.343801,
		26.821293, 31.395042, 19.250504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480061, 31.071163, 19.748230>,  <26.865170, 30.739180, 19.491163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480061, 31.071163, 19.748230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270550, 31.397055, 19.648729>,  <27.144844, 31.592590, 19.589029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270550, 31.397055, 19.648729>,  <27.480061, 31.071163, 19.748230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270550, 31.397055, 19.648729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229277, 0.416066, 0.879955,
		0.820422, 0.403865, -0.404723,
		-0.523775, 0.814728, -0.248752,
		27.113417, 31.641474, 19.574104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921272, 31.652571, 19.963696>,  <27.480061, 31.071163, 19.748230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921272, 31.652571, 19.963696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.549170, 31.794819, 19.927561>,  <27.325909, 31.880167, 19.905880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.549170, 31.794819, 19.927561>,  <27.921272, 31.652571, 19.963696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.549170, 31.794819, 19.927561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105278, 0.494558, 0.862745,
		0.351485, 0.793063, -0.497504,
		-0.930255, 0.355618, -0.090337,
		27.270092, 31.901505, 19.900459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.949287, 32.283901, 20.312490>,  <27.921272, 31.652571, 19.963696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.949287, 32.283901, 20.312490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560926, 32.188187, 20.308693>,  <27.327909, 32.130756, 20.306414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560926, 32.188187, 20.308693>,  <27.949287, 32.283901, 20.312490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560926, 32.188187, 20.308693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112057, 0.418903, 0.901090,
		-0.211645, 0.875934, -0.433527,
		-0.970902, -0.239291, -0.009496,
		27.269655, 32.116398, 20.305843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615274, 32.865276, 20.365156>,  <27.949287, 32.283901, 20.312490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615274, 32.865276, 20.365156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335752, 32.605507, 20.485104>,  <27.168039, 32.449646, 20.557072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335752, 32.605507, 20.485104>,  <27.615274, 32.865276, 20.365156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335752, 32.605507, 20.485104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082216, 0.489356, 0.868200,
		-0.710574, 0.582046, -0.395356,
		-0.698803, -0.649425, 0.299870,
		27.126112, 32.410679, 20.575064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.023092, 33.318050, 20.704891>,  <27.615274, 32.865276, 20.365156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.023092, 33.318050, 20.704891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975786, 32.938320, 20.821369>,  <26.947403, 32.710484, 20.891256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975786, 32.938320, 20.821369>,  <27.023092, 33.318050, 20.704891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975786, 32.938320, 20.821369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220335, 0.311031, 0.924507,
		-0.968228, 0.045176, -0.245953,
		-0.118264, -0.949326, 0.291195,
		26.940308, 32.653522, 20.908728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.420311, 33.347324, 20.960485>,  <27.023092, 33.318050, 20.704891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.420311, 33.347324, 20.960485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611357, 33.040455, 21.131750>,  <26.725985, 32.856331, 21.234509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.611357, 33.040455, 21.131750>,  <26.420311, 33.347324, 20.960485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.611357, 33.040455, 21.131750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218285, 0.368437, 0.903663,
		-0.851020, -0.525064, 0.008507,
		0.477615, -0.767178, 0.428161,
		26.754641, 32.810303, 21.260199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007710, 33.194477, 21.590570>,  <26.420311, 33.347324, 20.960485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007710, 33.194477, 21.590570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379116, 33.047794, 21.613832>,  <26.601959, 32.959785, 21.627790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379116, 33.047794, 21.613832>,  <26.007710, 33.194477, 21.590570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379116, 33.047794, 21.613832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051651, 0.282677, 0.957824,
		-0.367683, -0.886351, 0.281411,
		0.928516, -0.366710, 0.058155,
		26.657671, 32.937782, 21.631279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.004707, 32.915707, 22.234016>,  <26.007710, 33.194477, 21.590570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.004707, 32.915707, 22.234016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388411, 32.910526, 22.121122>,  <26.618633, 32.907417, 22.053385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388411, 32.910526, 22.121122>,  <26.004707, 32.915707, 22.234016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.388411, 32.910526, 22.121122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282281, 0.086084, 0.955462,
		0.011922, -0.996204, 0.086233,
		0.959258, -0.012951, -0.282236,
		26.676188, 32.906643, 22.036451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.181868, 32.377956, 22.573772>,  <26.004707, 32.915707, 22.234016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.181868, 32.377956, 22.573772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505777, 32.606258, 22.519363>,  <26.700123, 32.743240, 22.486719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505777, 32.606258, 22.519363>,  <26.181868, 32.377956, 22.573772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505777, 32.606258, 22.519363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165605, 0.000070, 0.986192,
		0.562887, -0.821118, -0.094463,
		0.809773, 0.570758, -0.136020,
		26.748709, 32.777485, 22.478558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.590014, 32.162270, 23.159248>,  <26.181868, 32.377956, 22.573772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.590014, 32.162270, 23.159248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.768791, 32.496716, 23.032032>,  <26.876059, 32.697384, 22.955702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.768791, 32.496716, 23.032032>,  <26.590014, 32.162270, 23.159248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.768791, 32.496716, 23.032032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329125, 0.176896, 0.927570,
		0.831816, -0.519246, -0.196124,
		0.446943, 0.836117, -0.318042,
		26.902874, 32.747551, 22.936619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.313437, 32.081959, 23.296158>,  <26.590014, 32.162270, 23.159248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.313437, 32.081959, 23.296158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250896, 32.476673, 23.279165>,  <27.213373, 32.713501, 23.268970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250896, 32.476673, 23.279165>,  <27.313437, 32.081959, 23.296158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250896, 32.476673, 23.279165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512897, 0.117870, 0.850320,
		0.844092, 0.111161, -0.524549,
		-0.156351, 0.986788, -0.042479,
		27.203991, 32.772709, 23.266422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.967424, 32.487286, 23.442766>,  <27.313437, 32.081959, 23.296158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.967424, 32.487286, 23.442766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663994, 32.741055, 23.502193>,  <27.481936, 32.893314, 23.537849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.663994, 32.741055, 23.502193>,  <27.967424, 32.487286, 23.442766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663994, 32.741055, 23.502193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318936, 0.162697, 0.933707,
		0.568194, 0.755669, -0.325758,
		-0.758574, 0.634423, 0.148567,
		27.436422, 32.931381, 23.546764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276485, 33.063454, 23.737854>,  <27.967424, 32.487286, 23.442766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276485, 33.063454, 23.737854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892376, 33.089722, 23.846346>,  <27.661911, 33.105480, 23.911440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.892376, 33.089722, 23.846346>,  <28.276485, 33.063454, 23.737854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.892376, 33.089722, 23.846346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278966, 0.200140, 0.939213,
		0.007390, 0.977564, -0.210507,
		-0.960273, 0.065666, 0.271228,
		27.604294, 33.109421, 23.927713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163347, 33.688683, 24.089859>,  <28.276485, 33.063454, 23.737854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163347, 33.688683, 24.089859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.857983, 33.458080, 24.206373>,  <27.674765, 33.319717, 24.276281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.857983, 33.458080, 24.206373>,  <28.163347, 33.688683, 24.089859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.857983, 33.458080, 24.206373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224971, 0.185404, 0.956563,
		-0.605470, 0.795780, -0.011842,
		-0.763410, -0.576506, 0.291284,
		27.628960, 33.285130, 24.293758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814810, 34.083595, 24.523613>,  <28.163347, 33.688683, 24.089859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814810, 34.083595, 24.523613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685986, 33.716671, 24.617270>,  <27.608692, 33.496517, 24.673464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.685986, 33.716671, 24.617270>,  <27.814810, 34.083595, 24.523613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.685986, 33.716671, 24.617270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143898, 0.197015, 0.969783,
		-0.935720, 0.346020, 0.068549,
		-0.322059, -0.917309, 0.234143,
		27.589369, 33.441479, 24.687511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.468475, 34.198540, 25.213320>,  <27.814810, 34.083595, 24.523613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.468475, 34.198540, 25.213320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507816, 33.801872, 25.180027>,  <27.531422, 33.563873, 25.160051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507816, 33.801872, 25.180027>,  <27.468475, 34.198540, 25.213320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507816, 33.801872, 25.180027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061097, -0.077461, 0.995122,
		-0.993274, -0.102960, 0.052969,
		0.098355, -0.991665, -0.083230,
		27.537323, 33.504372, 25.155058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934338, 33.922680, 25.636894>,  <27.468475, 34.198540, 25.213320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934338, 33.922680, 25.636894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227503, 33.654522, 25.590563>,  <27.403402, 33.493629, 25.562765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.227503, 33.654522, 25.590563>,  <26.934338, 33.922680, 25.636894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.227503, 33.654522, 25.590563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187730, 0.035647, 0.981574,
		-0.653911, -0.741150, 0.151979,
		0.732911, -0.670393, -0.115826,
		27.447376, 33.453403, 25.555815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.788021, 33.370556, 26.129391>,  <26.934338, 33.922680, 25.636894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.788021, 33.370556, 26.129391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.177547, 33.345760, 26.041899>,  <27.411263, 33.330883, 25.989403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.177547, 33.345760, 26.041899>,  <26.788021, 33.370556, 26.129391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.177547, 33.345760, 26.041899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226734, 0.194345, 0.954370,
		-0.016647, -0.978973, 0.203310,
		0.973815, -0.061985, -0.218731,
		27.469692, 33.327164, 25.976280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041321, 32.793396, 26.550951>,  <26.788021, 33.370556, 26.129391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041321, 32.793396, 26.550951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353161, 33.026169, 26.458364>,  <27.540264, 33.165833, 26.402813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.353161, 33.026169, 26.458364>,  <27.041321, 32.793396, 26.550951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.353161, 33.026169, 26.458364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246550, 0.054567, 0.967593,
		0.575707, -0.811402, -0.100936,
		0.779599, 0.581936, -0.231466,
		27.587040, 33.200748, 26.388926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.500135, 32.649143, 27.044262>,  <27.041321, 32.793396, 26.550951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.500135, 32.649143, 27.044262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680635, 32.979336, 26.908642>,  <27.788937, 33.177452, 26.827271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.680635, 32.979336, 26.908642>,  <27.500135, 32.649143, 27.044262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680635, 32.979336, 26.908642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404736, 0.149295, 0.902164,
		0.795337, -0.544328, -0.266732,
		0.451251, 0.825481, -0.339048,
		27.816011, 33.226978, 26.806927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100008, 32.569992, 27.252758>,  <27.500135, 32.649143, 27.044262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100008, 32.569992, 27.252758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075405, 32.963856, 27.187433>,  <28.060644, 33.200172, 27.148239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075405, 32.963856, 27.187433>,  <28.100008, 32.569992, 27.252758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.075405, 32.963856, 27.187433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472156, 0.172860, 0.864400,
		0.879367, -0.023944, -0.475543,
		-0.061506, 0.984655, -0.163312,
		28.056953, 33.259251, 27.138439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.617191, 32.824493, 27.791735>,  <28.100008, 32.569992, 27.252758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.617191, 32.824493, 27.791735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429640, 33.146290, 27.645887>,  <28.317108, 33.339367, 27.558378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429640, 33.146290, 27.645887>,  <28.617191, 32.824493, 27.791735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.429640, 33.146290, 27.645887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438308, 0.570321, 0.694709,
		0.766836, 0.165920, -0.620027,
		-0.468881, 0.804490, -0.364619,
		28.288975, 33.387638, 27.536501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.077023, 33.267235, 27.510977>,  <28.617191, 32.824493, 27.791735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.077023, 33.267235, 27.510977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.751257, 33.454395, 27.648268>,  <28.555798, 33.566692, 27.730642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.751257, 33.454395, 27.648268>,  <29.077023, 33.267235, 27.510977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.751257, 33.454395, 27.648268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534000, 0.372812, 0.758852,
		0.227105, 0.801302, -0.553479,
		-0.814412, 0.467897, 0.343228,
		28.506933, 33.594765, 27.751236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.260569, 33.876762, 27.693321>,  <29.077023, 33.267235, 27.510977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.260569, 33.876762, 27.693321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928152, 33.817467, 27.907759>,  <28.728703, 33.781891, 28.036421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.928152, 33.817467, 27.907759>,  <29.260569, 33.876762, 27.693321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928152, 33.817467, 27.907759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405121, 0.499090, 0.766020,
		-0.381113, 0.853777, -0.354709,
		-0.831041, -0.148240, 0.536092,
		28.678839, 33.772995, 28.068586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010176, 34.532955, 27.879681>,  <29.260569, 33.876762, 27.693321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010176, 34.532955, 27.879681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863447, 34.263844, 28.136681>,  <28.775410, 34.102375, 28.290880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863447, 34.263844, 28.136681>,  <29.010176, 34.532955, 27.879681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863447, 34.263844, 28.136681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303306, 0.566413, 0.766278,
		-0.879458, 0.475962, -0.003714,
		-0.366823, -0.672783, 0.642498,
		28.753401, 34.062008, 28.329430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626631, 34.950371, 28.417255>,  <29.010176, 34.532955, 27.879681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626631, 34.950371, 28.417255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672806, 34.594780, 28.594522>,  <28.700510, 34.381428, 28.700884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.672806, 34.594780, 28.594522>,  <28.626631, 34.950371, 28.417255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672806, 34.594780, 28.594522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415559, 0.448452, 0.791329,
		-0.902211, 0.092815, 0.421189,
		0.115436, -0.888975, 0.443169,
		28.707438, 34.328087, 28.727472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772392, 35.371952, 27.769806>,  <28.626631, 34.950371, 28.417255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772392, 35.371952, 27.769806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.116631, 35.570419, 27.723856>,  <29.323174, 35.689499, 27.696285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.116631, 35.570419, 27.723856>,  <28.772392, 35.371952, 27.769806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116631, 35.570419, 27.723856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252129, 0.219084, -0.942567,
		-0.442500, 0.840133, 0.313640,
		0.860595, 0.496164, -0.114877,
		29.374809, 35.719269, 27.689392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.598742, 36.040085, 27.515928>,  <28.772392, 35.371952, 27.769806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.598742, 36.040085, 27.515928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988504, 36.013138, 27.430145>,  <29.222363, 35.996971, 27.378675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.988504, 36.013138, 27.430145>,  <28.598742, 36.040085, 27.515928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988504, 36.013138, 27.430145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208681, 0.083565, -0.974407,
		0.083565, 0.994223, 0.067368,
		0.974407, -0.067368, -0.214458,
		29.280827, 35.992928, 27.365808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.675600, 36.543663, 27.045198>,  <28.598742, 36.040085, 27.515928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.675600, 36.543663, 27.045198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983473, 36.298389, 26.974098>,  <29.168198, 36.151226, 26.931438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983473, 36.298389, 26.974098>,  <28.675600, 36.543663, 27.045198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983473, 36.298389, 26.974098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142306, 0.106634, -0.984062,
		0.622363, 0.782712, -0.005185,
		0.769684, -0.613182, -0.177749,
		29.214378, 36.114433, 26.920773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.996010, 36.819485, 26.460958>,  <28.675600, 36.543663, 27.045198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.996010, 36.819485, 26.460958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171747, 36.460438, 26.446718>,  <29.277189, 36.245010, 26.438173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.171747, 36.460438, 26.446718>,  <28.996010, 36.819485, 26.460958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171747, 36.460438, 26.446718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078859, 0.000942, -0.996885,
		0.894852, 0.440781, -0.070371,
		0.439342, -0.897614, -0.035602,
		29.303551, 36.191154, 26.436037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478065, 36.882648, 25.840965>,  <28.996010, 36.819485, 26.460958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478065, 36.882648, 25.840965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406240, 36.499756, 25.931702>,  <29.363146, 36.270020, 25.986143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.406240, 36.499756, 25.931702>,  <29.478065, 36.882648, 25.840965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406240, 36.499756, 25.931702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166108, -0.197775, -0.966071,
		0.969621, -0.211150, -0.123492,
		-0.179562, -0.957236, 0.226840,
		29.352371, 36.212585, 25.999754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955040, 36.510353, 25.440004>,  <29.478065, 36.882648, 25.840965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955040, 36.510353, 25.440004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627668, 36.295631, 25.521992>,  <29.431246, 36.166798, 25.571184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627668, 36.295631, 25.521992>,  <29.955040, 36.510353, 25.440004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627668, 36.295631, 25.521992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191713, -0.081168, -0.978089,
		0.541683, -0.839791, -0.036483,
		-0.818429, -0.536809, 0.204966,
		29.382139, 36.134590, 25.583481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000244, 36.061726, 24.878788>,  <29.955040, 36.510353, 25.440004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000244, 36.061726, 24.878788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632374, 36.021202, 25.030540>,  <29.411652, 35.996887, 25.121592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632374, 36.021202, 25.030540>,  <30.000244, 36.061726, 24.878788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632374, 36.021202, 25.030540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382384, 0.011313, -0.923934,
		0.089313, -0.994790, -0.049145,
		-0.919677, -0.101312, 0.379381,
		29.356470, 35.990810, 25.144356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787104, 35.371185, 24.662872>,  <30.000244, 36.061726, 24.878788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787104, 35.371185, 24.662872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469580, 35.594921, 24.758371>,  <29.279064, 35.729164, 24.815670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.469580, 35.594921, 24.758371>,  <29.787104, 35.371185, 24.662872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469580, 35.594921, 24.758371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327680, -0.062656, -0.942709,
		-0.512337, -0.826566, 0.233022,
		-0.793811, 0.559341, 0.238748,
		29.231436, 35.762722, 24.829996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183409, 35.063320, 24.257881>,  <29.787104, 35.371185, 24.662872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183409, 35.063320, 24.257881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034573, 35.413177, 24.382170>,  <28.945271, 35.623093, 24.456743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.034573, 35.413177, 24.382170>,  <29.183409, 35.063320, 24.257881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034573, 35.413177, 24.382170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565157, 0.052065, -0.823339,
		-0.736307, -0.481961, 0.474938,
		-0.372089, 0.874644, 0.310719,
		28.922945, 35.675571, 24.475386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665453, 35.046284, 23.822210>,  <29.183409, 35.063320, 24.257881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665453, 35.046284, 23.822210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656574, 35.415737, 23.975264>,  <28.651247, 35.637409, 24.067095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656574, 35.415737, 23.975264>,  <28.665453, 35.046284, 23.822210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656574, 35.415737, 23.975264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706716, 0.256216, -0.659474,
		-0.707149, -0.285051, 0.647060,
		-0.022197, 0.923634, 0.382633,
		28.649916, 35.692829, 24.090054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909481, 35.166016, 23.942486>,  <28.665453, 35.046284, 23.822210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.909481, 35.166016, 23.942486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116016, 35.506104, 23.901466>,  <28.239937, 35.710155, 23.876854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.116016, 35.506104, 23.901466>,  <27.909481, 35.166016, 23.942486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116016, 35.506104, 23.901466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439362, 0.160210, -0.883908,
		-0.735089, 0.501452, 0.456278,
		0.516338, 0.850223, -0.102550,
		28.270918, 35.761169, 23.870701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.404425, 35.685543, 23.632889>,  <27.909481, 35.166016, 23.942486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.404425, 35.685543, 23.632889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781216, 35.787910, 23.545996>,  <28.007290, 35.849331, 23.493860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781216, 35.787910, 23.545996>,  <27.404425, 35.685543, 23.632889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781216, 35.787910, 23.545996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305585, 0.385927, -0.870447,
		-0.138923, 0.886323, 0.441738,
		0.941976, 0.255914, -0.217233,
		28.063808, 35.864685, 23.480825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.244555, 36.099422, 23.111607>,  <27.404425, 35.685543, 23.632889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.244555, 36.099422, 23.111607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639669, 36.057163, 23.065800>,  <27.876738, 36.031807, 23.038315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.639669, 36.057163, 23.065800>,  <27.244555, 36.099422, 23.111607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.639669, 36.057163, 23.065800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111190, 0.036903, -0.993114,
		0.109147, 0.993719, 0.024705,
		0.987787, -0.105649, -0.114519,
		27.936007, 36.025467, 23.031445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.516514, 36.655216, 22.681942>,  <27.244555, 36.099422, 23.111607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.516514, 36.655216, 22.681942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731258, 36.322559, 22.625158>,  <27.860106, 36.122967, 22.591087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.731258, 36.322559, 22.625158>,  <27.516514, 36.655216, 22.681942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.731258, 36.322559, 22.625158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112929, 0.095914, -0.988963,
		0.836079, 0.546966, -0.042425,
		0.536860, -0.831642, -0.141960,
		27.892317, 36.073067, 22.582571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.898716, 36.736149, 22.142624>,  <27.516514, 36.655216, 22.681942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.898716, 36.736149, 22.142624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927164, 36.337975, 22.168076>,  <27.944233, 36.099072, 22.183346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.927164, 36.337975, 22.168076>,  <27.898716, 36.736149, 22.142624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.927164, 36.337975, 22.168076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049700, -0.060174, -0.996950,
		0.996229, 0.074067, 0.045193,
		0.071122, -0.995436, 0.063628,
		27.948500, 36.039345, 22.187164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.084688, 36.611950, 21.519110>,  <27.898716, 36.736149, 22.142624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.084688, 36.611950, 21.519110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.981998, 36.244125, 21.638107>,  <27.920383, 36.023430, 21.709507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.981998, 36.244125, 21.638107>,  <28.084688, 36.611950, 21.519110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.981998, 36.244125, 21.638107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103281, -0.279947, -0.954444,
		0.960950, -0.275757, -0.023103,
		-0.256726, -0.919558, 0.297496,
		27.904980, 35.968258, 21.727356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.332817, 36.147594, 20.985563>,  <28.084688, 36.611950, 21.519110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.332817, 36.147594, 20.985563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042929, 35.942608, 21.169809>,  <27.868996, 35.819618, 21.280357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042929, 35.942608, 21.169809>,  <28.332817, 36.147594, 20.985563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.042929, 35.942608, 21.169809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134182, -0.550721, -0.823833,
		0.675853, -0.658854, 0.330355,
		-0.724719, -0.512462, 0.460613,
		27.825514, 35.788868, 21.307993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.386049, 35.331520, 20.768784>,  <28.332817, 36.147594, 20.985563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.386049, 35.331520, 20.768784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011019, 35.377190, 20.900183>,  <27.785999, 35.404591, 20.979023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011019, 35.377190, 20.900183>,  <28.386049, 35.331520, 20.768784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011019, 35.377190, 20.900183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333397, -0.563877, -0.755572,
		0.098962, -0.817928, 0.566746,
		-0.937578, 0.114178, 0.328497,
		27.729746, 35.411442, 20.998732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089943, 34.661564, 20.520975>,  <28.386049, 35.331520, 20.768784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089943, 34.661564, 20.520975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776972, 34.886269, 20.628483>,  <27.589190, 35.021091, 20.692987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.776972, 34.886269, 20.628483>,  <28.089943, 34.661564, 20.520975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776972, 34.886269, 20.628483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564772, -0.458259, -0.686318,
		-0.262377, -0.688787, 0.675819,
		-0.782426, 0.561757, 0.268771,
		27.542244, 35.054794, 20.709114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.483721, 34.194221, 20.734472>,  <28.089943, 34.661564, 20.520975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.483721, 34.194221, 20.734472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356926, 34.549541, 20.601543>,  <27.280849, 34.762733, 20.521786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.356926, 34.549541, 20.601543>,  <27.483721, 34.194221, 20.734472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.356926, 34.549541, 20.601543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523416, -0.456048, -0.719761,
		-0.790921, -0.054211, 0.609512,
		-0.316986, 0.888303, -0.332323,
		27.261829, 34.816032, 20.501846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.772327, 34.097153, 20.362629>,  <27.483721, 34.194221, 20.734472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.772327, 34.097153, 20.362629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906080, 34.451405, 20.233725>,  <26.986332, 34.663956, 20.156382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906080, 34.451405, 20.233725>,  <26.772327, 34.097153, 20.362629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.906080, 34.451405, 20.233725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273684, -0.235959, -0.932427,
		-0.901823, 0.399986, 0.163481,
		0.334383, 0.885626, -0.322263,
		27.006395, 34.717094, 20.137045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298796, 34.183182, 19.789076>,  <26.772327, 34.097153, 20.362629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298796, 34.183182, 19.789076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602259, 34.438618, 19.737469>,  <26.784336, 34.591881, 19.706505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.602259, 34.438618, 19.737469>,  <26.298796, 34.183182, 19.789076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.602259, 34.438618, 19.737469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015626, -0.215812, -0.976310,
		-0.651305, 0.738667, -0.173705,
		0.758655, 0.638590, -0.129017,
		26.829855, 34.630196, 19.698763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.018759, 34.514061, 19.308908>,  <26.298796, 34.183182, 19.789076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.018759, 34.514061, 19.308908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415295, 34.566566, 19.307501>,  <26.653217, 34.598072, 19.306656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.415295, 34.566566, 19.307501>,  <26.018759, 34.514061, 19.308908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.415295, 34.566566, 19.307501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042519, -0.346229, -0.937186,
		-0.124241, 0.928921, -0.348812,
		0.991341, 0.131268, -0.003519,
		26.712696, 34.605946, 19.306446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.218708, 34.882130, 18.661955>,  <26.018759, 34.514061, 19.308908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.218708, 34.882130, 18.661955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556858, 34.702709, 18.777985>,  <26.759748, 34.595058, 18.847603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556858, 34.702709, 18.777985>,  <26.218708, 34.882130, 18.661955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.556858, 34.702709, 18.777985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107152, -0.389604, -0.914728,
		0.523314, 0.804372, -0.281300,
		0.845376, -0.448548, 0.290075,
		26.810471, 34.568146, 18.865007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.748344, 34.965336, 18.068796>,  <26.218708, 34.882130, 18.661955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.748344, 34.965336, 18.068796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901531, 34.670448, 18.291452>,  <26.993444, 34.493515, 18.425045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901531, 34.670448, 18.291452>,  <26.748344, 34.965336, 18.068796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901531, 34.670448, 18.291452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157143, -0.541804, -0.825684,
		0.910297, 0.403683, -0.091646,
		0.382969, -0.737217, 0.556638,
		27.016422, 34.449284, 18.458445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.367275, 34.665829, 17.818571>,  <26.748344, 34.965336, 18.068796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.367275, 34.665829, 17.818571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257524, 34.355988, 18.046503>,  <27.191673, 34.170082, 18.183262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.257524, 34.355988, 18.046503>,  <27.367275, 34.665829, 17.818571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.257524, 34.355988, 18.046503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179452, -0.623409, -0.761024,
		0.944729, -0.106551, 0.310054,
		-0.274379, -0.774602, 0.569832,
		27.175211, 34.123608, 18.217453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682074, 34.164478, 17.508898>,  <27.367275, 34.665829, 17.818571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682074, 34.164478, 17.508898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434320, 33.961315, 17.748363>,  <27.285669, 33.839417, 17.892042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434320, 33.961315, 17.748363>,  <27.682074, 34.164478, 17.508898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434320, 33.961315, 17.748363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099487, -0.807170, -0.581875,
		0.778762, -0.300843, 0.550476,
		-0.619381, -0.507907, 0.598663,
		27.248507, 33.808945, 17.927963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.035797, 33.461842, 17.621061>,  <27.682074, 34.164478, 17.508898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.035797, 33.461842, 17.621061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.640467, 33.446201, 17.679964>,  <27.403269, 33.436817, 17.715305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.640467, 33.446201, 17.679964>,  <28.035797, 33.461842, 17.621061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.640467, 33.446201, 17.679964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064897, -0.766423, -0.639049,
		0.137848, -0.641145, 0.754938,
		-0.988325, -0.039098, 0.147259,
		27.343969, 33.434471, 17.724142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.883341, 32.759724, 17.671070>,  <28.035797, 33.461842, 17.621061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.883341, 32.759724, 17.671070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540075, 32.934330, 17.562986>,  <27.334116, 33.039093, 17.498137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540075, 32.934330, 17.562986>,  <27.883341, 32.759724, 17.671070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540075, 32.934330, 17.562986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095167, -0.652477, -0.751810,
		-0.504481, -0.619459, 0.601472,
		-0.858162, 0.436514, -0.270210,
		27.282627, 33.065285, 17.481924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453531, 32.164955, 17.341417>,  <27.883341, 32.759724, 17.671070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453531, 32.164955, 17.341417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302933, 32.508099, 17.201519>,  <27.212574, 32.713985, 17.117580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.302933, 32.508099, 17.201519>,  <27.453531, 32.164955, 17.341417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.302933, 32.508099, 17.201519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182629, -0.438845, -0.879808,
		-0.908238, -0.267371, 0.321895,
		-0.376497, 0.857862, -0.349746,
		27.189983, 32.765457, 17.096596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.976305, 31.906517, 16.854258>,  <27.453531, 32.164955, 17.341417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.976305, 31.906517, 16.854258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007244, 32.296558, 16.771130>,  <27.025808, 32.530582, 16.721252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007244, 32.296558, 16.771130>,  <26.976305, 31.906517, 16.854258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007244, 32.296558, 16.771130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058320, -0.203664, -0.977302,
		-0.995297, 0.087712, 0.041115,
		0.077348, 0.975104, -0.207821,
		27.030449, 32.589088, 16.708784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418756, 32.034176, 16.370234>,  <26.976305, 31.906517, 16.854258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418756, 32.034176, 16.370234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.674875, 32.340202, 16.342804>,  <26.828547, 32.523819, 16.326345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.674875, 32.340202, 16.342804>,  <26.418756, 32.034176, 16.370234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.674875, 32.340202, 16.342804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085761, -0.159920, -0.983397,
		-0.763326, 0.623784, -0.168008,
		0.640295, 0.765062, -0.068575,
		26.866964, 32.569721, 16.322231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199398, 32.308853, 15.748587>,  <26.418756, 32.034176, 16.370234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.199398, 32.308853, 15.748587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561869, 32.468094, 15.805660>,  <26.779350, 32.563637, 15.839905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561869, 32.468094, 15.805660>,  <26.199398, 32.308853, 15.748587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561869, 32.468094, 15.805660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216142, -0.145985, -0.965387,
		-0.363492, 0.905651, -0.218334,
		0.906177, 0.398101, 0.142684,
		26.833721, 32.587524, 15.848466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.176935, 32.824917, 15.374599>,  <26.199398, 32.308853, 15.748587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.176935, 32.824917, 15.374599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562855, 32.735741, 15.430397>,  <26.794407, 32.682236, 15.463876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562855, 32.735741, 15.430397>,  <26.176935, 32.824917, 15.374599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562855, 32.735741, 15.430397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123575, -0.083896, -0.988782,
		0.232140, 0.971216, -0.053393,
		0.964800, -0.222938, 0.139494,
		26.852295, 32.668858, 15.472245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564655, 33.224213, 14.864847>,  <26.176935, 32.824917, 15.374599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564655, 33.224213, 14.864847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.817392, 32.932491, 14.969831>,  <26.969034, 32.757458, 15.032821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.817392, 32.932491, 14.969831>,  <26.564655, 33.224213, 14.864847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.817392, 32.932491, 14.969831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338943, -0.044545, -0.939752,
		0.697058, 0.682736, 0.219047,
		0.631845, -0.729306, 0.262459,
		27.006947, 32.713699, 15.048569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231398, 33.400532, 14.441474>,  <26.564655, 33.224213, 14.864847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231398, 33.400532, 14.441474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236628, 33.021832, 14.570153>,  <27.239765, 32.794609, 14.647361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.236628, 33.021832, 14.570153>,  <27.231398, 33.400532, 14.441474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.236628, 33.021832, 14.570153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342861, -0.297975, -0.890874,
		0.939295, 0.121946, 0.320709,
		0.013075, -0.946752, 0.321697,
		27.240551, 32.737804, 14.666662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.816481, 33.158154, 14.169985>,  <27.231398, 33.400532, 14.441474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.816481, 33.158154, 14.169985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582962, 32.848217, 14.266975>,  <27.442850, 32.662254, 14.325170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.582962, 32.848217, 14.266975>,  <27.816481, 33.158154, 14.169985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.582962, 32.848217, 14.266975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009077, -0.304865, -0.952353,
		0.811849, -0.553780, 0.185012,
		-0.583797, -0.774845, 0.242477,
		27.407824, 32.615765, 14.339719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085892, 32.626904, 13.855614>,  <27.816481, 33.158154, 14.169985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085892, 32.626904, 13.855614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701740, 32.551868, 13.938059>,  <27.471249, 32.506847, 13.987526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.701740, 32.551868, 13.938059>,  <28.085892, 32.626904, 13.855614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.701740, 32.551868, 13.938059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148924, -0.279696, -0.948468,
		0.235570, -0.941584, 0.240678,
		-0.960379, -0.187587, 0.206113,
		27.413626, 32.495594, 13.999892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765638, 32.284061, 14.099036>,  <28.085892, 32.626904, 13.855614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765638, 32.284061, 14.099036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.033237, 32.462025, 13.860879>,  <29.193798, 32.568802, 13.717984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.033237, 32.462025, 13.860879>,  <28.765638, 32.284061, 14.099036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033237, 32.462025, 13.860879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262569, 0.607937, 0.749313,
		0.695341, -0.657621, 0.289888,
		0.668998, 0.444913, -0.595395,
		29.233936, 32.595497, 13.682261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286797, 32.308002, 14.442760>,  <28.765638, 32.284061, 14.099036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286797, 32.308002, 14.442760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379734, 32.605167, 14.191652>,  <29.435495, 32.783466, 14.040987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379734, 32.605167, 14.191652>,  <29.286797, 32.308002, 14.442760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379734, 32.605167, 14.191652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347062, 0.539621, 0.767045,
		0.908606, -0.396092, -0.132460,
		0.232342, 0.742913, -0.627771,
		29.449436, 32.828041, 14.003321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929178, 32.599606, 14.743940>,  <29.286797, 32.308002, 14.442760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929178, 32.599606, 14.743940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766113, 32.866272, 14.494341>,  <29.668274, 33.026272, 14.344582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.766113, 32.866272, 14.494341>,  <29.929178, 32.599606, 14.743940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766113, 32.866272, 14.494341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317434, 0.744203, 0.587706,
		0.856183, 0.041506, -0.515004,
		-0.407660, 0.666663, -0.623998,
		29.643816, 33.066273, 14.307141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431772, 33.117672, 14.649896>,  <29.929178, 32.599606, 14.743940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431772, 33.117672, 14.649896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083811, 33.284660, 14.544834>,  <29.875034, 33.384853, 14.481797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.083811, 33.284660, 14.544834>,  <30.431772, 33.117672, 14.649896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083811, 33.284660, 14.544834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098314, 0.668609, 0.737087,
		0.483324, 0.615372, -0.622668,
		-0.869904, 0.417469, -0.262655,
		29.822840, 33.409901, 14.466038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546757, 33.887913, 14.604755>,  <30.431772, 33.117672, 14.649896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546757, 33.887913, 14.604755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150625, 33.845730, 14.640815>,  <29.912947, 33.820419, 14.662450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150625, 33.845730, 14.640815>,  <30.546757, 33.887913, 14.604755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150625, 33.845730, 14.640815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022412, 0.519647, 0.854087,
		-0.136911, 0.847848, -0.512258,
		-0.990330, -0.105453, 0.090147,
		29.853527, 33.814095, 14.667859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.251114, 34.541771, 14.842211>,  <30.546757, 33.887913, 14.604755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.251114, 34.541771, 14.842211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943913, 34.299004, 14.924008>,  <29.759592, 34.153343, 14.973087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943913, 34.299004, 14.924008>,  <30.251114, 34.541771, 14.842211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943913, 34.299004, 14.924008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158901, 0.489894, 0.857178,
		-0.620418, 0.625823, -0.472681,
		-0.768006, -0.606918, 0.204495,
		29.713511, 34.116928, 14.985357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.615854, 34.984402, 14.852109>,  <30.251114, 34.541771, 14.842211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.615854, 34.984402, 14.852109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587866, 34.661312, 15.086267>,  <29.571074, 34.467461, 15.226763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.587866, 34.661312, 15.086267>,  <29.615854, 34.984402, 14.852109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587866, 34.661312, 15.086267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109962, 0.589504, 0.800246,
		-0.991470, -0.008378, -0.130067,
		-0.069971, -0.807722, 0.585397,
		29.566875, 34.418995, 15.261887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944584, 35.101814, 15.324290>,  <29.615854, 34.984402, 14.852109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944584, 35.101814, 15.324290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132465, 34.797195, 15.502920>,  <29.245193, 34.614426, 15.610098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132465, 34.797195, 15.502920>,  <28.944584, 35.101814, 15.324290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132465, 34.797195, 15.502920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133580, 0.438715, 0.888642,
		-0.872660, -0.477052, 0.104339,
		0.469704, -0.761545, 0.446574,
		29.273376, 34.568733, 15.636892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456932, 34.839882, 15.858674>,  <28.944584, 35.101814, 15.324290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456932, 34.839882, 15.858674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824722, 34.727955, 15.969143>,  <29.045397, 34.660797, 16.035425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824722, 34.727955, 15.969143>,  <28.456932, 34.839882, 15.858674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824722, 34.727955, 15.969143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196598, 0.281083, 0.939331,
		-0.340467, -0.917984, 0.203437,
		0.919474, -0.279816, 0.276173,
		29.100565, 34.644009, 16.051994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357315, 34.600929, 16.474289>,  <28.456932, 34.839882, 15.858674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357315, 34.600929, 16.474289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748432, 34.684666, 16.478336>,  <28.983103, 34.734905, 16.480764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.748432, 34.684666, 16.478336>,  <28.357315, 34.600929, 16.474289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748432, 34.684666, 16.478336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051624, 0.193771, 0.979688,
		0.203137, -0.958450, 0.200275,
		0.977789, 0.209350, 0.010117,
		29.041769, 34.747467, 16.481373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.613625, 34.500462, 17.163532>,  <28.357315, 34.600929, 16.474289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.613625, 34.500462, 17.163532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.911325, 34.722645, 17.015179>,  <29.089947, 34.855953, 16.926167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.911325, 34.722645, 17.015179>,  <28.613625, 34.500462, 17.163532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.911325, 34.722645, 17.015179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185385, 0.361679, 0.913685,
		0.641656, -0.748768, 0.166206,
		0.744251, 0.555459, -0.370884,
		29.134602, 34.889282, 16.903913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223301, 34.275600, 17.514481>,  <28.613625, 34.500462, 17.163532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223301, 34.275600, 17.514481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291868, 34.640297, 17.365168>,  <29.333010, 34.859116, 17.275579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291868, 34.640297, 17.365168>,  <29.223301, 34.275600, 17.514481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291868, 34.640297, 17.365168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152691, 0.349727, 0.924325,
		0.973294, -0.215444, -0.079265,
		0.171419, 0.911743, -0.373284,
		29.343294, 34.913818, 17.253183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703167, 34.544369, 17.968966>,  <29.223301, 34.275600, 17.514481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703167, 34.544369, 17.968966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597258, 34.872608, 17.766378>,  <29.533712, 35.069553, 17.644825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.597258, 34.872608, 17.766378>,  <29.703167, 34.544369, 17.968966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597258, 34.872608, 17.766378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069674, 0.540121, 0.838698,
		0.961790, 0.186779, -0.200185,
		-0.264775, 0.820599, -0.506470,
		29.517824, 35.118790, 17.614437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230158, 35.076584, 18.124542>,  <29.703167, 34.544369, 17.968966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230158, 35.076584, 18.124542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901073, 35.262291, 17.993330>,  <29.703623, 35.373714, 17.914602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.901073, 35.262291, 17.993330>,  <30.230158, 35.076584, 18.124542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901073, 35.262291, 17.993330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044492, 0.627866, 0.777048,
		0.566717, 0.624691, -0.537208,
		-0.822710, 0.464268, -0.328029,
		29.654261, 35.401573, 17.894922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540468, 35.694649, 18.021204>,  <30.230158, 35.076584, 18.124542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540468, 35.694649, 18.021204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142990, 35.675499, 18.061752>,  <29.904503, 35.664009, 18.086082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142990, 35.675499, 18.061752>,  <30.540468, 35.694649, 18.021204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142990, 35.675499, 18.061752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071889, 0.421747, 0.903859,
		-0.086023, 0.905449, -0.415647,
		-0.993696, -0.047873, 0.101372,
		29.844881, 35.661137, 18.092163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478090, 36.305737, 18.287216>,  <30.540468, 35.694649, 18.021204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478090, 36.305737, 18.287216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163799, 36.074154, 18.374344>,  <29.975225, 35.935204, 18.426620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.163799, 36.074154, 18.374344>,  <30.478090, 36.305737, 18.287216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163799, 36.074154, 18.374344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098369, 0.230701, 0.968040,
		-0.610700, 0.782042, -0.124317,
		-0.785728, -0.578953, 0.217818,
		29.928082, 35.900467, 18.439690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988697, 36.717091, 18.702030>,  <30.478090, 36.305737, 18.287216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988697, 36.717091, 18.702030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878038, 36.337055, 18.759708>,  <29.811644, 36.109032, 18.794315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.878038, 36.337055, 18.759708>,  <29.988697, 36.717091, 18.702030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.878038, 36.337055, 18.759708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051262, 0.164428, 0.985056,
		-0.959603, 0.265123, -0.094192,
		-0.276649, -0.950091, 0.144194,
		29.795044, 36.052029, 18.802967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357424, 36.707676, 19.185148>,  <29.988697, 36.717091, 18.702030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357424, 36.707676, 19.185148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517895, 36.342476, 19.214766>,  <29.614178, 36.123356, 19.232536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517895, 36.342476, 19.214766>,  <29.357424, 36.707676, 19.185148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517895, 36.342476, 19.214766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157652, 0.010806, 0.987436,
		-0.902332, -0.407808, -0.139601,
		0.401176, -0.913003, 0.074042,
		29.638248, 36.068573, 19.236979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.849216, 36.315617, 19.558281>,  <29.357424, 36.707676, 19.185148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.849216, 36.315617, 19.558281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195335, 36.115601, 19.572226>,  <29.403008, 35.995590, 19.580593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.195335, 36.115601, 19.572226>,  <28.849216, 36.315617, 19.558281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.195335, 36.115601, 19.572226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047018, 0.150210, 0.987535,
		-0.499048, -0.852873, 0.153488,
		0.865298, -0.500044, 0.034862,
		29.454926, 35.965588, 19.582684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.765747, 35.760941, 20.106585>,  <28.849216, 36.315617, 19.558281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.765747, 35.760941, 20.106585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157480, 35.811069, 20.043085>,  <29.392521, 35.841145, 20.004986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.157480, 35.811069, 20.043085>,  <28.765747, 35.760941, 20.106585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.157480, 35.811069, 20.043085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153033, 0.054061, 0.986741,
		0.132242, -0.990642, 0.033765,
		0.979333, 0.125322, -0.158750,
		29.451281, 35.848663, 19.995461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.170181, 35.419701, 20.678774>,  <28.765747, 35.760941, 20.106585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.170181, 35.419701, 20.678774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462065, 35.663322, 20.554466>,  <29.637196, 35.809494, 20.479881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.462065, 35.663322, 20.554466>,  <29.170181, 35.419701, 20.678774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.462065, 35.663322, 20.554466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292550, 0.132702, 0.946998,
		0.618011, -0.781950, -0.081345,
		0.729710, 0.609053, -0.310771,
		29.680977, 35.846039, 20.461235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733036, 35.189259, 21.042143>,  <29.170181, 35.419701, 20.678774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733036, 35.189259, 21.042143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794107, 35.565041, 20.919432>,  <29.830751, 35.790508, 20.845804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.794107, 35.565041, 20.919432>,  <29.733036, 35.189259, 21.042143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794107, 35.565041, 20.919432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277938, 0.257071, 0.925562,
		0.948388, -0.226580, -0.221861,
		0.152679, 0.939455, -0.306778,
		29.839911, 35.846878, 20.827398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257702, 35.478943, 21.472862>,  <29.733036, 35.189259, 21.042143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257702, 35.478943, 21.472862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129496, 35.816292, 21.300354>,  <30.052572, 36.018700, 21.196850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.129496, 35.816292, 21.300354>,  <30.257702, 35.478943, 21.472862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.129496, 35.816292, 21.300354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147737, 0.494226, 0.856688,
		0.935651, 0.210868, -0.283005,
		-0.320517, 0.843371, -0.431270,
		30.033340, 36.069302, 21.170973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.757738, 35.960804, 21.498175>,  <30.257702, 35.478943, 21.472862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.757738, 35.960804, 21.498175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445704, 36.204067, 21.439367>,  <30.258484, 36.350025, 21.404083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445704, 36.204067, 21.439367>,  <30.757738, 35.960804, 21.498175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445704, 36.204067, 21.439367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091896, 0.343799, 0.934536,
		0.618887, 0.715508, -0.324080,
		-0.780086, 0.608154, -0.147020,
		30.211678, 36.386513, 21.395262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032480, 36.610905, 21.866499>,  <30.757738, 35.960804, 21.498175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032480, 36.610905, 21.866499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637194, 36.654678, 21.823690>,  <30.400023, 36.680943, 21.798004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.637194, 36.654678, 21.823690>,  <31.032480, 36.610905, 21.866499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637194, 36.654678, 21.823690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015106, 0.626037, 0.779647,
		0.152324, 0.772076, -0.617006,
		-0.988215, 0.109438, -0.107023,
		30.340729, 36.687511, 21.791584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887049, 37.381699, 21.891703>,  <31.032480, 36.610905, 21.866499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887049, 37.381699, 21.891703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544502, 37.191494, 21.972227>,  <30.338974, 37.077370, 22.020542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544502, 37.191494, 21.972227>,  <30.887049, 37.381699, 21.891703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544502, 37.191494, 21.972227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074393, 0.499408, 0.863167,
		-0.510982, 0.724211, -0.463051,
		-0.856366, -0.475511, 0.201313,
		30.287592, 37.048840, 22.032621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404589, 37.979462, 22.100611>,  <30.887049, 37.381699, 21.891703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404589, 37.979462, 22.100611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293970, 37.627960, 22.256203>,  <30.227598, 37.417057, 22.349558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293970, 37.627960, 22.256203>,  <30.404589, 37.979462, 22.100611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293970, 37.627960, 22.256203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165742, 0.355089, 0.920023,
		-0.946599, 0.318901, 0.047448,
		-0.276548, -0.878757, 0.388982,
		30.211006, 37.364334, 22.372898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950884, 38.129574, 22.645657>,  <30.404589, 37.979462, 22.100611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950884, 38.129574, 22.645657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035170, 37.751190, 22.744259>,  <30.085741, 37.524162, 22.803419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035170, 37.751190, 22.744259>,  <29.950884, 38.129574, 22.645657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035170, 37.751190, 22.744259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088705, 0.269628, 0.958870,
		-0.973515, -0.180181, 0.140726,
		0.210713, -0.945958, 0.246504,
		30.098383, 37.467403, 22.818211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681709, 38.043545, 23.295530>,  <29.950884, 38.129574, 22.645657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681709, 38.043545, 23.295530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957836, 37.755989, 23.262878>,  <30.123512, 37.583458, 23.243288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.957836, 37.755989, 23.262878>,  <29.681709, 38.043545, 23.295530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.957836, 37.755989, 23.262878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303037, 0.184838, 0.934881,
		-0.656984, -0.670103, 0.345447,
		0.690319, -0.718885, -0.081630,
		30.164932, 37.540325, 23.238390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568317, 37.676468, 23.878477>,  <29.681709, 38.043545, 23.295530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568317, 37.676468, 23.878477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935061, 37.600533, 23.738003>,  <30.155107, 37.554974, 23.653717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.935061, 37.600533, 23.738003>,  <29.568317, 37.676468, 23.878477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.935061, 37.600533, 23.738003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375539, 0.111711, 0.920050,
		-0.135427, -0.975440, 0.173714,
		0.916859, -0.189836, -0.351187,
		30.210117, 37.543583, 23.632647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997198, 37.223434, 24.298273>,  <29.568317, 37.676468, 23.878477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997198, 37.223434, 24.298273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276619, 37.422424, 24.092537>,  <30.444271, 37.541817, 23.969095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276619, 37.422424, 24.092537>,  <29.997198, 37.223434, 24.298273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276619, 37.422424, 24.092537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446422, 0.258764, 0.856591,
		0.559224, -0.827986, -0.041323,
		0.698553, 0.497474, -0.514338,
		30.486185, 37.571667, 23.938236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632023, 37.058067, 24.531267>,  <29.997198, 37.223434, 24.298273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632023, 37.058067, 24.531267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747906, 37.383461, 24.329550>,  <30.817434, 37.578697, 24.208519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747906, 37.383461, 24.329550>,  <30.632023, 37.058067, 24.531267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747906, 37.383461, 24.329550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494914, 0.323660, 0.806415,
		0.819226, -0.483205, -0.308839,
		0.289705, 0.813485, -0.504295,
		30.834818, 37.627506, 24.178261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273586, 37.187229, 24.735249>,  <30.632023, 37.058067, 24.531267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273586, 37.187229, 24.735249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194540, 37.543888, 24.572321>,  <31.147112, 37.757885, 24.474566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194540, 37.543888, 24.572321>,  <31.273586, 37.187229, 24.735249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194540, 37.543888, 24.572321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369212, 0.452614, 0.811679,
		0.908091, 0.010014, -0.418652,
		-0.197616, 0.891650, -0.407318,
		31.135256, 37.811382, 24.450125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897394, 37.514957, 24.819351>,  <31.273586, 37.187229, 24.735249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897394, 37.514957, 24.819351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598940, 37.781139, 24.810831>,  <31.419867, 37.940849, 24.805719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.598940, 37.781139, 24.810831>,  <31.897394, 37.514957, 24.819351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.598940, 37.781139, 24.810831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378807, 0.450612, 0.808365,
		0.547525, 0.595083, -0.588296,
		-0.746138, 0.665451, -0.021300,
		31.375099, 37.980774, 24.804441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294922, 38.152557, 24.824524>,  <31.897394, 37.514957, 24.819351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294922, 38.152557, 24.824524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916359, 38.220840, 24.934202>,  <31.689222, 38.261810, 25.000010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916359, 38.220840, 24.934202>,  <32.294922, 38.152557, 24.824524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916359, 38.220840, 24.934202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318183, 0.346836, 0.882306,
		0.055513, 0.922261, -0.382562,
		-0.946403, 0.170704, 0.274194,
		31.632439, 38.272053, 25.016460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301331, 38.877232, 25.079937>,  <32.294922, 38.152557, 24.824524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301331, 38.877232, 25.079937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978758, 38.694172, 25.229723>,  <31.785213, 38.584335, 25.319595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978758, 38.694172, 25.229723>,  <32.301331, 38.877232, 25.079937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978758, 38.694172, 25.229723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094029, 0.525959, 0.845296,
		-0.583803, 0.716885, -0.381118,
		-0.806432, -0.457650, 0.374464,
		31.736828, 38.556877, 25.342062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890219, 39.365620, 25.501133>,  <32.301331, 38.877232, 25.079937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890219, 39.365620, 25.501133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749557, 39.026131, 25.659126>,  <31.665161, 38.822437, 25.753923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.749557, 39.026131, 25.659126>,  <31.890219, 39.365620, 25.501133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.749557, 39.026131, 25.659126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037186, 0.408937, 0.911805,
		-0.935392, 0.335327, -0.112243,
		-0.351653, -0.848721, 0.394986,
		31.644062, 38.771515, 25.777622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551439, 39.596069, 26.056843>,  <31.890219, 39.365620, 25.501133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551439, 39.596069, 26.056843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590977, 39.205101, 26.131538>,  <31.614700, 38.970520, 26.176355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.590977, 39.205101, 26.131538>,  <31.551439, 39.596069, 26.056843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590977, 39.205101, 26.131538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037862, 0.191214, 0.980818,
		-0.994383, -0.089878, 0.055908,
		0.098845, -0.977425, 0.186737,
		31.620630, 38.911873, 26.187559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049616, 39.373329, 26.579613>,  <31.551439, 39.596069, 26.056843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049616, 39.373329, 26.579613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365566, 39.128315, 26.591576>,  <31.555138, 38.981308, 26.598753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365566, 39.128315, 26.591576>,  <31.049616, 39.373329, 26.579613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365566, 39.128315, 26.591576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083943, 0.156298, 0.984136,
		-0.607492, -0.774837, 0.174874,
		0.789878, -0.612535, 0.029907,
		31.602530, 38.944553, 26.600548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964806, 38.949184, 27.229656>,  <31.049616, 39.373329, 26.579613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964806, 38.949184, 27.229656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351311, 38.895874, 27.141500>,  <31.583214, 38.863888, 27.088606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351311, 38.895874, 27.141500>,  <30.964806, 38.949184, 27.229656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351311, 38.895874, 27.141500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250832, 0.292706, 0.922717,
		-0.058471, -0.946868, 0.316262,
		0.966263, -0.133281, -0.220390,
		31.641190, 38.855888, 27.075384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.288183, 38.513199, 27.754633>,  <30.964806, 38.949184, 27.229656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.288183, 38.513199, 27.754633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547718, 38.757599, 27.573221>,  <31.703440, 38.904240, 27.464375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.547718, 38.757599, 27.573221>,  <31.288183, 38.513199, 27.754633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547718, 38.757599, 27.573221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301247, 0.341067, 0.890463,
		0.698757, -0.714389, 0.037235,
		0.648837, 0.611000, -0.453531,
		31.742369, 38.940899, 27.437162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918289, 38.479465, 28.106640>,  <31.288183, 38.513199, 27.754633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918289, 38.479465, 28.106640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922565, 38.814121, 27.887583>,  <31.925131, 39.014915, 27.756147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922565, 38.814121, 27.887583>,  <31.918289, 38.479465, 28.106640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922565, 38.814121, 27.887583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331695, 0.513700, 0.791259,
		0.943326, -0.190109, -0.272019,
		0.010689, 0.836643, -0.547645,
		31.925772, 39.065113, 27.723289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594231, 38.740250, 27.970272>,  <31.918289, 38.479465, 28.106640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594231, 38.740250, 27.970272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285290, 38.988010, 28.026579>,  <32.099926, 39.136669, 28.060364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.285290, 38.988010, 28.026579>,  <32.594231, 38.740250, 27.970272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.285290, 38.988010, 28.026579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326803, 0.197454, 0.924236,
		0.544682, 0.759834, -0.354927,
		-0.772348, 0.619406, 0.140767,
		32.053585, 39.173832, 28.068810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786350, 39.432190, 28.212572>,  <32.594231, 38.740250, 27.970272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786350, 39.432190, 28.212572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403538, 39.422955, 28.328197>,  <32.173851, 39.417416, 28.397573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403538, 39.422955, 28.328197>,  <32.786350, 39.432190, 28.212572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403538, 39.422955, 28.328197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268234, 0.308302, 0.912689,
		-0.110188, 0.951008, -0.288863,
		-0.957031, -0.023085, 0.289064,
		32.116428, 39.416031, 28.414917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461380, 40.074959, 28.509310>,  <32.786350, 39.432190, 28.212572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461380, 40.074959, 28.509310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345844, 39.739716, 28.694414>,  <32.276524, 39.538570, 28.805477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345844, 39.739716, 28.694414>,  <32.461380, 40.074959, 28.509310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345844, 39.739716, 28.694414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399636, 0.333688, 0.853782,
		-0.869980, 0.431539, 0.238557,
		-0.288836, -0.838109, 0.462760,
		32.259193, 39.488281, 28.833242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373837, 40.828453, 28.584383>,  <32.461380, 40.074959, 28.509310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373837, 40.828453, 28.584383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135349, 40.949574, 28.286972>,  <31.992256, 41.022247, 28.108524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135349, 40.949574, 28.286972>,  <32.373837, 40.828453, 28.584383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135349, 40.949574, 28.286972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794557, -0.090013, 0.600481,
		0.114898, 0.948794, 0.294259,
		-0.596220, 0.302800, -0.743529,
		31.956484, 41.040413, 28.063913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898241, 41.369915, 28.825903>,  <32.373837, 40.828453, 28.584383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898241, 41.369915, 28.825903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649931, 41.088223, 28.963709>,  <31.500944, 40.919205, 29.046392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649931, 41.088223, 28.963709>,  <31.898241, 41.369915, 28.825903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649931, 41.088223, 28.963709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461198, 0.683395, 0.565922,
		-0.633983, 0.192420, -0.749026,
		-0.620775, -0.704235, 0.344517,
		31.463699, 40.876953, 29.067064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199564, 41.631020, 28.583664>,  <31.898241, 41.369915, 28.825903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199564, 41.631020, 28.583664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232534, 41.394905, 28.904856>,  <31.252317, 41.253239, 29.097570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.232534, 41.394905, 28.904856>,  <31.199564, 41.631020, 28.583664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232534, 41.394905, 28.904856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438072, 0.702244, 0.561201,
		-0.895153, -0.398021, -0.200701,
		0.082428, -0.590282, 0.802978,
		31.257263, 41.217819, 29.145748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556610, 41.483025, 29.006187>,  <31.199564, 41.631020, 28.583664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556610, 41.483025, 29.006187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881565, 41.512924, 29.237511>,  <31.076538, 41.530865, 29.376305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.881565, 41.512924, 29.237511>,  <30.556610, 41.483025, 29.006187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.881565, 41.512924, 29.237511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468795, 0.673518, 0.571494,
		-0.346780, -0.735382, 0.582201,
		0.812388, 0.074750, 0.578306,
		31.125282, 41.535351, 29.411003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016846, 41.432903, 29.465090>,  <30.556610, 41.483025, 29.006187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016846, 41.432903, 29.465090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312021, 41.578075, 29.692678>,  <30.489126, 41.665180, 29.829231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312021, 41.578075, 29.692678>,  <30.016846, 41.432903, 29.465090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312021, 41.578075, 29.692678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071647, -0.796189, 0.600791,
		0.671054, -0.484112, -0.561536,
		0.737939, 0.362930, 0.568971,
		30.533403, 41.686954, 29.863369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699583, 40.986790, 29.570490>,  <30.016846, 41.432903, 29.465090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699583, 40.986790, 29.570490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603397, 41.213535, 29.885662>,  <30.545687, 41.349583, 30.074766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603397, 41.213535, 29.885662>,  <30.699583, 40.986790, 29.570490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603397, 41.213535, 29.885662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007997, -0.810566, 0.585593,
		0.970625, 0.147115, 0.190379,
		-0.240464, 0.566868, 0.787932,
		30.531258, 41.383595, 30.122042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270868, 40.771191, 30.096693>,  <30.699583, 40.986790, 29.570490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270868, 40.771191, 30.096693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920626, 40.895676, 30.244457>,  <30.710480, 40.970367, 30.333117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920626, 40.895676, 30.244457>,  <31.270868, 40.771191, 30.096693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920626, 40.895676, 30.244457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030567, -0.798949, 0.600621,
		0.482059, 0.514615, 0.709077,
		-0.875605, 0.311209, 0.369411,
		30.657944, 40.989037, 30.355280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119968, 40.713181, 30.929724>,  <31.270868, 40.771191, 30.096693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119968, 40.713181, 30.929724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783169, 40.670853, 30.718124>,  <30.581089, 40.645454, 30.591164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783169, 40.670853, 30.718124>,  <31.119968, 40.713181, 30.929724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783169, 40.670853, 30.718124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103592, -0.930611, 0.351044,
		-0.529440, 0.350379, 0.772611,
		-0.841999, -0.105820, -0.528999,
		30.530569, 40.639107, 30.559425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646944, 40.403473, 31.382607>,  <31.119968, 40.713181, 30.929724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646944, 40.403473, 31.382607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601351, 40.297653, 30.999561>,  <30.573994, 40.234161, 30.769735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601351, 40.297653, 30.999561>,  <30.646944, 40.403473, 31.382607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601351, 40.297653, 30.999561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072393, -0.959120, 0.273584,
		-0.990842, 0.100509, 0.090173,
		-0.113984, -0.264550, -0.957612,
		30.567156, 40.218288, 30.712278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.966185, 40.122513, 31.243275>,  <30.646944, 40.403473, 31.382607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.966185, 40.122513, 31.243275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265484, 39.989048, 31.013912>,  <30.445063, 39.908970, 30.876295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265484, 39.989048, 31.013912>,  <29.966185, 40.122513, 31.243275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265484, 39.989048, 31.013912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231336, -0.941295, 0.245861,
		-0.621780, -0.051314, -0.781509,
		0.748246, -0.333663, -0.573407,
		30.489958, 39.888950, 30.841890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651079, 39.640537, 30.922337>,  <29.966185, 40.122513, 31.243275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651079, 39.640537, 30.922337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044645, 39.594063, 30.976612>,  <30.280785, 39.566177, 31.009178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.044645, 39.594063, 30.976612>,  <29.651079, 39.640537, 30.922337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044645, 39.594063, 30.976612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168050, -0.859598, 0.482546,
		0.060576, -0.497587, -0.865296,
		0.983916, -0.116183, 0.135691,
		30.339821, 39.559208, 31.017319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696030, 38.989590, 30.778437>,  <29.651079, 39.640537, 30.922337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696030, 38.989590, 30.778437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952440, 39.146828, 31.042122>,  <30.106287, 39.241169, 31.200333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952440, 39.146828, 31.042122>,  <29.696030, 38.989590, 30.778437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952440, 39.146828, 31.042122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296187, -0.665665, 0.684956,
		0.708068, -0.634324, -0.310278,
		0.641025, 0.393095, 0.659214,
		30.144749, 39.264755, 31.239885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250336, 38.483936, 30.932508>,  <29.696030, 38.989590, 30.778437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250336, 38.483936, 30.932508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452101, 38.487640, 30.587143>,  <30.573160, 38.489861, 30.379923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.452101, 38.487640, 30.587143>,  <30.250336, 38.483936, 30.932508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.452101, 38.487640, 30.587143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838717, 0.232424, 0.492477,
		0.205237, -0.972571, 0.109474,
		0.504413, 0.009257, -0.863413,
		30.603424, 38.490417, 30.328119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.066008, 38.218948, 31.723904>,  <30.250336, 38.483936, 30.932508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.066008, 38.218948, 31.723904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734138, 38.423954, 31.812429>,  <29.535017, 38.546955, 31.865545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.734138, 38.423954, 31.812429>,  <30.066008, 38.218948, 31.723904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734138, 38.423954, 31.812429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039296, -0.341839, 0.938936,
		0.556867, 0.787706, 0.263475,
		-0.829672, 0.512509, 0.221312,
		29.485237, 38.577705, 31.878822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018246, 37.505081, 31.390303>,  <30.066008, 38.218948, 31.723904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018246, 37.505081, 31.390303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076885, 37.329063, 31.035931>,  <30.112068, 37.223454, 30.823307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.076885, 37.329063, 31.035931>,  <30.018246, 37.505081, 31.390303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076885, 37.329063, 31.035931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498523, 0.806420, -0.318060,
		0.854391, -0.395028, 0.337593,
		0.146599, -0.440045, -0.885929,
		30.120865, 37.197048, 30.770151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735373, 37.967045, 31.118347>,  <30.018246, 37.505081, 31.390303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735373, 37.967045, 31.118347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911058, 37.607925, 31.131344>,  <31.016470, 37.392456, 31.139141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911058, 37.607925, 31.131344>,  <30.735373, 37.967045, 31.118347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911058, 37.607925, 31.131344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649634, 0.342375, 0.678789,
		-0.620537, -0.277026, 0.733614,
		0.439213, -0.897795, 0.032491,
		31.042822, 37.338589, 31.141090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059837, 37.924992, 31.731413>,  <30.735373, 37.967045, 31.118347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059837, 37.924992, 31.731413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237843, 37.616760, 31.548910>,  <31.344646, 37.431820, 31.439407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237843, 37.616760, 31.548910>,  <31.059837, 37.924992, 31.731413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237843, 37.616760, 31.548910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772321, 0.072346, 0.631099,
		-0.453304, -0.633225, 0.627329,
		0.445013, -0.770579, -0.456258,
		31.371346, 37.385586, 31.412033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303650, 37.492367, 32.238792>,  <31.059837, 37.924992, 31.731413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303650, 37.492367, 32.238792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538277, 37.408081, 31.925989>,  <31.679052, 37.357510, 31.738306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538277, 37.408081, 31.925989>,  <31.303650, 37.492367, 32.238792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538277, 37.408081, 31.925989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809806, 0.167408, 0.562307,
		0.012431, -0.963107, 0.268831,
		0.586567, -0.210711, -0.782010,
		31.714247, 37.344868, 31.691385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853296, 37.130104, 32.480995>,  <31.303650, 37.492367, 32.238792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853296, 37.130104, 32.480995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978516, 37.262817, 32.125034>,  <32.053646, 37.342445, 31.911459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.978516, 37.262817, 32.125034>,  <31.853296, 37.130104, 32.480995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978516, 37.262817, 32.125034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888226, 0.229447, 0.398005,
		0.336237, -0.915026, -0.222874,
		0.313047, 0.331786, -0.889899,
		32.072430, 37.362354, 31.858065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487064, 36.713161, 32.325428>,  <31.853296, 37.130104, 32.480995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487064, 36.713161, 32.325428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486942, 37.063377, 32.132168>,  <32.486870, 37.273506, 32.016212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486942, 37.063377, 32.132168>,  <32.487064, 36.713161, 32.325428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486942, 37.063377, 32.132168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791621, 0.295423, 0.534848,
		0.611013, -0.382311, -0.693182,
		-0.000304, 0.875536, -0.483153,
		32.486851, 37.326038, 31.987223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200340, 36.900688, 32.615730>,  <32.487064, 36.713161, 32.325428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200340, 36.900688, 32.615730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036530, 37.262413, 32.567547>,  <32.938244, 37.479446, 32.538635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036530, 37.262413, 32.567547>,  <33.200340, 36.900688, 32.615730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036530, 37.262413, 32.567547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202843, 0.218996, 0.954408,
		0.889461, 0.366423, -0.273118,
		-0.409528, 0.904309, -0.120462,
		32.913670, 37.533707, 32.531406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766899, 37.387321, 32.836971>,  <33.200340, 36.900688, 32.615730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766899, 37.387321, 32.836971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409023, 37.561420, 32.877163>,  <33.194298, 37.665878, 32.901279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409023, 37.561420, 32.877163>,  <33.766899, 37.387321, 32.836971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409023, 37.561420, 32.877163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178688, 0.142559, 0.973523,
		0.409399, 0.888952, -0.205319,
		-0.894686, 0.435248, 0.100482,
		33.140617, 37.691994, 32.907307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497849, 37.697021, 32.763435>,  <33.766899, 37.387321, 32.836971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497849, 37.697021, 32.763435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490288, 37.632866, 33.158184>,  <34.485752, 37.594376, 33.395035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490288, 37.632866, 33.158184>,  <34.497849, 37.697021, 32.763435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490288, 37.632866, 33.158184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806852, 0.585356, 0.079680,
		-0.590452, -0.794755, -0.140468,
		-0.018898, -0.160384, 0.986874,
		34.484619, 37.584751, 33.454247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212006, 37.703629, 32.602184>,  <34.497849, 37.697021, 32.763435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212006, 37.703629, 32.602184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476322, 37.544498, 32.347595>,  <35.634911, 37.449020, 32.194843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.476322, 37.544498, 32.347595>,  <35.212006, 37.703629, 32.602184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476322, 37.544498, 32.347595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746921, 0.264986, 0.609829,
		-0.073953, -0.878359, 0.472246,
		0.660788, -0.397829, -0.636468,
		35.674557, 37.425148, 32.156654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312458, 37.211044, 33.065411>,  <35.212006, 37.703629, 32.602184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312458, 37.211044, 33.065411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559708, 37.316624, 32.769234>,  <35.708057, 37.379971, 32.591526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559708, 37.316624, 32.769234>,  <35.312458, 37.211044, 33.065411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559708, 37.316624, 32.769234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747629, 0.093592, 0.657489,
		0.242840, -0.959986, -0.139481,
		0.618126, 0.263945, -0.740442,
		35.745144, 37.395805, 32.547100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988056, 36.845230, 33.066719>,  <35.312458, 37.211044, 33.065411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988056, 36.845230, 33.066719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032238, 37.202133, 32.891598>,  <36.058746, 37.416275, 32.786526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.032238, 37.202133, 32.891598>,  <35.988056, 36.845230, 33.066719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032238, 37.202133, 32.891598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837081, 0.153956, 0.524969,
		0.535811, -0.424463, -0.729889,
		0.110459, 0.892261, -0.437801,
		36.065376, 37.469810, 32.760258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606262, 36.737747, 32.777790>,  <35.988056, 36.845230, 33.066719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606262, 36.737747, 32.777790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515358, 37.116440, 32.869057>,  <36.460815, 37.343655, 32.923817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.515358, 37.116440, 32.869057>,  <36.606262, 36.737747, 32.777790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515358, 37.116440, 32.869057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872406, 0.093810, 0.479694,
		0.432736, 0.308069, -0.847250,
		-0.227259, 0.946728, 0.228166,
		36.447182, 37.400459, 32.937508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169552, 37.130001, 32.776409>,  <36.606262, 36.737747, 32.777790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169552, 37.130001, 32.776409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931347, 37.358677, 33.002167>,  <36.788425, 37.495880, 33.137623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931347, 37.358677, 33.002167>,  <37.169552, 37.130001, 32.776409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931347, 37.358677, 33.002167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773312, 0.217620, 0.595508,
		0.217620, 0.791086, -0.571686,
		-0.595508, 0.571686, 0.564398,
		36.752693, 37.530182, 33.171486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445992, 37.800850, 33.020813>,  <37.169552, 37.130001, 32.776409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445992, 37.800850, 33.020813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177967, 37.720947, 33.306782>,  <37.017151, 37.673008, 33.478363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.177967, 37.720947, 33.306782>,  <37.445992, 37.800850, 33.020813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177967, 37.720947, 33.306782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712372, 0.097709, 0.694967,
		-0.208676, 0.974963, 0.076827,
		-0.670060, -0.199752, 0.714925,
		36.976948, 37.661022, 33.521259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446945, 38.339115, 33.640038>,  <37.445992, 37.800850, 33.020813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446945, 38.339115, 33.640038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309746, 37.980972, 33.753666>,  <37.227425, 37.766087, 33.821842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309746, 37.980972, 33.753666>,  <37.446945, 38.339115, 33.640038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309746, 37.980972, 33.753666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783787, -0.106124, 0.611896,
		-0.517716, 0.432529, 0.738166,
		-0.343000, -0.895352, 0.284068,
		37.206844, 37.712368, 33.838886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476406, 38.239922, 34.442451>,  <37.446945, 38.339115, 33.640038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476406, 38.239922, 34.442451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525982, 37.892727, 34.250103>,  <37.555729, 37.684410, 34.134693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525982, 37.892727, 34.250103>,  <37.476406, 38.239922, 34.442451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525982, 37.892727, 34.250103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705014, -0.263993, 0.658227,
		-0.698279, -0.420602, 0.579224,
		0.123941, -0.867987, -0.480871,
		37.563164, 37.632332, 34.105843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309292, 37.680004, 34.906570>,  <37.476406, 38.239922, 34.442451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309292, 37.680004, 34.906570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579880, 37.585026, 34.627716>,  <37.742233, 37.528038, 34.460403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579880, 37.585026, 34.627716>,  <37.309292, 37.680004, 34.906570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579880, 37.585026, 34.627716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672044, -0.188155, 0.716209,
		-0.301234, -0.953003, 0.032294,
		0.676473, -0.237449, -0.697139,
		37.782822, 37.513790, 34.418575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509666, 36.855236, 34.841179>,  <37.309292, 37.680004, 34.906570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509666, 36.855236, 34.841179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772984, 37.156250, 34.833782>,  <37.930973, 37.336861, 34.829342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772984, 37.156250, 34.833782>,  <37.509666, 36.855236, 34.841179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772984, 37.156250, 34.833782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444256, -0.368551, 0.816582,
		0.607692, -0.545765, -0.576933,
		0.658291, 0.752537, -0.018494,
		37.970470, 37.382011, 34.828236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103275, 36.479027, 34.862389>,  <37.509666, 36.855236, 34.841179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103275, 36.479027, 34.862389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160240, 36.858913, 34.973930>,  <38.194420, 37.086845, 35.040855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160240, 36.858913, 34.973930>,  <38.103275, 36.479027, 34.862389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160240, 36.858913, 34.973930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440461, -0.313099, 0.841405,
		0.886405, 0.002999, -0.462901,
		0.142410, 0.949716, 0.278854,
		38.202965, 37.143829, 35.057587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139973, 35.748466, 34.756382>,  <38.103275, 36.479027, 34.862389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139973, 35.748466, 34.756382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912613, 35.655621, 35.072117>,  <37.776199, 35.599911, 35.261559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912613, 35.655621, 35.072117>,  <38.139973, 35.748466, 34.756382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912613, 35.655621, 35.072117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563262, 0.589522, 0.578964,
		-0.599718, 0.773682, -0.204338,
		-0.568396, -0.232119, 0.789333,
		37.742092, 35.585983, 35.308918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209969, 35.046009, 34.643284>,  <38.139973, 35.748466, 34.756382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209969, 35.046009, 34.643284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487602, 35.199200, 34.887112>,  <38.654182, 35.291115, 35.033409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.487602, 35.199200, 34.887112>,  <38.209969, 35.046009, 34.643284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.487602, 35.199200, 34.887112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572544, 0.219629, -0.789909,
		-0.436397, 0.897269, -0.066831,
		0.694083, 0.382978, 0.609571,
		38.695827, 35.314095, 35.069984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689285, 35.469379, 34.311115>,  <38.209969, 35.046009, 34.643284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689285, 35.469379, 34.311115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905190, 35.341976, 34.622810>,  <39.034733, 35.265533, 34.809830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905190, 35.341976, 34.622810>,  <38.689285, 35.469379, 34.311115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905190, 35.341976, 34.622810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833172, 0.069768, -0.548596,
		0.120368, 0.945348, 0.303032,
		0.539756, -0.318511, 0.779239,
		39.067116, 35.246422, 34.856583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.287868, 35.914318, 34.493435>,  <38.689285, 35.469379, 34.311115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.287868, 35.914318, 34.493435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363949, 35.542179, 34.618828>,  <39.409595, 35.318893, 34.694065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.363949, 35.542179, 34.618828>,  <39.287868, 35.914318, 34.493435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363949, 35.542179, 34.618828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972459, 0.134718, -0.190196,
		0.134718, 0.341023, 0.930352,
		0.190196, -0.930352, 0.313482,
		39.421009, 35.263073, 34.712872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762444, 35.945938, 34.951912>,  <39.287868, 35.914318, 34.493435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.762444, 35.945938, 34.951912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759586, 35.603302, 34.745529>,  <39.757870, 35.397720, 34.621700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.759586, 35.603302, 34.745529>,  <39.762444, 35.945938, 34.951912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759586, 35.603302, 34.745529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934309, 0.178172, -0.308740,
		0.356391, -0.484266, 0.799044,
		-0.007145, -0.856587, -0.515953,
		39.757442, 35.346325, 34.590744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289600, 35.464211, 35.202236>,  <39.762444, 35.945938, 34.951912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289600, 35.464211, 35.202236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192432, 35.475735, 34.814388>,  <40.134132, 35.482647, 34.581680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192432, 35.475735, 34.814388>,  <40.289600, 35.464211, 35.202236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192432, 35.475735, 34.814388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847534, 0.492544, -0.197702,
		0.471885, -0.869811, -0.144064,
		-0.242921, 0.028806, -0.969618,
		40.119556, 35.484375, 34.523502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929390, 35.188129, 34.844765>,  <40.289600, 35.464211, 35.202236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929390, 35.188129, 34.844765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713966, 35.397331, 34.580517>,  <40.584713, 35.522854, 34.421967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.713966, 35.397331, 34.580517>,  <40.929390, 35.188129, 34.844765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.713966, 35.397331, 34.580517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815523, 0.520669, -0.252637,
		0.211833, -0.674811, -0.706935,
		-0.538561, 0.523005, -0.660619,
		40.552399, 35.554234, 34.382332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.362049, 35.315117, 34.332550>,  <40.929390, 35.188129, 34.844765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.362049, 35.315117, 34.332550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072376, 35.580521, 34.257378>,  <40.898571, 35.739761, 34.212273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.072376, 35.580521, 34.257378>,  <41.362049, 35.315117, 34.332550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072376, 35.580521, 34.257378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689548, 0.693071, -0.210181,
		-0.009206, -0.281799, -0.959430,
		-0.724181, 0.663508, -0.187934,
		40.855122, 35.779572, 34.200996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514992, 35.598160, 33.609241>,  <41.362049, 35.315117, 34.332550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514992, 35.598160, 33.609241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325527, 35.812473, 33.888836>,  <41.211849, 35.941063, 34.056591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.325527, 35.812473, 33.888836>,  <41.514992, 35.598160, 33.609241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325527, 35.812473, 33.888836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780230, 0.623422, 0.050850,
		-0.408518, 0.569454, -0.713327,
		-0.473660, 0.535786, 0.698985,
		41.183430, 35.973209, 34.098530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560436, 36.334480, 33.424801>,  <41.514992, 35.598160, 33.609241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560436, 36.334480, 33.424801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494968, 36.282257, 33.815937>,  <41.455688, 36.250923, 34.050617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.494968, 36.282257, 33.815937>,  <41.560436, 36.334480, 33.424801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.494968, 36.282257, 33.815937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802226, 0.559261, 0.208951,
		-0.574147, 0.818646, 0.013204,
		-0.163673, -0.130561, 0.977837,
		41.445866, 36.243088, 34.109287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542034, 37.102772, 33.737625>,  <41.560436, 36.334480, 33.424801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542034, 37.102772, 33.737625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672577, 36.800358, 33.964573>,  <41.750904, 36.618912, 34.100742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672577, 36.800358, 33.964573>,  <41.542034, 37.102772, 33.737625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672577, 36.800358, 33.964573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868360, 0.476918, 0.136015,
		-0.373420, 0.448291, 0.812153,
		0.326356, -0.756032, 0.567369,
		41.770485, 36.573547, 34.134785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725010, 37.504704, 34.260529>,  <41.542034, 37.102772, 33.737625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725010, 37.504704, 34.260529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915268, 37.152946, 34.252296>,  <42.029423, 36.941891, 34.247356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.915268, 37.152946, 34.252296>,  <41.725010, 37.504704, 34.260529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915268, 37.152946, 34.252296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870946, 0.467542, 0.151186,
		-0.123329, -0.089837, 0.988291,
		0.475649, -0.879394, -0.020582,
		42.057964, 36.889130, 34.246120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362419, 37.927979, 34.406727>,  <41.725010, 37.504704, 34.260529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362419, 37.927979, 34.406727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368298, 37.539833, 34.310242>,  <42.371826, 37.306946, 34.252350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368298, 37.539833, 34.310242>,  <42.362419, 37.927979, 34.406727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368298, 37.539833, 34.310242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951452, -0.060602, 0.301771,
		-0.307445, -0.233942, 0.922360,
		0.014700, -0.970360, -0.241216,
		42.372707, 37.248726, 34.237877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.979702, 37.693153, 34.652767>,  <42.362419, 37.927979, 34.406727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.979702, 37.693153, 34.652767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.895580, 37.371056, 34.431011>,  <42.845108, 37.177795, 34.297958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.895580, 37.371056, 34.431011>,  <42.979702, 37.693153, 34.652767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.895580, 37.371056, 34.431011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948948, -0.304502, 0.082314,
		-0.235096, -0.508776, 0.828177,
		-0.210302, -0.805249, -0.554389,
		42.832489, 37.129482, 34.264694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.313366, 37.107479, 35.002533>,  <42.979702, 37.693153, 34.652767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.313366, 37.107479, 35.002533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276909, 37.028397, 34.612125>,  <43.255035, 36.980949, 34.377880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276909, 37.028397, 34.612125>,  <43.313366, 37.107479, 35.002533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276909, 37.028397, 34.612125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977633, -0.204311, -0.049906,
		-0.189544, -0.958733, 0.211903,
		-0.091140, -0.197704, -0.976016,
		43.249565, 36.969086, 34.319321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.434658, 36.397377, 34.887695>,  <43.313366, 37.107479, 35.002533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.434658, 36.397377, 34.887695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520828, 36.671402, 34.609333>,  <43.572533, 36.835815, 34.442318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.520828, 36.671402, 34.609333>,  <43.434658, 36.397377, 34.887695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520828, 36.671402, 34.609333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975950, -0.175372, 0.129484,
		-0.033337, -0.707061, -0.706366,
		0.215430, 0.685061, -0.695903,
		43.585457, 36.876919, 34.400562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787807, 36.136665, 34.216064>,  <43.434658, 36.397377, 34.887695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787807, 36.136665, 34.216064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890610, 36.516014, 34.290409>,  <43.952293, 36.743622, 34.335014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.890610, 36.516014, 34.290409>,  <43.787807, 36.136665, 34.216064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.890610, 36.516014, 34.290409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966357, -0.254195, -0.039236,
		0.010034, 0.189689, -0.981793,
		0.257010, 0.948368, 0.185858,
		43.967712, 36.800526, 34.346165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.176117, 36.692295, 33.742050>,  <43.787807, 36.136665, 34.216064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.176117, 36.692295, 33.742050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.328419, 36.702682, 34.111774>,  <44.419800, 36.708916, 34.333611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.328419, 36.702682, 34.111774>,  <44.176117, 36.692295, 33.742050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.328419, 36.702682, 34.111774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886746, -0.293611, -0.357035,
		0.262116, 0.955572, -0.134822,
		0.380758, 0.025968, 0.924310,
		44.442646, 36.710472, 34.389069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.975357, 36.925285, 33.682491>,  <44.176117, 36.692295, 33.742050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.975357, 36.925285, 33.682491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.934971, 36.814018, 34.064575>,  <44.910740, 36.747257, 34.293827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.934971, 36.814018, 34.064575>,  <44.975357, 36.925285, 33.682491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.934971, 36.814018, 34.064575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978742, -0.200054, 0.045190,
		0.178523, 0.939468, 0.292455,
		-0.100961, -0.278170, 0.955211,
		44.904682, 36.730568, 34.351139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.330364, 37.267334, 34.289429>,  <44.975357, 36.925285, 33.682491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.330364, 37.267334, 34.289429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.304665, 36.877117, 34.373505>,  <45.289246, 36.642986, 34.423950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.304665, 36.877117, 34.373505>,  <45.330364, 37.267334, 34.289429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.304665, 36.877117, 34.373505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996589, -0.051789, 0.064245,
		-0.051789, 0.213603, 0.975547,
		-0.064245, -0.975547, 0.210193,
		45.285393, 36.584454, 34.436562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.913448, 37.123016, 34.781662>,  <45.330364, 37.267334, 34.289429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.913448, 37.123016, 34.781662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778419, 36.804661, 34.580620>,  <45.697403, 36.613647, 34.459995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.778419, 36.804661, 34.580620>,  <45.913448, 37.123016, 34.781662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.778419, 36.804661, 34.580620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925500, -0.183208, -0.331488,
		0.171745, -0.577063, 0.798437,
		-0.337570, -0.795885, -0.502606,
		45.677147, 36.565895, 34.429836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.222767, 36.384205, 34.926018>,  <45.913448, 37.123016, 34.781662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.222767, 36.384205, 34.926018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.138718, 36.400070, 34.535271>,  <46.088287, 36.409592, 34.300823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.138718, 36.400070, 34.535271>,  <46.222767, 36.384205, 34.926018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.138718, 36.400070, 34.535271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955065, -0.205318, -0.213767,
		-0.209047, -0.977891, 0.005260,
		-0.210121, 0.039664, -0.976871,
		46.075684, 36.411972, 34.242210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.456226, 35.667343, 34.638580>,  <46.222767, 36.384205, 34.926018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.456226, 35.667343, 34.638580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.458534, 35.993481, 34.407001>,  <46.459919, 36.189163, 34.268055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.458534, 35.993481, 34.407001>,  <46.456226, 35.667343, 34.638580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.458534, 35.993481, 34.407001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994930, -0.062810, -0.078541,
		-0.100402, -0.575555, -0.811576,
		0.005770, 0.815347, -0.578944,
		46.460266, 36.238083, 34.233318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.737209, 35.535660, 33.990284>,  <46.456226, 35.667343, 34.638580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.737209, 35.535660, 33.990284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.783390, 35.912514, 34.116177>,  <46.811096, 36.138626, 34.191711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.783390, 35.912514, 34.116177>,  <46.737209, 35.535660, 33.990284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.783390, 35.912514, 34.116177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991446, -0.128713, 0.021617,
		0.060876, 0.309541, -0.948936,
		0.115449, 0.942134, 0.314728,
		46.818024, 36.195152, 34.210594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.233715, 36.191353, 33.903786>,  <46.737209, 35.535660, 33.990284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.233715, 36.191353, 33.903786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.531918, 36.140381, 34.165466>,  <47.710838, 36.109798, 34.322475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.531918, 36.140381, 34.165466>,  <47.233715, 36.191353, 33.903786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.531918, 36.140381, 34.165466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433584, -0.838186, 0.330831,
		0.506188, -0.530289, -0.680122,
		0.745505, -0.127428, 0.654205,
		47.755569, 36.102154, 34.361729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.649227, 35.603203, 33.893799>,  <47.233715, 36.191353, 33.903786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.649227, 35.603203, 33.893799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.627174, 35.729584, 34.272667>,  <47.613945, 35.805412, 34.499989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.627174, 35.729584, 34.272667>,  <47.649227, 35.603203, 33.893799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.627174, 35.729584, 34.272667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563088, -0.793215, 0.231825,
		0.824556, -0.520561, 0.221638,
		-0.055127, 0.315954, 0.947172,
		47.610638, 35.824371, 34.556820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.990391, 35.142361, 34.488918>,  <47.649227, 35.603203, 33.893799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.990391, 35.142361, 34.488918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.670406, 35.358147, 34.594025>,  <47.478416, 35.487617, 34.657089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.670406, 35.358147, 34.594025>,  <47.990391, 35.142361, 34.488918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.670406, 35.358147, 34.594025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486863, -0.839488, 0.241297,
		0.350759, 0.065097, 0.934201,
		-0.799958, 0.539464, 0.262764,
		47.430420, 35.519985, 34.672855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.910801, 35.016754, 35.244148>,  <47.990391, 35.142361, 34.488918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.910801, 35.016754, 35.244148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.583984, 35.098843, 35.028618>,  <47.387894, 35.148098, 34.899300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.583984, 35.098843, 35.028618>,  <47.910801, 35.016754, 35.244148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.583984, 35.098843, 35.028618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292181, -0.953005, 0.080072,
		-0.497068, 0.222856, 0.838605,
		-0.817039, 0.205224, -0.538823,
		47.338871, 35.160408, 34.866970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.847569, 32.458569, 20.454142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.606430, 32.186695, 20.621283>,  <32.461746, 32.023571, 20.721567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.606430, 32.186695, 20.621283>,  <32.847569, 32.458569, 20.454142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.606430, 32.186695, 20.621283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009984, 0.530103, 0.847874,
		-0.797793, 0.506968, -0.326358,
		-0.602849, -0.679687, 0.417851,
		32.425575, 31.982790, 20.746637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449772, 32.962742, 20.907261>,  <32.847569, 32.458569, 20.454142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449772, 32.962742, 20.907261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.344387, 32.597595, 21.032011>,  <32.281155, 32.378510, 21.106861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.344387, 32.597595, 21.032011>,  <32.449772, 32.962742, 20.907261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344387, 32.597595, 21.032011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083576, 0.343682, 0.935360,
		-0.961043, 0.220366, -0.166840,
		-0.263462, -0.912864, 0.311876,
		32.265350, 32.323734, 21.125574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934816, 33.089550, 21.316229>,  <32.449772, 32.962742, 20.907261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934816, 33.089550, 21.316229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.070724, 32.737755, 21.449533>,  <32.152267, 32.526680, 21.529516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.070724, 32.737755, 21.449533>,  <31.934816, 33.089550, 21.316229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070724, 32.737755, 21.449533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061241, 0.332899, 0.940972,
		-0.938513, -0.340123, 0.059248,
		0.339770, -0.879486, 0.333260,
		32.172657, 32.473907, 21.549511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438444, 32.829002, 21.782150>,  <31.934816, 33.089550, 21.316229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438444, 32.829002, 21.782150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.799988, 32.674488, 21.855717>,  <32.016914, 32.581779, 21.899857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.799988, 32.674488, 21.855717>,  <31.438444, 32.829002, 21.782150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799988, 32.674488, 21.855717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006635, 0.417168, 0.908805,
		-0.427779, -0.822652, 0.374498,
		0.903859, -0.386283, 0.183914,
		32.071144, 32.558601, 21.910891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364077, 32.704681, 22.536922>,  <31.438444, 32.829002, 21.782150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364077, 32.704681, 22.536922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.740393, 32.571609, 22.510880>,  <31.966183, 32.491768, 22.495253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.740393, 32.571609, 22.510880>,  <31.364077, 32.704681, 22.536922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740393, 32.571609, 22.510880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222581, 0.461354, 0.858842,
		-0.255683, -0.822482, 0.508085,
		0.940789, -0.332681, -0.065108,
		32.022629, 32.471806, 22.491346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572199, 32.138607, 23.099394>,  <31.364077, 32.704681, 22.536922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572199, 32.138607, 23.099394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.881781, 32.347340, 22.955904>,  <32.067532, 32.472580, 22.869810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.881781, 32.347340, 22.955904>,  <31.572199, 32.138607, 23.099394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881781, 32.347340, 22.955904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014064, 0.552188, 0.833601,
		0.633087, -0.650214, 0.420028,
		0.773953, 0.521835, -0.358727,
		32.113968, 32.503891, 22.848286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143219, 32.012402, 23.564459>,  <31.572199, 32.138607, 23.099394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143219, 32.012402, 23.564459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.220776, 32.352528, 23.368753>,  <32.267307, 32.556602, 23.251329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.220776, 32.352528, 23.368753>,  <32.143219, 32.012402, 23.564459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220776, 32.352528, 23.368753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178999, 0.459691, 0.869852,
		0.964555, -0.256232, -0.063076,
		0.193889, 0.850311, -0.489263,
		32.278942, 32.607620, 23.221975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756386, 32.183701, 23.853893>,  <32.143219, 32.012402, 23.564459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756386, 32.183701, 23.853893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.614025, 32.523174, 23.697397>,  <32.528606, 32.726860, 23.603500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.614025, 32.523174, 23.697397>,  <32.756386, 32.183701, 23.853893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614025, 32.523174, 23.697397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018048, 0.412331, 0.910855,
		0.934347, 0.331240, -0.131434,
		-0.355906, 0.848683, -0.391238,
		32.507252, 32.777779, 23.580025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206493, 32.670174, 24.094456>,  <32.756386, 32.183701, 23.853893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206493, 32.670174, 24.094456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.889656, 32.881523, 23.972208>,  <32.699554, 33.008331, 23.898859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.889656, 32.881523, 23.972208>,  <33.206493, 32.670174, 24.094456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889656, 32.881523, 23.972208> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033320, 0.537373, 0.842687,
		0.609484, 0.657307, -0.443257,
		-0.792098, 0.528374, -0.305619,
		32.652027, 33.040035, 23.880522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433781, 33.294849, 24.069063>,  <33.206493, 32.670174, 24.094456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433781, 33.294849, 24.069063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.041031, 33.341484, 24.128828>,  <32.805382, 33.369465, 24.164686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.041031, 33.341484, 24.128828>,  <33.433781, 33.294849, 24.069063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041031, 33.341484, 24.128828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188132, 0.694813, 0.694148,
		-0.022881, 0.709677, -0.704156,
		-0.981877, 0.116591, 0.149411,
		32.746468, 33.376461, 24.173651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366879, 33.985516, 24.271011>,  <33.433781, 33.294849, 24.069063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366879, 33.985516, 24.271011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.032452, 33.799236, 24.387026>,  <32.831795, 33.687469, 24.456635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.032452, 33.799236, 24.387026>,  <33.366879, 33.985516, 24.271011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.032452, 33.799236, 24.387026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078144, 0.624349, 0.777227,
		-0.543034, 0.627149, -0.558389,
		-0.836067, -0.465695, 0.290035,
		32.781631, 33.659527, 24.474037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961208, 34.546871, 24.421577>,  <33.366879, 33.985516, 24.271011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961208, 34.546871, 24.421577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.817223, 34.237221, 24.629869>,  <32.730831, 34.051430, 24.754845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.817223, 34.237221, 24.629869>,  <32.961208, 34.546871, 24.421577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.817223, 34.237221, 24.629869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077940, 0.581146, 0.810058,
		-0.929704, 0.251007, -0.269528,
		-0.359965, -0.774121, 0.520731,
		32.709232, 34.004986, 24.786089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516285, 34.923771, 24.897421>,  <32.961208, 34.546871, 24.421577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516285, 34.923771, 24.897421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.548386, 34.559345, 25.059174>,  <32.567646, 34.340691, 25.156225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.548386, 34.559345, 25.059174>,  <32.516285, 34.923771, 24.897421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548386, 34.559345, 25.059174> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080408, 0.398450, 0.913659,
		-0.993526, -0.105840, -0.041279,
		0.080254, -0.911063, 0.404381,
		32.572460, 34.286026, 25.180489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962603, 34.961380, 25.406612>,  <32.516285, 34.923771, 24.897421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962603, 34.961380, 25.406612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.233658, 34.682655, 25.500639>,  <32.396290, 34.515419, 25.557055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.233658, 34.682655, 25.500639>,  <31.962603, 34.961380, 25.406612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233658, 34.682655, 25.500639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151334, 0.444938, 0.882683,
		-0.719656, -0.562566, 0.406958,
		0.677638, -0.696814, 0.235067,
		32.436951, 34.473610, 25.571159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701313, 34.615711, 26.018255>,  <31.962603, 34.961380, 25.406612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701313, 34.615711, 26.018255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.096684, 34.556133, 26.006731>,  <32.333904, 34.520386, 25.999817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.096684, 34.556133, 26.006731>,  <31.701313, 34.615711, 26.018255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096684, 34.556133, 26.006731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085335, 0.388858, 0.917337,
		-0.125431, -0.909178, 0.397068,
		0.988426, -0.148947, -0.028810,
		32.393211, 34.511448, 25.998089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918123, 34.269325, 26.671238>,  <31.701313, 34.615711, 26.018255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918123, 34.269325, 26.671238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.254074, 34.430206, 26.525450>,  <32.455647, 34.526733, 26.437977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.254074, 34.430206, 26.525450>,  <31.918123, 34.269325, 26.671238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.254074, 34.430206, 26.525450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116648, 0.522053, 0.844899,
		0.530101, -0.752123, 0.391541,
		0.839872, 0.402209, -0.364475,
		32.506039, 34.550865, 26.416109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347847, 34.384491, 27.256384>,  <31.918123, 34.269325, 26.671238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347847, 34.384491, 27.256384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.546093, 34.611084, 26.993032>,  <32.665043, 34.747040, 26.835022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.546093, 34.611084, 26.993032>,  <32.347847, 34.384491, 27.256384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546093, 34.611084, 26.993032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195687, 0.665707, 0.720098,
		0.846208, -0.485730, 0.219084,
		0.495618, 0.566481, -0.658378,
		32.694778, 34.781029, 26.795519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003998, 34.512093, 27.554251>,  <32.347847, 34.384491, 27.256384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003998, 34.512093, 27.554251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.919224, 34.794155, 27.283598>,  <32.868359, 34.963394, 27.121206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.919224, 34.794155, 27.283598>,  <33.003998, 34.512093, 27.554251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919224, 34.794155, 27.283598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261838, 0.708020, 0.655857,
		0.941554, -0.038167, -0.334694,
		-0.211938, 0.705160, -0.676632,
		32.855644, 35.005703, 27.080608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582783, 34.933212, 27.615452>,  <33.003998, 34.512093, 27.554251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582783, 34.933212, 27.615452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.302933, 35.154430, 27.434494>,  <33.135021, 35.287159, 27.325918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.302933, 35.154430, 27.434494>,  <33.582783, 34.933212, 27.615452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302933, 35.154430, 27.434494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356841, 0.818994, 0.449347,
		0.619018, 0.152943, -0.770341,
		-0.699629, 0.553043, -0.452396,
		33.093044, 35.320343, 27.298775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941708, 35.489880, 27.535490>,  <33.582783, 34.933212, 27.615452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941708, 35.489880, 27.535490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.560837, 35.608562, 27.506332>,  <33.332314, 35.679771, 27.488838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.560837, 35.608562, 27.506332>,  <33.941708, 35.489880, 27.535490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560837, 35.608562, 27.506332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249172, 0.892178, 0.376739,
		0.176815, 0.340562, -0.923447,
		-0.952182, 0.296710, -0.072892,
		33.275181, 35.697575, 27.484465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884132, 36.081490, 27.050177>,  <33.941708, 35.489880, 27.535490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884132, 36.081490, 27.050177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.569080, 36.093410, 27.296349>,  <33.380051, 36.100563, 27.444052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.569080, 36.093410, 27.296349>,  <33.884132, 36.081490, 27.050177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569080, 36.093410, 27.296349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389154, 0.798454, 0.459381,
		-0.477703, 0.601319, -0.640481,
		-0.787629, 0.029798, 0.615429,
		33.332790, 36.102348, 27.480978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660637, 36.702682, 27.009098>,  <33.884132, 36.081490, 27.050177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660637, 36.702682, 27.009098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.487949, 36.592625, 27.352707>,  <33.384338, 36.526592, 27.558872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.487949, 36.592625, 27.352707>,  <33.660637, 36.702682, 27.009098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487949, 36.592625, 27.352707> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376932, 0.810175, 0.448931,
		-0.819477, 0.517604, -0.246056,
		-0.431717, -0.275142, 0.859021,
		33.358433, 36.510082, 27.610413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482361, 37.227261, 26.510311>,  <33.660637, 36.702682, 27.009098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482361, 37.227261, 26.510311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.640648, 37.592983, 26.475792>,  <33.735619, 37.812416, 26.455080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.640648, 37.592983, 26.475792>,  <33.482361, 37.227261, 26.510311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640648, 37.592983, 26.475792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108014, -0.139652, -0.984292,
		-0.912000, 0.380176, -0.154021,
		0.395713, 0.914311, -0.086298,
		33.759361, 37.867275, 26.449903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.085064, 37.639267, 26.052717>,  <33.482361, 37.227261, 26.510311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.085064, 37.639267, 26.052717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.457474, 37.784817, 26.041443>,  <33.680920, 37.872147, 26.034678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.457474, 37.784817, 26.041443>,  <33.085064, 37.639267, 26.052717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.457474, 37.784817, 26.041443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028002, -0.005785, -0.999591,
		-0.363888, 0.931430, 0.004803,
		0.931022, 0.363874, -0.028187,
		33.736782, 37.893978, 26.032988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027840, 38.206665, 25.577480>,  <33.085064, 37.639267, 26.052717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027840, 38.206665, 25.577480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.418301, 38.126602, 25.611094>,  <33.652576, 38.078564, 25.631262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.418301, 38.126602, 25.611094>,  <33.027840, 38.206665, 25.577480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418301, 38.126602, 25.611094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080312, -0.026663, -0.996413,
		0.201684, 0.979400, -0.009952,
		0.976152, -0.200161, 0.084035,
		33.711147, 38.066555, 25.636305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359417, 38.690071, 25.132181>,  <33.027840, 38.206665, 25.577480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359417, 38.690071, 25.132181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.600430, 38.374229, 25.178631>,  <33.745037, 38.184723, 25.206501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.600430, 38.374229, 25.178631>,  <33.359417, 38.690071, 25.132181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600430, 38.374229, 25.178631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126740, -0.048988, -0.990726,
		0.787969, 0.611660, 0.070558,
		0.602530, -0.789603, 0.116123,
		33.781189, 38.137348, 25.213469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.881607, 38.835732, 24.610039>,  <33.359417, 38.690071, 25.132181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.881607, 38.835732, 24.610039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.904026, 38.448895, 24.709307>,  <33.917477, 38.216793, 24.768867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.904026, 38.448895, 24.709307>,  <33.881607, 38.835732, 24.610039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904026, 38.448895, 24.709307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232520, -0.254371, -0.938739,
		0.970975, -0.005092, -0.239125,
		0.056046, -0.967093, 0.248172,
		33.920841, 38.158768, 24.783758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335648, 38.591728, 24.143736>,  <33.881607, 38.835732, 24.610039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335648, 38.591728, 24.143736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.127384, 38.277485, 24.277445>,  <34.002426, 38.088940, 24.357670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.127384, 38.277485, 24.277445>,  <34.335648, 38.591728, 24.143736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127384, 38.277485, 24.277445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052229, -0.361485, -0.930914,
		0.852165, -0.502148, 0.147179,
		-0.520660, -0.785606, 0.334272,
		33.971188, 38.041801, 24.377726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608631, 38.030560, 23.840366>,  <34.335648, 38.591728, 24.143736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608631, 38.030560, 23.840366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.262096, 37.868359, 23.957005>,  <34.054176, 37.771038, 24.026987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.262096, 37.868359, 23.957005>,  <34.608631, 38.030560, 23.840366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262096, 37.868359, 23.957005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002307, -0.580563, -0.814212,
		0.499454, -0.706055, 0.502028,
		-0.866338, -0.405503, 0.291593,
		34.002193, 37.746708, 24.044483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660549, 37.300407, 23.695227>,  <34.608631, 38.030560, 23.840366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660549, 37.300407, 23.695227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.274387, 37.403637, 23.710119>,  <34.042690, 37.465576, 23.719055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.274387, 37.403637, 23.710119>,  <34.660549, 37.300407, 23.695227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274387, 37.403637, 23.710119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185317, -0.578658, -0.794237,
		-0.183430, -0.773661, 0.606466,
		-0.965407, 0.258076, 0.037229,
		33.984764, 37.481060, 23.721289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276535, 36.758213, 23.428520>,  <34.660549, 37.300407, 23.695227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276535, 36.758213, 23.428520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.975254, 37.020790, 23.445307>,  <33.794483, 37.178337, 23.455378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.975254, 37.020790, 23.445307>,  <34.276535, 36.758213, 23.428520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975254, 37.020790, 23.445307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295581, -0.280776, -0.913125,
		-0.587635, -0.700174, 0.405515,
		-0.753205, 0.656446, 0.041964,
		33.749294, 37.217724, 23.457895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597462, 36.451923, 23.259890>,  <34.276535, 36.758213, 23.428520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597462, 36.451923, 23.259890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.559490, 36.840240, 23.171755>,  <33.536709, 37.073231, 23.118874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.559490, 36.840240, 23.171755>,  <33.597462, 36.451923, 23.259890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559490, 36.840240, 23.171755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339037, -0.239631, -0.909742,
		-0.935972, -0.011655, 0.351882,
		-0.094925, 0.970794, -0.220336,
		33.531013, 37.131477, 23.105654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048416, 36.403454, 22.801897>,  <33.597462, 36.451923, 23.259890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048416, 36.403454, 22.801897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.174141, 36.778442, 22.742098>,  <33.249577, 37.003437, 22.706219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.174141, 36.778442, 22.742098>,  <33.048416, 36.403454, 22.801897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174141, 36.778442, 22.742098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225568, -0.079219, -0.971002,
		-0.922131, 0.338923, 0.186564,
		0.314315, 0.937473, -0.149500,
		33.268436, 37.059685, 22.697248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482536, 36.716976, 22.453537>,  <33.048416, 36.403454, 22.801897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482536, 36.716976, 22.453537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.808254, 36.941803, 22.395571>,  <33.003685, 37.076698, 22.360792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.808254, 36.941803, 22.395571>,  <32.482536, 36.716976, 22.453537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808254, 36.941803, 22.395571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125925, -0.072649, -0.989376,
		-0.566627, 0.823893, 0.011621,
		0.814295, 0.562070, -0.144914,
		33.052544, 37.110424, 22.352097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251049, 37.269062, 21.940054>,  <32.482536, 36.716976, 22.453537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251049, 37.269062, 21.940054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.644344, 37.196972, 21.951080>,  <32.880322, 37.153717, 21.957697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.644344, 37.196972, 21.951080>,  <32.251049, 37.269062, 21.940054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644344, 37.196972, 21.951080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026336, -0.290001, -0.956664,
		0.180411, 0.939903, -0.289887,
		0.983239, -0.180227, 0.027566,
		32.939316, 37.142902, 21.959351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425541, 37.444878, 21.263649>,  <32.251049, 37.269062, 21.940054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425541, 37.444878, 21.263649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.719723, 37.219616, 21.414360>,  <32.896233, 37.084461, 21.504787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.719723, 37.219616, 21.414360>,  <32.425541, 37.444878, 21.263649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719723, 37.219616, 21.414360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192187, -0.359854, -0.913000,
		0.649741, 0.743886, -0.156427,
		0.735459, -0.563151, 0.376777,
		32.940361, 37.050671, 21.527393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865864, 37.461155, 20.730373>,  <32.425541, 37.444878, 21.263649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865864, 37.461155, 20.730373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.967014, 37.148003, 20.957762>,  <33.027702, 36.960114, 21.094194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.967014, 37.148003, 20.957762>,  <32.865864, 37.461155, 20.730373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967014, 37.148003, 20.957762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182711, -0.538350, -0.822676,
		0.950090, 0.311899, 0.006906,
		0.252874, -0.782878, 0.568469,
		33.042877, 36.913139, 21.128302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549828, 37.153114, 20.429943>,  <32.865864, 37.461155, 20.730373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549828, 37.153114, 20.429943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.353622, 36.863701, 20.624224>,  <33.235901, 36.690052, 20.740791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.353622, 36.863701, 20.624224>,  <33.549828, 37.153114, 20.429943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353622, 36.863701, 20.624224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098556, -0.599840, -0.794027,
		0.865845, -0.341609, 0.365535,
		-0.490509, -0.723530, 0.485701,
		33.206470, 36.646641, 20.769934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840172, 36.642502, 20.133942>,  <33.549828, 37.153114, 20.429943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840172, 36.642502, 20.133942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.524746, 36.473137, 20.312332>,  <33.335491, 36.371517, 20.419367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.524746, 36.473137, 20.312332>,  <33.840172, 36.642502, 20.133942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524746, 36.473137, 20.312332> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084712, -0.793091, -0.603183,
		0.609095, -0.437867, 0.661269,
		-0.788560, -0.423413, 0.445975,
		33.288177, 36.346111, 20.446125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990223, 35.977581, 20.166218>,  <33.840172, 36.642502, 20.133942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990223, 35.977581, 20.166218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.590408, 35.989567, 20.168692>,  <33.350521, 35.996758, 20.170176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.590408, 35.989567, 20.168692>,  <33.990223, 35.977581, 20.166218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590408, 35.989567, 20.168692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028445, -0.835589, -0.548618,
		-0.011269, -0.548537, 0.836050,
		-0.999532, 0.029964, 0.006187,
		33.290550, 35.998558, 20.170547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.776657, 35.272755, 20.308556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.432796, 35.410740, 20.157824>,  <33.226479, 35.493530, 20.067385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.432796, 35.410740, 20.157824>,  <33.776657, 35.272755, 20.308556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432796, 35.410740, 20.157824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155438, -0.879246, -0.450294,
		-0.486659, -0.328524, 0.809466,
		-0.859652, 0.344961, -0.376828,
		33.174900, 35.514229, 20.044775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319904, 34.735264, 20.400810>,  <33.776657, 35.272755, 20.308556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319904, 34.735264, 20.400810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.141270, 34.946941, 20.112221>,  <33.034088, 35.073948, 19.939068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.141270, 34.946941, 20.112221>,  <33.319904, 34.735264, 20.400810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141270, 34.946941, 20.112221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136499, -0.837201, -0.529586,
		-0.884269, -0.138024, 0.446114,
		-0.446583, 0.529191, -0.721471,
		33.007294, 35.105698, 19.895779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685013, 34.319599, 20.204144>,  <33.319904, 34.735264, 20.400810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685013, 34.319599, 20.204144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.750652, 34.588444, 19.915327>,  <32.790035, 34.749748, 19.742037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.750652, 34.588444, 19.915327>,  <32.685013, 34.319599, 20.204144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.750652, 34.588444, 19.915327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319479, -0.656302, -0.683521,
		-0.933277, 0.342840, 0.107028,
		0.164096, 0.672107, -0.722042,
		32.799881, 34.790077, 19.698715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127441, 34.255051, 19.752724>,  <32.685013, 34.319599, 20.204144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127441, 34.255051, 19.752724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.405426, 34.433826, 19.527416>,  <32.572216, 34.541092, 19.392233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.405426, 34.433826, 19.527416>,  <32.127441, 34.255051, 19.752724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405426, 34.433826, 19.527416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272827, -0.560875, -0.781655,
		-0.665273, 0.696898, -0.267853,
		0.694966, 0.446937, -0.563267,
		32.613914, 34.567909, 19.358437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790972, 34.409218, 19.137753>,  <32.127441, 34.255051, 19.752724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790972, 34.409218, 19.137753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.184021, 34.394444, 19.064993>,  <32.419849, 34.385578, 19.021338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.184021, 34.394444, 19.064993>,  <31.790972, 34.409218, 19.137753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184021, 34.394444, 19.064993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166034, -0.612991, -0.772448,
		-0.082968, 0.789226, -0.608472,
		0.982624, -0.036939, -0.181897,
		32.478809, 34.383362, 19.010424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876724, 34.518097, 18.437712>,  <31.790972, 34.409218, 19.137753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876724, 34.518097, 18.437712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.239906, 34.375023, 18.525053>,  <32.457817, 34.289181, 18.577457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.239906, 34.375023, 18.525053>,  <31.876724, 34.518097, 18.437712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239906, 34.375023, 18.525053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034531, -0.455422, -0.889606,
		0.417638, 0.815264, -0.401152,
		0.907957, -0.357681, 0.218353,
		32.512295, 34.267719, 18.590559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144951, 34.239906, 17.746317>,  <31.876724, 34.518097, 18.437712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144951, 34.239906, 17.746317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.414726, 34.074139, 17.990738>,  <32.576591, 33.974678, 18.137390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.414726, 34.074139, 17.990738>,  <32.144951, 34.239906, 17.746317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414726, 34.074139, 17.990738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310995, -0.591160, -0.744185,
		0.669637, 0.691943, -0.269818,
		0.674439, -0.414422, 0.611054,
		32.617058, 33.949814, 18.174053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721161, 34.244854, 17.407921>,  <32.144951, 34.239906, 17.746317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721161, 34.244854, 17.407921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.759098, 33.950531, 17.676128>,  <32.781860, 33.773937, 17.837053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.759098, 33.950531, 17.676128>,  <32.721161, 34.244854, 17.407921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759098, 33.950531, 17.676128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324703, -0.613852, -0.719551,
		0.941049, 0.285961, 0.180702,
		0.094839, -0.735807, 0.670517,
		32.787548, 33.729790, 17.877283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394001, 33.910244, 17.314711>,  <32.721161, 34.244854, 17.407921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394001, 33.910244, 17.314711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.134766, 33.661488, 17.490543>,  <32.979225, 33.512234, 17.596043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.134766, 33.661488, 17.490543>,  <33.394001, 33.910244, 17.314711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134766, 33.661488, 17.490543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028333, -0.557123, -0.829946,
		0.761037, -0.550335, 0.343446,
		-0.648090, -0.621889, 0.439584,
		32.940338, 33.474922, 17.622419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596687, 33.305725, 17.111969>,  <33.394001, 33.910244, 17.314711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596687, 33.305725, 17.111969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.217445, 33.245411, 17.223940>,  <32.989899, 33.209221, 17.291122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.217445, 33.245411, 17.223940>,  <33.596687, 33.305725, 17.111969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217445, 33.245411, 17.223940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157030, -0.543468, -0.824612,
		0.276472, -0.825776, 0.491587,
		-0.948106, -0.150788, 0.279925,
		32.933014, 33.200176, 17.307917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476147, 32.522301, 17.133577>,  <33.596687, 33.305725, 17.111969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476147, 32.522301, 17.133577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.114452, 32.691608, 17.110960>,  <32.897434, 32.793194, 17.097389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.114452, 32.691608, 17.110960>,  <33.476147, 32.522301, 17.133577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114452, 32.691608, 17.110960> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197082, -0.531113, -0.824062,
		-0.378829, -0.734005, 0.563671,
		-0.904239, 0.423268, -0.056542,
		32.843182, 32.818588, 17.093998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140564, 31.993387, 16.838516>,  <33.476147, 32.522301, 17.133577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140564, 31.993387, 16.838516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.905228, 32.315136, 16.805433>,  <32.764027, 32.508186, 16.785583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.905228, 32.315136, 16.805433>,  <33.140564, 31.993387, 16.838516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905228, 32.315136, 16.805433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414389, -0.387755, -0.823364,
		-0.694360, -0.450148, 0.561455,
		-0.588343, 0.804371, -0.082706,
		32.728725, 32.556446, 16.780622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482452, 31.766684, 16.721363>,  <33.140564, 31.993387, 16.838516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482452, 31.766684, 16.721363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.494617, 32.141037, 16.580965>,  <32.501915, 32.365650, 16.496727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.494617, 32.141037, 16.580965>,  <32.482452, 31.766684, 16.721363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.494617, 32.141037, 16.580965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414462, -0.307736, -0.856458,
		-0.909558, 0.171521, 0.378529,
		0.030414, 0.935884, -0.350993,
		32.503742, 32.421803, 16.475668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800079, 31.810734, 16.544497>,  <32.482452, 31.766684, 16.721363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800079, 31.810734, 16.544497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.974674, 32.113937, 16.350630>,  <32.079430, 32.295860, 16.234310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.974674, 32.113937, 16.350630>,  <31.800079, 31.810734, 16.544497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974674, 32.113937, 16.350630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512488, -0.233287, -0.826398,
		-0.739483, 0.609098, 0.286643,
		0.436487, 0.758008, -0.484667,
		32.105621, 32.341339, 16.205229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304359, 32.354996, 16.317600>,  <31.800079, 31.810734, 16.544497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304359, 32.354996, 16.317600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.616615, 32.419659, 16.076115>,  <31.803968, 32.458458, 15.931223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.616615, 32.419659, 16.076115>,  <31.304359, 32.354996, 16.317600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616615, 32.419659, 16.076115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622600, 0.116846, -0.773768,
		-0.054544, 0.979905, 0.191863,
		0.780637, 0.161659, -0.603715,
		31.850807, 32.468155, 15.895000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911041, 32.619663, 15.808958>,  <31.304359, 32.354996, 16.317600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911041, 32.619663, 15.808958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.274237, 32.519234, 15.674782>,  <31.492153, 32.458977, 15.594276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.274237, 32.519234, 15.674782>,  <30.911041, 32.619663, 15.808958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.274237, 32.519234, 15.674782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359927, -0.057536, -0.931204,
		0.214501, 0.966256, -0.142610,
		0.907988, -0.251074, -0.335441,
		31.546633, 32.443913, 15.574149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118876, 33.063469, 15.114159>,  <30.911041, 32.619663, 15.808958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118876, 33.063469, 15.114159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.324009, 32.720104, 15.118755>,  <31.447088, 32.514084, 15.121513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.324009, 32.720104, 15.118755>,  <31.118876, 33.063469, 15.114159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.324009, 32.720104, 15.118755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300929, -0.192286, -0.934060,
		0.804018, 0.475558, -0.356932,
		0.512832, -0.858412, 0.011492,
		31.477859, 32.462582, 15.122203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440697, 33.028217, 14.499171>,  <31.118876, 33.063469, 15.114159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440697, 33.028217, 14.499171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.435181, 32.646538, 14.618714>,  <31.431871, 32.417530, 14.690440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.435181, 32.646538, 14.618714>,  <31.440697, 33.028217, 14.499171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435181, 32.646538, 14.618714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409091, -0.267342, -0.872452,
		0.912390, -0.134289, -0.386668,
		-0.013788, -0.954199, 0.298857,
		31.431044, 32.360279, 14.708371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651510, 32.576660, 13.880177>,  <31.440697, 33.028217, 14.499171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651510, 32.576660, 13.880177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.481920, 32.326069, 14.141795>,  <31.380167, 32.175716, 14.298766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.481920, 32.326069, 14.141795>,  <31.651510, 32.576660, 13.880177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481920, 32.326069, 14.141795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471197, -0.464147, -0.750027,
		0.773446, -0.626177, -0.098407,
		-0.423975, -0.626475, 0.654045,
		31.354729, 32.138126, 14.338009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768810, 31.940142, 13.582798>,  <31.651510, 32.576660, 13.880177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768810, 31.940142, 13.582798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.452797, 31.880053, 13.820548>,  <31.263189, 31.843998, 13.963199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.452797, 31.880053, 13.820548>,  <31.768810, 31.940142, 13.582798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452797, 31.880053, 13.820548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418222, -0.576831, -0.701681,
		0.448265, -0.802931, 0.392887,
		-0.790031, -0.150225, 0.594376,
		31.215788, 31.834986, 13.998861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592617, 31.371300, 13.343210>,  <31.768810, 31.940142, 13.582798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592617, 31.371300, 13.343210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.275187, 31.440678, 13.576503>,  <31.084728, 31.482304, 13.716478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.275187, 31.440678, 13.576503>,  <31.592617, 31.371300, 13.343210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275187, 31.440678, 13.576503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544066, -0.631457, -0.552498,
		0.272457, -0.755764, 0.595473,
		-0.793574, 0.173444, 0.583230,
		31.037115, 31.492710, 13.751472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280416, 30.722115, 13.551357>,  <31.592617, 31.371300, 13.343210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280416, 30.722115, 13.551357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.979418, 30.979872, 13.605773>,  <30.798819, 31.134525, 13.638422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.979418, 30.979872, 13.605773>,  <31.280416, 30.722115, 13.551357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979418, 30.979872, 13.605773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627284, -0.638332, -0.446147,
		-0.200655, -0.421060, 0.884560,
		-0.752497, 0.644392, 0.136040,
		30.753668, 31.173189, 13.646585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858341, 30.512732, 14.233217>,  <31.280416, 30.722115, 13.551357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858341, 30.512732, 14.233217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.578840, 30.406988, 13.967327>,  <30.411140, 30.343542, 13.807794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.578840, 30.406988, 13.967327>,  <30.858341, 30.512732, 14.233217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578840, 30.406988, 13.967327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483892, 0.509705, -0.711372,
		0.526874, -0.818727, -0.228233,
		-0.698751, -0.264363, -0.664725,
		30.369215, 30.327681, 13.767910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018187, 30.008486, 13.774729>,  <30.858341, 30.512732, 14.233217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018187, 30.008486, 13.774729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.753080, 30.267843, 13.624887>,  <30.594017, 30.423458, 13.534983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.753080, 30.267843, 13.624887>,  <31.018187, 30.008486, 13.774729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.753080, 30.267843, 13.624887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713944, 0.396234, -0.577307,
		-0.225892, -0.650064, -0.725527,
		-0.662764, 0.648395, -0.374603,
		30.554251, 30.462362, 13.512506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865196, 29.371946, 13.494646>,  <31.018187, 30.008486, 13.774729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865196, 29.371946, 13.494646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.630690, 29.090931, 13.656004>,  <30.489986, 28.922321, 13.752819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.630690, 29.090931, 13.656004>,  <30.865196, 29.371946, 13.494646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.630690, 29.090931, 13.656004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271210, 0.299006, 0.914899,
		-0.763371, 0.645780, 0.015238,
		-0.586267, -0.702541, 0.403395,
		30.454809, 28.880169, 13.777022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366852, 29.743061, 13.884663>,  <30.865196, 29.371946, 13.494646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366852, 29.743061, 13.884663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.446463, 29.374725, 14.018795>,  <30.494228, 29.153725, 14.099275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.446463, 29.374725, 14.018795>,  <30.366852, 29.743061, 13.884663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446463, 29.374725, 14.018795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224903, 0.375962, 0.898928,
		-0.953838, -0.103494, 0.281925,
		0.199026, -0.920838, 0.335331,
		30.506170, 29.098475, 14.119394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967798, 29.651392, 14.489774>,  <30.366852, 29.743061, 13.884663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967798, 29.651392, 14.489774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.254040, 29.375080, 14.531219>,  <30.425785, 29.209293, 14.556086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.254040, 29.375080, 14.531219>,  <29.967798, 29.651392, 14.489774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.254040, 29.375080, 14.531219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052755, 0.201358, 0.978096,
		-0.696514, -0.694461, 0.180534,
		0.715602, -0.690782, 0.103612,
		30.468719, 29.167847, 14.562303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684734, 29.244650, 15.014989>,  <29.967798, 29.651392, 14.489774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684734, 29.244650, 15.014989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.070906, 29.143099, 14.991350>,  <30.302608, 29.082169, 14.977167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.070906, 29.143099, 14.991350>,  <29.684734, 29.244650, 15.014989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.070906, 29.143099, 14.991350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067358, 0.023966, 0.997441,
		-0.251811, -0.966940, 0.040238,
		0.965429, -0.253877, -0.059096,
		30.360535, 29.066936, 14.973621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820189, 28.923367, 15.605139>,  <29.684734, 29.244650, 15.014989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820189, 28.923367, 15.605139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.188011, 29.035902, 15.495403>,  <30.408705, 29.103424, 15.429563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.188011, 29.035902, 15.495403>,  <29.820189, 28.923367, 15.605139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188011, 29.035902, 15.495403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190649, 0.291050, 0.937519,
		0.343611, -0.914405, 0.213999,
		0.919556, 0.281343, -0.274339,
		30.463879, 29.120304, 15.413102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302965, 28.650085, 16.053915>,  <29.820189, 28.923367, 15.605139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302965, 28.650085, 16.053915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.464262, 28.981573, 15.898673>,  <30.561039, 29.180466, 15.805529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.464262, 28.981573, 15.898673>,  <30.302965, 28.650085, 16.053915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.464262, 28.981573, 15.898673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297948, 0.282103, 0.911945,
		0.865230, -0.483368, -0.133160,
		0.403240, 0.828718, -0.388103,
		30.585234, 29.230188, 15.782242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817080, 28.841833, 16.461132>,  <30.302965, 28.650085, 16.053915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817080, 28.841833, 16.461132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.799990, 29.179556, 16.247471>,  <30.789736, 29.382191, 16.119274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.799990, 29.179556, 16.247471>,  <30.817080, 28.841833, 16.461132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799990, 29.179556, 16.247471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163236, 0.533355, 0.829992,
		0.985662, -0.051733, -0.160608,
		-0.042723, 0.844308, -0.534152,
		30.787172, 29.432848, 16.087225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497915, 29.167339, 16.532251>,  <30.817080, 28.841833, 16.461132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497915, 29.167339, 16.532251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.230934, 29.445768, 16.426434>,  <31.070745, 29.612825, 16.362942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.230934, 29.445768, 16.426434>,  <31.497915, 29.167339, 16.532251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230934, 29.445768, 16.426434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265902, 0.554629, 0.788469,
		0.695557, 0.455924, -0.555277,
		-0.667455, 0.696074, -0.264545,
		31.030697, 29.654591, 16.347071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820024, 29.772236, 16.660408>,  <31.497915, 29.167339, 16.532251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820024, 29.772236, 16.660408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.445913, 29.911915, 16.637362>,  <31.221447, 29.995722, 16.623533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.445913, 29.911915, 16.637362>,  <31.820024, 29.772236, 16.660408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445913, 29.911915, 16.637362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206720, 0.671134, 0.711931,
		0.287273, 0.653942, -0.699882,
		-0.935276, 0.349198, -0.057616,
		31.165331, 30.016674, 16.620077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905504, 30.501637, 16.764406>,  <31.820024, 29.772236, 16.660408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905504, 30.501637, 16.764406> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.531990, 30.409920, 16.874296>,  <31.307882, 30.354891, 16.940229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.531990, 30.409920, 16.874296>,  <31.905504, 30.501637, 16.764406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531990, 30.409920, 16.874296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096797, 0.577260, 0.810803,
		-0.344497, 0.783707, -0.516841,
		-0.933784, -0.229291, 0.274725,
		31.251856, 30.341133, 16.956713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607103, 31.148016, 16.763891>,  <31.905504, 30.501637, 16.764406>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607103, 31.148016, 16.763891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.433823, 30.876440, 17.000999>,  <31.329855, 30.713495, 17.143265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.433823, 30.876440, 17.000999>,  <31.607103, 31.148016, 16.763891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433823, 30.876440, 17.000999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219233, 0.558559, 0.799968,
		-0.874228, 0.476501, -0.093122,
		-0.433200, -0.678939, 0.592773,
		31.303864, 30.672758, 17.178831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.222490, 31.561302, 17.293964>,  <31.607103, 31.148016, 16.763891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.222490, 31.561302, 17.293964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.232113, 31.193527, 17.450964>,  <31.237886, 30.972862, 17.545164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.232113, 31.193527, 17.450964>,  <31.222490, 31.561302, 17.293964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232113, 31.193527, 17.450964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352640, 0.375180, 0.857254,
		-0.935450, 0.117789, 0.333256,
		0.024056, -0.919438, 0.392499,
		31.239330, 30.917696, 17.568714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746300, 31.627628, 17.911045>,  <31.222490, 31.561302, 17.293964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746300, 31.627628, 17.911045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.987213, 31.314413, 17.973145>,  <31.131762, 31.126484, 18.010405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.987213, 31.314413, 17.973145>,  <30.746300, 31.627628, 17.911045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987213, 31.314413, 17.973145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269145, 0.382278, 0.883982,
		-0.751541, -0.490626, 0.440991,
		0.602286, -0.783039, 0.155248,
		31.167898, 31.079502, 18.019718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646538, 31.379417, 18.653845>,  <30.746300, 31.627628, 17.911045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646538, 31.379417, 18.653845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.993355, 31.211916, 18.545856>,  <31.201445, 31.111416, 18.481064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.993355, 31.211916, 18.545856>,  <30.646538, 31.379417, 18.653845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993355, 31.211916, 18.545856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361077, 0.154752, 0.919606,
		-0.343311, -0.894817, 0.285379,
		0.867042, -0.418754, -0.269969,
		31.253468, 31.086290, 18.464865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750124, 30.853960, 19.207996>,  <30.646538, 31.379417, 18.653845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750124, 30.853960, 19.207996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.085032, 30.959637, 19.016504>,  <31.285976, 31.023043, 18.901609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.085032, 30.959637, 19.016504>,  <30.750124, 30.853960, 19.207996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085032, 30.959637, 19.016504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454413, 0.150765, 0.877940,
		0.304122, -0.952613, 0.006178,
		0.837269, 0.264193, -0.478730,
		31.336212, 31.038895, 18.872885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392672, 30.420616, 19.479824>,  <30.750124, 30.853960, 19.207996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392672, 30.420616, 19.479824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.554308, 30.744131, 19.308908>,  <31.651291, 30.938240, 19.206360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.554308, 30.744131, 19.308908>,  <31.392672, 30.420616, 19.479824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.554308, 30.744131, 19.308908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588272, 0.127927, 0.798480,
		0.700461, -0.574021, -0.424092,
		0.404092, 0.808786, -0.427289,
		31.675535, 30.986767, 19.180721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173874, 30.344337, 19.557467>,  <31.392672, 30.420616, 19.479824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173874, 30.344337, 19.557467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.080917, 30.729099, 19.499872>,  <32.025143, 30.959957, 19.465315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.080917, 30.729099, 19.499872>,  <32.173874, 30.344337, 19.557467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080917, 30.729099, 19.499872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497323, 0.244741, 0.832329,
		0.835861, 0.121818, -0.535254,
		-0.232391, 0.961905, -0.143987,
		32.011200, 31.017672, 19.456676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796780, 30.676338, 19.720463>,  <32.173874, 30.344337, 19.557467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796780, 30.676338, 19.720463> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.519753, 30.964832, 19.715340>,  <32.353535, 31.137930, 19.712265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.519753, 30.964832, 19.715340>,  <32.796780, 30.676338, 19.720463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519753, 30.964832, 19.715340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134301, 0.146367, 0.980071,
		0.708738, 0.677048, -0.198233,
		-0.692570, 0.721237, -0.012807,
		32.311981, 31.181204, 19.711498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072605, 31.140530, 20.135448>,  <32.796780, 30.676338, 19.720463>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072605, 31.140530, 20.135448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.688923, 31.253271, 20.126625>,  <32.458714, 31.320917, 20.121332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.688923, 31.253271, 20.126625>,  <33.072605, 31.140530, 20.135448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688923, 31.253271, 20.126625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103123, 0.421453, 0.900968,
		0.263238, 0.861937, -0.433325,
		-0.959204, 0.281855, -0.022057,
		32.401161, 31.337828, 20.120008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173428, 31.764612, 20.319847>,  <33.072605, 31.140530, 20.135448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173428, 31.764612, 20.319847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.790306, 31.681835, 20.399630>,  <32.560432, 31.632170, 20.447498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.790306, 31.681835, 20.399630>,  <33.173428, 31.764612, 20.319847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790306, 31.681835, 20.399630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119162, 0.345589, 0.930789,
		-0.261547, 0.915283, -0.306348,
		-0.957807, -0.206940, 0.199455,
		32.502964, 31.619753, 20.459467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<34.043636, 37.891811, 21.989241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.747456, 37.657425, 22.120920>,  <33.569748, 37.516792, 22.199928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.747456, 37.657425, 22.120920>,  <34.043636, 37.891811, 21.989241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747456, 37.657425, 22.120920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115148, 0.371962, 0.921078,
		-0.662170, 0.719922, -0.207948,
		-0.740454, -0.585966, 0.329200,
		33.525318, 37.481636, 22.219681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695545, 38.270012, 22.451126>,  <34.043636, 37.891811, 21.989241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695545, 38.270012, 22.451126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.553356, 37.906876, 22.540089>,  <33.468040, 37.688995, 22.593466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.553356, 37.906876, 22.540089>,  <33.695545, 38.270012, 22.451126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553356, 37.906876, 22.540089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024794, 0.228703, 0.973180,
		-0.934357, 0.351455, -0.058789,
		-0.355475, -0.907840, 0.222405,
		33.446712, 37.634525, 22.606810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087109, 38.320724, 22.813913>,  <33.695545, 38.270012, 22.451126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087109, 38.320724, 22.813913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.252064, 37.971386, 22.917603>,  <33.351036, 37.761784, 22.979816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.252064, 37.971386, 22.917603>,  <33.087109, 38.320724, 22.813913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252064, 37.971386, 22.917603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029837, 0.271444, 0.961991,
		-0.910518, -0.404451, 0.085883,
		0.412391, -0.873348, 0.259222,
		33.375782, 37.709381, 22.995369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758144, 38.095432, 23.427870>,  <33.087109, 38.320724, 22.813913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758144, 38.095432, 23.427870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.088848, 37.871159, 23.409559>,  <33.287270, 37.736595, 23.398573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.088848, 37.871159, 23.409559>,  <32.758144, 38.095432, 23.427870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088848, 37.871159, 23.409559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074667, 0.028717, 0.996795,
		-0.557572, -0.827532, 0.065607,
		0.826764, -0.560684, -0.045778,
		33.336876, 37.702953, 23.395826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735825, 37.743404, 23.969797>,  <32.758144, 38.095432, 23.427870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735825, 37.743404, 23.969797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.118652, 37.670654, 23.879511>,  <33.348347, 37.627007, 23.825338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.118652, 37.670654, 23.879511>,  <32.735825, 37.743404, 23.969797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118652, 37.670654, 23.879511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252620, 0.141446, 0.957171,
		-0.142158, -0.973095, 0.181318,
		0.957065, -0.181874, -0.225716,
		33.405773, 37.616093, 23.811796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923817, 37.164398, 24.408079>,  <32.735825, 37.743404, 23.969797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923817, 37.164398, 24.408079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.250454, 37.354420, 24.276936>,  <33.446438, 37.468433, 24.198250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.250454, 37.354420, 24.276936>,  <32.923817, 37.164398, 24.408079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250454, 37.354420, 24.276936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339244, 0.064549, 0.938481,
		0.466996, -0.877583, -0.108451,
		0.816595, 0.475058, -0.327859,
		33.495434, 37.496937, 24.178577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.508152, 36.892551, 24.689142>,  <32.923817, 37.164398, 24.408079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.508152, 36.892551, 24.689142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.661022, 37.253330, 24.608709>,  <33.752743, 37.469799, 24.560450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.661022, 37.253330, 24.608709>,  <33.508152, 36.892551, 24.689142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661022, 37.253330, 24.608709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322713, 0.073634, 0.943628,
		0.865909, -0.425523, -0.262929,
		0.382175, 0.901947, -0.201082,
		33.775677, 37.523914, 24.548384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138813, 36.915012, 24.971453>,  <33.508152, 36.892551, 24.689142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138813, 36.915012, 24.971453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.082619, 37.306606, 24.912334>,  <34.048901, 37.541565, 24.876863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.082619, 37.306606, 24.912334>,  <34.138813, 36.915012, 24.971453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082619, 37.306606, 24.912334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310769, 0.185335, 0.932241,
		0.940045, 0.085039, -0.330277,
		-0.140489, 0.978989, -0.147796,
		34.040474, 37.600304, 24.867996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674683, 37.244560, 25.364557>,  <34.138813, 36.915012, 24.971453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674683, 37.244560, 25.364557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.390278, 37.520550, 25.310293>,  <34.219635, 37.686142, 25.277735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.390278, 37.520550, 25.310293>,  <34.674683, 37.244560, 25.364557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390278, 37.520550, 25.310293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141337, 0.329215, 0.933617,
		0.688831, 0.644637, -0.331594,
		-0.711010, 0.689971, -0.135662,
		34.176975, 37.727543, 25.269594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995190, 37.804577, 25.646387>,  <34.674683, 37.244560, 25.364557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995190, 37.804577, 25.646387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.605003, 37.892471, 25.641075>,  <34.370892, 37.945206, 25.637888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.605003, 37.892471, 25.641075>,  <34.995190, 37.804577, 25.646387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605003, 37.892471, 25.641075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055367, 0.303284, 0.951290,
		0.213057, 0.927220, -0.308010,
		-0.975470, 0.219733, -0.013279,
		34.312363, 37.958393, 25.637091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863632, 38.505894, 25.927103>,  <34.995190, 37.804577, 25.646387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863632, 38.505894, 25.927103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.511192, 38.320240, 25.963415>,  <34.299728, 38.208847, 25.985203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.511192, 38.320240, 25.963415>,  <34.863632, 38.505894, 25.927103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511192, 38.320240, 25.963415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179740, 0.506195, 0.843481,
		-0.437441, 0.726875, -0.529432,
		-0.881101, -0.464133, 0.090782,
		34.246861, 38.181000, 25.990650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539379, 38.965065, 26.338526>,  <34.863632, 38.505894, 25.927103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539379, 38.965065, 26.338526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.324352, 38.629242, 26.369905>,  <34.195335, 38.427746, 26.388733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.324352, 38.629242, 26.369905>,  <34.539379, 38.965065, 26.338526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324352, 38.629242, 26.369905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028044, 0.075184, 0.996775,
		-0.842752, 0.538038, -0.016872,
		-0.537571, -0.839561, 0.078450,
		34.163082, 38.377373, 26.393440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893192, 38.895683, 26.863655>,  <34.539379, 38.965065, 26.338526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893192, 38.895683, 26.863655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.017262, 38.519077, 26.810976>,  <34.091702, 38.293114, 26.779369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.017262, 38.519077, 26.810976>,  <33.893192, 38.895683, 26.863655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017262, 38.519077, 26.810976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126038, -0.178030, 0.975920,
		-0.942290, -0.286101, -0.173886,
		0.310168, -0.941516, -0.131696,
		34.110313, 38.236622, 26.771467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396091, 38.270527, 27.125586>,  <33.893192, 38.895683, 26.863655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396091, 38.270527, 27.125586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.783142, 38.171608, 27.145758>,  <34.015373, 38.112259, 27.157862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.783142, 38.171608, 27.145758>,  <33.396091, 38.270527, 27.125586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783142, 38.171608, 27.145758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097014, -0.179982, 0.978874,
		-0.232999, -0.952076, -0.198147,
		0.967626, -0.247300, 0.050429,
		34.073429, 38.097420, 27.160887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889698, 38.708477, 26.781223>,  <33.396091, 38.270527, 27.125586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889698, 38.708477, 26.781223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.503002, 38.747448, 26.875811>,  <32.270985, 38.770832, 26.932562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.503002, 38.747448, 26.875811>,  <32.889698, 38.708477, 26.781223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503002, 38.747448, 26.875811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255641, -0.395301, -0.882261,
		0.007518, -0.913370, 0.407061,
		-0.966742, 0.097429, 0.236466,
		32.212978, 38.776676, 26.946751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576462, 38.103226, 26.552765>,  <32.889698, 38.708477, 26.781223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576462, 38.103226, 26.552765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.279640, 38.370190, 26.577827>,  <32.101547, 38.530369, 26.592865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.279640, 38.370190, 26.577827>,  <32.576462, 38.103226, 26.552765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279640, 38.370190, 26.577827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357774, -0.315268, -0.878979,
		-0.566885, -0.674664, 0.472727,
		-0.742050, 0.667409, 0.062656,
		32.057026, 38.570412, 26.596624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010345, 37.622971, 26.397810>,  <32.576462, 38.103226, 26.552765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010345, 37.622971, 26.397810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.897093, 38.002186, 26.339775>,  <31.829140, 38.229717, 26.304955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.897093, 38.002186, 26.339775>,  <32.010345, 37.622971, 26.397810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897093, 38.002186, 26.339775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379965, -0.249779, -0.890638,
		-0.880602, -0.197044, 0.430944,
		-0.283135, 0.948042, -0.145086,
		31.812153, 38.286598, 26.296249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303493, 37.573078, 26.168556>,  <32.010345, 37.622971, 26.397810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303493, 37.573078, 26.168556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.434477, 37.933643, 26.055258>,  <31.513067, 38.149982, 25.987278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.434477, 37.933643, 26.055258>,  <31.303493, 37.573078, 26.168556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434477, 37.933643, 26.055258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426642, -0.126417, -0.895542,
		-0.843059, 0.414098, 0.343183,
		0.327458, 0.901411, -0.283248,
		31.532715, 38.204067, 25.970284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709496, 38.035820, 25.902334>,  <31.303493, 37.573078, 26.168556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709496, 38.035820, 25.902334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.047762, 38.165577, 25.732807>,  <31.250721, 38.243431, 25.631092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.047762, 38.165577, 25.732807>,  <30.709496, 38.035820, 25.902334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047762, 38.165577, 25.732807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356515, -0.247596, -0.900885,
		-0.397172, 0.912945, -0.093735,
		0.845666, 0.324388, -0.423817,
		31.301462, 38.262894, 25.605661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455326, 38.516239, 25.414223>,  <30.709496, 38.035820, 25.902334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455326, 38.516239, 25.414223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.825075, 38.428955, 25.289055>,  <31.046925, 38.376587, 25.213953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.825075, 38.428955, 25.289055>,  <30.455326, 38.516239, 25.414223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825075, 38.428955, 25.289055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331644, -0.054258, -0.941843,
		0.188538, 0.974393, -0.122521,
		0.924373, -0.218207, -0.312922,
		31.102386, 38.363495, 25.195179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457966, 38.879829, 24.787193>,  <30.455326, 38.516239, 25.414223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457966, 38.879829, 24.787193> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.763460, 38.622349, 24.767799>,  <30.946756, 38.467861, 24.756163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.763460, 38.622349, 24.767799>,  <30.457966, 38.879829, 24.787193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763460, 38.622349, 24.767799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230090, -0.201281, -0.952126,
		0.603128, 0.738330, -0.301836,
		0.763738, -0.643703, -0.048484,
		30.992582, 38.429237, 24.753254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.925701, 39.008942, 24.213099>,  <30.457966, 38.879829, 24.787193>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.925701, 39.008942, 24.213099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.958872, 38.617535, 24.288599>,  <30.978775, 38.382690, 24.333899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.958872, 38.617535, 24.288599>,  <30.925701, 39.008942, 24.213099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958872, 38.617535, 24.288599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111587, -0.197329, -0.973966,
		0.990288, 0.059707, -0.125554,
		0.082928, -0.978517, 0.188750,
		30.983749, 38.323978, 24.345224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155970, 38.751934, 23.560518>,  <30.925701, 39.008942, 24.213099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155970, 38.751934, 23.560518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.062347, 38.410320, 23.746355>,  <31.006174, 38.205353, 23.857857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.062347, 38.410320, 23.746355>,  <31.155970, 38.751934, 23.560518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.062347, 38.410320, 23.746355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179800, -0.431601, -0.883964,
		0.955453, -0.290430, -0.052537,
		-0.234055, -0.854033, 0.464593,
		30.992130, 38.154110, 23.885733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360264, 38.210995, 23.133057>,  <31.155970, 38.751934, 23.560518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360264, 38.210995, 23.133057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.128668, 37.999149, 23.381018>,  <30.989710, 37.872044, 23.529795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.128668, 37.999149, 23.381018>,  <31.360264, 38.210995, 23.133057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128668, 37.999149, 23.381018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181032, -0.657825, -0.731091,
		0.794981, -0.535518, 0.284999,
		-0.578992, -0.529609, 0.619905,
		30.954969, 37.840267, 23.566990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372969, 37.503811, 23.020132>,  <31.360264, 38.210995, 23.133057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372969, 37.503811, 23.020132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.024132, 37.538239, 23.212816>,  <30.814829, 37.558895, 23.328426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.024132, 37.538239, 23.212816>,  <31.372969, 37.503811, 23.020132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024132, 37.538239, 23.212816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436466, -0.581908, -0.686207,
		0.221250, -0.808687, 0.545045,
		-0.872093, 0.086070, 0.481711,
		30.762505, 37.564060, 23.357330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151539, 36.743156, 23.105734>,  <31.372969, 37.503811, 23.020132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151539, 36.743156, 23.105734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.846476, 37.001286, 23.123203>,  <30.663437, 37.156162, 23.133686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.846476, 37.001286, 23.123203>,  <31.151539, 36.743156, 23.105734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846476, 37.001286, 23.123203> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465855, -0.501202, -0.729230,
		-0.448698, -0.576502, 0.682873,
		-0.762660, 0.645324, 0.043678,
		30.617678, 37.194885, 23.136305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494774, 36.331814, 23.173307>,  <31.151539, 36.743156, 23.105734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494774, 36.331814, 23.173307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.377771, 36.687397, 23.032341>,  <30.307570, 36.900745, 22.947762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.377771, 36.687397, 23.032341>,  <30.494774, 36.331814, 23.173307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377771, 36.687397, 23.032341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517640, -0.457065, -0.723284,
		-0.804045, -0.029141, 0.593854,
		-0.292508, 0.888955, -0.352416,
		30.290018, 36.954082, 22.926617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.947983, 36.184448, 22.909241>,  <30.494774, 36.331814, 23.173307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.947983, 36.184448, 22.909241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.025932, 36.535400, 22.733866>,  <30.072702, 36.745972, 22.628641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.025932, 36.535400, 22.733866>,  <29.947983, 36.184448, 22.909241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025932, 36.535400, 22.733866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358152, -0.352488, -0.864569,
		-0.913100, 0.325509, 0.245545,
		0.194873, 0.877380, -0.438438,
		30.084394, 36.798615, 22.602335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244621, 36.237633, 23.228325>,  <29.947983, 36.184448, 22.909241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244621, 36.237633, 23.228325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.858675, 36.150818, 23.287558>,  <28.627108, 36.098728, 23.323097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.858675, 36.150818, 23.287558>,  <29.244621, 36.237633, 23.228325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858675, 36.150818, 23.287558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137806, 0.061823, 0.988528,
		-0.223704, 0.974203, -0.029742,
		-0.964866, -0.217040, 0.148081,
		28.569216, 36.085705, 23.331982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976097, 36.846931, 23.646320>,  <29.244621, 36.237633, 23.228325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976097, 36.846931, 23.646320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.783615, 36.501995, 23.709326>,  <28.668125, 36.295033, 23.747129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.783615, 36.501995, 23.709326>,  <28.976097, 36.846931, 23.646320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.783615, 36.501995, 23.709326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223883, 0.052826, 0.973183,
		-0.847536, 0.503565, 0.167644,
		-0.481205, -0.862341, 0.157511,
		28.639254, 36.243294, 23.756578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.616859, 36.966171, 24.248051>,  <28.976097, 36.846931, 23.646320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.616859, 36.966171, 24.248051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.622049, 36.566780, 24.226604>,  <28.625164, 36.327145, 24.213737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.622049, 36.566780, 24.226604>,  <28.616859, 36.966171, 24.248051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622049, 36.566780, 24.226604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352811, -0.045597, 0.934583,
		-0.935604, -0.031043, 0.351682,
		0.012977, -0.998477, -0.053613,
		28.625942, 36.267239, 24.210520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285423, 36.753723, 24.785940>,  <28.616859, 36.966171, 24.248051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285423, 36.753723, 24.785940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.503319, 36.433113, 24.687294>,  <28.634056, 36.240749, 24.628105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.503319, 36.433113, 24.687294>,  <28.285423, 36.753723, 24.785940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503319, 36.433113, 24.687294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305102, -0.084502, 0.948563,
		-0.781134, -0.591964, 0.198515,
		0.544741, -0.801522, -0.246617,
		28.666740, 36.192657, 24.613310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125233, 36.396904, 25.255657>,  <28.285423, 36.753723, 24.785940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125233, 36.396904, 25.255657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.454641, 36.215759, 25.118996>,  <28.652287, 36.107071, 25.036999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.454641, 36.215759, 25.118996>,  <28.125233, 36.396904, 25.255657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.454641, 36.215759, 25.118996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277495, -0.203704, 0.938883,
		-0.494782, -0.867997, -0.042087,
		0.823521, -0.452864, -0.341654,
		28.701698, 36.079899, 25.016500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115246, 35.760384, 25.645350>,  <28.125233, 36.396904, 25.255657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115246, 35.760384, 25.645350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.483347, 35.797688, 25.493332>,  <28.704208, 35.820072, 25.402121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.483347, 35.797688, 25.493332>,  <28.115246, 35.760384, 25.645350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483347, 35.797688, 25.493332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391097, -0.252100, 0.885149,
		-0.013257, -0.963197, -0.268471,
		0.920254, 0.093264, -0.380045,
		28.759422, 35.825668, 25.379318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.456133, 35.238575, 25.891264>,  <28.115246, 35.760384, 25.645350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.456133, 35.238575, 25.891264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.741081, 35.506424, 25.807228>,  <28.912050, 35.667133, 25.756807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.741081, 35.506424, 25.807228>,  <28.456133, 35.238575, 25.891264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741081, 35.506424, 25.807228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463420, -0.224015, 0.857356,
		0.527040, -0.708114, -0.469897,
		0.712369, 0.669621, -0.210089,
		28.954792, 35.707310, 25.744202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089342, 34.924477, 26.183802>,  <28.456133, 35.238575, 25.891264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089342, 34.924477, 26.183802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.187147, 35.308228, 26.127508>,  <29.245831, 35.538479, 26.093731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.187147, 35.308228, 26.127508>,  <29.089342, 34.924477, 26.183802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.187147, 35.308228, 26.127508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299056, 0.063452, 0.952123,
		0.922377, -0.274893, -0.271394,
		0.244511, 0.959379, -0.140735,
		29.260500, 35.596043, 26.085287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735971, 34.973122, 26.403088>,  <29.089342, 34.924477, 26.183802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735971, 34.973122, 26.403088> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.606936, 35.351494, 26.416685>,  <29.529514, 35.578518, 26.424845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.606936, 35.351494, 26.416685>,  <29.735971, 34.973122, 26.403088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606936, 35.351494, 26.416685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375915, 0.095071, 0.921764,
		0.868691, 0.310132, -0.386257,
		-0.322590, 0.945928, 0.033996,
		29.510159, 35.635273, 26.426884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253988, 35.349670, 26.644060>,  <29.735971, 34.973122, 26.403088>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253988, 35.349670, 26.644060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.952950, 35.588501, 26.755121>,  <29.772326, 35.731800, 26.821758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.952950, 35.588501, 26.755121>,  <30.253988, 35.349670, 26.644060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952950, 35.588501, 26.755121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395389, 0.072581, 0.915642,
		0.526559, 0.798892, -0.290703,
		-0.752598, 0.597080, 0.277655,
		29.727171, 35.767624, 26.838417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554996, 35.913780, 27.075279>,  <30.253988, 35.349670, 26.644060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554996, 35.913780, 27.075279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.165152, 35.953007, 27.155792>,  <29.931244, 35.976543, 27.204100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.165152, 35.953007, 27.155792>,  <30.554996, 35.913780, 27.075279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165152, 35.953007, 27.155792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210586, 0.096111, 0.972839,
		0.076056, 0.990528, -0.114322,
		-0.974612, 0.098065, 0.201282,
		29.872768, 35.982426, 27.216177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.458462, 36.417187, 27.584206>,  <30.554996, 35.913780, 27.075279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.458462, 36.417187, 27.584206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.127756, 36.194340, 27.615381>,  <29.929333, 36.060631, 27.634087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.127756, 36.194340, 27.615381>,  <30.458462, 36.417187, 27.584206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.127756, 36.194340, 27.615381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042973, 0.075598, 0.996212,
		-0.560903, 0.826983, -0.038561,
		-0.826765, -0.557122, 0.077941,
		29.879726, 36.027203, 27.638763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<27.339371, 35.895256, 19.753078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206278, 35.541096, 19.882912>,  <27.126423, 35.328598, 19.960812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206278, 35.541096, 19.882912>,  <27.339371, 35.895256, 19.753078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206278, 35.541096, 19.882912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210970, 0.265579, 0.940723,
		-0.919120, 0.381486, 0.098426,
		-0.332733, -0.885402, 0.324581,
		27.106459, 35.275475, 19.980286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.739365, 35.946407, 20.208565>,  <27.339371, 35.895256, 19.753078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.739365, 35.946407, 20.208565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894964, 35.590218, 20.302999>,  <26.988323, 35.376503, 20.359659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894964, 35.590218, 20.302999>,  <26.739365, 35.946407, 20.208565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.894964, 35.590218, 20.302999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097664, 0.214964, 0.971726,
		-0.916047, -0.401057, -0.003347,
		0.388999, -0.890474, 0.236086,
		27.011663, 35.323074, 20.373825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.482784, 35.825794, 20.926197>,  <26.739365, 35.946407, 20.208565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.482784, 35.825794, 20.926197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797558, 35.581627, 20.890154>,  <26.986422, 35.435127, 20.868528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.797558, 35.581627, 20.890154>,  <26.482784, 35.825794, 20.926197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.797558, 35.581627, 20.890154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275547, 0.216991, 0.936477,
		-0.552093, -0.761775, 0.338958,
		0.786935, -0.610421, -0.090106,
		27.033638, 35.398502, 20.863123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.598560, 35.584751, 21.552773>,  <26.482784, 35.825794, 20.926197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.598560, 35.584751, 21.552773> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946589, 35.533745, 21.362312>,  <27.155405, 35.503139, 21.248037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946589, 35.533745, 21.362312>,  <26.598560, 35.584751, 21.552773>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.946589, 35.533745, 21.362312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492880, 0.211478, 0.844006,
		-0.006932, -0.969028, 0.246853,
		0.870070, -0.127520, -0.476148,
		27.207609, 35.495487, 21.219467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874300, 35.123852, 21.986300>,  <26.598560, 35.584751, 21.552773>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874300, 35.123852, 21.986300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160015, 35.319782, 21.786354>,  <27.331444, 35.437340, 21.666386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160015, 35.319782, 21.786354>,  <26.874300, 35.123852, 21.986300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160015, 35.319782, 21.786354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458729, 0.211728, 0.862982,
		0.528545, -0.845720, -0.073462,
		0.714288, 0.489825, -0.499865,
		27.374302, 35.466728, 21.636395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454185, 34.823841, 22.065701>,  <26.874300, 35.123852, 21.986300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454185, 34.823841, 22.065701> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562607, 35.197449, 21.972633>,  <27.627659, 35.421616, 21.916794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562607, 35.197449, 21.972633>,  <27.454185, 34.823841, 22.065701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562607, 35.197449, 21.972633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513898, 0.063965, 0.855463,
		0.813904, -0.351442, -0.462654,
		0.271052, 0.934022, -0.232666,
		27.643923, 35.477654, 21.902834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160658, 34.798710, 22.337250>,  <27.454185, 34.823841, 22.065701>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160658, 34.798710, 22.337250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113529, 35.191463, 22.277889>,  <28.085253, 35.427116, 22.242273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.113529, 35.191463, 22.277889>,  <28.160658, 34.798710, 22.337250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.113529, 35.191463, 22.277889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409912, 0.184206, 0.893331,
		0.904483, 0.044421, -0.424189,
		-0.117821, 0.981883, -0.148403,
		28.078182, 35.486027, 22.233368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822546, 35.167885, 22.369785>,  <28.160658, 34.798710, 22.337250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822546, 35.167885, 22.369785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537817, 35.438824, 22.444096>,  <28.366980, 35.601387, 22.488682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.537817, 35.438824, 22.444096>,  <28.822546, 35.167885, 22.369785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.537817, 35.438824, 22.444096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443960, 0.228958, 0.866301,
		0.544248, 0.699131, -0.463691,
		-0.711824, 0.677343, 0.185776,
		28.324270, 35.642025, 22.499828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.135098, 35.609325, 22.738676>,  <28.822546, 35.167885, 22.369785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.135098, 35.609325, 22.738676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777996, 35.765377, 22.828825>,  <28.563736, 35.859009, 22.882914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777996, 35.765377, 22.828825>,  <29.135098, 35.609325, 22.738676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777996, 35.765377, 22.828825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330772, 0.227892, 0.915781,
		0.305912, 0.892112, -0.332495,
		-0.892753, 0.390129, 0.225371,
		28.510170, 35.882416, 22.896437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269554, 36.327724, 22.465899>,  <29.135098, 35.609325, 22.738676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269554, 36.327724, 22.465899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567625, 36.567036, 22.348066>,  <29.746468, 36.710621, 22.277367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.567625, 36.567036, 22.348066>,  <29.269554, 36.327724, 22.465899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.567625, 36.567036, 22.348066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151934, -0.277805, -0.948547,
		-0.649328, 0.751592, -0.116115,
		0.745177, 0.598276, -0.294579,
		29.791178, 36.746517, 22.259693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055573, 36.659706, 21.861778>,  <29.269554, 36.327724, 22.465899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055573, 36.659706, 21.861778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454779, 36.646702, 21.840193>,  <29.694302, 36.638901, 21.827242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454779, 36.646702, 21.840193>,  <29.055573, 36.659706, 21.861778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454779, 36.646702, 21.840193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058221, -0.148756, -0.987158,
		0.024064, 0.988339, -0.150353,
		0.998014, -0.032509, -0.053963,
		29.754183, 36.636948, 21.824003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232424, 37.147106, 21.297258>,  <29.055573, 36.659706, 21.861778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232424, 37.147106, 21.297258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519350, 36.870625, 21.332352>,  <29.691505, 36.704735, 21.353409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519350, 36.870625, 21.332352>,  <29.232424, 37.147106, 21.297258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519350, 36.870625, 21.332352> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239550, -0.362902, -0.900510,
		0.654275, 0.624932, -0.425893,
		0.717314, -0.691204, 0.087735,
		29.734545, 36.663265, 21.358673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.526598, 37.179371, 20.691353>,  <29.232424, 37.147106, 21.297258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.526598, 37.179371, 20.691353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699270, 36.846416, 20.830368>,  <29.802874, 36.646645, 20.913776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699270, 36.846416, 20.830368>,  <29.526598, 37.179371, 20.691353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699270, 36.846416, 20.830368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085276, -0.421219, -0.902941,
		0.897987, 0.360146, -0.252815,
		0.431681, -0.832388, 0.347537,
		29.828775, 36.596699, 20.934629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050795, 37.054062, 20.281294>,  <29.526598, 37.179371, 20.691353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050795, 37.054062, 20.281294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978893, 36.704456, 20.461863>,  <29.935753, 36.494690, 20.570204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978893, 36.704456, 20.461863>,  <30.050795, 37.054062, 20.281294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978893, 36.704456, 20.461863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091988, -0.441950, -0.892311,
		0.979402, -0.201920, -0.000958,
		-0.179752, -0.874019, 0.451421,
		29.924967, 36.442249, 20.597288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541815, 36.575893, 19.945316>,  <30.050795, 37.054062, 20.281294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541815, 36.575893, 19.945316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245476, 36.353413, 20.095930>,  <30.067673, 36.219925, 20.186298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245476, 36.353413, 20.095930>,  <30.541815, 36.575893, 19.945316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245476, 36.353413, 20.095930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033095, -0.529684, -0.847549,
		0.670857, -0.640366, 0.374008,
		-0.740848, -0.556207, 0.376535,
		30.023222, 36.186550, 20.208891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.705097, 35.977722, 19.765907>,  <30.541815, 36.575893, 19.945316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.705097, 35.977722, 19.765907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315474, 35.957706, 19.854185>,  <30.081699, 35.945698, 19.907152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315474, 35.957706, 19.854185>,  <30.705097, 35.977722, 19.765907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315474, 35.957706, 19.854185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188126, -0.362981, -0.912608,
		0.125772, -0.930452, 0.344152,
		-0.974058, -0.050036, 0.220695,
		30.023256, 35.942696, 19.920393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543285, 35.267277, 19.642599>,  <30.705097, 35.977722, 19.765907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543285, 35.267277, 19.642599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203512, 35.477119, 19.619783>,  <29.999647, 35.603024, 19.606094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203512, 35.477119, 19.619783>,  <30.543285, 35.267277, 19.642599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203512, 35.477119, 19.619783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169716, -0.373938, -0.911793,
		-0.499659, -0.764828, 0.406669,
		-0.849434, 0.524604, -0.057038,
		29.948683, 35.634499, 19.602673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.124517, 34.843044, 19.294472>,  <30.543285, 35.267277, 19.642599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.124517, 34.843044, 19.294472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977491, 35.213375, 19.259281>,  <29.889277, 35.435574, 19.238167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977491, 35.213375, 19.259281>,  <30.124517, 34.843044, 19.294472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977491, 35.213375, 19.259281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223247, -0.179671, -0.958060,
		-0.902805, -0.332510, 0.272729,
		-0.367566, 0.925827, -0.087976,
		29.867222, 35.491123, 19.232889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350578, 34.817017, 19.003389>,  <30.124517, 34.843044, 19.294472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350578, 34.817017, 19.003389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470352, 35.195538, 18.954657>,  <29.542215, 35.422649, 18.925417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470352, 35.195538, 18.954657>,  <29.350578, 34.817017, 19.003389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470352, 35.195538, 18.954657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313717, -0.022943, -0.949239,
		-0.901067, 0.322454, 0.290003,
		0.299433, 0.946307, -0.121832,
		29.560183, 35.479431, 18.918106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855801, 35.268246, 18.744926>,  <29.350578, 34.817017, 19.003389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855801, 35.268246, 18.744926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201176, 35.443810, 18.645454>,  <29.408400, 35.549149, 18.585772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201176, 35.443810, 18.645454>,  <28.855801, 35.268246, 18.744926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201176, 35.443810, 18.645454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194624, -0.164965, -0.966906,
		-0.465404, 0.883260, -0.057015,
		0.863436, 0.438905, -0.248679,
		29.460207, 35.575481, 18.570850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569862, 35.721367, 18.252464>,  <28.855801, 35.268246, 18.744926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569862, 35.721367, 18.252464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963633, 35.691711, 18.188700>,  <29.199894, 35.673916, 18.150440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963633, 35.691711, 18.188700>,  <28.569862, 35.721367, 18.252464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.963633, 35.691711, 18.188700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163100, -0.046627, -0.985507,
		0.065634, 0.996157, -0.057993,
		0.984424, -0.074141, -0.159413,
		29.258961, 35.669468, 18.140877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.632425, 36.131863, 17.633444>,  <28.569862, 35.721367, 18.252464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.632425, 36.131863, 17.633444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947109, 35.895653, 17.705404>,  <29.135920, 35.753925, 17.748581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947109, 35.895653, 17.705404>,  <28.632425, 36.131863, 17.633444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947109, 35.895653, 17.705404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093510, -0.174066, -0.980284,
		0.610202, 0.788020, -0.081718,
		0.786708, -0.590529, 0.179903,
		29.183123, 35.718494, 17.759375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950050, 36.088280, 17.030729>,  <28.632425, 36.131863, 17.633444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950050, 36.088280, 17.030729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185146, 35.823433, 17.216702>,  <29.326204, 35.664524, 17.328285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.185146, 35.823433, 17.216702>,  <28.950050, 36.088280, 17.030729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185146, 35.823433, 17.216702> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401735, -0.259967, -0.878081,
		0.702260, 0.702863, 0.113203,
		0.587741, -0.662119, 0.464929,
		29.361469, 35.624798, 17.356180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.452141, 29.185051, 20.364904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.324869, 29.557716, 20.294746>,  <29.248507, 29.781317, 20.252651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.324869, 29.557716, 20.294746>,  <29.452141, 29.185051, 20.364904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324869, 29.557716, 20.294746> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021902, 0.192184, 0.981115,
		0.947778, 0.308326, -0.081554,
		-0.318177, 0.931665, -0.175395,
		29.229416, 29.837215, 20.242128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.923883, 29.591181, 20.587147>,  <29.452141, 29.185051, 20.364904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.923883, 29.591181, 20.587147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.600121, 29.824879, 20.563423>,  <29.405863, 29.965097, 20.549189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.600121, 29.824879, 20.563423>,  <29.923883, 29.591181, 20.587147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600121, 29.824879, 20.563423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271128, 0.461371, 0.844764,
		0.520912, 0.667678, -0.531842,
		-0.809407, 0.584245, -0.059308,
		29.357298, 30.000153, 20.545631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133156, 30.047297, 20.945377>,  <29.923883, 29.591181, 20.587147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133156, 30.047297, 20.945377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.743612, 30.137941, 20.939121>,  <29.509886, 30.192327, 20.935368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.743612, 30.137941, 20.939121>,  <30.133156, 30.047297, 20.945377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743612, 30.137941, 20.939121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103612, 0.504429, 0.857214,
		0.202142, 0.833186, -0.514723,
		-0.973860, 0.226610, -0.015638,
		29.451454, 30.205925, 20.934429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964668, 30.833788, 21.004700>,  <30.133156, 30.047297, 20.945377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964668, 30.833788, 21.004700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.624292, 30.646685, 21.100285>,  <29.420067, 30.534422, 21.157637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.624292, 30.646685, 21.100285>,  <29.964668, 30.833788, 21.004700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624292, 30.646685, 21.100285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049007, 0.523658, 0.850518,
		-0.522972, 0.712029, -0.468525,
		-0.850940, -0.467758, 0.238964,
		29.369011, 30.506357, 21.171974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.442331, 31.338741, 21.213324>,  <29.964668, 30.833788, 21.004700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.442331, 31.338741, 21.213324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.368242, 30.991337, 21.397228>,  <29.323788, 30.782894, 21.507570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.368242, 30.991337, 21.397228>,  <29.442331, 31.338741, 21.213324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368242, 30.991337, 21.397228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001463, 0.467613, 0.883932,
		-0.982695, 0.164399, -0.085343,
		-0.185225, -0.868511, 0.459762,
		29.312675, 30.730783, 21.535156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905691, 31.650105, 21.630083>,  <29.442331, 31.338741, 21.213324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905691, 31.650105, 21.630083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.033815, 31.293625, 21.758562>,  <29.110689, 31.079737, 21.835649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.033815, 31.293625, 21.758562>,  <28.905691, 31.650105, 21.630083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.033815, 31.293625, 21.758562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229459, 0.401953, 0.886444,
		-0.919103, -0.210236, 0.333243,
		0.320310, -0.891199, 0.321195,
		29.129908, 31.026266, 21.854921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.624756, 31.485592, 22.269464>,  <28.905691, 31.650105, 21.630083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.624756, 31.485592, 22.269464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.929800, 31.227987, 22.293703>,  <29.112827, 31.073423, 22.308247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.929800, 31.227987, 22.293703>,  <28.624756, 31.485592, 22.269464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.929800, 31.227987, 22.293703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239863, 0.368539, 0.898134,
		-0.600741, -0.670392, 0.435527,
		0.762611, -0.644013, 0.060595,
		29.158583, 31.034784, 22.311882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539576, 31.184671, 22.945721>,  <28.624756, 31.485592, 22.269464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539576, 31.184671, 22.945721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.914930, 31.083447, 22.851585>,  <29.140144, 31.022711, 22.795103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.914930, 31.083447, 22.851585>,  <28.539576, 31.184671, 22.945721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914930, 31.083447, 22.851585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289253, 0.202525, 0.935584,
		-0.189101, -0.946014, 0.263246,
		0.938389, -0.253064, -0.235339,
		29.196447, 31.007526, 22.780983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782612, 30.838911, 23.519438>,  <28.539576, 31.184671, 22.945721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782612, 30.838911, 23.519438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.109119, 30.973961, 23.331942>,  <29.305023, 31.054991, 23.219444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.109119, 30.973961, 23.331942>,  <28.782612, 30.838911, 23.519438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109119, 30.973961, 23.331942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351820, 0.353029, 0.866945,
		0.458181, -0.872571, 0.169384,
		0.816268, 0.337625, -0.468739,
		29.354000, 31.075249, 23.191320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438593, 30.535349, 23.867691>,  <28.782612, 30.838911, 23.519438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438593, 30.535349, 23.867691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.569386, 30.873991, 23.699717>,  <29.647861, 31.077175, 23.598932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.569386, 30.873991, 23.699717>,  <29.438593, 30.535349, 23.867691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569386, 30.873991, 23.699717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189272, 0.376690, 0.906797,
		0.925883, -0.375987, -0.037068,
		0.326980, 0.846604, -0.419935,
		29.667480, 31.127972, 23.573736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083229, 30.690964, 24.238882>,  <29.438593, 30.535349, 23.867691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083229, 30.690964, 24.238882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.974297, 31.031038, 24.058651>,  <29.908937, 31.235083, 23.950512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.974297, 31.031038, 24.058651>,  <30.083229, 30.690964, 24.238882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974297, 31.031038, 24.058651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449187, 0.526451, 0.721860,
		0.850922, -0.005809, -0.525261,
		-0.272330, 0.850186, -0.450578,
		29.892597, 31.286095, 23.923477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760830, 31.106674, 24.085785>,  <30.083229, 30.690964, 24.238882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760830, 31.106674, 24.085785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.462538, 31.372490, 24.066708>,  <30.283562, 31.531979, 24.055262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.462538, 31.372490, 24.066708>,  <30.760830, 31.106674, 24.085785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462538, 31.372490, 24.066708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531058, 0.636116, 0.559762,
		0.402321, 0.392105, -0.827280,
		-0.745731, 0.664537, -0.047692,
		30.238819, 31.571852, 24.052401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131985, 31.709911, 23.928955>,  <30.760830, 31.106674, 24.085785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131985, 31.709911, 23.928955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.781504, 31.827713, 24.081551>,  <30.571215, 31.898394, 24.173109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.781504, 31.827713, 24.081551>,  <31.131985, 31.709911, 23.928955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.781504, 31.827713, 24.081551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478824, 0.621845, 0.619707,
		-0.054722, 0.725656, -0.685878,
		-0.876204, 0.294503, 0.381491,
		30.518642, 31.916063, 24.195997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145397, 32.501575, 24.157084>,  <31.131985, 31.709911, 23.928955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145397, 32.501575, 24.157084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.858515, 32.321423, 24.369789>,  <30.686386, 32.213333, 24.497412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.858515, 32.321423, 24.369789>,  <31.145397, 32.501575, 24.157084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858515, 32.321423, 24.369789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353020, 0.423108, 0.834480,
		-0.600827, 0.786218, -0.144462,
		-0.717206, -0.450380, 0.531765,
		30.643353, 32.186310, 24.529318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488533, 33.242424, 24.187269>,  <31.145397, 32.501575, 24.157084>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488533, 33.242424, 24.187269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.876469, 33.339008, 24.173929>,  <32.109230, 33.396957, 24.165926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.876469, 33.339008, 24.173929>,  <31.488533, 33.242424, 24.187269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876469, 33.339008, 24.173929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040458, -0.294377, -0.954833,
		-0.240371, 0.924683, -0.295267,
		0.969838, 0.241460, -0.033348,
		32.167419, 33.411446, 24.163925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588781, 33.834938, 23.644751>,  <31.488533, 33.242424, 24.187269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588781, 33.834938, 23.644751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.898613, 33.589024, 23.704168>,  <32.084511, 33.441475, 23.739819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.898613, 33.589024, 23.704168>,  <31.588781, 33.834938, 23.644751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898613, 33.589024, 23.704168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010581, -0.247421, -0.968850,
		0.632389, 0.748879, -0.198152,
		0.774579, -0.614787, 0.148543,
		32.130985, 33.404587, 23.748732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046146, 33.907482, 23.055975>,  <31.588781, 33.834938, 23.644751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046146, 33.907482, 23.055975> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.175663, 33.556210, 23.196800>,  <32.253372, 33.345444, 23.281296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.175663, 33.556210, 23.196800>,  <32.046146, 33.907482, 23.055975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175663, 33.556210, 23.196800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264540, -0.273236, -0.924857,
		0.908391, 0.392600, 0.143842,
		0.323796, -0.878184, 0.352064,
		32.272800, 33.292755, 23.302420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593353, 33.790535, 22.658739>,  <32.046146, 33.907482, 23.055975>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593353, 33.790535, 22.658739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.504944, 33.435551, 22.820513>,  <32.451897, 33.222561, 22.917576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.504944, 33.435551, 22.820513>,  <32.593353, 33.790535, 22.658739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504944, 33.435551, 22.820513> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247213, -0.452126, -0.857011,
		0.943417, -0.089438, 0.319321,
		-0.221023, -0.887459, 0.404433,
		32.438637, 33.169312, 22.941843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053146, 33.305347, 22.298868>,  <32.593353, 33.790535, 22.658739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053146, 33.305347, 22.298868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.795330, 33.067936, 22.491655>,  <32.640640, 32.925488, 22.607327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.795330, 33.067936, 22.491655>,  <33.053146, 33.305347, 22.298868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795330, 33.067936, 22.491655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103248, -0.692168, -0.714313,
		0.757567, -0.410641, 0.507411,
		-0.644540, -0.593529, 0.481966,
		32.601967, 32.889877, 22.636246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342518, 32.569889, 22.270704>,  <33.053146, 33.305347, 22.298868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342518, 32.569889, 22.270704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.947361, 32.528606, 22.317022>,  <32.710266, 32.503838, 22.344812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.947361, 32.528606, 22.317022>,  <33.342518, 32.569889, 22.270704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947361, 32.528606, 22.317022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028973, -0.610589, -0.791418,
		0.152386, -0.785194, 0.600208,
		-0.987896, -0.103211, 0.115794,
		32.650993, 32.497643, 22.351761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160156, 31.840452, 22.128098>,  <33.342518, 32.569889, 22.270704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160156, 31.840452, 22.128098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.827885, 32.059494, 22.087900>,  <32.628521, 32.190918, 22.063782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.827885, 32.059494, 22.087900>,  <33.160156, 31.840452, 22.128098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827885, 32.059494, 22.087900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193680, -0.453456, -0.869981,
		-0.521976, -0.703212, 0.482737,
		-0.830680, 0.547605, -0.100495,
		32.578682, 32.223774, 22.057753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772823, 31.349878, 21.854588>,  <33.160156, 31.840452, 22.128098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772823, 31.349878, 21.854588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.556557, 31.678617, 21.782763>,  <32.426796, 31.875862, 21.739668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.556557, 31.678617, 21.782763>,  <32.772823, 31.349878, 21.854588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556557, 31.678617, 21.782763> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135262, -0.295605, -0.945686,
		-0.830291, -0.487013, 0.270989,
		-0.540667, 0.821849, -0.179563,
		32.394356, 31.925173, 21.728893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200527, 31.099545, 21.527206>,  <32.772823, 31.349878, 21.854588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200527, 31.099545, 21.527206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.201107, 31.487274, 21.428896>,  <32.201454, 31.719912, 21.369909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.201107, 31.487274, 21.428896>,  <32.200527, 31.099545, 21.527206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201107, 31.487274, 21.428896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346122, -0.230097, -0.909536,
		-0.938189, 0.086386, 0.335171,
		0.001450, 0.969326, -0.245774,
		32.201542, 31.778072, 21.355164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471821, 31.313538, 21.295565>,  <32.200527, 31.099545, 21.527206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471821, 31.313538, 21.295565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.784592, 31.496918, 21.126608>,  <31.972254, 31.606945, 21.025234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.784592, 31.496918, 21.126608>,  <31.471821, 31.313538, 21.295565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784592, 31.496918, 21.126608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304652, -0.310119, -0.900563,
		-0.543852, 0.832858, -0.102823,
		0.781928, 0.458448, -0.422390,
		32.019169, 31.634453, 20.999891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195023, 31.487961, 20.684299>,  <31.471821, 31.313538, 21.295565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195023, 31.487961, 20.684299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.586279, 31.537966, 20.617826>,  <31.821032, 31.567968, 20.577944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.586279, 31.537966, 20.617826>,  <31.195023, 31.487961, 20.684299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586279, 31.537966, 20.617826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101688, -0.409532, -0.906611,
		-0.181396, 0.903690, -0.387867,
		0.978139, 0.125014, -0.166181,
		31.879721, 31.575470, 20.567972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.223503, 31.764774, 19.997900>,  <31.195023, 31.487961, 20.684299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.223503, 31.764774, 19.997900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.581394, 31.599697, 20.066189>,  <31.796129, 31.500650, 20.107162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.581394, 31.599697, 20.066189>,  <31.223503, 31.764774, 19.997900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581394, 31.599697, 20.066189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001409, -0.379649, -0.925129,
		0.446609, 0.827980, -0.339101,
		0.894728, -0.412693, 0.170722,
		31.849813, 31.475889, 20.117405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543135, 32.202477, 19.633308>,  <31.223503, 31.764774, 19.997900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543135, 32.202477, 19.633308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.795612, 31.892862, 19.653152>,  <31.947098, 31.707094, 19.665058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.795612, 31.892862, 19.653152>,  <31.543135, 32.202477, 19.633308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795612, 31.892862, 19.653152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021162, -0.081124, -0.996479,
		0.775337, 0.627921, -0.067585,
		0.631193, -0.774037, 0.049611,
		31.984970, 31.660650, 19.668036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114391, 32.301899, 19.154232>,  <31.543135, 32.202477, 19.633308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114391, 32.301899, 19.154232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.082153, 31.912182, 19.238380>,  <32.062809, 31.678350, 19.288870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.082153, 31.912182, 19.238380>,  <32.114391, 32.301899, 19.154232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082153, 31.912182, 19.238380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045055, -0.207281, -0.977243,
		0.995728, -0.088238, -0.027191,
		-0.080594, -0.974294, 0.210371,
		32.057976, 31.619894, 19.301493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670174, 32.756557, 18.722795>,  <32.114391, 32.301899, 19.154232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670174, 32.756557, 18.722795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.697548, 33.051540, 18.454027>,  <32.713970, 33.228531, 18.292767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.697548, 33.051540, 18.454027>,  <32.670174, 32.756557, 18.722795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697548, 33.051540, 18.454027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121905, 0.662271, 0.739281,
		0.990180, -0.132502, -0.044579,
		0.068433, 0.737455, -0.671920,
		32.718079, 33.272778, 18.252451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249844, 33.175385, 18.988138>,  <32.670174, 32.756557, 18.722795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249844, 33.175385, 18.988138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.029064, 33.418098, 18.759344>,  <32.896599, 33.563728, 18.622068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.029064, 33.418098, 18.759344>,  <33.249844, 33.175385, 18.988138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029064, 33.418098, 18.759344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161642, 0.750775, 0.640476,
		0.818065, 0.261050, -0.512468,
		-0.551944, 0.606787, -0.571986,
		32.863480, 33.600136, 18.587748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655334, 33.760860, 18.972281>,  <33.249844, 33.175385, 18.988138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655334, 33.760860, 18.972281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.305103, 33.905773, 18.844465>,  <33.094963, 33.992722, 18.767776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.305103, 33.905773, 18.844465>,  <33.655334, 33.760860, 18.972281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305103, 33.905773, 18.844465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192416, 0.868295, 0.457208,
		0.443095, 0.338839, -0.829973,
		-0.875582, 0.362286, -0.319539,
		33.042427, 34.014458, 18.748604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796494, 34.506248, 18.878948>,  <33.655334, 33.760860, 18.972281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796494, 34.506248, 18.878948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.399193, 34.465847, 18.901764>,  <33.160812, 34.441605, 18.915453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.399193, 34.465847, 18.901764>,  <33.796494, 34.506248, 18.878948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399193, 34.465847, 18.901764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052493, 0.829870, 0.555482,
		-0.103445, 0.548737, -0.829570,
		-0.993249, -0.101008, 0.057041,
		33.101219, 34.435543, 18.918877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533112, 35.191917, 18.778717>,  <33.796494, 34.506248, 18.878948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533112, 35.191917, 18.778717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.192383, 35.023968, 18.904001>,  <32.987946, 34.923199, 18.979172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.192383, 35.023968, 18.904001>,  <33.533112, 35.191917, 18.778717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192383, 35.023968, 18.904001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133034, 0.751720, 0.645925,
		-0.506654, 0.508546, -0.696191,
		-0.851824, -0.419878, 0.313208,
		32.936836, 34.898003, 18.997963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987148, 35.698162, 18.688231>,  <33.533112, 35.191917, 18.778717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987148, 35.698162, 18.688231> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.936810, 35.430573, 18.981251>,  <32.906605, 35.270020, 19.157063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.936810, 35.430573, 18.981251>,  <32.987148, 35.698162, 18.688231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936810, 35.430573, 18.981251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085041, 0.742979, 0.663890,
		-0.988398, 0.021251, -0.150392,
		-0.125846, -0.668977, 0.732552,
		32.899055, 35.229881, 19.201017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402546, 35.800800, 18.989639>,  <32.987148, 35.698162, 18.688231>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402546, 35.800800, 18.989639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.587700, 35.604095, 19.284637>,  <32.698792, 35.486073, 19.461637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.587700, 35.604095, 19.284637>,  <32.402546, 35.800800, 18.989639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587700, 35.604095, 19.284637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131842, 0.784548, 0.605890,
		-0.876558, -0.377692, 0.298321,
		0.462887, -0.491766, 0.737497,
		32.726566, 35.456566, 19.505886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028965, 35.986382, 19.570517>,  <32.402546, 35.800800, 18.989639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028965, 35.986382, 19.570517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.381168, 35.853340, 19.705626>,  <32.592491, 35.773518, 19.786692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.381168, 35.853340, 19.705626>,  <32.028965, 35.986382, 19.570517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381168, 35.853340, 19.705626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073968, 0.607418, 0.790931,
		-0.468233, -0.721402, 0.510232,
		0.880503, -0.332599, 0.337774,
		32.645321, 35.753559, 19.806957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984472, 35.838882, 20.332865>,  <32.028965, 35.986382, 19.570517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984472, 35.838882, 20.332865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.376781, 35.901646, 20.286457>,  <32.612167, 35.939304, 20.258614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.376781, 35.901646, 20.286457>,  <31.984472, 35.838882, 20.332865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376781, 35.901646, 20.286457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030735, 0.462899, 0.885878,
		0.192707, -0.872413, 0.449177,
		0.980775, 0.156909, -0.116018,
		32.671013, 35.948719, 20.251652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263187, 35.821644, 21.032194>,  <31.984472, 35.838882, 20.332865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263187, 35.821644, 21.032194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.575321, 35.979839, 20.838425>,  <32.762600, 36.074757, 20.722162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.575321, 35.979839, 20.838425>,  <32.263187, 35.821644, 21.032194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575321, 35.979839, 20.838425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265764, 0.491471, 0.829352,
		0.566079, -0.775915, 0.278406,
		0.780335, 0.395489, -0.484422,
		32.809422, 36.098488, 20.693098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785465, 35.706272, 21.471209>,  <32.263187, 35.821644, 21.032194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785465, 35.706272, 21.471209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.918839, 36.005680, 21.241936>,  <32.998863, 36.185326, 21.104372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.918839, 36.005680, 21.241936>,  <32.785465, 35.706272, 21.471209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918839, 36.005680, 21.241936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158798, 0.554699, 0.816757,
		0.929302, -0.363358, 0.066094,
		0.333437, 0.748519, -0.573184,
		33.018871, 36.230236, 21.069981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340549, 35.821522, 21.877117>,  <32.785465, 35.706272, 21.471209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340549, 35.821522, 21.877117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.250309, 36.141155, 21.654203>,  <33.196167, 36.332935, 21.520454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.250309, 36.141155, 21.654203>,  <33.340549, 35.821522, 21.877117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250309, 36.141155, 21.654203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190748, 0.597191, 0.779088,
		0.955364, 0.069461, -0.287150,
		-0.225599, 0.799086, -0.557285,
		33.182629, 36.380882, 21.487019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927284, 36.313847, 21.872849>,  <33.340549, 35.821522, 21.877117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927284, 36.313847, 21.872849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.626320, 36.561764, 21.783644>,  <33.445744, 36.710514, 21.730122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.626320, 36.561764, 21.783644>,  <33.927284, 36.313847, 21.872849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626320, 36.561764, 21.783644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303051, 0.626328, 0.718243,
		0.584842, 0.472829, -0.659084,
		-0.752409, 0.619795, -0.223012,
		33.400597, 36.747704, 21.716740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256367, 37.035011, 21.818512>,  <33.927284, 36.313847, 21.872849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256367, 37.035011, 21.818512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.861191, 37.054413, 21.877344>,  <33.624084, 37.066051, 21.912643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.861191, 37.054413, 21.877344>,  <34.256367, 37.035011, 21.818512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861191, 37.054413, 21.877344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136927, 0.717244, 0.683237,
		-0.072354, 0.695133, -0.715231,
		-0.987935, 0.048500, 0.147078,
		33.564812, 37.068962, 21.921467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.631336, 36.058556, 16.651211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.554283, 35.719082, 16.848240>,  <29.508051, 35.515396, 16.966457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.554283, 35.719082, 16.848240>,  <29.631336, 36.058556, 16.651211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554283, 35.719082, 16.848240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207541, -0.525855, -0.824866,
		0.959072, -0.056666, 0.277433,
		-0.192632, -0.848684, 0.492573,
		29.496494, 35.464478, 16.996012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025404, 35.661659, 16.322989>,  <29.631336, 36.058556, 16.651211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025404, 35.661659, 16.322989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.771420, 35.405148, 16.495304>,  <29.619028, 35.251240, 16.598694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.771420, 35.405148, 16.495304>,  <30.025404, 35.661659, 16.322989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771420, 35.405148, 16.495304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103467, -0.623193, -0.775194,
		0.765583, -0.447647, 0.462056,
		-0.634963, -0.641282, 0.430789,
		29.580931, 35.212765, 16.624540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.299593, 35.005005, 16.328959>,  <30.025404, 35.661659, 16.322989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.299593, 35.005005, 16.328959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.911919, 34.927864, 16.390257>,  <29.679314, 34.881577, 16.427036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.911919, 34.927864, 16.390257>,  <30.299593, 35.005005, 16.328959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911919, 34.927864, 16.390257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014865, -0.666776, -0.745110,
		0.245881, -0.719872, 0.649097,
		-0.969186, -0.192857, 0.153246,
		29.621162, 34.870007, 16.436232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335861, 34.261162, 16.316317>,  <30.299593, 35.005005, 16.328959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335861, 34.261162, 16.316317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.955856, 34.357811, 16.237228>,  <29.727854, 34.415798, 16.189775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.955856, 34.357811, 16.237228>,  <30.335861, 34.261162, 16.316317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955856, 34.357811, 16.237228> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036261, -0.714405, -0.698792,
		-0.310093, -0.656693, 0.687457,
		-0.950014, 0.241619, -0.197719,
		29.670853, 34.430298, 16.177912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.952251, 33.600304, 16.225046>,  <30.335861, 34.261162, 16.316317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.952251, 33.600304, 16.225046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.717663, 33.875088, 16.053404>,  <29.576910, 34.039959, 15.950418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.717663, 33.875088, 16.053404>,  <29.952251, 33.600304, 16.225046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717663, 33.875088, 16.053404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127198, -0.601318, -0.788820,
		-0.799920, -0.408039, 0.440036,
		-0.586471, 0.686965, -0.429105,
		29.541721, 34.081177, 15.924672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419102, 33.224457, 15.885224>,  <29.952251, 33.600304, 16.225046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419102, 33.224457, 15.885224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.445717, 33.577724, 15.699497>,  <29.461685, 33.789684, 15.588061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.445717, 33.577724, 15.699497>,  <29.419102, 33.224457, 15.885224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445717, 33.577724, 15.699497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142970, -0.452108, -0.880431,
		-0.987488, 0.124963, 0.096185,
		0.066536, 0.883166, -0.464317,
		29.465677, 33.842674, 15.560202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.783476, 33.266579, 15.417050>,  <29.419102, 33.224457, 15.885224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.783476, 33.266579, 15.417050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.061863, 33.519005, 15.280004>,  <29.228895, 33.670460, 15.197776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.061863, 33.519005, 15.280004>,  <28.783476, 33.266579, 15.417050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061863, 33.519005, 15.280004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085032, -0.401349, -0.911970,
		-0.713021, 0.663835, -0.225665,
		0.695967, 0.631065, -0.342617,
		29.270653, 33.708324, 15.177218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526180, 33.601223, 14.788463>,  <28.783476, 33.266579, 15.417050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526180, 33.601223, 14.788463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.923697, 33.638065, 14.763494>,  <29.162207, 33.660172, 14.748513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.923697, 33.638065, 14.763494>,  <28.526180, 33.601223, 14.788463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923697, 33.638065, 14.763494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018260, -0.418386, -0.908086,
		-0.109758, 0.903587, -0.414106,
		0.993791, 0.092108, -0.062421,
		29.221834, 33.665699, 14.744768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602173, 33.861111, 14.146603>,  <28.526180, 33.601223, 14.788463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602173, 33.861111, 14.146603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.969934, 33.729313, 14.232510>,  <29.190592, 33.650234, 14.284054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.969934, 33.729313, 14.232510>,  <28.602173, 33.861111, 14.146603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969934, 33.729313, 14.232510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025018, -0.495954, -0.867988,
		0.392513, 0.803407, -0.447740,
		0.919406, -0.329495, 0.214768,
		29.245756, 33.630463, 14.296940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161236, 34.023243, 13.500029>,  <28.602173, 33.861111, 14.146603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161236, 34.023243, 13.500029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.299051, 33.737129, 13.743229>,  <29.381741, 33.565460, 13.889150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.299051, 33.737129, 13.743229>,  <29.161236, 34.023243, 13.500029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.299051, 33.737129, 13.743229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334941, -0.511369, -0.791401,
		0.876987, 0.476315, 0.063389,
		0.344541, -0.715280, 0.608002,
		29.402414, 33.522545, 13.925630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715641, 33.717873, 13.076072>,  <29.161236, 34.023243, 13.500029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715641, 33.717873, 13.076072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.652290, 33.453274, 13.369286>,  <29.614281, 33.294514, 13.545214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.652290, 33.453274, 13.369286>,  <29.715641, 33.717873, 13.076072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652290, 33.453274, 13.369286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126558, -0.749882, -0.649354,
		0.979234, -0.010071, 0.202482,
		-0.158377, -0.661495, 0.733035,
		29.604776, 33.254826, 13.589196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.150045, 33.151550, 12.942909>,  <29.715641, 33.717873, 13.076072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.150045, 33.151550, 12.942909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.853798, 33.016235, 13.175133>,  <29.676050, 32.935047, 13.314466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.853798, 33.016235, 13.175133>,  <30.150045, 33.151550, 12.942909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853798, 33.016235, 13.175133> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002912, -0.865630, -0.500675,
		0.671920, -0.369118, 0.642087,
		-0.740618, -0.338283, 0.580559,
		29.631613, 32.914749, 13.349300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.281065, 32.504993, 13.265600>,  <30.150045, 33.151550, 12.942909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.281065, 32.504993, 13.265600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.884466, 32.524799, 13.217464>,  <29.646507, 32.536682, 13.188583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.884466, 32.524799, 13.217464>,  <30.281065, 32.504993, 13.265600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.884466, 32.524799, 13.217464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019071, -0.859495, -0.510789,
		-0.128723, -0.508740, 0.851242,
		-0.991497, 0.049516, -0.120339,
		29.587017, 32.539654, 13.181363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.882889, 31.873114, 13.020399>,  <30.281065, 32.504993, 13.265600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.882889, 31.873114, 13.020399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.985374, 31.573549, 13.264853>,  <30.046865, 31.393810, 13.411525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.985374, 31.573549, 13.264853>,  <29.882889, 31.873114, 13.020399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985374, 31.573549, 13.264853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608672, 0.616150, 0.499877,
		-0.750914, 0.243904, 0.613709,
		0.256215, -0.748912, 0.611133,
		30.062239, 31.348875, 13.448193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758228, 31.900341, 13.851973>,  <29.882889, 31.873114, 13.020399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758228, 31.900341, 13.851973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.073696, 31.662897, 13.787934>,  <30.262976, 31.520432, 13.749512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.073696, 31.662897, 13.787934>,  <29.758228, 31.900341, 13.851973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073696, 31.662897, 13.787934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548704, 0.562109, 0.618835,
		-0.277356, -0.575901, 0.769033,
		0.788668, -0.593610, -0.160095,
		30.310297, 31.484814, 13.739905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988068, 31.813553, 14.461125>,  <29.758228, 31.900341, 13.851973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988068, 31.813553, 14.461125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.306396, 31.683460, 14.256817>,  <30.497395, 31.605404, 14.134232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.306396, 31.683460, 14.256817>,  <29.988068, 31.813553, 14.461125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.306396, 31.683460, 14.256817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605417, 0.411253, 0.681426,
		-0.011565, -0.851525, 0.524186,
		0.795825, -0.325232, -0.510772,
		30.545143, 31.585890, 14.103585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315586, 31.524519, 14.910616>,  <29.988068, 31.813553, 14.461125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315586, 31.524519, 14.910616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.602852, 31.603069, 14.643579>,  <30.775211, 31.650200, 14.483357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.602852, 31.603069, 14.643579>,  <30.315586, 31.524519, 14.910616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602852, 31.603069, 14.643579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594934, 0.324372, 0.735416,
		0.360965, -0.925322, 0.116122,
		0.718163, 0.196375, -0.667592,
		30.818300, 31.661982, 14.443302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891462, 31.286488, 15.218420>,  <30.315586, 31.524519, 14.910616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891462, 31.286488, 15.218420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.026285, 31.530317, 14.931418>,  <31.107180, 31.676615, 14.759217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.026285, 31.530317, 14.931418>,  <30.891462, 31.286488, 15.218420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026285, 31.530317, 14.931418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798665, 0.218410, 0.560741,
		0.498523, -0.762047, -0.413229,
		0.337058, 0.609574, -0.717503,
		31.127403, 31.713190, 14.716167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.624880, 31.182161, 15.161956>,  <30.891462, 31.286488, 15.218420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.624880, 31.182161, 15.161956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.562502, 31.546965, 15.010209>,  <31.525076, 31.765846, 14.919161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.562502, 31.546965, 15.010209>,  <31.624880, 31.182161, 15.161956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562502, 31.546965, 15.010209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739311, 0.362469, 0.567482,
		0.655057, -0.191974, -0.730785,
		-0.155945, 0.912010, -0.379366,
		31.515718, 31.820568, 14.896399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312462, 31.499920, 15.131860>,  <31.624880, 31.182161, 15.161956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312462, 31.499920, 15.131860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.034969, 31.788008, 15.130108>,  <31.868473, 31.960859, 15.129057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.034969, 31.788008, 15.130108>,  <32.312462, 31.499920, 15.131860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034969, 31.788008, 15.130108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547386, 0.531189, 0.646689,
		0.468084, 0.446233, -0.762741,
		-0.693734, 0.720218, -0.004380,
		31.826849, 32.004074, 15.128794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651627, 32.134018, 14.917189>,  <32.312462, 31.499920, 15.131860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651627, 32.134018, 14.917189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.329857, 32.204647, 15.144070>,  <32.136795, 32.247025, 15.280198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.329857, 32.204647, 15.144070>,  <32.651627, 32.134018, 14.917189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329857, 32.204647, 15.144070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550974, 0.578738, 0.601241,
		-0.222097, 0.796168, -0.562841,
		-0.804426, 0.176577, 0.567203,
		32.088528, 32.257622, 15.314231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890965, 32.618313, 15.222118>,  <32.651627, 32.134018, 14.917189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890965, 32.618313, 15.222118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.562092, 32.575188, 15.445689>,  <32.364769, 32.549313, 15.579832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.562092, 32.575188, 15.445689>,  <32.890965, 32.618313, 15.222118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562092, 32.575188, 15.445689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441503, 0.499005, 0.745700,
		-0.359301, 0.859867, -0.362673,
		-0.822179, -0.107809, 0.558927,
		32.315437, 32.542847, 15.613367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853611, 33.218410, 15.616107>,  <32.890965, 32.618313, 15.222118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853611, 33.218410, 15.616107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.603462, 32.963913, 15.796814>,  <32.453373, 32.811214, 15.905238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.603462, 32.963913, 15.796814>,  <32.853611, 33.218410, 15.616107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603462, 32.963913, 15.796814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225650, 0.406763, 0.885227,
		-0.746985, 0.655542, -0.110811,
		-0.625377, -0.636246, 0.451768,
		32.415848, 32.773041, 15.932344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401268, 33.613525, 16.059397>,  <32.853611, 33.218410, 15.616107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401268, 33.613525, 16.059397> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.451630, 33.237900, 16.187344>,  <32.481846, 33.012524, 16.264111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.451630, 33.237900, 16.187344>,  <32.401268, 33.613525, 16.059397>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451630, 33.237900, 16.187344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273679, 0.342797, 0.898660,
		-0.953545, -0.025601, 0.300159,
		0.125900, -0.939061, 0.319866,
		32.489399, 32.956181, 16.283304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996994, 33.637531, 16.580185>,  <32.401268, 33.613525, 16.059397>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996994, 33.637531, 16.580185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.216415, 33.309155, 16.643618>,  <32.348068, 33.112129, 16.681677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.216415, 33.309155, 16.643618>,  <31.996994, 33.637531, 16.580185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216415, 33.309155, 16.643618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198909, 0.312347, 0.928911,
		-0.812112, -0.478013, 0.334631,
		0.548552, -0.820940, 0.158580,
		32.380981, 33.062874, 16.691191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711697, 33.403973, 17.152601>,  <31.996994, 33.637531, 16.580185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711697, 33.403973, 17.152601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.067043, 33.222298, 17.125713>,  <32.280251, 33.113293, 17.109581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.067043, 33.222298, 17.125713>,  <31.711697, 33.403973, 17.152601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067043, 33.222298, 17.125713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204826, 0.261009, 0.943356,
		-0.410919, -0.851813, 0.324901,
		0.888365, -0.454191, -0.067220,
		32.333553, 33.086040, 17.105547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680119, 32.983852, 17.647606>,  <31.711697, 33.403973, 17.152601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680119, 32.983852, 17.647606> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.063381, 33.063400, 17.565258>,  <32.293339, 33.111130, 17.515848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.063381, 33.063400, 17.565258>,  <31.680119, 32.983852, 17.647606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.063381, 33.063400, 17.565258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138425, 0.307596, 0.941394,
		0.250539, -0.930503, 0.267197,
		0.958159, 0.198870, -0.205870,
		32.350830, 33.123062, 17.503496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.065708, 32.689793, 18.199762>,  <31.680119, 32.983852, 17.647606>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.065708, 32.689793, 18.199762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.335030, 32.928284, 18.024866>,  <32.496624, 33.071377, 17.919928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.335030, 32.928284, 18.024866>,  <32.065708, 32.689793, 18.199762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335030, 32.928284, 18.024866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199034, 0.423384, 0.883817,
		0.712074, -0.682102, 0.166397,
		0.673303, 0.596224, -0.437242,
		32.537022, 33.107151, 17.893694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347900, 31.944712, 18.575161>,  <32.065708, 32.689793, 18.199762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347900, 31.944712, 18.575161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.155289, 31.646685, 18.759769>,  <32.039722, 31.467869, 18.870535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.155289, 31.646685, 18.759769>,  <32.347900, 31.944712, 18.575161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.155289, 31.646685, 18.759769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272326, -0.373328, -0.886829,
		0.833046, -0.552720, -0.023132,
		-0.481532, -0.745068, 0.461519,
		32.010830, 31.423164, 18.898226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461044, 31.366148, 18.182146>,  <32.347900, 31.944712, 18.575161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461044, 31.366148, 18.182146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.133560, 31.274071, 18.392567>,  <31.937071, 31.218824, 18.518820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.133560, 31.274071, 18.392567>,  <32.461044, 31.366148, 18.182146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133560, 31.274071, 18.392567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394608, -0.439972, -0.806665,
		0.417138, -0.868006, 0.269372,
		-0.818707, -0.230195, 0.526051,
		31.887949, 31.205013, 18.550383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386612, 30.646746, 18.110102>,  <32.461044, 31.366148, 18.182146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386612, 30.646746, 18.110102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.024391, 30.777534, 18.218220>,  <31.807058, 30.856009, 18.283091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.024391, 30.777534, 18.218220>,  <32.386612, 30.646746, 18.110102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024391, 30.777534, 18.218220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421041, -0.614739, -0.666949,
		-0.051911, -0.717765, 0.694348,
		-0.905555, 0.326971, 0.270296,
		31.752726, 30.875626, 18.299309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923027, 30.021914, 18.140923>,  <32.386612, 30.646746, 18.110102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923027, 30.021914, 18.140923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.669659, 30.330420, 18.115839>,  <31.517637, 30.515522, 18.100788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.669659, 30.330420, 18.115839>,  <31.923027, 30.021914, 18.140923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669659, 30.330420, 18.115839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565898, -0.516977, -0.642257,
		-0.527767, -0.371334, 0.763920,
		-0.633421, 0.771263, -0.062706,
		31.479633, 30.561798, 18.097027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.179579, 29.799204, 18.218346>,  <31.923027, 30.021914, 18.140923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.179579, 29.799204, 18.218346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.190813, 30.140245, 18.009624>,  <31.197554, 30.344872, 17.884392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.190813, 30.140245, 18.009624>,  <31.179579, 29.799204, 18.218346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190813, 30.140245, 18.009624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606182, -0.400543, -0.687101,
		-0.794830, 0.335603, 0.505585,
		0.028085, 0.852605, -0.521801,
		31.199238, 30.396027, 17.853085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545630, 29.853279, 17.906710>,  <31.179579, 29.799204, 18.218346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545630, 29.853279, 17.906710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.778179, 30.095203, 17.689009>,  <30.917709, 30.240358, 17.558388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.778179, 30.095203, 17.689009>,  <30.545630, 29.853279, 17.906710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778179, 30.095203, 17.689009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424960, -0.344713, -0.837008,
		-0.693841, 0.717899, 0.056613,
		0.581372, 0.604809, -0.544254,
		30.952591, 30.276646, 17.525732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075495, 30.054771, 17.440760>,  <30.545630, 29.853279, 17.906710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075495, 30.054771, 17.440760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.437464, 30.128859, 17.287495>,  <30.654644, 30.173311, 17.195536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.437464, 30.128859, 17.287495>,  <30.075495, 30.054771, 17.440760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437464, 30.128859, 17.287495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254703, -0.485577, -0.836266,
		-0.340947, 0.854347, -0.392233,
		0.904921, 0.185219, -0.383161,
		30.708941, 30.184423, 17.172546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466295, 30.200800, 17.162106>,  <30.075495, 30.054771, 17.440760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466295, 30.200800, 17.162106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.204866, 29.912291, 17.253855>,  <29.048010, 29.739185, 17.308905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.204866, 29.912291, 17.253855>,  <29.466295, 30.200800, 17.162106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204866, 29.912291, 17.253855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081411, 0.368293, 0.926139,
		-0.752474, 0.586624, -0.299425,
		-0.653571, -0.721272, 0.229373,
		29.008795, 29.695910, 17.322666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899820, 30.553902, 17.537111>,  <29.466295, 30.200800, 17.162106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.899820, 30.553902, 17.537111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.872250, 30.165277, 17.627726>,  <28.855707, 29.932102, 17.682095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.872250, 30.165277, 17.627726>,  <28.899820, 30.553902, 17.537111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.872250, 30.165277, 17.627726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285897, 0.236787, 0.928545,
		-0.955778, -0.000763, -0.294088,
		-0.068927, -0.971561, 0.226534,
		28.851572, 29.873810, 17.695686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398668, 30.604427, 18.008036>,  <28.899820, 30.553902, 17.537111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398668, 30.604427, 18.008036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.566216, 30.242956, 18.043621>,  <28.666744, 30.026073, 18.064972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.566216, 30.242956, 18.043621>,  <28.398668, 30.604427, 18.008036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.566216, 30.242956, 18.043621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074435, 0.063471, 0.995204,
		-0.904991, -0.423481, -0.040679,
		0.418868, -0.903679, 0.088962,
		28.691875, 29.971853, 18.070311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013683, 30.228954, 18.556423>,  <28.398668, 30.604427, 18.008036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013683, 30.228954, 18.556423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.372608, 30.052652, 18.546925>,  <28.587963, 29.946871, 18.541225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.372608, 30.052652, 18.546925>,  <28.013683, 30.228954, 18.556423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.372608, 30.052652, 18.546925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038627, -0.132008, 0.990496,
		-0.439701, -0.887868, -0.135477,
		0.897313, -0.440755, -0.023749,
		28.641802, 29.920425, 18.539801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.990650, 29.835989, 19.065163>,  <28.013683, 30.228954, 18.556423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.990650, 29.835989, 19.065163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.386379, 29.875511, 19.022308>,  <28.623817, 29.899225, 18.996595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.386379, 29.875511, 19.022308>,  <27.990650, 29.835989, 19.065163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386379, 29.875511, 19.022308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103245, 0.043708, 0.993695,
		0.102870, -0.994146, 0.033039,
		0.989322, 0.098810, -0.107137,
		28.683176, 29.905153, 18.990168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286615, 29.399366, 19.439714>,  <27.990650, 29.835989, 19.065163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286615, 29.399366, 19.439714> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.609989, 29.632246, 19.405136>,  <28.804014, 29.771975, 19.384390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.609989, 29.632246, 19.405136>,  <28.286615, 29.399366, 19.439714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609989, 29.632246, 19.405136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156016, -0.070351, 0.985246,
		0.567530, -0.809996, -0.147707,
		0.808436, 0.582201, -0.086446,
		28.852520, 29.806906, 19.379202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.717026, 29.135544, 19.891479>,  <28.286615, 29.399366, 19.439714>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.717026, 29.135544, 19.891479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.896536, 29.491365, 19.857317>,  <29.004242, 29.704859, 19.836821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.896536, 29.491365, 19.857317>,  <28.717026, 29.135544, 19.891479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896536, 29.491365, 19.857317> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126532, 0.031354, 0.991467,
		0.884641, -0.455752, -0.098486,
		0.448776, 0.889554, -0.085404,
		29.031168, 29.758232, 19.831696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.337193, 31.841908, 14.233900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.697416, 32.003689, 14.170136>,  <26.913551, 32.100758, 14.131878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.697416, 32.003689, 14.170136>,  <26.337193, 31.841908, 14.233900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.697416, 32.003689, 14.170136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029690, 0.308608, 0.950726,
		0.433720, -0.860917, 0.265911,
		0.900558, 0.404454, -0.159410,
		26.967585, 32.125027, 14.122313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740950, 31.607702, 14.713744>,  <26.337193, 31.841908, 14.233900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740950, 31.607702, 14.713744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.984488, 31.905764, 14.604893>,  <27.130610, 32.084602, 14.539582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.984488, 31.905764, 14.604893>,  <26.740950, 31.607702, 14.713744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.984488, 31.905764, 14.604893> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156391, 0.223559, 0.962062,
		0.777721, -0.628305, 0.019577,
		0.608845, 0.745154, -0.272127,
		27.167141, 32.129311, 14.523254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.340082, 31.539322, 15.033345>,  <26.740950, 31.607702, 14.713744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.340082, 31.539322, 15.033345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.293427, 31.926085, 14.942586>,  <27.265432, 32.158142, 14.888130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.293427, 31.926085, 14.942586>,  <27.340082, 31.539322, 15.033345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.293427, 31.926085, 14.942586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013342, 0.229962, 0.973108,
		0.993085, 0.110476, -0.039723,
		-0.116640, 0.966909, -0.226898,
		27.258434, 32.216156, 14.874516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.805698, 31.831324, 15.459023>,  <27.340082, 31.539322, 15.033345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.805698, 31.831324, 15.459023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.574957, 32.125622, 15.317083>,  <27.436512, 32.302200, 15.231919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.574957, 32.125622, 15.317083>,  <27.805698, 31.831324, 15.459023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574957, 32.125622, 15.317083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128638, 0.347170, 0.928938,
		0.806655, 0.581509, -0.105622,
		-0.576854, 0.735745, -0.354851,
		27.401901, 32.346344, 15.210629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073284, 32.376350, 15.884398>,  <27.805698, 31.831324, 15.459023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.073284, 32.376350, 15.884398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.729454, 32.510769, 15.730407>,  <27.523157, 32.591419, 15.638012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.729454, 32.510769, 15.730407>,  <28.073284, 32.376350, 15.884398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.729454, 32.510769, 15.730407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247905, 0.384555, 0.889191,
		0.446852, 0.859763, -0.247246,
		-0.859573, 0.336043, -0.384979,
		27.471582, 32.611584, 15.614913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.043503, 33.056522, 15.977686>,  <28.073284, 32.376350, 15.884398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.043503, 33.056522, 15.977686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.670570, 32.912914, 15.960416>,  <27.446812, 32.826748, 15.950053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.670570, 32.912914, 15.960416>,  <28.043503, 33.056522, 15.977686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670570, 32.912914, 15.960416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240779, 0.527272, 0.814868,
		-0.269790, 0.770122, -0.578037,
		-0.932330, -0.359022, -0.043176,
		27.390871, 32.805206, 15.947463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679447, 33.571129, 16.244680>,  <28.043503, 33.056522, 15.977686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679447, 33.571129, 16.244680> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.435535, 33.255302, 16.272245>,  <27.289188, 33.065807, 16.288784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.435535, 33.255302, 16.272245>,  <27.679447, 33.571129, 16.244680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435535, 33.255302, 16.272245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252964, 0.276284, 0.927187,
		-0.751119, 0.547947, -0.368205,
		-0.609779, -0.789570, 0.068912,
		27.252602, 33.018433, 16.292919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.112825, 33.856251, 16.360252>,  <27.679447, 33.571129, 16.244680>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.112825, 33.856251, 16.360252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.102388, 33.477268, 16.487782>,  <27.096127, 33.249878, 16.564299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.102388, 33.477268, 16.487782>,  <27.112825, 33.856251, 16.360252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102388, 33.477268, 16.487782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313129, 0.310627, 0.897475,
		-0.949352, -0.076415, -0.304781,
		-0.026092, -0.947456, 0.318822,
		27.094561, 33.193031, 16.583427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511202, 33.799400, 16.742561>,  <27.112825, 33.856251, 16.360252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.511202, 33.799400, 16.742561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.728310, 33.480412, 16.847967>,  <26.858574, 33.289017, 16.911211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.728310, 33.480412, 16.847967>,  <26.511202, 33.799400, 16.742561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728310, 33.480412, 16.847967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197511, 0.183758, 0.962924,
		-0.816328, -0.574693, -0.057772,
		0.542769, -0.797472, 0.263515,
		26.891140, 33.241169, 16.927021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083523, 33.524708, 17.264164>,  <26.511202, 33.799400, 16.742561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.083523, 33.524708, 17.264164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.445179, 33.366230, 17.328114>,  <26.662172, 33.271145, 17.366484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.445179, 33.366230, 17.328114>,  <26.083523, 33.524708, 17.264164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.445179, 33.366230, 17.328114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050908, 0.471447, 0.880424,
		-0.424188, -0.787889, 0.446425,
		0.904142, -0.396191, 0.159872,
		26.716421, 33.247372, 17.376076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.060106, 33.325432, 17.964111>,  <26.083523, 33.524708, 17.264164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.060106, 33.325432, 17.964111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.445024, 33.362984, 17.861998>,  <26.675976, 33.385517, 17.800730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.445024, 33.362984, 17.861998>,  <26.060106, 33.325432, 17.964111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.445024, 33.362984, 17.861998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165025, 0.544563, 0.822325,
		0.216221, -0.833449, 0.508538,
		0.962297, 0.093882, -0.255286,
		26.733713, 33.391148, 17.785412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.330410, 33.137379, 18.560551>,  <26.060106, 33.325432, 17.964111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.330410, 33.137379, 18.560551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.616169, 33.346577, 18.374599>,  <26.787624, 33.472095, 18.263029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.616169, 33.346577, 18.374599>,  <26.330410, 33.137379, 18.560551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616169, 33.346577, 18.374599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056133, 0.619382, 0.783081,
		0.697485, -0.585526, 0.413127,
		0.714398, 0.522997, -0.464877,
		26.830488, 33.503475, 18.235136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.826475, 32.588001, 18.601841>,  <26.330410, 33.137379, 18.560551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.826475, 32.588001, 18.601841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.831295, 32.244198, 18.806234>,  <26.834187, 32.037914, 18.928869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.831295, 32.244198, 18.806234>,  <26.826475, 32.588001, 18.601841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.831295, 32.244198, 18.806234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112936, -0.508919, -0.853374,
		0.993529, -0.047423, -0.103203,
		0.012052, -0.859508, 0.510982,
		26.834911, 31.986345, 18.959528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.079391, 32.137669, 18.161545>,  <26.826475, 32.588001, 18.601841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.079391, 32.137669, 18.161545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.924658, 31.863913, 18.408760>,  <26.831818, 31.699659, 18.557089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.924658, 31.863913, 18.408760>,  <27.079391, 32.137669, 18.161545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.924658, 31.863913, 18.408760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264126, -0.559904, -0.785331,
		0.883514, -0.467033, 0.035824,
		-0.386834, -0.684389, 0.618038,
		26.808607, 31.658596, 18.594172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.328056, 31.459087, 17.933531>,  <27.079391, 32.137669, 18.161545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.328056, 31.459087, 17.933531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.987648, 31.407616, 18.137180>,  <26.783403, 31.376732, 18.259369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.987648, 31.407616, 18.137180>,  <27.328056, 31.459087, 17.933531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987648, 31.407616, 18.137180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341581, -0.600733, -0.722802,
		0.398857, -0.789026, 0.467281,
		-0.851020, -0.128680, 0.509123,
		26.732342, 31.369011, 18.289917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188066, 30.765585, 17.916054>,  <27.328056, 31.459087, 17.933531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188066, 30.765585, 17.916054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.832373, 30.914366, 18.022573>,  <26.618956, 31.003633, 18.086485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.832373, 30.914366, 18.022573>,  <27.188066, 30.765585, 17.916054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832373, 30.914366, 18.022573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450212, -0.608427, -0.653548,
		-0.081065, -0.701049, 0.708491,
		-0.889234, 0.371951, 0.266298,
		26.565603, 31.025951, 18.102463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.781458, 30.230579, 18.083019>,  <27.188066, 30.765585, 17.916054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.781458, 30.230579, 18.083019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.525372, 30.519978, 17.979731>,  <26.371719, 30.693617, 17.917757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.525372, 30.519978, 17.979731>,  <26.781458, 30.230579, 18.083019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.525372, 30.519978, 17.979731> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421219, -0.611721, -0.669606,
		-0.642418, -0.319923, 0.696383,
		-0.640214, 0.723496, -0.258223,
		26.333307, 30.737026, 17.902264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.231674, 29.841606, 17.959990>,  <26.781458, 30.230579, 18.083019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.231674, 29.841606, 17.959990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.105570, 30.187811, 17.804298>,  <26.029907, 30.395535, 17.710884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.105570, 30.187811, 17.804298>,  <26.231674, 29.841606, 17.959990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105570, 30.187811, 17.804298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531036, -0.500809, -0.683514,
		-0.786519, -0.008791, 0.617503,
		-0.315260, 0.865513, -0.389227,
		26.010992, 30.447464, 17.687531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.602121, 29.803314, 17.848829>,  <26.231674, 29.841606, 17.959990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.602121, 29.803314, 17.848829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.690638, 30.097513, 17.592680>,  <25.743748, 30.274033, 17.438990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.690638, 30.097513, 17.592680>,  <25.602121, 29.803314, 17.848829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.690638, 30.097513, 17.592680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624277, -0.397637, -0.672430,
		-0.749205, 0.548572, 0.371160,
		0.221289, 0.735495, -0.640373,
		25.757025, 30.318161, 17.400568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.068256, 30.036636, 17.557276>,  <25.602121, 29.803314, 17.848829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.068256, 30.036636, 17.557276> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.323957, 30.161583, 17.276196>,  <25.477377, 30.236551, 17.107548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.323957, 30.161583, 17.276196>,  <25.068256, 30.036636, 17.557276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.323957, 30.161583, 17.276196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552818, -0.448535, -0.702288,
		-0.534555, 0.837403, -0.114046,
		0.639252, 0.312365, -0.702698,
		25.515734, 30.255293, 17.065386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.667416, 30.419411, 16.995314>,  <25.068256, 30.036636, 17.557276>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.667416, 30.419411, 16.995314> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.016247, 30.277609, 16.860374>,  <25.225546, 30.192528, 16.779411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.016247, 30.277609, 16.860374>,  <24.667416, 30.419411, 16.995314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.016247, 30.277609, 16.860374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473861, -0.439580, -0.763036,
		0.122209, 0.825284, -0.551335,
		0.872078, -0.354507, -0.337350,
		25.277870, 30.171257, 16.759169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.572338, 30.588297, 16.401133>,  <24.667416, 30.419411, 16.995314>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.572338, 30.588297, 16.401133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.897339, 30.355848, 16.382647>,  <25.092340, 30.216379, 16.371555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.897339, 30.355848, 16.382647>,  <24.572338, 30.588297, 16.401133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.897339, 30.355848, 16.382647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414957, -0.520851, -0.746006,
		0.409450, 0.625309, -0.664334,
		0.812503, -0.581122, -0.046213,
		25.141090, 30.181511, 16.368782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.908741, 30.609451, 15.653717>,  <24.572338, 30.588297, 16.401133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.908741, 30.609451, 15.653717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.027645, 30.287237, 15.858755>,  <25.098988, 30.093908, 15.981778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.027645, 30.287237, 15.858755>,  <24.908741, 30.609451, 15.653717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.027645, 30.287237, 15.858755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156691, -0.570740, -0.806042,
		0.941852, 0.159285, -0.295878,
		0.297260, -0.805533, 0.512594,
		25.116823, 30.045578, 16.012533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.507463, 30.363300, 15.315928>,  <24.908741, 30.609451, 15.653717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.507463, 30.363300, 15.315928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.350412, 30.047735, 15.505013>,  <25.256182, 29.858397, 15.618464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.350412, 30.047735, 15.505013>,  <25.507463, 30.363300, 15.315928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.350412, 30.047735, 15.505013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059663, -0.534753, -0.842900,
		0.917759, -0.302744, 0.257029,
		-0.392630, -0.788914, 0.472712,
		25.232624, 29.811062, 15.646827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.892597, 29.791075, 15.141298>,  <25.507463, 30.363300, 15.315928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.892597, 29.791075, 15.141298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.533819, 29.653658, 15.252628>,  <25.318552, 29.571207, 15.319427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.533819, 29.653658, 15.252628>,  <25.892597, 29.791075, 15.141298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.533819, 29.653658, 15.252628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056068, -0.536036, -0.842331,
		0.438569, -0.771131, 0.461534,
		-0.896947, -0.343543, 0.278325,
		25.264734, 29.550594, 15.336125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.981522, 29.219612, 14.884241>,  <25.892597, 29.791075, 15.141298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.981522, 29.219612, 14.884241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.585695, 29.223513, 14.941743>,  <25.348200, 29.225853, 14.976244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.585695, 29.223513, 14.941743>,  <25.981522, 29.219612, 14.884241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.585695, 29.223513, 14.941743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113840, -0.664490, -0.738576,
		0.088323, -0.747234, 0.658666,
		-0.989566, 0.009749, 0.143755,
		25.288826, 29.226437, 14.984869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.601109, 29.490995, 15.308164>,  <25.981522, 29.219612, 14.884241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.601109, 29.490995, 15.308164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.954515, 29.466185, 15.122455>,  <27.166559, 29.451298, 15.011029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.954515, 29.466185, 15.122455>,  <26.601109, 29.490995, 15.308164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954515, 29.466185, 15.122455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440767, -0.225296, 0.868888,
		-0.158492, -0.972314, -0.171714,
		0.883518, -0.062026, -0.464272,
		27.219570, 29.447577, 14.983172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.961769, 28.966455, 15.601740>,  <26.601109, 29.490995, 15.308164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.961769, 28.966455, 15.601740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.283756, 29.125616, 15.425693>,  <27.476948, 29.221113, 15.320065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.283756, 29.125616, 15.425693>,  <26.961769, 28.966455, 15.601740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.283756, 29.125616, 15.425693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531110, -0.152570, 0.833453,
		0.264484, -0.904653, -0.334143,
		0.804966, 0.397902, -0.440118,
		27.525246, 29.244986, 15.293657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536119, 28.515764, 15.635111>,  <26.961769, 28.966455, 15.601740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536119, 28.515764, 15.635111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.692869, 28.877251, 15.566142>,  <27.786919, 29.094143, 15.524760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.692869, 28.877251, 15.566142>,  <27.536119, 28.515764, 15.635111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692869, 28.877251, 15.566142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600661, -0.109355, 0.791990,
		0.696880, -0.413928, -0.585681,
		0.391874, 0.903718, -0.172423,
		27.810431, 29.148365, 15.514415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226133, 28.485418, 15.809051>,  <27.536119, 28.515764, 15.635111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226133, 28.485418, 15.809051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.183201, 28.881384, 15.846037>,  <28.157442, 29.118963, 15.868229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.183201, 28.881384, 15.846037>,  <28.226133, 28.485418, 15.809051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.183201, 28.881384, 15.846037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578451, -0.013466, 0.815606,
		0.808625, 0.141028, -0.571172,
		-0.107332, 0.989914, 0.092467,
		28.151001, 29.178358, 15.873776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800465, 28.555046, 16.223932>,  <28.226133, 28.485418, 15.809051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800465, 28.555046, 16.223932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.626135, 28.912848, 16.263773>,  <28.521538, 29.127529, 16.287678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.626135, 28.912848, 16.263773>,  <28.800465, 28.555046, 16.223932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626135, 28.912848, 16.263773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503556, 0.150619, 0.850732,
		0.745982, 0.420923, -0.516076,
		-0.435824, 0.894504, 0.099599,
		28.495388, 29.181198, 16.293653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359632, 28.946327, 16.364656>,  <28.800465, 28.555046, 16.223932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359632, 28.946327, 16.364656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.019464, 29.128088, 16.470715>,  <28.815363, 29.237144, 16.534349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.019464, 29.128088, 16.470715>,  <29.359632, 28.946327, 16.364656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.019464, 29.128088, 16.470715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433727, 0.320309, 0.842189,
		0.297764, 0.831217, -0.469484,
		-0.850422, 0.454402, 0.265145,
		28.764338, 29.264408, 16.550259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491529, 29.648645, 16.546598>,  <29.359632, 28.946327, 16.364656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491529, 29.648645, 16.546598> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.167604, 29.547710, 16.758457>,  <28.973249, 29.487150, 16.885572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.167604, 29.547710, 16.758457>,  <29.491529, 29.648645, 16.546598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167604, 29.547710, 16.758457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474776, 0.248487, 0.844299,
		-0.344659, 0.935190, -0.081425,
		-0.809814, -0.252336, 0.529649,
		28.924660, 29.472010, 16.917353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918739, 30.301559, 16.484045>,  <29.491529, 29.648645, 16.546598>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918739, 30.301559, 16.484045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.308075, 30.224377, 16.533649>,  <30.541676, 30.178068, 16.563412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.308075, 30.224377, 16.533649>,  <29.918739, 30.301559, 16.484045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308075, 30.224377, 16.533649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062215, -0.298291, -0.952445,
		0.220771, 0.934768, -0.278334,
		0.973339, -0.192955, 0.124011,
		30.600077, 30.166491, 16.570852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147537, 30.501608, 15.908196>,  <29.918739, 30.301559, 16.484045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147537, 30.501608, 15.908196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.421059, 30.256424, 16.066536>,  <30.585171, 30.109314, 16.161539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.421059, 30.256424, 16.066536>,  <30.147537, 30.501608, 15.908196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421059, 30.256424, 16.066536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148409, -0.414331, -0.897944,
		0.714415, 0.672764, -0.192353,
		0.683803, -0.612958, 0.395849,
		30.626200, 30.072536, 16.185291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652502, 30.550907, 15.479271>,  <30.147537, 30.501608, 15.908196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652502, 30.550907, 15.479271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.714151, 30.207352, 15.674639>,  <30.751141, 30.001219, 15.791860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.714151, 30.207352, 15.674639>,  <30.652502, 30.550907, 15.479271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714151, 30.207352, 15.674639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255352, -0.442909, -0.859434,
		0.954485, 0.257176, 0.151058,
		0.154121, -0.858890, 0.488420,
		30.760387, 29.949684, 15.821165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213827, 30.193419, 15.078485>,  <30.652502, 30.550907, 15.479271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213827, 30.193419, 15.078485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.024912, 29.918648, 15.299419>,  <30.911562, 29.753786, 15.431980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.024912, 29.918648, 15.299419>,  <31.213827, 30.193419, 15.078485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024912, 29.918648, 15.299419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122336, -0.671645, -0.730703,
		0.872913, -0.277533, 0.401247,
		-0.472290, -0.686927, 0.552335,
		30.883224, 29.712570, 15.465120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621140, 29.541395, 15.231540>,  <31.213827, 30.193419, 15.078485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621140, 29.541395, 15.231540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.236483, 29.434694, 15.257111>,  <31.005688, 29.370674, 15.272453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.236483, 29.434694, 15.257111>,  <31.621140, 29.541395, 15.231540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236483, 29.434694, 15.257111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133812, -0.659628, -0.739584,
		0.239455, -0.702661, 0.670021,
		-0.961642, -0.266754, 0.063927,
		30.947990, 29.354668, 15.276289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.632944, 28.895782, 14.997617>,  <31.621140, 29.541395, 15.231540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.632944, 28.895782, 14.997617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.243813, 28.977282, 14.953632>,  <31.010334, 29.026180, 14.927241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.243813, 28.977282, 14.953632>,  <31.632944, 28.895782, 14.997617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243813, 28.977282, 14.953632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032728, -0.591190, -0.805868,
		-0.229202, -0.780373, 0.581795,
		-0.972829, 0.203748, -0.109962,
		30.951963, 29.038406, 14.920644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405056, 28.306684, 14.839468>,  <31.632944, 28.895782, 14.997617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405056, 28.306684, 14.839468> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.123665, 28.569593, 14.731312>,  <30.954830, 28.727339, 14.666418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.123665, 28.569593, 14.731312>,  <31.405056, 28.306684, 14.839468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123665, 28.569593, 14.731312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140665, -0.501685, -0.853537,
		-0.696657, -0.562411, 0.445380,
		-0.703479, 0.657272, -0.270391,
		30.912621, 28.766775, 14.650195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966206, 27.867058, 14.426296>,  <31.405056, 28.306684, 14.839468>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966206, 27.867058, 14.426296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.811781, 28.228727, 14.353170>,  <30.719126, 28.445730, 14.309295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.811781, 28.228727, 14.353170>,  <30.966206, 27.867058, 14.426296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.811781, 28.228727, 14.353170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471438, -0.363732, -0.803396,
		-0.792907, -0.223976, 0.566686,
		-0.386063, 0.904176, -0.182814,
		30.695961, 28.499981, 14.298326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286255, 27.870031, 14.621483>,  <30.966206, 27.867058, 14.426296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286255, 27.870031, 14.621483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.328520, 28.139084, 14.328526>,  <30.353878, 28.300516, 14.152751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.328520, 28.139084, 14.328526>,  <30.286255, 27.870031, 14.621483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328520, 28.139084, 14.328526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666696, -0.498544, -0.554048,
		-0.737802, 0.546827, 0.395764,
		0.105663, 0.672632, -0.732394,
		30.360218, 28.340874, 14.108808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.883106, 36.274635, 28.780205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.008759, 36.336815, 28.405577>,  <33.084148, 36.374123, 28.180799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.008759, 36.336815, 28.405577>,  <32.883106, 36.274635, 28.780205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008759, 36.336815, 28.405577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532848, -0.787603, -0.309441,
		-0.785746, 0.596252, -0.164577,
		0.314127, 0.155448, -0.936568,
		33.102997, 36.383450, 28.124607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334820, 36.162094, 28.304733>,  <32.883106, 36.274635, 28.780205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334820, 36.162094, 28.304733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.645988, 36.141548, 28.054230>,  <32.832687, 36.129219, 27.903927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.645988, 36.141548, 28.054230>,  <32.334820, 36.162094, 28.304733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645988, 36.141548, 28.054230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484566, -0.683559, -0.545842,
		-0.400046, 0.728086, -0.556645,
		0.777919, -0.051369, -0.626261,
		32.879364, 36.126137, 27.866352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006527, 36.036133, 27.636623>,  <32.334820, 36.162094, 28.304733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006527, 36.036133, 27.636623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.391415, 35.944073, 27.578423>,  <32.622345, 35.888836, 27.543501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.391415, 35.944073, 27.578423>,  <32.006527, 36.036133, 27.636623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391415, 35.944073, 27.578423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265868, -0.678767, -0.684536,
		0.058784, 0.697356, -0.714310,
		0.962216, -0.230152, -0.145504,
		32.680080, 35.875027, 27.534771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035942, 35.979881, 26.862494>,  <32.006527, 36.036133, 27.636623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035942, 35.979881, 26.862494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.371590, 35.798065, 26.982012>,  <32.572979, 35.688976, 27.053722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.371590, 35.798065, 26.982012>,  <32.035942, 35.979881, 26.862494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371590, 35.798065, 26.982012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042472, -0.602378, -0.797080,
		0.542291, 0.656153, -0.524770,
		0.839116, -0.454538, 0.298796,
		32.623325, 35.661705, 27.071651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583294, 35.910412, 26.190880>,  <32.035942, 35.979881, 26.862494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583294, 35.910412, 26.190880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.654987, 35.626579, 26.463459>,  <32.698002, 35.456280, 26.627007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.654987, 35.626579, 26.463459>,  <32.583294, 35.910412, 26.190880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654987, 35.626579, 26.463459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075442, -0.680713, -0.728655,
		0.980910, 0.182010, -0.068475,
		0.179234, -0.709579, 0.681449,
		32.708759, 35.413704, 26.667894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145020, 35.496796, 25.863852>,  <32.583294, 35.910412, 26.190880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145020, 35.496796, 25.863852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982418, 35.268879, 26.149534>,  <32.884857, 35.132130, 26.320944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.982418, 35.268879, 26.149534>,  <33.145020, 35.496796, 25.863852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.982418, 35.268879, 26.149534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149440, -0.812649, -0.563267,
		0.901344, -0.122239, 0.415495,
		-0.406505, -0.569789, 0.714209,
		32.860466, 35.097942, 26.363796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616341, 35.029778, 25.995914>,  <33.145020, 35.496796, 25.863852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616341, 35.029778, 25.995914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.266140, 34.879330, 26.117264>,  <33.056019, 34.789062, 26.190073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.266140, 34.879330, 26.117264>,  <33.616341, 35.029778, 25.995914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266140, 34.879330, 26.117264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096590, -0.751362, -0.652783,
		0.473469, -0.542207, 0.694146,
		-0.875499, -0.376120, 0.303374,
		33.003490, 34.766495, 26.208277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706329, 34.288582, 26.027819>,  <33.616341, 35.029778, 25.995914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706329, 34.288582, 26.027819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.316738, 34.375549, 26.002205>,  <33.082985, 34.427731, 25.986837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.316738, 34.375549, 26.002205>,  <33.706329, 34.288582, 26.027819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316738, 34.375549, 26.002205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119903, -0.734006, -0.668475,
		-0.192341, -0.643400, 0.740973,
		-0.973975, 0.217420, -0.064034,
		33.024544, 34.440777, 25.982994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316669, 33.587112, 25.913227>,  <33.706329, 34.288582, 26.027819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316669, 33.587112, 25.913227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.023483, 33.842976, 25.820612>,  <32.847572, 33.996494, 25.765043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.023483, 33.842976, 25.820612>,  <33.316669, 33.587112, 25.913227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023483, 33.842976, 25.820612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172192, -0.503729, -0.846526,
		-0.658117, -0.580601, 0.479358,
		-0.732961, 0.639655, -0.231538,
		32.803596, 34.034874, 25.751150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780563, 33.133976, 25.711573>,  <33.316669, 33.587112, 25.913227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780563, 33.133976, 25.711573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.687664, 33.489651, 25.553886>,  <32.631924, 33.703056, 25.459274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.687664, 33.489651, 25.553886>,  <32.780563, 33.133976, 25.711573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687664, 33.489651, 25.553886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324547, -0.452915, -0.830384,
		-0.916913, -0.064912, 0.393771,
		-0.232247, 0.889187, -0.394217,
		32.617989, 33.756409, 25.435621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031986, 33.127384, 25.495380>,  <32.780563, 33.133976, 25.711573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031986, 33.127384, 25.495380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.228939, 33.398724, 25.277241>,  <32.347111, 33.561527, 25.146357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.228939, 33.398724, 25.277241>,  <32.031986, 33.127384, 25.495380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228939, 33.398724, 25.277241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149240, -0.551486, -0.820726,
		-0.857487, 0.485502, -0.170307,
		0.492386, 0.678345, -0.545349,
		32.376656, 33.602226, 25.113636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672535, 33.119270, 24.897003>,  <32.031986, 33.127384, 25.495380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672535, 33.119270, 24.897003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.991369, 33.316780, 24.757952>,  <32.182671, 33.435287, 24.674520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.991369, 33.316780, 24.757952>,  <31.672535, 33.119270, 24.897003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991369, 33.316780, 24.757952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058670, -0.509620, -0.858397,
		-0.601011, 0.704610, -0.377241,
		0.797084, 0.493773, -0.347627,
		32.230495, 33.464912, 24.653664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884445, 33.000809, 24.810408>,  <31.672535, 33.119270, 24.897003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884445, 33.000809, 24.810408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.771580, 32.628487, 24.903339>,  <30.703861, 32.405090, 24.959099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.771580, 32.628487, 24.903339>,  <30.884445, 33.000809, 24.810408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771580, 32.628487, 24.903339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100999, 0.212002, 0.972036,
		-0.954035, 0.297738, 0.034192,
		-0.282164, -0.930810, 0.232329,
		30.686932, 32.349243, 24.973038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.361006, 33.057365, 25.273190>,  <30.884445, 33.000809, 24.810408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.361006, 33.057365, 25.273190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.502743, 32.687481, 25.328846>,  <30.587784, 32.465549, 25.362240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.502743, 32.687481, 25.328846>,  <30.361006, 33.057365, 25.273190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502743, 32.687481, 25.328846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217290, 0.226142, 0.949550,
		-0.909520, -0.306231, 0.281060,
		0.354341, -0.924707, 0.139139,
		30.609045, 32.410069, 25.370588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032196, 32.770927, 25.895357>,  <30.361006, 33.057365, 25.273190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032196, 32.770927, 25.895357> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.365517, 32.552605, 25.860247>,  <30.565508, 32.421612, 25.839180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.365517, 32.552605, 25.860247>,  <30.032196, 32.770927, 25.895357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365517, 32.552605, 25.860247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135445, 0.047634, 0.989639,
		-0.535972, -0.836555, 0.113621,
		0.833300, -0.545808, -0.087777,
		30.615507, 32.388863, 25.833914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957100, 32.258224, 26.410309>,  <30.032196, 32.770927, 25.895357>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957100, 32.258224, 26.410309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.343517, 32.283379, 26.310066>,  <30.575369, 32.298470, 26.249920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.343517, 32.283379, 26.310066>,  <29.957100, 32.258224, 26.410309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343517, 32.283379, 26.310066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255070, -0.077478, 0.963813,
		0.041189, -0.995009, -0.090886,
		0.966045, 0.062881, -0.250606,
		30.633331, 32.302242, 26.234884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327633, 31.863001, 26.877066>,  <29.957100, 32.258224, 26.410309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327633, 31.863001, 26.877066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.623505, 32.091541, 26.734837>,  <30.801027, 32.228664, 26.649498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.623505, 32.091541, 26.734837>,  <30.327633, 31.863001, 26.877066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623505, 32.091541, 26.734837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321481, 0.164184, 0.932573,
		0.591207, -0.804114, -0.062236,
		0.739678, 0.571352, -0.355574,
		30.845407, 32.262947, 26.628164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778234, 31.791023, 27.392071>,  <30.327633, 31.863001, 26.877066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778234, 31.791023, 27.392071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.918406, 32.109795, 27.195255>,  <31.002508, 32.301060, 27.077166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.918406, 32.109795, 27.195255>,  <30.778234, 31.791023, 27.392071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.918406, 32.109795, 27.195255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446586, 0.319609, 0.835710,
		0.823263, -0.512594, -0.243899,
		0.350427, 0.796931, -0.492039,
		31.023535, 32.348873, 27.047644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473305, 31.841911, 27.562317>,  <30.778234, 31.791023, 27.392071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473305, 31.841911, 27.562317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.357351, 32.204639, 27.439913>,  <31.287779, 32.422276, 27.366470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.357351, 32.204639, 27.439913>,  <31.473305, 31.841911, 27.562317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357351, 32.204639, 27.439913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368722, 0.400876, 0.838655,
		0.883183, 0.130279, -0.450572,
		-0.289883, 0.906822, -0.306011,
		31.270386, 32.476685, 27.348110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954247, 32.230427, 27.919588>,  <31.473305, 31.841911, 27.562317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954247, 32.230427, 27.919588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.664948, 32.487167, 27.817656>,  <31.491367, 32.641212, 27.756496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.664948, 32.487167, 27.817656>,  <31.954247, 32.230427, 27.919588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664948, 32.487167, 27.817656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136187, 0.494326, 0.858543,
		0.677025, 0.586235, -0.444932,
		-0.723249, 0.641849, -0.254833,
		31.447973, 32.679722, 27.741205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.301342, 32.907444, 27.997314>,  <31.954247, 32.230427, 27.919588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.301342, 32.907444, 27.997314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.905331, 32.963760, 27.995506>,  <31.667725, 32.997551, 27.994421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.905331, 32.963760, 27.995506>,  <32.301342, 32.907444, 27.997314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905331, 32.963760, 27.995506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080796, 0.593859, 0.800502,
		0.115389, 0.792155, -0.599313,
		-0.990029, 0.140791, -0.004522,
		31.608322, 33.005997, 27.994150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136749, 33.582371, 27.916395>,  <32.301342, 32.907444, 27.997314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136749, 33.582371, 27.916395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.852224, 33.406548, 28.135784>,  <31.681509, 33.301052, 28.267418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.852224, 33.406548, 28.135784>,  <32.136749, 33.582371, 27.916395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852224, 33.406548, 28.135784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203203, 0.618400, 0.759138,
		-0.672860, 0.651436, -0.350557,
		-0.711314, -0.439559, 0.548470,
		31.638830, 33.274681, 28.300325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853294, 34.119530, 28.283592>,  <32.136749, 33.582371, 27.916395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853294, 34.119530, 28.283592> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.645159, 33.834274, 28.471500>,  <31.520277, 33.663120, 28.584246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.645159, 33.834274, 28.471500>,  <31.853294, 34.119530, 28.283592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645159, 33.834274, 28.471500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091862, 0.593660, 0.799456,
		-0.849005, 0.372833, -0.374415,
		-0.520339, -0.713136, 0.469771,
		31.489058, 33.620335, 28.612432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339710, 34.454369, 28.560827>,  <31.853294, 34.119530, 28.283592>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339710, 34.454369, 28.560827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.367834, 34.119324, 28.777514>,  <31.384708, 33.918297, 28.907526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.367834, 34.119324, 28.777514>,  <31.339710, 34.454369, 28.560827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367834, 34.119324, 28.777514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152916, 0.527590, 0.835623,
		-0.985735, -0.141590, -0.090989,
		0.070311, -0.837616, 0.541715,
		31.388927, 33.868038, 28.940027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692600, 34.370930, 28.961704>,  <31.339710, 34.454369, 28.560827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692600, 34.370930, 28.961704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.980015, 34.163456, 29.147036>,  <31.152464, 34.038971, 29.258234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.980015, 34.163456, 29.147036>,  <30.692600, 34.370930, 28.961704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980015, 34.163456, 29.147036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171087, 0.513895, 0.840619,
		-0.674119, -0.683284, 0.280511,
		0.718535, -0.518686, 0.463328,
		31.195576, 34.007851, 29.286034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492773, 34.246273, 29.625706>,  <30.692600, 34.370930, 28.961704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492773, 34.246273, 29.625706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.883255, 34.172340, 29.671072>,  <31.117544, 34.127983, 29.698292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.883255, 34.172340, 29.671072>,  <30.492773, 34.246273, 29.625706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883255, 34.172340, 29.671072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025716, 0.420647, 0.906860,
		-0.215320, -0.888198, 0.405885,
		0.976205, -0.184827, 0.113415,
		31.176117, 34.116894, 29.705097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984880, 34.012917, 29.188211>,  <30.492773, 34.246273, 29.625706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984880, 34.012917, 29.188211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.635660, 34.116848, 29.353266>,  <29.426128, 34.179207, 29.452299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.635660, 34.116848, 29.353266>,  <29.984880, 34.012917, 29.188211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635660, 34.116848, 29.353266> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487090, -0.504367, -0.712992,
		0.022863, -0.823470, 0.566899,
		-0.873052, 0.259830, 0.412636,
		29.373745, 34.194798, 29.477057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491451, 33.444233, 29.260000>,  <29.984880, 34.012917, 29.188211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491451, 33.444233, 29.260000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.286997, 33.785873, 29.221540>,  <29.164324, 33.990860, 29.198465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.286997, 33.785873, 29.221540>,  <29.491451, 33.444233, 29.260000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.286997, 33.785873, 29.221540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468132, -0.370463, -0.802253,
		-0.720828, -0.365051, 0.589190,
		-0.511136, 0.854105, -0.096148,
		29.133656, 34.042107, 29.192696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800312, 33.238365, 29.369955>,  <29.491451, 33.444233, 29.260000>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800312, 33.238365, 29.369955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.788021, 33.574200, 29.153009>,  <28.780645, 33.775700, 29.022842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.788021, 33.574200, 29.153009>,  <28.800312, 33.238365, 29.369955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788021, 33.574200, 29.153009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521468, -0.476387, -0.707904,
		-0.852718, 0.261072, 0.452454,
		-0.030729, 0.839582, -0.542364,
		28.778803, 33.826073, 28.990301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.080414, 33.186028, 29.021130>,  <28.800312, 33.238365, 29.369955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.080414, 33.186028, 29.021130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.280005, 33.473656, 28.827654>,  <28.399759, 33.646233, 28.711569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.280005, 33.473656, 28.827654>,  <28.080414, 33.186028, 29.021130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280005, 33.473656, 28.827654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594073, -0.122540, -0.795022,
		-0.630949, 0.684047, 0.366036,
		0.498979, 0.719071, -0.483691,
		28.429699, 33.689377, 28.682547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.546009, 33.738338, 28.720575>,  <28.080414, 33.186028, 29.021130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.546009, 33.738338, 28.720575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.888903, 33.758343, 28.515579>,  <28.094639, 33.770344, 28.392582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.888903, 33.758343, 28.515579>,  <27.546009, 33.738338, 28.720575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888903, 33.758343, 28.515579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512267, -0.018189, -0.858634,
		-0.052262, 0.998583, 0.010027,
		0.857234, 0.050010, -0.512492,
		28.146072, 33.773346, 28.361832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350590, 34.085537, 28.169424>,  <27.546009, 33.738338, 28.720575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350590, 34.085537, 28.169424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.693335, 33.928158, 28.036169>,  <27.898981, 33.833729, 27.956215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.693335, 33.928158, 28.036169>,  <27.350590, 34.085537, 28.169424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.693335, 33.928158, 28.036169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375600, -0.033790, -0.926166,
		0.353145, 0.918724, -0.176734,
		0.856863, -0.393452, -0.333140,
		27.950394, 33.810123, 27.936228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.544237, 34.475700, 27.516249>,  <27.350590, 34.085537, 28.169424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.544237, 34.475700, 27.516249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.771975, 34.150177, 27.469656>,  <27.908617, 33.954865, 27.441700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.771975, 34.150177, 27.469656>,  <27.544237, 34.475700, 27.516249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.771975, 34.150177, 27.469656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137170, 0.045663, -0.989494,
		0.810577, 0.579338, -0.085632,
		0.569342, -0.813807, -0.116482,
		27.942778, 33.906036, 27.434711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.982134, 34.536484, 26.959791>,  <27.544237, 34.475700, 27.516249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.982134, 34.536484, 26.959791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.017700, 34.140118, 27.000166>,  <28.039040, 33.902298, 27.024391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.017700, 34.140118, 27.000166>,  <27.982134, 34.536484, 26.959791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.017700, 34.140118, 27.000166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101740, -0.109846, -0.988728,
		0.990829, 0.077646, -0.110583,
		0.088918, -0.990911, 0.100939,
		28.044376, 33.842846, 27.030447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.218239, 34.362305, 26.387758>,  <27.982134, 34.536484, 26.959791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.218239, 34.362305, 26.387758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.116199, 33.993908, 26.505539>,  <28.054976, 33.772869, 26.576206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.116199, 33.993908, 26.505539>,  <28.218239, 34.362305, 26.387758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.116199, 33.993908, 26.505539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063470, -0.287918, -0.955549,
		0.964829, -0.262450, 0.014992,
		-0.255100, -0.920990, 0.294450,
		28.039669, 33.717609, 26.593874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688498, 33.844105, 26.127296>,  <28.218239, 34.362305, 26.387758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688498, 33.844105, 26.127296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.345827, 33.651756, 26.201988>,  <28.140224, 33.536346, 26.246803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.345827, 33.651756, 26.201988>,  <28.688498, 33.844105, 26.127296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.345827, 33.651756, 26.201988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043834, -0.292815, -0.955164,
		0.513988, -0.826451, 0.229770,
		-0.856676, -0.480871, 0.186730,
		28.088823, 33.507496, 26.258007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715672, 33.233658, 25.666203>,  <28.688498, 33.844105, 26.127296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715672, 33.233658, 25.666203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.334106, 33.275490, 25.778708>,  <28.105167, 33.300591, 25.846210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.334106, 33.275490, 25.778708>,  <28.715672, 33.233658, 25.666203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.334106, 33.275490, 25.778708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300067, -0.340290, -0.891158,
		0.002514, -0.934487, 0.355988,
		-0.953915, 0.104580, 0.281264,
		28.047932, 33.306866, 25.863087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417931, 32.577953, 25.480921>,  <28.715672, 33.233658, 25.666203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.417931, 32.577953, 25.480921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.131571, 32.855610, 25.511002>,  <27.959755, 33.022205, 25.529051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.131571, 32.855610, 25.511002>,  <28.417931, 32.577953, 25.480921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131571, 32.855610, 25.511002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325571, -0.236600, -0.915437,
		-0.617650, -0.679844, 0.395374,
		-0.715899, 0.694142, 0.075201,
		27.916801, 33.063854, 25.533562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.757599, 32.228329, 25.201786>,  <28.417931, 32.577953, 25.480921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.757599, 32.228329, 25.201786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.712257, 32.625359, 25.184141>,  <27.685053, 32.863575, 25.173553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.712257, 32.625359, 25.184141>,  <27.757599, 32.228329, 25.201786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712257, 32.625359, 25.184141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534725, -0.098367, -0.839281,
		-0.837389, -0.071546, 0.541905,
		-0.113353, 0.992575, -0.044114,
		27.678251, 32.923130, 25.170906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.162783, 32.219330, 24.888451>,  <27.757599, 32.228329, 25.201786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.162783, 32.219330, 24.888451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.290359, 32.594784, 24.835922>,  <27.366905, 32.820057, 24.804405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.290359, 32.594784, 24.835922>,  <27.162783, 32.219330, 24.888451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.290359, 32.594784, 24.835922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400002, 0.007696, -0.916482,
		-0.859229, 0.344835, 0.377909,
		0.318943, 0.938632, -0.131322,
		27.386042, 32.876373, 24.796526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564577, 32.596966, 24.650295>,  <27.162783, 32.219330, 24.888451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564577, 32.596966, 24.650295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.909111, 32.768120, 24.540737>,  <27.115831, 32.870811, 24.475002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.909111, 32.768120, 24.540737>,  <26.564577, 32.596966, 24.650295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.909111, 32.768120, 24.540737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343709, 0.093771, -0.934383,
		-0.374124, 0.898956, 0.227836,
		0.861333, 0.427885, -0.273897,
		27.167511, 32.896484, 24.458569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353086, 33.148464, 24.306431>,  <26.564577, 32.596966, 24.650295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353086, 33.148464, 24.306431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.733885, 33.125580, 24.186146>,  <26.962364, 33.111851, 24.113976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.733885, 33.125580, 24.186146>,  <26.353086, 33.148464, 24.306431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.733885, 33.125580, 24.186146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284359, 0.198392, -0.937966,
		0.113317, 0.978452, 0.172601,
		0.951997, -0.057207, -0.300713,
		27.019484, 33.108418, 24.095932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.415878, 33.737354, 23.710054>,  <26.353086, 33.148464, 24.306431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.415878, 33.737354, 23.710054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.747839, 33.519623, 23.661125>,  <26.947016, 33.388985, 23.631767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.747839, 33.519623, 23.661125>,  <26.415878, 33.737354, 23.710054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.747839, 33.519623, 23.661125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105732, 0.061827, -0.992471,
		0.547797, 0.836588, -0.006243,
		0.829903, -0.544332, -0.122323,
		26.996811, 33.356323, 23.624428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.827938, 33.992107, 23.210907>,  <26.415878, 33.737354, 23.710054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.827938, 33.992107, 23.210907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.967810, 33.617538, 23.222540>,  <27.051733, 33.392799, 23.229519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.967810, 33.617538, 23.222540>,  <26.827938, 33.992107, 23.210907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.967810, 33.617538, 23.222540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048981, -0.049271, -0.997584,
		0.935588, 0.347410, -0.063096,
		0.349680, -0.936418, 0.029081,
		27.072714, 33.336613, 23.231264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237089, 33.902256, 22.607855>,  <26.827938, 33.992107, 23.210907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237089, 33.902256, 22.607855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.189985, 33.523346, 22.727049>,  <27.161722, 33.295998, 22.798565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.189985, 33.523346, 22.727049>,  <27.237089, 33.902256, 22.607855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.189985, 33.523346, 22.727049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068809, -0.291568, -0.954072,
		0.990655, -0.132857, -0.030845,
		-0.117762, -0.947279, 0.297985,
		27.154657, 33.239162, 22.816444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666380, 33.600933, 22.198479>,  <27.237089, 33.902256, 22.607855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666380, 33.600933, 22.198479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.393391, 33.324997, 22.295099>,  <27.229597, 33.159435, 22.353071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.393391, 33.324997, 22.295099>,  <27.666380, 33.600933, 22.198479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393391, 33.324997, 22.295099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096519, -0.242525, -0.965332,
		0.724508, -0.682129, 0.098935,
		-0.682475, -0.689842, 0.241550,
		27.188648, 33.118046, 22.367563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924618, 33.002766, 21.897659>,  <27.666380, 33.600933, 22.198479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.924618, 33.002766, 21.897659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.529388, 32.953869, 21.935116>,  <27.292252, 32.924530, 21.957590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.529388, 32.953869, 21.935116>,  <27.924618, 33.002766, 21.897659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.529388, 32.953869, 21.935116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029433, -0.446975, -0.894062,
		0.151145, -0.886155, 0.438046,
		-0.988073, -0.122240, 0.093640,
		27.232967, 32.917198, 21.963207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778835, 32.280376, 21.738525>,  <27.924618, 33.002766, 21.897659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778835, 32.280376, 21.738525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.439909, 32.487701, 21.692198>,  <27.236553, 32.612095, 21.664402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.439909, 32.487701, 21.692198>,  <27.778835, 32.280376, 21.738525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.439909, 32.487701, 21.692198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222401, -0.544316, -0.808862,
		-0.482281, -0.659603, 0.576479,
		-0.847315, 0.518309, -0.115817,
		27.185715, 32.643196, 21.657452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289127, 31.765747, 21.694218>,  <27.778835, 32.280376, 21.738525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289127, 31.765747, 21.694218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.133570, 32.105141, 21.550642>,  <27.040236, 32.308777, 21.464497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.133570, 32.105141, 21.550642>,  <27.289127, 31.765747, 21.694218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133570, 32.105141, 21.550642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304642, -0.486128, -0.819069,
		-0.869456, -0.209184, 0.447536,
		-0.388896, 0.848483, -0.358941,
		27.016901, 32.359684, 21.442961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.694128, 31.516462, 21.477934>,  <27.289127, 31.765747, 21.694218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.694128, 31.516462, 21.477934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.749331, 31.865116, 21.289804>,  <26.782452, 32.074310, 21.176928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.749331, 31.865116, 21.289804>,  <26.694128, 31.516462, 21.477934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749331, 31.865116, 21.289804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159375, -0.449136, -0.879134,
		-0.977524, 0.196286, 0.076932,
		0.138009, 0.871636, -0.470324,
		26.790733, 32.126606, 21.148706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.224693, 31.514362, 20.890192>,  <26.694128, 31.516462, 21.477934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.224693, 31.514362, 20.890192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.498470, 31.792564, 20.802729>,  <26.662737, 31.959486, 20.750252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.498470, 31.792564, 20.802729>,  <26.224693, 31.514362, 20.890192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498470, 31.792564, 20.802729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049344, -0.255034, -0.965672,
		-0.727396, 0.671736, -0.140237,
		0.684442, 0.695506, -0.218657,
		26.703802, 32.001217, 20.737131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.995363, 31.833380, 20.305180>,  <26.224693, 31.514362, 20.890192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.995363, 31.833380, 20.305180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.382803, 31.932585, 20.298201>,  <26.615267, 31.992107, 20.294014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.382803, 31.932585, 20.298201>,  <25.995363, 31.833380, 20.305180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.382803, 31.932585, 20.298201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005207, -0.090393, -0.995893,
		-0.248572, 0.964530, -0.088846,
		0.968599, 0.248013, -0.017447,
		26.673384, 32.006989, 20.292967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.021242, 32.278267, 19.781139>,  <25.995363, 31.833380, 20.305180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.021242, 32.278267, 19.781139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.404762, 32.172062, 19.821535>,  <26.634874, 32.108337, 19.845772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.404762, 32.172062, 19.821535>,  <26.021242, 32.278267, 19.781139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.404762, 32.172062, 19.821535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087243, -0.063097, -0.994187,
		0.270346, 0.962039, -0.037332,
		0.958802, -0.265517, 0.100989,
		26.692404, 32.092407, 19.851831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.443024, 32.660820, 19.247868>,  <26.021242, 32.278267, 19.781139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.443024, 32.660820, 19.247868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.636812, 32.332058, 19.367710>,  <26.753086, 32.134800, 19.439615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.636812, 32.332058, 19.367710>,  <26.443024, 32.660820, 19.247868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.636812, 32.332058, 19.367710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153263, -0.257440, -0.954062,
		0.861276, 0.508135, 0.001245,
		0.484472, -0.821902, 0.299605,
		26.782154, 32.085487, 19.457592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.848867, 33.203388, 19.054720>,  <26.443024, 32.660820, 19.247868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.848867, 33.203388, 19.054720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.933670, 33.499584, 18.799618>,  <26.984550, 33.677303, 18.646557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.933670, 33.499584, 18.799618>,  <26.848867, 33.203388, 19.054720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.933670, 33.499584, 18.799618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278610, 0.579709, 0.765711,
		0.936713, -0.340018, -0.083407,
		0.212004, 0.740490, -0.637753,
		26.997271, 33.721729, 18.608292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553337, 33.509579, 19.252163>,  <26.848867, 33.203388, 19.054720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553337, 33.509579, 19.252163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.375801, 33.794811, 19.035084>,  <27.269279, 33.965950, 18.904837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.375801, 33.794811, 19.035084>,  <27.553337, 33.509579, 19.252163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.375801, 33.794811, 19.035084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304288, 0.689562, 0.657201,
		0.842863, 0.126555, -0.523036,
		-0.443838, 0.713084, -0.542697,
		27.242649, 34.008736, 18.872274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903307, 34.075680, 19.390018>,  <27.553337, 33.509579, 19.252163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.903307, 34.075680, 19.390018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.571934, 34.228111, 19.225836>,  <27.373110, 34.319572, 19.127325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.571934, 34.228111, 19.225836>,  <27.903307, 34.075680, 19.390018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571934, 34.228111, 19.225836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084530, 0.809520, 0.580975,
		0.553673, 0.446602, -0.702846,
		-0.828433, 0.381082, -0.410458,
		27.323404, 34.342438, 19.102699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.022743, 34.784393, 19.252275>,  <27.903307, 34.075680, 19.390018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.022743, 34.784393, 19.252275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.630348, 34.713612, 19.284143>,  <27.394911, 34.671143, 19.303265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.630348, 34.713612, 19.284143>,  <28.022743, 34.784393, 19.252275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.630348, 34.713612, 19.284143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088978, 0.774984, 0.625686,
		-0.172459, 0.606702, -0.775996,
		-0.980990, -0.176951, 0.079670,
		27.336052, 34.660526, 19.308044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802530, 35.390087, 19.304356>,  <28.022743, 34.784393, 19.252275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802530, 35.390087, 19.304356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.500877, 35.169418, 19.446873>,  <27.319885, 35.037018, 19.532383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.500877, 35.169418, 19.446873>,  <27.802530, 35.390087, 19.304356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500877, 35.169418, 19.446873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086638, 0.621362, 0.778719,
		-0.650984, 0.556388, -0.516384,
		-0.754131, -0.551672, 0.356292,
		27.274637, 35.003918, 19.553761>
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
