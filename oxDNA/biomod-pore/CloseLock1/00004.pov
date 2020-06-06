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
	<24.575294, 35.184460, 34.999279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.271479, 34.924324, 34.994209>,  <24.089190, 34.768242, 34.991169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.271479, 34.924324, 34.994209>,  <24.575294, 35.184460, 34.999279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.271479, 34.924324, 34.994209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011212, 0.032567, -0.999407,
		0.650366, -0.758945, -0.032027,
		-0.759538, -0.650340, -0.012671,
		24.043617, 34.729221, 34.990410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.499344, 35.022129, 34.347042>,  <24.575294, 35.184460, 34.999279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.499344, 35.022129, 34.347042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.254492, 34.728470, 34.464565>,  <24.107580, 34.552273, 34.535080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.254492, 34.728470, 34.464565>,  <24.499344, 35.022129, 34.347042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.254492, 34.728470, 34.464565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249407, -0.173342, -0.952759,
		0.750395, -0.656491, -0.076994,
		-0.612131, -0.734148, 0.293808,
		24.070852, 34.508224, 34.552708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.562048, 34.253670, 34.624500>,  <24.499344, 35.022129, 34.347042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.562048, 34.253670, 34.624500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.907520, 34.268993, 34.825531>,  <25.114803, 34.278187, 34.946152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.907520, 34.268993, 34.825531>,  <24.562048, 34.253670, 34.624500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.907520, 34.268993, 34.825531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079186, -0.974415, 0.210346,
		0.497779, -0.221469, -0.838550,
		0.863681, 0.038305, 0.502581,
		25.166624, 34.280483, 34.976307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.306187, 33.913357, 34.617558>,  <24.562048, 34.253670, 34.624500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.306187, 33.913357, 34.617558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586966, 33.893806, 34.333336>,  <25.755432, 33.882076, 34.162804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.586966, 33.893806, 34.333336>,  <25.306187, 33.913357, 34.617558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.586966, 33.893806, 34.333336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411836, -0.786095, 0.460919,
		-0.581085, -0.616171, -0.531670,
		0.701948, -0.048872, -0.710549,
		25.797550, 33.879147, 34.120171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.324951, 33.222183, 34.187786>,  <25.306187, 33.913357, 34.617558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.324951, 33.222183, 34.187786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669479, 33.420921, 34.230259>,  <25.876196, 33.540165, 34.255741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.669479, 33.420921, 34.230259>,  <25.324951, 33.222183, 34.187786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.669479, 33.420921, 34.230259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410832, -0.804060, 0.429774,
		0.298905, -0.326551, -0.896672,
		0.861321, 0.496843, 0.106180,
		25.927876, 33.569973, 34.262112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.787769, 32.673027, 34.168415>,  <25.324951, 33.222183, 34.187786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.787769, 32.673027, 34.168415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.978104, 32.987553, 34.326038>,  <26.092304, 33.176270, 34.420612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.978104, 32.987553, 34.326038>,  <25.787769, 32.673027, 34.168415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.978104, 32.987553, 34.326038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498086, -0.610176, 0.616114,
		0.724906, -0.096895, -0.681999,
		0.475837, 0.786319, 0.394058,
		26.120855, 33.223450, 34.444256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.473972, 32.440517, 34.232990>,  <25.787769, 32.673027, 34.168415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.473972, 32.440517, 34.232990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452620, 32.756294, 34.477592>,  <26.439808, 32.945759, 34.624352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.452620, 32.756294, 34.477592>,  <26.473972, 32.440517, 34.232990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.452620, 32.756294, 34.477592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385347, -0.548656, 0.741946,
		0.921226, 0.275248, -0.274919,
		-0.053383, 0.789440, 0.611502,
		26.436605, 32.993126, 34.661041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.136730, 32.519939, 34.492889>,  <26.473972, 32.440517, 34.232990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.136730, 32.519939, 34.492889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899075, 32.703255, 34.757301>,  <26.756481, 32.813244, 34.915951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899075, 32.703255, 34.757301>,  <27.136730, 32.519939, 34.492889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.899075, 32.703255, 34.757301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533268, -0.390818, 0.750257,
		0.602181, 0.798266, -0.012192,
		-0.594140, 0.458292, 0.661033,
		26.720833, 32.840744, 34.955612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.604605, 32.664841, 35.013611>,  <27.136730, 32.519939, 34.492889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.604605, 32.664841, 35.013611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.239840, 32.684994, 35.176521>,  <27.020981, 32.697086, 35.274269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.239840, 32.684994, 35.176521>,  <27.604605, 32.664841, 35.013611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239840, 32.684994, 35.176521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341443, -0.457419, 0.821088,
		0.227661, 0.887823, 0.399926,
		-0.911914, 0.050378, 0.407277,
		26.966265, 32.700108, 35.298706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.742292, 32.832199, 35.686016>,  <27.604605, 32.664841, 35.013611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.742292, 32.832199, 35.686016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385435, 32.651520, 35.688854>,  <27.171320, 32.543114, 35.690556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385435, 32.651520, 35.688854>,  <27.742292, 32.832199, 35.686016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385435, 32.651520, 35.688854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273396, -0.527351, 0.804460,
		-0.359633, 0.719632, 0.593965,
		-0.892143, -0.451697, 0.007091,
		27.117792, 32.516010, 35.690983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.574837, 32.827160, 36.357620>,  <27.742292, 32.832199, 35.686016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.574837, 32.827160, 36.357620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323570, 32.553421, 36.209526>,  <27.172810, 32.389179, 36.120670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323570, 32.553421, 36.209526>,  <27.574837, 32.827160, 36.357620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323570, 32.553421, 36.209526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000077, -0.475890, 0.879505,
		-0.778078, 0.552447, 0.298992,
		-0.628167, -0.684347, -0.370237,
		27.135120, 32.348118, 36.098454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.068197, 32.753567, 36.934460>,  <27.574837, 32.827160, 36.357620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.068197, 32.753567, 36.934460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033949, 32.442242, 36.685654>,  <27.013399, 32.255447, 36.536369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033949, 32.442242, 36.685654>,  <27.068197, 32.753567, 36.934460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033949, 32.442242, 36.685654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053133, -0.619854, 0.782916,
		-0.994910, 0.100083, 0.011718,
		-0.085620, -0.778309, -0.622017,
		27.008263, 32.208748, 36.499050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.551125, 32.342983, 37.221405>,  <27.068197, 32.753567, 36.934460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.551125, 32.342983, 37.221405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771120, 32.107079, 36.984867>,  <26.903116, 31.965534, 36.842945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771120, 32.107079, 36.984867>,  <26.551125, 32.342983, 37.221405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.771120, 32.107079, 36.984867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034125, -0.691592, 0.721481,
		-0.834476, -0.416985, -0.360241,
		0.549986, -0.589766, -0.591347,
		26.936117, 31.930149, 36.807465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.382269, 31.606472, 37.438320>,  <26.551125, 32.342983, 37.221405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.382269, 31.606472, 37.438320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705486, 31.539415, 37.212414>,  <26.899418, 31.499182, 37.076870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705486, 31.539415, 37.212414>,  <26.382269, 31.606472, 37.438320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705486, 31.539415, 37.212414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304199, -0.702232, 0.643687,
		-0.504504, -0.691929, -0.516439,
		0.808046, -0.167643, -0.564763,
		26.947901, 31.489122, 37.042984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.351772, 30.862061, 37.357441>,  <26.382269, 31.606472, 37.438320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.351772, 30.862061, 37.357441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724752, 30.984247, 37.280266>,  <26.948540, 31.057560, 37.233959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724752, 30.984247, 37.280266>,  <26.351772, 30.862061, 37.357441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.724752, 30.984247, 37.280266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358182, -0.711608, 0.604416,
		0.047334, -0.632695, -0.772953,
		0.932451, 0.305467, -0.192937,
		27.004488, 31.075888, 37.222385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.776661, 30.298244, 37.276527>,  <26.351772, 30.862061, 37.357441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.776661, 30.298244, 37.276527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046762, 30.572481, 37.385334>,  <27.208824, 30.737022, 37.450619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.046762, 30.572481, 37.385334>,  <26.776661, 30.298244, 37.276527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046762, 30.572481, 37.385334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522369, -0.704886, 0.479861,
		0.520733, -0.181932, -0.834109,
		0.675254, 0.685592, 0.272021,
		27.249338, 30.778158, 37.466942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414654, 29.972767, 37.180500>,  <26.776661, 30.298244, 37.276527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414654, 29.972767, 37.180500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.508675, 30.285480, 37.411518>,  <27.565088, 30.473108, 37.550129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.508675, 30.285480, 37.411518>,  <27.414654, 29.972767, 37.180500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508675, 30.285480, 37.411518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563770, -0.593691, 0.574190,
		0.791779, 0.190639, -0.580296,
		0.235053, 0.781785, 0.577549,
		27.579191, 30.520016, 37.584782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171419, 30.026840, 37.167339>,  <27.414654, 29.972767, 37.180500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171419, 30.026840, 37.167339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041840, 30.221357, 37.491951>,  <27.964092, 30.338068, 37.686718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.041840, 30.221357, 37.491951>,  <28.171419, 30.026840, 37.167339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041840, 30.221357, 37.491951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526159, -0.620282, 0.581727,
		0.786265, 0.615443, -0.054926,
		-0.323951, 0.486291, 0.811527,
		27.944654, 30.367245, 37.735409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.679409, 30.148546, 37.589012>,  <28.171419, 30.026840, 37.167339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.679409, 30.148546, 37.589012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403006, 30.218390, 37.869587>,  <28.237164, 30.260296, 38.037933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403006, 30.218390, 37.869587>,  <28.679409, 30.148546, 37.589012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403006, 30.218390, 37.869587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526427, -0.543436, 0.653875,
		0.495360, 0.821090, 0.283600,
		-0.691009, 0.174609, 0.701441,
		28.195704, 30.270773, 38.080021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.097185, 30.385134, 38.171165>,  <28.679409, 30.148546, 37.589012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.097185, 30.385134, 38.171165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731848, 30.273531, 38.289799>,  <28.512646, 30.206570, 38.360977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731848, 30.273531, 38.289799>,  <29.097185, 30.385134, 38.171165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731848, 30.273531, 38.289799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393343, -0.416198, 0.819793,
		-0.105290, 0.865410, 0.489877,
		-0.913343, -0.279006, 0.296581,
		28.457846, 30.189829, 38.378773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993805, 30.580439, 38.841137>,  <29.097185, 30.385134, 38.171165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993805, 30.580439, 38.841137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765017, 30.254795, 38.800987>,  <28.627745, 30.059408, 38.776897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765017, 30.254795, 38.800987>,  <28.993805, 30.580439, 38.841137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765017, 30.254795, 38.800987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341350, -0.347495, 0.873343,
		-0.745876, 0.465264, 0.476653,
		-0.571969, -0.814111, -0.100371,
		28.593426, 30.010561, 38.770878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670227, 30.481665, 39.598827>,  <28.993805, 30.580439, 38.841137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670227, 30.481665, 39.598827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.651934, 30.147446, 39.379822>,  <28.640959, 29.946915, 39.248417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.651934, 30.147446, 39.379822>,  <28.670227, 30.481665, 39.598827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.651934, 30.147446, 39.379822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433699, -0.510346, 0.742598,
		-0.899897, -0.203496, 0.385714,
		-0.045732, -0.835545, -0.547515,
		28.638214, 29.896782, 39.215569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.577209, 30.048834, 40.059547>,  <28.670227, 30.481665, 39.598827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.577209, 30.048834, 40.059547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684933, 29.816507, 39.752270>,  <28.749567, 29.677111, 39.567902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684933, 29.816507, 39.752270>,  <28.577209, 30.048834, 40.059547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684933, 29.816507, 39.752270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320752, -0.698029, 0.640214,
		-0.908070, -0.418816, -0.001688,
		0.269310, -0.580818, -0.768195,
		28.765726, 29.642262, 39.521812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403360, 29.313688, 40.209229>,  <28.577209, 30.048834, 40.059547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403360, 29.313688, 40.209229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697918, 29.308229, 39.938663>,  <28.874653, 29.304955, 39.776325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.697918, 29.308229, 39.938663>,  <28.403360, 29.313688, 40.209229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697918, 29.308229, 39.938663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512846, -0.640826, 0.571253,
		-0.441260, -0.767564, -0.464902,
		0.736395, -0.013648, -0.676414,
		28.918837, 29.304134, 39.735741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.689751, 28.687868, 40.468151>,  <28.403360, 29.313688, 40.209229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.689751, 28.687868, 40.468151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.061802, 28.819441, 40.402832>,  <29.285032, 28.898384, 40.363640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.061802, 28.819441, 40.402832>,  <28.689751, 28.687868, 40.468151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.061802, 28.819441, 40.402832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197247, 0.822561, 0.533373,
		0.309766, -0.463895, 0.829968,
		0.930128, 0.328930, -0.163299,
		29.340841, 28.918119, 40.353844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809425, 29.098194, 41.048054>,  <28.689751, 28.687868, 40.468151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809425, 29.098194, 41.048054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115215, 29.211233, 40.816292>,  <29.298689, 29.279057, 40.677235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.115215, 29.211233, 40.816292>,  <28.809425, 29.098194, 41.048054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.115215, 29.211233, 40.816292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072194, 0.855610, 0.512563,
		0.640597, -0.433672, 0.633691,
		0.764476, 0.282598, -0.579409,
		29.344559, 29.296013, 40.642467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500834, 29.177608, 41.409691>,  <28.809425, 29.098194, 41.048054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500834, 29.177608, 41.409691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501202, 29.427959, 41.097725>,  <29.501423, 29.578171, 40.910545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.501202, 29.427959, 41.097725>,  <29.500834, 29.177608, 41.409691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501202, 29.427959, 41.097725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014651, 0.779827, 0.625823,
		0.999892, -0.012004, -0.008451,
		0.000922, 0.625880, -0.779919,
		29.501478, 29.615723, 40.863750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130680, 29.622744, 41.272648>,  <29.500834, 29.177608, 41.409691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130680, 29.622744, 41.272648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774773, 29.774145, 41.170631>,  <29.561228, 29.864986, 41.109421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.774773, 29.774145, 41.170631>,  <30.130680, 29.622744, 41.272648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.774773, 29.774145, 41.170631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115978, 0.727955, 0.675744,
		0.441428, 0.571678, -0.691611,
		-0.889770, 0.378505, -0.255038,
		29.507841, 29.887697, 41.094120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129366, 30.377270, 41.179359>,  <30.130680, 29.622744, 41.272648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129366, 30.377270, 41.179359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778748, 30.246233, 41.320412>,  <29.568377, 30.167610, 41.405045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778748, 30.246233, 41.320412>,  <30.129366, 30.377270, 41.179359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778748, 30.246233, 41.320412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038390, 0.777889, 0.627227,
		-0.479785, 0.536256, -0.694432,
		-0.876546, -0.327594, 0.352633,
		29.515783, 30.147955, 41.426201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679255, 30.962051, 41.030476>,  <30.129366, 30.377270, 41.179359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679255, 30.962051, 41.030476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621670, 30.716053, 41.340588>,  <29.587120, 30.568455, 41.526653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.621670, 30.716053, 41.340588>,  <29.679255, 30.962051, 41.030476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.621670, 30.716053, 41.340588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037554, 0.786270, 0.616741,
		-0.988871, 0.059671, -0.136288,
		-0.143961, -0.614995, 0.775278,
		29.578482, 30.531555, 41.573170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.235601, 31.348579, 41.523567>,  <29.679255, 30.962051, 41.030476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.235601, 31.348579, 41.523567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467022, 31.082338, 41.712139>,  <29.605875, 30.922594, 41.825283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.467022, 31.082338, 41.712139>,  <29.235601, 31.348579, 41.523567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.467022, 31.082338, 41.712139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144202, 0.652351, 0.744072,
		-0.802798, -0.362503, 0.473400,
		0.578552, -0.665605, 0.471432,
		29.640587, 30.882656, 41.853569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281845, 31.512365, 42.203838>,  <29.235601, 31.348579, 41.523567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281845, 31.512365, 42.203838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663965, 31.623947, 42.164684>,  <29.893238, 31.690897, 42.141190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.663965, 31.623947, 42.164684>,  <29.281845, 31.512365, 42.203838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.663965, 31.623947, 42.164684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295218, 0.882632, -0.365797,
		-0.015641, 0.378345, 0.925532,
		0.955302, 0.278955, -0.097889,
		29.950556, 31.707634, 42.135319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357256, 32.178963, 42.515965>,  <29.281845, 31.512365, 42.203838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357256, 32.178963, 42.515965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673820, 32.160816, 42.272125>,  <29.863760, 32.149929, 42.125824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.673820, 32.160816, 42.272125>,  <29.357256, 32.178963, 42.515965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.673820, 32.160816, 42.272125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256033, 0.880951, -0.397960,
		0.555079, 0.471027, 0.685581,
		0.791413, -0.045368, -0.609596,
		29.911243, 32.147205, 42.089245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635435, 32.972317, 42.466099>,  <29.357256, 32.178963, 42.515965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635435, 32.972317, 42.466099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816940, 32.738663, 42.196915>,  <29.925844, 32.598469, 42.035404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.816940, 32.738663, 42.196915>,  <29.635435, 32.972317, 42.466099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816940, 32.738663, 42.196915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017789, 0.749098, -0.662220,
		0.890944, 0.312463, 0.329523,
		0.453765, -0.584139, -0.672963,
		29.953070, 32.563419, 41.995026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.207203, 33.332054, 42.258804>,  <29.635435, 32.972317, 42.466099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.207203, 33.332054, 42.258804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063492, 33.077053, 41.986187>,  <29.977264, 32.924053, 41.822617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063492, 33.077053, 41.986187>,  <30.207203, 33.332054, 42.258804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063492, 33.077053, 41.986187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104772, 0.753245, -0.649342,
		0.927330, -0.161888, -0.337418,
		-0.359279, -0.637506, -0.681546,
		29.955708, 32.885799, 41.781723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554394, 33.288410, 41.601147>,  <30.207203, 33.332054, 42.258804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554394, 33.288410, 41.601147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168936, 33.194519, 41.550091>,  <29.937660, 33.138184, 41.519455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168936, 33.194519, 41.550091>,  <30.554394, 33.288410, 41.601147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168936, 33.194519, 41.550091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027495, 0.562313, -0.826467,
		0.265768, -0.792911, -0.548324,
		-0.963645, -0.234725, -0.127644,
		29.879843, 33.124100, 41.511799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401741, 32.962105, 40.990692>,  <30.554394, 33.288410, 41.601147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401741, 32.962105, 40.990692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065226, 33.159271, 41.079475>,  <29.863316, 33.277569, 41.132748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065226, 33.159271, 41.079475>,  <30.401741, 32.962105, 40.990692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065226, 33.159271, 41.079475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085746, 0.527076, -0.845482,
		-0.533739, -0.692264, -0.485689,
		-0.841291, 0.492913, 0.221962,
		29.812838, 33.307144, 41.146065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.079277, 32.951073, 40.326015>,  <30.401741, 32.962105, 40.990692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.079277, 32.951073, 40.326015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866943, 33.222549, 40.529030>,  <29.739544, 33.385433, 40.650841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866943, 33.222549, 40.529030>,  <30.079277, 32.951073, 40.326015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866943, 33.222549, 40.529030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195528, 0.484647, -0.852576,
		-0.824611, -0.551815, -0.124565,
		-0.530834, 0.678688, 0.507541,
		29.707693, 33.426155, 40.681293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576509, 33.019196, 39.840652>,  <30.079277, 32.951073, 40.326015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576509, 33.019196, 39.840652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536034, 33.330132, 40.089005>,  <29.511747, 33.516693, 40.238018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.536034, 33.330132, 40.089005>,  <29.576509, 33.019196, 39.840652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.536034, 33.330132, 40.089005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263828, 0.580775, -0.770127,
		-0.959247, -0.241737, 0.146315,
		-0.101192, 0.777344, 0.620884,
		29.505676, 33.563335, 40.275269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.809509, 33.315010, 39.821476>,  <29.576509, 33.019196, 39.840652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.809509, 33.315010, 39.821476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031828, 33.619991, 39.953995>,  <29.165220, 33.802979, 40.033504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.031828, 33.619991, 39.953995>,  <28.809509, 33.315010, 39.821476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031828, 33.619991, 39.953995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197724, 0.508326, -0.838159,
		-0.807461, 0.400342, 0.433282,
		0.555799, 0.762450, 0.331296,
		29.198568, 33.848728, 40.053383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393509, 33.875038, 39.927879>,  <28.809509, 33.315010, 39.821476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.393509, 33.875038, 39.927879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750025, 34.052792, 39.891830>,  <28.963934, 34.159443, 39.870201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750025, 34.052792, 39.891830>,  <28.393509, 33.875038, 39.927879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750025, 34.052792, 39.891830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372832, 0.605117, -0.703442,
		-0.258061, 0.660573, 0.705016,
		0.891292, 0.444383, -0.090126,
		29.017412, 34.186108, 39.864792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.354307, 34.632725, 40.030365>,  <28.393509, 33.875038, 39.927879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.354307, 34.632725, 40.030365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683125, 34.563175, 39.813473>,  <28.880415, 34.521446, 39.683338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683125, 34.563175, 39.813473>,  <28.354307, 34.632725, 40.030365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683125, 34.563175, 39.813473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368147, 0.564174, -0.739037,
		0.434408, 0.807141, 0.399766,
		0.822045, -0.173870, -0.542228,
		28.929737, 34.511013, 39.650803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375687, 35.200970, 39.577396>,  <28.354307, 34.632725, 40.030365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375687, 35.200970, 39.577396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619841, 34.935402, 39.404591>,  <28.766333, 34.776062, 39.300907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619841, 34.935402, 39.404591>,  <28.375687, 35.200970, 39.577396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619841, 34.935402, 39.404591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261705, 0.345747, -0.901094,
		0.747623, 0.663076, 0.037287,
		0.610386, -0.663920, -0.432018,
		28.802956, 34.736225, 39.274986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654892, 35.587818, 39.008301>,  <28.375687, 35.200970, 39.577396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654892, 35.587818, 39.008301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.738464, 35.202641, 38.940083>,  <28.788609, 34.971535, 38.899151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.738464, 35.202641, 38.940083>,  <28.654892, 35.587818, 39.008301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.738464, 35.202641, 38.940083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127046, 0.146190, -0.981064,
		0.969642, 0.226644, -0.091794,
		0.208933, -0.962944, -0.170547,
		28.801144, 34.913757, 38.888920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965981, 35.596333, 38.486691>,  <28.654892, 35.587818, 39.008301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965981, 35.596333, 38.486691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847704, 35.214222, 38.488110>,  <28.776737, 34.984955, 38.488960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.847704, 35.214222, 38.488110>,  <28.965981, 35.596333, 38.486691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.847704, 35.214222, 38.488110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058963, 0.014547, -0.998154,
		0.953462, -0.295356, -0.060627,
		-0.295693, -0.955277, 0.003545,
		28.758997, 34.927639, 38.489174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436693, 35.278328, 38.020008>,  <28.965981, 35.596333, 38.486691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436693, 35.278328, 38.020008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118732, 35.036118, 38.035358>,  <28.927956, 34.890793, 38.044567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118732, 35.036118, 38.035358>,  <29.436693, 35.278328, 38.020008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118732, 35.036118, 38.035358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039012, -0.114120, -0.992701,
		0.605484, -0.787602, 0.114337,
		-0.794901, -0.605525, 0.038372,
		28.880262, 34.854462, 38.046871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557421, 34.679474, 37.605148>,  <29.436693, 35.278328, 38.020008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557421, 34.679474, 37.605148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159876, 34.651730, 37.639629>,  <28.921349, 34.635082, 37.660316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.159876, 34.651730, 37.639629>,  <29.557421, 34.679474, 37.605148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159876, 34.651730, 37.639629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079846, -0.089676, -0.992765,
		0.076587, -0.993553, 0.083588,
		-0.993861, -0.069359, 0.086199,
		28.861717, 34.630920, 37.665489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401711, 34.112877, 37.168064>,  <29.557421, 34.679474, 37.605148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401711, 34.112877, 37.168064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060297, 34.317856, 37.205742>,  <28.855448, 34.440842, 37.228348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060297, 34.317856, 37.205742>,  <29.401711, 34.112877, 37.168064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060297, 34.317856, 37.205742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109073, 0.001049, -0.994033,
		-0.509490, -0.858717, 0.054999,
		-0.853535, 0.512449, 0.094197,
		28.804235, 34.471592, 37.234001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013641, 33.684792, 36.826103>,  <29.401711, 34.112877, 37.168064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013641, 33.684792, 36.826103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.833004, 34.041183, 36.844948>,  <28.724621, 34.255020, 36.856255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.833004, 34.041183, 36.844948>,  <29.013641, 33.684792, 36.826103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.833004, 34.041183, 36.844948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184312, -0.041496, -0.981992,
		-0.872979, -0.452144, 0.182957,
		-0.451594, 0.890979, 0.047111,
		28.697525, 34.308475, 36.859081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336397, 33.621441, 36.476379>,  <29.013641, 33.684792, 36.826103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336397, 33.621441, 36.476379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394386, 34.017216, 36.476593>,  <28.429180, 34.254681, 36.476719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394386, 34.017216, 36.476593>,  <28.336397, 33.621441, 36.476379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394386, 34.017216, 36.476593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206620, 0.030800, -0.977936,
		-0.967621, 0.141665, 0.208902,
		0.144973, 0.989435, 0.000532,
		28.437878, 34.314045, 36.476753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909393, 33.827835, 35.970852>,  <28.336397, 33.621441, 36.476379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.909393, 33.827835, 35.970852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143368, 34.147728, 36.024921>,  <28.283752, 34.339664, 36.057365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143368, 34.147728, 36.024921>,  <27.909393, 33.827835, 35.970852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143368, 34.147728, 36.024921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076456, 0.111553, -0.990813,
		-0.807468, 0.589897, 0.004107,
		0.584936, 0.799736, 0.135177,
		28.318848, 34.387650, 36.065475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.527428, 34.348965, 35.610172>,  <27.909393, 33.827835, 35.970852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.527428, 34.348965, 35.610172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894634, 34.499008, 35.661613>,  <28.114958, 34.589035, 35.692478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894634, 34.499008, 35.661613>,  <27.527428, 34.348965, 35.610172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894634, 34.499008, 35.661613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040455, 0.234037, -0.971386,
		-0.394470, 0.896952, 0.199675,
		0.918018, 0.375105, 0.128607,
		28.170040, 34.611538, 35.700195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.480383, 34.905952, 35.239803>,  <27.527428, 34.348965, 35.610172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.480383, 34.905952, 35.239803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871498, 34.845230, 35.297615>,  <28.106167, 34.808796, 35.332302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.871498, 34.845230, 35.297615>,  <27.480383, 34.905952, 35.239803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.871498, 34.845230, 35.297615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191358, 0.365150, -0.911069,
		0.085535, 0.918487, 0.386089,
		0.977786, -0.151810, 0.144527,
		28.164833, 34.799686, 35.340973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802288, 35.542957, 35.043934>,  <27.480383, 34.905952, 35.239803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802288, 35.542957, 35.043934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068804, 35.248444, 34.996696>,  <28.228712, 35.071735, 34.968353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.068804, 35.248444, 34.996696>,  <27.802288, 35.542957, 35.043934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.068804, 35.248444, 34.996696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217511, 0.343374, -0.913665,
		0.713267, 0.583077, 0.388936,
		0.666287, -0.736285, -0.118092,
		28.268690, 35.027557, 34.961269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364595, 35.869419, 34.739506>,  <27.802288, 35.542957, 35.043934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364595, 35.869419, 34.739506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369469, 35.475307, 34.671291>,  <28.372393, 35.238842, 34.630363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369469, 35.475307, 34.671291>,  <28.364595, 35.869419, 34.739506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369469, 35.475307, 34.671291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035848, 0.170872, -0.984641,
		0.999283, 0.005883, 0.037402,
		0.012183, -0.985276, -0.170538,
		28.373123, 35.179726, 34.620129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.786129, 35.824821, 34.168415>,  <28.364595, 35.869419, 34.739506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.786129, 35.824821, 34.168415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639433, 35.452755, 34.161659>,  <28.551414, 35.229515, 34.157604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.639433, 35.452755, 34.161659>,  <28.786129, 35.824821, 34.168415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.639433, 35.452755, 34.161659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179377, -0.052882, -0.982358,
		0.912866, -0.363301, 0.186245,
		-0.366741, -0.930170, -0.016893,
		28.529411, 35.173702, 34.156590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220758, 35.339531, 33.849003>,  <28.786129, 35.824821, 34.168415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220758, 35.339531, 33.849003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846937, 35.216301, 33.777782>,  <28.622644, 35.142365, 33.735050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846937, 35.216301, 33.777782>,  <29.220758, 35.339531, 33.849003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846937, 35.216301, 33.777782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195940, -0.027878, -0.980219,
		0.297014, -0.950955, 0.086417,
		-0.934553, -0.308071, -0.178050,
		28.566570, 35.123878, 33.724369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714939, 34.874096, 33.707272>,  <29.220758, 35.339531, 33.849003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714939, 34.874096, 33.707272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811037, 34.730953, 34.068207>,  <29.868696, 34.645069, 34.284767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.811037, 34.730953, 34.068207>,  <29.714939, 34.874096, 33.707272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.811037, 34.730953, 34.068207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761829, 0.645590, 0.053199,
		-0.601581, 0.674649, 0.427726,
		0.240245, -0.357857, 0.902342,
		29.883110, 34.623596, 34.338909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752964, 35.194038, 34.354904>,  <29.714939, 34.874096, 33.707272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752964, 35.194038, 34.354904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034361, 34.916519, 34.416534>,  <30.203199, 34.750008, 34.453514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034361, 34.916519, 34.416534>,  <29.752964, 35.194038, 34.354904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034361, 34.916519, 34.416534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690933, 0.718435, 0.080399,
		-0.166475, 0.049896, 0.984783,
		0.703490, -0.693803, 0.154076,
		30.245407, 34.708378, 34.462757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093191, 35.376274, 34.957199>,  <29.752964, 35.194038, 34.354904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093191, 35.376274, 34.957199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329214, 35.163551, 34.714214>,  <30.470827, 35.035915, 34.568424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329214, 35.163551, 34.714214>,  <30.093191, 35.376274, 34.957199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329214, 35.163551, 34.714214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689471, 0.723398, 0.036406,
		0.420076, -0.440309, 0.793514,
		0.590056, -0.531811, -0.607462,
		30.506231, 35.004009, 34.531975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.852505, 35.418900, 35.161522>,  <30.093191, 35.376274, 34.957199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.852505, 35.418900, 35.161522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821268, 35.330372, 34.772694>,  <30.802526, 35.277256, 34.539398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821268, 35.330372, 34.772694>,  <30.852505, 35.418900, 35.161522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821268, 35.330372, 34.772694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611236, 0.759657, -0.222065,
		0.787586, -0.611505, 0.075955,
		-0.078094, -0.221322, -0.972069,
		30.797840, 35.263977, 34.481071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627707, 35.335014, 34.960487>,  <30.852505, 35.418900, 35.161522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627707, 35.335014, 34.960487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345745, 35.423244, 34.690834>,  <31.176567, 35.476181, 34.529041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345745, 35.423244, 34.690834>,  <31.627707, 35.335014, 34.960487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345745, 35.423244, 34.690834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509327, 0.818871, -0.264645,
		0.493654, -0.529904, -0.689571,
		-0.704905, 0.220574, -0.674133,
		31.134274, 35.489418, 34.488594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923342, 35.482349, 34.223984>,  <31.627707, 35.335014, 34.960487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923342, 35.482349, 34.223984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584749, 35.695011, 34.212627>,  <31.381594, 35.822609, 34.205814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.584749, 35.695011, 34.212627>,  <31.923342, 35.482349, 34.223984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584749, 35.695011, 34.212627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488168, 0.753744, -0.439957,
		-0.212506, -0.386277, -0.897570,
		-0.846483, 0.531658, -0.028393,
		31.330805, 35.854507, 34.204109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144577, 34.814747, 33.897549>,  <31.923342, 35.482349, 34.223984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144577, 34.814747, 33.897549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342602, 34.479069, 33.807518>,  <32.461418, 34.277660, 33.753502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.342602, 34.479069, 33.807518>,  <32.144577, 34.814747, 33.897549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.342602, 34.479069, 33.807518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051599, -0.230192, 0.971776,
		-0.867322, -0.492707, -0.070658,
		0.495066, -0.839196, -0.225074,
		32.491123, 34.227310, 33.739994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855677, 34.362274, 34.341103>,  <32.144577, 34.814747, 33.897549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855677, 34.362274, 34.341103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193554, 34.191132, 34.212456>,  <32.396278, 34.088448, 34.135269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.193554, 34.191132, 34.212456>,  <31.855677, 34.362274, 34.341103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193554, 34.191132, 34.212456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140404, -0.402713, 0.904494,
		-0.516510, -0.809174, -0.280096,
		0.844692, -0.427854, -0.321617,
		32.446960, 34.062775, 34.115971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789242, 33.615864, 34.417198>,  <31.855677, 34.362274, 34.341103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789242, 33.615864, 34.417198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177731, 33.709274, 34.435925>,  <32.410824, 33.765320, 34.447159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177731, 33.709274, 34.435925>,  <31.789242, 33.615864, 34.417198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177731, 33.709274, 34.435925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079732, -0.504009, 0.860010,
		0.224433, -0.831528, -0.508124,
		0.971222, 0.233529, 0.046817,
		32.469097, 33.779331, 34.449970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181702, 32.965687, 34.547298>,  <31.789242, 33.615864, 34.417198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181702, 32.965687, 34.547298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406425, 33.280499, 34.649242>,  <32.541260, 33.469387, 34.710407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406425, 33.280499, 34.649242>,  <32.181702, 32.965687, 34.547298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406425, 33.280499, 34.649242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172688, -0.412860, 0.894274,
		0.809040, -0.458403, -0.367860,
		0.561813, 0.787028, 0.254860,
		32.574970, 33.516605, 34.725700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726757, 32.673016, 34.855091>,  <32.181702, 32.965687, 34.547298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726757, 32.673016, 34.855091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751442, 33.043259, 35.004463>,  <32.766254, 33.265404, 35.094086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751442, 33.043259, 35.004463>,  <32.726757, 32.673016, 34.855091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751442, 33.043259, 35.004463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070134, -0.377236, 0.923458,
		0.995627, -0.030802, -0.088197,
		0.061715, 0.925605, 0.373426,
		32.769958, 33.320942, 35.116489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306942, 32.571404, 35.355957>,  <32.726757, 32.673016, 34.855091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306942, 32.571404, 35.355957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136108, 32.924385, 35.434830>,  <33.033607, 33.136173, 35.482155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136108, 32.924385, 35.434830>,  <33.306942, 32.571404, 35.355957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136108, 32.924385, 35.434830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271961, -0.082614, 0.958755,
		0.862345, 0.463094, -0.204709,
		-0.427082, 0.882450, 0.197185,
		33.007984, 33.189121, 35.493984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793785, 33.095615, 35.692982>,  <33.306942, 32.571404, 35.355957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793785, 33.095615, 35.692982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420712, 33.192421, 35.799965>,  <33.196869, 33.250504, 35.864155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420712, 33.192421, 35.799965>,  <33.793785, 33.095615, 35.692982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420712, 33.192421, 35.799965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247692, -0.109313, 0.962652,
		0.262214, 0.964095, 0.042009,
		-0.932680, 0.242016, 0.267462,
		33.140907, 33.265026, 35.880203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864021, 33.502682, 36.316147>,  <33.793785, 33.095615, 35.692982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864021, 33.502682, 36.316147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491558, 33.356884, 36.312477>,  <33.268078, 33.269405, 36.310276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491558, 33.356884, 36.312477>,  <33.864021, 33.502682, 36.316147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491558, 33.356884, 36.312477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124911, -0.342547, 0.931160,
		-0.342547, 0.865912, 0.364496,
		-0.931160, -0.364496, -0.009176,
		33.212212, 33.247536, 36.309723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587845, 33.640450, 37.004269>,  <33.864021, 33.502682, 36.316147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587845, 33.640450, 37.004269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313103, 33.375748, 36.884064>,  <33.148258, 33.216927, 36.811943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313103, 33.375748, 36.884064>,  <33.587845, 33.640450, 37.004269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313103, 33.375748, 36.884064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092443, -0.489661, 0.866999,
		-0.720891, 0.567723, 0.397501,
		-0.686856, -0.661757, -0.300510,
		33.107044, 33.177219, 36.793911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912270, 33.616772, 37.472649>,  <33.587845, 33.640450, 37.004269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912270, 33.616772, 37.472649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969051, 33.270905, 37.279900>,  <33.003120, 33.063385, 37.164249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969051, 33.270905, 37.279900>,  <32.912270, 33.616772, 37.472649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969051, 33.270905, 37.279900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192007, -0.453509, 0.870323,
		-0.971073, -0.216067, 0.101646,
		0.141951, -0.864665, -0.481877,
		33.011635, 33.011505, 37.135338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780754, 33.181412, 38.069374>,  <32.912270, 33.616772, 37.472649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780754, 33.181412, 38.069374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946629, 32.948902, 37.789333>,  <33.046154, 32.809395, 37.621307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946629, 32.948902, 37.789333>,  <32.780754, 33.181412, 38.069374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946629, 32.948902, 37.789333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253830, -0.664947, 0.702435,
		-0.873844, -0.469000, -0.128200,
		0.414688, -0.581278, -0.700107,
		33.071033, 32.774517, 37.579300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537903, 32.537464, 38.186241>,  <32.780754, 33.181412, 38.069374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537903, 32.537464, 38.186241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894608, 32.500305, 38.009098>,  <33.108631, 32.478008, 37.902813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894608, 32.500305, 38.009098>,  <32.537903, 32.537464, 38.186241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894608, 32.500305, 38.009098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309569, -0.588576, 0.746824,
		-0.330037, -0.803087, -0.496112,
		0.891764, -0.092899, -0.442862,
		33.162136, 32.472435, 37.876240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688583, 31.857248, 38.259892>,  <32.537903, 32.537464, 38.186241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688583, 31.857248, 38.259892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044762, 32.006855, 38.156189>,  <33.258469, 32.096619, 38.093967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.044762, 32.006855, 38.156189>,  <32.688583, 31.857248, 38.259892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044762, 32.006855, 38.156189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431338, -0.512014, 0.742825,
		0.145088, -0.773274, -0.617250,
		0.890447, 0.374018, -0.259255,
		33.311897, 32.119061, 38.078411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247402, 31.291647, 38.053734>,  <32.688583, 31.857248, 38.259892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247402, 31.291647, 38.053734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420727, 31.609915, 38.223038>,  <33.524723, 31.800877, 38.324619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420727, 31.609915, 38.223038>,  <33.247402, 31.291647, 38.053734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420727, 31.609915, 38.223038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504431, -0.603301, 0.617719,
		0.746852, -0.054163, -0.662781,
		0.433314, 0.795672, 0.423255,
		33.550720, 31.848616, 38.350014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921684, 31.093567, 38.081795>,  <33.247402, 31.291647, 38.053734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921684, 31.093567, 38.081795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866024, 31.346821, 38.386368>,  <33.832626, 31.498774, 38.569111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866024, 31.346821, 38.386368>,  <33.921684, 31.093567, 38.081795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866024, 31.346821, 38.386368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387246, -0.672890, 0.630286,
		0.911415, 0.382566, -0.151545,
		-0.139153, 0.633137, 0.761429,
		33.824280, 31.536762, 38.614796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318810, 30.760937, 38.580135>,  <33.921684, 31.093567, 38.081795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318810, 30.760937, 38.580135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167557, 31.073172, 38.779213>,  <34.076805, 31.260513, 38.898659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167557, 31.073172, 38.779213>,  <34.318810, 30.760937, 38.580135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167557, 31.073172, 38.779213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381977, -0.358158, 0.851949,
		0.843274, 0.512256, -0.162735,
		-0.378131, 0.780587, 0.497696,
		34.054119, 31.307348, 38.928520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835098, 31.043800, 39.034016>,  <34.318810, 30.760937, 38.580135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835098, 31.043800, 39.034016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470673, 31.118601, 39.180981>,  <34.252018, 31.163481, 39.269161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470673, 31.118601, 39.180981>,  <34.835098, 31.043800, 39.034016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470673, 31.118601, 39.180981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317705, -0.249486, 0.914779,
		0.262729, 0.950151, 0.167887,
		-0.911064, 0.187000, 0.367415,
		34.197353, 31.174702, 39.291206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021744, 31.157413, 39.802513>,  <34.835098, 31.043800, 39.034016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021744, 31.157413, 39.802513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623764, 31.122086, 39.783463>,  <34.384975, 31.100889, 39.772034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623764, 31.122086, 39.783463>,  <35.021744, 31.157413, 39.802513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623764, 31.122086, 39.783463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020566, -0.285077, 0.958284,
		-0.098210, 0.954427, 0.281822,
		-0.994953, -0.088317, -0.047626,
		34.325279, 31.095591, 39.769176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728649, 31.363037, 40.440922>,  <35.021744, 31.157413, 39.802513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728649, 31.363037, 40.440922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439766, 31.135603, 40.283379>,  <34.266438, 30.999144, 40.188850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.439766, 31.135603, 40.283379>,  <34.728649, 31.363037, 40.440922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439766, 31.135603, 40.283379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114385, -0.463412, 0.878729,
		-0.682152, 0.679678, 0.269642,
		-0.722208, -0.568584, -0.393862,
		34.223103, 30.965027, 40.165218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084583, 31.525274, 40.806328>,  <34.728649, 31.363037, 40.440922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084583, 31.525274, 40.806328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072727, 31.156195, 40.652576>,  <34.065613, 30.934748, 40.560326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072727, 31.156195, 40.652576>,  <34.084583, 31.525274, 40.806328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072727, 31.156195, 40.652576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188602, -0.372481, 0.908673,
		-0.981606, 0.099425, -0.162984,
		-0.029637, -0.922699, -0.384381,
		34.063835, 30.879385, 40.537262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467426, 31.428268, 41.082699>,  <34.084583, 31.525274, 40.806328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467426, 31.428268, 41.082699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639019, 31.078373, 40.992535>,  <33.741974, 30.868437, 40.938438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639019, 31.078373, 40.992535>,  <33.467426, 31.428268, 41.082699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639019, 31.078373, 40.992535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079555, -0.285150, 0.955176,
		-0.899802, -0.391823, -0.191915,
		0.428984, -0.874737, -0.225407,
		33.767715, 30.815952, 40.924911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998013, 30.858427, 41.399052>,  <33.467426, 31.428268, 41.082699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998013, 30.858427, 41.399052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368294, 30.721554, 41.334568>,  <33.590462, 30.639429, 41.295876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368294, 30.721554, 41.334568>,  <32.998013, 30.858427, 41.399052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368294, 30.721554, 41.334568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029575, -0.490364, 0.871015,
		-0.377097, -0.801533, -0.464051,
		0.925702, -0.342182, -0.161210,
		33.646004, 30.618898, 41.286205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979099, 30.258327, 41.809361>,  <32.998013, 30.858427, 41.399052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979099, 30.258327, 41.809361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369694, 30.254749, 41.723202>,  <33.604050, 30.252602, 41.671509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.369694, 30.254749, 41.723202>,  <32.979099, 30.258327, 41.809361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369694, 30.254749, 41.723202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187482, -0.457971, 0.868972,
		-0.106416, -0.888922, -0.445526,
		0.976487, -0.008945, -0.215393,
		33.662640, 30.252066, 41.658585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.315323, 29.537352, 41.835384>,  <32.979099, 30.258327, 41.809361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.315323, 29.537352, 41.835384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593422, 29.816088, 41.905853>,  <33.760281, 29.983330, 41.948135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593422, 29.816088, 41.905853>,  <33.315323, 29.537352, 41.835384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593422, 29.816088, 41.905853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154069, -0.383894, 0.910433,
		0.702060, -0.605837, -0.374264,
		0.695252, 0.696841, 0.176175,
		33.801998, 30.025141, 41.958706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860054, 29.134340, 42.260586>,  <33.315323, 29.537352, 41.835384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860054, 29.134340, 42.260586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871456, 29.528452, 42.328014>,  <33.878300, 29.764919, 42.368469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871456, 29.528452, 42.328014>,  <33.860054, 29.134340, 42.260586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871456, 29.528452, 42.328014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114653, -0.170748, 0.978621,
		0.992996, -0.008573, -0.117833,
		0.028509, 0.985277, 0.168569,
		33.880009, 29.824036, 42.378586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205635, 29.211815, 42.899689>,  <33.860054, 29.134340, 42.260586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205635, 29.211815, 42.899689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083969, 29.591867, 42.872185>,  <34.010967, 29.819899, 42.855682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083969, 29.591867, 42.872185>,  <34.205635, 29.211815, 42.899689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083969, 29.591867, 42.872185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198039, 0.007534, 0.980165,
		0.931806, 0.311752, 0.185872,
		-0.304168, 0.950134, -0.068759,
		33.992718, 29.876907, 42.851559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459316, 29.617241, 43.491661>,  <34.205635, 29.211815, 42.899689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459316, 29.617241, 43.491661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163982, 29.866337, 43.388073>,  <33.986782, 30.015795, 43.325920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163982, 29.866337, 43.388073>,  <34.459316, 29.617241, 43.491661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163982, 29.866337, 43.388073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326458, 0.006012, 0.945192,
		0.590164, 0.782407, 0.198859,
		-0.738330, 0.622738, -0.258972,
		33.942482, 30.053158, 43.310383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.487923, 30.231726, 43.943859>,  <34.459316, 29.617241, 43.491661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.487923, 30.231726, 43.943859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120930, 30.257597, 43.786861>,  <33.900734, 30.273121, 43.692665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.120930, 30.257597, 43.786861>,  <34.487923, 30.231726, 43.943859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.120930, 30.257597, 43.786861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365818, 0.250344, 0.896385,
		0.156236, 0.965994, -0.206024,
		-0.917479, 0.064680, -0.392490,
		33.845688, 30.277000, 43.669113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250206, 30.809830, 44.210918>,  <34.487923, 30.231726, 43.943859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250206, 30.809830, 44.210918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925728, 30.607340, 44.093819>,  <33.731041, 30.485846, 44.023560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925728, 30.607340, 44.093819>,  <34.250206, 30.809830, 44.210918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925728, 30.607340, 44.093819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455338, 0.232666, 0.859380,
		-0.366925, 0.830424, -0.419240,
		-0.811193, -0.506224, -0.292752,
		33.682369, 30.455473, 44.005993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677872, 31.165674, 44.416908>,  <34.250206, 30.809830, 44.210918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677872, 31.165674, 44.416908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538734, 30.791559, 44.390858>,  <33.455254, 30.567089, 44.375229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538734, 30.791559, 44.390858>,  <33.677872, 31.165674, 44.416908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538734, 30.791559, 44.390858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516428, 0.133166, 0.845913,
		-0.782501, 0.327876, -0.529329,
		-0.347843, -0.935288, -0.065122,
		33.434383, 30.510973, 44.371323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987782, 31.108536, 44.765232>,  <33.677872, 31.165674, 44.416908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987782, 31.108536, 44.765232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072002, 30.717592, 44.773609>,  <33.122536, 30.483027, 44.778633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.072002, 30.717592, 44.773609>,  <32.987782, 31.108536, 44.765232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.072002, 30.717592, 44.773609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562912, -0.103698, 0.819986,
		-0.799249, -0.184434, -0.572001,
		0.210549, -0.977359, 0.020939,
		33.135166, 30.424385, 44.779892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419395, 30.794176, 44.995098>,  <32.987782, 31.108536, 44.765232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419395, 30.794176, 44.995098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696545, 30.510414, 45.046741>,  <32.862835, 30.340157, 45.077728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.696545, 30.510414, 45.046741>,  <32.419395, 30.794176, 44.995098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696545, 30.510414, 45.046741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458233, -0.294958, 0.838464,
		-0.556731, -0.640111, -0.529442,
		0.692873, -0.709407, 0.129108,
		32.904408, 30.297592, 45.085472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086605, 30.213003, 45.079060>,  <32.419395, 30.794176, 44.995098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086605, 30.213003, 45.079060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441265, 30.159878, 45.256241>,  <32.654060, 30.128002, 45.362549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441265, 30.159878, 45.256241>,  <32.086605, 30.213003, 45.079060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441265, 30.159878, 45.256241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458268, -0.380711, 0.803150,
		0.061969, -0.915106, -0.398422,
		0.886651, -0.132814, 0.442956,
		32.707260, 30.120033, 45.389126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914848, 29.699125, 45.519363>,  <32.086605, 30.213003, 45.079060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914848, 29.699125, 45.519363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278343, 29.787264, 45.661148>,  <32.496441, 29.840147, 45.746220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.278343, 29.787264, 45.661148>,  <31.914848, 29.699125, 45.519363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278343, 29.787264, 45.661148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207135, -0.499200, 0.841365,
		0.362338, -0.838002, -0.408000,
		0.908739, 0.220347, 0.354459,
		32.550964, 29.853369, 45.767487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185070, 29.023003, 45.793888>,  <31.914848, 29.699125, 45.519363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185070, 29.023003, 45.793888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353836, 29.341448, 45.967415>,  <32.455093, 29.532515, 46.071529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.353836, 29.341448, 45.967415>,  <32.185070, 29.023003, 45.793888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353836, 29.341448, 45.967415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281239, -0.339961, 0.897402,
		0.861914, -0.500629, 0.080465,
		0.421910, 0.796114, 0.433814,
		32.480408, 29.580282, 46.097561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614689, 28.738503, 46.304218>,  <32.185070, 29.023003, 45.793888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614689, 28.738503, 46.304218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575199, 29.110403, 46.446102>,  <32.551506, 29.333544, 46.531231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.575199, 29.110403, 46.446102>,  <32.614689, 28.738503, 46.304218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575199, 29.110403, 46.446102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093739, -0.363555, 0.926844,
		0.990690, 0.058253, 0.123047,
		-0.098726, 0.929749, 0.354710,
		32.545582, 29.389328, 46.552517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950741, 28.635714, 46.890617>,  <32.614689, 28.738503, 46.304218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950741, 28.635714, 46.890617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734974, 28.964567, 46.963417>,  <32.605515, 29.161879, 47.007099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734974, 28.964567, 46.963417>,  <32.950741, 28.635714, 46.890617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734974, 28.964567, 46.963417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004427, -0.213372, 0.976961,
		0.842025, 0.527798, 0.111458,
		-0.539420, 0.822132, 0.182002,
		32.573147, 29.211206, 47.018017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204407, 28.918234, 47.542999>,  <32.950741, 28.635714, 46.890617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204407, 28.918234, 47.542999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845055, 29.085861, 47.490391>,  <32.629444, 29.186438, 47.458828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845055, 29.085861, 47.490391>,  <33.204407, 28.918234, 47.542999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845055, 29.085861, 47.490391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191837, -0.105015, 0.975792,
		0.395112, 0.901861, 0.174736,
		-0.898379, 0.419068, -0.131518,
		32.575542, 29.211582, 47.450935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929268, 29.429180, 48.156769>,  <33.204407, 28.918234, 47.542999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929268, 29.429180, 48.156769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587082, 29.320528, 47.980408>,  <32.381771, 29.255337, 47.874592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587082, 29.320528, 47.980408>,  <32.929268, 29.429180, 48.156769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587082, 29.320528, 47.980408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396919, -0.202934, 0.895139,
		-0.332623, 0.940762, 0.065787,
		-0.855463, -0.271632, -0.440907,
		32.330444, 29.239038, 47.848137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406452, 29.693327, 48.592049>,  <32.929268, 29.429180, 48.156769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406452, 29.693327, 48.592049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263168, 29.374634, 48.397358>,  <32.177197, 29.183418, 48.280544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263168, 29.374634, 48.397358>,  <32.406452, 29.693327, 48.592049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263168, 29.374634, 48.397358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242749, -0.423910, 0.872567,
		-0.901532, 0.430713, -0.041559,
		-0.358209, -0.796735, -0.486723,
		32.155704, 29.135612, 48.251343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850685, 29.367016, 48.996086>,  <32.406452, 29.693327, 48.592049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850685, 29.367016, 48.996086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960718, 29.074017, 48.746998>,  <32.026737, 28.898216, 48.597546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960718, 29.074017, 48.746998>,  <31.850685, 29.367016, 48.996086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960718, 29.074017, 48.746998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152707, -0.672772, 0.723919,
		-0.949216, -0.104043, -0.296924,
		0.275081, -0.732498, -0.622718,
		32.043243, 28.854267, 48.560181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284977, 28.874722, 48.888824>,  <31.850685, 29.367016, 48.996086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284977, 28.874722, 48.888824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644150, 28.705753, 48.839386>,  <31.859653, 28.604372, 48.809723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644150, 28.705753, 48.839386>,  <31.284977, 28.874722, 48.888824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644150, 28.705753, 48.839386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209423, -0.657058, 0.724167,
		-0.387113, -0.624370, -0.678459,
		0.897934, -0.422419, -0.123598,
		31.913530, 28.579027, 48.802307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155666, 28.186552, 48.847111>,  <31.284977, 28.874722, 48.888824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155666, 28.186552, 48.847111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545525, 28.229355, 48.925713>,  <31.779440, 28.255037, 48.972874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.545525, 28.229355, 48.925713>,  <31.155666, 28.186552, 48.847111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545525, 28.229355, 48.925713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088878, -0.620833, 0.778889,
		0.205346, -0.776606, -0.595581,
		0.974646, 0.107007, 0.196509,
		31.837917, 28.261457, 48.984665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681475, 27.543728, 48.875210>,  <31.155666, 28.186552, 48.847111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681475, 27.543728, 48.875210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753010, 27.825638, 49.149818>,  <31.795931, 27.994783, 49.314583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753010, 27.825638, 49.149818>,  <31.681475, 27.543728, 48.875210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753010, 27.825638, 49.149818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143022, -0.671735, 0.726854,
		0.973428, -0.228177, -0.019334,
		0.178839, 0.704774, 0.686520,
		31.806662, 28.037069, 49.355774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156292, 27.319082, 49.476097>,  <31.681475, 27.543728, 48.875210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156292, 27.319082, 49.476097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906557, 27.590235, 49.631363>,  <31.756716, 27.752926, 49.724522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906557, 27.590235, 49.631363>,  <32.156292, 27.319082, 49.476097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906557, 27.590235, 49.631363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227519, -0.633180, 0.739810,
		0.747284, 0.373578, 0.549551,
		-0.624341, 0.677881, 0.388169,
		31.719255, 27.793600, 49.747814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382328, 27.305923, 50.185699>,  <32.156292, 27.319082, 49.476097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382328, 27.305923, 50.185699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015236, 27.439138, 50.099121>,  <31.794979, 27.519068, 50.047173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.015236, 27.439138, 50.099121>,  <32.382328, 27.305923, 50.185699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015236, 27.439138, 50.099121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397195, -0.769999, 0.499338,
		-0.000364, 0.544230, 0.838936,
		-0.917734, 0.333039, -0.216446,
		31.739916, 27.539051, 50.034187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620728, 27.170328, 50.925068>,  <32.382328, 27.305923, 50.185699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620728, 27.170328, 50.925068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734066, 26.830036, 50.747993>,  <32.802071, 26.625862, 50.641750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734066, 26.830036, 50.747993>,  <32.620728, 27.170328, 50.925068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734066, 26.830036, 50.747993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058763, 0.476140, -0.877404,
		0.957214, 0.222600, 0.184906,
		0.283351, -0.850729, -0.442688,
		32.819073, 26.574818, 50.615189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.198891, 27.360922, 50.620007>,  <32.620728, 27.170328, 50.925068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.198891, 27.360922, 50.620007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016216, 27.052471, 50.442554>,  <32.906612, 26.867401, 50.336082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016216, 27.052471, 50.442554>,  <33.198891, 27.360922, 50.620007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016216, 27.052471, 50.442554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050538, 0.475372, -0.878332,
		0.888192, -0.423540, -0.178124,
		-0.456685, -0.771126, -0.443627,
		32.879211, 26.821133, 50.309467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701660, 27.063896, 50.088943>,  <33.198891, 27.360922, 50.620007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701660, 27.063896, 50.088943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314194, 27.013191, 50.003513>,  <33.081715, 26.982769, 49.952255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314194, 27.013191, 50.003513>,  <33.701660, 27.063896, 50.088943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314194, 27.013191, 50.003513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187661, 0.189722, -0.963737,
		0.162677, -0.973621, -0.159991,
		-0.968669, -0.126754, -0.213574,
		33.023594, 26.975163, 49.939442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676136, 27.182186, 49.397606>,  <33.701660, 27.063896, 50.088943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676136, 27.182186, 49.397606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710526, 26.792637, 49.313526>,  <33.731159, 26.558908, 49.263081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.710526, 26.792637, 49.313526>,  <33.676136, 27.182186, 49.397606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710526, 26.792637, 49.313526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478368, 0.144717, -0.866153,
		0.873941, 0.175015, -0.453428,
		0.085971, -0.973872, -0.210196,
		33.736317, 26.500475, 49.250469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996078, 27.097406, 48.775646>,  <33.676136, 27.182186, 49.397606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996078, 27.097406, 48.775646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812046, 26.745756, 48.825390>,  <33.701626, 26.534765, 48.855236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812046, 26.745756, 48.825390>,  <33.996078, 27.097406, 48.775646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812046, 26.745756, 48.825390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385917, 0.071861, -0.919731,
		0.799622, -0.471142, -0.372331,
		-0.460080, -0.879125, 0.124360,
		33.674023, 26.482019, 48.862698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322548, 26.608690, 48.378757>,  <33.996078, 27.097406, 48.775646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322548, 26.608690, 48.378757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939396, 26.522911, 48.455162>,  <33.709507, 26.471443, 48.501003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939396, 26.522911, 48.455162>,  <34.322548, 26.608690, 48.378757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939396, 26.522911, 48.455162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203526, 0.037691, -0.978344,
		0.202604, -0.976008, -0.079749,
		-0.957877, -0.214447, 0.191007,
		33.652031, 26.458578, 48.512463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180702, 25.995443, 48.070679>,  <34.322548, 26.608690, 48.378757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180702, 25.995443, 48.070679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851330, 26.222383, 48.067303>,  <33.653706, 26.358547, 48.065277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851330, 26.222383, 48.067303>,  <34.180702, 25.995443, 48.070679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851330, 26.222383, 48.067303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073209, -0.120988, -0.989951,
		-0.562670, -0.814541, 0.141161,
		-0.823434, 0.567350, -0.008444,
		33.604301, 26.392588, 48.064770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751740, 25.727926, 47.580441>,  <34.180702, 25.995443, 48.070679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751740, 25.727926, 47.580441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641621, 26.108963, 47.632252>,  <33.575550, 26.337585, 47.663338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.641621, 26.108963, 47.632252>,  <33.751740, 25.727926, 47.580441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641621, 26.108963, 47.632252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018853, 0.129360, -0.991418,
		-0.961174, -0.275376, -0.017653,
		-0.275297, 0.952593, 0.129529,
		33.559032, 26.394741, 47.671112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220615, 25.799225, 47.143566>,  <33.751740, 25.727926, 47.580441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220615, 25.799225, 47.143566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350529, 26.174786, 47.189133>,  <33.428478, 26.400122, 47.216473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350529, 26.174786, 47.189133>,  <33.220615, 25.799225, 47.143566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350529, 26.174786, 47.189133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076099, 0.094111, -0.992649,
		-0.942721, 0.331069, -0.040884,
		0.324787, 0.938902, 0.113914,
		33.447964, 26.456457, 47.223309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846466, 26.199604, 46.647755>,  <33.220615, 25.799225, 47.143566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846466, 26.199604, 46.647755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153961, 26.431496, 46.755802>,  <33.338459, 26.570631, 46.820629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153961, 26.431496, 46.755802>,  <32.846466, 26.199604, 46.647755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153961, 26.431496, 46.755802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133855, 0.267154, -0.954312,
		-0.625403, 0.769769, 0.127771,
		0.768735, 0.579727, 0.270116,
		33.384583, 26.605413, 46.836838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660099, 26.929405, 46.516235>,  <32.846466, 26.199604, 46.647755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660099, 26.929405, 46.516235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058868, 26.919851, 46.546101>,  <33.298130, 26.914120, 46.564022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058868, 26.919851, 46.546101>,  <32.660099, 26.929405, 46.516235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058868, 26.919851, 46.546101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078362, 0.330709, -0.940474,
		-0.002232, 0.943431, 0.331563,
		0.996922, -0.023883, 0.074667,
		33.357944, 26.912687, 46.568501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929268, 27.571825, 46.260082>,  <32.660099, 26.929405, 46.516235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929268, 27.571825, 46.260082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233204, 27.315136, 46.218437>,  <33.415565, 27.161123, 46.193451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233204, 27.315136, 46.218437>,  <32.929268, 27.571825, 46.260082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233204, 27.315136, 46.218437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161428, 0.341367, -0.925964,
		0.629753, 0.686775, 0.362975,
		0.759837, -0.641723, -0.104112,
		33.461155, 27.122620, 46.187202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427383, 27.833481, 45.817505>,  <32.929268, 27.571825, 46.260082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427383, 27.833481, 45.817505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519077, 27.445574, 45.784023>,  <33.574093, 27.212830, 45.763935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519077, 27.445574, 45.784023>,  <33.427383, 27.833481, 45.817505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519077, 27.445574, 45.784023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133627, 0.116530, -0.984157,
		0.964155, 0.214419, 0.156300,
		0.229235, -0.969766, -0.083701,
		33.587849, 27.154644, 45.758911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812847, 27.778605, 45.251160>,  <33.427383, 27.833481, 45.817505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812847, 27.778605, 45.251160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719463, 27.394331, 45.311272>,  <33.663433, 27.163767, 45.347340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719463, 27.394331, 45.311272>,  <33.812847, 27.778605, 45.251160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719463, 27.394331, 45.311272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117640, -0.181325, -0.976361,
		0.965223, -0.210265, 0.155348,
		-0.233463, -0.960682, 0.150284,
		33.649426, 27.106127, 45.356358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221523, 27.441290, 44.838234>,  <33.812847, 27.778605, 45.251160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221523, 27.441290, 44.838234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918877, 27.188517, 44.905392>,  <33.737289, 27.036852, 44.945686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.918877, 27.188517, 44.905392>,  <34.221523, 27.441290, 44.838234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918877, 27.188517, 44.905392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225123, 0.010694, -0.974272,
		0.613880, -0.774949, -0.150354,
		-0.756618, -0.631933, 0.167894,
		33.691891, 26.998936, 44.955761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375751, 26.926439, 44.492218>,  <34.221523, 27.441290, 44.838234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375751, 26.926439, 44.492218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978081, 26.922033, 44.535080>,  <33.739479, 26.919390, 44.560799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978081, 26.922033, 44.535080>,  <34.375751, 26.926439, 44.492218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978081, 26.922033, 44.535080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107201, 0.003801, -0.994230,
		0.010578, -0.999932, -0.004963,
		-0.994181, -0.011049, 0.107153,
		33.679825, 26.918730, 44.567226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170982, 26.450521, 44.035198>,  <34.375751, 26.926439, 44.492218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170982, 26.450521, 44.035198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816856, 26.622486, 44.106071>,  <33.604382, 26.725664, 44.148598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816856, 26.622486, 44.106071>,  <34.170982, 26.450521, 44.035198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816856, 26.622486, 44.106071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260199, -0.142216, -0.955024,
		-0.385377, -0.891600, 0.237768,
		-0.885314, 0.429911, 0.177186,
		33.551262, 26.751459, 44.159229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661236, 26.182844, 43.444172>,  <34.170982, 26.450521, 44.035198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661236, 26.182844, 43.444172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440460, 26.483845, 43.587898>,  <33.307995, 26.664446, 43.674133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440460, 26.483845, 43.587898>,  <33.661236, 26.182844, 43.444172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440460, 26.483845, 43.587898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177807, 0.314782, -0.932361,
		-0.814709, -0.578493, -0.039939,
		-0.551937, 0.752501, 0.359316,
		33.274879, 26.709595, 43.695694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931473, 26.130943, 43.145241>,  <33.661236, 26.182844, 43.444172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931473, 26.130943, 43.145241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043793, 26.503666, 43.237232>,  <33.111183, 26.727299, 43.292427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043793, 26.503666, 43.237232>,  <32.931473, 26.130943, 43.145241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043793, 26.503666, 43.237232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246738, 0.301653, -0.920938,
		-0.927508, 0.201855, 0.314616,
		0.280801, 0.931805, 0.229980,
		33.128033, 26.783207, 43.306225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507206, 26.560226, 42.890324>,  <32.931473, 26.130943, 43.145241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507206, 26.560226, 42.890324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813614, 26.808601, 42.956829>,  <32.997459, 26.957626, 42.996735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813614, 26.808601, 42.956829>,  <32.507206, 26.560226, 42.890324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813614, 26.808601, 42.956829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075417, 0.343682, -0.936053,
		-0.638373, 0.704499, 0.310098,
		0.766024, 0.620937, 0.166266,
		33.043423, 26.994883, 43.006710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.310665, 27.224463, 42.678638>,  <32.507206, 26.560226, 42.890324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.310665, 27.224463, 42.678638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707348, 27.271654, 42.699055>,  <32.945358, 27.299969, 42.711304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707348, 27.271654, 42.699055>,  <32.310665, 27.224463, 42.678638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707348, 27.271654, 42.699055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005046, 0.432481, -0.901629,
		-0.128448, 0.893891, 0.429488,
		0.991703, 0.117979, 0.051041,
		33.004860, 27.307049, 42.714367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405178, 27.922438, 42.411251>,  <32.310665, 27.224463, 42.678638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405178, 27.922438, 42.411251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774055, 27.769617, 42.387241>,  <32.995380, 27.677925, 42.372837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774055, 27.769617, 42.387241>,  <32.405178, 27.922438, 42.411251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774055, 27.769617, 42.387241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115978, 0.421255, -0.899496,
		0.368939, 0.822545, 0.432786,
		0.922189, -0.382053, -0.060020,
		33.050713, 27.655001, 42.369236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731071, 28.400024, 42.244511>,  <32.405178, 27.922438, 42.411251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731071, 28.400024, 42.244511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971874, 28.106379, 42.118870>,  <33.116356, 27.930191, 42.043484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971874, 28.106379, 42.118870>,  <32.731071, 28.400024, 42.244511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971874, 28.106379, 42.118870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088605, 0.452361, -0.887423,
		0.793559, 0.506404, 0.337371,
		0.602008, -0.734115, -0.314106,
		33.152477, 27.886145, 42.024639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293507, 28.702000, 41.898815>,  <32.731071, 28.400024, 42.244511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293507, 28.702000, 41.898815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287323, 28.321491, 41.775627>,  <33.283611, 28.093187, 41.701714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287323, 28.321491, 41.775627>,  <33.293507, 28.702000, 41.898815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287323, 28.321491, 41.775627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036676, 0.308340, -0.950569,
		0.999208, -0.003400, -0.039656,
		-0.015459, -0.951270, -0.307971,
		33.282684, 28.036110, 41.683235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958740, 28.620846, 41.381462>,  <33.293507, 28.702000, 41.898815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958740, 28.620846, 41.381462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680351, 28.341274, 41.315586>,  <33.513317, 28.173531, 41.276062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680351, 28.341274, 41.315586>,  <33.958740, 28.620846, 41.381462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680351, 28.341274, 41.315586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026740, 0.203961, -0.978614,
		0.717572, -0.685491, -0.123262,
		-0.695971, -0.698930, -0.164687,
		33.471561, 28.131596, 41.266182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181244, 28.354824, 40.674171>,  <33.958740, 28.620846, 41.381462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181244, 28.354824, 40.674171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796383, 28.252541, 40.711845>,  <33.565464, 28.191170, 40.734447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796383, 28.252541, 40.711845>,  <34.181244, 28.354824, 40.674171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796383, 28.252541, 40.711845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139732, 0.166241, -0.976135,
		0.233955, -0.952352, -0.195681,
		-0.962154, -0.255714, 0.094182,
		33.507736, 28.175827, 40.740101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128571, 27.860210, 40.109898>,  <34.181244, 28.354824, 40.674171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128571, 27.860210, 40.109898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769203, 27.999325, 40.217148>,  <33.553581, 28.082794, 40.281498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.769203, 27.999325, 40.217148>,  <34.128571, 27.860210, 40.109898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.769203, 27.999325, 40.217148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230074, 0.147282, -0.961964,
		-0.374049, -0.925933, -0.052303,
		-0.898417, 0.347788, 0.268124,
		33.499680, 28.103661, 40.297585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700760, 27.512646, 39.627323>,  <34.128571, 27.860210, 40.109898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700760, 27.512646, 39.627323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485771, 27.815836, 39.775158>,  <33.356777, 27.997751, 39.863861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485771, 27.815836, 39.775158>,  <33.700760, 27.512646, 39.627323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485771, 27.815836, 39.775158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183143, 0.322894, -0.928546,
		-0.823154, -0.566755, -0.034729,
		-0.537472, 0.757977, 0.369589,
		33.324532, 28.043228, 39.886036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063271, 27.449976, 39.414703>,  <33.700760, 27.512646, 39.627323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063271, 27.449976, 39.414703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123768, 27.835123, 39.504158>,  <33.160065, 28.066212, 39.557831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123768, 27.835123, 39.504158>,  <33.063271, 27.449976, 39.414703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123768, 27.835123, 39.504158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100682, 0.240067, -0.965521,
		-0.983356, 0.123512, 0.133251,
		0.151242, 0.962867, 0.223636,
		33.169140, 28.123983, 39.571247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522522, 27.865707, 38.963276>,  <33.063271, 27.449976, 39.414703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522522, 27.865707, 38.963276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792957, 28.128174, 39.097355>,  <32.955219, 28.285654, 39.177803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.792957, 28.128174, 39.097355>,  <32.522522, 27.865707, 38.963276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.792957, 28.128174, 39.097355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066276, 0.507228, -0.859259,
		-0.733836, 0.558718, 0.386418,
		0.676086, 0.656166, 0.335193,
		32.995785, 28.325024, 39.197914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267021, 28.485277, 38.747261>,  <32.522522, 27.865707, 38.963276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267021, 28.485277, 38.747261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646873, 28.579609, 38.829815>,  <32.874783, 28.636208, 38.879345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646873, 28.579609, 38.829815>,  <32.267021, 28.485277, 38.747261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646873, 28.579609, 38.829815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016847, 0.619196, -0.785056,
		-0.312930, 0.748987, 0.584032,
		0.949627, 0.235828, 0.206383,
		32.931763, 28.650358, 38.891731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322418, 29.297998, 38.714672>,  <32.267021, 28.485277, 38.747261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322418, 29.297998, 38.714672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692986, 29.147444, 38.718342>,  <32.915325, 29.057112, 38.720543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692986, 29.147444, 38.718342>,  <32.322418, 29.297998, 38.714672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692986, 29.147444, 38.718342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262680, 0.628708, -0.731933,
		0.269721, 0.680486, 0.681315,
		0.926418, -0.376386, 0.009174,
		32.970909, 29.034529, 38.721092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858364, 29.802664, 38.879456>,  <32.322418, 29.297998, 38.714672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858364, 29.802664, 38.879456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993351, 29.513168, 38.638683>,  <33.074345, 29.339472, 38.494221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.993351, 29.513168, 38.638683>,  <32.858364, 29.802664, 38.879456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993351, 29.513168, 38.638683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155880, 0.673578, -0.722491,
		0.928340, 0.149992, 0.340130,
		0.337472, -0.723737, -0.601929,
		33.094593, 29.296047, 38.458103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445629, 30.106287, 38.534714>,  <32.858364, 29.802664, 38.879456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445629, 30.106287, 38.534714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348644, 29.782080, 38.321445>,  <33.290455, 29.587555, 38.193485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.348644, 29.782080, 38.321445>,  <33.445629, 30.106287, 38.534714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.348644, 29.782080, 38.321445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085689, 0.529531, -0.843951,
		0.966369, -0.250312, -0.058938,
		-0.242461, -0.810519, -0.533172,
		33.275906, 29.538923, 38.161495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913311, 30.119471, 38.100677>,  <33.445629, 30.106287, 38.534714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913311, 30.119471, 38.100677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639973, 29.879055, 37.934887>,  <33.475971, 29.734806, 37.835411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.639973, 29.879055, 37.934887>,  <33.913311, 30.119471, 38.100677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639973, 29.879055, 37.934887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011409, 0.558846, -0.829193,
		0.730006, -0.571354, -0.375027,
		-0.683345, -0.601037, -0.414480,
		33.434971, 29.698744, 37.810543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132992, 30.088522, 37.388466>,  <33.913311, 30.119471, 38.100677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132992, 30.088522, 37.388466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755203, 29.957882, 37.374050>,  <33.528530, 29.879498, 37.365398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755203, 29.957882, 37.374050>,  <34.132992, 30.088522, 37.388466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755203, 29.957882, 37.374050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095092, 0.376682, -0.921449,
		0.314520, -0.866859, -0.386824,
		-0.944476, -0.326598, -0.036043,
		33.471859, 29.859901, 37.363235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071735, 29.539516, 36.770248>,  <34.132992, 30.088522, 37.388466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071735, 29.539516, 36.770248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727558, 29.723104, 36.858772>,  <33.521049, 29.833258, 36.911888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727558, 29.723104, 36.858772>,  <34.071735, 29.539516, 36.770248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727558, 29.723104, 36.858772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042247, 0.368574, -0.928638,
		-0.507788, -0.808392, -0.297747,
		-0.860445, 0.458973, 0.221310,
		33.469425, 29.860796, 36.925167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592209, 29.312826, 36.219360>,  <34.071735, 29.539516, 36.770248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592209, 29.312826, 36.219360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482082, 29.656603, 36.391666>,  <33.416008, 29.862869, 36.495052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.482082, 29.656603, 36.391666>,  <33.592209, 29.312826, 36.219360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482082, 29.656603, 36.391666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069747, 0.429049, -0.900585,
		-0.958821, -0.277987, -0.058179,
		-0.275312, 0.859442, 0.430769,
		33.399490, 29.914436, 36.520897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770752, 29.502668, 35.953117>,  <33.592209, 29.312826, 36.219360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770752, 29.502668, 35.953117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960098, 29.814472, 36.117210>,  <33.073708, 30.001554, 36.215664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960098, 29.814472, 36.117210>,  <32.770752, 29.502668, 35.953117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960098, 29.814472, 36.117210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003049, 0.467160, -0.884167,
		-0.880860, 0.417285, 0.223515,
		0.473367, 0.779509, 0.410231,
		33.102108, 30.048325, 36.240280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312653, 30.099112, 35.648350>,  <32.770752, 29.502668, 35.953117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312653, 30.099112, 35.648350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662502, 30.243467, 35.777836>,  <32.872414, 30.330082, 35.855526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662502, 30.243467, 35.777836>,  <32.312653, 30.099112, 35.648350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662502, 30.243467, 35.777836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108549, 0.504991, -0.856272,
		-0.472492, 0.784055, 0.402503,
		0.874625, 0.360891, 0.323713,
		32.924889, 30.351734, 35.874950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.337051, 30.672670, 35.349857>,  <32.312653, 30.099112, 35.648350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.337051, 30.672670, 35.349857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718681, 30.668112, 35.469604>,  <32.947659, 30.665377, 35.541451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.718681, 30.668112, 35.469604>,  <32.337051, 30.672670, 35.349857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.718681, 30.668112, 35.469604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248125, 0.590024, -0.768314,
		-0.167877, 0.807305, 0.565752,
		0.954071, -0.011395, 0.299364,
		33.004902, 30.664694, 35.559414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646523, 31.294252, 35.361874>,  <32.337051, 30.672670, 35.349857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646523, 31.294252, 35.361874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976856, 31.070953, 35.329967>,  <33.175056, 30.936974, 35.310825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.976856, 31.070953, 35.329967>,  <32.646523, 31.294252, 35.361874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976856, 31.070953, 35.329967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378502, 0.653576, -0.655419,
		0.418017, 0.511076, 0.751041,
		0.825832, -0.558247, -0.079763,
		33.224606, 30.903479, 35.306038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177582, 31.754347, 35.330509>,  <32.646523, 31.294252, 35.361874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177582, 31.754347, 35.330509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317101, 31.407160, 35.189102>,  <33.400810, 31.198847, 35.104259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317101, 31.407160, 35.189102>,  <33.177582, 31.754347, 35.330509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317101, 31.407160, 35.189102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423424, 0.482455, -0.766779,
		0.836096, 0.117760, 0.535795,
		0.348793, -0.867969, -0.353516,
		33.421738, 31.146769, 35.083046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896259, 31.869617, 35.209557>,  <33.177582, 31.754347, 35.330509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896259, 31.869617, 35.209557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803658, 31.539577, 35.003403>,  <33.748096, 31.341555, 34.879711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.803658, 31.539577, 35.003403>,  <33.896259, 31.869617, 35.209557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803658, 31.539577, 35.003403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629543, 0.276831, -0.725976,
		0.741675, -0.492521, 0.455347,
		-0.231504, -0.825098, -0.515382,
		33.734207, 31.292048, 34.848789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407768, 31.574444, 34.982006>,  <33.896259, 31.869617, 35.209557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407768, 31.574444, 34.982006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134041, 31.445185, 34.720535>,  <33.969807, 31.367630, 34.563652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134041, 31.445185, 34.720535>,  <34.407768, 31.574444, 34.982006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134041, 31.445185, 34.720535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618064, 0.218624, -0.755116,
		0.386924, -0.920749, 0.050119,
		-0.684315, -0.323149, -0.653673,
		33.928745, 31.348240, 34.524433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772324, 31.264105, 34.412594>,  <34.407768, 31.574444, 34.982006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772324, 31.264105, 34.412594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407623, 31.382595, 34.298775>,  <34.188805, 31.453690, 34.230484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407623, 31.382595, 34.298775>,  <34.772324, 31.264105, 34.412594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407623, 31.382595, 34.298775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396078, 0.450513, -0.800100,
		-0.108815, -0.842193, -0.528082,
		-0.911746, 0.296225, -0.284551,
		34.134098, 31.471462, 34.213409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014030, 30.649321, 34.026939>,  <34.772324, 31.264105, 34.412594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014030, 30.649321, 34.026939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388874, 30.616135, 33.891331>,  <35.613781, 30.596224, 33.809967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388874, 30.616135, 33.891331>,  <35.014030, 30.649321, 34.026939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388874, 30.616135, 33.891331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298529, -0.312730, 0.901710,
		-0.180830, -0.946212, -0.268297,
		0.937113, -0.082962, -0.339023,
		35.670010, 30.591246, 33.789623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307987, 30.072390, 34.186207>,  <35.014030, 30.649321, 34.026939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307987, 30.072390, 34.186207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651871, 30.274561, 34.156681>,  <35.858200, 30.395864, 34.138966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651871, 30.274561, 34.156681>,  <35.307987, 30.072390, 34.186207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651871, 30.274561, 34.156681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284396, -0.353609, 0.891112,
		0.424292, -0.787086, -0.447741,
		0.859706, 0.505428, -0.073811,
		35.909782, 30.426189, 34.134537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807636, 29.592556, 34.410484>,  <35.307987, 30.072390, 34.186207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807636, 29.592556, 34.410484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994591, 29.945770, 34.427479>,  <36.106762, 30.157698, 34.437675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994591, 29.945770, 34.427479>,  <35.807636, 29.592556, 34.410484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994591, 29.945770, 34.427479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371230, -0.239648, 0.897082,
		0.802335, -0.403509, -0.439816,
		0.467382, 0.883034, 0.042483,
		36.134804, 30.210680, 34.440224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580021, 29.415623, 34.663525>,  <35.807636, 29.592556, 34.410484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580021, 29.415623, 34.663525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485527, 29.798481, 34.730537>,  <36.428829, 30.028196, 34.770744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485527, 29.798481, 34.730537>,  <36.580021, 29.415623, 34.663525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485527, 29.798481, 34.730537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255800, -0.105069, 0.961003,
		0.937421, 0.269879, -0.220017,
		-0.236237, 0.957145, 0.167529,
		36.414658, 30.085625, 34.780796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100071, 29.668379, 35.133873>,  <36.580021, 29.415623, 34.663525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100071, 29.668379, 35.133873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821270, 29.952391, 35.173969>,  <36.653988, 30.122797, 35.198025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821270, 29.952391, 35.173969>,  <37.100071, 29.668379, 35.133873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821270, 29.952391, 35.173969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103441, -0.038769, 0.993880,
		0.709570, 0.703104, -0.046424,
		-0.697001, 0.710029, 0.100239,
		36.612171, 30.165400, 35.204041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333313, 30.111425, 35.686394>,  <37.100071, 29.668379, 35.133873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333313, 30.111425, 35.686394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941574, 30.186016, 35.655128>,  <36.706532, 30.230770, 35.636372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941574, 30.186016, 35.655128>,  <37.333313, 30.111425, 35.686394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941574, 30.186016, 35.655128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072812, 0.035367, 0.996719,
		0.188629, 0.981823, -0.021059,
		-0.979346, 0.186477, -0.078159,
		36.647770, 30.241959, 35.631680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198502, 30.644512, 36.068737>,  <37.333313, 30.111425, 35.686394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198502, 30.644512, 36.068737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849327, 30.449545, 36.076710>,  <36.639820, 30.332563, 36.081493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849327, 30.449545, 36.076710>,  <37.198502, 30.644512, 36.068737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849327, 30.449545, 36.076710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051514, 0.132729, 0.989813,
		-0.485099, 0.863021, -0.140974,
		-0.872941, -0.487419, 0.019929,
		36.587444, 30.303320, 36.082687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981091, 30.910799, 36.656883>,  <37.198502, 30.644512, 36.068737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981091, 30.910799, 36.656883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743668, 30.601948, 36.566101>,  <36.601215, 30.416637, 36.511631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743668, 30.601948, 36.566101>,  <36.981091, 30.910799, 36.656883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743668, 30.601948, 36.566101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029828, -0.302917, 0.952550,
		-0.804240, 0.558622, 0.202829,
		-0.593555, -0.772129, -0.226956,
		36.565601, 30.370310, 36.498013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445736, 30.948471, 37.186092>,  <36.981091, 30.910799, 36.656883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445736, 30.948471, 37.186092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454903, 30.576454, 37.039398>,  <36.460403, 30.353245, 36.951382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454903, 30.576454, 37.039398>,  <36.445736, 30.948471, 37.186092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454903, 30.576454, 37.039398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024384, -0.367246, 0.929804,
		-0.999440, -0.012364, -0.031093,
		0.022915, -0.930042, -0.366739,
		36.461777, 30.297441, 36.929375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951649, 30.519011, 37.556530>,  <36.445736, 30.948471, 37.186092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951649, 30.519011, 37.556530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203270, 30.252270, 37.396732>,  <36.354244, 30.092226, 37.300854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.203270, 30.252270, 37.396732>,  <35.951649, 30.519011, 37.556530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203270, 30.252270, 37.396732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092529, -0.574492, 0.813263,
		-0.771833, -0.474623, -0.423091,
		0.629056, -0.666852, -0.399496,
		36.391987, 30.052214, 37.276882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644646, 29.840948, 37.634876>,  <35.951649, 30.519011, 37.556530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644646, 29.840948, 37.634876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026802, 29.738504, 37.576046>,  <36.256096, 29.677038, 37.540749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026802, 29.738504, 37.576046>,  <35.644646, 29.840948, 37.634876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026802, 29.738504, 37.576046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061597, -0.659852, 0.748866,
		-0.288840, -0.706403, -0.646194,
		0.955394, -0.256107, -0.147080,
		36.313419, 29.661673, 37.531921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655056, 29.102360, 37.710739>,  <35.644646, 29.840948, 37.634876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655056, 29.102360, 37.710739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027451, 29.229546, 37.782467>,  <36.250889, 29.305857, 37.825504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027451, 29.229546, 37.782467>,  <35.655056, 29.102360, 37.710739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027451, 29.229546, 37.782467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088309, -0.672811, 0.734525,
		0.354202, -0.668000, -0.654460,
		0.930990, 0.317965, 0.179320,
		36.306747, 29.324936, 37.836262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036625, 28.571396, 37.717594>,  <35.655056, 29.102360, 37.710739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036625, 28.571396, 37.717594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239990, 28.829124, 37.946106>,  <36.362007, 28.983763, 38.083214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.239990, 28.829124, 37.946106>,  <36.036625, 28.571396, 37.717594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239990, 28.829124, 37.946106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178205, -0.727788, 0.662244,
		0.842473, -0.234886, -0.484838,
		0.508411, 0.644323, 0.571284,
		36.392513, 29.022421, 38.117493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642921, 28.200346, 37.981865>,  <36.036625, 28.571396, 37.717594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.642921, 28.200346, 37.981865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564434, 28.516329, 38.214233>,  <36.517342, 28.705919, 38.353653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564434, 28.516329, 38.214233>,  <36.642921, 28.200346, 37.981865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564434, 28.516329, 38.214233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027931, -0.587690, 0.808603,
		0.980162, 0.174891, 0.093253,
		-0.196221, 0.789958, 0.580917,
		36.505569, 28.753317, 38.388508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000134, 28.123032, 38.576988>,  <36.642921, 28.200346, 37.981865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000134, 28.123032, 38.576988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710735, 28.378592, 38.681580>,  <36.537098, 28.531927, 38.744335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710735, 28.378592, 38.681580>,  <37.000134, 28.123032, 38.576988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710735, 28.378592, 38.681580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068969, -0.443768, 0.893484,
		0.686879, 0.628394, 0.365127,
		-0.723492, 0.638898, 0.261475,
		36.493687, 28.570261, 38.760021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337605, 28.436678, 39.206448>,  <37.000134, 28.123032, 38.576988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337605, 28.436678, 39.206448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938595, 28.464529, 39.202454>,  <36.699188, 28.481239, 39.200058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938595, 28.464529, 39.202454>,  <37.337605, 28.436678, 39.206448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938595, 28.464529, 39.202454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029983, -0.292471, 0.955804,
		0.063629, 0.953737, 0.293834,
		-0.997523, 0.069627, -0.009986,
		36.639339, 28.485416, 39.199459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152557, 28.656492, 39.871208>,  <37.337605, 28.436678, 39.206448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152557, 28.656492, 39.871208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784935, 28.542543, 39.762264>,  <36.564362, 28.474174, 39.696899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784935, 28.542543, 39.762264>,  <37.152557, 28.656492, 39.871208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784935, 28.542543, 39.762264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184872, -0.298697, 0.936270,
		-0.348071, 0.910839, 0.221855,
		-0.919059, -0.284874, -0.272357,
		36.509216, 28.457081, 39.680557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834469, 28.812550, 40.426777>,  <37.152557, 28.656492, 39.871208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834469, 28.812550, 40.426777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562763, 28.591593, 40.233505>,  <36.399738, 28.459019, 40.117542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562763, 28.591593, 40.233505>,  <36.834469, 28.812550, 40.426777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562763, 28.591593, 40.233505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397711, -0.276251, 0.874935,
		-0.616784, 0.786480, -0.032043,
		-0.679267, -0.552390, -0.483179,
		36.358982, 28.425877, 40.088551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182457, 28.962385, 40.678017>,  <36.834469, 28.812550, 40.426777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182457, 28.962385, 40.678017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144978, 28.601665, 40.509266>,  <36.122490, 28.385233, 40.408016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.144978, 28.601665, 40.509266>,  <36.182457, 28.962385, 40.678017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144978, 28.601665, 40.509266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273454, -0.384131, 0.881854,
		-0.957311, 0.197993, -0.210607,
		-0.093700, -0.901800, -0.421874,
		36.116867, 28.331125, 40.382702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569687, 28.782833, 40.809681>,  <36.182457, 28.962385, 40.678017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569687, 28.782833, 40.809681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742733, 28.429979, 40.735184>,  <35.846561, 28.218267, 40.690487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742733, 28.429979, 40.735184>,  <35.569687, 28.782833, 40.809681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742733, 28.429979, 40.735184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298194, -0.334947, 0.893807,
		-0.850837, -0.331138, -0.407950,
		0.432615, -0.882132, -0.186242,
		35.872517, 28.165340, 40.679310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071972, 28.193220, 40.912418>,  <35.569687, 28.782833, 40.809681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071972, 28.193220, 40.912418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453102, 28.085861, 40.969101>,  <35.681782, 28.021446, 41.003109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453102, 28.085861, 40.969101>,  <35.071972, 28.193220, 40.912418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453102, 28.085861, 40.969101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232579, -0.345729, 0.909054,
		-0.194999, -0.899129, -0.391844,
		0.952829, -0.268399, 0.141702,
		35.738953, 28.005341, 41.011612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983315, 27.733442, 41.352112>,  <35.071972, 28.193220, 40.912418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983315, 27.733442, 41.352112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378246, 27.783689, 41.390900>,  <35.615204, 27.813839, 41.414173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378246, 27.783689, 41.390900>,  <34.983315, 27.733442, 41.352112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378246, 27.783689, 41.390900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060503, -0.266926, 0.961816,
		0.146706, -0.955495, -0.255944,
		0.987328, 0.125619, 0.096970,
		35.674446, 27.821375, 41.419991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.215900, 27.125368, 41.475933>,  <34.983315, 27.733442, 41.352112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.215900, 27.125368, 41.475933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501915, 27.375526, 41.600895>,  <35.673523, 27.525621, 41.675873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501915, 27.375526, 41.600895>,  <35.215900, 27.125368, 41.475933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501915, 27.375526, 41.600895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016775, -0.462102, 0.886668,
		0.698882, -0.628763, -0.340912,
		0.715040, 0.625395, 0.312407,
		35.716427, 27.563145, 41.694618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703857, 26.759825, 41.933380>,  <35.215900, 27.125368, 41.475933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703857, 26.759825, 41.933380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778290, 27.134295, 42.052677>,  <35.822948, 27.358976, 42.124256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778290, 27.134295, 42.052677>,  <35.703857, 26.759825, 41.933380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778290, 27.134295, 42.052677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015043, -0.300796, 0.953570,
		0.982419, -0.181927, -0.041889,
		0.186080, 0.936175, 0.298245,
		35.834114, 27.415148, 42.142151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111347, 26.744661, 42.531689>,  <35.703857, 26.759825, 41.933380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111347, 26.744661, 42.531689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986107, 27.123056, 42.565331>,  <35.910965, 27.350094, 42.585514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986107, 27.123056, 42.565331>,  <36.111347, 26.744661, 42.531689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986107, 27.123056, 42.565331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000958, -0.088241, 0.996099,
		0.949720, 0.311958, 0.026722,
		-0.313099, 0.945989, 0.084103,
		35.892178, 27.406853, 42.590561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542168, 27.061316, 42.993122>,  <36.111347, 26.744661, 42.531689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542168, 27.061316, 42.993122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212841, 27.288300, 42.997910>,  <36.015247, 27.424490, 43.000782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212841, 27.288300, 42.997910>,  <36.542168, 27.061316, 42.993122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212841, 27.288300, 42.997910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057981, -0.105067, 0.992773,
		0.564618, 0.816669, 0.119405,
		-0.823313, 0.567461, 0.011972,
		35.965847, 27.458538, 43.001499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578621, 27.677040, 43.506378>,  <36.542168, 27.061316, 42.993122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578621, 27.677040, 43.506378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185802, 27.613312, 43.465984>,  <35.950111, 27.575075, 43.441750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.185802, 27.613312, 43.465984>,  <36.578621, 27.677040, 43.506378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185802, 27.613312, 43.465984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081219, -0.126058, 0.988692,
		-0.170248, 0.979146, 0.110855,
		-0.982048, -0.159320, -0.100986,
		35.891190, 27.565516, 43.435688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239761, 28.210083, 43.896820>,  <36.578621, 27.677040, 43.506378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239761, 28.210083, 43.896820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985832, 27.901739, 43.875778>,  <35.833473, 27.716732, 43.863152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985832, 27.901739, 43.875778>,  <36.239761, 28.210083, 43.896820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985832, 27.901739, 43.875778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017231, -0.053940, 0.998396,
		-0.772462, 0.634715, 0.020960,
		-0.634827, -0.770861, -0.052603,
		35.795383, 27.670481, 43.859997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636627, 28.474682, 44.276787>,  <36.239761, 28.210083, 43.896820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636627, 28.474682, 44.276787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650158, 28.075026, 44.267216>,  <35.658276, 27.835232, 44.261475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650158, 28.075026, 44.267216>,  <35.636627, 28.474682, 44.276787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650158, 28.075026, 44.267216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249474, -0.014743, 0.968269,
		-0.967791, -0.038719, 0.248762,
		0.033823, -0.999141, -0.023927,
		35.660305, 27.775284, 44.260036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241680, 28.259426, 44.836769>,  <35.636627, 28.474682, 44.276787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241680, 28.259426, 44.836769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471489, 27.942770, 44.753605>,  <35.609375, 27.752777, 44.703705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471489, 27.942770, 44.753605>,  <35.241680, 28.259426, 44.836769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471489, 27.942770, 44.753605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228676, -0.088657, 0.969457,
		-0.785893, -0.604523, 0.130093,
		0.574526, -0.791639, -0.207915,
		35.643848, 27.705278, 44.691231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033985, 27.842186, 45.381580>,  <35.241680, 28.259426, 44.836769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033985, 27.842186, 45.381580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381023, 27.706923, 45.235744>,  <35.589245, 27.625765, 45.148243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381023, 27.706923, 45.235744>,  <35.033985, 27.842186, 45.381580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381023, 27.706923, 45.235744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387580, 0.000493, 0.921836,
		-0.311549, -0.941088, 0.131492,
		0.867594, -0.338161, -0.364593,
		35.641300, 27.605474, 45.126366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206409, 27.507717, 45.942181>,  <35.033985, 27.842186, 45.381580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206409, 27.507717, 45.942181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542149, 27.474592, 45.727280>,  <35.743591, 27.454718, 45.598339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.542149, 27.474592, 45.727280>,  <35.206409, 27.507717, 45.942181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542149, 27.474592, 45.727280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505906, -0.242603, 0.827770,
		-0.198883, -0.966585, -0.161736,
		0.839348, -0.082807, -0.537250,
		35.793953, 27.449749, 45.566105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480072, 26.882965, 46.216995>,  <35.206409, 27.507717, 45.942181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480072, 26.882965, 46.216995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777355, 27.102283, 46.063629>,  <35.955727, 27.233873, 45.971607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777355, 27.102283, 46.063629>,  <35.480072, 26.882965, 46.216995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777355, 27.102283, 46.063629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614066, -0.331486, 0.716268,
		0.265628, -0.767783, -0.583054,
		0.743212, 0.548295, -0.383417,
		36.000320, 27.266771, 45.948605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191334, 26.494894, 46.160236>,  <35.480072, 26.882965, 46.216995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191334, 26.494894, 46.160236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257072, 26.889088, 46.177261>,  <36.296516, 27.125603, 46.187477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257072, 26.889088, 46.177261>,  <36.191334, 26.494894, 46.160236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257072, 26.889088, 46.177261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849312, -0.163323, 0.501991,
		0.501656, -0.046350, -0.863825,
		0.164350, 0.985483, 0.042567,
		36.306377, 27.184732, 46.190033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894947, 26.548420, 46.093616>,  <36.191334, 26.494894, 46.160236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894947, 26.548420, 46.093616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773510, 26.897507, 46.246559>,  <36.700649, 27.106958, 46.338326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.773510, 26.897507, 46.246559>,  <36.894947, 26.548420, 46.093616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773510, 26.897507, 46.246559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758382, -0.021601, 0.651453,
		0.576793, 0.487749, -0.655294,
		-0.303591, 0.872716, 0.382359,
		36.682434, 27.159321, 46.361267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510437, 27.009256, 46.116528>,  <36.894947, 26.548420, 46.093616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510437, 27.009256, 46.116528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252937, 27.139313, 46.393620>,  <37.098438, 27.217346, 46.559875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.252937, 27.139313, 46.393620>,  <37.510437, 27.009256, 46.116528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.252937, 27.139313, 46.393620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759877, 0.164655, 0.628869,
		0.090410, 0.931221, -0.353063,
		-0.643750, 0.325140, 0.692727,
		37.059811, 27.236855, 46.601437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872993, 27.333384, 46.646206>,  <37.510437, 27.009256, 46.116528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872993, 27.333384, 46.646206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534420, 27.363504, 46.857067>,  <37.331276, 27.381577, 46.983582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534420, 27.363504, 46.857067>,  <37.872993, 27.333384, 46.646206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534420, 27.363504, 46.857067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526897, -0.024824, 0.849567,
		0.077058, 0.996852, -0.018664,
		-0.846429, 0.075300, 0.527151,
		37.280491, 27.386095, 47.015213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943398, 27.843678, 47.255508>,  <37.872993, 27.333384, 46.646206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943398, 27.843678, 47.255508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698288, 27.530859, 47.300964>,  <37.551224, 27.343168, 47.328239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698288, 27.530859, 47.300964>,  <37.943398, 27.843678, 47.255508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698288, 27.530859, 47.300964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521855, -0.292460, 0.801333,
		-0.593443, 0.550339, 0.587326,
		-0.612774, -0.782044, 0.113639,
		37.514454, 27.296246, 47.335056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617912, 27.533939, 47.930843>,  <37.943398, 27.843678, 47.255508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617912, 27.533939, 47.930843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774353, 27.867182, 48.087288>,  <37.868217, 28.067127, 48.181156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774353, 27.867182, 48.087288>,  <37.617912, 27.533939, 47.930843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774353, 27.867182, 48.087288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030209, 0.413116, -0.910177,
		-0.919853, 0.367785, 0.136402,
		0.391100, 0.833108, 0.391116,
		37.891682, 28.117115, 48.204624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276691, 28.144915, 47.699615>,  <37.617912, 27.533939, 47.930843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276691, 28.144915, 47.699615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654594, 28.236446, 47.793488>,  <37.881336, 28.291367, 47.849812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.654594, 28.236446, 47.793488>,  <37.276691, 28.144915, 47.699615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654594, 28.236446, 47.793488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114565, 0.440288, -0.890517,
		-0.307104, 0.868207, 0.389749,
		0.944755, 0.228830, 0.234680,
		37.938023, 28.305096, 47.863892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268967, 28.793354, 47.665367>,  <37.276691, 28.144915, 47.699615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268967, 28.793354, 47.665367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648666, 28.675831, 47.620476>,  <37.876488, 28.605318, 47.593540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648666, 28.675831, 47.620476>,  <37.268967, 28.793354, 47.665367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648666, 28.675831, 47.620476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065888, 0.534686, -0.842478,
		0.307532, 0.792331, 0.526911,
		0.949254, -0.293806, -0.112228,
		37.933441, 28.587688, 47.586807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818008, 29.510054, 47.635643>,  <37.268967, 28.793354, 47.665367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818008, 29.510054, 47.635643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987057, 29.193560, 47.458855>,  <38.088486, 29.003662, 47.352783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.987057, 29.193560, 47.458855>,  <37.818008, 29.510054, 47.635643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987057, 29.193560, 47.458855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216410, 0.561657, -0.798567,
		0.880091, 0.241843, 0.408598,
		0.422619, -0.791236, -0.441972,
		38.113842, 28.956188, 47.326263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266388, 29.816761, 47.312077>,  <37.818008, 29.510054, 47.635643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266388, 29.816761, 47.312077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264194, 29.468739, 47.114910>,  <38.262878, 29.259924, 46.996609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.264194, 29.468739, 47.114910>,  <38.266388, 29.816761, 47.312077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264194, 29.468739, 47.114910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178936, 0.484116, -0.856512,
		0.983845, -0.092898, 0.153030,
		-0.005483, -0.870059, -0.492918,
		38.262550, 29.207722, 46.967033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838490, 29.760324, 46.881577>,  <38.266388, 29.816761, 47.312077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838490, 29.760324, 46.881577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550735, 29.540503, 46.711647>,  <38.378082, 29.408609, 46.609692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.550735, 29.540503, 46.711647>,  <38.838490, 29.760324, 46.881577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.550735, 29.540503, 46.711647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268887, 0.343591, -0.899803,
		0.640455, -0.761535, -0.099407,
		-0.719387, -0.549554, -0.424822,
		38.334919, 29.375637, 46.584202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152248, 29.299520, 46.279102>,  <38.838490, 29.760324, 46.881577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152248, 29.299520, 46.279102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760284, 29.336351, 46.208344>,  <38.525105, 29.358450, 46.165890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760284, 29.336351, 46.208344>,  <39.152248, 29.299520, 46.279102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760284, 29.336351, 46.208344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194378, 0.242698, -0.950429,
		-0.044581, -0.965722, -0.255721,
		-0.979913, 0.092078, -0.176895,
		38.466309, 29.363974, 46.155273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108089, 29.162313, 45.613926>,  <39.152248, 29.299520, 46.279102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108089, 29.162313, 45.613926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733925, 29.295090, 45.662624>,  <38.509426, 29.374756, 45.691841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733925, 29.295090, 45.662624>,  <39.108089, 29.162313, 45.613926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733925, 29.295090, 45.662624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033041, 0.260753, -0.964840,
		-0.352014, -0.906545, -0.232944,
		-0.935411, 0.331940, 0.121742,
		38.453300, 29.394672, 45.699146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710045, 28.805479, 45.080227>,  <39.108089, 29.162313, 45.613926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710045, 28.805479, 45.080227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522285, 29.145306, 45.176479>,  <38.409630, 29.349201, 45.234230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522285, 29.145306, 45.176479>,  <38.710045, 28.805479, 45.080227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522285, 29.145306, 45.176479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056361, 0.243138, -0.968353,
		-0.881185, -0.468107, -0.066246,
		-0.469400, 0.849564, 0.240633,
		38.381466, 29.400175, 45.248669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347992, 29.013596, 44.455460>,  <38.710045, 28.805479, 45.080227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347992, 29.013596, 44.455460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328846, 29.352001, 44.667866>,  <38.317360, 29.555044, 44.795307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.328846, 29.352001, 44.667866>,  <38.347992, 29.013596, 44.455460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328846, 29.352001, 44.667866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042786, 0.532869, -0.845115,
		-0.997937, -0.017728, -0.061702,
		-0.047862, 0.846012, 0.531011,
		38.314487, 29.605804, 44.827168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722260, 29.415058, 44.242302>,  <38.347992, 29.013596, 44.455460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722260, 29.415058, 44.242302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992290, 29.666752, 44.396358>,  <38.154308, 29.817768, 44.488792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992290, 29.666752, 44.396358>,  <37.722260, 29.415058, 44.242302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992290, 29.666752, 44.396358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045232, 0.485770, -0.872916,
		-0.736358, 0.606708, 0.299471,
		0.675079, 0.629232, 0.385144,
		38.194813, 29.855522, 44.511902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449150, 29.969751, 44.078857>,  <37.722260, 29.415058, 44.242302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449150, 29.969751, 44.078857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837589, 30.022543, 44.158409>,  <38.070652, 30.054218, 44.206139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.837589, 30.022543, 44.158409>,  <37.449150, 29.969751, 44.078857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837589, 30.022543, 44.158409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138489, 0.367077, -0.919823,
		-0.194398, 0.920780, 0.338190,
		0.971097, 0.131977, 0.198877,
		38.128918, 30.062136, 44.218071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652256, 30.652916, 43.832333>,  <37.449150, 29.969751, 44.078857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652256, 30.652916, 43.832333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969978, 30.410316, 43.846378>,  <38.160614, 30.264757, 43.854805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969978, 30.410316, 43.846378>,  <37.652256, 30.652916, 43.832333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969978, 30.410316, 43.846378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227863, 0.243852, -0.942663,
		0.563164, 0.756765, 0.331893,
		0.794308, -0.606500, 0.035110,
		38.208271, 30.228367, 43.856911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168816, 31.048944, 43.700756>,  <37.652256, 30.652916, 43.832333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168816, 31.048944, 43.700756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257996, 30.671860, 43.601490>,  <38.311504, 30.445608, 43.541931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257996, 30.671860, 43.601490>,  <38.168816, 31.048944, 43.700756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257996, 30.671860, 43.601490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201470, 0.293635, -0.934445,
		0.953784, 0.158335, 0.255394,
		0.222948, -0.942713, -0.248164,
		38.324879, 30.389046, 43.527042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698769, 31.205063, 43.213730>,  <38.168816, 31.048944, 43.700756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698769, 31.205063, 43.213730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584320, 30.824074, 43.171909>,  <38.515652, 30.595480, 43.146816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584320, 30.824074, 43.171909>,  <38.698769, 31.205063, 43.213730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584320, 30.824074, 43.171909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088981, 0.082230, -0.992633,
		0.954054, -0.293313, 0.061225,
		-0.286118, -0.952473, -0.104551,
		38.498486, 30.538332, 43.140545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180264, 30.941652, 42.754974>,  <38.698769, 31.205063, 43.213730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180264, 30.941652, 42.754974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861546, 30.700542, 42.738079>,  <38.670315, 30.555876, 42.727943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861546, 30.700542, 42.738079>,  <39.180264, 30.941652, 42.754974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861546, 30.700542, 42.738079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004330, 0.064203, -0.997928,
		0.604238, -0.795324, -0.048546,
		-0.796792, -0.602775, -0.042237,
		38.622509, 30.519711, 42.725407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347664, 30.456739, 42.245426>,  <39.180264, 30.941652, 42.754974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347664, 30.456739, 42.245426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948959, 30.437883, 42.271492>,  <38.709736, 30.426571, 42.287132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948959, 30.437883, 42.271492>,  <39.347664, 30.456739, 42.245426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948959, 30.437883, 42.271492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058645, -0.128542, -0.989968,
		0.055044, -0.990583, 0.125361,
		-0.996760, -0.047140, 0.065168,
		38.649933, 30.423742, 42.291042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174629, 29.914116, 41.815277>,  <39.347664, 30.456739, 42.245426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174629, 29.914116, 41.815277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832767, 30.114285, 41.870617>,  <38.627651, 30.234386, 41.903820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.832767, 30.114285, 41.870617>,  <39.174629, 29.914116, 41.815277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832767, 30.114285, 41.870617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286998, -0.233304, -0.929086,
		-0.432658, -0.833755, 0.343015,
		-0.854657, 0.500421, 0.138345,
		38.576370, 30.264412, 41.912121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605824, 29.396727, 41.701035>,  <39.174629, 29.914116, 41.815277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605824, 29.396727, 41.701035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448910, 29.760920, 41.648670>,  <38.354763, 29.979435, 41.617252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448910, 29.760920, 41.648670>,  <38.605824, 29.396727, 41.701035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448910, 29.760920, 41.648670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066652, -0.170076, -0.983175,
		-0.917427, -0.376956, 0.127403,
		-0.392282, 0.910483, -0.130907,
		38.331226, 30.034065, 41.609398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967445, 29.319969, 41.422806>,  <38.605824, 29.396727, 41.701035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967445, 29.319969, 41.422806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110550, 29.683462, 41.336815>,  <38.196411, 29.901558, 41.285221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110550, 29.683462, 41.336815>,  <37.967445, 29.319969, 41.422806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110550, 29.683462, 41.336815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040111, -0.244953, -0.968705,
		-0.932951, 0.337942, -0.124085,
		0.357761, 0.908732, -0.214974,
		38.217876, 29.956081, 41.272324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501637, 29.607635, 40.908676>,  <37.967445, 29.319969, 41.422806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501637, 29.607635, 40.908676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857056, 29.790737, 40.896358>,  <38.070309, 29.900599, 40.888966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857056, 29.790737, 40.896358>,  <37.501637, 29.607635, 40.908676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857056, 29.790737, 40.896358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015900, -0.036364, -0.999212,
		-0.458511, 0.888336, -0.025032,
		0.888547, 0.457752, -0.030798,
		38.123619, 29.928062, 40.887119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397293, 30.198595, 40.525013>,  <37.501637, 29.607635, 40.908676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397293, 30.198595, 40.525013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795246, 30.159725, 40.514008>,  <38.034019, 30.136404, 40.507404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795246, 30.159725, 40.514008>,  <37.397293, 30.198595, 40.525013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795246, 30.159725, 40.514008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003429, 0.239757, -0.970827,
		0.100936, 0.965958, 0.238197,
		0.994887, -0.097174, -0.027513,
		38.093712, 30.130573, 40.505753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618809, 30.718552, 40.046108>,  <37.397293, 30.198595, 40.525013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618809, 30.718552, 40.046108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920464, 30.456018, 40.055027>,  <38.101456, 30.298498, 40.060379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920464, 30.456018, 40.055027>,  <37.618809, 30.718552, 40.046108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920464, 30.456018, 40.055027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260717, 0.268068, -0.927451,
		0.602742, 0.705241, 0.373279,
		0.754141, -0.656334, 0.022292,
		38.146706, 30.259119, 40.061714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209591, 30.990755, 39.808575>,  <37.618809, 30.718552, 40.046108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209591, 30.990755, 39.808575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283932, 30.602015, 39.750656>,  <38.328537, 30.368771, 39.715904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.283932, 30.602015, 39.750656>,  <38.209591, 30.990755, 39.808575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283932, 30.602015, 39.750656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352149, 0.203456, -0.913563,
		0.917306, 0.118799, 0.380049,
		0.185853, -0.971850, -0.144796,
		38.339687, 30.310459, 39.707218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975754, 31.041353, 39.509357>,  <38.209591, 30.990755, 39.808575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975754, 31.041353, 39.509357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775074, 30.711161, 39.405918>,  <38.654667, 30.513044, 39.343853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775074, 30.711161, 39.405918>,  <38.975754, 31.041353, 39.509357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775074, 30.711161, 39.405918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470567, -0.009590, -0.882313,
		0.725853, -0.564348, 0.393255,
		-0.501702, -0.825482, -0.258603,
		38.624565, 30.463516, 39.328339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376740, 30.878674, 38.996262>,  <38.975754, 31.041353, 39.509357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376740, 30.878674, 38.996262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075588, 30.617477, 38.963318>,  <38.894897, 30.460760, 38.943554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.075588, 30.617477, 38.963318>,  <39.376740, 30.878674, 38.996262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075588, 30.617477, 38.963318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174976, -0.077953, -0.981482,
		0.634479, -0.753343, 0.172947,
		-0.752874, -0.652992, -0.082357,
		38.849728, 30.421579, 38.938610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648567, 30.377102, 38.590847>,  <39.376740, 30.878674, 38.996262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648567, 30.377102, 38.590847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248837, 30.371386, 38.577377>,  <39.008999, 30.367956, 38.569294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248837, 30.371386, 38.577377>,  <39.648567, 30.377102, 38.590847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248837, 30.371386, 38.577377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032026, 0.103225, -0.994142,
		0.017681, -0.994556, -0.102698,
		-0.999331, -0.014288, -0.033677,
		38.949036, 30.367098, 38.567276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580250, 30.025276, 38.016834>,  <39.648567, 30.377102, 38.590847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580250, 30.025276, 38.016834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235039, 30.221869, 38.063534>,  <39.027912, 30.339825, 38.091553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.235039, 30.221869, 38.063534>,  <39.580250, 30.025276, 38.016834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.235039, 30.221869, 38.063534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040628, 0.297894, -0.953734,
		-0.503520, -0.818356, -0.277059,
		-0.863028, 0.491481, 0.116747,
		38.976131, 30.369312, 38.098557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079651, 29.848911, 37.427628>,  <39.580250, 30.025276, 38.016834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079651, 29.848911, 37.427628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956100, 30.188696, 37.598747>,  <38.881969, 30.392567, 37.701420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956100, 30.188696, 37.598747>,  <39.079651, 29.848911, 37.427628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956100, 30.188696, 37.598747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017803, 0.444549, -0.895577,
		-0.950935, -0.284241, -0.122188,
		-0.308878, 0.849461, 0.427798,
		38.863438, 30.443535, 37.727085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.629692, 30.047848, 37.050980>,  <39.079651, 29.848911, 37.427628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.629692, 30.047848, 37.050980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723885, 30.380629, 37.251938>,  <38.780399, 30.580297, 37.372513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.723885, 30.380629, 37.251938>,  <38.629692, 30.047848, 37.050980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.723885, 30.380629, 37.251938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077709, 0.499163, -0.863016,
		-0.968768, 0.242263, 0.052892,
		0.235479, 0.831952, 0.502400,
		38.794529, 30.630215, 37.402657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203457, 30.662849, 36.733177>,  <38.629692, 30.047848, 37.050980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203457, 30.662849, 36.733177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527020, 30.813524, 36.913746>,  <38.721157, 30.903929, 37.022087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.527020, 30.813524, 36.913746>,  <38.203457, 30.662849, 36.733177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527020, 30.813524, 36.913746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102382, 0.665820, -0.739055,
		-0.578955, 0.644043, 0.500019,
		0.808906, 0.376687, 0.451418,
		38.769691, 30.926531, 37.049171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099018, 31.346621, 36.715145>,  <38.203457, 30.662849, 36.733177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.099018, 31.346621, 36.715145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497543, 31.321583, 36.738602>,  <38.736660, 31.306561, 36.752674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497543, 31.321583, 36.738602>,  <38.099018, 31.346621, 36.715145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497543, 31.321583, 36.738602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085755, 0.714431, -0.694431,
		0.001575, 0.696900, 0.717166,
		0.996315, -0.062594, 0.058637,
		38.796436, 31.302805, 36.756191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275238, 32.087360, 36.695698>,  <38.099018, 31.346621, 36.715145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275238, 32.087360, 36.695698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643410, 31.932514, 36.673958>,  <38.864311, 31.839607, 36.660912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643410, 31.932514, 36.673958>,  <38.275238, 32.087360, 36.695698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643410, 31.932514, 36.673958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266245, 0.722608, -0.637928,
		0.286228, 0.572695, 0.768176,
		0.920428, -0.387116, -0.054353,
		38.919537, 31.816380, 36.657650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634975, 32.608707, 36.615208>,  <38.275238, 32.087360, 36.695698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634975, 32.608707, 36.615208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889408, 32.332417, 36.477634>,  <39.042068, 32.166641, 36.395092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.889408, 32.332417, 36.477634>,  <38.634975, 32.608707, 36.615208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889408, 32.332417, 36.477634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269781, 0.616676, -0.739547,
		0.722924, 0.377625, 0.578602,
		0.636081, -0.690732, -0.343934,
		39.080231, 32.125198, 36.374454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296368, 32.882439, 36.590645>,  <38.634975, 32.608707, 36.615208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296368, 32.882439, 36.590645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305489, 32.574364, 36.335682>,  <39.310963, 32.389519, 36.182705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305489, 32.574364, 36.335682>,  <39.296368, 32.882439, 36.590645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305489, 32.574364, 36.335682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532312, 0.549034, -0.644364,
		0.846241, -0.324603, 0.422504,
		0.022807, -0.770191, -0.637405,
		39.312332, 32.343307, 36.144459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.904129, 32.947323, 36.452862>,  <39.296368, 32.882439, 36.590645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.904129, 32.947323, 36.452862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789780, 32.701763, 36.158539>,  <39.721169, 32.554428, 35.981945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789780, 32.701763, 36.158539>,  <39.904129, 32.947323, 36.452862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789780, 32.701763, 36.158539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467758, 0.580763, -0.666271,
		0.836349, -0.534647, 0.121131,
		-0.285871, -0.613895, -0.735806,
		39.704018, 32.517593, 35.937798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414150, 32.670486, 36.011738>,  <39.904129, 32.947323, 36.452862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414150, 32.670486, 36.011738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109337, 32.651028, 35.753452>,  <39.926449, 32.639351, 35.598480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.109337, 32.651028, 35.753452>,  <40.414150, 32.670486, 36.011738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109337, 32.651028, 35.753452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415839, 0.727623, -0.545567,
		0.496376, -0.684250, -0.534241,
		-0.762030, -0.048648, -0.645712,
		39.880730, 32.636433, 35.559738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654736, 32.843334, 35.403824>,  <40.414150, 32.670486, 36.011738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654736, 32.843334, 35.403824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273655, 32.907997, 35.300880>,  <40.045006, 32.946793, 35.239113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.273655, 32.907997, 35.300880>,  <40.654736, 32.843334, 35.403824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.273655, 32.907997, 35.300880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280235, 0.794978, -0.538032,
		0.117620, -0.584703, -0.802675,
		-0.952698, 0.161654, -0.257359,
		39.987846, 32.956493, 35.223671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.656742, 32.759117, 34.679066>,  <40.654736, 32.843334, 35.403824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.656742, 32.759117, 34.679066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331436, 32.979107, 34.755081>,  <40.136253, 33.111103, 34.800690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.331436, 32.979107, 34.755081>,  <40.656742, 32.759117, 34.679066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331436, 32.979107, 34.755081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368884, 0.739878, -0.562588,
		-0.450019, -0.387432, -0.804599,
		-0.813269, 0.549979, 0.190042,
		40.087456, 33.144100, 34.812092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452877, 32.944180, 34.029888>,  <40.656742, 32.759117, 34.679066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452877, 32.944180, 34.029888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279099, 33.205662, 34.277733>,  <40.174831, 33.362553, 34.426441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279099, 33.205662, 34.277733>,  <40.452877, 32.944180, 34.029888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279099, 33.205662, 34.277733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310603, 0.754464, -0.578196,
		-0.845448, -0.058741, -0.530817,
		-0.434446, 0.653708, 0.619615,
		40.148766, 33.401775, 34.463615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102459, 33.517696, 33.621376>,  <40.452877, 32.944180, 34.029888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102459, 33.517696, 33.621376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170197, 33.682106, 33.979679>,  <40.210838, 33.780750, 34.194660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170197, 33.682106, 33.979679>,  <40.102459, 33.517696, 33.621376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170197, 33.682106, 33.979679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012471, 0.907919, -0.418960,
		-0.985479, 0.082118, 0.148622,
		0.169341, 0.411023, 0.895759,
		40.221001, 33.805412, 34.248405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816208, 33.159641, 32.984451>,  <40.102459, 33.517696, 33.621376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816208, 33.159641, 32.984451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804890, 33.529770, 32.833202>,  <39.798100, 33.751846, 32.742455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804890, 33.529770, 32.833202>,  <39.816208, 33.159641, 32.984451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804890, 33.529770, 32.833202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782149, -0.215057, -0.584802,
		-0.622448, -0.312293, -0.717657,
		-0.028292, 0.925324, -0.378121,
		39.796402, 33.807365, 32.719765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314640, 32.960491, 32.430904>,  <39.816208, 33.159641, 32.984451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314640, 32.960491, 32.430904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275772, 33.358528, 32.423393>,  <40.252453, 33.597351, 32.418884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.275772, 33.358528, 32.423393>,  <40.314640, 32.960491, 32.430904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275772, 33.358528, 32.423393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731631, 0.058625, -0.679176,
		-0.674740, -0.079736, -0.733736,
		-0.097170, 0.995091, -0.018781,
		40.246620, 33.657055, 32.417759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.627228, 32.393951, 32.816978>,  <40.314640, 32.960491, 32.430904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.627228, 32.393951, 32.816978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719139, 32.121307, 33.094860>,  <40.774284, 31.957722, 33.261589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719139, 32.121307, 33.094860>,  <40.627228, 32.393951, 32.816978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719139, 32.121307, 33.094860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863272, -0.186861, -0.468876,
		0.449403, 0.707453, 0.545478,
		0.229780, -0.681611, 0.694700,
		40.788074, 31.916824, 33.303268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.347969, 32.506268, 33.013859>,  <40.627228, 32.393951, 32.816978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.347969, 32.506268, 33.013859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.268730, 32.120773, 33.085384>,  <41.221188, 31.889477, 33.128300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.268730, 32.120773, 33.085384>,  <41.347969, 32.506268, 33.013859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268730, 32.120773, 33.085384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852571, -0.259426, -0.453674,
		0.483610, 0.062578, 0.873044,
		-0.198100, -0.963734, 0.178813,
		41.209301, 31.831654, 33.139027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496025, 33.068756, 33.586285>,  <41.347969, 32.506268, 33.013859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496025, 33.068756, 33.586285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249100, 33.334736, 33.754456>,  <41.100945, 33.494324, 33.855358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.249100, 33.334736, 33.754456>,  <41.496025, 33.068756, 33.586285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.249100, 33.334736, 33.754456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775199, 0.605234, 0.180991,
		-0.134110, 0.437648, -0.889089,
		-0.617317, 0.664948, 0.420432,
		41.063904, 33.534222, 33.880585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176765, 33.226250, 33.774506>,  <41.496025, 33.068756, 33.586285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176765, 33.226250, 33.774506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410004, 33.533447, 33.880474>,  <42.549946, 33.717766, 33.944054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410004, 33.533447, 33.880474>,  <42.176765, 33.226250, 33.774506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410004, 33.533447, 33.880474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047688, 0.293174, -0.954869,
		-0.811005, 0.569411, 0.134324,
		0.583093, 0.767998, 0.264919,
		42.584930, 33.763847, 33.959949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.774361, 33.746216, 33.526310>,  <42.176765, 33.226250, 33.774506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.774361, 33.746216, 33.526310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173489, 33.772060, 33.531666>,  <42.412964, 33.787567, 33.534878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173489, 33.772060, 33.531666>,  <41.774361, 33.746216, 33.526310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173489, 33.772060, 33.531666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001164, 0.220098, -0.975477,
		-0.065977, 0.973335, 0.219694,
		0.997820, 0.064614, 0.013389,
		42.472836, 33.791443, 33.535683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981750, 34.404186, 33.193035>,  <41.774361, 33.746216, 33.526310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981750, 34.404186, 33.193035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.312710, 34.180378, 33.173634>,  <42.511284, 34.046093, 33.161995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.312710, 34.180378, 33.173634>,  <41.981750, 34.404186, 33.193035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312710, 34.180378, 33.173634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155102, 0.310646, -0.937786,
		0.539780, 0.768396, 0.343810,
		0.827394, -0.559523, -0.048501,
		42.560928, 34.012520, 33.159084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497025, 34.839451, 32.810162>,  <41.981750, 34.404186, 33.193035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497025, 34.839451, 32.810162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634373, 34.464951, 32.780396>,  <42.716782, 34.240250, 32.762535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634373, 34.464951, 32.780396>,  <42.497025, 34.839451, 32.810162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634373, 34.464951, 32.780396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249979, 0.167478, -0.953657,
		0.905323, 0.308852, 0.291549,
		0.343367, -0.936248, -0.074415,
		42.737385, 34.184074, 32.758072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197311, 34.884628, 32.579079>,  <42.497025, 34.839451, 32.810162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197311, 34.884628, 32.579079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058914, 34.519878, 32.490738>,  <42.975876, 34.301029, 32.437733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.058914, 34.519878, 32.490738>,  <43.197311, 34.884628, 32.579079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.058914, 34.519878, 32.490738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443883, 0.048287, -0.894783,
		0.826592, -0.407623, 0.388058,
		-0.345996, -0.911873, -0.220851,
		42.955116, 34.246315, 32.424484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832817, 34.486622, 32.372070>,  <43.197311, 34.884628, 32.579079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832817, 34.486622, 32.372070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.494766, 34.343250, 32.213428>,  <43.291935, 34.257229, 32.118244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.494766, 34.343250, 32.213428>,  <43.832817, 34.486622, 32.372070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.494766, 34.343250, 32.213428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387656, 0.099934, -0.916371,
		0.368084, -0.928195, 0.054489,
		-0.845126, -0.358425, -0.396604,
		43.241230, 34.235722, 32.094448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.006409, 34.047829, 31.760960>,  <43.832817, 34.486622, 32.372070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.006409, 34.047829, 31.760960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617672, 34.119942, 31.700258>,  <43.384430, 34.163208, 31.663837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.617672, 34.119942, 31.700258>,  <44.006409, 34.047829, 31.760960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.617672, 34.119942, 31.700258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175594, 0.124550, -0.976552,
		-0.157154, -0.975698, -0.152699,
		-0.971838, 0.180282, -0.151753,
		43.326122, 34.174026, 31.654732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.847317, 33.658531, 31.215872>,  <44.006409, 34.047829, 31.760960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.847317, 33.658531, 31.215872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574875, 33.950661, 31.236713>,  <43.411407, 34.125938, 31.249218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.574875, 33.950661, 31.236713>,  <43.847317, 33.658531, 31.215872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.574875, 33.950661, 31.236713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269273, 0.316030, -0.909735,
		-0.680870, -0.605597, -0.411908,
		-0.681108, 0.730327, 0.052105,
		43.370541, 34.169758, 31.252344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.517941, 33.623295, 30.619572>,  <43.847317, 33.658531, 31.215872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.517941, 33.623295, 30.619572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415493, 33.994789, 30.726788>,  <43.354023, 34.217686, 30.791117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.415493, 33.994789, 30.726788>,  <43.517941, 33.623295, 30.619572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.415493, 33.994789, 30.726788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235584, 0.328901, -0.914508,
		-0.937497, -0.171080, -0.303035,
		-0.256123, 0.928739, 0.268039,
		43.338657, 34.273411, 30.807199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.187893, 33.815388, 30.093092>,  <43.517941, 33.623295, 30.619572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.187893, 33.815388, 30.093092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258858, 34.166180, 30.271721>,  <43.301437, 34.376656, 30.378899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258858, 34.166180, 30.271721>,  <43.187893, 33.815388, 30.093092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258858, 34.166180, 30.271721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165232, 0.420788, -0.891984,
		-0.970166, 0.232040, -0.070251,
		0.177415, 0.876980, 0.446575,
		43.312084, 34.429276, 30.405693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.653278, 34.285461, 29.844124>,  <43.187893, 33.815388, 30.093092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.653278, 34.285461, 29.844124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944324, 34.528076, 29.972309>,  <43.118950, 34.673645, 30.049221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.944324, 34.528076, 29.972309>,  <42.653278, 34.285461, 29.844124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.944324, 34.528076, 29.972309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043592, 0.507093, -0.860789,
		-0.684603, 0.612350, 0.395406,
		0.727611, 0.606535, 0.320464,
		43.162609, 34.710037, 30.068449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463303, 35.000240, 29.765486>,  <42.653278, 34.285461, 29.844124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463303, 35.000240, 29.765486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863281, 34.999832, 29.769493>,  <43.103268, 34.999588, 29.771896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.863281, 34.999832, 29.769493>,  <42.463303, 35.000240, 29.765486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863281, 34.999832, 29.769493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008609, 0.602361, -0.798177,
		-0.005221, 0.798223, 0.602340,
		0.999949, -0.001018, 0.010017,
		43.163265, 34.999527, 29.772499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547146, 35.581093, 29.538786>,  <42.463303, 35.000240, 29.765486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547146, 35.581093, 29.538786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.906631, 35.413345, 29.487497>,  <43.122322, 35.312695, 29.456724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.906631, 35.413345, 29.487497>,  <42.547146, 35.581093, 29.538786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906631, 35.413345, 29.487497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196689, 0.646799, -0.736862,
		0.391953, 0.637008, 0.663772,
		0.898714, -0.419372, -0.128223,
		43.176247, 35.287533, 29.449030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.009792, 36.146629, 29.645947>,  <42.547146, 35.581093, 29.538786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.009792, 36.146629, 29.645947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177799, 35.848625, 29.438658>,  <43.278603, 35.669823, 29.314283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.177799, 35.848625, 29.438658>,  <43.009792, 36.146629, 29.645947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.177799, 35.848625, 29.438658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333822, 0.657829, -0.675147,
		0.843891, 0.110576, 0.524997,
		0.420013, -0.745006, -0.518223,
		43.303802, 35.625122, 29.283192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.707443, 36.506729, 29.211111>,  <43.009792, 36.146629, 29.645947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.707443, 36.506729, 29.211111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618393, 36.154045, 29.044724>,  <43.564964, 35.942436, 28.944891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618393, 36.154045, 29.044724>,  <43.707443, 36.506729, 29.211111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.618393, 36.154045, 29.044724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403698, 0.305005, -0.862554,
		0.887394, -0.359950, 0.288043,
		-0.222622, -0.881707, -0.415971,
		43.551605, 35.889534, 28.919931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.319744, 36.264637, 28.830282>,  <43.707443, 36.506729, 29.211111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.319744, 36.264637, 28.830282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.019035, 36.047897, 28.679955>,  <43.838612, 35.917854, 28.589758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.019035, 36.047897, 28.679955>,  <44.319744, 36.264637, 28.830282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.019035, 36.047897, 28.679955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295027, 0.233329, -0.926562,
		0.589749, -0.807437, -0.015549,
		-0.751768, -0.541851, -0.375821,
		43.793507, 35.885342, 28.567207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.584282, 35.888672, 28.186636>,  <44.319744, 36.264637, 28.830282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.584282, 35.888672, 28.186636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.188038, 35.938595, 28.164330>,  <43.950291, 35.968548, 28.150946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.188038, 35.938595, 28.164330>,  <44.584282, 35.888672, 28.186636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.188038, 35.938595, 28.164330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090936, 0.297072, -0.950515,
		-0.102062, -0.946664, -0.305633,
		-0.990613, 0.124805, -0.055766,
		43.890854, 35.976036, 28.147600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474812, 35.838192, 27.523083>,  <44.584282, 35.888672, 28.186636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474812, 35.838192, 27.523083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.117035, 36.000843, 27.597521>,  <43.902370, 36.098434, 27.642183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.117035, 36.000843, 27.597521>,  <44.474812, 35.838192, 27.523083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.117035, 36.000843, 27.597521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012975, 0.392370, -0.919716,
		-0.447003, -0.825044, -0.345675,
		-0.894438, 0.406630, 0.186096,
		43.848701, 36.122833, 27.653349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.041279, 35.740726, 26.936325>,  <44.474812, 35.838192, 27.523083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.041279, 35.740726, 26.936325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848682, 36.042423, 27.114891>,  <43.733124, 36.223442, 27.222031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.848682, 36.042423, 27.114891>,  <44.041279, 35.740726, 26.936325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848682, 36.042423, 27.114891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028607, 0.495550, -0.868108,
		-0.875982, -0.430760, -0.217028,
		-0.481494, 0.754239, 0.446416,
		43.704235, 36.268696, 27.248816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667015, 36.148285, 26.383146>,  <44.041279, 35.740726, 26.936325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667015, 36.148285, 26.383146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684574, 36.399567, 26.693871>,  <43.695110, 36.550335, 26.880304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684574, 36.399567, 26.693871>,  <43.667015, 36.148285, 26.383146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.684574, 36.399567, 26.693871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193131, 0.757556, -0.623546,
		-0.980190, 0.177400, -0.088068,
		0.043901, 0.628202, 0.776810,
		43.697746, 36.588028, 26.926914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396465, 36.742710, 26.129118>,  <43.667015, 36.148285, 26.383146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396465, 36.742710, 26.129118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.620499, 36.844170, 26.444576>,  <43.754921, 36.905045, 26.633852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.620499, 36.844170, 26.444576>,  <43.396465, 36.742710, 26.129118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.620499, 36.844170, 26.444576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236597, 0.863347, -0.445707,
		-0.793930, 0.436225, 0.423535,
		0.560086, 0.253653, 0.788647,
		43.788525, 36.920265, 26.681170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397739, 37.469971, 25.982662>,  <43.396465, 36.742710, 26.129118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.397739, 37.469971, 25.982662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675133, 37.394371, 26.260761>,  <43.841568, 37.349010, 26.427620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675133, 37.394371, 26.260761>,  <43.397739, 37.469971, 25.982662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675133, 37.394371, 26.260761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671346, 0.519749, -0.528351,
		-0.261498, 0.833152, 0.487316,
		0.693479, -0.188995, 0.695247,
		43.883175, 37.337673, 26.469336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.601440, 38.051052, 26.349834>,  <43.397739, 37.469971, 25.982662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.601440, 38.051052, 26.349834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.894505, 37.781338, 26.312836>,  <44.070343, 37.619511, 26.290636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.894505, 37.781338, 26.312836>,  <43.601440, 38.051052, 26.349834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.894505, 37.781338, 26.312836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459984, 0.590740, -0.662903,
		0.501625, 0.443134, 0.742970,
		0.732657, -0.674283, -0.092495,
		44.114304, 37.579052, 26.285088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340076, 38.164829, 26.642378>,  <43.601440, 38.051052, 26.349834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340076, 38.164829, 26.642378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.320210, 37.961975, 26.298204>,  <44.308289, 37.840263, 26.091700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.320210, 37.961975, 26.298204>,  <44.340076, 38.164829, 26.642378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.320210, 37.961975, 26.298204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583124, 0.684697, -0.437215,
		0.810864, -0.523453, 0.261719,
		-0.049663, -0.507136, -0.860434,
		44.305309, 37.809834, 26.040073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.015255, 37.982052, 26.444405>,  <44.340076, 38.164829, 26.642378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.015255, 37.982052, 26.444405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.785027, 38.029892, 26.120821>,  <44.646889, 38.058598, 25.926670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.785027, 38.029892, 26.120821>,  <45.015255, 37.982052, 26.444405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.785027, 38.029892, 26.120821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792659, 0.324787, -0.515951,
		0.201029, -0.938194, -0.281743,
		-0.575568, 0.119605, -0.808960,
		44.612354, 38.065773, 25.878134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.882435, 37.558426, 25.832783>,  <45.015255, 37.982052, 26.444405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.882435, 37.558426, 25.832783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.832569, 37.891777, 25.617399>,  <44.802650, 38.091789, 25.488169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.832569, 37.891777, 25.617399>,  <44.882435, 37.558426, 25.832783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.832569, 37.891777, 25.617399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978595, -0.013712, 0.205342,
		0.163744, 0.552530, 0.817250,
		-0.124663, 0.833380, -0.538458,
		44.795170, 38.141792, 25.455862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.546024, 37.832241, 25.840811>,  <44.882435, 37.558426, 25.832783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.546024, 37.832241, 25.840811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884884, 37.734924, 26.029764>,  <46.088200, 37.676533, 26.143137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.884884, 37.734924, 26.029764>,  <45.546024, 37.832241, 25.840811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.884884, 37.734924, 26.029764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338188, 0.932582, -0.126173,
		-0.409838, 0.266641, 0.872316,
		0.847149, -0.243296, 0.472383,
		46.139030, 37.661934, 26.171478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.704678, 38.397583, 26.252605>,  <45.546024, 37.832241, 25.840811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.704678, 38.397583, 26.252605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.045635, 38.202080, 26.178263>,  <46.250210, 38.084778, 26.133657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.045635, 38.202080, 26.178263>,  <45.704678, 38.397583, 26.252605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.045635, 38.202080, 26.178263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495932, 0.868315, -0.008996,
		0.165778, -0.084504, 0.982536,
		0.852390, -0.488762, -0.185856,
		46.301353, 38.055450, 26.122505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.308319, 38.575626, 26.711500>,  <45.704678, 38.397583, 26.252605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.308319, 38.575626, 26.711500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.454086, 38.445633, 26.362423>,  <46.541546, 38.367638, 26.152977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.454086, 38.445633, 26.362423>,  <46.308319, 38.575626, 26.711500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.454086, 38.445633, 26.362423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578369, 0.813460, -0.061411,
		0.729857, -0.482359, 0.484395,
		0.364414, -0.324980, -0.872691,
		46.563412, 38.348141, 26.100616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.504910, 38.564671, 27.491213>,  <46.308319, 38.575626, 26.711500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.504910, 38.564671, 27.491213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.609627, 38.941010, 27.577261>,  <46.672459, 39.166813, 27.628889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.609627, 38.941010, 27.577261>,  <46.504910, 38.564671, 27.491213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.609627, 38.941010, 27.577261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722267, -0.338832, 0.602928,
		0.640151, -0.002469, -0.768245,
		0.261795, 0.940844, 0.215120,
		46.688164, 39.223263, 27.641798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.251625, 38.602383, 27.470814>,  <46.504910, 38.564671, 27.491213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.251625, 38.602383, 27.470814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.115051, 38.890480, 27.712366>,  <47.033108, 39.063339, 27.857298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.115051, 38.890480, 27.712366>,  <47.251625, 38.602383, 27.470814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.115051, 38.890480, 27.712366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460121, -0.432156, 0.775583,
		0.819580, 0.542667, -0.183848,
		-0.341433, 0.720245, 0.603879,
		47.012623, 39.106552, 27.893530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.708233, 38.749680, 28.016794>,  <47.251625, 38.602383, 27.470814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.708233, 38.749680, 28.016794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.324100, 38.790543, 28.120583>,  <47.093620, 38.815060, 28.182856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.324100, 38.790543, 28.120583>,  <47.708233, 38.749680, 28.016794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.324100, 38.790543, 28.120583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174389, -0.506066, 0.844681,
		0.217603, 0.856423, 0.468176,
		-0.960332, 0.102161, 0.259472,
		47.035999, 38.821190, 28.198423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.683506, 38.788475, 28.728380>,  <47.708233, 38.749680, 28.016794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.683506, 38.788475, 28.728380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.319580, 38.659607, 28.623737>,  <47.101223, 38.582287, 28.560951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.319580, 38.659607, 28.623737>,  <47.683506, 38.788475, 28.728380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.319580, 38.659607, 28.623737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013380, -0.652805, 0.757408,
		-0.414794, 0.685602, 0.598244,
		-0.909817, -0.322173, -0.261606,
		47.046635, 38.562954, 28.545256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.322365, 38.857368, 29.301609>,  <47.683506, 38.788475, 28.728380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.322365, 38.857368, 29.301609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.119911, 38.593197, 29.079741>,  <46.998440, 38.434692, 28.946619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.119911, 38.593197, 29.079741>,  <47.322365, 38.857368, 29.301609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.119911, 38.593197, 29.079741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129604, -0.577583, 0.805978,
		-0.852662, 0.479818, 0.206739,
		-0.506132, -0.660433, -0.554670,
		46.968071, 38.395065, 28.913340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.616489, 38.794659, 29.589663>,  <47.322365, 38.857368, 29.301609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.616489, 38.794659, 29.589663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.702896, 38.468075, 29.375471>,  <46.754738, 38.272125, 29.246956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.702896, 38.468075, 29.375471>,  <46.616489, 38.794659, 29.589663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.702896, 38.468075, 29.375471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230005, -0.575543, 0.784760,
		-0.948913, -0.046357, -0.312115,
		0.216015, -0.816456, -0.535478,
		46.767700, 38.223137, 29.214828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.099007, 38.322262, 29.783554>,  <46.616489, 38.794659, 29.589663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.099007, 38.322262, 29.783554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.382271, 38.092255, 29.619671>,  <46.552231, 37.954250, 29.521341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.382271, 38.092255, 29.619671>,  <46.099007, 38.322262, 29.783554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.382271, 38.092255, 29.619671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210804, -0.726008, 0.654579,
		-0.673847, -0.377180, -0.635347,
		0.708161, -0.575020, -0.409707,
		46.594719, 37.919750, 29.496758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.901081, 37.681465, 29.949903>,  <46.099007, 38.322262, 29.783554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.901081, 37.681465, 29.949903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.280285, 37.622738, 29.836967>,  <46.507809, 37.587502, 29.769205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.280285, 37.622738, 29.836967>,  <45.901081, 37.681465, 29.949903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.280285, 37.622738, 29.836967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032043, -0.838671, 0.543694,
		-0.316612, -0.524477, -0.790368,
		0.948014, -0.146814, -0.282339,
		46.564690, 37.578693, 29.752266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.884544, 37.061424, 29.495010>,  <45.901081, 37.681465, 29.949903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.884544, 37.061424, 29.495010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.239994, 37.110004, 29.671915>,  <46.453262, 37.139153, 29.778059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.239994, 37.110004, 29.671915>,  <45.884544, 37.061424, 29.495010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.239994, 37.110004, 29.671915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169332, -0.809293, 0.562470,
		0.426231, -0.574714, -0.698592,
		0.888624, 0.121448, 0.442263,
		46.506580, 37.146439, 29.804594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.043346, 36.382786, 29.602249>,  <45.884544, 37.061424, 29.495010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.043346, 36.382786, 29.602249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.275166, 36.601257, 29.844177>,  <46.414257, 36.732342, 29.989334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.275166, 36.601257, 29.844177>,  <46.043346, 36.382786, 29.602249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.275166, 36.601257, 29.844177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113067, -0.681099, 0.723409,
		0.807055, -0.487636, -0.332975,
		0.579549, 0.546182, 0.604820,
		46.449032, 36.765114, 30.025623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.579407, 35.892345, 29.877853>,  <46.043346, 36.382786, 29.602249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.579407, 35.892345, 29.877853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.571964, 36.206764, 30.125010>,  <46.567497, 36.395416, 30.273304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.571964, 36.206764, 30.125010>,  <46.579407, 35.892345, 29.877853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.571964, 36.206764, 30.125010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114512, -0.615608, 0.779689,
		0.993248, -0.056247, 0.101467,
		-0.018609, 0.786043, 0.617892,
		46.566383, 36.442577, 30.310377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.019669, 35.660294, 30.369308>,  <46.579407, 35.892345, 29.877853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.019669, 35.660294, 30.369308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.811165, 35.960495, 30.531805>,  <46.686062, 36.140617, 30.629303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.811165, 35.960495, 30.531805>,  <47.019669, 35.660294, 30.369308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.811165, 35.960495, 30.531805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004558, -0.473571, 0.880744,
		0.853387, 0.460946, 0.243432,
		-0.521258, 0.750506, 0.406241,
		46.654789, 36.185646, 30.653677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.333405, 35.732014, 30.970873>,  <47.019669, 35.660294, 30.369308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.333405, 35.732014, 30.970873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.978268, 35.907448, 31.026567>,  <46.765186, 36.012707, 31.059984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.978268, 35.907448, 31.026567>,  <47.333405, 35.732014, 30.970873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.978268, 35.907448, 31.026567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059316, -0.409142, 0.910541,
		0.456317, 0.800153, 0.389267,
		-0.887838, 0.438585, 0.139237,
		46.711918, 36.039024, 31.068338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.308495, 36.075748, 31.638342>,  <47.333405, 35.732014, 30.970873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.308495, 36.075748, 31.638342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.923706, 36.016682, 31.546427>,  <46.692833, 35.981243, 31.491278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.923706, 36.016682, 31.546427>,  <47.308495, 36.075748, 31.638342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.923706, 36.016682, 31.546427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190409, -0.240625, 0.951758,
		-0.195832, 0.959320, 0.203358,
		-0.961974, -0.147664, -0.229785,
		46.635113, 35.972382, 31.477491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.990559, 36.396637, 32.084808>,  <47.308495, 36.075748, 31.638342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.990559, 36.396637, 32.084808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.723450, 36.132843, 31.946733>,  <46.563183, 35.974567, 31.863890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.723450, 36.132843, 31.946733>,  <46.990559, 36.396637, 32.084808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.723450, 36.132843, 31.946733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191033, -0.296364, 0.935775,
		-0.719432, 0.690829, 0.071921,
		-0.667775, -0.659487, -0.345185,
		46.523117, 35.934998, 31.843178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.455624, 36.250179, 32.595024>,  <46.990559, 36.396637, 32.084808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.455624, 36.250179, 32.595024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.341312, 35.942516, 32.366383>,  <46.272724, 35.757919, 32.229198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.341312, 35.942516, 32.366383>,  <46.455624, 36.250179, 32.595024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.341312, 35.942516, 32.366383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292002, -0.498219, 0.816402,
		-0.912725, 0.400217, -0.082216,
		-0.285777, -0.769158, -0.571601,
		46.255581, 35.711769, 32.194901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.853638, 36.014248, 32.926102>,  <46.455624, 36.250179, 32.595024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.853638, 36.014248, 32.926102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.978012, 35.710594, 32.697353>,  <46.052639, 35.528400, 32.560104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.978012, 35.710594, 32.697353>,  <45.853638, 36.014248, 32.926102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.978012, 35.710594, 32.697353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195621, -0.639929, 0.743117,
		-0.930080, -0.119196, -0.347482,
		0.310940, -0.759133, -0.571868,
		46.071293, 35.482853, 32.525791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.268494, 35.478065, 32.897324>,  <45.853638, 36.014248, 32.926102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.268494, 35.478065, 32.897324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.595085, 35.270802, 32.795437>,  <45.791039, 35.146442, 32.734306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.595085, 35.270802, 32.795437>,  <45.268494, 35.478065, 32.897324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.595085, 35.270802, 32.795437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241550, -0.707234, 0.664435,
		-0.524425, -0.480969, -0.702600,
		0.816475, -0.518160, -0.254713,
		45.840027, 35.115353, 32.719025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.986824, 34.795898, 32.725552>,  <45.268494, 35.478065, 32.897324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.986824, 34.795898, 32.725552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.380787, 34.766483, 32.788235>,  <45.617165, 34.748833, 32.825844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.380787, 34.766483, 32.788235>,  <44.986824, 34.795898, 32.725552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.380787, 34.766483, 32.788235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167918, -0.625877, 0.761630,
		0.042069, -0.776446, -0.628777,
		0.984903, -0.073542, 0.156710,
		45.676258, 34.744419, 32.835247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.198586, 34.131294, 32.598171>,  <44.986824, 34.795898, 32.725552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.198586, 34.131294, 32.598171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.468830, 34.292282, 32.845253>,  <45.630978, 34.388874, 32.993504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.468830, 34.292282, 32.845253>,  <45.198586, 34.131294, 32.598171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.468830, 34.292282, 32.845253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227315, -0.683312, 0.693840,
		0.701336, -0.609182, -0.370168,
		0.675615, 0.402470, 0.617707,
		45.671516, 34.413025, 33.030563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.563953, 33.599430, 32.795723>,  <45.198586, 34.131294, 32.598171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.563953, 33.599430, 32.795723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674770, 33.863792, 33.074711>,  <45.741261, 34.022408, 33.242104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.674770, 33.863792, 33.074711>,  <45.563953, 33.599430, 32.795723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.674770, 33.863792, 33.074711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039423, -0.717448, 0.695495,
		0.960050, -0.220176, -0.172706,
		0.277039, 0.660901, 0.697466,
		45.757881, 34.062061, 33.283951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.947529, 33.195049, 33.102352>,  <45.563953, 33.599430, 32.795723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.947529, 33.195049, 33.102352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.868923, 33.491558, 33.359066>,  <45.821758, 33.669464, 33.513096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.868923, 33.491558, 33.359066>,  <45.947529, 33.195049, 33.102352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.868923, 33.491558, 33.359066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130277, -0.668489, 0.732224,
		0.971808, 0.060282, 0.227938,
		-0.196514, 0.741276, 0.641789,
		45.809971, 33.713940, 33.551601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.188068, 33.009331, 33.795021>,  <45.947529, 33.195049, 33.102352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.188068, 33.009331, 33.795021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.897404, 33.279968, 33.842651>,  <45.723003, 33.442352, 33.871231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.897404, 33.279968, 33.842651>,  <46.188068, 33.009331, 33.795021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.897404, 33.279968, 33.842651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466459, -0.613173, 0.637523,
		0.504360, 0.407720, 0.761174,
		-0.726662, 0.676597, 0.119075,
		45.679405, 33.482948, 33.878372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.092999, 33.197330, 34.483654>,  <46.188068, 33.009331, 33.795021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.092999, 33.197330, 34.483654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747620, 33.235161, 34.285454>,  <45.540394, 33.257858, 34.166534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747620, 33.235161, 34.285454>,  <46.092999, 33.197330, 34.483654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.747620, 33.235161, 34.285454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354786, -0.812127, 0.463223,
		-0.358599, 0.575764, 0.734781,
		-0.863443, 0.094579, -0.495501,
		45.488586, 33.263535, 34.136803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.396187, 33.854073, 34.485764>,  <46.092999, 33.197330, 34.483654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.396187, 33.854073, 34.485764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.628891, 33.726582, 34.186440>,  <46.768513, 33.650085, 34.006844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.628891, 33.726582, 34.186440>,  <46.396187, 33.854073, 34.485764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.628891, 33.726582, 34.186440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364058, 0.924756, -0.110849,
		0.727334, -0.207940, 0.654023,
		0.581762, -0.318726, -0.748309,
		46.803421, 33.630962, 33.961948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.088039, 34.097980, 34.647205>,  <46.396187, 33.854073, 34.485764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.088039, 34.097980, 34.647205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.015713, 34.081291, 34.254154>,  <46.972317, 34.071278, 34.018322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.015713, 34.081291, 34.254154>,  <47.088039, 34.097980, 34.647205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.015713, 34.081291, 34.254154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329042, 0.938962, -0.100413,
		0.926843, -0.341483, -0.156050,
		-0.180815, -0.041720, -0.982632,
		46.961468, 34.068775, 33.959366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.597523, 34.536980, 34.352947>,  <47.088039, 34.097980, 34.647205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.597523, 34.536980, 34.352947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.305626, 34.535297, 34.079464>,  <47.130486, 34.534286, 33.915375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.305626, 34.535297, 34.079464>,  <47.597523, 34.536980, 34.352947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.305626, 34.535297, 34.079464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254761, 0.926298, -0.277613,
		0.634482, -0.376768, -0.674891,
		-0.729746, -0.004205, -0.683706,
		47.086700, 34.534035, 33.874352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.299896, 34.801476, 34.945240>,  <47.597523, 34.536980, 34.352947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.299896, 34.801476, 34.945240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.683517, 34.914043, 34.932434>,  <47.913689, 34.981583, 34.924751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.683517, 34.914043, 34.932434>,  <47.299896, 34.801476, 34.945240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.683517, 34.914043, 34.932434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241010, -0.751467, 0.614175,
		0.148782, -0.596741, -0.788520,
		0.959051, 0.281420, -0.032016,
		47.971233, 34.998470, 34.922829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.054714, 33.048218, 43.030796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.663948, 33.129028, 43.058552>,  <34.429489, 33.177513, 43.075207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.663948, 33.129028, 43.058552>,  <35.054714, 33.048218, 43.030796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663948, 33.129028, 43.058552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020187, 0.236081, -0.971524,
		-0.212651, -0.950501, -0.226554,
		-0.976919, 0.202022, 0.069390,
		34.370872, 33.189636, 43.079369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740963, 32.559441, 42.507580>,  <35.054714, 33.048218, 43.030796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740963, 32.559441, 42.507580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.487194, 32.861012, 42.575825>,  <34.334934, 33.041954, 42.616772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.487194, 32.861012, 42.575825>,  <34.740963, 32.559441, 42.507580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487194, 32.861012, 42.575825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124718, 0.117991, -0.985152,
		-0.762863, -0.646276, 0.019172,
		-0.634418, 0.753926, 0.170613,
		34.296867, 33.087189, 42.627010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198990, 32.398125, 42.087402>,  <34.740963, 32.559441, 42.507580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198990, 32.398125, 42.087402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.186802, 32.792088, 42.155560>,  <34.179489, 33.028465, 42.196453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.186802, 32.792088, 42.155560>,  <34.198990, 32.398125, 42.087402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186802, 32.792088, 42.155560> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183410, 0.162068, -0.969585,
		-0.982564, -0.060800, 0.175703,
		-0.030475, 0.984905, 0.170393,
		34.177658, 33.087559, 42.206676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674850, 32.583820, 41.691891>,  <34.198990, 32.398125, 42.087402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674850, 32.583820, 41.691891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.891113, 32.914478, 41.754299>,  <34.020870, 33.112873, 41.791744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.891113, 32.914478, 41.754299>,  <33.674850, 32.583820, 41.691891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891113, 32.914478, 41.754299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015542, 0.175614, -0.984336,
		-0.841099, 0.534614, 0.082099,
		0.540658, 0.826648, 0.156017,
		34.053310, 33.162472, 41.801105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.424484, 33.167179, 41.257244>,  <33.674850, 32.583820, 41.691891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.424484, 33.167179, 41.257244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.786175, 33.303719, 41.359894>,  <34.003189, 33.385643, 41.421482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.786175, 33.303719, 41.359894>,  <33.424484, 33.167179, 41.257244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786175, 33.303719, 41.359894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175448, 0.250932, -0.951972,
		-0.389350, 0.905822, 0.167010,
		0.904226, 0.341349, 0.256625,
		34.057442, 33.406124, 41.436882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502991, 33.794647, 40.938580>,  <33.424484, 33.167179, 41.257244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502991, 33.794647, 40.938580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.880245, 33.691132, 41.022026>,  <34.106598, 33.629021, 41.072094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.880245, 33.691132, 41.022026>,  <33.502991, 33.794647, 40.938580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880245, 33.691132, 41.022026> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301601, 0.402354, -0.864377,
		0.139751, 0.878146, 0.457525,
		0.943137, -0.258788, 0.208620,
		34.163185, 33.613495, 41.084614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775406, 34.309872, 40.729309>,  <33.502991, 33.794647, 40.938580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775406, 34.309872, 40.729309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.071808, 34.041336, 40.735050>,  <34.249649, 33.880215, 40.738495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.071808, 34.041336, 40.735050>,  <33.775406, 34.309872, 40.729309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071808, 34.041336, 40.735050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182750, 0.181057, -0.966344,
		0.646148, 0.718693, 0.256853,
		0.741010, -0.671341, 0.014351,
		34.294109, 33.839935, 40.739357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.307686, 34.619862, 40.453232>,  <33.775406, 34.309872, 40.729309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.307686, 34.619862, 40.453232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.437233, 34.244141, 40.407925>,  <34.514961, 34.018707, 40.380741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.437233, 34.244141, 40.407925>,  <34.307686, 34.619862, 40.453232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437233, 34.244141, 40.407925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129795, 0.162703, -0.978101,
		0.937158, 0.302071, 0.174610,
		0.323866, -0.939298, -0.113271,
		34.534393, 33.962353, 40.373943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944145, 34.649727, 40.107464>,  <34.307686, 34.619862, 40.453232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944145, 34.649727, 40.107464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.852730, 34.265396, 40.044743>,  <34.797882, 34.034798, 40.007111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.852730, 34.265396, 40.044743>,  <34.944145, 34.649727, 40.107464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852730, 34.265396, 40.044743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324244, 0.076750, -0.942855,
		0.917952, -0.266321, 0.294001,
		-0.228537, -0.960824, -0.156806,
		34.784168, 33.977150, 39.997700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428886, 34.555885, 39.736454>,  <34.944145, 34.649727, 40.107464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428886, 34.555885, 39.736454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.227100, 34.217411, 39.667778>,  <35.106030, 34.014324, 39.626572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.227100, 34.217411, 39.667778>,  <35.428886, 34.555885, 39.736454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227100, 34.217411, 39.667778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471379, -0.103310, -0.875859,
		0.723404, -0.522774, 0.450993,
		-0.504468, -0.846188, -0.171690,
		35.075760, 33.963554, 39.616272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959171, 34.026272, 39.665936>,  <35.428886, 34.555885, 39.736454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959171, 34.026272, 39.665936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.612141, 33.930126, 39.491791>,  <35.403923, 33.872437, 39.387306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.612141, 33.930126, 39.491791>,  <35.959171, 34.026272, 39.665936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612141, 33.930126, 39.491791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475981, -0.147737, -0.866958,
		0.144070, -0.959373, 0.242583,
		-0.867575, -0.240368, -0.435359,
		35.351868, 33.858017, 39.361183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086514, 33.396507, 39.358044>,  <35.959171, 34.026272, 39.665936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086514, 33.396507, 39.358044> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.763542, 33.543972, 39.173801>,  <35.569759, 33.632450, 39.063255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.763542, 33.543972, 39.173801>,  <36.086514, 33.396507, 39.358044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763542, 33.543972, 39.173801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434572, -0.156374, -0.886958,
		-0.399015, -0.916316, -0.033950,
		-0.807425, 0.368663, -0.460601,
		35.521317, 33.654572, 39.035622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152012, 33.072960, 38.678303>,  <36.086514, 33.396507, 39.358044>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152012, 33.072960, 38.678303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.877522, 33.358059, 38.620224>,  <35.712830, 33.529118, 38.585377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.877522, 33.358059, 38.620224>,  <36.152012, 33.072960, 38.678303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877522, 33.358059, 38.620224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261131, 0.055093, -0.963730,
		-0.678901, -0.699249, -0.223928,
		-0.686224, 0.712752, -0.145193,
		35.671654, 33.571884, 38.576668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790112, 32.780491, 38.144882>,  <36.152012, 33.072960, 38.678303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790112, 32.780491, 38.144882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.733879, 33.176414, 38.153904>,  <35.700138, 33.413971, 38.159317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.733879, 33.176414, 38.153904>,  <35.790112, 32.780491, 38.144882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733879, 33.176414, 38.153904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292568, 0.063297, -0.954147,
		-0.945854, -0.127540, -0.298486,
		-0.140585, 0.989812, 0.022555,
		35.691704, 33.473358, 38.160671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352848, 33.007927, 37.526943>,  <35.790112, 32.780491, 38.144882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352848, 33.007927, 37.526943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.568882, 33.320404, 37.652199>,  <35.698502, 33.507889, 37.727352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.568882, 33.320404, 37.652199>,  <35.352848, 33.007927, 37.526943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568882, 33.320404, 37.652199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337697, 0.139657, -0.930836,
		-0.770891, 0.608473, -0.188379,
		0.540080, 0.781189, 0.313140,
		35.730907, 33.554760, 37.746140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175079, 33.535545, 36.976242>,  <35.352848, 33.007927, 37.526943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175079, 33.535545, 36.976242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.510010, 33.651382, 37.161720>,  <35.710968, 33.720886, 37.273006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.510010, 33.651382, 37.161720>,  <35.175079, 33.535545, 36.976242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510010, 33.651382, 37.161720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335678, 0.397125, -0.854173,
		-0.431511, 0.870877, 0.235313,
		0.837328, 0.289595, 0.463698,
		35.761208, 33.738262, 37.300831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297340, 34.192635, 36.622189>,  <35.175079, 33.535545, 36.976242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297340, 34.192635, 36.622189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.629608, 34.049034, 36.792416>,  <35.828968, 33.962872, 36.894550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.629608, 34.049034, 36.792416>,  <35.297340, 34.192635, 36.622189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629608, 34.049034, 36.792416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540975, 0.339662, -0.769400,
		0.131670, 0.869336, 0.476359,
		0.830668, -0.359005, 0.425566,
		35.878807, 33.941334, 36.920086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811954, 34.754333, 36.449520>,  <35.297340, 34.192635, 36.622189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811954, 34.754333, 36.449520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.993526, 34.415413, 36.559807>,  <36.102470, 34.212059, 36.625977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.993526, 34.415413, 36.559807>,  <35.811954, 34.754333, 36.449520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993526, 34.415413, 36.559807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648484, 0.101944, -0.754372,
		0.611075, 0.521231, 0.595739,
		0.453934, -0.847305, 0.275714,
		36.129707, 34.161221, 36.642521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512798, 34.874168, 36.419159>,  <35.811954, 34.754333, 36.449520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512798, 34.874168, 36.419159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.531139, 34.475677, 36.389671>,  <36.542145, 34.236584, 36.371979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.531139, 34.475677, 36.389671>,  <36.512798, 34.874168, 36.419159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531139, 34.475677, 36.389671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606931, 0.086396, -0.790045,
		0.793431, -0.008512, 0.608601,
		0.045856, -0.996225, -0.073716,
		36.544895, 34.176811, 36.367558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205750, 34.733166, 36.326092>,  <36.512798, 34.874168, 36.419159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205750, 34.733166, 36.326092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.018814, 34.415516, 36.170673>,  <36.906654, 34.224926, 36.077423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.018814, 34.415516, 36.170673>,  <37.205750, 34.733166, 36.326092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018814, 34.415516, 36.170673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643742, -0.004425, -0.765229,
		0.605966, -0.607743, 0.513278,
		-0.467334, -0.794121, -0.388549,
		36.878613, 34.177280, 36.054108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736679, 34.234295, 36.257969>,  <37.205750, 34.733166, 36.326092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736679, 34.234295, 36.257969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.437031, 34.111221, 36.023312>,  <37.257244, 34.037376, 35.882515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.437031, 34.111221, 36.023312>,  <37.736679, 34.234295, 36.257969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437031, 34.111221, 36.023312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656620, -0.227783, -0.719003,
		0.087600, -0.923820, 0.372669,
		-0.749117, -0.307686, -0.586645,
		37.212296, 34.018917, 35.847317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104992, 34.727390, 35.840656>,  <37.736679, 34.234295, 36.257969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104992, 34.727390, 35.840656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.066597, 34.905571, 35.484596>,  <38.043560, 35.012478, 35.270962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.066597, 34.905571, 35.484596>,  <38.104992, 34.727390, 35.840656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066597, 34.905571, 35.484596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554968, -0.718434, -0.419361,
		-0.826316, -0.534255, -0.178251,
		-0.095984, 0.445448, -0.890148,
		38.037804, 35.039204, 35.217552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677891, 34.306770, 35.629902>,  <38.104992, 34.727390, 35.840656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677891, 34.306770, 35.629902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.005585, 34.528290, 35.689445>,  <39.202202, 34.661201, 35.725170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.005585, 34.528290, 35.689445>,  <38.677891, 34.306770, 35.629902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005585, 34.528290, 35.689445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149438, -0.456776, 0.876940,
		0.553643, -0.696176, -0.456966,
		0.819236, 0.553800, 0.148855,
		39.251354, 34.694431, 35.734100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128067, 33.794323, 35.807568>,  <38.677891, 34.306770, 35.629902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.128067, 33.794323, 35.807568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.243656, 34.152096, 35.944092>,  <39.313007, 34.366760, 36.026009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.243656, 34.152096, 35.944092>,  <39.128067, 33.794323, 35.807568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243656, 34.152096, 35.944092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112699, -0.385827, 0.915662,
		0.950681, -0.226133, -0.212294,
		0.288970, 0.894428, 0.341313,
		39.330349, 34.420425, 36.046486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760834, 33.684387, 36.186451>,  <39.128067, 33.794323, 35.807568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760834, 33.684387, 36.186451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.649940, 34.040619, 36.330677>,  <39.583405, 34.254356, 36.417213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.649940, 34.040619, 36.330677>,  <39.760834, 33.684387, 36.186451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649940, 34.040619, 36.330677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279660, -0.284229, 0.917063,
		0.919200, 0.355080, -0.170261,
		-0.277238, 0.890580, 0.360565,
		39.566769, 34.307793, 36.438847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.188782, 33.758812, 36.757393>,  <39.760834, 33.684387, 36.186451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.188782, 33.758812, 36.757393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.914898, 34.042614, 36.824066>,  <39.750568, 34.212894, 36.864071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.914898, 34.042614, 36.824066>,  <40.188782, 33.758812, 36.757393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914898, 34.042614, 36.824066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166219, -0.070650, 0.983555,
		0.709610, 0.701153, -0.069558,
		-0.684708, 0.709502, 0.166679,
		39.709484, 34.255466, 36.874069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350182, 34.235222, 37.373283>,  <40.188782, 33.758812, 36.757393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350182, 34.235222, 37.373283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.954342, 34.290279, 37.356529>,  <39.716839, 34.323315, 37.346478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.954342, 34.290279, 37.356529>,  <40.350182, 34.235222, 37.373283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954342, 34.290279, 37.356529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073024, -0.229694, 0.970519,
		0.123966, 0.963481, 0.237356,
		-0.989596, 0.137644, -0.041883,
		39.657463, 34.331573, 37.343964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109333, 34.721882, 37.879166>,  <40.350182, 34.235222, 37.373283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109333, 34.721882, 37.879166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.789330, 34.498898, 37.790421>,  <39.597328, 34.365108, 37.737175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.789330, 34.498898, 37.790421>,  <40.109333, 34.721882, 37.879166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789330, 34.498898, 37.790421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093886, -0.248910, 0.963965,
		-0.592593, 0.792013, 0.146793,
		-0.800012, -0.557457, -0.221861,
		39.549328, 34.331661, 37.723862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633854, 34.990791, 38.252655>,  <40.109333, 34.721882, 37.879166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633854, 34.990791, 38.252655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.478405, 34.632088, 38.167992>,  <39.385136, 34.416866, 38.117195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.478405, 34.632088, 38.167992>,  <39.633854, 34.990791, 38.252655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478405, 34.632088, 38.167992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005286, -0.231877, 0.972731,
		-0.921382, 0.376906, 0.094853,
		-0.388622, -0.896758, -0.211655,
		39.361820, 34.363060, 38.104496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098412, 34.890614, 38.728527>,  <39.633854, 34.990791, 38.252655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098412, 34.890614, 38.728527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.168694, 34.517117, 38.603790>,  <39.210861, 34.293018, 38.528950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.168694, 34.517117, 38.603790>,  <39.098412, 34.890614, 38.728527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168694, 34.517117, 38.603790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235163, -0.347411, 0.907747,
		-0.955943, -0.086160, -0.280624,
		0.175703, -0.933746, -0.311843,
		39.221405, 34.236992, 38.510239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495239, 34.531364, 38.938820>,  <39.098412, 34.890614, 38.728527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495239, 34.531364, 38.938820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.802708, 34.277596, 38.906166>,  <38.987186, 34.125336, 38.886574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.802708, 34.277596, 38.906166>,  <38.495239, 34.531364, 38.938820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.802708, 34.277596, 38.906166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183476, -0.340946, 0.922005,
		-0.612771, -0.693736, -0.378474,
		0.768667, -0.634419, -0.081638,
		39.033306, 34.087269, 38.881676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213867, 33.966244, 39.212173>,  <38.495239, 34.531364, 38.938820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213867, 33.966244, 39.212173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.603558, 33.882534, 39.178486>,  <38.837372, 33.832310, 39.158272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.603558, 33.882534, 39.178486>,  <38.213867, 33.966244, 39.212173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603558, 33.882534, 39.178486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009828, -0.412367, 0.910964,
		-0.225369, -0.886656, -0.403795,
		0.974224, -0.209272, -0.084221,
		38.895824, 33.819752, 39.153221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348000, 33.250076, 39.388233>,  <38.213867, 33.966244, 39.212173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348000, 33.250076, 39.388233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.702988, 33.424183, 39.448826>,  <38.915981, 33.528648, 39.485184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.702988, 33.424183, 39.448826>,  <38.348000, 33.250076, 39.388233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702988, 33.424183, 39.448826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064228, -0.208680, 0.975873,
		0.456376, -0.875783, -0.157240,
		0.887465, 0.435266, 0.151486,
		38.969227, 33.554764, 39.494270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663143, 32.788593, 39.746319>,  <38.348000, 33.250076, 39.388233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663143, 32.788593, 39.746319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.852158, 33.137573, 39.796196>,  <38.965565, 33.346962, 39.826122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.852158, 33.137573, 39.796196>,  <38.663143, 32.788593, 39.746319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852158, 33.137573, 39.796196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187734, -0.038593, 0.981461,
		0.861086, -0.487181, 0.145552,
		0.472532, 0.872448, 0.124692,
		38.993916, 33.399307, 39.833603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184776, 32.595119, 40.173332>,  <38.663143, 32.788593, 39.746319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184776, 32.595119, 40.173332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.119030, 32.987324, 40.216377>,  <39.079582, 33.222645, 40.242203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.119030, 32.987324, 40.216377>,  <39.184776, 32.595119, 40.173332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119030, 32.987324, 40.216377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233782, -0.144708, 0.961460,
		0.958295, 0.132879, 0.253011,
		-0.164370, 0.980511, 0.107608,
		39.069717, 33.281479, 40.248661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570496, 32.778008, 40.805813>,  <39.184776, 32.595119, 40.173332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570496, 32.778008, 40.805813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.286774, 33.052872, 40.742943>,  <39.116539, 33.217789, 40.705219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.286774, 33.052872, 40.742943>,  <39.570496, 32.778008, 40.805813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286774, 33.052872, 40.742943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279504, -0.069470, 0.957628,
		0.647122, 0.723180, 0.241338,
		-0.709303, 0.687157, -0.157176,
		39.073982, 33.259018, 40.695789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509655, 33.154457, 41.390259>,  <39.570496, 32.778008, 40.805813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509655, 33.154457, 41.390259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.155247, 33.242477, 41.227016>,  <38.942604, 33.295288, 41.129070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.155247, 33.242477, 41.227016>,  <39.509655, 33.154457, 41.390259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155247, 33.242477, 41.227016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444108, -0.149910, 0.883343,
		0.133197, 0.963902, 0.230547,
		-0.886017, 0.220046, -0.408109,
		38.889442, 33.308491, 41.104584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073223, 33.471046, 41.877121>,  <39.509655, 33.154457, 41.390259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.073223, 33.471046, 41.877121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.791088, 33.362076, 41.615349>,  <38.621807, 33.296692, 41.458286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.791088, 33.362076, 41.615349>,  <39.073223, 33.471046, 41.877121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791088, 33.362076, 41.615349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692743, 0.069075, 0.717869,
		-0.150364, 0.959693, -0.237444,
		-0.705335, -0.272429, -0.654435,
		38.579487, 33.280346, 41.419018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474724, 33.905910, 41.948750>,  <39.073223, 33.471046, 41.877121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474724, 33.905910, 41.948750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311520, 33.580856, 41.782307>,  <38.213596, 33.385822, 41.682442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.311520, 33.580856, 41.782307>,  <38.474724, 33.905910, 41.948750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311520, 33.580856, 41.782307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687191, -0.026705, 0.725985,
		-0.601076, 0.582156, -0.547542,
		-0.408015, -0.812638, -0.416104,
		38.189114, 33.337067, 41.657475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815510, 34.066269, 41.965981>,  <38.474724, 33.905910, 41.948750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815510, 34.066269, 41.965981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.832413, 33.667736, 41.936192>,  <37.842552, 33.428616, 41.918320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.832413, 33.667736, 41.936192>,  <37.815510, 34.066269, 41.965981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832413, 33.667736, 41.936192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758996, -0.080484, 0.646101,
		-0.649723, 0.029222, -0.759610,
		0.042256, -0.996327, -0.074472,
		37.845089, 33.368839, 41.913849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.094456, 33.803005, 41.951660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.293900, 33.464848, 42.028290>,  <37.413567, 33.261955, 42.074268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.293900, 33.464848, 42.028290>,  <37.094456, 33.803005, 41.951660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293900, 33.464848, 42.028290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634243, -0.205159, 0.745416,
		-0.590865, -0.493179, -0.638478,
		0.498613, -0.845390, 0.191574,
		37.443481, 33.211231, 42.085762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565022, 33.380241, 42.089512>,  <37.094456, 33.803005, 41.951660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565022, 33.380241, 42.089512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.902927, 33.227985, 42.239964>,  <37.105671, 33.136631, 42.330235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.902927, 33.227985, 42.239964>,  <36.565022, 33.380241, 42.089512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902927, 33.227985, 42.239964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435256, -0.079837, 0.896760,
		-0.311318, -0.921268, -0.233122,
		0.844768, -0.380645, 0.376133,
		37.156357, 33.113792, 42.352802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.270657, 32.905056, 42.395664>,  <36.565022, 33.380241, 42.089512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.270657, 32.905056, 42.395664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.616764, 32.930599, 42.594551>,  <36.824429, 32.945927, 42.713882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.616764, 32.930599, 42.594551>,  <36.270657, 32.905056, 42.395664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616764, 32.930599, 42.594551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488109, -0.118740, 0.864668,
		0.114261, -0.990869, -0.071570,
		0.865271, 0.063864, 0.497219,
		36.876347, 32.949757, 42.743717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253525, 32.415894, 42.863888>,  <36.270657, 32.905056, 42.395664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253525, 32.415894, 42.863888> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.534821, 32.635746, 43.044270>,  <36.703598, 32.767658, 43.152500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.534821, 32.635746, 43.044270>,  <36.253525, 32.415894, 42.863888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534821, 32.635746, 43.044270> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414899, -0.197813, 0.888104,
		0.577337, -0.811648, 0.088933,
		0.703236, 0.549633, 0.450957,
		36.745792, 32.800636, 43.179558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385948, 32.023556, 43.487869>,  <36.253525, 32.415894, 42.863888>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385948, 32.023556, 43.487869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.556618, 32.373531, 43.579460>,  <36.659019, 32.583515, 43.634415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.556618, 32.373531, 43.579460>,  <36.385948, 32.023556, 43.487869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556618, 32.373531, 43.579460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266503, -0.120306, 0.956296,
		0.864247, -0.469053, 0.181841,
		0.426677, 0.874938, 0.228978,
		36.684620, 32.636013, 43.648155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900837, 31.942616, 44.039124>,  <36.385948, 32.023556, 43.487869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900837, 31.942616, 44.039124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.815952, 32.333332, 44.050755>,  <36.765022, 32.567760, 44.057732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.815952, 32.333332, 44.050755>,  <36.900837, 31.942616, 44.039124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815952, 32.333332, 44.050755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014616, -0.026580, 0.999540,
		0.977114, 0.212542, -0.008636,
		-0.212214, 0.976790, 0.029078,
		36.752289, 32.626369, 44.059479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345291, 32.242813, 44.696651>,  <36.900837, 31.942616, 44.039124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345291, 32.242813, 44.696651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026554, 32.468403, 44.609951>,  <36.835312, 32.603756, 44.557930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.026554, 32.468403, 44.609951>,  <37.345291, 32.242813, 44.696651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026554, 32.468403, 44.609951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237733, 0.037144, 0.970620,
		0.555454, 0.824958, 0.104476,
		-0.796840, 0.563972, -0.216751,
		36.787502, 32.637596, 44.544926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497959, 32.856361, 45.109032>,  <37.345291, 32.242813, 44.696651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497959, 32.856361, 45.109032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.107044, 32.831474, 45.028000>,  <36.872494, 32.816544, 44.979382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.107044, 32.831474, 45.028000>,  <37.497959, 32.856361, 45.109032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107044, 32.831474, 45.028000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208153, 0.102334, 0.972728,
		-0.039788, 0.992803, -0.112960,
		-0.977287, -0.062216, -0.202583,
		36.813858, 32.812809, 44.967224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259483, 33.383549, 45.549702>,  <37.497959, 32.856361, 45.109032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259483, 33.383549, 45.549702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.966473, 33.124653, 45.465328>,  <36.790668, 32.969315, 45.414703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.966473, 33.124653, 45.465328>,  <37.259483, 33.383549, 45.549702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966473, 33.124653, 45.465328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177229, -0.117847, 0.977088,
		-0.657266, 0.753124, -0.028384,
		-0.732524, -0.647238, -0.210932,
		36.746716, 32.930481, 45.402050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902267, 33.376877, 46.173660>,  <37.259483, 33.383549, 45.549702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902267, 33.376877, 46.173660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.740925, 33.054024, 46.001225>,  <36.644119, 32.860313, 45.897762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.740925, 33.054024, 46.001225>,  <36.902267, 33.376877, 46.173660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740925, 33.054024, 46.001225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178583, -0.392618, 0.902197,
		-0.897446, 0.440895, 0.014226,
		-0.403360, -0.807132, -0.431090,
		36.619915, 32.811886, 45.871899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340919, 33.161655, 46.634811>,  <36.902267, 33.376877, 46.173660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340919, 33.161655, 46.634811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.419476, 32.847248, 46.400341>,  <36.466610, 32.658604, 46.259659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.419476, 32.847248, 46.400341>,  <36.340919, 33.161655, 46.634811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419476, 32.847248, 46.400341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086212, -0.609347, 0.788203,
		-0.976729, -0.104258, -0.187433,
		0.196388, -0.786020, -0.586179,
		36.478394, 32.611443, 46.224487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860657, 32.660618, 46.797421>,  <36.340919, 33.161655, 46.634811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860657, 32.660618, 46.797421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.170498, 32.456161, 46.648438>,  <36.356403, 32.333488, 46.559048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.170498, 32.456161, 46.648438>,  <35.860657, 32.660618, 46.797421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170498, 32.456161, 46.648438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117706, -0.695139, 0.709173,
		-0.621400, -0.505485, -0.598621,
		0.774602, -0.511142, -0.372461,
		36.402878, 32.302818, 46.536697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633244, 31.935753, 46.857750>,  <35.860657, 32.660618, 46.797421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633244, 31.935753, 46.857750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.027451, 31.901964, 46.798943>,  <36.263977, 31.881691, 46.763660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.027451, 31.901964, 46.798943>,  <35.633244, 31.935753, 46.857750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027451, 31.901964, 46.798943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000868, -0.864541, 0.502562,
		-0.169552, -0.495413, -0.851950,
		0.985521, -0.084471, -0.147015,
		36.323109, 31.876623, 46.754837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.665600, 31.323431, 46.651337>,  <35.633244, 31.935753, 46.857750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.665600, 31.323431, 46.651337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.018280, 31.411257, 46.818382>,  <36.229889, 31.463951, 46.918610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.018280, 31.411257, 46.818382>,  <35.665600, 31.323431, 46.651337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018280, 31.411257, 46.818382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091996, -0.788130, 0.608595,
		0.462759, -0.575015, -0.674693,
		0.881697, 0.219564, 0.417614,
		36.282791, 31.477125, 46.943665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932129, 30.742048, 46.799931>,  <35.665600, 31.323431, 46.651337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932129, 30.742048, 46.799931> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.153397, 30.981123, 47.032063>,  <36.286156, 31.124567, 47.171341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.153397, 30.981123, 47.032063>,  <35.932129, 30.742048, 46.799931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153397, 30.981123, 47.032063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017480, -0.704784, 0.709206,
		0.832888, -0.382165, -0.400310,
		0.553166, 0.597687, 0.580326,
		36.319347, 31.160429, 47.206161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621391, 30.402451, 46.977242>,  <35.932129, 30.742048, 46.799931>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621391, 30.402451, 46.977242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.570496, 30.684870, 47.255898>,  <36.539959, 30.854322, 47.423092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.570496, 30.684870, 47.255898>,  <36.621391, 30.402451, 46.977242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570496, 30.684870, 47.255898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152847, -0.680001, 0.717102,
		0.980025, 0.197720, -0.021398,
		-0.127235, 0.706049, 0.696639,
		36.532326, 30.896685, 47.464890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082047, 30.235834, 47.388809>,  <36.621391, 30.402451, 46.977242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082047, 30.235834, 47.388809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.850101, 30.466049, 47.619465>,  <36.710934, 30.604177, 47.757858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.850101, 30.466049, 47.619465>,  <37.082047, 30.235834, 47.388809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850101, 30.466049, 47.619465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370055, -0.444501, 0.815769,
		0.725824, 0.686422, 0.044768,
		-0.579861, 0.575538, 0.576643,
		36.676144, 30.638710, 47.792458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445103, 30.443287, 47.953186>,  <37.082047, 30.235834, 47.388809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445103, 30.443287, 47.953186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.061462, 30.466085, 48.064091>,  <36.831276, 30.479765, 48.130634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.061462, 30.466085, 48.064091>,  <37.445103, 30.443287, 47.953186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061462, 30.466085, 48.064091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242690, -0.338557, 0.909110,
		0.145683, 0.939218, 0.310879,
		-0.959103, 0.056995, 0.277261,
		36.773731, 30.483185, 48.147270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449772, 30.617151, 48.714474>,  <37.445103, 30.443287, 47.953186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449772, 30.617151, 48.714474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.075310, 30.486341, 48.662819>,  <36.850632, 30.407856, 48.631824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.075310, 30.486341, 48.662819>,  <37.449772, 30.617151, 48.714474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075310, 30.486341, 48.662819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009039, -0.344778, 0.938641,
		-0.351481, 0.879877, 0.319809,
		-0.936151, -0.327024, -0.129136,
		36.794464, 30.388235, 48.624077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083809, 30.801315, 49.260006>,  <37.449772, 30.617151, 48.714474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083809, 30.801315, 49.260006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.851391, 30.509623, 49.115444>,  <36.711941, 30.334608, 49.028709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.851391, 30.509623, 49.115444>,  <37.083809, 30.801315, 49.260006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851391, 30.509623, 49.115444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113833, -0.366870, 0.923281,
		-0.805871, 0.577607, 0.130158,
		-0.581045, -0.729230, -0.361401,
		36.677078, 30.290854, 49.007023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617100, 30.686470, 49.783726>,  <37.083809, 30.801315, 49.260006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617100, 30.686470, 49.783726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.560352, 30.363480, 49.554691>,  <36.526306, 30.169685, 49.417271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.560352, 30.363480, 49.554691>,  <36.617100, 30.686470, 49.783726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560352, 30.363480, 49.554691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370678, -0.493019, 0.787102,
		-0.917863, 0.323907, -0.229371,
		-0.141864, -0.807475, -0.572589,
		36.517792, 30.121237, 49.382915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847225, 30.511915, 49.832420>,  <36.617100, 30.686470, 49.783726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847225, 30.511915, 49.832420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.069740, 30.201830, 49.712692>,  <36.203247, 30.015779, 49.640854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.069740, 30.201830, 49.712692>,  <35.847225, 30.511915, 49.832420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069740, 30.201830, 49.712692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409872, -0.569293, 0.712678,
		-0.722879, -0.273769, -0.634427,
		0.556284, -0.775214, -0.299320,
		36.236626, 29.969265, 49.622898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377422, 29.916559, 49.562035>,  <35.847225, 30.511915, 49.832420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377422, 29.916559, 49.562035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.730625, 29.848572, 49.737038>,  <35.942547, 29.807779, 49.842041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.730625, 29.848572, 49.737038>,  <35.377422, 29.916559, 49.562035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730625, 29.848572, 49.737038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468731, -0.367747, 0.803153,
		0.024380, -0.914261, -0.404392,
		0.883005, -0.169970, 0.437508,
		35.995525, 29.797581, 49.868290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384613, 29.196581, 49.860020>,  <35.377422, 29.916559, 49.562035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384613, 29.196581, 49.860020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.632042, 29.435472, 50.064251>,  <35.780499, 29.578808, 50.186790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.632042, 29.435472, 50.064251>,  <35.384613, 29.196581, 49.860020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632042, 29.435472, 50.064251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491589, -0.212759, 0.844437,
		0.612953, -0.773337, 0.161986,
		0.618570, 0.597230, 0.510575,
		35.817612, 29.614641, 50.217422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692726, 29.462902, 50.114773>,  <35.384613, 29.196581, 49.860020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692726, 29.462902, 50.114773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.321293, 29.533421, 50.245407>,  <34.098434, 29.575731, 50.323788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.321293, 29.533421, 50.245407>,  <34.692726, 29.462902, 50.114773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321293, 29.533421, 50.245407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174037, 0.570375, -0.802734,
		-0.327799, -0.802241, -0.498956,
		-0.928579, 0.176298, 0.326588,
		34.042721, 29.586309, 50.343384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.234276, 29.298004, 49.537556>,  <34.692726, 29.462902, 50.114773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.234276, 29.298004, 49.537556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.033905, 29.544989, 49.780144>,  <33.913681, 29.693180, 49.925697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.033905, 29.544989, 49.780144>,  <34.234276, 29.298004, 49.537556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033905, 29.544989, 49.780144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278857, 0.548217, -0.788478,
		-0.819335, -0.564089, -0.102433,
		-0.500928, 0.617463, 0.606474,
		33.883625, 29.730228, 49.962086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554348, 29.462589, 49.232742>,  <34.234276, 29.298004, 49.537556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554348, 29.462589, 49.232742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.632744, 29.761784, 49.486389>,  <33.679783, 29.941301, 49.638577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.632744, 29.761784, 49.486389>,  <33.554348, 29.462589, 49.232742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632744, 29.761784, 49.486389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149814, 0.661906, -0.734463,
		-0.969094, 0.048951, 0.241788,
		0.195994, 0.747987, 0.634115,
		33.691544, 29.986179, 49.676624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985611, 29.845369, 49.290672>,  <33.554348, 29.462589, 49.232742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985611, 29.845369, 49.290672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.260433, 30.111364, 49.407799>,  <33.425327, 30.270962, 49.478073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.260433, 30.111364, 49.407799>,  <32.985611, 29.845369, 49.290672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260433, 30.111364, 49.407799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295474, 0.623867, -0.723523,
		-0.663810, 0.410585, 0.625121,
		0.687060, 0.664989, 0.292812,
		33.466553, 30.310862, 49.495644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666943, 30.538046, 49.219658>,  <32.985611, 29.845369, 49.290672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666943, 30.538046, 49.219658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.062714, 30.595840, 49.224812>,  <33.300175, 30.630518, 49.227901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.062714, 30.595840, 49.224812>,  <32.666943, 30.538046, 49.219658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.062714, 30.595840, 49.224812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071377, 0.562230, -0.823895,
		-0.126284, 0.814261, 0.566596,
		0.989423, 0.144487, 0.012881,
		33.359539, 30.639187, 49.228676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738720, 31.263006, 48.917908>,  <32.666943, 30.538046, 49.219658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738720, 31.263006, 48.917908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.093746, 31.081642, 48.885281>,  <33.306763, 30.972824, 48.865704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.093746, 31.081642, 48.885281>,  <32.738720, 31.263006, 48.917908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.093746, 31.081642, 48.885281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260837, 0.640527, -0.722280,
		0.379732, 0.619794, 0.686774,
		0.887562, -0.453409, -0.081564,
		33.360016, 30.945620, 48.860813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186630, 31.758261, 48.943111>,  <32.738720, 31.263006, 48.917908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186630, 31.758261, 48.943111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.400909, 31.482897, 48.747509>,  <33.529476, 31.317678, 48.630150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.400909, 31.482897, 48.747509>,  <33.186630, 31.758261, 48.943111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400909, 31.482897, 48.747509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097661, 0.625730, -0.773902,
		0.838744, 0.366820, 0.402432,
		0.535697, -0.688408, -0.489003,
		33.561619, 31.276375, 48.600807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647800, 32.119503, 48.651501>,  <33.186630, 31.758261, 48.943111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647800, 32.119503, 48.651501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.658215, 31.789511, 48.425678>,  <33.664463, 31.591515, 48.290184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.658215, 31.789511, 48.425678>,  <33.647800, 32.119503, 48.651501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658215, 31.789511, 48.425678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053938, 0.565084, -0.823269,
		0.998205, -0.009015, 0.059211,
		0.026038, -0.824984, -0.564555,
		33.666027, 31.542015, 48.256313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222057, 32.232479, 48.164124>,  <33.647800, 32.119503, 48.651501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222057, 32.232479, 48.164124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.999191, 31.937956, 48.010544>,  <33.865471, 31.761242, 47.918396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.999191, 31.937956, 48.010544>,  <34.222057, 32.232479, 48.164124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.999191, 31.937956, 48.010544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080001, 0.412619, -0.907384,
		0.826539, -0.536279, -0.170991,
		-0.557166, -0.736309, -0.383948,
		33.832043, 31.717064, 47.895359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588886, 32.114487, 47.520340>,  <34.222057, 32.232479, 48.164124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588886, 32.114487, 47.520340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.254089, 31.911623, 47.438133>,  <34.053211, 31.789906, 47.388809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.254089, 31.911623, 47.438133>,  <34.588886, 32.114487, 47.520340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254089, 31.911623, 47.438133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110484, 0.211206, -0.971177,
		0.535946, -0.835573, -0.120745,
		-0.836992, -0.507158, -0.205512,
		34.002991, 31.759476, 47.376480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759277, 31.615379, 46.908684>,  <34.588886, 32.114487, 47.520340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759277, 31.615379, 46.908684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.372517, 31.716995, 46.918156>,  <34.140461, 31.777964, 46.923840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.372517, 31.716995, 46.918156>,  <34.759277, 31.615379, 46.908684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372517, 31.716995, 46.918156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000402, 0.094336, -0.995540,
		-0.255139, -0.962583, -0.091316,
		-0.966904, 0.254038, 0.023682,
		34.082447, 31.793207, 46.925259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498413, 31.335815, 46.321091>,  <34.759277, 31.615379, 46.908684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498413, 31.335815, 46.321091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.229065, 31.617035, 46.412567>,  <34.067455, 31.785767, 46.467453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.229065, 31.617035, 46.412567>,  <34.498413, 31.335815, 46.321091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229065, 31.617035, 46.412567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003615, 0.312456, -0.949925,
		-0.739300, -0.638821, -0.212939,
		-0.673367, 0.703049, 0.228690,
		34.027054, 31.827950, 46.481174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139130, 31.345541, 45.711834>,  <34.498413, 31.335815, 46.321091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139130, 31.345541, 45.711834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.052700, 31.677320, 45.917873>,  <34.000843, 31.876389, 46.041496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.052700, 31.677320, 45.917873>,  <34.139130, 31.345541, 45.711834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052700, 31.677320, 45.917873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182129, 0.552543, -0.813342,
		-0.959239, -0.081930, -0.270458,
		-0.216077, 0.829448, 0.515099,
		33.987877, 31.926155, 46.072403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.694561, 31.656994, 45.367420>,  <34.139130, 31.345541, 45.711834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.694561, 31.656994, 45.367420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.861477, 31.954557, 45.576214>,  <33.961628, 32.133095, 45.701488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.861477, 31.954557, 45.576214>,  <33.694561, 31.656994, 45.367420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861477, 31.954557, 45.576214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092165, 0.536780, -0.838673,
		-0.904087, 0.398080, 0.155432,
		0.417292, 0.743908, 0.521984,
		33.986664, 32.177731, 45.732811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249359, 32.124771, 45.093365>,  <33.694561, 31.656994, 45.367420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249359, 32.124771, 45.093365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.566994, 32.306656, 45.254692>,  <33.757576, 32.415787, 45.351490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.566994, 32.306656, 45.254692>,  <33.249359, 32.124771, 45.093365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.566994, 32.306656, 45.254692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038529, 0.624572, -0.780017,
		-0.606582, 0.634940, 0.478445,
		0.794087, 0.454710, 0.403317,
		33.805222, 32.443069, 45.375687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122471, 32.878044, 44.964790>,  <33.249359, 32.124771, 45.093365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122471, 32.878044, 44.964790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516010, 32.818508, 45.004547>,  <33.752136, 32.782787, 45.028400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.516010, 32.818508, 45.004547>,  <33.122471, 32.878044, 44.964790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516010, 32.818508, 45.004547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162395, 0.508914, -0.845360,
		0.075242, 0.847851, 0.524868,
		0.983853, -0.148842, 0.099395,
		33.811165, 32.773857, 45.034367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443726, 33.541199, 44.913860>,  <33.122471, 32.878044, 44.964790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443726, 33.541199, 44.913860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.729931, 33.287575, 44.796551>,  <33.901653, 33.135399, 44.726166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.729931, 33.287575, 44.796551>,  <33.443726, 33.541199, 44.913860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.729931, 33.287575, 44.796551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132908, 0.535683, -0.833894,
		0.685842, 0.557683, 0.467559,
		0.715511, -0.634062, -0.293273,
		33.944584, 33.097355, 44.708569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854858, 33.931187, 44.496464>,  <33.443726, 33.541199, 44.913860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854858, 33.931187, 44.496464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.969822, 33.561852, 44.394615>,  <34.038799, 33.340248, 44.333504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.969822, 33.561852, 44.394615>,  <33.854858, 33.931187, 44.496464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969822, 33.561852, 44.394615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228532, 0.324272, -0.917944,
		0.930144, 0.205637, 0.304212,
		0.287411, -0.923343, -0.254625,
		34.056046, 33.284847, 44.318226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462872, 34.073128, 44.092571>,  <33.854858, 33.931187, 44.496464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462872, 34.073128, 44.092571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.310524, 33.711803, 44.013615>,  <34.219116, 33.495007, 43.966240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.310524, 33.711803, 44.013615>,  <34.462872, 34.073128, 44.092571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310524, 33.711803, 44.013615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369432, 0.047030, -0.928067,
		0.847618, -0.426396, 0.315801,
		-0.380872, -0.903313, -0.197388,
		34.196262, 33.440811, 43.954399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983807, 33.616550, 43.611164>,  <34.462872, 34.073128, 44.092571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983807, 33.616550, 43.611164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.617527, 33.462826, 43.564171>,  <34.397758, 33.370590, 43.535976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.617527, 33.462826, 43.564171>,  <34.983807, 33.616550, 43.611164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617527, 33.462826, 43.564171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087730, 0.094122, -0.991688,
		0.392177, -0.918392, -0.052471,
		-0.915697, -0.384314, -0.117482,
		34.342819, 33.347530, 43.528927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.915428, 37.276157, 27.217342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.586613, 37.294525, 26.990314>,  <44.389324, 37.305546, 26.854097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.586613, 37.294525, 26.990314>,  <44.915428, 37.276157, 27.217342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.586613, 37.294525, 26.990314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402537, -0.751857, 0.522182,
		-0.402754, 0.657724, 0.636543,
		-0.822042, 0.045921, -0.567572,
		44.340000, 37.308300, 26.820044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.415321, 37.428238, 27.623316>,  <44.915428, 37.276157, 27.217342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.415321, 37.428238, 27.623316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.194660, 37.257690, 27.336571>,  <44.062263, 37.155361, 27.164524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.194660, 37.257690, 27.336571>,  <44.415321, 37.428238, 27.623316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.194660, 37.257690, 27.336571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353750, -0.658741, 0.664019,
		-0.755344, 0.619896, 0.212566,
		-0.551649, -0.426368, -0.716864,
		44.029167, 37.129780, 27.121511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.879597, 37.416813, 27.894869>,  <44.415321, 37.428238, 27.623316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.879597, 37.416813, 27.894869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.816151, 37.159008, 27.595684>,  <43.778084, 37.004326, 27.416172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.816151, 37.159008, 27.595684>,  <43.879597, 37.416813, 27.894869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816151, 37.159008, 27.595684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341945, -0.674812, 0.653990,
		-0.926236, 0.359498, -0.113348,
		-0.158619, -0.644508, -0.747964,
		43.768566, 36.965656, 27.371296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247650, 37.328140, 27.817078>,  <43.879597, 37.416813, 27.894869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247650, 37.328140, 27.817078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.424877, 37.000130, 27.672167>,  <43.531216, 36.803322, 27.585220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.424877, 37.000130, 27.672167>,  <43.247650, 37.328140, 27.817078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424877, 37.000130, 27.672167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245074, -0.499505, 0.830923,
		-0.862339, -0.279372, -0.422283,
		0.443069, -0.820028, -0.362276,
		43.557796, 36.754120, 27.563484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.797997, 36.781898, 27.927067>,  <43.247650, 37.328140, 27.817078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.797997, 36.781898, 27.927067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.142750, 36.588234, 27.866735>,  <43.349602, 36.472034, 27.830536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.142750, 36.588234, 27.866735>,  <42.797997, 36.781898, 27.927067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.142750, 36.588234, 27.866735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116169, -0.478021, 0.870633,
		-0.493636, -0.732854, -0.468240,
		0.861875, -0.484170, -0.150833,
		43.401314, 36.442986, 27.821487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.643299, 36.091930, 28.073402>,  <42.797997, 36.781898, 27.927067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.643299, 36.091930, 28.073402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.039707, 36.103928, 28.125525>,  <43.277554, 36.111126, 28.156797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.039707, 36.103928, 28.125525>,  <42.643299, 36.091930, 28.073402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039707, 36.103928, 28.125525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100174, -0.478951, 0.872107,
		0.088564, -0.877329, -0.471646,
		0.991021, 0.029990, 0.130303,
		43.337013, 36.112926, 28.164616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745487, 35.415367, 28.119400>,  <42.643299, 36.091930, 28.073402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745487, 35.415367, 28.119400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.110573, 35.540920, 28.224031>,  <43.329624, 35.616253, 28.286810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.110573, 35.540920, 28.224031>,  <42.745487, 35.415367, 28.119400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110573, 35.540920, 28.224031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048567, -0.552322, 0.832215,
		0.405692, -0.772282, -0.488870,
		0.912718, 0.313881, 0.261580,
		43.384388, 35.635086, 28.302505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151550, 34.754868, 28.300863>,  <42.745487, 35.415367, 28.119400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151550, 34.754868, 28.300863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.286877, 35.093765, 28.464674>,  <43.368073, 35.297104, 28.562960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.286877, 35.093765, 28.464674>,  <43.151550, 34.754868, 28.300863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286877, 35.093765, 28.464674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211187, -0.492447, 0.844332,
		0.917029, -0.199164, -0.345531,
		0.338316, 0.847248, 0.409528,
		43.388371, 35.347939, 28.587532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.799065, 34.552685, 28.685276>,  <43.151550, 34.754868, 28.300863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.799065, 34.552685, 28.685276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.679070, 34.892803, 28.858250>,  <43.607071, 35.096874, 28.962034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.679070, 34.892803, 28.858250>,  <43.799065, 34.552685, 28.685276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.679070, 34.892803, 28.858250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138702, -0.409615, 0.901653,
		0.943804, 0.330468, 0.004943,
		-0.299992, 0.850298, 0.432433,
		43.589073, 35.147892, 28.987980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.315342, 34.741238, 29.222954>,  <43.799065, 34.552685, 28.685276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.315342, 34.741238, 29.222954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.964088, 34.915981, 29.300957>,  <43.753334, 35.020828, 29.347757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.964088, 34.915981, 29.300957>,  <44.315342, 34.741238, 29.222954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.964088, 34.915981, 29.300957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005141, -0.398972, 0.916949,
		0.478382, 0.806209, 0.348106,
		-0.878137, 0.436862, 0.195006,
		43.700649, 35.047039, 29.359459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.472191, 35.103432, 29.864094>,  <44.315342, 34.741238, 29.222954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.472191, 35.103432, 29.864094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.075710, 35.066570, 29.826077>,  <43.837822, 35.044453, 29.803267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.075710, 35.066570, 29.826077>,  <44.472191, 35.103432, 29.864094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.075710, 35.066570, 29.826077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062702, -0.305481, 0.950131,
		-0.116596, 0.947728, 0.297014,
		-0.991198, -0.092158, -0.095042,
		43.778351, 35.038921, 29.797564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.187714, 35.425648, 30.518925>,  <44.472191, 35.103432, 29.864094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.187714, 35.425648, 30.518925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.886269, 35.201401, 30.381649>,  <43.705402, 35.066853, 30.299284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.886269, 35.201401, 30.381649>,  <44.187714, 35.425648, 30.518925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.886269, 35.201401, 30.381649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263253, -0.220987, 0.939075,
		-0.602298, 0.798046, 0.018956,
		-0.753614, -0.560614, -0.343188,
		43.660183, 35.033218, 30.278692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.583080, 35.564587, 30.977207>,  <44.187714, 35.425648, 30.518925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.583080, 35.564587, 30.977207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.512115, 35.211617, 30.802919>,  <43.469536, 34.999836, 30.698347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.512115, 35.211617, 30.802919>,  <43.583080, 35.564587, 30.977207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.512115, 35.211617, 30.802919> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384411, -0.345432, 0.856098,
		-0.905954, 0.319377, -0.277930,
		-0.177412, -0.882425, -0.435718,
		43.458893, 34.946888, 30.672205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946991, 35.421848, 31.205736>,  <43.583080, 35.564587, 30.977207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946991, 35.421848, 31.205736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.064491, 35.067764, 31.061449>,  <43.134991, 34.855316, 30.974876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.064491, 35.067764, 31.061449>,  <42.946991, 35.421848, 31.205736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.064491, 35.067764, 31.061449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361278, -0.452190, 0.815477,
		-0.884981, -0.109224, -0.452636,
		0.293747, -0.885208, -0.360720,
		43.152615, 34.802200, 30.953234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.332085, 34.921379, 31.198622>,  <42.946991, 35.421848, 31.205736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.332085, 34.921379, 31.198622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.656593, 34.687771, 31.209694>,  <42.851299, 34.547607, 31.216337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.656593, 34.687771, 31.209694>,  <42.332085, 34.921379, 31.198622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656593, 34.687771, 31.209694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336071, -0.427053, 0.839453,
		-0.478440, -0.690321, -0.542727,
		0.811265, -0.584023, 0.027678,
		42.899975, 34.512566, 31.217999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078327, 34.181557, 31.326509>,  <42.332085, 34.921379, 31.198622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078327, 34.181557, 31.326509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.461090, 34.200237, 31.441151>,  <42.690750, 34.211445, 31.509935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.461090, 34.200237, 31.441151>,  <42.078327, 34.181557, 31.326509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461090, 34.200237, 31.441151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249240, -0.374338, 0.893169,
		0.149002, -0.926115, -0.346567,
		0.956910, 0.046705, 0.286602,
		42.748165, 34.214249, 31.527132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149033, 33.602024, 31.666416>,  <42.078327, 34.181557, 31.326509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149033, 33.602024, 31.666416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.464966, 33.818619, 31.781618>,  <42.654526, 33.948578, 31.850739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.464966, 33.818619, 31.781618>,  <42.149033, 33.602024, 31.666416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464966, 33.818619, 31.781618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124913, -0.317715, 0.939922,
		0.600462, -0.778360, -0.183303,
		0.789837, 0.541491, 0.288004,
		42.701916, 33.981068, 31.868019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.545273, 33.089893, 32.065319>,  <42.149033, 33.602024, 31.666416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.545273, 33.089893, 32.065319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.641102, 33.462200, 32.175793>,  <42.698601, 33.685585, 32.242077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.641102, 33.462200, 32.175793>,  <42.545273, 33.089893, 32.065319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.641102, 33.462200, 32.175793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023171, -0.278902, 0.960040,
		0.970601, -0.236400, -0.045251,
		0.239574, 0.930768, 0.276180,
		42.712975, 33.741432, 32.258648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938454, 32.925339, 32.619339>,  <42.545273, 33.089893, 32.065319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938454, 32.925339, 32.619339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.875671, 33.319237, 32.649380>,  <42.838001, 33.555576, 32.667404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.875671, 33.319237, 32.649380>,  <42.938454, 32.925339, 32.619339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.875671, 33.319237, 32.649380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047939, -0.083550, 0.995350,
		0.986441, 0.152629, 0.060321,
		-0.156959, 0.984745, 0.075100,
		42.828583, 33.614662, 32.671909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510670, 33.196205, 33.085629>,  <42.938454, 32.925339, 32.619339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.510670, 33.196205, 33.085629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.211159, 33.460056, 33.111603>,  <43.031452, 33.618366, 33.127186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.211159, 33.460056, 33.111603>,  <43.510670, 33.196205, 33.085629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211159, 33.460056, 33.111603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119385, 0.037855, 0.992126,
		0.651977, 0.750638, -0.107095,
		-0.748781, 0.659629, 0.064934,
		42.986523, 33.657944, 33.131084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830235, 33.695477, 33.514668>,  <43.510670, 33.196205, 33.085629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830235, 33.695477, 33.514668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.432388, 33.723522, 33.545208>,  <43.193680, 33.740349, 33.563534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.432388, 33.723522, 33.545208>,  <43.830235, 33.695477, 33.514668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.432388, 33.723522, 33.545208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074185, -0.033029, 0.996697,
		0.072406, 0.996992, 0.027649,
		-0.994612, 0.070116, 0.076353,
		43.134003, 33.744556, 33.568115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.560867, 33.629860, 33.787022>,  <43.830235, 33.695477, 33.514668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.560867, 33.629860, 33.787022> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.867519, 33.564304, 34.035351>,  <45.051510, 33.524971, 34.184349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.867519, 33.564304, 34.035351>,  <44.560867, 33.629860, 33.787022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.867519, 33.564304, 34.035351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552066, 0.661964, -0.506978,
		-0.327870, 0.731398, 0.597961,
		0.766632, -0.163891, 0.620819,
		45.097507, 33.515137, 34.221596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745480, 34.310730, 34.084812>,  <44.560867, 33.629860, 33.787022>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745480, 34.310730, 34.084812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.049480, 34.053432, 34.047646>,  <45.231880, 33.899055, 34.025345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.049480, 34.053432, 34.047646>,  <44.745480, 34.310730, 34.084812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.049480, 34.053432, 34.047646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499577, 0.669641, -0.549548,
		0.415710, 0.371243, 0.830280,
		0.760005, -0.643241, -0.092912,
		45.277481, 33.860458, 34.019772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.405209, 34.680901, 34.388706>,  <44.745480, 34.310730, 34.084812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.405209, 34.680901, 34.388706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.520275, 34.398628, 34.129704>,  <45.589317, 34.229267, 33.974300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.520275, 34.398628, 34.129704>,  <45.405209, 34.680901, 34.388706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.520275, 34.398628, 34.129704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564394, 0.671127, -0.480674,
		0.773760, -0.227174, 0.591343,
		0.287670, -0.705677, -0.647508,
		45.606575, 34.186924, 33.935452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.136539, 34.736961, 34.267422>,  <45.405209, 34.680901, 34.388706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.136539, 34.736961, 34.267422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.017883, 34.532261, 33.944901>,  <45.946690, 34.409439, 33.751389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.017883, 34.532261, 33.944901>,  <46.136539, 34.736961, 34.267422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.017883, 34.532261, 33.944901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508174, 0.630255, -0.586973,
		0.808558, -0.583858, 0.073102,
		-0.296637, -0.511750, -0.806299,
		45.928894, 34.378735, 33.703011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.530010, 34.983757, 33.802776>,  <46.136539, 34.736961, 34.267422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.530010, 34.983757, 33.802776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.268795, 34.799820, 33.562084>,  <46.112064, 34.689457, 33.417667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.268795, 34.799820, 33.562084>,  <46.530010, 34.983757, 33.802776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.268795, 34.799820, 33.562084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321633, 0.550930, -0.770083,
		0.685632, -0.696431, -0.211877,
		-0.653040, -0.459847, -0.601730,
		46.072884, 34.661865, 33.381565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.935432, 34.617203, 33.221745>,  <46.530010, 34.983757, 33.802776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.935432, 34.617203, 33.221745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.560463, 34.680546, 33.097710>,  <46.335480, 34.718552, 33.023289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.560463, 34.680546, 33.097710>,  <46.935432, 34.617203, 33.221745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.560463, 34.680546, 33.097710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346588, 0.339175, -0.874550,
		-0.033319, -0.927298, -0.372837,
		-0.937425, 0.158360, -0.310089,
		46.279236, 34.728054, 33.004684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.966320, 34.549644, 32.521118>,  <46.935432, 34.617203, 33.221745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.966320, 34.549644, 32.521118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.609482, 34.720036, 32.581394>,  <46.395378, 34.822269, 32.617558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.609482, 34.720036, 32.581394>,  <46.966320, 34.549644, 32.521118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.609482, 34.720036, 32.581394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101113, 0.513241, -0.852268,
		-0.440383, -0.745070, -0.500933,
		-0.892098, 0.425975, 0.150686,
		46.341854, 34.847828, 32.626598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.466057, 34.393929, 31.923248>,  <46.966320, 34.549644, 32.521118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.466057, 34.393929, 31.923248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.332043, 34.732101, 32.089619>,  <46.251633, 34.935005, 32.189442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.332043, 34.732101, 32.089619>,  <46.466057, 34.393929, 31.923248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.332043, 34.732101, 32.089619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099175, 0.407345, -0.907874,
		-0.936970, -0.345423, -0.052631,
		-0.335039, 0.845431, 0.415927,
		46.231529, 34.985729, 32.214397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.934814, 34.630188, 31.510569>,  <46.466057, 34.393929, 31.923248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.934814, 34.630188, 31.510569> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.044735, 34.960812, 31.707050>,  <46.110687, 35.159187, 31.824940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.044735, 34.960812, 31.707050>,  <45.934814, 34.630188, 31.510569>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.044735, 34.960812, 31.707050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003670, 0.511768, -0.859115,
		-0.961495, 0.234281, 0.143667,
		0.274799, 0.826562, 0.491203,
		46.127174, 35.208782, 31.854412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.619293, 35.174248, 31.237438>,  <45.934814, 34.630188, 31.510569>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.619293, 35.174248, 31.237438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.893688, 35.388737, 31.434164>,  <46.058327, 35.517429, 31.552200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.893688, 35.388737, 31.434164>,  <45.619293, 35.174248, 31.237438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.893688, 35.388737, 31.434164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013722, 0.685345, -0.728090,
		-0.727483, 0.492712, 0.477497,
		0.685989, 0.536225, 0.491815,
		46.099483, 35.549603, 31.581709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.408382, 35.881081, 31.137142>,  <45.619293, 35.174248, 31.237438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.408382, 35.881081, 31.137142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.791496, 35.918106, 31.246008>,  <46.021366, 35.940323, 31.311327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.791496, 35.918106, 31.246008>,  <45.408382, 35.881081, 31.137142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.791496, 35.918106, 31.246008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127370, 0.712102, -0.690426,
		-0.257715, 0.695947, 0.670254,
		0.957789, 0.092563, 0.272162,
		46.078835, 35.945873, 31.327656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512123, 36.538387, 31.216522>,  <45.408382, 35.881081, 31.137142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512123, 36.538387, 31.216522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.888660, 36.412331, 31.168253>,  <46.114582, 36.336697, 31.139292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.888660, 36.412331, 31.168253>,  <45.512123, 36.538387, 31.216522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.888660, 36.412331, 31.168253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198815, 0.806868, -0.556270,
		0.272671, 0.499649, 0.822193,
		0.941341, -0.315143, -0.120672,
		46.171062, 36.317787, 31.132051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.923229, 37.151741, 31.201399>,  <45.512123, 36.538387, 31.216522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.923229, 37.151741, 31.201399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.142979, 36.864346, 31.030769>,  <46.274830, 36.691910, 30.928392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.142979, 36.864346, 31.030769>,  <45.923229, 37.151741, 31.201399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.142979, 36.864346, 31.030769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403478, 0.675155, -0.617553,
		0.731706, 0.167154, 0.660806,
		0.549373, -0.718488, -0.426572,
		46.307789, 36.648800, 30.902798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.571651, 37.397545, 31.169182>,  <45.923229, 37.151741, 31.201399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.571651, 37.397545, 31.169182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.558926, 37.106049, 30.895563>,  <46.551289, 36.931149, 30.731392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.558926, 37.106049, 30.895563>,  <46.571651, 37.397545, 31.169182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.558926, 37.106049, 30.895563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316550, 0.641817, -0.698475,
		0.948042, -0.238756, 0.210265,
		-0.031813, -0.728743, -0.684048,
		46.549381, 36.887424, 30.690350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.209404, 37.494755, 30.834362>,  <46.571651, 37.397545, 31.169182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.209404, 37.494755, 30.834362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.016495, 37.260178, 30.574055>,  <46.900749, 37.119431, 30.417870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.016495, 37.260178, 30.574055>,  <47.209404, 37.494755, 30.834362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.016495, 37.260178, 30.574055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339698, 0.559551, -0.755982,
		0.807478, -0.585653, -0.070641,
		-0.482270, -0.586442, -0.650770,
		46.871815, 37.084244, 30.378824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.640095, 37.338196, 30.316513>,  <47.209404, 37.494755, 30.834362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.640095, 37.338196, 30.316513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.275124, 37.279213, 30.163809>,  <47.056141, 37.243824, 30.072187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.275124, 37.279213, 30.163809>,  <47.640095, 37.338196, 30.316513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.275124, 37.279213, 30.163809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268987, 0.486946, -0.830981,
		0.308430, -0.860895, -0.404637,
		-0.912423, -0.147457, -0.381758,
		47.001396, 37.234974, 30.049282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.793671, 37.089996, 29.643948>,  <47.640095, 37.338196, 30.316513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.793671, 37.089996, 29.643948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.427532, 37.250843, 29.652342>,  <47.207848, 37.347351, 29.657379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.427532, 37.250843, 29.652342>,  <47.793671, 37.089996, 29.643948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.427532, 37.250843, 29.652342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169450, 0.431951, -0.885836,
		-0.365276, -0.807291, -0.463524,
		-0.915347, 0.402119, 0.020986,
		47.152927, 37.371479, 29.658638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.675713, 37.276600, 29.041550>,  <47.793671, 37.089996, 29.643948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.675713, 37.276600, 29.041550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.340717, 37.456688, 29.165434>,  <47.139721, 37.564739, 29.239763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.340717, 37.456688, 29.165434>,  <47.675713, 37.276600, 29.041550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.340717, 37.456688, 29.165434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036928, 0.518833, -0.854078,
		-0.545211, -0.726714, -0.417889,
		-0.837485, 0.450221, 0.309709,
		47.089470, 37.591755, 29.258347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.132805, 37.135403, 28.506765>,  <47.675713, 37.276600, 29.041550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.132805, 37.135403, 28.506765> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.025204, 37.453995, 28.723379>,  <46.960644, 37.645149, 28.853348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.025204, 37.453995, 28.723379>,  <47.132805, 37.135403, 28.506765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.025204, 37.453995, 28.723379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097358, 0.536892, -0.838014,
		-0.958206, -0.278150, -0.066881,
		-0.269001, 0.796479, 0.541534,
		46.944504, 37.692940, 28.885839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.441471, 37.407856, 28.273802>,  <47.132805, 37.135403, 28.506765>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.441471, 37.407856, 28.273802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.632141, 37.709240, 28.454943>,  <46.746544, 37.890072, 28.563627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.632141, 37.709240, 28.454943>,  <46.441471, 37.407856, 28.273802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.632141, 37.709240, 28.454943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284662, 0.619685, -0.731409,
		-0.831716, 0.219732, 0.509869,
		0.476672, 0.753465, 0.452852,
		46.775143, 37.935280, 28.590799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.879589, 38.026661, 28.363186>,  <46.441471, 37.407856, 28.273802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.879589, 38.026661, 28.363186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.242283, 38.193817, 28.385807>,  <46.459900, 38.294109, 28.399380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.242283, 38.193817, 28.385807>,  <45.879589, 38.026661, 28.363186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.242283, 38.193817, 28.385807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272719, 0.683395, -0.677197,
		-0.321639, 0.598617, 0.733626,
		0.906737, 0.417886, 0.056552,
		46.514305, 38.319183, 28.402773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.652172, 34.467800, 40.105049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459595, 34.130100, 40.010864>,  <39.344048, 33.927479, 39.954353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459595, 34.130100, 40.010864>,  <39.652172, 34.467800, 40.105049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459595, 34.130100, 40.010864> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417396, 0.015384, -0.908595,
		0.770707, -0.535723, 0.344981,
		-0.481448, -0.844253, -0.235465,
		39.315159, 33.876823, 39.940224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114403, 34.057709, 39.669983>,  <39.652172, 34.467800, 40.105049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114403, 34.057709, 39.669983> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757412, 33.885757, 39.615288>,  <39.543217, 33.782585, 39.582470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757412, 33.885757, 39.615288>,  <40.114403, 34.057709, 39.669983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757412, 33.885757, 39.615288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155978, -0.009654, -0.987713,
		0.423276, -0.902835, 0.075667,
		-0.892473, -0.429878, -0.136736,
		39.489670, 33.756794, 39.574268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139694, 33.390491, 39.193596>,  <40.114403, 34.057709, 39.669983>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139694, 33.390491, 39.193596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771118, 33.544094, 39.170002>,  <39.549973, 33.636257, 39.155846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771118, 33.544094, 39.170002>,  <40.139694, 33.390491, 39.193596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771118, 33.544094, 39.170002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122250, 0.142478, -0.982219,
		-0.368776, -0.912271, -0.178230,
		-0.921444, 0.384007, -0.058982,
		39.494686, 33.659298, 39.152306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887936, 33.116306, 38.549480>,  <40.139694, 33.390491, 39.193596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887936, 33.116306, 38.549480> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637871, 33.409874, 38.655720>,  <39.487831, 33.586014, 38.719463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637871, 33.409874, 38.655720>,  <39.887936, 33.116306, 38.549480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.637871, 33.409874, 38.655720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133529, 0.234701, -0.962853,
		-0.768989, -0.637403, -0.048727,
		-0.625161, 0.733916, 0.265594,
		39.450321, 33.630051, 38.735397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364384, 33.005394, 38.170559>,  <39.887936, 33.116306, 38.549480>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364384, 33.005394, 38.170559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370716, 33.393219, 38.268288>,  <39.374516, 33.625916, 38.326927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370716, 33.393219, 38.268288>,  <39.364384, 33.005394, 38.170559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370716, 33.393219, 38.268288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165654, 0.243522, -0.955644,
		-0.986057, -0.025341, 0.164469,
		0.015835, 0.969564, 0.244324,
		39.375465, 33.684090, 38.341583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828526, 33.226517, 37.755108>,  <39.364384, 33.005394, 38.170559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.828526, 33.226517, 37.755108> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006699, 33.566456, 37.867779>,  <39.113602, 33.770420, 37.935383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006699, 33.566456, 37.867779>,  <38.828526, 33.226517, 37.755108>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006699, 33.566456, 37.867779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174006, 0.390790, -0.903883,
		-0.878244, 0.353604, 0.321950,
		0.445432, 0.849851, 0.281680,
		39.140327, 33.821411, 37.952282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347107, 33.794010, 37.503777>,  <38.828526, 33.226517, 37.755108>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347107, 33.794010, 37.503777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721706, 33.927200, 37.547775>,  <38.946465, 34.007114, 37.574177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721706, 33.927200, 37.547775>,  <38.347107, 33.794010, 37.503777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721706, 33.927200, 37.547775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035369, 0.401775, -0.915055,
		-0.348884, 0.853057, 0.388039,
		0.936498, 0.332972, 0.110001,
		39.002655, 34.027092, 37.580776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.321671, 34.445751, 37.263817>,  <38.347107, 33.794010, 37.503777>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.321671, 34.445751, 37.263817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718372, 34.401630, 37.289932>,  <38.956394, 34.375160, 37.305599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718372, 34.401630, 37.289932>,  <38.321671, 34.445751, 37.263817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718372, 34.401630, 37.289932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102803, 0.380311, -0.919127,
		0.076551, 0.918258, 0.388514,
		0.991752, -0.110300, 0.065287,
		39.015900, 34.368542, 37.309517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589680, 35.046391, 37.031597>,  <38.321671, 34.445751, 37.263817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589680, 35.046391, 37.031597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908062, 34.809345, 36.982193>,  <39.099091, 34.667118, 36.952549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908062, 34.809345, 36.982193>,  <38.589680, 35.046391, 37.031597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908062, 34.809345, 36.982193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277172, 0.538169, -0.795959,
		0.538169, 0.599317, 0.592617,
		0.795959, -0.592617, -0.123512,
		39.146851, 34.631561, 36.945141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082336, 35.462761, 36.738541>,  <38.589680, 35.046391, 37.031597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082336, 35.462761, 36.738541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239918, 35.101986, 36.667767>,  <39.334465, 34.885521, 36.625301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239918, 35.101986, 36.667767>,  <39.082336, 35.462761, 36.738541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239918, 35.101986, 36.667767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331070, 0.318824, -0.888113,
		0.857436, 0.291294, 0.424206,
		0.393949, -0.901942, -0.176932,
		39.358101, 34.831402, 36.614685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722237, 35.524029, 36.572201>,  <39.082336, 35.462761, 36.738541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722237, 35.524029, 36.572201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612900, 35.173450, 36.413647>,  <39.547298, 34.963104, 36.318512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612900, 35.173450, 36.413647>,  <39.722237, 35.524029, 36.572201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612900, 35.173450, 36.413647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387046, 0.277039, -0.879457,
		0.880614, -0.393809, 0.263501,
		-0.273338, -0.876449, -0.396387,
		39.530899, 34.910515, 36.294731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.348186, 35.282150, 36.271870>,  <39.722237, 35.524029, 36.572201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.348186, 35.282150, 36.271870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035931, 35.100441, 36.100182>,  <39.848576, 34.991417, 35.997169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035931, 35.100441, 36.100182>,  <40.348186, 35.282150, 36.271870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035931, 35.100441, 36.100182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378599, 0.202692, -0.903094,
		0.497252, -0.867497, 0.013758,
		-0.780643, -0.454274, -0.429223,
		39.801739, 34.964161, 35.971416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575096, 34.792206, 35.718323>,  <40.348186, 35.282150, 36.271870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575096, 34.792206, 35.718323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214981, 34.932903, 35.615753>,  <39.998913, 35.017323, 35.554211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.214981, 34.932903, 35.615753>,  <40.575096, 34.792206, 35.718323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214981, 34.932903, 35.615753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348931, 0.230974, -0.908239,
		-0.260241, -0.907153, -0.330679,
		-0.900290, 0.351745, -0.256425,
		39.944893, 35.038425, 35.538826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.198174, 34.419701, 35.056423>,  <40.575096, 34.792206, 35.718323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.198174, 34.419701, 35.056423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162403, 34.809250, 35.139931>,  <40.140942, 35.042980, 35.190037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162403, 34.809250, 35.139931>,  <40.198174, 34.419701, 35.056423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162403, 34.809250, 35.139931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507682, 0.224901, -0.831672,
		-0.856891, 0.031618, -0.514526,
		-0.089421, 0.973869, 0.208768,
		40.135578, 35.101410, 35.202560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551144, 34.222443, 35.295689>,  <40.198174, 34.419701, 35.056423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551144, 34.222443, 35.295689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660919, 33.983318, 34.994411>,  <39.726784, 33.839844, 34.813644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660919, 33.983318, 34.994411>,  <39.551144, 34.222443, 35.295689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660919, 33.983318, 34.994411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279936, -0.799011, 0.532181,
		-0.919957, 0.064798, -0.386626,
		0.274434, -0.597814, -0.753196,
		39.743248, 33.803974, 34.768452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956421, 33.766037, 35.074715>,  <39.551144, 34.222443, 35.295689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956421, 33.766037, 35.074715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305550, 33.595505, 34.979694>,  <39.515026, 33.493187, 34.922684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305550, 33.595505, 34.979694>,  <38.956421, 33.766037, 35.074715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305550, 33.595505, 34.979694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346227, -0.883941, 0.314284,
		-0.343969, -0.192066, -0.919127,
		0.872818, -0.426331, -0.237550,
		39.567394, 33.467606, 34.908428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817108, 33.154652, 34.703148>,  <38.956421, 33.766037, 35.074715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817108, 33.154652, 34.703148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168240, 33.061066, 34.870331>,  <39.378918, 33.004913, 34.970638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168240, 33.061066, 34.870331>,  <38.817108, 33.154652, 34.703148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168240, 33.061066, 34.870331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422648, -0.788925, 0.446056,
		0.225373, -0.568206, -0.791422,
		0.877825, -0.233964, 0.417954,
		39.431587, 32.990875, 34.995716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766079, 32.586731, 34.892170>,  <38.817108, 33.154652, 34.703148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766079, 32.586731, 34.892170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110905, 32.629753, 35.090271>,  <39.317802, 32.655567, 35.209133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110905, 32.629753, 35.090271>,  <38.766079, 32.586731, 34.892170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110905, 32.629753, 35.090271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241823, -0.771500, 0.588480,
		0.445380, -0.627072, -0.639075,
		0.862066, 0.107554, 0.495251,
		39.369526, 32.662018, 35.238846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132648, 31.988894, 34.845245>,  <38.766079, 32.586731, 34.892170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132648, 31.988894, 34.845245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240051, 32.158314, 35.191311>,  <39.304493, 32.259964, 35.398952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240051, 32.158314, 35.191311>,  <39.132648, 31.988894, 34.845245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240051, 32.158314, 35.191311> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157374, -0.866791, 0.473187,
		0.950337, -0.263206, -0.166080,
		0.268503, 0.423551, 0.865166,
		39.320602, 32.285378, 35.450859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293072, 31.401300, 35.224911>,  <39.132648, 31.988894, 34.845245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293072, 31.401300, 35.224911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314316, 31.687061, 35.503998>,  <39.327061, 31.858517, 35.671452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314316, 31.687061, 35.503998>,  <39.293072, 31.401300, 35.224911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314316, 31.687061, 35.503998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011698, -0.698212, 0.715795,
		0.998520, -0.046176, -0.028723,
		0.053107, 0.714400, 0.697719,
		39.330246, 31.901381, 35.713314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718719, 31.102758, 35.793354>,  <39.293072, 31.401300, 35.224911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718719, 31.102758, 35.793354> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558968, 31.419853, 35.977558>,  <39.463116, 31.610109, 36.088081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558968, 31.419853, 35.977558>,  <39.718719, 31.102758, 35.793354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558968, 31.419853, 35.977558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072145, -0.527922, 0.846223,
		0.913944, 0.304739, 0.268031,
		-0.399377, 0.792738, 0.460506,
		39.439156, 31.657675, 36.115711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068558, 31.158104, 36.490288>,  <39.718719, 31.102758, 35.793354>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068558, 31.158104, 36.490288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723785, 31.357435, 36.527699>,  <39.516922, 31.477034, 36.550144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723785, 31.357435, 36.527699>,  <40.068558, 31.158104, 36.490288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723785, 31.357435, 36.527699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200907, -0.505037, 0.839389,
		0.465524, 0.704705, 0.535425,
		-0.861930, 0.498326, 0.093527,
		39.465206, 31.506933, 36.555756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026237, 31.167236, 37.175579>,  <40.068558, 31.158104, 36.490288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026237, 31.167236, 37.175579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656559, 31.212496, 37.029667>,  <39.434753, 31.239651, 36.942120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656559, 31.212496, 37.029667>,  <40.026237, 31.167236, 37.175579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656559, 31.212496, 37.029667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367868, -0.520445, 0.770591,
		-0.102655, 0.846365, 0.522616,
		-0.924194, 0.113148, -0.364777,
		39.379299, 31.246441, 36.920235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751175, 31.402822, 37.713387>,  <40.026237, 31.167236, 37.175579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751175, 31.402822, 37.713387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453190, 31.263670, 37.485695>,  <39.274399, 31.180180, 37.349079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453190, 31.263670, 37.485695>,  <39.751175, 31.402822, 37.713387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453190, 31.263670, 37.485695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378219, -0.482636, 0.789945,
		-0.549534, 0.803768, 0.227969,
		-0.744958, -0.347880, -0.569225,
		39.229702, 31.159306, 37.314926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124413, 31.752989, 37.939728>,  <39.751175, 31.402822, 37.713387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124413, 31.752989, 37.939728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033707, 31.395929, 37.783905>,  <38.979282, 31.181694, 37.690411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033707, 31.395929, 37.783905>,  <39.124413, 31.752989, 37.939728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033707, 31.395929, 37.783905> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329572, -0.306055, 0.893148,
		-0.916494, 0.330919, -0.224792,
		-0.226761, -0.892650, -0.389559,
		38.965679, 31.128134, 37.667038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.355293, 31.561712, 38.102882>,  <39.124413, 31.752989, 37.939728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.355293, 31.561712, 38.102882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540264, 31.220562, 38.005913>,  <38.651245, 31.015871, 37.947731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540264, 31.220562, 38.005913>,  <38.355293, 31.561712, 38.102882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540264, 31.220562, 38.005913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392868, -0.442192, 0.806301,
		-0.794871, -0.277613, -0.539548,
		0.462423, -0.852876, -0.242420,
		38.678989, 30.964699, 37.933186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902790, 31.077482, 38.334129>,  <38.355293, 31.561712, 38.102882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902790, 31.077482, 38.334129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229607, 30.860876, 38.254932>,  <38.425697, 30.730911, 38.207413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229607, 30.860876, 38.254932>,  <37.902790, 31.077482, 38.334129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229607, 30.860876, 38.254932> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218205, -0.608258, 0.763158,
		-0.533693, -0.580329, -0.615134,
		0.817043, -0.541517, -0.197992,
		38.474720, 30.698421, 38.195534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643749, 30.349180, 38.553398>,  <37.902790, 31.077482, 38.334129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643749, 30.349180, 38.553398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043739, 30.347155, 38.551647>,  <38.283733, 30.345940, 38.550598>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043739, 30.347155, 38.551647>,  <37.643749, 30.349180, 38.553398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043739, 30.347155, 38.551647> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000016, -0.652074, 0.758156,
		-0.006695, -0.758139, -0.652059,
		0.999978, -0.005065, -0.004378,
		38.343731, 30.345634, 38.550335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499130, 29.765862, 38.093407>,  <37.643749, 30.349180, 38.553398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499130, 29.765862, 38.093407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136257, 29.614347, 38.020145>,  <36.918533, 29.523439, 37.976189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136257, 29.614347, 38.020145>,  <37.499130, 29.765862, 38.093407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136257, 29.614347, 38.020145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007501, 0.420676, -0.907180,
		0.420676, -0.824349, -0.378787,
		0.907180, 0.378787, 0.183151,
		36.864101, 29.500711, 37.965199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538658, 29.406269, 37.481869>,  <37.499130, 29.765862, 38.093407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538658, 29.406269, 37.481869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153957, 29.511290, 37.513088>,  <36.923138, 29.574303, 37.531818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153957, 29.511290, 37.513088>,  <37.538658, 29.406269, 37.481869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153957, 29.511290, 37.513088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037485, 0.408429, -0.912020,
		-0.271330, -0.874216, -0.402650,
		-0.961756, 0.262551, 0.078049,
		36.865429, 29.590055, 37.536503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183784, 29.169130, 36.767658>,  <37.538658, 29.406269, 37.481869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183784, 29.169130, 36.767658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922935, 29.418539, 36.940147>,  <36.766426, 29.568184, 37.043640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922935, 29.418539, 36.940147>,  <37.183784, 29.169130, 36.767658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922935, 29.418539, 36.940147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323427, 0.285626, -0.902116,
		-0.685658, -0.727761, 0.015400,
		-0.652126, 0.623524, 0.431220,
		36.727299, 29.605597, 37.069511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.614811, 29.079176, 36.432396>,  <37.183784, 29.169130, 36.767658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.614811, 29.079176, 36.432396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555794, 29.444321, 36.584667>,  <36.520382, 29.663408, 36.676029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555794, 29.444321, 36.584667>,  <36.614811, 29.079176, 36.432396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555794, 29.444321, 36.584667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125073, 0.364578, -0.922735,
		-0.981115, -0.183756, 0.060383,
		-0.147544, 0.912862, 0.380676,
		36.511532, 29.718180, 36.698872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950459, 29.298380, 36.204918>,  <36.614811, 29.079176, 36.432396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950459, 29.298380, 36.204918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144012, 29.636204, 36.296631>,  <36.260147, 29.838898, 36.351658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144012, 29.636204, 36.296631>,  <35.950459, 29.298380, 36.204918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.144012, 29.636204, 36.296631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295041, 0.404094, -0.865828,
		-0.823896, 0.351316, 0.444716,
		0.483887, 0.844562, 0.229279,
		36.289177, 29.889572, 36.365414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405319, 29.817894, 36.052753>,  <35.950459, 29.298380, 36.204918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405319, 29.817894, 36.052753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781128, 29.954832, 36.048634>,  <36.006611, 30.036995, 36.046162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781128, 29.954832, 36.048634>,  <35.405319, 29.817894, 36.052753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.781128, 29.954832, 36.048634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121855, 0.306010, -0.944198,
		-0.320089, 0.888346, 0.329219,
		0.939518, 0.342344, -0.010299,
		36.062984, 30.057535, 36.045544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.380283, 30.330992, 35.586964>,  <35.405319, 29.817894, 36.052753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.380283, 30.330992, 35.586964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779152, 30.317230, 35.613708>,  <36.018471, 30.308973, 35.629757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779152, 30.317230, 35.613708>,  <35.380283, 30.330992, 35.586964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779152, 30.317230, 35.613708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074787, 0.360945, -0.929583,
		0.007846, 0.931952, 0.362496,
		0.997169, -0.034404, 0.066866,
		36.078304, 30.306910, 35.633770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691975, 31.016174, 35.466980>,  <35.380283, 30.330992, 35.586964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691975, 31.016174, 35.466980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991379, 30.766174, 35.378342>,  <36.171021, 30.616175, 35.325157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991379, 30.766174, 35.378342>,  <35.691975, 31.016174, 35.466980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991379, 30.766174, 35.378342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100601, 0.437328, -0.893658,
		0.655447, 0.646619, 0.390221,
		0.748511, -0.625002, -0.221594,
		36.215931, 30.578674, 35.311863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192970, 31.332123, 35.057404>,  <35.691975, 31.016174, 35.466980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192970, 31.332123, 35.057404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262341, 30.949617, 34.963184>,  <36.303963, 30.720114, 34.906651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.262341, 30.949617, 34.963184>,  <36.192970, 31.332123, 35.057404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262341, 30.949617, 34.963184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088403, 0.253324, -0.963334,
		0.980871, 0.146243, 0.128470,
		0.173425, -0.956263, -0.235550,
		36.314369, 30.662739, 34.892521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685997, 31.407558, 34.475498>,  <36.192970, 31.332123, 35.057404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685997, 31.407558, 34.475498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513779, 31.046667, 34.485413>,  <36.410446, 30.830132, 34.491360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513779, 31.046667, 34.485413>,  <36.685997, 31.407558, 34.475498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.513779, 31.046667, 34.485413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090518, 0.015838, -0.995769,
		0.898019, -0.430967, -0.088486,
		-0.430545, -0.902229, 0.024787,
		36.384617, 30.775999, 34.492847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031487, 30.992542, 34.003147>,  <36.685997, 31.407558, 34.475498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031487, 30.992542, 34.003147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663635, 30.836210, 34.018822>,  <36.442924, 30.742411, 34.028225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663635, 30.836210, 34.018822>,  <37.031487, 30.992542, 34.003147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663635, 30.836210, 34.018822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054217, 0.027501, -0.998150,
		0.389033, -0.920051, -0.046481,
		-0.919627, -0.390833, 0.039183,
		36.387749, 30.718960, 34.030579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895115, 30.376524, 33.453808>,  <37.031487, 30.992542, 34.003147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895115, 30.376524, 33.453808> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510475, 30.452454, 33.533096>,  <36.279690, 30.498011, 33.580669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510475, 30.452454, 33.533096>,  <36.895115, 30.376524, 33.453808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510475, 30.452454, 33.533096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207724, -0.031342, -0.977685,
		-0.179377, -0.981317, 0.069570,
		-0.961600, 0.189826, 0.198221,
		36.221996, 30.509401, 33.592564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.929398, 27.421131, 41.090263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.571693, 27.599485, 41.074841>,  <36.357071, 27.706497, 41.065586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.571693, 27.599485, 41.074841>,  <36.929398, 27.421131, 41.090263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.571693, 27.599485, 41.074841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021640, -0.129135, -0.991391,
		-0.447025, -0.885727, 0.125129,
		-0.894260, 0.445884, -0.038559,
		36.303417, 27.733250, 41.063274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556713, 27.112114, 40.598946>,  <36.929398, 27.421131, 41.090263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556713, 27.112114, 40.598946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.388157, 27.473007, 40.635628>,  <36.287022, 27.689543, 40.657639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.388157, 27.473007, 40.635628>,  <36.556713, 27.112114, 40.598946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388157, 27.473007, 40.635628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035336, 0.084713, -0.995778,
		-0.906191, -0.422851, -0.003816,
		-0.421389, 0.902231, 0.091708,
		36.261742, 27.743677, 40.663139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241627, 27.162052, 39.885220>,  <36.556713, 27.112114, 40.598946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241627, 27.162052, 39.885220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.176105, 27.524351, 40.041573>,  <36.136795, 27.741730, 40.135384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.176105, 27.524351, 40.041573>,  <36.241627, 27.162052, 39.885220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176105, 27.524351, 40.041573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192745, 0.417986, -0.887771,
		-0.967481, -0.070074, -0.243043,
		-0.163799, 0.905747, 0.390887,
		36.126965, 27.796076, 40.158840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646294, 27.484602, 39.599918>,  <36.241627, 27.162052, 39.885220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646294, 27.484602, 39.599918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.864338, 27.793201, 39.731159>,  <35.995163, 27.978361, 39.809902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.864338, 27.793201, 39.731159>,  <35.646294, 27.484602, 39.599918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864338, 27.793201, 39.731159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046470, 0.418556, -0.907001,
		-0.837078, 0.479166, 0.264009,
		0.545107, 0.771499, 0.328098,
		36.027870, 28.024651, 39.829590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.339382, 28.061501, 39.374203>,  <35.646294, 27.484602, 39.599918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.339382, 28.061501, 39.374203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.713474, 28.174950, 39.458965>,  <35.937931, 28.243019, 39.509823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.713474, 28.174950, 39.458965>,  <35.339382, 28.061501, 39.374203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713474, 28.174950, 39.458965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082557, 0.407332, -0.909541,
		-0.344282, 0.868124, 0.357534,
		0.935229, 0.283622, 0.211906,
		35.994041, 28.260036, 39.522537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332016, 28.764559, 39.308876>,  <35.339382, 28.061501, 39.374203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332016, 28.764559, 39.308876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.715687, 28.658108, 39.270607>,  <35.945889, 28.594236, 39.247646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.715687, 28.658108, 39.270607>,  <35.332016, 28.764559, 39.308876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715687, 28.658108, 39.270607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042975, 0.471544, -0.880795,
		0.279520, 0.840727, 0.463731,
		0.959178, -0.266129, -0.095676,
		36.003441, 28.578270, 39.241905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613644, 29.413746, 39.189510>,  <35.332016, 28.764559, 39.308876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613644, 29.413746, 39.189510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.880863, 29.145933, 39.059624>,  <36.041195, 28.985247, 38.981689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.880863, 29.145933, 39.059624>,  <35.613644, 29.413746, 39.189510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880863, 29.145933, 39.059624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222129, 0.595915, -0.771715,
		0.710192, 0.443412, 0.546821,
		0.668046, -0.669530, -0.324720,
		36.081276, 28.945074, 38.962208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178692, 29.888474, 39.042290>,  <35.613644, 29.413746, 39.189510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178692, 29.888474, 39.042290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.244347, 29.544024, 38.849823>,  <36.283737, 29.337353, 38.734341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.244347, 29.544024, 38.849823>,  <36.178692, 29.888474, 39.042290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244347, 29.544024, 38.849823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261616, 0.508319, -0.820469,
		0.951114, 0.008786, 0.308716,
		0.164135, -0.861124, -0.481170,
		36.293587, 29.285686, 38.705471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976177, 29.934498, 38.821770>,  <36.178692, 29.888474, 39.042290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976177, 29.934498, 38.821770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.800049, 29.655989, 38.595028>,  <36.694370, 29.488884, 38.458984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.800049, 29.655989, 38.595028>,  <36.976177, 29.934498, 38.821770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800049, 29.655989, 38.595028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312909, 0.472762, -0.823762,
		0.841550, -0.540092, 0.009703,
		-0.440320, -0.696273, -0.566853,
		36.667953, 29.447107, 38.424973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766418, 29.678158, 38.844608>,  <36.976177, 29.934498, 38.821770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766418, 29.678158, 38.844608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.105034, 29.890167, 38.864418>,  <38.308201, 30.017372, 38.876305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.105034, 29.890167, 38.864418>,  <37.766418, 29.678158, 38.844608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105034, 29.890167, 38.864418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114841, -0.272676, 0.955228,
		0.519797, -0.802947, -0.291698,
		0.846536, 0.530023, 0.049525,
		38.358994, 30.049173, 38.879276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162315, 29.270144, 39.159821>,  <37.766418, 29.678158, 38.844608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162315, 29.270144, 39.159821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.316498, 29.636469, 39.204910>,  <38.409008, 29.856264, 39.231964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.316498, 29.636469, 39.204910>,  <38.162315, 29.270144, 39.159821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316498, 29.636469, 39.204910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066623, -0.149466, 0.986520,
		0.920317, -0.372751, -0.118627,
		0.385457, 0.915815, 0.112722,
		38.432137, 29.911213, 39.238728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.786587, 29.154167, 39.435040>,  <38.162315, 29.270144, 39.159821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.786587, 29.154167, 39.435040> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.668144, 29.523808, 39.531666>,  <38.597080, 29.745592, 39.589642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.668144, 29.523808, 39.531666>,  <38.786587, 29.154167, 39.435040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668144, 29.523808, 39.531666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111367, -0.284587, 0.952160,
		0.948641, 0.255037, 0.187182,
		-0.296106, 0.924103, 0.241568,
		38.579311, 29.801039, 39.604137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094021, 29.325994, 40.189613>,  <38.786587, 29.154167, 39.435040>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094021, 29.325994, 40.189613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.835136, 29.627859, 40.146526>,  <38.679806, 29.808977, 40.120674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.835136, 29.627859, 40.146526>,  <39.094021, 29.325994, 40.189613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835136, 29.627859, 40.146526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011952, 0.151335, 0.988410,
		0.762217, 0.638423, -0.106965,
		-0.647211, 0.754662, -0.107719,
		38.640972, 29.854258, 40.114212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328384, 29.896715, 40.576412>,  <39.094021, 29.325994, 40.189613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328384, 29.896715, 40.576412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.939270, 29.981573, 40.539127>,  <38.705803, 30.032488, 40.516758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.939270, 29.981573, 40.539127>,  <39.328384, 29.896715, 40.576412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939270, 29.981573, 40.539127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037533, 0.252683, 0.966821,
		0.228657, 0.944005, -0.237844,
		-0.972783, 0.212144, -0.093209,
		38.647434, 30.045216, 40.511166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285931, 30.547464, 40.860046>,  <39.328384, 29.896715, 40.576412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285931, 30.547464, 40.860046> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.931911, 30.362644, 40.882656>,  <38.719498, 30.251751, 40.896221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.931911, 30.362644, 40.882656>,  <39.285931, 30.547464, 40.860046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.931911, 30.362644, 40.882656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131361, 0.364404, 0.921930,
		-0.446577, 0.808528, -0.383211,
		-0.885050, -0.462052, 0.056525,
		38.666397, 30.224030, 40.899612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688419, 31.131647, 41.029411>,  <39.285931, 30.547464, 40.860046>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688419, 31.131647, 41.029411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.564915, 30.765432, 41.132530>,  <38.490810, 30.545704, 41.194401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.564915, 30.765432, 41.132530>,  <38.688419, 31.131647, 41.029411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564915, 30.765432, 41.132530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313965, 0.353952, 0.880990,
		-0.897826, 0.191077, -0.396734,
		-0.308762, -0.915537, 0.257795,
		38.472286, 30.490772, 41.209869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082821, 31.288773, 41.523010>,  <38.688419, 31.131647, 41.029411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082821, 31.288773, 41.523010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.158997, 30.898609, 41.567394>,  <38.204700, 30.664511, 41.594025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.158997, 30.898609, 41.567394>,  <38.082821, 31.288773, 41.523010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158997, 30.898609, 41.567394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150631, 0.082654, 0.985129,
		-0.970075, -0.204316, -0.131186,
		0.190434, -0.975409, 0.110956,
		38.216125, 30.605986, 41.600681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559498, 31.049437, 42.070538>,  <38.082821, 31.288773, 41.523010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559498, 31.049437, 42.070538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.859909, 30.790234, 42.019875>,  <38.040157, 30.634712, 41.989475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.859909, 30.790234, 42.019875>,  <37.559498, 31.049437, 42.070538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859909, 30.790234, 42.019875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027668, -0.160776, 0.986603,
		-0.659691, -0.744471, -0.102818,
		0.751027, -0.648008, -0.126661,
		38.085217, 30.595831, 41.981876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355434, 30.333601, 42.271461>,  <37.559498, 31.049437, 42.070538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355434, 30.333601, 42.271461> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.754242, 30.345951, 42.299770>,  <37.993526, 30.353361, 42.316757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.754242, 30.345951, 42.299770>,  <37.355434, 30.333601, 42.271461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.754242, 30.345951, 42.299770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065124, -0.156205, 0.985575,
		0.041486, -0.987242, -0.153728,
		0.997015, 0.030876, 0.070774,
		38.053345, 30.355213, 42.321003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630592, 29.671000, 42.604183>,  <37.355434, 30.333601, 42.271461>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630592, 29.671000, 42.604183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.940887, 29.921680, 42.633793>,  <38.127064, 30.072090, 42.651558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.940887, 29.921680, 42.633793>,  <37.630592, 29.671000, 42.604183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940887, 29.921680, 42.633793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062504, -0.193027, 0.979201,
		0.627958, -0.754972, -0.188909,
		0.775733, 0.626704, 0.074024,
		38.173607, 30.109692, 42.655998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255081, 29.233820, 42.840225>,  <37.630592, 29.671000, 42.604183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255081, 29.233820, 42.840225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.317665, 29.615255, 42.943134>,  <38.355217, 29.844116, 43.004879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.317665, 29.615255, 42.943134>,  <38.255081, 29.233820, 42.840225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317665, 29.615255, 42.943134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093933, -0.273668, 0.957226,
		0.983207, -0.125605, -0.132392,
		0.156464, 0.953588, 0.257274,
		38.364605, 29.901331, 43.020317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.873913, 29.313250, 43.179184>,  <38.255081, 29.233820, 42.840225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.873913, 29.313250, 43.179184> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.718208, 29.653488, 43.320583>,  <38.624786, 29.857632, 43.405422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.718208, 29.653488, 43.320583>,  <38.873913, 29.313250, 43.179184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718208, 29.653488, 43.320583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098013, -0.343340, 0.934083,
		0.915900, 0.398246, 0.050278,
		-0.389257, 0.850598, 0.353499,
		38.601433, 29.908669, 43.426632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290024, 29.518284, 43.782604>,  <38.873913, 29.313250, 43.179184>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290024, 29.518284, 43.782604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.942745, 29.714323, 43.813671>,  <38.734379, 29.831945, 43.832314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.942745, 29.714323, 43.813671>,  <39.290024, 29.518284, 43.782604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942745, 29.714323, 43.813671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084615, -0.300458, 0.950034,
		0.488945, 0.818248, 0.302328,
		-0.868201, 0.490096, 0.077672,
		38.682285, 29.861351, 43.836971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.591064, 30.243914, 43.306641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.976875, 30.208078, 43.405968>,  <33.208363, 30.186577, 43.465565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.976875, 30.208078, 43.405968>,  <32.591064, 30.243914, 43.306641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.976875, 30.208078, 43.405968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257244, 0.107725, -0.960323,
		0.059281, 0.990136, 0.126949,
		0.964526, -0.089586, 0.248321,
		33.266232, 30.181202, 43.480465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897606, 30.779137, 42.992935>,  <32.591064, 30.243914, 43.306641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897606, 30.779137, 42.992935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.206955, 30.541105, 43.080364>,  <33.392563, 30.398287, 43.132820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.206955, 30.541105, 43.080364>,  <32.897606, 30.779137, 42.992935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206955, 30.541105, 43.080364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294801, 0.032359, -0.955011,
		0.561235, 0.803015, 0.200455,
		0.773374, -0.595080, 0.218569,
		33.438969, 30.362581, 43.145935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.456051, 31.059124, 42.628460>,  <32.897606, 30.779137, 42.992935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.456051, 31.059124, 42.628460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.630356, 30.707081, 42.703850>,  <33.734940, 30.495855, 42.749084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.630356, 30.707081, 42.703850>,  <33.456051, 31.059124, 42.628460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630356, 30.707081, 42.703850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504770, 0.065590, -0.860759,
		0.745196, 0.470226, 0.472832,
		0.435764, -0.880105, 0.188478,
		33.761086, 30.443048, 42.760395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088451, 31.115183, 42.402218>,  <33.456051, 31.059124, 42.628460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088451, 31.115183, 42.402218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.002914, 30.724457, 42.398193>,  <33.951591, 30.490021, 42.395779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.002914, 30.724457, 42.398193>,  <34.088451, 31.115183, 42.402218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002914, 30.724457, 42.398193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341844, -0.065182, -0.937493,
		0.915103, -0.203914, 0.347858,
		-0.213842, -0.976816, -0.010059,
		33.938763, 30.431412, 42.395176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783131, 30.778818, 42.195698>,  <34.088451, 31.115183, 42.402218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783131, 30.778818, 42.195698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.463886, 30.556227, 42.103310>,  <34.272339, 30.422672, 42.047874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.463886, 30.556227, 42.103310>,  <34.783131, 30.778818, 42.195698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463886, 30.556227, 42.103310> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162268, 0.170664, -0.971876,
		0.580246, -0.813146, -0.045911,
		-0.798113, -0.556477, -0.230975,
		34.224453, 30.389284, 42.034016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969078, 30.454531, 41.522320>,  <34.783131, 30.778818, 42.195698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969078, 30.454531, 41.522320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.572395, 30.414474, 41.554554>,  <34.334385, 30.390440, 41.573895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.572395, 30.414474, 41.554554>,  <34.969078, 30.454531, 41.522320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572395, 30.414474, 41.554554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094830, 0.146781, -0.984613,
		0.086768, -0.984088, -0.155059,
		-0.991705, -0.100138, 0.080586,
		34.274883, 30.384432, 41.578728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735561, 29.967022, 40.979046>,  <34.969078, 30.454531, 41.522320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735561, 29.967022, 40.979046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.408562, 30.178898, 41.069485>,  <34.212360, 30.306023, 41.123749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.408562, 30.178898, 41.069485>,  <34.735561, 29.967022, 40.979046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.408562, 30.178898, 41.069485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267163, -0.000996, -0.963651,
		-0.510209, -0.848192, 0.142327,
		-0.817503, 0.529688, 0.226098,
		34.163311, 30.337805, 41.137314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274105, 29.643133, 40.568741>,  <34.735561, 29.967022, 40.979046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274105, 29.643133, 40.568741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.125568, 29.999319, 40.673946>,  <34.036446, 30.213030, 40.737072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.125568, 29.999319, 40.673946>,  <34.274105, 29.643133, 40.568741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125568, 29.999319, 40.673946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154144, 0.220218, -0.963195,
		-0.915612, -0.398215, 0.055484,
		-0.371340, 0.890465, 0.263017,
		34.014168, 30.266459, 40.752853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920120, 29.705162, 39.966251>,  <34.274105, 29.643133, 40.568741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920120, 29.705162, 39.966251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.933640, 30.056919, 40.156212>,  <33.941753, 30.267973, 40.270187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.933640, 30.056919, 40.156212>,  <33.920120, 29.705162, 39.966251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.933640, 30.056919, 40.156212> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183698, 0.472541, -0.861952,
		-0.982402, -0.058102, 0.177515,
		0.033802, 0.879392, 0.474898,
		33.943779, 30.320736, 40.298683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451931, 30.115559, 39.669376>,  <33.920120, 29.705162, 39.966251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451931, 30.115559, 39.669376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.697201, 30.393547, 39.819592>,  <33.844364, 30.560341, 39.909721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.697201, 30.393547, 39.819592>,  <33.451931, 30.115559, 39.669376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697201, 30.393547, 39.819592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138986, 0.562895, -0.814759,
		-0.777624, 0.447395, 0.441745,
		0.613175, 0.694972, 0.375539,
		33.881153, 30.602039, 39.932255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115444, 30.723650, 39.558342>,  <33.451931, 30.115559, 39.669376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115444, 30.723650, 39.558342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.493614, 30.839109, 39.618820>,  <33.720516, 30.908384, 39.655106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.493614, 30.839109, 39.618820>,  <33.115444, 30.723650, 39.558342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493614, 30.839109, 39.618820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119688, 0.739190, -0.662776,
		-0.303071, 0.608507, 0.733394,
		0.945422, 0.288646, 0.151196,
		33.777241, 30.925703, 39.664181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050282, 31.440712, 39.750042>,  <33.115444, 30.723650, 39.558342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050282, 31.440712, 39.750042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.421047, 31.387926, 39.609524>,  <33.643509, 31.356255, 39.525211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.421047, 31.387926, 39.609524>,  <33.050282, 31.440712, 39.750042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421047, 31.387926, 39.609524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160489, 0.706802, -0.688966,
		0.339219, 0.694993, 0.633967,
		0.926916, -0.131966, -0.351299,
		33.699123, 31.348337, 39.504135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260326, 32.131786, 39.595100>,  <33.050282, 31.440712, 39.750042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260326, 32.131786, 39.595100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.513206, 31.884979, 39.407650>,  <33.664936, 31.736895, 39.295181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.513206, 31.884979, 39.407650>,  <33.260326, 32.131786, 39.595100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513206, 31.884979, 39.407650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065431, 0.560151, -0.825803,
		0.772036, 0.552737, 0.313756,
		0.632202, -0.617020, -0.468622,
		33.702866, 31.699873, 39.267063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708874, 32.555298, 39.376659>,  <33.260326, 32.131786, 39.595100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708874, 32.555298, 39.376659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.733101, 32.233059, 39.140919>,  <33.747635, 32.039715, 38.999474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.733101, 32.233059, 39.140919>,  <33.708874, 32.555298, 39.376659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733101, 32.233059, 39.140919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175300, 0.572677, -0.800819,
		0.982650, 0.151814, -0.106538,
		0.060563, -0.805601, -0.589355,
		33.751270, 31.991379, 38.964111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194504, 33.054043, 39.409138>,  <33.708874, 32.555298, 39.376659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194504, 33.054043, 39.409138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.479362, 33.325317, 39.481712>,  <34.650276, 33.488083, 39.525257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.479362, 33.325317, 39.481712>,  <34.194504, 33.054043, 39.409138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479362, 33.325317, 39.481712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091135, -0.166945, 0.981745,
		0.696093, -0.715679, -0.057083,
		0.712144, 0.678184, 0.181432,
		34.693005, 33.528774, 39.536140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578560, 32.741383, 39.832611>,  <34.194504, 33.054043, 39.409138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578560, 32.741383, 39.832611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.654217, 33.128315, 39.900143>,  <34.699612, 33.360474, 39.940662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.654217, 33.128315, 39.900143>,  <34.578560, 32.741383, 39.832611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654217, 33.128315, 39.900143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025773, -0.176767, 0.983915,
		0.981612, -0.181748, -0.058365,
		0.189141, 0.967327, 0.168832,
		34.710960, 33.418514, 39.950794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058468, 32.810074, 40.190247>,  <34.578560, 32.741383, 39.832611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058468, 32.810074, 40.190247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.846569, 33.139034, 40.273216>,  <34.719429, 33.336411, 40.322998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.846569, 33.139034, 40.273216>,  <35.058468, 32.810074, 40.190247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846569, 33.139034, 40.273216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089075, -0.189256, 0.977879,
		0.843468, 0.536501, 0.027002,
		-0.529743, 0.822404, 0.207420,
		34.687645, 33.385757, 40.335442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278282, 32.953320, 40.815414>,  <35.058468, 32.810074, 40.190247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278282, 32.953320, 40.815414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.970974, 33.208420, 40.793404>,  <34.786587, 33.361481, 40.780197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.970974, 33.208420, 40.793404>,  <35.278282, 32.953320, 40.815414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970974, 33.208420, 40.793404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180019, -0.132767, 0.974662,
		0.614285, 0.758714, 0.216809,
		-0.768275, 0.637750, -0.055026,
		34.740490, 33.399746, 40.776897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437634, 33.527473, 41.286510>,  <35.278282, 32.953320, 40.815414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437634, 33.527473, 41.286510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.040051, 33.526093, 41.242634>,  <34.801498, 33.525265, 41.216309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.040051, 33.526093, 41.242634>,  <35.437634, 33.527473, 41.286510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040051, 33.526093, 41.242634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109717, 0.009053, 0.993922,
		-0.002436, 0.999953, -0.009377,
		-0.993960, -0.003450, -0.109690,
		34.741863, 33.525059, 41.209728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132481, 34.002243, 41.821316>,  <35.437634, 33.527473, 41.286510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132481, 34.002243, 41.821316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.813152, 33.800251, 41.690056>,  <34.621555, 33.679054, 41.611301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.813152, 33.800251, 41.690056>,  <35.132481, 34.002243, 41.821316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813152, 33.800251, 41.690056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324580, -0.098198, 0.940747,
		-0.507284, 0.857526, -0.085514,
		-0.798317, -0.504982, -0.328150,
		34.573658, 33.648758, 41.591610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686279, 34.272579, 42.172176>,  <35.132481, 34.002243, 41.821316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686279, 34.272579, 42.172176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.514606, 33.936337, 42.040009>,  <34.411602, 33.734589, 41.960709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.514606, 33.936337, 42.040009>,  <34.686279, 34.272579, 42.172176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514606, 33.936337, 42.040009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517689, -0.070838, 0.852631,
		-0.740137, 0.536988, -0.404772,
		-0.429180, -0.840610, -0.330423,
		34.385853, 33.684155, 41.940880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979557, 34.381058, 42.393040>,  <34.686279, 34.272579, 42.172176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979557, 34.381058, 42.393040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.061993, 33.993069, 42.341393>,  <34.111454, 33.760273, 42.310406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.061993, 33.993069, 42.341393>,  <33.979557, 34.381058, 42.393040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061993, 33.993069, 42.341393> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256565, -0.180898, 0.949447,
		-0.944299, -0.162544, -0.286144,
		0.206090, -0.969977, -0.129119,
		34.123821, 33.702076, 42.302658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433559, 34.061489, 42.818253>,  <33.979557, 34.381058, 42.393040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433559, 34.061489, 42.818253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.691578, 33.761089, 42.761799>,  <33.846390, 33.580849, 42.727928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.691578, 33.761089, 42.761799>,  <33.433559, 34.061489, 42.818253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691578, 33.761089, 42.761799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112000, -0.275621, 0.954719,
		-0.755889, -0.600033, -0.261901,
		0.645049, -0.750995, -0.141135,
		33.885094, 33.535789, 42.719460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103157, 33.434898, 43.177982>,  <33.433559, 34.061489, 42.818253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103157, 33.434898, 43.177982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.493809, 33.357197, 43.141197>,  <33.728199, 33.310577, 43.119125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.493809, 33.357197, 43.141197>,  <33.103157, 33.434898, 43.177982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493809, 33.357197, 43.141197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001588, -0.421368, 0.906888,
		-0.214917, -0.885841, -0.411213,
		0.976631, -0.194253, -0.091966,
		33.786797, 33.298920, 43.113605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251942, 32.614040, 43.351322>,  <33.103157, 33.434898, 43.177982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251942, 32.614040, 43.351322> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.569008, 32.851170, 43.408218>,  <33.759247, 32.993446, 43.442356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.569008, 32.851170, 43.408218>,  <33.251942, 32.614040, 43.351322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569008, 32.851170, 43.408218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164335, -0.432447, 0.886557,
		0.587085, -0.679372, -0.440209,
		0.792670, 0.592827, 0.142238,
		33.806808, 33.029018, 43.450890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799076, 32.220749, 43.591049>,  <33.251942, 32.614040, 43.351322>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799076, 32.220749, 43.591049> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919800, 32.586315, 43.699623>,  <33.992233, 32.805653, 43.764767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.919800, 32.586315, 43.699623>,  <33.799076, 32.220749, 43.591049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919800, 32.586315, 43.699623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333786, -0.367986, 0.867855,
		0.893028, -0.171324, -0.416112,
		0.301808, 0.913912, 0.271437,
		34.010342, 32.860489, 43.781055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455208, 32.144058, 43.835663>,  <33.799076, 32.220749, 43.591049>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455208, 32.144058, 43.835663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.313046, 32.480309, 43.999138>,  <34.227749, 32.682060, 44.097225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.313046, 32.480309, 43.999138>,  <34.455208, 32.144058, 43.835663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313046, 32.480309, 43.999138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151433, -0.379676, 0.912641,
		0.922363, 0.386248, 0.007641,
		-0.355407, 0.840630, 0.408690,
		34.206425, 32.732498, 44.121746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960640, 32.275990, 44.413578>,  <34.455208, 32.144058, 43.835663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960640, 32.275990, 44.413578> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.623535, 32.482231, 44.475426>,  <34.421272, 32.605976, 44.512535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.623535, 32.482231, 44.475426>,  <34.960640, 32.275990, 44.413578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623535, 32.482231, 44.475426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051995, -0.363869, 0.929998,
		0.535774, 0.775725, 0.333463,
		-0.842759, 0.515607, 0.154618,
		34.370708, 32.636913, 44.521812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539173, 32.817894, 44.667843>,  <34.960640, 32.275990, 44.413578>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539173, 32.817894, 44.667843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.924187, 32.811680, 44.776134>,  <36.155193, 32.807953, 44.841110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.924187, 32.811680, 44.776134>,  <35.539173, 32.817894, 44.667843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924187, 32.811680, 44.776134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268940, 0.182631, -0.945683,
		-0.034752, 0.983059, 0.179966,
		0.962530, -0.015536, 0.270731,
		36.212944, 32.807018, 44.857353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765137, 33.425808, 44.475136>,  <35.539173, 32.817894, 44.667843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765137, 33.425808, 44.475136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.071239, 33.168850, 44.491722>,  <36.254902, 33.014675, 44.501675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.071239, 33.168850, 44.491722>,  <35.765137, 33.425808, 44.475136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071239, 33.168850, 44.491722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189035, 0.162679, -0.968401,
		0.615349, 0.748910, 0.245925,
		0.765253, -0.642393, 0.041466,
		36.300816, 32.976131, 44.504162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332123, 33.841049, 44.152546>,  <35.765137, 33.425808, 44.475136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332123, 33.841049, 44.152546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.469246, 33.468063, 44.106945>,  <36.551521, 33.244274, 44.079586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.469246, 33.468063, 44.106945>,  <36.332123, 33.841049, 44.152546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469246, 33.468063, 44.106945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387740, 0.250985, -0.886941,
		0.855651, 0.259851, 0.447593,
		0.342811, -0.932461, -0.114001,
		36.572090, 33.188324, 44.072746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890663, 33.932762, 43.761860>,  <36.332123, 33.841049, 44.152546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890663, 33.932762, 43.761860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.843834, 33.536682, 43.731419>,  <36.815739, 33.299034, 43.713154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.843834, 33.536682, 43.731419>,  <36.890663, 33.932762, 43.761860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843834, 33.536682, 43.731419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453566, 0.014864, -0.891099,
		0.883500, -0.138840, 0.447382,
		-0.117071, -0.990203, -0.076105,
		36.808712, 33.239620, 43.708588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556644, 33.689941, 43.682964>,  <36.890663, 33.932762, 43.761860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556644, 33.689941, 43.682964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.322777, 33.403530, 43.530411>,  <37.182457, 33.231682, 43.438877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.322777, 33.403530, 43.530411>,  <37.556644, 33.689941, 43.682964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322777, 33.403530, 43.530411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613012, -0.082000, -0.785807,
		0.531389, -0.693235, 0.486879,
		-0.584673, -0.716032, -0.381388,
		37.147373, 33.188721, 43.415993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023628, 33.300339, 43.265457>,  <37.556644, 33.689941, 43.682964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023628, 33.300339, 43.265457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.682667, 33.143562, 43.127014>,  <37.478088, 33.049496, 43.043949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.682667, 33.143562, 43.127014>,  <38.023628, 33.300339, 43.265457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682667, 33.143562, 43.127014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411385, -0.094115, -0.906590,
		0.322756, -0.915163, 0.241463,
		-0.852403, -0.391942, -0.346108,
		37.426945, 33.025978, 43.023182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159966, 32.640537, 42.995975>,  <38.023628, 33.300339, 43.265457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159966, 32.640537, 42.995975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.834526, 32.743176, 42.787277>,  <37.639263, 32.804756, 42.662060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.834526, 32.743176, 42.787277>,  <38.159966, 32.640537, 42.995975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834526, 32.743176, 42.787277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476975, -0.218604, -0.851297,
		-0.332492, -0.941474, 0.055468,
		-0.813600, 0.256592, -0.521744,
		37.590446, 32.820152, 42.630753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047497, 32.133678, 42.457573>,  <38.159966, 32.640537, 42.995975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047497, 32.133678, 42.457573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.869873, 32.469063, 42.331215>,  <37.763298, 32.670296, 42.255402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.869873, 32.469063, 42.331215>,  <38.047497, 32.133678, 42.457573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869873, 32.469063, 42.331215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481436, -0.074060, -0.873347,
		-0.755665, -0.539901, -0.370780,
		-0.444061, 0.838464, -0.315892,
		37.736656, 32.720604, 42.236446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034615, 32.123096, 41.675495>,  <38.047497, 32.133678, 42.457573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034615, 32.123096, 41.675495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.946709, 32.505898, 41.751221>,  <37.893967, 32.735580, 41.796658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.946709, 32.505898, 41.751221>,  <38.034615, 32.123096, 41.675495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946709, 32.505898, 41.751221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499774, 0.277106, -0.820633,
		-0.837812, -0.085730, -0.539185,
		-0.219764, 0.957007, 0.189318,
		37.880779, 32.792999, 41.808018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707253, 32.348907, 40.997021>,  <38.034615, 32.123096, 41.675495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707253, 32.348907, 40.997021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.856030, 32.652782, 41.210388>,  <37.945293, 32.835106, 41.338409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.856030, 32.652782, 41.210388>,  <37.707253, 32.348907, 40.997021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856030, 32.652782, 41.210388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557001, 0.277042, -0.782942,
		-0.742571, 0.588321, -0.320104,
		0.371939, 0.759688, 0.533419,
		37.967609, 32.880688, 41.370415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596012, 32.931709, 40.618061>,  <37.707253, 32.348907, 40.997021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596012, 32.931709, 40.618061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.893997, 33.047050, 40.858688>,  <38.072788, 33.116257, 41.003063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.893997, 33.047050, 40.858688>,  <37.596012, 32.931709, 40.618061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893997, 33.047050, 40.858688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404774, 0.521414, -0.751189,
		-0.530273, 0.803107, 0.271716,
		0.744962, 0.288352, 0.601569,
		38.117485, 33.133556, 41.039158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783199, 33.664364, 40.523026>,  <37.596012, 32.931709, 40.618061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783199, 33.664364, 40.523026> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.123806, 33.559486, 40.704651>,  <38.328171, 33.496559, 40.813625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.123806, 33.559486, 40.704651>,  <37.783199, 33.664364, 40.523026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123806, 33.559486, 40.704651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524002, 0.394897, -0.754638,
		0.018554, 0.880516, 0.473652,
		0.851515, -0.262196, 0.454065,
		38.379261, 33.480827, 40.840870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241890, 34.240711, 40.378048>,  <37.783199, 33.664364, 40.523026>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241890, 34.240711, 40.378048> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.480713, 33.939743, 40.489326>,  <38.624004, 33.759163, 40.556095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.480713, 33.939743, 40.489326>,  <38.241890, 34.240711, 40.378048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480713, 33.939743, 40.489326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610780, 0.201546, -0.765720,
		0.520072, 0.627093, 0.579896,
		0.597053, -0.752418, 0.278198,
		38.659828, 33.714016, 40.572784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843826, 34.571564, 40.390244>,  <38.241890, 34.240711, 40.378048>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843826, 34.571564, 40.390244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.907108, 34.179554, 40.342056>,  <38.945080, 33.944347, 40.313145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.907108, 34.179554, 40.342056>,  <38.843826, 34.571564, 40.390244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907108, 34.179554, 40.342056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535470, 0.187665, -0.823440,
		0.829603, 0.065767, 0.554466,
		0.158209, -0.980029, -0.120471,
		38.954571, 33.885544, 40.305916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.993195, 29.697487, 39.337193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.757559, 29.396770, 39.455704>,  <29.616177, 29.216341, 39.526810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.757559, 29.396770, 39.455704>,  <29.993195, 29.697487, 39.337193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757559, 29.396770, 39.455704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732288, 0.341651, -0.589091,
		0.341651, -0.563988, -0.751792,
		0.589091, 0.751792, -0.296276,
		29.580832, 29.171232, 39.544586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.781687, 29.292984, 38.807190>,  <29.993195, 29.697487, 39.337193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.781687, 29.292984, 38.807190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.501665, 29.274309, 39.092216>,  <29.333652, 29.263105, 39.263233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.501665, 29.274309, 39.092216>,  <29.781687, 29.292984, 38.807190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.501665, 29.274309, 39.092216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682892, 0.335503, -0.648920,
		-0.208772, -0.940882, -0.266751,
		-0.700053, -0.046686, 0.712564,
		29.291649, 29.260303, 39.305984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224037, 28.994081, 38.500820>,  <29.781687, 29.292984, 38.807190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224037, 28.994081, 38.500820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.098173, 29.207214, 38.815037>,  <29.022655, 29.335094, 39.003567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.098173, 29.207214, 38.815037>,  <29.224037, 28.994081, 38.500820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098173, 29.207214, 38.815037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711870, 0.414958, -0.566614,
		-0.627878, -0.737494, 0.248739,
		-0.314658, 0.532835, 0.785543,
		29.003777, 29.367065, 39.050701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.466949, 28.810192, 38.634933>,  <29.224037, 28.994081, 38.500820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.466949, 28.810192, 38.634933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.549969, 29.172657, 38.782333>,  <28.599781, 29.390137, 38.870773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.549969, 29.172657, 38.782333>,  <28.466949, 28.810192, 38.634933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549969, 29.172657, 38.782333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813170, 0.369218, -0.449926,
		-0.543763, -0.206271, 0.813495,
		0.207550, 0.906163, 0.368501,
		28.612234, 29.444506, 38.892883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845936, 29.042868, 38.587723>,  <28.466949, 28.810192, 38.634933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845936, 29.042868, 38.587723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.062407, 29.374674, 38.642910>,  <28.192289, 29.573757, 38.676022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.062407, 29.374674, 38.642910>,  <27.845936, 29.042868, 38.587723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.062407, 29.374674, 38.642910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736990, 0.546879, -0.397202,
		-0.404938, 0.113273, 0.907301,
		0.541176, 0.829513, 0.137971,
		28.224760, 29.623528, 38.684299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350765, 29.575974, 38.549328>,  <27.845936, 29.042868, 38.587723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350765, 29.575974, 38.549328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.687756, 29.790947, 38.534340>,  <27.889950, 29.919931, 38.525349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.687756, 29.790947, 38.534340>,  <27.350765, 29.575974, 38.549328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.687756, 29.790947, 38.534340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515901, 0.784775, -0.343473,
		-0.155187, 0.308698, 0.938415,
		0.842474, 0.537432, -0.037471,
		27.940498, 29.952177, 38.523098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218822, 30.248156, 38.908295>,  <27.350765, 29.575974, 38.549328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218822, 30.248156, 38.908295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.517349, 30.276812, 38.643604>,  <27.696465, 30.294004, 38.484791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.517349, 30.276812, 38.643604>,  <27.218822, 30.248156, 38.908295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517349, 30.276812, 38.643604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476966, 0.750992, -0.456633,
		0.464239, 0.656413, 0.594646,
		0.746315, 0.071639, -0.661727,
		27.741243, 30.298304, 38.445087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507465, 30.961214, 38.848892>,  <27.218822, 30.248156, 38.908295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507465, 30.961214, 38.848892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.621778, 30.770636, 38.516308>,  <27.690367, 30.656288, 38.316757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.621778, 30.770636, 38.516308>,  <27.507465, 30.961214, 38.848892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.621778, 30.770636, 38.516308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317840, 0.771407, -0.551279,
		0.904050, 0.421818, 0.069021,
		0.285782, -0.476446, -0.831461,
		27.707514, 30.627703, 38.266869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.666098, 31.499260, 38.409027>,  <27.507465, 30.961214, 38.848892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.666098, 31.499260, 38.409027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.616833, 31.199921, 38.148319>,  <27.587273, 31.020317, 37.991894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.616833, 31.199921, 38.148319>,  <27.666098, 31.499260, 38.409027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616833, 31.199921, 38.148319> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312999, 0.652544, -0.690086,
		0.941734, 0.119011, -0.314601,
		-0.123164, -0.748347, -0.651773,
		27.579884, 30.975416, 37.952785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935228, 31.749802, 37.812565>,  <27.666098, 31.499260, 38.409027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.935228, 31.749802, 37.812565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.733446, 31.422821, 37.701359>,  <27.612377, 31.226633, 37.634636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.733446, 31.422821, 37.701359>,  <27.935228, 31.749802, 37.812565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733446, 31.422821, 37.701359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233745, 0.439255, -0.867420,
		0.831196, -0.372592, -0.412661,
		-0.504457, -0.817454, -0.278015,
		27.582109, 31.177586, 37.617954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182327, 31.585346, 37.086563>,  <27.935228, 31.749802, 37.812565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.182327, 31.585346, 37.086563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.811171, 31.450602, 37.150490>,  <27.588476, 31.369755, 37.188847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.811171, 31.450602, 37.150490>,  <28.182327, 31.585346, 37.086563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.811171, 31.450602, 37.150490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337480, 0.576585, -0.744081,
		0.158506, -0.744361, -0.648693,
		-0.927892, -0.336862, 0.159815,
		27.532803, 31.349543, 37.198433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047659, 31.258003, 36.427692>,  <28.182327, 31.585346, 37.086563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047659, 31.258003, 36.427692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.699133, 31.335337, 36.608105>,  <27.490017, 31.381737, 36.716354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.699133, 31.335337, 36.608105>,  <28.047659, 31.258003, 36.427692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699133, 31.335337, 36.608105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344404, 0.413810, -0.842702,
		-0.349568, -0.889597, -0.293972,
		-0.871314, 0.193336, 0.451035,
		27.437738, 31.393337, 36.743416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.551323, 31.149435, 35.917404>,  <28.047659, 31.258003, 36.427692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.551323, 31.149435, 35.917404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.391647, 31.379345, 36.203140>,  <27.295843, 31.517290, 36.374584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.391647, 31.379345, 36.203140>,  <27.551323, 31.149435, 35.917404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.391647, 31.379345, 36.203140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288230, 0.660945, -0.692875,
		-0.870387, -0.482482, -0.098174,
		-0.399187, 0.574773, 0.714343,
		27.271891, 31.551777, 36.417442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.898872, 31.178009, 35.628174>,  <27.551323, 31.149435, 35.917404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.898872, 31.178009, 35.628174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.912893, 31.478243, 35.892113>,  <26.921307, 31.658382, 36.050476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.912893, 31.478243, 35.892113>,  <26.898872, 31.178009, 35.628174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.912893, 31.478243, 35.892113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422011, 0.609614, -0.671027,
		-0.905913, -0.254941, 0.338123,
		0.035052, 0.750584, 0.659845,
		26.923409, 31.703419, 36.090065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.227278, 31.595871, 35.519745>,  <26.898872, 31.178009, 35.628174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.227278, 31.595871, 35.519745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.504097, 31.813305, 35.709728>,  <26.670189, 31.943766, 35.823719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.504097, 31.813305, 35.709728>,  <26.227278, 31.595871, 35.519745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.504097, 31.813305, 35.709728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252372, 0.798651, -0.546319,
		-0.676298, 0.258211, 0.689890,
		0.692047, 0.543583, 0.474961,
		26.711712, 31.976379, 35.852215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.881992, 32.119289, 35.781948>,  <26.227278, 31.595871, 35.519745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.881992, 32.119289, 35.781948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.264734, 32.228836, 35.743111>,  <26.494379, 32.294563, 35.719807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.264734, 32.228836, 35.743111>,  <25.881992, 32.119289, 35.781948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.264734, 32.228836, 35.743111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280163, 0.780909, -0.558292,
		-0.077076, 0.561406, 0.823943,
		0.956853, 0.273870, -0.097096,
		26.551790, 32.310997, 35.713982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.919607, 32.846531, 35.992569>,  <25.881992, 32.119289, 35.781948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.919607, 32.846531, 35.992569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.243616, 32.801941, 35.762287>,  <26.438021, 32.775188, 35.624119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.243616, 32.801941, 35.762287>,  <25.919607, 32.846531, 35.992569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243616, 32.801941, 35.762287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297240, 0.768241, -0.566969,
		0.505483, 0.630381, 0.589158,
		0.810022, -0.111472, -0.575707,
		26.486622, 32.768497, 35.589577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.075390, 33.479927, 35.887100>,  <25.919607, 32.846531, 35.992569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.075390, 33.479927, 35.887100> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.257149, 33.269802, 35.599331>,  <26.366203, 33.143726, 35.426670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.257149, 33.269802, 35.599331>,  <26.075390, 33.479927, 35.887100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257149, 33.269802, 35.599331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035947, 0.796147, -0.604035,
		0.890074, 0.300333, 0.342883,
		0.454397, -0.525310, -0.719425,
		26.393467, 33.112209, 35.383503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635206, 33.851562, 35.591579>,  <26.075390, 33.479927, 35.887100>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635206, 33.851562, 35.591579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.522554, 33.592266, 35.308605>,  <26.454964, 33.436687, 35.138821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.522554, 33.592266, 35.308605>,  <26.635206, 33.851562, 35.591579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.522554, 33.592266, 35.308605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205832, 0.760933, -0.615316,
		0.937186, -0.027677, -0.347730,
		-0.281629, -0.648240, -0.707439,
		26.438066, 33.397793, 35.096375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.785404, 34.240356, 34.991592>,  <26.635206, 33.851562, 35.591579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.785404, 34.240356, 34.991592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.577099, 33.936176, 34.836403>,  <26.452116, 33.753670, 34.743290>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.577099, 33.936176, 34.836403>,  <26.785404, 34.240356, 34.991592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.577099, 33.936176, 34.836403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238246, 0.565860, -0.789329,
		0.819784, -0.318619, -0.475853,
		-0.520762, -0.760450, -0.387974,
		26.420870, 33.708042, 34.720013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.030783, 34.197266, 34.338547>,  <26.785404, 34.240356, 34.991592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.030783, 34.197266, 34.338547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.656347, 34.058483, 34.361732>,  <26.431686, 33.975212, 34.375645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.656347, 34.058483, 34.361732>,  <27.030783, 34.197266, 34.338547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.656347, 34.058483, 34.361732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275035, 0.619178, -0.735510,
		0.219301, -0.704444, -0.675030,
		-0.936089, -0.346955, 0.057960,
		26.375521, 33.954395, 34.379120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814445, 34.164005, 34.170891>,  <27.030783, 34.197266, 34.338547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814445, 34.164005, 34.170891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.077892, 34.460171, 34.117210>,  <28.235960, 34.637871, 34.085003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.077892, 34.460171, 34.117210>,  <27.814445, 34.164005, 34.170891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.077892, 34.460171, 34.117210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365144, -0.158533, 0.917353,
		0.657946, -0.653187, -0.374771,
		0.658617, 0.740414, -0.134202,
		28.275478, 34.682297, 34.076950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479931, 33.923779, 34.348316>,  <27.814445, 34.164005, 34.170891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.479931, 33.923779, 34.348316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.449276, 34.312958, 34.435497>,  <28.430883, 34.546463, 34.487804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.449276, 34.312958, 34.435497>,  <28.479931, 33.923779, 34.348316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449276, 34.312958, 34.435497> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222319, -0.196418, 0.954984,
		0.971957, 0.121645, -0.201251,
		-0.076640, 0.972945, 0.217954,
		28.426285, 34.604843, 34.500885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120510, 34.073341, 34.702789>,  <28.479931, 33.923779, 34.348316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120510, 34.073341, 34.702789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.849422, 34.351616, 34.798054>,  <28.686769, 34.518581, 34.855213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.849422, 34.351616, 34.798054>,  <29.120510, 34.073341, 34.702789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.849422, 34.351616, 34.798054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203477, -0.133811, 0.969893,
		0.706609, 0.705773, -0.050871,
		-0.677717, 0.695686, 0.238161,
		28.646107, 34.560322, 34.869503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.408667, 34.403751, 35.260597>,  <29.120510, 34.073341, 34.702789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.408667, 34.403751, 35.260597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.029213, 34.528934, 35.279160>,  <28.801540, 34.604046, 35.290295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.029213, 34.528934, 35.279160>,  <29.408667, 34.403751, 35.260597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029213, 34.528934, 35.279160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034221, -0.044306, 0.998432,
		0.314522, 0.948733, 0.031320,
		-0.948633, 0.312957, 0.046402,
		28.744623, 34.622822, 35.293079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459003, 34.897430, 35.819969>,  <29.408667, 34.403751, 35.260597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459003, 34.897430, 35.819969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.068743, 34.830177, 35.763630>,  <28.834587, 34.789825, 35.729828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.068743, 34.830177, 35.763630>,  <29.459003, 34.897430, 35.819969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.068743, 34.830177, 35.763630> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157107, 0.087619, 0.983687,
		-0.153053, 0.981862, -0.111901,
		-0.975650, -0.168137, -0.140847,
		28.776049, 34.779736, 35.721375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.145336, 35.437931, 36.126842>,  <29.459003, 34.897430, 35.819969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.145336, 35.437931, 36.126842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.902023, 35.120647, 36.115471>,  <28.756035, 34.930279, 36.108646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.902023, 35.120647, 36.115471>,  <29.145336, 35.437931, 36.126842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.902023, 35.120647, 36.115471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078264, 0.024297, 0.996637,
		-0.789851, 0.608463, -0.076859,
		-0.608284, -0.793210, -0.028430,
		28.719538, 34.882683, 36.106941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.638241, 35.579971, 36.578938>,  <29.145336, 35.437931, 36.126842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.638241, 35.579971, 36.578938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.590853, 35.183872, 36.549629>,  <28.562420, 34.946213, 36.532043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.590853, 35.183872, 36.549629>,  <28.638241, 35.579971, 36.578938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.590853, 35.183872, 36.549629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066750, -0.065680, 0.995606,
		-0.990711, 0.122841, -0.058318,
		-0.118471, -0.990250, -0.073270,
		28.555311, 34.886799, 36.527649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.020897, 35.415924, 36.927464>,  <28.638241, 35.579971, 36.578938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.020897, 35.415924, 36.927464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.245106, 35.086292, 36.894684>,  <28.379631, 34.888515, 36.875015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.245106, 35.086292, 36.894684>,  <28.020897, 35.415924, 36.927464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245106, 35.086292, 36.894684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085850, -0.156249, 0.983980,
		-0.823678, -0.544505, -0.158328,
		0.560521, -0.824075, -0.081954,
		28.413261, 34.839069, 36.870098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628317, 35.033581, 37.427818>,  <28.020897, 35.415924, 36.927464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628317, 35.033581, 37.427818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.966106, 34.831284, 37.357285>,  <28.168779, 34.709908, 37.314964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.966106, 34.831284, 37.357285>,  <27.628317, 35.033581, 37.427818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966106, 34.831284, 37.357285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145108, -0.100877, 0.984260,
		-0.515566, -0.856768, -0.011801,
		0.844473, -0.505739, -0.176332,
		28.219448, 34.679562, 37.304386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615191, 34.438519, 37.881340>,  <27.628317, 35.033581, 37.427818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615191, 34.438519, 37.881340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.003811, 34.495426, 37.805603>,  <28.236982, 34.529572, 37.760162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.003811, 34.495426, 37.805603>,  <27.615191, 34.438519, 37.881340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003811, 34.495426, 37.805603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207339, -0.124534, 0.970310,
		0.114467, -0.981962, -0.150489,
		0.971549, 0.142271, -0.189344,
		28.295275, 34.538109, 37.748798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069195, 33.840073, 38.050644>,  <27.615191, 34.438519, 37.881340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069195, 33.840073, 38.050644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.306259, 34.160336, 38.085743>,  <28.448498, 34.352493, 38.106804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.306259, 34.160336, 38.085743>,  <28.069195, 33.840073, 38.050644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.306259, 34.160336, 38.085743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297895, -0.319109, 0.899682,
		0.748341, -0.507064, -0.427635,
		0.592659, 0.800659, 0.087750,
		28.484056, 34.400532, 38.112068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541824, 33.665417, 38.502819>,  <28.069195, 33.840073, 38.050644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541824, 33.665417, 38.502819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.606882, 34.059784, 38.487274>,  <28.645916, 34.296406, 38.477947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.606882, 34.059784, 38.487274>,  <28.541824, 33.665417, 38.502819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.606882, 34.059784, 38.487274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590079, -0.065622, 0.804674,
		0.790793, -0.153809, -0.592444,
		0.162644, 0.985919, -0.038866,
		28.655676, 34.355560, 38.475613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.246937, 33.683723, 38.700886>,  <28.541824, 33.665417, 38.502819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.246937, 33.683723, 38.700886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.094687, 34.049465, 38.756142>,  <29.003336, 34.268909, 38.789295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.094687, 34.049465, 38.756142>,  <29.246937, 33.683723, 38.700886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.094687, 34.049465, 38.756142> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454201, 0.054732, 0.889216,
		0.805496, 0.401204, -0.436132,
		-0.380627, 0.914352, 0.138141,
		28.980499, 34.323772, 38.797585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737986, 34.019112, 38.802334>,  <29.246937, 33.683723, 38.700886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737986, 34.019112, 38.802334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.453466, 34.259262, 38.948536>,  <29.282755, 34.403355, 39.036259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.453466, 34.259262, 38.948536>,  <29.737986, 34.019112, 38.802334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.453466, 34.259262, 38.948536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499218, 0.065445, 0.864002,
		0.494809, 0.797032, -0.346271,
		-0.711299, 0.600380, 0.365510,
		29.240076, 34.439377, 39.058189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132429, 34.496941, 39.131165>,  <29.737986, 34.019112, 38.802334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132429, 34.496941, 39.131165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.761255, 34.494740, 39.280247>,  <29.538551, 34.493420, 39.369698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.761255, 34.494740, 39.280247>,  <30.132429, 34.496941, 39.131165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761255, 34.494740, 39.280247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367351, -0.183028, 0.911896,
		0.063197, 0.983092, 0.171859,
		-0.927933, -0.005503, 0.372707,
		29.482876, 34.493088, 39.392059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263958, 34.648289, 39.841125>,  <30.132429, 34.496941, 39.131165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263958, 34.648289, 39.841125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.888441, 34.511051, 39.853485>,  <29.663130, 34.428711, 39.860901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.888441, 34.511051, 39.853485>,  <30.263958, 34.648289, 39.841125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.888441, 34.511051, 39.853485> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151717, -0.331268, 0.931259,
		-0.309271, 0.878948, 0.363045,
		-0.938794, -0.343091, 0.030900,
		29.606804, 34.408123, 39.862755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955944, 34.806038, 40.496307>,  <30.263958, 34.648289, 39.841125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955944, 34.806038, 40.496307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.744144, 34.497807, 40.354412>,  <29.617064, 34.312866, 40.269276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.744144, 34.497807, 40.354412>,  <29.955944, 34.806038, 40.496307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744144, 34.497807, 40.354412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062465, -0.452448, 0.889601,
		-0.846006, 0.448886, 0.287706,
		-0.529501, -0.770579, -0.354734,
		29.585295, 34.266632, 40.247993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365484, 34.670914, 40.943367>,  <29.955944, 34.806038, 40.496307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365484, 34.670914, 40.943367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.411833, 34.324074, 40.749580>,  <29.439642, 34.115971, 40.633308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.411833, 34.324074, 40.749580>,  <29.365484, 34.670914, 40.943367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.411833, 34.324074, 40.749580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146063, -0.497321, 0.855183,
		-0.982466, -0.028329, -0.184277,
		0.115872, -0.867104, -0.484463,
		29.446594, 34.063942, 40.604240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976028, 34.260513, 41.324848>,  <29.365484, 34.670914, 40.943367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976028, 34.260513, 41.324848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.196493, 33.992607, 41.125797>,  <29.328772, 33.831863, 41.006367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.196493, 33.992607, 41.125797>,  <28.976028, 34.260513, 41.324848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196493, 33.992607, 41.125797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225230, -0.693676, 0.684167,
		-0.803427, -0.265004, -0.533178,
		0.551160, -0.669766, -0.497632,
		29.361841, 33.791676, 40.976509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.599987, 33.608398, 41.432259>,  <28.976028, 34.260513, 41.324848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.599987, 33.608398, 41.432259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.970533, 33.503445, 41.324184>,  <29.192862, 33.440472, 41.259338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.970533, 33.503445, 41.324184>,  <28.599987, 33.608398, 41.432259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970533, 33.503445, 41.324184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039733, -0.781479, 0.622666,
		-0.374522, -0.566081, -0.734361,
		0.926366, -0.262380, -0.270189,
		29.248444, 33.424732, 41.243126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603317, 32.910332, 41.450710>,  <28.599987, 33.608398, 41.432259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603317, 32.910332, 41.450710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.995567, 32.988575, 41.454941>,  <29.230917, 33.035519, 41.457478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.995567, 32.988575, 41.454941>,  <28.603317, 32.910332, 41.450710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.995567, 32.988575, 41.454941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165448, -0.855918, 0.489929,
		0.104882, -0.478688, -0.871698,
		0.980626, 0.195606, 0.010573,
		29.289755, 33.047256, 41.458111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.384464, 30.413267, 44.723854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.018074, 30.345503, 44.578362>,  <38.798241, 30.304844, 44.491066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.018074, 30.345503, 44.578362>,  <39.384464, 30.413267, 44.723854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018074, 30.345503, 44.578362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335096, -0.175627, 0.925671,
		-0.220699, 0.969771, 0.104100,
		-0.915971, -0.169411, -0.363727,
		38.743282, 30.294680, 44.469242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977036, 30.743837, 45.083099>,  <39.384464, 30.413267, 44.723854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977036, 30.743837, 45.083099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.741020, 30.472775, 44.907539>,  <38.599411, 30.310137, 44.802204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.741020, 30.472775, 44.907539>,  <38.977036, 30.743837, 45.083099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741020, 30.472775, 44.907539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321436, -0.301509, 0.897648,
		-0.740628, 0.670728, -0.039920,
		-0.590042, -0.677655, -0.438902,
		38.564007, 30.269478, 44.775867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274361, 30.797646, 45.390060>,  <38.977036, 30.743837, 45.083099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274361, 30.797646, 45.390060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.276878, 30.435642, 45.219921>,  <38.278389, 30.218441, 45.117836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.276878, 30.435642, 45.219921>,  <38.274361, 30.797646, 45.390060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276878, 30.435642, 45.219921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329940, -0.403417, 0.853460,
		-0.943981, 0.134971, -0.301136,
		0.006292, -0.905007, -0.425350,
		38.278767, 30.164141, 45.092316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598705, 30.397369, 45.515018>,  <38.274361, 30.797646, 45.390060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598705, 30.397369, 45.515018> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.852863, 30.096590, 45.444775>,  <38.005360, 29.916122, 45.402630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.852863, 30.096590, 45.444775>,  <37.598705, 30.397369, 45.515018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852863, 30.096590, 45.444775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333296, -0.472214, 0.816044,
		-0.696551, -0.459982, -0.550667,
		0.635398, -0.751951, -0.175611,
		38.043484, 29.871004, 45.392090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256062, 29.841703, 45.758259>,  <37.598705, 30.397369, 45.515018>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256062, 29.841703, 45.758259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.617146, 29.671148, 45.735245>,  <37.833794, 29.568815, 45.721436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.617146, 29.671148, 45.735245>,  <37.256062, 29.841703, 45.758259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617146, 29.671148, 45.735245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172453, -0.481081, 0.859547,
		-0.394178, -0.765999, -0.507808,
		0.902709, -0.426388, -0.057533,
		37.887959, 29.543232, 45.717983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.257198, 29.008579, 45.792385>,  <37.256062, 29.841703, 45.758259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.257198, 29.008579, 45.792385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.622307, 29.121750, 45.910236>,  <37.841373, 29.189651, 45.980946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.622307, 29.121750, 45.910236>,  <37.257198, 29.008579, 45.792385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622307, 29.121750, 45.910236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080822, -0.581926, 0.809216,
		0.400399, -0.762440, -0.508298,
		0.912770, 0.282928, 0.294625,
		37.896137, 29.206629, 45.998623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720230, 28.441696, 45.948959>,  <37.257198, 29.008579, 45.792385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720230, 28.441696, 45.948959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.909901, 28.697620, 46.190884>,  <38.023701, 28.851175, 46.336040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.909901, 28.697620, 46.190884>,  <37.720230, 28.441696, 45.948959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909901, 28.697620, 46.190884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017645, -0.679908, 0.733085,
		0.880256, -0.358280, -0.311104,
		0.474171, 0.639813, 0.604815,
		38.052151, 28.889565, 46.372330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.218174, 28.097889, 46.292286>,  <37.720230, 28.441696, 45.948959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.218174, 28.097889, 46.292286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.203976, 28.436430, 46.504860>,  <38.195457, 28.639555, 46.632404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.203976, 28.436430, 46.504860>,  <38.218174, 28.097889, 46.292286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203976, 28.436430, 46.504860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117398, -0.524559, 0.843241,
		0.992450, 0.092319, -0.080743,
		-0.035493, 0.846354, 0.531437,
		38.193329, 28.690336, 46.664291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678936, 27.887308, 46.849743>,  <38.218174, 28.097889, 46.292286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678936, 27.887308, 46.849743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.500648, 28.223814, 46.972126>,  <38.393677, 28.425718, 47.045555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.500648, 28.223814, 46.972126>,  <38.678936, 27.887308, 46.849743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.500648, 28.223814, 46.972126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039199, -0.323121, 0.945546,
		0.894316, 0.433437, 0.111043,
		-0.445715, 0.841264, 0.305963,
		38.366936, 28.476192, 47.063915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143192, 28.257200, 47.232079>,  <38.678936, 27.887308, 46.849743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143192, 28.257200, 47.232079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.772720, 28.348173, 47.352386>,  <38.550438, 28.402756, 47.424572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.772720, 28.348173, 47.352386>,  <39.143192, 28.257200, 47.232079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772720, 28.348173, 47.352386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205386, -0.364668, 0.908204,
		0.316235, 0.902936, 0.291037,
		-0.926181, 0.227431, 0.300771,
		38.494865, 28.416403, 47.442619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181248, 28.596586, 47.973843>,  <39.143192, 28.257200, 47.232079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181248, 28.596586, 47.973843> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.800991, 28.480314, 47.930420>,  <38.572838, 28.410551, 47.904366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.800991, 28.480314, 47.930420>,  <39.181248, 28.596586, 47.973843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800991, 28.480314, 47.930420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007166, -0.329196, 0.944234,
		-0.310206, 0.898407, 0.310865,
		-0.950642, -0.290680, -0.108557,
		38.515797, 28.393110, 47.897854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876011, 28.839981, 48.567844>,  <39.181248, 28.596586, 47.973843>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876011, 28.839981, 48.567844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.615196, 28.578278, 48.414593>,  <38.458706, 28.421255, 48.322643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.615196, 28.578278, 48.414593>,  <38.876011, 28.839981, 48.567844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615196, 28.578278, 48.414593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206202, -0.333249, 0.920014,
		-0.729605, 0.678889, 0.082383,
		-0.652041, -0.654259, -0.383128,
		38.419582, 28.382000, 48.299656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.227917, 28.978374, 48.912891>,  <38.876011, 28.839981, 48.567844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.227917, 28.978374, 48.912891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.263039, 28.593552, 48.809555>,  <38.284111, 28.362658, 48.747555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.263039, 28.593552, 48.809555>,  <38.227917, 28.978374, 48.912891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263039, 28.593552, 48.809555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254486, -0.272402, 0.927919,
		-0.963082, -0.015734, -0.268748,
		0.087808, -0.962055, -0.258341,
		38.289379, 28.304935, 48.732052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578358, 28.539650, 48.995640>,  <38.227917, 28.978374, 48.912891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578358, 28.539650, 48.995640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.911194, 28.321354, 49.035225>,  <38.110897, 28.190376, 49.058975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.911194, 28.321354, 49.035225>,  <37.578358, 28.539650, 48.995640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911194, 28.321354, 49.035225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199107, -0.127377, 0.971664,
		-0.517669, -0.828218, -0.214650,
		0.832091, -0.545739, 0.098965,
		38.160820, 28.157633, 49.064915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043934, 28.996883, 49.052990>,  <37.578358, 28.539650, 48.995640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043934, 28.996883, 49.052990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.815689, 29.264956, 49.242836>,  <36.678741, 29.425798, 49.356743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.815689, 29.264956, 49.242836>,  <37.043934, 28.996883, 49.052990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815689, 29.264956, 49.242836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135283, 0.493331, -0.859257,
		-0.810000, -0.554510, -0.190837,
		-0.570613, 0.670181, 0.474614,
		36.644505, 29.466009, 49.385220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.351902, 29.024723, 48.664139>,  <37.043934, 28.996883, 49.052990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.351902, 29.024723, 48.664139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.425716, 29.351995, 48.881958>,  <36.470005, 29.548359, 49.012650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.425716, 29.351995, 48.881958>,  <36.351902, 29.024723, 48.664139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425716, 29.351995, 48.881958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281636, 0.574847, -0.768266,
		-0.941608, -0.011587, 0.336511,
		0.184540, 0.818179, 0.544544,
		36.481079, 29.597448, 49.045322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791573, 29.458643, 48.536400>,  <36.351902, 29.024723, 48.664139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791573, 29.458643, 48.536400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.107800, 29.674959, 48.651325>,  <36.297535, 29.804749, 48.720280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.107800, 29.674959, 48.651325>,  <35.791573, 29.458643, 48.536400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107800, 29.674959, 48.651325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130030, 0.606725, -0.784205,
		-0.598411, 0.582608, 0.549975,
		0.790567, 0.540790, 0.287314,
		36.344971, 29.837196, 48.737518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542175, 30.061834, 48.484623>,  <35.791573, 29.458643, 48.536400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542175, 30.061834, 48.484623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931767, 30.147972, 48.512867>,  <36.165524, 30.199654, 48.529812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.931767, 30.147972, 48.512867>,  <35.542175, 30.061834, 48.484623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931767, 30.147972, 48.512867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068857, 0.578039, -0.813099,
		-0.215910, 0.787082, 0.577827,
		0.973982, 0.215343, 0.070609,
		36.223961, 30.212576, 48.534050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564735, 30.789116, 48.598377>,  <35.542175, 30.061834, 48.484623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564735, 30.789116, 48.598377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.929634, 30.710827, 48.454433>,  <36.148575, 30.663855, 48.368069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.929634, 30.710827, 48.454433>,  <35.564735, 30.789116, 48.598377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929634, 30.710827, 48.454433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128136, 0.698051, -0.704490,
		0.389082, 0.688781, 0.611716,
		0.912248, -0.195722, -0.359856,
		36.203308, 30.652111, 48.346478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857632, 31.377775, 48.421936>,  <35.564735, 30.789116, 48.598377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857632, 31.377775, 48.421936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129517, 31.146481, 48.241436>,  <36.292648, 31.007704, 48.133137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.129517, 31.146481, 48.241436>,  <35.857632, 31.377775, 48.421936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129517, 31.146481, 48.241436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048119, 0.649051, -0.759222,
		0.731895, 0.494342, 0.468995,
		0.679717, -0.578238, -0.451250,
		36.333431, 30.973009, 48.106060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494930, 31.846138, 48.348030>,  <35.857632, 31.377775, 48.421936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494930, 31.846138, 48.348030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.496758, 31.547022, 48.082462>,  <36.497852, 31.367552, 47.923122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.496758, 31.547022, 48.082462>,  <36.494930, 31.846138, 48.348030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496758, 31.547022, 48.082462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007343, 0.663931, -0.747758,
		0.999963, -0.001459, 0.008525,
		0.004569, -0.747792, -0.663917,
		36.498127, 31.322683, 47.883286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985981, 31.999805, 47.919777>,  <36.494930, 31.846138, 48.348030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985981, 31.999805, 47.919777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.799706, 31.723690, 47.698277>,  <36.687939, 31.558022, 47.565376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.799706, 31.723690, 47.698277>,  <36.985981, 31.999805, 47.919777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799706, 31.723690, 47.698277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167258, 0.545805, -0.821049,
		0.869000, -0.474971, -0.138718,
		-0.465687, -0.690290, -0.553747,
		36.660000, 31.516603, 47.532154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445175, 31.852571, 47.477394>,  <36.985981, 31.999805, 47.919777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445175, 31.852571, 47.477394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.095840, 31.744665, 47.315155>,  <36.886238, 31.679920, 47.217812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.095840, 31.744665, 47.315155>,  <37.445175, 31.852571, 47.477394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095840, 31.744665, 47.315155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166208, 0.617652, -0.768688,
		0.457884, -0.738737, -0.494581,
		-0.873337, -0.269767, -0.405597,
		36.833839, 31.663734, 47.193478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618744, 31.890705, 46.749832>,  <37.445175, 31.852571, 47.477394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618744, 31.890705, 46.749832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.219357, 31.871387, 46.739075>,  <36.979725, 31.859797, 46.732620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.219357, 31.871387, 46.739075>,  <37.618744, 31.890705, 46.749832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219357, 31.871387, 46.739075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003701, 0.427075, -0.904209,
		0.055157, -0.902926, -0.426243,
		-0.998471, -0.048296, -0.026898,
		36.919815, 31.856899, 46.731007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.338055, 31.581350, 46.080181>,  <37.618744, 31.890705, 46.749832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.338055, 31.581350, 46.080181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.034992, 31.804304, 46.215988>,  <36.853153, 31.938076, 46.297474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.034992, 31.804304, 46.215988>,  <37.338055, 31.581350, 46.080181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034992, 31.804304, 46.215988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075525, 0.441846, -0.893906,
		-0.648267, -0.702918, -0.292671,
		-0.757658, 0.557386, 0.339522,
		36.807693, 31.971519, 46.317844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784920, 31.559299, 45.569534>,  <37.338055, 31.581350, 46.080181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784920, 31.559299, 45.569534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.711594, 31.900238, 45.765453>,  <36.667599, 32.104801, 45.883003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.711594, 31.900238, 45.765453>,  <36.784920, 31.559299, 45.569534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711594, 31.900238, 45.765453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086289, 0.482362, -0.871712,
		-0.979259, -0.202065, -0.014878,
		-0.183319, 0.852348, 0.489794,
		36.656597, 32.155941, 45.912392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088722, 31.753906, 45.494892>,  <36.784920, 31.559299, 45.569534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088722, 31.753906, 45.494892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.282059, 32.089149, 45.596050>,  <36.398060, 32.290295, 45.656746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.282059, 32.089149, 45.596050>,  <36.088722, 31.753906, 45.494892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282059, 32.089149, 45.596050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353384, 0.451090, -0.819535,
		-0.800935, 0.306750, 0.514205,
		0.483345, 0.838107, 0.252893,
		36.427063, 32.340580, 45.671917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589558, 32.111134, 45.154034>,  <36.088722, 31.753906, 45.494892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589558, 32.111134, 45.154034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.930290, 32.316700, 45.194565>,  <36.134731, 32.440041, 45.218884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.930290, 32.316700, 45.194565>,  <35.589558, 32.111134, 45.154034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930290, 32.316700, 45.194565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212033, 0.515182, -0.830439,
		-0.478978, 0.685913, 0.547817,
		0.851835, 0.513917, 0.101325,
		36.185841, 32.470875, 45.224964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043987, 32.691582, 45.226524>,  <35.589558, 32.111134, 45.154034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043987, 32.691582, 45.226524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.648865, 32.702629, 45.165230>,  <34.411793, 32.709259, 45.128452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.648865, 32.702629, 45.165230>,  <35.043987, 32.691582, 45.226524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648865, 32.702629, 45.165230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155307, -0.245578, 0.956855,
		-0.011201, 0.968983, 0.246873,
		-0.987803, 0.027623, -0.153240,
		34.352524, 32.710915, 45.119259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877018, 32.968300, 45.838333>,  <35.043987, 32.691582, 45.226524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877018, 32.968300, 45.838333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.534763, 32.815830, 45.698280>,  <34.329411, 32.724346, 45.614246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.534763, 32.815830, 45.698280>,  <34.877018, 32.968300, 45.838333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534763, 32.815830, 45.698280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268412, -0.251629, 0.929859,
		-0.442547, 0.889599, 0.112989,
		-0.855633, -0.381179, -0.350136,
		34.278072, 32.701477, 45.593239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424007, 33.230904, 46.327068>,  <34.877018, 32.968300, 45.838333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424007, 33.230904, 46.327068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292671, 32.900490, 46.143829>,  <34.213871, 32.702240, 46.033886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.292671, 32.900490, 46.143829>,  <34.424007, 33.230904, 46.327068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292671, 32.900490, 46.143829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347829, -0.345165, 0.871708,
		-0.878184, 0.445556, -0.173989,
		-0.328340, -0.826039, -0.458097,
		34.194168, 32.652679, 46.006401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801601, 33.050625, 46.698097>,  <34.424007, 33.230904, 46.327068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801601, 33.050625, 46.698097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.881786, 32.709167, 46.505802>,  <33.929897, 32.504292, 46.390427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.881786, 32.709167, 46.505802>,  <33.801601, 33.050625, 46.698097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881786, 32.709167, 46.505802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459762, -0.515280, 0.723260,
		-0.865120, 0.076039, -0.495767,
		0.200463, -0.853642, -0.480739,
		33.941925, 32.453075, 46.361580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126431, 32.712559, 46.795784>,  <33.801601, 33.050625, 46.698097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126431, 32.712559, 46.795784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.405651, 32.443180, 46.698463>,  <33.573181, 32.281551, 46.640072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.405651, 32.443180, 46.698463>,  <33.126431, 32.712559, 46.795784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405651, 32.443180, 46.698463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389721, -0.642364, 0.659914,
		-0.600704, -0.365835, -0.710858,
		0.698049, -0.673449, -0.243297,
		33.615067, 32.241146, 46.625473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811729, 32.068356, 47.119232>,  <33.126431, 32.712559, 46.795784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811729, 32.068356, 47.119232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.191990, 31.980501, 47.031578>,  <33.420147, 31.927790, 46.978985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.191990, 31.980501, 47.031578>,  <32.811729, 32.068356, 47.119232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191990, 31.980501, 47.031578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066994, -0.834957, 0.546222,
		-0.302933, -0.504587, -0.808470,
		0.950654, -0.219632, -0.219132,
		33.477184, 31.914612, 46.965839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984802, 31.297045, 46.852798>,  <32.811729, 32.068356, 47.119232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984802, 31.297045, 46.852798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.276993, 31.459635, 47.072319>,  <33.452309, 31.557188, 47.204033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.276993, 31.459635, 47.072319>,  <32.984802, 31.297045, 46.852798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276993, 31.459635, 47.072319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135504, -0.701348, 0.699821,
		0.669362, -0.585567, -0.457238,
		0.730475, 0.406476, 0.548802,
		33.496136, 31.581577, 47.236961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039257, 30.628807, 46.657104>,  <32.984802, 31.297045, 46.852798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039257, 30.628807, 46.657104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.883259, 30.300430, 46.490273>,  <32.789658, 30.103405, 46.390171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.883259, 30.300430, 46.490273>,  <33.039257, 30.628807, 46.657104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883259, 30.300430, 46.490273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453666, 0.222859, -0.862856,
		0.801304, -0.525729, 0.285517,
		-0.389999, -0.820940, -0.417083,
		32.766258, 30.054148, 46.365147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565289, 30.305807, 46.353188>,  <33.039257, 30.628807, 46.657104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565289, 30.305807, 46.353188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.246162, 30.168497, 46.154934>,  <33.054688, 30.086111, 46.035980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.246162, 30.168497, 46.154934>,  <33.565289, 30.305807, 46.353188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246162, 30.168497, 46.154934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525485, 0.007087, -0.850773,
		0.295564, -0.939207, 0.174733,
		-0.797814, -0.343277, -0.495634,
		33.006817, 30.065514, 46.006245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814053, 29.787455, 45.906548>,  <33.565289, 30.305807, 46.353188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814053, 29.787455, 45.906548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.462917, 29.889404, 45.744339>,  <33.252235, 29.950575, 45.647015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.462917, 29.889404, 45.744339>,  <33.814053, 29.787455, 45.906548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462917, 29.889404, 45.744339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416244, -0.012904, -0.909161,
		-0.236957, -0.966888, -0.094764,
		-0.877834, 0.254877, -0.405519,
		33.199566, 29.965866, 45.622684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833881, 29.416914, 45.264069>,  <33.814053, 29.787455, 45.906548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833881, 29.416914, 45.264069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.524540, 29.665825, 45.215576>,  <33.338936, 29.815170, 45.186481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.524540, 29.665825, 45.215576>,  <33.833881, 29.416914, 45.264069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524540, 29.665825, 45.215576> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095567, -0.074608, -0.992623,
		-0.626730, -0.779235, -0.001771,
		-0.773354, 0.622276, -0.121229,
		33.292534, 29.852507, 45.179207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407722, 29.176981, 44.676987>,  <33.833881, 29.416914, 45.264069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407722, 29.176981, 44.676987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.318855, 29.565168, 44.714581>,  <33.265533, 29.798080, 44.737137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.318855, 29.565168, 44.714581>,  <33.407722, 29.176981, 44.676987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318855, 29.565168, 44.714581> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156408, 0.130622, -0.979017,
		-0.962381, -0.202807, -0.180809,
		-0.222170, 0.970467, 0.093988,
		33.252205, 29.856308, 44.742775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979889, 29.302322, 44.212914>,  <33.407722, 29.176981, 44.676987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979889, 29.302322, 44.212914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.123470, 29.672430, 44.261944>,  <33.209618, 29.894495, 44.291363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.123470, 29.672430, 44.261944>,  <32.979889, 29.302322, 44.212914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123470, 29.672430, 44.261944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054501, 0.110325, -0.992400,
		-0.931762, 0.362907, -0.010826,
		0.358955, 0.925271, 0.122576,
		33.231155, 29.950012, 44.298717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635391, 29.721119, 43.813000>,  <32.979889, 29.302322, 44.212914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.635391, 29.721119, 43.813000> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.980175, 29.919014, 43.857281>,  <33.187046, 30.037750, 43.883850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.980175, 29.919014, 43.857281>,  <32.635391, 29.721119, 43.813000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980175, 29.919014, 43.857281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099763, 0.048561, -0.993825,
		-0.497059, 0.867684, -0.007498,
		0.861963, 0.494738, 0.110700,
		33.238766, 30.067436, 43.890491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.538971, 27.096634, 48.204124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.780647, 27.239786, 47.919342>,  <36.925652, 27.325678, 47.748474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.780647, 27.239786, 47.919342>,  <36.538971, 27.096634, 48.204124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780647, 27.239786, 47.919342> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769758, 0.031173, -0.637575,
		-0.205983, 0.933246, 0.294316,
		0.604189, 0.357882, -0.711952,
		36.961903, 27.347151, 47.705757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157394, 27.403072, 47.683781>,  <36.538971, 27.096634, 48.204124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157394, 27.403072, 47.683781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.504974, 27.391661, 47.486153>,  <36.713524, 27.384813, 47.367577>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.504974, 27.391661, 47.486153>,  <36.157394, 27.403072, 47.683781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504974, 27.391661, 47.486153> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477401, 0.214785, -0.852030,
		0.130426, 0.976245, 0.173019,
		0.868952, -0.028527, -0.494074,
		36.765659, 27.383102, 47.337929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301311, 28.036867, 47.386845>,  <36.157394, 27.403072, 47.683781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301311, 28.036867, 47.386845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.507618, 27.773872, 47.167137>,  <36.631401, 27.616076, 47.035313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.507618, 27.773872, 47.167137>,  <36.301311, 28.036867, 47.386845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507618, 27.773872, 47.167137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537150, 0.251286, -0.805186,
		0.667421, 0.710330, -0.223563,
		0.515769, -0.657486, -0.549267,
		36.662350, 27.576626, 47.002357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451569, 28.380146, 46.745090>,  <36.301311, 28.036867, 47.386845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451569, 28.380146, 46.745090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.522461, 28.010839, 46.608753>,  <36.564995, 27.789255, 46.526951>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.522461, 28.010839, 46.608753>,  <36.451569, 28.380146, 46.745090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522461, 28.010839, 46.608753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543019, 0.197101, -0.816261,
		0.820805, 0.329747, -0.466418,
		0.177228, -0.923265, -0.340841,
		36.575630, 27.733860, 46.506500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598431, 28.486416, 46.020771>,  <36.451569, 28.380146, 46.745090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.598431, 28.486416, 46.020771> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.532139, 28.094219, 46.063042>,  <36.492363, 27.858900, 46.088406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.532139, 28.094219, 46.063042>,  <36.598431, 28.486416, 46.020771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532139, 28.094219, 46.063042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426576, -0.025344, -0.904097,
		0.889139, -0.194912, -0.414055,
		-0.165725, -0.980493, 0.105679,
		36.482422, 27.800072, 46.094746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852867, 28.176807, 45.427444>,  <36.598431, 28.486416, 46.020771>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852867, 28.176807, 45.427444> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.602367, 27.909393, 45.587879>,  <36.452068, 27.748945, 45.684139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.602367, 27.909393, 45.587879>,  <36.852867, 28.176807, 45.427444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602367, 27.909393, 45.587879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397074, -0.169229, -0.902050,
		0.670929, -0.724169, -0.159479,
		-0.626248, -0.668536, 0.401090,
		36.414494, 27.708832, 45.708206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916389, 27.734795, 44.984470>,  <36.852867, 28.176807, 45.427444>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916389, 27.734795, 44.984470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.564171, 27.630451, 45.142754>,  <36.352840, 27.567844, 45.237724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.564171, 27.630451, 45.142754>,  <36.916389, 27.734795, 44.984470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564171, 27.630451, 45.142754> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333851, -0.251231, -0.908530,
		0.336413, -0.932113, 0.134133,
		-0.880551, -0.260861, 0.395705,
		36.300007, 27.552193, 45.261463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.785591, 27.088104, 44.634430>,  <36.916389, 27.734795, 44.984470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.785591, 27.088104, 44.634430> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.449642, 27.253353, 44.775249>,  <36.248074, 27.352503, 44.859741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.449642, 27.253353, 44.775249>,  <36.785591, 27.088104, 44.634430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.449642, 27.253353, 44.775249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462679, -0.205801, -0.862308,
		-0.283787, -0.887117, 0.363990,
		-0.839877, 0.413122, 0.352046,
		36.197678, 27.377291, 44.880863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328178, 26.621283, 44.378220>,  <36.785591, 27.088104, 44.634430>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328178, 26.621283, 44.378220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.123535, 26.953871, 44.464863>,  <36.000751, 27.153423, 44.516850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.123535, 26.953871, 44.464863>,  <36.328178, 26.621283, 44.378220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123535, 26.953871, 44.464863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553578, -0.126167, -0.823185,
		-0.657125, -0.541054, 0.524831,
		-0.511604, 0.831470, 0.216608,
		35.970055, 27.203312, 44.529846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661434, 26.472786, 44.199821>,  <36.328178, 26.621283, 44.378220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661434, 26.472786, 44.199821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.654793, 26.872412, 44.215797>,  <35.650806, 27.112186, 44.225384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.654793, 26.872412, 44.215797>,  <35.661434, 26.472786, 44.199821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654793, 26.872412, 44.215797> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238040, 0.034844, -0.970630,
		-0.971113, -0.025622, 0.237239,
		-0.016603, 0.999064, 0.039936,
		35.649811, 27.172131, 44.227779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972706, 26.662630, 43.830410>,  <35.661434, 26.472786, 44.199821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972706, 26.662630, 43.830410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.228439, 26.970198, 43.831890>,  <35.381882, 27.154737, 43.832779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.228439, 26.970198, 43.831890>,  <34.972706, 26.662630, 43.830410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228439, 26.970198, 43.831890> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078777, 0.070291, -0.994411,
		-0.764881, 0.635472, 0.105512,
		0.639337, 0.768918, 0.003704,
		35.420238, 27.200872, 43.833000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676483, 27.231155, 43.319252>,  <34.972706, 26.662630, 43.830410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676483, 27.231155, 43.319252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.056274, 27.350206, 43.359070>,  <35.284149, 27.421637, 43.382961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.056274, 27.350206, 43.359070>,  <34.676483, 27.231155, 43.319252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056274, 27.350206, 43.359070> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039190, 0.202256, -0.978548,
		-0.311377, 0.933011, 0.180374,
		0.949478, 0.297629, 0.099542,
		35.341118, 27.439495, 43.388931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018097, 27.491404, 43.469158>,  <34.676483, 27.231155, 43.319252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018097, 27.491404, 43.469158> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.653519, 27.444750, 43.311344>,  <33.434772, 27.416758, 43.216656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.653519, 27.444750, 43.311344>,  <34.018097, 27.491404, 43.469158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653519, 27.444750, 43.311344> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320413, -0.400295, 0.858545,
		-0.258066, 0.908934, 0.327478,
		-0.911448, -0.116633, -0.394537,
		33.380085, 27.409760, 43.192982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.405159, 27.957901, 43.728516>,  <34.018097, 27.491404, 43.469158>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.405159, 27.957901, 43.728516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.300400, 27.590099, 43.611267>,  <33.237545, 27.369419, 43.540916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.300400, 27.590099, 43.611267>,  <33.405159, 27.957901, 43.728516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300400, 27.590099, 43.611267> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199687, -0.245525, 0.948600,
		-0.944210, 0.306972, -0.119310,
		-0.261900, -0.919503, -0.293126,
		33.221828, 27.314249, 43.523331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.824562, 27.873241, 44.099903>,  <33.405159, 27.957901, 43.728516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.824562, 27.873241, 44.099903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.994694, 27.520561, 44.018223>,  <33.096771, 27.308952, 43.969215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.994694, 27.520561, 44.018223>,  <32.824562, 27.873241, 44.099903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994694, 27.520561, 44.018223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076293, -0.259751, 0.962657,
		-0.901817, -0.393867, -0.177747,
		0.425329, -0.881702, -0.204198,
		33.122292, 27.256050, 43.956963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460407, 27.348482, 44.439110>,  <32.824562, 27.873241, 44.099903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460407, 27.348482, 44.439110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.802979, 27.160189, 44.354309>,  <33.008522, 27.047213, 44.303429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.802979, 27.160189, 44.354309>,  <32.460407, 27.348482, 44.439110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802979, 27.160189, 44.354309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104388, -0.244261, 0.964074,
		-0.505605, -0.847789, -0.160053,
		0.856426, -0.470734, -0.211999,
		33.059906, 27.018969, 44.290710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395851, 26.769360, 44.789013>,  <32.460407, 27.348482, 44.439110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395851, 26.769360, 44.789013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.784752, 26.829531, 44.717361>,  <33.018093, 26.865633, 44.674370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.784752, 26.829531, 44.717361>,  <32.395851, 26.769360, 44.789013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784752, 26.829531, 44.717361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217637, -0.301042, 0.928444,
		0.085740, -0.941671, -0.325429,
		0.972257, 0.150430, -0.179131,
		33.076427, 26.874660, 44.663624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638523, 26.273420, 45.200302>,  <32.395851, 26.769360, 44.789013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638523, 26.273420, 45.200302> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.965450, 26.479496, 45.097095>,  <33.161606, 26.603142, 45.035172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.965450, 26.479496, 45.097095>,  <32.638523, 26.273420, 45.200302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965450, 26.479496, 45.097095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307544, -0.011387, 0.951466,
		0.487245, -0.857002, -0.167750,
		0.817318, 0.515187, -0.258017,
		33.210648, 26.634052, 45.019691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180305, 25.916418, 45.598110>,  <32.638523, 26.273420, 45.200302>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180305, 25.916418, 45.598110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.333195, 26.274023, 45.504608>,  <33.424931, 26.488586, 45.448509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.333195, 26.274023, 45.504608>,  <33.180305, 25.916418, 45.598110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333195, 26.274023, 45.504608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373185, 0.082073, 0.924120,
		0.845361, -0.440456, -0.302262,
		0.382226, 0.894015, -0.233753,
		33.447865, 26.542227, 45.434483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949280, 25.929441, 45.681973>,  <33.180305, 25.916418, 45.598110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949280, 25.929441, 45.681973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.807751, 26.302326, 45.712418>,  <33.722832, 26.526056, 45.730682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.807751, 26.302326, 45.712418>,  <33.949280, 25.929441, 45.681973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807751, 26.302326, 45.712418> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279230, 0.027617, 0.959827,
		0.892659, 0.360861, -0.270072,
		-0.353823, 0.932211, 0.076111,
		33.701603, 26.581989, 45.735252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458210, 26.352556, 46.070541>,  <33.949280, 25.929441, 45.681973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458210, 26.352556, 46.070541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.140705, 26.591446, 46.116608>,  <33.950203, 26.734779, 46.144249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.140705, 26.591446, 46.116608>,  <34.458210, 26.352556, 46.070541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140705, 26.591446, 46.116608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214998, 0.098378, 0.971647,
		0.568959, 0.796020, -0.206490,
		-0.793764, 0.597222, 0.115170,
		33.902576, 26.770613, 46.151157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624172, 26.959642, 46.468594>,  <34.458210, 26.352556, 46.070541>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624172, 26.959642, 46.468594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.227772, 26.929262, 46.512676>,  <33.989933, 26.911034, 46.539127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.227772, 26.929262, 46.512676>,  <34.624172, 26.959642, 46.468594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227772, 26.929262, 46.512676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106395, 0.052574, 0.992933,
		-0.081209, 0.995724, -0.044020,
		-0.991002, -0.075952, 0.110209,
		33.930470, 26.906477, 46.545738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465027, 27.323236, 47.115002>,  <34.624172, 26.959642, 46.468594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465027, 27.323236, 47.115002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.149780, 27.091236, 47.032574>,  <33.960632, 26.952036, 46.983116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.149780, 27.091236, 47.032574>,  <34.465027, 27.323236, 47.115002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149780, 27.091236, 47.032574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249921, -0.004421, 0.968256,
		-0.562501, 0.814603, -0.141470,
		-0.788119, -0.580001, -0.206073,
		33.913345, 26.917236, 46.970753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813499, 27.676893, 47.439331>,  <34.465027, 27.323236, 47.115002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813499, 27.676893, 47.439331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.723663, 27.290861, 47.385399>,  <33.669762, 27.059242, 47.353039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.723663, 27.290861, 47.385399>,  <33.813499, 27.676893, 47.439331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723663, 27.290861, 47.385399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248440, -0.077083, 0.965575,
		-0.942251, 0.250357, -0.222452,
		-0.224591, -0.965080, -0.134830,
		33.656284, 27.001337, 47.344952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177620, 27.634937, 47.656078>,  <33.813499, 27.676893, 47.439331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177620, 27.634937, 47.656078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.320107, 27.263346, 47.696293>,  <33.405598, 27.040390, 47.720421>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.320107, 27.263346, 47.696293>,  <33.177620, 27.634937, 47.656078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320107, 27.263346, 47.696293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437464, -0.070723, 0.896451,
		-0.825675, -0.363309, -0.431588,
		0.356212, -0.928981, 0.100540,
		33.426971, 26.984652, 47.726456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627224, 27.226627, 48.054363>,  <33.177620, 27.634937, 47.656078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627224, 27.226627, 48.054363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.936222, 26.972721, 48.061493>,  <33.121620, 26.820377, 48.065769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.936222, 26.972721, 48.061493>,  <32.627224, 27.226627, 48.054363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936222, 26.972721, 48.061493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238841, -0.264432, 0.934361,
		-0.588390, -0.726048, -0.355881,
		0.772497, -0.634768, 0.017821,
		33.167973, 26.782291, 48.066841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543034, 27.809835, 48.444870>,  <32.627224, 27.226627, 48.054363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543034, 27.809835, 48.444870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.172920, 27.949911, 48.503132>,  <31.950851, 28.033957, 48.538090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.172920, 27.949911, 48.503132>,  <32.543034, 27.809835, 48.444870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172920, 27.949911, 48.503132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125576, 0.645240, -0.753589,
		-0.357879, -0.678994, -0.641006,
		-0.925285, 0.350188, 0.145652,
		31.895334, 28.054968, 48.546829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292675, 27.949215, 47.838333>,  <32.543034, 27.809835, 48.444870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292675, 27.949215, 47.838333> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.062435, 28.174992, 48.075005>,  <31.924290, 28.310457, 48.217007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.062435, 28.174992, 48.075005>,  <32.292675, 27.949215, 47.838333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062435, 28.174992, 48.075005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077119, 0.757811, -0.647901,
		-0.814085, -0.327304, -0.479728,
		-0.575603, 0.564442, 0.591681,
		31.889753, 28.344324, 48.252510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707315, 28.253050, 47.387932>,  <32.292675, 27.949215, 47.838333>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707315, 28.253050, 47.387932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.814232, 28.515099, 47.670597>,  <31.878382, 28.672327, 47.840195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.814232, 28.515099, 47.670597>,  <31.707315, 28.253050, 47.387932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814232, 28.515099, 47.670597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383345, 0.600524, -0.701725,
		-0.884082, 0.458461, -0.090621,
		0.267293, 0.655122, 0.706661,
		31.894421, 28.711636, 47.882595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263071, 28.855564, 47.244747>,  <31.707315, 28.253050, 47.387932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263071, 28.855564, 47.244747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.602512, 28.959148, 47.429276>,  <31.806177, 29.021299, 47.539993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.602512, 28.959148, 47.429276>,  <31.263071, 28.855564, 47.244747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602512, 28.959148, 47.429276> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266946, 0.543247, -0.796004,
		-0.456743, 0.798638, 0.391871,
		0.848602, 0.258961, 0.461318,
		31.857094, 29.036837, 47.567669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396976, 29.585825, 47.078899>,  <31.263071, 28.855564, 47.244747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396976, 29.585825, 47.078899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.764885, 29.503155, 47.212353>,  <31.985630, 29.453552, 47.292423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.764885, 29.503155, 47.212353>,  <31.396976, 29.585825, 47.078899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764885, 29.503155, 47.212353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391274, 0.548950, -0.738620,
		-0.030490, 0.809900, 0.585775,
		0.919769, -0.206678, 0.333630,
		32.040817, 29.441151, 47.312443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806190, 30.254084, 47.247616>,  <31.396976, 29.585825, 47.078899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806190, 30.254084, 47.247616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.057457, 29.953890, 47.165466>,  <32.208218, 29.773773, 47.116177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.057457, 29.953890, 47.165466>,  <31.806190, 30.254084, 47.247616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057457, 29.953890, 47.165466> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322998, 0.491653, -0.808671,
		0.707870, 0.441643, 0.551245,
		0.628166, -0.750485, -0.205376,
		32.245907, 29.728745, 47.103855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343143, 30.607695, 46.993023>,  <31.806190, 30.254084, 47.247616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343143, 30.607695, 46.993023> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.423855, 30.240238, 46.857151>,  <32.472282, 30.019764, 46.775627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.423855, 30.240238, 46.857151>,  <32.343143, 30.607695, 46.993023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423855, 30.240238, 46.857151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563103, 0.392577, -0.727185,
		0.801373, -0.044545, 0.596503,
		0.201781, -0.918640, -0.339684,
		32.484390, 29.964645, 46.755245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164024, 30.770790, 47.336761>,  <32.343143, 30.607695, 46.993023>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164024, 30.770790, 47.336761> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.380230, 31.059647, 47.509434>,  <33.509953, 31.232962, 47.613037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.380230, 31.059647, 47.509434>,  <33.164024, 30.770790, 47.336761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380230, 31.059647, 47.509434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064512, -0.547159, 0.834538,
		0.838858, -0.423231, -0.342335,
		0.540514, 0.722144, 0.431685,
		33.542385, 31.276289, 47.638939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787064, 30.449747, 47.613060>,  <33.164024, 30.770790, 47.336761>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787064, 30.449747, 47.613060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.734634, 30.793831, 47.810181>,  <33.703178, 31.000282, 47.928455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.734634, 30.793831, 47.810181>,  <33.787064, 30.449747, 47.613060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734634, 30.793831, 47.810181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067884, -0.503714, 0.861199,
		0.989046, 0.079427, 0.124418,
		-0.131073, 0.860212, 0.492804,
		33.695312, 31.051895, 47.958023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231010, 30.337536, 48.091934>,  <33.787064, 30.449747, 47.613060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231010, 30.337536, 48.091934> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.033615, 30.646322, 48.252201>,  <33.915176, 30.831594, 48.348362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.033615, 30.646322, 48.252201>,  <34.231010, 30.337536, 48.091934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033615, 30.646322, 48.252201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025885, -0.447428, 0.893945,
		0.869366, 0.451524, 0.200819,
		-0.493490, 0.771968, 0.400667,
		33.885567, 30.877913, 48.372402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520779, 30.384506, 48.698338>,  <34.231010, 30.337536, 48.091934>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520779, 30.384506, 48.698338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.164589, 30.553923, 48.764870>,  <33.950874, 30.655573, 48.804787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.164589, 30.553923, 48.764870>,  <34.520779, 30.384506, 48.698338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164589, 30.553923, 48.764870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016008, -0.336149, 0.941673,
		0.454746, 0.841201, 0.292552,
		-0.890477, 0.423539, 0.166329,
		33.897446, 30.680984, 48.814770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.674183, 30.784189, 49.179550>,  <34.520779, 30.384506, 48.698338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.674183, 30.784189, 49.179550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.277782, 30.733377, 49.196472>,  <34.039944, 30.702890, 49.206627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.277782, 30.733377, 49.196472>,  <34.674183, 30.784189, 49.179550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277782, 30.733377, 49.196472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095423, -0.448453, 0.888698,
		-0.093917, 0.884734, 0.456537,
		-0.990997, -0.127028, 0.042306,
		33.980484, 30.695269, 49.209164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468548, 31.059902, 49.845520>,  <34.674183, 30.784189, 49.179550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468548, 31.059902, 49.845520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.168133, 30.822226, 49.730370>,  <33.987885, 30.679619, 49.661278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.168133, 30.822226, 49.730370>,  <34.468548, 31.059902, 49.845520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168133, 30.822226, 49.730370> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042345, -0.478460, 0.877087,
		-0.658898, 0.646538, 0.384504,
		-0.751040, -0.594193, -0.287879,
		33.942822, 30.643969, 49.644005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938847, 30.992044, 50.444504>,  <34.468548, 31.059902, 49.845520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938847, 30.992044, 50.444504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.885849, 30.677889, 50.202641>,  <33.854050, 30.489395, 50.057522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.885849, 30.677889, 50.202641>,  <33.938847, 30.992044, 50.444504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885849, 30.677889, 50.202641> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215335, -0.572655, 0.791010,
		-0.967511, 0.235005, -0.093251,
		-0.132491, -0.785391, -0.604655,
		33.846104, 30.442272, 50.021244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248920, 30.614071, 50.666225>,  <33.938847, 30.992044, 50.444504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248920, 30.614071, 50.666225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.429012, 30.330103, 50.449593>,  <33.537067, 30.159723, 50.319614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.429012, 30.330103, 50.449593>,  <33.248920, 30.614071, 50.666225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429012, 30.330103, 50.449593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046896, -0.624495, 0.779620,
		-0.891682, -0.325608, -0.314457,
		0.450227, -0.709919, -0.541581,
		33.564079, 30.117126, 50.287117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843998, 30.007685, 50.743267>,  <33.248920, 30.614071, 50.666225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843998, 30.007685, 50.743267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.207161, 29.876581, 50.638748>,  <33.425060, 29.797918, 50.576038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.207161, 29.876581, 50.638748>,  <32.843998, 30.007685, 50.743267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207161, 29.876581, 50.638748> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068046, -0.730349, 0.679677,
		-0.413608, -0.599304, -0.685393,
		0.907909, -0.327758, -0.261298,
		33.479534, 29.778254, 50.560360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.441685, 34.116833, 34.842300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757240, 33.974979, 35.043056>,  <36.946575, 33.889870, 35.163509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.757240, 33.974979, 35.043056>,  <36.441685, 34.116833, 34.842300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.757240, 33.974979, 35.043056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509075, 0.080347, 0.856964,
		-0.344231, -0.931548, -0.117148,
		0.788890, -0.354631, 0.501886,
		36.993908, 33.868591, 35.193623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245110, 33.489426, 35.159462>,  <36.441685, 34.116833, 34.842300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245110, 33.489426, 35.159462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550781, 33.639805, 35.369106>,  <36.734184, 33.730034, 35.494892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550781, 33.639805, 35.369106>,  <36.245110, 33.489426, 35.159462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550781, 33.639805, 35.369106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572653, 0.021511, 0.819515,
		0.296823, -0.926390, 0.231728,
		0.764176, 0.375950, 0.524115,
		36.780033, 33.752590, 35.526340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221439, 33.072071, 35.809563>,  <36.245110, 33.489426, 35.159462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221439, 33.072071, 35.809563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435974, 33.404602, 35.867867>,  <36.564693, 33.604118, 35.902847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.435974, 33.404602, 35.867867>,  <36.221439, 33.072071, 35.809563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435974, 33.404602, 35.867867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385051, 0.087327, 0.918754,
		0.751055, -0.548883, 0.366939,
		0.536332, 0.831325, 0.145760,
		36.596874, 33.653999, 35.911594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701458, 32.917847, 36.347431>,  <36.221439, 33.072071, 35.809563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701458, 32.917847, 36.347431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612389, 33.307789, 36.350620>,  <36.558945, 33.541756, 36.352531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.612389, 33.307789, 36.350620>,  <36.701458, 32.917847, 36.347431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612389, 33.307789, 36.350620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230383, -0.060564, 0.971214,
		0.947280, 0.214429, 0.238078,
		-0.222676, 0.974860, 0.007970,
		36.545586, 33.600246, 36.353012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815395, 33.018768, 36.990978>,  <36.701458, 32.917847, 36.347431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815395, 33.018768, 36.990978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626385, 33.355434, 36.886436>,  <36.512978, 33.557434, 36.823711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626385, 33.355434, 36.886436>,  <36.815395, 33.018768, 36.990978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626385, 33.355434, 36.886436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409375, 0.053003, 0.910825,
		0.780467, 0.537386, 0.319513,
		-0.472530, 0.841669, -0.261359,
		36.484627, 33.607937, 36.808029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009144, 33.594746, 37.459133>,  <36.815395, 33.018768, 36.990978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009144, 33.594746, 37.459133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657665, 33.701466, 37.300793>,  <36.446777, 33.765499, 37.205788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657665, 33.701466, 37.300793>,  <37.009144, 33.594746, 37.459133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657665, 33.701466, 37.300793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372973, 0.133864, 0.918135,
		0.297953, 0.954408, -0.018116,
		-0.878701, 0.266804, -0.395854,
		36.394054, 33.781506, 37.182037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876602, 34.090065, 37.903618>,  <37.009144, 33.594746, 37.459133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876602, 34.090065, 37.903618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531357, 33.990215, 37.728020>,  <36.324207, 33.930305, 37.622662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.531357, 33.990215, 37.728020>,  <36.876602, 34.090065, 37.903618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531357, 33.990215, 37.728020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417850, -0.135155, 0.898406,
		-0.283600, 0.958863, 0.012348,
		-0.863118, -0.249629, -0.438991,
		36.272423, 33.915325, 37.596321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360718, 34.562626, 38.168705>,  <36.876602, 34.090065, 37.903618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360718, 34.562626, 38.168705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174751, 34.231133, 38.044086>,  <36.063171, 34.032238, 37.969315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174751, 34.231133, 38.044086>,  <36.360718, 34.562626, 38.168705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174751, 34.231133, 38.044086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539916, -0.013495, 0.841610,
		-0.701674, 0.559483, -0.441172,
		-0.464913, -0.828732, -0.311543,
		36.035278, 33.982513, 37.950623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623272, 34.769360, 38.229916>,  <36.360718, 34.562626, 38.168705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623272, 34.769360, 38.229916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639420, 34.369949, 38.215374>,  <35.649109, 34.130302, 38.206650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639420, 34.369949, 38.215374>,  <35.623272, 34.769360, 38.229916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639420, 34.369949, 38.215374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520075, -0.052067, 0.852532,
		-0.853166, -0.015507, -0.521409,
		0.040369, -0.998523, -0.036357,
		35.651531, 34.070393, 38.204468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870750, 34.535725, 38.185890>,  <35.623272, 34.769360, 38.229916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870750, 34.535725, 38.185890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104240, 34.245480, 38.331627>,  <35.244335, 34.071331, 38.419071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104240, 34.245480, 38.331627>,  <34.870750, 34.535725, 38.185890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104240, 34.245480, 38.331627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593010, -0.074482, 0.801742,
		-0.554619, -0.684059, -0.473774,
		0.583727, -0.725614, 0.364344,
		35.279358, 34.027794, 38.440929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360935, 34.086834, 38.543221>,  <34.870750, 34.535725, 38.185890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360935, 34.086834, 38.543221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717598, 33.966808, 38.678818>,  <34.931595, 33.894791, 38.760174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.717598, 33.966808, 38.678818>,  <34.360935, 34.086834, 38.543221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717598, 33.966808, 38.678818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416980, -0.252748, 0.873067,
		-0.176296, -0.919826, -0.350484,
		0.891654, -0.300063, 0.338990,
		34.985092, 33.876789, 38.780514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263760, 33.417263, 38.774677>,  <34.360935, 34.086834, 38.543221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263760, 33.417263, 38.774677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579674, 33.589527, 38.949387>,  <34.769222, 33.692886, 39.054211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579674, 33.589527, 38.949387>,  <34.263760, 33.417263, 38.774677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579674, 33.589527, 38.949387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396374, -0.185088, 0.899239,
		0.468109, -0.883330, 0.024523,
		0.789786, 0.430662, 0.436771,
		34.816608, 33.718727, 39.080418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068645, 32.788685, 38.455959>,  <34.263760, 33.417263, 38.774677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068645, 32.788685, 38.455959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992287, 32.410145, 38.351662>,  <33.946472, 32.183022, 38.289082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.992287, 32.410145, 38.351662>,  <34.068645, 32.788685, 38.455959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992287, 32.410145, 38.351662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190279, 0.296264, -0.935960,
		0.962992, -0.129054, -0.236624,
		-0.190893, -0.946347, -0.260744,
		33.935020, 32.126240, 38.273438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.461811, 32.557007, 37.778316>,  <34.068645, 32.788685, 38.455959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.461811, 32.557007, 37.778316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106556, 32.385166, 37.843624>,  <33.893402, 32.282063, 37.882809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.106556, 32.385166, 37.843624>,  <34.461811, 32.557007, 37.778316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.106556, 32.385166, 37.843624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307120, 0.290501, -0.906249,
		0.341899, -0.855014, -0.389944,
		-0.888134, -0.429606, 0.163270,
		33.840115, 32.256287, 37.892605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221867, 32.255142, 37.083710>,  <34.461811, 32.557007, 37.778316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221867, 32.255142, 37.083710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900936, 32.314980, 37.314846>,  <33.708378, 32.350883, 37.453526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900936, 32.314980, 37.314846>,  <34.221867, 32.255142, 37.083710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900936, 32.314980, 37.314846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477782, 0.419305, -0.771950,
		-0.357771, -0.895435, -0.264944,
		-0.802324, 0.149596, 0.577838,
		33.660240, 32.359859, 37.488197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627319, 31.969069, 36.752640>,  <34.221867, 32.255142, 37.083710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627319, 31.969069, 36.752640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484505, 32.243881, 37.005783>,  <33.398815, 32.408768, 37.157669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.484505, 32.243881, 37.005783>,  <33.627319, 31.969069, 36.752640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.484505, 32.243881, 37.005783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397999, 0.501041, -0.768476,
		-0.845056, -0.526253, 0.094547,
		-0.357041, 0.687034, 0.632856,
		33.377392, 32.449993, 37.195641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970100, 31.965935, 36.458523>,  <33.627319, 31.969069, 36.752640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970100, 31.965935, 36.458523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038235, 32.294769, 36.675838>,  <33.079117, 32.492069, 36.806229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.038235, 32.294769, 36.675838>,  <32.970100, 31.965935, 36.458523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038235, 32.294769, 36.675838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280582, 0.568987, -0.772999,
		-0.944595, -0.020766, 0.327582,
		0.170338, 0.822084, 0.543289,
		33.089336, 32.541393, 36.838825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315502, 32.280136, 36.306484>,  <32.970100, 31.965935, 36.458523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315502, 32.280136, 36.306484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560745, 32.556183, 36.460281>,  <32.707893, 32.721809, 36.552559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560745, 32.556183, 36.460281>,  <32.315502, 32.280136, 36.306484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560745, 32.556183, 36.460281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343438, 0.671142, -0.656977,
		-0.711439, 0.270751, 0.648497,
		0.613111, 0.690117, 0.384491,
		32.744678, 32.763218, 36.575630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998585, 32.907047, 36.445210>,  <32.315502, 32.280136, 36.306484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998585, 32.907047, 36.445210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379261, 33.024807, 36.410309>,  <32.607666, 33.095463, 36.389366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.379261, 33.024807, 36.410309>,  <31.998585, 32.907047, 36.445210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379261, 33.024807, 36.410309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251958, 0.586296, -0.769918,
		-0.175508, 0.754708, 0.632149,
		0.951690, 0.294401, -0.087255,
		32.664768, 33.113129, 36.384132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998491, 33.632614, 36.240856>,  <31.998585, 32.907047, 36.445210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998491, 33.632614, 36.240856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370777, 33.534203, 36.132603>,  <32.594147, 33.475155, 36.067650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.370777, 33.534203, 36.132603>,  <31.998491, 33.632614, 36.240856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370777, 33.534203, 36.132603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103883, 0.531660, -0.840563,
		0.350689, 0.810437, 0.469264,
		0.930712, -0.246028, -0.270638,
		32.649990, 33.460396, 36.051411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341309, 34.305164, 35.965565>,  <31.998491, 33.632614, 36.240856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341309, 34.305164, 35.965565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543224, 33.998962, 35.805969>,  <32.664375, 33.815243, 35.710213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.543224, 33.998962, 35.805969>,  <32.341309, 34.305164, 35.965565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.543224, 33.998962, 35.805969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070673, 0.497296, -0.864697,
		0.860344, 0.408293, 0.305131,
		0.504790, -0.765502, -0.398991,
		32.694660, 33.769310, 35.686272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970490, 34.502197, 35.611542>,  <32.341309, 34.305164, 35.965565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970490, 34.502197, 35.611542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883095, 34.144279, 35.455799>,  <32.830658, 33.929527, 35.362354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883095, 34.144279, 35.455799>,  <32.970490, 34.502197, 35.611542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883095, 34.144279, 35.455799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056155, 0.386809, -0.920449,
		0.974222, -0.222973, -0.034266,
		-0.218489, -0.894797, -0.389359,
		32.817547, 33.875839, 35.338993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.344646, 34.475822, 35.027245>,  <32.970490, 34.502197, 35.611542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.344646, 34.475822, 35.027245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098484, 34.170475, 34.948719>,  <32.950787, 33.987267, 34.901604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098484, 34.170475, 34.948719>,  <33.344646, 34.475822, 35.027245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098484, 34.170475, 34.948719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115219, 0.159266, -0.980489,
		0.779741, -0.626021, -0.010059,
		-0.615409, -0.763369, -0.196316,
		32.913860, 33.941463, 34.889824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719666, 34.203735, 34.485653>,  <33.344646, 34.475822, 35.027245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719666, 34.203735, 34.485653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344746, 34.064957, 34.472404>,  <33.119793, 33.981689, 34.464455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344746, 34.064957, 34.472404>,  <33.719666, 34.203735, 34.485653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344746, 34.064957, 34.472404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003501, 0.085660, -0.996318,
		0.348504, -0.933966, -0.079074,
		-0.937301, -0.346944, -0.033123,
		33.063557, 33.960873, 34.462467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677464, 33.640736, 33.893875>,  <33.719666, 34.203735, 34.485653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677464, 33.640736, 33.893875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311768, 33.789787, 33.957516>,  <33.092350, 33.879219, 33.995701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.311768, 33.789787, 33.957516>,  <33.677464, 33.640736, 33.893875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311768, 33.789787, 33.957516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135235, 0.089531, -0.986760,
		-0.381940, -0.923651, -0.031460,
		-0.914239, 0.372629, 0.159105,
		33.037495, 33.901577, 34.005249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907215, 33.041885, 33.584087>,  <33.677464, 33.640736, 33.893875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907215, 33.041885, 33.584087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095650, 33.286556, 33.838306>,  <34.208710, 33.433361, 33.990837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095650, 33.286556, 33.838306>,  <33.907215, 33.041885, 33.584087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095650, 33.286556, 33.838306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881831, 0.309246, 0.356006,
		0.021220, -0.728158, 0.685080,
		0.471087, 0.611680, 0.635550,
		34.236977, 33.470062, 34.028973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003445, 32.385376, 33.850372>,  <33.907215, 33.041885, 33.584087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003445, 32.385376, 33.850372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909302, 32.138546, 33.550018>,  <33.852818, 31.990448, 33.369808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909302, 32.138546, 33.550018>,  <34.003445, 32.385376, 33.850372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909302, 32.138546, 33.550018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094041, -0.754501, 0.649526,
		-0.967349, 0.223484, 0.119546,
		-0.235356, -0.617077, -0.750882,
		33.838696, 31.953423, 33.324753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.311089, 32.184544, 33.807957>,  <34.003445, 32.385376, 33.850372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.311089, 32.184544, 33.807957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591003, 31.921019, 33.697487>,  <33.758953, 31.762905, 33.631207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.591003, 31.921019, 33.697487>,  <33.311089, 32.184544, 33.807957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.591003, 31.921019, 33.697487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248023, -0.586629, 0.770942,
		-0.669915, -0.470996, -0.573914,
		0.699785, -0.658809, -0.276173,
		33.800938, 31.723375, 33.614635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995285, 31.587227, 33.655930>,  <33.311089, 32.184544, 33.807957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995285, 31.587227, 33.655930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370831, 31.525898, 33.779232>,  <33.596157, 31.489101, 33.853214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.370831, 31.525898, 33.779232>,  <32.995285, 31.587227, 33.655930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370831, 31.525898, 33.779232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339884, -0.555396, 0.758956,
		0.054840, -0.817330, -0.573554,
		0.938867, -0.153321, 0.308255,
		33.652493, 31.479902, 33.871708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137821, 30.878410, 33.624641>,  <32.995285, 31.587227, 33.655930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137821, 30.878410, 33.624641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377129, 31.035728, 33.903893>,  <33.520714, 31.130119, 34.071445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.377129, 31.035728, 33.903893>,  <33.137821, 30.878410, 33.624641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377129, 31.035728, 33.903893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456159, -0.549131, 0.700266,
		0.658778, -0.737410, -0.149125,
		0.598272, 0.393295, 0.698132,
		33.556610, 31.153717, 34.113331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649876, 30.372616, 33.996490>,  <33.137821, 30.878410, 33.624641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649876, 30.372616, 33.996490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630329, 30.658400, 34.275677>,  <33.618603, 30.829870, 34.443188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630329, 30.658400, 34.275677>,  <33.649876, 30.372616, 33.996490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630329, 30.658400, 34.275677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136345, -0.697031, 0.703959,
		0.989456, -0.060763, 0.131476,
		-0.048868, 0.714462, 0.697966,
		33.615669, 30.872738, 34.485065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838318, 30.023590, 34.589905>,  <33.649876, 30.372616, 33.996490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838318, 30.023590, 34.589905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706306, 30.371382, 34.736923>,  <33.627098, 30.580057, 34.825134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706306, 30.371382, 34.736923>,  <33.838318, 30.023590, 34.589905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706306, 30.371382, 34.736923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147331, -0.432032, 0.889743,
		0.932402, 0.239491, 0.270684,
		-0.330029, 0.869478, 0.367543,
		33.607296, 30.632225, 34.847187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236504, 30.107548, 35.184013>,  <33.838318, 30.023590, 34.589905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236504, 30.107548, 35.184013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929955, 30.358353, 35.239914>,  <33.746025, 30.508835, 35.273457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929955, 30.358353, 35.239914>,  <34.236504, 30.107548, 35.184013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929955, 30.358353, 35.239914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104906, -0.336787, 0.935719,
		0.633773, 0.702447, 0.323881,
		-0.766372, 0.627011, 0.139756,
		33.700043, 30.546455, 35.281841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267826, 30.511208, 35.791721>,  <34.236504, 30.107548, 35.184013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267826, 30.511208, 35.791721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876892, 30.565718, 35.726929>,  <33.642330, 30.598423, 35.688053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876892, 30.565718, 35.726929>,  <34.267826, 30.511208, 35.791721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876892, 30.565718, 35.726929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192392, -0.252711, 0.948221,
		0.088285, 0.957897, 0.273203,
		-0.977339, 0.136276, -0.161982,
		33.583691, 30.606600, 35.678333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996693, 30.909573, 36.338749>,  <34.267826, 30.511208, 35.791721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996693, 30.909573, 36.338749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677814, 30.717148, 36.192833>,  <33.486488, 30.601694, 36.105286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677814, 30.717148, 36.192833>,  <33.996693, 30.909573, 36.338749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677814, 30.717148, 36.192833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231014, -0.315177, 0.920487,
		-0.557781, 0.818074, 0.140125,
		-0.797191, -0.481060, -0.364786,
		33.438656, 30.572830, 36.083397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544926, 31.093369, 36.837067>,  <33.996693, 30.909573, 36.338749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544926, 31.093369, 36.837067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429100, 30.765812, 36.638847>,  <33.359604, 30.569279, 36.519917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429100, 30.765812, 36.638847>,  <33.544926, 31.093369, 36.837067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429100, 30.765812, 36.638847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373391, -0.380067, 0.846243,
		-0.881323, 0.430076, -0.195713,
		-0.289565, -0.818892, -0.495548,
		33.342232, 30.520144, 36.490181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838554, 30.894888, 37.101208>,  <33.544926, 31.093369, 36.837067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838554, 30.894888, 37.101208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019489, 30.571972, 36.949589>,  <33.128052, 30.378223, 36.858620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019489, 30.571972, 36.949589>,  <32.838554, 30.894888, 37.101208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019489, 30.571972, 36.949589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374348, -0.557624, 0.740891,
		-0.809477, -0.193240, -0.554442,
		0.452340, -0.807288, -0.379044,
		33.155190, 30.329786, 36.835876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260765, 30.258467, 37.087013>,  <32.838554, 30.894888, 37.101208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260765, 30.258467, 37.087013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635880, 30.124844, 37.049137>,  <32.860947, 30.044670, 37.026413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.635880, 30.124844, 37.049137>,  <32.260765, 30.258467, 37.087013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635880, 30.124844, 37.049137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173073, -0.686138, 0.706584,
		-0.301010, -0.646235, -0.701265,
		0.937784, -0.334059, -0.094688,
		32.917213, 30.024626, 37.020729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245903, 29.476271, 37.220383>,  <32.260765, 30.258467, 37.087013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245903, 29.476271, 37.220383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627483, 29.581654, 37.277748>,  <32.856430, 29.644882, 37.312168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627483, 29.581654, 37.277748>,  <32.245903, 29.476271, 37.220383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627483, 29.581654, 37.277748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015216, -0.520003, 0.854029,
		0.299576, -0.812519, -0.500066,
		0.953951, 0.263456, 0.143417,
		32.913670, 29.660690, 37.320774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544502, 28.852955, 37.366299>,  <32.245903, 29.476271, 37.220383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544502, 28.852955, 37.366299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821022, 29.111622, 37.495243>,  <32.986935, 29.266823, 37.572609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.821022, 29.111622, 37.495243>,  <32.544502, 28.852955, 37.366299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821022, 29.111622, 37.495243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178089, -0.584865, 0.791339,
		0.700274, -0.489646, -0.519483,
		0.691304, 0.646669, 0.322365,
		33.028412, 29.305622, 37.591953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234619, 28.459078, 37.526253>,  <32.544502, 28.852955, 37.366299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234619, 28.459078, 37.526253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251038, 28.809584, 37.718285>,  <33.260887, 29.019888, 37.833504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.251038, 28.809584, 37.718285>,  <33.234619, 28.459078, 37.526253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251038, 28.809584, 37.718285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256584, -0.473615, 0.842528,
		0.965650, 0.088601, -0.244274,
		0.041043, 0.876264, 0.480080,
		33.263351, 29.072462, 37.862309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843258, 28.331930, 37.900768>,  <33.234619, 28.459078, 37.526253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843258, 28.331930, 37.900768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629284, 28.620733, 38.076290>,  <33.500900, 28.794014, 38.181602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629284, 28.620733, 38.076290>,  <33.843258, 28.331930, 37.900768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629284, 28.620733, 38.076290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078511, -0.474640, 0.876671,
		0.841238, 0.503413, 0.197215,
		-0.534934, 0.722006, 0.438809,
		33.468803, 28.837336, 38.207932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026100, 28.342468, 38.523857>,  <33.843258, 28.331930, 37.900768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026100, 28.342468, 38.523857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711445, 28.583965, 38.575546>,  <33.522652, 28.728863, 38.606560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711445, 28.583965, 38.575546>,  <34.026100, 28.342468, 38.523857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711445, 28.583965, 38.575546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127413, -0.363529, 0.922829,
		0.604126, 0.709467, 0.362890,
		-0.786637, 0.603741, 0.129222,
		33.475452, 28.765087, 38.614311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207672, 28.715113, 39.200783>,  <34.026100, 28.342468, 38.523857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207672, 28.715113, 39.200783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820530, 28.725615, 39.100723>,  <33.588245, 28.731916, 39.040688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.820530, 28.725615, 39.100723>,  <34.207672, 28.715113, 39.200783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.820530, 28.725615, 39.100723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250615, -0.184950, 0.950255,
		-0.021314, 0.982397, 0.185585,
		-0.967852, 0.026257, -0.250146,
		33.530174, 28.733492, 39.025681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.944901, 29.041859, 39.731960>,  <34.207672, 28.715113, 39.200783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.944901, 29.041859, 39.731960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631489, 28.852747, 39.570686>,  <33.443439, 28.739281, 39.473923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.631489, 28.852747, 39.570686>,  <33.944901, 29.041859, 39.731960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631489, 28.852747, 39.570686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282645, -0.306661, 0.908884,
		-0.553341, 0.826099, 0.106650,
		-0.783534, -0.472779, -0.403181,
		33.396427, 28.710913, 39.449734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265217, 29.338606, 39.984333>,  <33.944901, 29.041859, 39.731960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265217, 29.338606, 39.984333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224186, 28.964174, 39.849731>,  <33.199566, 28.739515, 39.768970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.224186, 28.964174, 39.849731>,  <33.265217, 29.338606, 39.984333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.224186, 28.964174, 39.849731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375866, -0.276733, 0.884389,
		-0.920979, 0.217201, -0.323453,
		-0.102580, -0.936078, -0.336503,
		33.193413, 28.683352, 39.748779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.763142, 29.123652, 40.378315>,  <33.265217, 29.338606, 39.984333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.763142, 29.123652, 40.378315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927132, 28.788685, 40.233730>,  <33.025528, 28.587706, 40.146980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927132, 28.788685, 40.233730>,  <32.763142, 29.123652, 40.378315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927132, 28.788685, 40.233730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175351, -0.461268, 0.869761,
		-0.895081, -0.293199, -0.335952,
		0.409977, -0.837416, -0.361460,
		33.050125, 28.537460, 40.125294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290176, 28.539429, 40.504272>,  <32.763142, 29.123652, 40.378315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290176, 28.539429, 40.504272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664486, 28.405289, 40.460709>,  <32.889072, 28.324804, 40.434570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664486, 28.405289, 40.460709>,  <32.290176, 28.539429, 40.504272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664486, 28.405289, 40.460709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023035, -0.366376, 0.930182,
		-0.351842, -0.867933, -0.350570,
		0.935776, -0.335353, -0.108914,
		32.945217, 28.304684, 40.428036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331245, 27.774883, 40.764019>,  <32.290176, 28.539429, 40.504272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331245, 27.774883, 40.764019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711342, 27.899019, 40.753273>,  <32.939400, 27.973501, 40.746826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.711342, 27.899019, 40.753273>,  <32.331245, 27.774883, 40.764019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711342, 27.899019, 40.753273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171438, -0.449033, 0.876914,
		0.260082, -0.837889, -0.479896,
		0.950245, 0.310342, -0.026861,
		32.996414, 27.992123, 40.745216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790657, 27.083111, 40.814796>,  <32.331245, 27.774883, 40.764019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790657, 27.083111, 40.814796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995888, 27.403933, 40.937080>,  <33.119026, 27.596426, 41.010452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995888, 27.403933, 40.937080>,  <32.790657, 27.083111, 40.814796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995888, 27.403933, 40.937080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082930, -0.400820, 0.912396,
		0.854326, -0.442779, -0.272167,
		0.513079, 0.802054, 0.305711,
		33.149811, 27.644548, 41.028793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234554, 26.835007, 41.173946>,  <32.790657, 27.083111, 40.814796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234554, 26.835007, 41.173946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241848, 27.196726, 41.344551>,  <33.246223, 27.413757, 41.446915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.241848, 27.196726, 41.344551>,  <33.234554, 26.835007, 41.173946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241848, 27.196726, 41.344551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281152, -0.414009, 0.865765,
		0.959490, 0.104132, -0.261793,
		0.018231, 0.904297, 0.426515,
		33.247318, 27.468016, 41.472504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936008, 26.945787, 41.535061>,  <33.234554, 26.835007, 41.173946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936008, 26.945787, 41.535061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672737, 27.201406, 41.694267>,  <33.514774, 27.354778, 41.789791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.672737, 27.201406, 41.694267>,  <33.936008, 26.945787, 41.535061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672737, 27.201406, 41.694267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273240, -0.289853, 0.917238,
		0.701523, 0.712463, 0.016163,
		-0.658183, 0.639047, 0.398012,
		33.475281, 27.393120, 41.813671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214165, 27.008734, 42.181049>,  <33.936008, 26.945787, 41.535061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214165, 27.008734, 42.181049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870132, 27.203346, 42.242432>,  <33.663712, 27.320114, 42.279263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870132, 27.203346, 42.242432>,  <34.214165, 27.008734, 42.181049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870132, 27.203346, 42.242432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027013, -0.256949, 0.966047,
		0.509441, 0.835025, 0.207855,
		-0.860081, 0.486529, 0.153457,
		33.612106, 27.349304, 42.288467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292896, 27.572651, 42.755173>,  <34.214165, 27.008734, 42.181049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292896, 27.572651, 42.755173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908577, 27.464191, 42.732010>,  <33.677986, 27.399115, 42.718113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908577, 27.464191, 42.732010>,  <34.292896, 27.572651, 42.755173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908577, 27.464191, 42.732010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060583, -0.409114, 0.910470,
		-0.270565, 0.871265, 0.409501,
		-0.960793, -0.271150, -0.057908,
		33.620338, 27.382847, 42.714638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784512, 28.085226, 42.844238>,  <34.292896, 27.572651, 42.755173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784512, 28.085226, 42.844238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131310, 27.891653, 42.891781>,  <35.339390, 27.775509, 42.920307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.131310, 27.891653, 42.891781>,  <34.784512, 28.085226, 42.844238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.131310, 27.891653, 42.891781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196894, 0.113569, -0.973825,
		0.457766, 0.867705, 0.193747,
		0.866996, -0.483932, 0.118857,
		35.391407, 27.746473, 42.927437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.305931, 28.525940, 42.643761>,  <34.784512, 28.085226, 42.844238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.305931, 28.525940, 42.643761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506390, 28.180649, 42.619469>,  <35.626667, 27.973475, 42.604893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506390, 28.180649, 42.619469>,  <35.305931, 28.525940, 42.643761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506390, 28.180649, 42.619469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199019, 0.183267, -0.962707,
		0.842164, 0.470374, 0.263643,
		0.501150, -0.863227, -0.060727,
		35.656734, 27.921680, 42.601250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059616, 28.647688, 42.473518>,  <35.305931, 28.525940, 42.643761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059616, 28.647688, 42.473518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973549, 28.273941, 42.359917>,  <35.921909, 28.049692, 42.291756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973549, 28.273941, 42.359917>,  <36.059616, 28.647688, 42.473518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973549, 28.273941, 42.359917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310633, 0.210228, -0.926991,
		0.925856, -0.287683, 0.245010,
		-0.215172, -0.934368, -0.284005,
		35.908997, 27.993631, 42.274715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564518, 28.587244, 41.868797>,  <36.059616, 28.647688, 42.473518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564518, 28.587244, 41.868797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326645, 28.266285, 41.848743>,  <36.183922, 28.073709, 41.836712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326645, 28.266285, 41.848743>,  <36.564518, 28.587244, 41.868797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326645, 28.266285, 41.848743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305748, -0.168042, -0.937166,
		0.743553, -0.572645, 0.345262,
		-0.594682, -0.802396, -0.050136,
		36.148239, 28.025566, 41.833702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972027, 27.931183, 41.657249>,  <36.564518, 28.587244, 41.868797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972027, 27.931183, 41.657249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583164, 27.894022, 41.571194>,  <36.349846, 27.871725, 41.519562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583164, 27.894022, 41.571194>,  <36.972027, 27.931183, 41.657249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583164, 27.894022, 41.571194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219328, -0.037408, -0.974934,
		0.082526, -0.994972, 0.056743,
		-0.972155, -0.092903, -0.215138,
		36.291519, 27.866152, 41.506653>
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
