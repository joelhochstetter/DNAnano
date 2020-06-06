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
	<23.721140, 34.935364, 35.087505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.098267, 34.907669, 34.957088>,  <24.324543, 34.891052, 34.878838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.098267, 34.907669, 34.957088>,  <23.721140, 34.935364, 35.087505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.098267, 34.907669, 34.957088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261115, -0.454548, 0.851590,
		-0.207162, -0.888028, -0.410477,
		0.942816, -0.069235, -0.326042,
		24.381111, 34.886898, 34.859276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.962244, 34.318581, 35.423737>,  <23.721140, 34.935364, 35.087505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.962244, 34.318581, 35.423737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.303604, 34.509907, 35.340870>,  <24.508421, 34.624702, 35.291149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.303604, 34.509907, 35.340870>,  <23.962244, 34.318581, 35.423737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.303604, 34.509907, 35.340870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379451, -0.297562, 0.876055,
		0.357388, -0.826236, -0.435438,
		0.853399, 0.478319, -0.207171,
		24.559624, 34.653404, 35.278717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.491835, 33.872696, 35.645599>,  <23.962244, 34.318581, 35.423737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.491835, 33.872696, 35.645599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664932, 34.233295, 35.643181>,  <24.768791, 34.449654, 35.641727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.664932, 34.233295, 35.643181>,  <24.491835, 33.872696, 35.645599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.664932, 34.233295, 35.643181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598548, -0.282290, 0.749702,
		0.674145, -0.328051, -0.661748,
		0.432745, 0.901496, -0.006050,
		24.794756, 34.503746, 35.641365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.184736, 33.752243, 35.860573>,  <24.491835, 33.872696, 35.645599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.184736, 33.752243, 35.860573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105759, 34.136600, 35.938248>,  <25.058372, 34.367214, 35.984852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.105759, 34.136600, 35.938248>,  <25.184736, 33.752243, 35.860573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.105759, 34.136600, 35.938248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594333, -0.040196, 0.803214,
		0.779605, 0.274001, -0.563151,
		-0.197445, 0.960889, 0.194185,
		25.046526, 34.424866, 35.996502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704723, 34.303234, 35.777580>,  <25.184736, 33.752243, 35.860573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704723, 34.303234, 35.777580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496716, 34.455711, 36.083332>,  <25.371912, 34.547199, 36.266781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.496716, 34.455711, 36.083332>,  <25.704723, 34.303234, 35.777580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.496716, 34.455711, 36.083332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776071, -0.162943, 0.609232,
		0.356784, 0.910023, -0.211099,
		-0.520018, 0.381192, 0.764378,
		25.340710, 34.570068, 36.312645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.992586, 34.913425, 35.953423>,  <25.704723, 34.303234, 35.777580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.992586, 34.913425, 35.953423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.810225, 34.797371, 36.289986>,  <25.700808, 34.727737, 36.491924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.810225, 34.797371, 36.289986>,  <25.992586, 34.913425, 35.953423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.810225, 34.797371, 36.289986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785394, 0.313587, 0.533684,
		-0.418697, 0.904148, 0.084905,
		-0.455904, -0.290136, 0.841411,
		25.673452, 34.710331, 36.542408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.008688, 35.474438, 36.440975>,  <25.992586, 34.913425, 35.953423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.008688, 35.474438, 36.440975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975702, 35.132687, 36.646202>,  <25.955912, 34.927635, 36.769337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975702, 35.132687, 36.646202>,  <26.008688, 35.474438, 36.440975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.975702, 35.132687, 36.646202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865223, 0.194103, 0.462291,
		-0.494559, 0.482040, 0.723221,
		-0.082463, -0.854378, 0.513068,
		25.950964, 34.876373, 36.800121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143694, 35.771683, 37.045696>,  <26.008688, 35.474438, 36.440975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.143694, 35.771683, 37.045696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197006, 35.375351, 37.054611>,  <26.228994, 35.137554, 37.059959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.197006, 35.375351, 37.054611>,  <26.143694, 35.771683, 37.045696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.197006, 35.375351, 37.054611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951414, 0.134215, 0.277126,
		-0.277576, -0.015730, 0.960575,
		0.133283, -0.990827, 0.022289,
		26.236992, 35.078102, 37.061298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.718288, 35.698078, 37.511066>,  <26.143694, 35.771683, 37.045696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.718288, 35.698078, 37.511066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.691977, 35.329651, 37.357548>,  <26.676189, 35.108593, 37.265438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.691977, 35.329651, 37.357548>,  <26.718288, 35.698078, 37.511066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.691977, 35.329651, 37.357548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941780, -0.184409, 0.281148,
		-0.329732, -0.342956, 0.879578,
		-0.065780, -0.921073, -0.383794,
		26.672243, 35.053329, 37.242409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931973, 35.221764, 38.017792>,  <26.718288, 35.698078, 37.511066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.931973, 35.221764, 38.017792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000380, 35.053013, 37.661640>,  <27.041424, 34.951763, 37.447948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.000380, 35.053013, 37.661640>,  <26.931973, 35.221764, 38.017792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.000380, 35.053013, 37.661640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976382, -0.048531, 0.210531,
		-0.132029, -0.905353, 0.403613,
		0.171017, -0.421877, -0.890378,
		27.051685, 34.926449, 37.394527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442209, 34.674709, 38.100517>,  <26.931973, 35.221764, 38.017792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.442209, 34.674709, 38.100517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453018, 34.772812, 37.712883>,  <27.459503, 34.831673, 37.480305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.453018, 34.772812, 37.712883>,  <27.442209, 34.674709, 38.100517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453018, 34.772812, 37.712883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978406, 0.192235, 0.075934,
		0.204915, -0.950208, -0.234766,
		0.027023, 0.245257, -0.969081,
		27.461124, 34.846390, 37.422157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.987206, 34.268333, 37.761696>,  <27.442209, 34.674709, 38.100517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.987206, 34.268333, 37.761696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919529, 34.631847, 37.609131>,  <27.878923, 34.849957, 37.517590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.919529, 34.631847, 37.609131>,  <27.987206, 34.268333, 37.761696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919529, 34.631847, 37.609131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976713, 0.206406, 0.058544,
		0.131930, -0.362627, -0.922549,
		-0.169190, 0.908789, -0.381414,
		27.868773, 34.904484, 37.494705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561836, 34.439552, 37.435116>,  <27.987206, 34.268333, 37.761696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.561836, 34.439552, 37.435116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423380, 34.804173, 37.523899>,  <28.340307, 35.022945, 37.577171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.423380, 34.804173, 37.523899>,  <28.561836, 34.439552, 37.435116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.423380, 34.804173, 37.523899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937137, 0.347108, 0.035929,
		-0.044293, 0.220444, -0.974393,
		-0.346140, 0.911549, 0.221961,
		28.319538, 35.077637, 37.590488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795340, 34.930275, 36.919331>,  <28.561836, 34.439552, 37.435116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795340, 34.930275, 36.919331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.762995, 35.088261, 37.285385>,  <28.743587, 35.183052, 37.505016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.762995, 35.088261, 37.285385>,  <28.795340, 34.930275, 36.919331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.762995, 35.088261, 37.285385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989533, 0.141911, 0.026191,
		-0.119523, 0.907671, -0.402303,
		-0.080864, 0.394962, 0.915132,
		28.738735, 35.206749, 37.559925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.342058, 35.439438, 37.157303>,  <28.795340, 34.930275, 36.919331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.342058, 35.439438, 37.157303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316866, 35.098892, 36.948990>,  <28.301750, 34.894566, 36.824001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316866, 35.098892, 36.948990>,  <28.342058, 35.439438, 37.157303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316866, 35.098892, 36.948990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955919, 0.201415, -0.213663,
		0.286798, 0.484370, -0.826518,
		-0.062981, -0.851362, -0.520784,
		28.297972, 34.843483, 36.792755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046917, 35.547874, 36.445114>,  <28.342058, 35.439438, 37.157303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046917, 35.547874, 36.445114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991318, 35.203953, 36.641655>,  <27.957958, 34.997601, 36.759579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991318, 35.203953, 36.641655>,  <28.046917, 35.547874, 36.445114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991318, 35.203953, 36.641655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987090, 0.160162, 0.001025,
		-0.079576, -0.484862, -0.870963,
		-0.138998, -0.859801, 0.491348,
		27.949619, 34.946014, 36.789059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.583424, 35.056728, 36.115112>,  <28.046917, 35.547874, 36.445114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.583424, 35.056728, 36.115112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.545021, 34.978294, 36.505463>,  <27.521980, 34.931232, 36.739674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.545021, 34.978294, 36.505463>,  <27.583424, 35.056728, 36.115112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.545021, 34.978294, 36.505463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985918, -0.116131, -0.120328,
		0.136924, -0.973685, -0.182178,
		-0.096005, -0.196089, 0.975875,
		27.516220, 34.919468, 36.798225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.258543, 34.388283, 36.212189>,  <27.583424, 35.056728, 36.115112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.258543, 34.388283, 36.212189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.175983, 34.574768, 36.556290>,  <27.126448, 34.686661, 36.762753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.175983, 34.574768, 36.556290>,  <27.258543, 34.388283, 36.212189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175983, 34.574768, 36.556290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950602, -0.303870, -0.063392,
		0.231852, -0.830846, 0.505905,
		-0.206399, 0.466217, 0.860257,
		27.114063, 34.714634, 36.814365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948660, 33.936016, 36.735371>,  <27.258543, 34.388283, 36.212189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948660, 33.936016, 36.735371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836765, 34.297546, 36.864895>,  <26.769629, 34.514465, 36.942608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836765, 34.297546, 36.864895>,  <26.948660, 33.936016, 36.735371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836765, 34.297546, 36.864895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958313, -0.283296, -0.037143,
		0.058163, -0.320698, 0.945394,
		-0.279738, 0.903823, 0.323806,
		26.752844, 34.568695, 36.962036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.465151, 33.798157, 37.247952>,  <26.948660, 33.936016, 36.735371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.465151, 33.798157, 37.247952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386196, 34.182747, 37.171421>,  <26.338823, 34.413502, 37.125504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386196, 34.182747, 37.171421>,  <26.465151, 33.798157, 37.247952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386196, 34.182747, 37.171421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968984, -0.161749, 0.186834,
		0.148689, 0.222272, 0.963580,
		-0.197386, 0.961474, -0.191328,
		26.326981, 34.471188, 37.114021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.806932, 33.943947, 37.623558>,  <26.465151, 33.798157, 37.247952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.806932, 33.943947, 37.623558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.818615, 34.211857, 37.326763>,  <25.825624, 34.372604, 37.148685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.818615, 34.211857, 37.326763>,  <25.806932, 33.943947, 37.623558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.818615, 34.211857, 37.326763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972880, -0.151357, -0.174919,
		-0.229462, 0.726976, 0.647188,
		0.029205, 0.669773, -0.741991,
		25.827377, 34.412788, 37.104164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.175404, 34.202972, 37.666767>,  <25.806932, 33.943947, 37.623558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.175404, 34.202972, 37.666767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.312660, 34.304413, 37.305008>,  <25.395014, 34.365276, 37.087952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.312660, 34.304413, 37.305008>,  <25.175404, 34.202972, 37.666767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.312660, 34.304413, 37.305008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935581, 0.177699, -0.305141,
		0.083326, 0.950846, 0.298242,
		0.343140, 0.253604, -0.904401,
		25.415602, 34.380493, 37.033688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.725195, 34.757946, 37.513885>,  <25.175404, 34.202972, 37.666767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.725195, 34.757946, 37.513885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.891144, 34.697937, 37.154915>,  <24.990713, 34.661930, 36.939533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.891144, 34.697937, 37.154915>,  <24.725195, 34.757946, 37.513885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.891144, 34.697937, 37.154915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812940, 0.381880, -0.439655,
		0.408669, 0.911954, 0.036470,
		0.414872, -0.150025, -0.897426,
		25.015606, 34.652931, 36.885689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.889730, 35.371010, 37.153549>,  <24.725195, 34.757946, 37.513885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.889730, 35.371010, 37.153549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.789499, 35.071632, 36.907936>,  <24.729361, 34.892006, 36.760567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.789499, 35.071632, 36.907936>,  <24.889730, 35.371010, 37.153549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.789499, 35.071632, 36.907936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796918, 0.519596, -0.308125,
		0.549665, 0.412126, -0.726650,
		-0.250578, -0.748446, -0.614035,
		24.714325, 34.847099, 36.723724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.189016, 35.492023, 37.297421>,  <24.889730, 35.371010, 37.153549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.189016, 35.492023, 37.297421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.208578, 35.134590, 37.118931>,  <24.220316, 34.920132, 37.011837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.208578, 35.134590, 37.118931>,  <24.189016, 35.492023, 37.297421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.208578, 35.134590, 37.118931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902928, 0.230549, -0.362724,
		0.427001, -0.385170, 0.818116,
		0.048905, -0.893583, -0.446226,
		24.223249, 34.866516, 36.985062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.469755, 35.369839, 36.529320>,  <24.189016, 35.492023, 37.297421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.469755, 35.369839, 36.529320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.806553, 35.155441, 36.504799>,  <25.008631, 35.026802, 36.490086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.806553, 35.155441, 36.504799>,  <24.469755, 35.369839, 36.529320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.806553, 35.155441, 36.504799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148798, -0.121498, -0.981375,
		0.518562, 0.835434, -0.182055,
		0.841993, -0.535993, -0.061306,
		25.059151, 34.994644, 36.486408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.967505, 35.731300, 36.100140>,  <24.469755, 35.369839, 36.529320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.967505, 35.731300, 36.100140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.017382, 35.336609, 36.058529>,  <25.047308, 35.099796, 36.033562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.017382, 35.336609, 36.058529>,  <24.967505, 35.731300, 36.100140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.017382, 35.336609, 36.058529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079703, 0.094543, -0.992325,
		0.988989, 0.132028, -0.066856,
		0.124694, -0.986727, -0.104025,
		25.054790, 35.040592, 36.027321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.397106, 35.706459, 35.527725>,  <24.967505, 35.731300, 36.100140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.397106, 35.706459, 35.527725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216351, 35.351803, 35.567055>,  <25.107897, 35.139008, 35.590652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.216351, 35.351803, 35.567055>,  <25.397106, 35.706459, 35.527725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.216351, 35.351803, 35.567055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200532, -0.006436, -0.979666,
		0.869244, -0.462416, -0.174891,
		-0.451888, -0.886640, 0.098324,
		25.080784, 35.085812, 35.596554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.731146, 35.135372, 34.952827>,  <25.397106, 35.706459, 35.527725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.731146, 35.135372, 34.952827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356600, 35.030312, 35.045979>,  <25.131872, 34.967274, 35.101871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.356600, 35.030312, 35.045979>,  <25.731146, 35.135372, 34.952827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.356600, 35.030312, 35.045979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225924, -0.056823, -0.972486,
		0.268662, -0.963215, -0.006133,
		-0.936365, -0.262655, 0.232880,
		25.075691, 34.951515, 35.115841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.550770, 34.519978, 34.567440>,  <25.731146, 35.135372, 34.952827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.550770, 34.519978, 34.567440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.266678, 34.793644, 34.633770>,  <25.096224, 34.957844, 34.673569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.266678, 34.793644, 34.633770>,  <25.550770, 34.519978, 34.567440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.266678, 34.793644, 34.633770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083517, 0.152006, -0.984845,
		-0.699001, -0.713313, -0.050820,
		-0.710227, 0.684163, 0.165826,
		25.053610, 34.998894, 34.683517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.855389, 33.919449, 34.126354>,  <25.550770, 34.519978, 34.567440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.855389, 33.919449, 34.126354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.187679, 33.872108, 34.343937>,  <26.387054, 33.843704, 34.474487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.187679, 33.872108, 34.343937>,  <25.855389, 33.919449, 34.126354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.187679, 33.872108, 34.343937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197704, -0.850718, -0.487023,
		0.520388, 0.512125, -0.683318,
		0.830728, -0.118347, 0.543953,
		26.436897, 33.836605, 34.507122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367023, 33.855625, 33.631927>,  <25.855389, 33.919449, 34.126354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367023, 33.855625, 33.631927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455135, 33.669960, 33.975098>,  <26.508003, 33.558559, 34.181000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455135, 33.669960, 33.975098>,  <26.367023, 33.855625, 33.631927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455135, 33.669960, 33.975098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219345, -0.833430, -0.507229,
		0.950455, 0.299914, -0.081777,
		0.220280, -0.464161, 0.857922,
		26.521219, 33.530712, 34.232475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.996634, 33.401600, 33.449078>,  <26.367023, 33.855625, 33.631927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.996634, 33.401600, 33.449078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795893, 33.243130, 33.756630>,  <26.675447, 33.148048, 33.941162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795893, 33.243130, 33.756630>,  <26.996634, 33.401600, 33.449078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795893, 33.243130, 33.756630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066091, -0.868771, -0.490784,
		0.862424, -0.297119, 0.409812,
		-0.501854, -0.396179, 0.768885,
		26.645336, 33.124275, 33.987297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414972, 32.831299, 33.540150>,  <26.996634, 33.401600, 33.449078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414972, 32.831299, 33.540150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085100, 32.732738, 33.743793>,  <26.887177, 32.673603, 33.865978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.085100, 32.732738, 33.743793>,  <27.414972, 32.831299, 33.540150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.085100, 32.732738, 33.743793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004739, -0.903101, -0.429403,
		0.565580, -0.351707, 0.745937,
		-0.824680, -0.246396, 0.509109,
		26.837696, 32.658821, 33.896526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.553183, 32.239090, 33.783352>,  <27.414972, 32.831299, 33.540150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.553183, 32.239090, 33.783352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153414, 32.248711, 33.773739>,  <26.913553, 32.254482, 33.767971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153414, 32.248711, 33.773739>,  <27.553183, 32.239090, 33.783352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153414, 32.248711, 33.773739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001273, -0.732769, -0.680477,
		-0.033976, -0.680053, 0.732376,
		-0.999422, 0.024052, -0.024031,
		26.853588, 32.255928, 33.766529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.093645, 31.870499, 34.326149>,  <27.553183, 32.239090, 33.783352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.093645, 31.870499, 34.326149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750845, 31.904055, 34.529526>,  <26.545164, 31.924189, 34.651550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.750845, 31.904055, 34.529526>,  <27.093645, 31.870499, 34.326149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750845, 31.904055, 34.529526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492177, -0.425579, -0.759371,
		0.152676, -0.901024, 0.406012,
		-0.857002, 0.083892, 0.508439,
		26.493744, 31.929222, 34.682056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.707275, 31.267437, 34.472607>,  <27.093645, 31.870499, 34.326149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.707275, 31.267437, 34.472607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451540, 31.573944, 34.447056>,  <26.298098, 31.757849, 34.431725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451540, 31.573944, 34.447056>,  <26.707275, 31.267437, 34.472607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451540, 31.573944, 34.447056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444631, -0.436195, -0.782328,
		-0.627334, -0.471772, 0.619583,
		-0.639339, 0.766267, -0.063875,
		26.259739, 31.803823, 34.427895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041594, 30.979429, 34.563404>,  <26.707275, 31.267437, 34.472607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.041594, 30.979429, 34.563404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.038242, 31.284582, 34.304810>,  <26.036232, 31.467674, 34.149654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.038242, 31.284582, 34.304810>,  <26.041594, 30.979429, 34.563404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.038242, 31.284582, 34.304810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460450, -0.576830, -0.674724,
		-0.887646, 0.292021, 0.356101,
		-0.008376, 0.762883, -0.646482,
		26.035728, 31.513447, 34.110867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.353935, 30.945354, 34.187309>,  <26.041594, 30.979429, 34.563404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.353935, 30.945354, 34.187309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623608, 31.148451, 33.972763>,  <25.785410, 31.270308, 33.844036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.623608, 31.148451, 33.972763>,  <25.353935, 30.945354, 34.187309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.623608, 31.148451, 33.972763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159748, -0.608780, -0.777089,
		-0.721084, 0.609580, -0.329317,
		0.674179, 0.507739, -0.536361,
		25.825861, 31.300772, 33.811855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.464800, 30.893501, 33.479954>,  <25.353935, 30.945354, 34.187309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.464800, 30.893501, 33.479954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.277452, 30.591377, 33.663319>,  <25.165045, 30.410103, 33.773338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.277452, 30.591377, 33.663319>,  <25.464800, 30.893501, 33.479954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.277452, 30.591377, 33.663319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879267, -0.449390, 0.157916,
		0.086728, 0.477026, 0.874600,
		-0.468366, -0.755311, 0.458408,
		25.136942, 30.364784, 33.800842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.804035, 30.224695, 33.230869>,  <25.464800, 30.893501, 33.479954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.804035, 30.224695, 33.230869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925884, 30.449785, 32.923481>,  <25.998993, 30.584839, 32.739048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.925884, 30.449785, 32.923481>,  <25.804035, 30.224695, 33.230869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.925884, 30.449785, 32.923481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354754, 0.681736, 0.639834,
		0.883943, -0.467525, 0.008043,
		0.304622, 0.562723, -0.768472,
		26.017271, 30.618603, 32.692940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.480555, 30.566603, 33.423058>,  <25.804035, 30.224695, 33.230869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.480555, 30.566603, 33.423058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308405, 30.793610, 33.142284>,  <26.205114, 30.929813, 32.973820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.308405, 30.793610, 33.142284>,  <26.480555, 30.566603, 33.423058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.308405, 30.793610, 33.142284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150172, 0.811810, 0.564281,
		0.890071, 0.137442, -0.434607,
		-0.430374, 0.567516, -0.701928,
		26.179293, 30.963865, 32.931705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.843292, 31.269266, 33.257511>,  <26.480555, 30.566603, 33.423058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.843292, 31.269266, 33.257511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444807, 31.290852, 33.230240>,  <26.205715, 31.303802, 33.213879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.444807, 31.290852, 33.230240>,  <26.843292, 31.269266, 33.257511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.444807, 31.290852, 33.230240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006312, 0.826927, 0.562275,
		0.086718, 0.559715, -0.824136,
		-0.996213, 0.053961, -0.068177,
		26.145943, 31.307039, 33.209785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.645332, 31.961536, 33.068996>,  <26.843292, 31.269266, 33.257511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.645332, 31.961536, 33.068996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377171, 31.768261, 33.294239>,  <26.216274, 31.652296, 33.429386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377171, 31.768261, 33.294239>,  <26.645332, 31.961536, 33.068996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.377171, 31.768261, 33.294239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123196, 0.675891, 0.726632,
		-0.731699, 0.556508, -0.393592,
		-0.670402, -0.483187, 0.563109,
		26.176050, 31.623304, 33.463173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.040499, 32.397560, 33.135143>,  <26.645332, 31.961536, 33.068996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.040499, 32.397560, 33.135143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099197, 32.148247, 33.442387>,  <26.134417, 31.998659, 33.626732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099197, 32.148247, 33.442387>,  <26.040499, 32.397560, 33.135143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099197, 32.148247, 33.442387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073836, 0.781249, 0.619837,
		-0.986414, -0.034246, 0.160667,
		0.146748, -0.623279, 0.768107,
		26.143221, 31.961264, 33.672817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.563684, 32.478256, 33.756702>,  <26.040499, 32.397560, 33.135143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.563684, 32.478256, 33.756702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941723, 32.361889, 33.816242>,  <26.168547, 32.292068, 33.851967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.941723, 32.361889, 33.816242>,  <25.563684, 32.478256, 33.756702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.941723, 32.361889, 33.816242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214711, 0.896180, 0.388278,
		-0.246357, -0.335000, 0.909441,
		0.945097, -0.290922, 0.148852,
		26.225252, 32.274612, 33.860897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.687277, 32.417645, 34.478230>,  <25.563684, 32.478256, 33.756702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.687277, 32.417645, 34.478230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041441, 32.485271, 34.305042>,  <26.253941, 32.525848, 34.201130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041441, 32.485271, 34.305042>,  <25.687277, 32.417645, 34.478230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.041441, 32.485271, 34.305042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146863, 0.782018, 0.605705,
		0.440995, -0.599885, 0.667578,
		0.885412, 0.169071, -0.432967,
		26.307064, 32.535992, 34.175152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.144878, 32.499249, 35.002113>,  <25.687277, 32.417645, 34.478230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.144878, 32.499249, 35.002113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275322, 32.699604, 34.681423>,  <26.353588, 32.819817, 34.489010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.275322, 32.699604, 34.681423>,  <26.144878, 32.499249, 35.002113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.275322, 32.699604, 34.681423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153990, 0.808615, 0.567828,
		0.932706, -0.308631, 0.186565,
		0.326108, 0.500887, -0.801726,
		26.373154, 32.849869, 34.440907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.700325, 32.878120, 35.275024>,  <26.144878, 32.499249, 35.002113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.700325, 32.878120, 35.275024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629961, 33.100250, 34.949898>,  <26.587742, 33.233528, 34.754822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629961, 33.100250, 34.949898>,  <26.700325, 32.878120, 35.275024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.629961, 33.100250, 34.949898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113709, 0.831631, 0.543563,
		0.977817, 0.003194, -0.209437,
		-0.175911, 0.555320, -0.812819,
		26.577188, 33.266846, 34.706051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.287882, 33.372318, 35.238056>,  <26.700325, 32.878120, 35.275024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.287882, 33.372318, 35.238056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961832, 33.516514, 35.056675>,  <26.766203, 33.603031, 34.947845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961832, 33.516514, 35.056675>,  <27.287882, 33.372318, 35.238056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961832, 33.516514, 35.056675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116948, 0.869070, 0.480667,
		0.567359, 0.338772, -0.750558,
		-0.815124, 0.360487, -0.453456,
		26.717295, 33.624660, 34.920639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.492844, 33.940723, 34.725418>,  <27.287882, 33.372318, 35.238056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.492844, 33.940723, 34.725418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121527, 33.980854, 34.868641>,  <26.898737, 34.004932, 34.954575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.121527, 33.980854, 34.868641>,  <27.492844, 33.940723, 34.725418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.121527, 33.980854, 34.868641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211498, 0.934447, 0.286491,
		-0.305846, 0.341677, -0.888659,
		-0.928292, 0.100327, 0.358061,
		26.843039, 34.010952, 34.976059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205055, 34.504559, 34.578056>,  <27.492844, 33.940723, 34.725418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205055, 34.504559, 34.578056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029089, 34.426113, 34.928600>,  <26.923510, 34.379044, 35.138927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.029089, 34.426113, 34.928600>,  <27.205055, 34.504559, 34.578056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.029089, 34.426113, 34.928600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282258, 0.896212, 0.342248,
		-0.852527, 0.397922, -0.338904,
		-0.439918, -0.196118, 0.876362,
		26.897114, 34.367279, 35.191509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627144, 35.044559, 34.196495>,  <27.205055, 34.504559, 34.578056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627144, 35.044559, 34.196495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782076, 35.229965, 34.515274>,  <26.875034, 35.341209, 34.706543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782076, 35.229965, 34.515274>,  <26.627144, 35.044559, 34.196495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782076, 35.229965, 34.515274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895578, 0.016076, -0.444613,
		-0.218898, 0.885942, -0.408890,
		0.387328, 0.463517, 0.796949,
		26.898273, 35.369022, 34.754360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.995060, 35.666668, 34.084084>,  <26.627144, 35.044559, 34.196495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.995060, 35.666668, 34.084084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136415, 35.512928, 34.425232>,  <27.221228, 35.420685, 34.629921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.136415, 35.512928, 34.425232>,  <26.995060, 35.666668, 34.084084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.136415, 35.512928, 34.425232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915610, -0.044789, -0.399566,
		0.191773, 0.922100, 0.336087,
		0.353387, -0.384351, 0.852873,
		27.242432, 35.397621, 34.681095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.461206, 36.128731, 34.570999>,  <26.995060, 35.666668, 34.084084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.461206, 36.128731, 34.570999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547205, 35.738323, 34.584602>,  <27.598804, 35.504078, 34.592762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547205, 35.738323, 34.584602>,  <27.461206, 36.128731, 34.570999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547205, 35.738323, 34.584602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886792, 0.180518, -0.425457,
		0.409117, 0.121626, 0.904340,
		0.214996, -0.976023, 0.034003,
		27.611704, 35.445515, 34.594803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166471, 36.081371, 34.692921>,  <27.461206, 36.128731, 34.570999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166471, 36.081371, 34.692921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.055578, 35.722530, 34.555313>,  <27.989042, 35.507225, 34.472748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.055578, 35.722530, 34.555313>,  <28.166471, 36.081371, 34.692921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.055578, 35.722530, 34.555313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858356, -0.070377, -0.508205,
		0.431701, -0.436180, 0.789545,
		-0.277234, -0.897103, -0.344016,
		27.972408, 35.453400, 34.452106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627680, 35.422184, 34.803829>,  <28.166471, 36.081371, 34.692921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627680, 35.422184, 34.803829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404415, 35.336147, 34.483280>,  <28.270456, 35.284527, 34.290951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.404415, 35.336147, 34.483280>,  <28.627680, 35.422184, 34.803829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.404415, 35.336147, 34.483280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816007, 0.032653, -0.577120,
		0.150299, -0.976049, 0.157288,
		-0.558161, -0.215088, -0.801370,
		28.236967, 35.271622, 34.242870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.962831, 34.830517, 34.456871>,  <28.627680, 35.422184, 34.803829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.962831, 34.830517, 34.456871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732971, 35.024151, 34.192917>,  <28.595055, 35.140331, 34.034546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.732971, 35.024151, 34.192917>,  <28.962831, 34.830517, 34.456871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732971, 35.024151, 34.192917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759038, 0.013765, -0.650901,
		-0.306007, -0.874914, -0.375347,
		-0.574649, 0.484083, -0.659881,
		28.560577, 35.169376, 33.994953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104305, 34.472797, 33.823456>,  <28.962831, 34.830517, 34.456871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.104305, 34.472797, 33.823456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000511, 34.856384, 33.777752>,  <28.938234, 35.086536, 33.750332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.000511, 34.856384, 33.777752>,  <29.104305, 34.472797, 33.823456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000511, 34.856384, 33.777752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813523, 0.153294, -0.560965,
		-0.520430, -0.238513, -0.819917,
		-0.259486, 0.958964, -0.114257,
		28.922665, 35.144073, 33.743473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.130375, 34.553349, 33.087006>,  <29.104305, 34.472797, 33.823456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.130375, 34.553349, 33.087006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203180, 34.897842, 33.276806>,  <29.246864, 35.104538, 33.390686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203180, 34.897842, 33.276806>,  <29.130375, 34.553349, 33.087006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203180, 34.897842, 33.276806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888575, 0.062583, -0.454442,
		-0.421076, 0.504345, -0.753878,
		0.182015, 0.861232, 0.474501,
		29.257786, 35.156212, 33.419155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334541, 35.060711, 32.529366>,  <29.130375, 34.553349, 33.087006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334541, 35.060711, 32.529366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472052, 35.154747, 32.893024>,  <29.554558, 35.211170, 33.111221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.472052, 35.154747, 32.893024>,  <29.334541, 35.060711, 32.529366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472052, 35.154747, 32.893024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909966, 0.155696, -0.384344,
		-0.231907, 0.959422, -0.160403,
		0.343774, 0.235093, 0.909148,
		29.575184, 35.225277, 33.165768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138159, 34.938091, 32.573780>,  <29.334541, 35.060711, 32.529366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138159, 34.938091, 32.573780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461960, 35.154869, 32.664116>,  <30.656240, 35.284935, 32.718319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461960, 35.154869, 32.664116>,  <30.138159, 34.938091, 32.573780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461960, 35.154869, 32.664116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557023, -0.587340, -0.587161,
		-0.185566, 0.601104, -0.777328,
		0.809501, 0.541947, 0.225839,
		30.704809, 35.317451, 32.731869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646879, 35.089634, 31.901651>,  <30.138159, 34.938091, 32.573780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646879, 35.089634, 31.901651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855749, 35.093002, 32.242771>,  <30.981071, 35.095024, 32.447441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855749, 35.093002, 32.242771>,  <30.646879, 35.089634, 31.901651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855749, 35.093002, 32.242771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633408, -0.673417, -0.381188,
		0.571078, 0.739215, -0.356975,
		0.522173, 0.008422, 0.852798,
		31.012402, 35.095528, 32.498611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266100, 34.898727, 31.699034>,  <30.646879, 35.089634, 31.901651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266100, 34.898727, 31.699034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276651, 34.829376, 32.092834>,  <31.282982, 34.787766, 32.329113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.276651, 34.829376, 32.092834>,  <31.266100, 34.898727, 31.699034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.276651, 34.829376, 32.092834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647241, -0.747581, -0.149000,
		0.761829, 0.641140, 0.092500,
		0.026379, -0.173382, 0.984501,
		31.284565, 34.777363, 32.388184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905220, 35.162804, 31.838495>,  <31.266100, 34.898727, 31.699034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905220, 35.162804, 31.838495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790827, 34.869591, 32.085358>,  <31.722191, 34.693665, 32.233475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790827, 34.869591, 32.085358>,  <31.905220, 35.162804, 31.838495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790827, 34.869591, 32.085358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778890, -0.552979, -0.295880,
		0.558163, 0.396079, 0.729092,
		-0.285981, -0.733032, 0.617154,
		31.705032, 34.649681, 32.270504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.351822, 35.090900, 32.412647>,  <31.905220, 35.162804, 31.838495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.351822, 35.090900, 32.412647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182148, 34.747177, 32.298340>,  <32.080345, 34.540943, 32.229755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182148, 34.747177, 32.298340>,  <32.351822, 35.090900, 32.412647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182148, 34.747177, 32.298340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905574, -0.402169, -0.134890,
		0.000985, -0.316000, 0.948759,
		-0.424186, -0.859304, -0.285766,
		32.054893, 34.489388, 32.212608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.634964, 34.418308, 32.924011>,  <32.351822, 35.090900, 32.412647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.634964, 34.418308, 32.924011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528263, 34.378883, 32.540527>,  <32.464241, 34.355228, 32.310436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528263, 34.378883, 32.540527>,  <32.634964, 34.418308, 32.924011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528263, 34.378883, 32.540527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888272, -0.411085, -0.204894,
		-0.373918, -0.906253, 0.197205,
		-0.266753, -0.098558, -0.958712,
		32.448238, 34.349316, 32.252914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623379, 33.714100, 32.638393>,  <32.634964, 34.418308, 32.924011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623379, 33.714100, 32.638393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724354, 33.978935, 32.356140>,  <32.784939, 34.137836, 32.186787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.724354, 33.978935, 32.356140>,  <32.623379, 33.714100, 32.638393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724354, 33.978935, 32.356140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870965, -0.473174, -0.132388,
		-0.421539, -0.581161, -0.696101,
		0.252438, 0.662086, -0.705632,
		32.800087, 34.177563, 32.144451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997128, 33.411488, 32.070038>,  <32.623379, 33.714100, 32.638393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997128, 33.411488, 32.070038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106850, 33.795601, 32.049595>,  <33.172684, 34.026070, 32.037331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106850, 33.795601, 32.049595>,  <32.997128, 33.411488, 32.070038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106850, 33.795601, 32.049595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958535, -0.277303, -0.065683,
		-0.077246, -0.030971, -0.996531,
		0.274307, 0.960283, -0.051107,
		33.189140, 34.083687, 32.034264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483974, 33.390045, 31.473877>,  <32.997128, 33.411488, 32.070038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483974, 33.390045, 31.473877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574261, 33.718792, 31.683102>,  <33.628433, 33.916039, 31.808638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574261, 33.718792, 31.683102>,  <33.483974, 33.390045, 31.473877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574261, 33.718792, 31.683102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963654, -0.267124, 0.003880,
		0.142912, 0.503176, -0.852285,
		0.225713, 0.821863, 0.523063,
		33.641975, 33.965351, 31.840021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029514, 33.592285, 31.124081>,  <33.483974, 33.390045, 31.473877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029514, 33.592285, 31.124081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062302, 33.735302, 31.496197>,  <34.081974, 33.821114, 31.719467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062302, 33.735302, 31.496197>,  <34.029514, 33.592285, 31.124081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062302, 33.735302, 31.496197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978279, -0.207191, -0.006563,
		0.190401, 0.910623, -0.366761,
		0.081966, 0.357545, 0.930292,
		34.086891, 33.842564, 31.775284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666492, 33.959724, 31.051523>,  <34.029514, 33.592285, 31.124081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666492, 33.959724, 31.051523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622337, 33.951820, 31.448999>,  <34.595844, 33.947079, 31.687485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.622337, 33.951820, 31.448999>,  <34.666492, 33.959724, 31.051523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622337, 33.951820, 31.448999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985296, -0.133363, 0.106803,
		0.130411, 0.990870, 0.034194,
		-0.110388, -0.019763, 0.993692,
		34.589222, 33.945892, 31.747107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248116, 34.333118, 31.248068>,  <34.666492, 33.959724, 31.051523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248116, 34.333118, 31.248068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123760, 34.133564, 31.571663>,  <35.049149, 34.013832, 31.765820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123760, 34.133564, 31.571663>,  <35.248116, 34.333118, 31.248068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123760, 34.133564, 31.571663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944977, -0.253424, 0.206867,
		0.101814, 0.828787, 0.550223,
		-0.310889, -0.498886, 0.808987,
		35.030495, 33.983898, 31.814360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718834, 34.530800, 31.776201>,  <35.248116, 34.333118, 31.248068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718834, 34.530800, 31.776201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544662, 34.196262, 31.909426>,  <35.440159, 33.995541, 31.989361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.544662, 34.196262, 31.909426>,  <35.718834, 34.530800, 31.776201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.544662, 34.196262, 31.909426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887711, -0.337429, 0.313228,
		-0.149584, 0.432048, 0.889359,
		-0.435425, -0.836347, 0.333059,
		35.414036, 33.945358, 32.009342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115517, 34.336578, 32.426502>,  <35.718834, 34.530800, 31.776201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115517, 34.336578, 32.426502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935562, 34.010067, 32.281567>,  <35.827591, 33.814159, 32.194607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935562, 34.010067, 32.281567>,  <36.115517, 34.336578, 32.426502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935562, 34.010067, 32.281567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845568, -0.519892, 0.121356,
		-0.287436, -0.251783, 0.924114,
		-0.449884, -0.816283, -0.362336,
		35.800598, 33.765182, 32.172867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217621, 33.662109, 32.883434>,  <36.115517, 34.336578, 32.426502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217621, 33.662109, 32.883434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168381, 33.562351, 32.499218>,  <36.138836, 33.502495, 32.268688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168381, 33.562351, 32.499218>,  <36.217621, 33.662109, 32.883434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168381, 33.562351, 32.499218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919371, -0.393076, -0.015762,
		-0.373636, -0.885037, 0.277678,
		-0.123099, -0.249399, -0.960545,
		36.131451, 33.487530, 32.211056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500072, 33.003769, 32.783329>,  <36.217621, 33.662109, 32.883434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500072, 33.003769, 32.783329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454025, 33.121452, 32.403816>,  <36.426395, 33.192062, 32.176109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.454025, 33.121452, 32.403816>,  <36.500072, 33.003769, 32.783329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454025, 33.121452, 32.403816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858559, -0.450930, -0.244002,
		-0.499623, -0.842675, -0.200688,
		-0.115118, 0.294212, -0.948782,
		36.419491, 33.209717, 32.119183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739590, 32.390957, 32.436249>,  <36.500072, 33.003769, 32.783329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739590, 32.390957, 32.436249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755955, 32.657829, 32.138741>,  <36.765774, 32.817951, 31.960236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755955, 32.657829, 32.138741>,  <36.739590, 32.390957, 32.436249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755955, 32.657829, 32.138741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720325, -0.535568, -0.440793,
		-0.692429, -0.517725, -0.502497,
		0.040912, 0.667179, -0.743773,
		36.768227, 32.857983, 31.915609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823544, 31.986219, 31.831131>,  <36.739590, 32.390957, 32.436249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823544, 31.986219, 31.831131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913548, 32.355209, 31.705652>,  <36.967548, 32.576603, 31.630365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.913548, 32.355209, 31.705652>,  <36.823544, 31.986219, 31.831131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913548, 32.355209, 31.705652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732440, -0.372462, -0.569915,
		-0.642574, -0.101528, -0.759467,
		0.225010, 0.922477, -0.313698,
		36.981052, 32.631954, 31.611544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923683, 31.949497, 31.070406>,  <36.823544, 31.986219, 31.831131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923683, 31.949497, 31.070406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127567, 32.261665, 31.215258>,  <37.249897, 32.448967, 31.302168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.127567, 32.261665, 31.215258>,  <36.923683, 31.949497, 31.070406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127567, 32.261665, 31.215258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779884, -0.241391, -0.577504,
		-0.363282, 0.576779, -0.731678,
		0.509713, 0.780421, 0.362127,
		37.280479, 32.495792, 31.323896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110882, 32.196613, 30.454309>,  <36.923683, 31.949497, 31.070406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110882, 32.196613, 30.454309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353142, 32.305977, 30.753223>,  <37.498497, 32.371593, 30.932571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353142, 32.305977, 30.753223>,  <37.110882, 32.196613, 30.454309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353142, 32.305977, 30.753223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793729, -0.141047, -0.591693,
		-0.056371, 0.951501, -0.302437,
		0.605654, 0.273408, 0.747283,
		37.534840, 32.388000, 30.977407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465519, 32.907417, 30.362602>,  <37.110882, 32.196613, 30.454309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465519, 32.907417, 30.362602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679024, 32.640484, 30.570358>,  <37.807125, 32.480324, 30.695011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.679024, 32.640484, 30.570358>,  <37.465519, 32.907417, 30.362602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679024, 32.640484, 30.570358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685670, -0.017940, -0.727691,
		0.494930, 0.744544, 0.447995,
		0.533761, -0.667333, 0.519390,
		37.839153, 32.440285, 30.726175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128277, 33.027809, 30.158787>,  <37.465519, 32.907417, 30.362602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128277, 33.027809, 30.158787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133610, 32.671688, 30.340855>,  <38.136810, 32.458015, 30.450096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.133610, 32.671688, 30.340855>,  <38.128277, 33.027809, 30.158787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133610, 32.671688, 30.340855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846181, -0.232476, -0.479513,
		0.532729, 0.391551, 0.750259,
		0.013337, -0.890305, 0.455169,
		38.137611, 32.404598, 30.477406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853100, 32.884132, 30.298883>,  <38.128277, 33.027809, 30.158787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853100, 32.884132, 30.298883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681934, 32.523312, 30.321476>,  <38.579235, 32.306820, 30.335032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681934, 32.523312, 30.321476>,  <38.853100, 32.884132, 30.298883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681934, 32.523312, 30.321476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689569, -0.366239, -0.624791,
		0.584280, -0.228408, 0.778746,
		-0.427914, -0.902053, 0.056483,
		38.553558, 32.252697, 30.338421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309296, 32.351833, 30.446911>,  <38.853100, 32.884132, 30.298883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309296, 32.351833, 30.446911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026588, 32.149719, 30.248857>,  <38.856964, 32.028450, 30.130026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026588, 32.149719, 30.248857>,  <39.309296, 32.351833, 30.446911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026588, 32.149719, 30.248857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707162, -0.484904, -0.514578,
		0.019918, -0.713829, 0.700037,
		-0.706771, -0.505289, -0.495134,
		38.814556, 31.998133, 30.100317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454594, 31.586353, 30.363882>,  <39.309296, 32.351833, 30.446911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454594, 31.586353, 30.363882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182800, 31.651966, 30.077835>,  <39.019722, 31.691334, 29.906206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182800, 31.651966, 30.077835>,  <39.454594, 31.586353, 30.363882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182800, 31.651966, 30.077835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533477, -0.558678, -0.635044,
		-0.503687, -0.813002, 0.292107,
		-0.679486, 0.164031, -0.715117,
		38.978954, 31.701176, 29.863300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391350, 30.902346, 29.962175>,  <39.454594, 31.586353, 30.363882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391350, 30.902346, 29.962175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224976, 31.184807, 29.732969>,  <39.125153, 31.354284, 29.595446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224976, 31.184807, 29.732969>,  <39.391350, 30.902346, 29.962175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224976, 31.184807, 29.732969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483293, -0.362115, -0.797057,
		-0.770343, -0.608456, -0.190665,
		-0.415931, 0.706155, -0.573015,
		39.100197, 31.396654, 29.561064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188843, 30.527180, 29.440479>,  <39.391350, 30.902346, 29.962175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188843, 30.527180, 29.440479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208759, 30.908367, 29.320898>,  <39.220707, 31.137079, 29.249149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208759, 30.908367, 29.320898>,  <39.188843, 30.527180, 29.440479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208759, 30.908367, 29.320898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468944, -0.286582, -0.835441,
		-0.881824, -0.098596, -0.461157,
		0.049788, 0.952969, -0.298951,
		39.223694, 31.194258, 29.231213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989941, 30.571686, 28.767059>,  <39.188843, 30.527180, 29.440479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989941, 30.571686, 28.767059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188461, 30.917034, 28.803465>,  <39.307571, 31.124243, 28.825308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188461, 30.917034, 28.803465>,  <38.989941, 30.571686, 28.767059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188461, 30.917034, 28.803465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562511, -0.239946, -0.791206,
		-0.661264, 0.443870, -0.604739,
		0.496297, 0.863369, 0.091014,
		39.337349, 31.176044, 28.830769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122177, 30.938478, 28.081814>,  <38.989941, 30.571686, 28.767059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122177, 30.938478, 28.081814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388138, 31.092478, 28.337839>,  <39.547714, 31.184877, 28.491455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.388138, 31.092478, 28.337839>,  <39.122177, 30.938478, 28.081814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388138, 31.092478, 28.337839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730442, -0.156083, -0.664901,
		-0.156083, 0.909623, -0.384999,
		0.664901, 0.384999, 0.640065,
		39.587608, 31.207977, 28.529858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567150, 31.309244, 27.667242>,  <39.122177, 30.938478, 28.081814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567150, 31.309244, 27.667242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781563, 31.230942, 27.995718>,  <39.910210, 31.183960, 28.192804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.781563, 31.230942, 27.995718>,  <39.567150, 31.309244, 27.667242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781563, 31.230942, 27.995718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795695, -0.207823, -0.568928,
		0.282034, 0.958378, 0.044364,
		0.536028, -0.195757, 0.821190,
		39.942371, 31.172215, 28.242075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132912, 31.617504, 27.507122>,  <39.567150, 31.309244, 27.667242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132912, 31.617504, 27.507122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225506, 31.349615, 27.789366>,  <40.281063, 31.188881, 27.958712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.225506, 31.349615, 27.789366>,  <40.132912, 31.617504, 27.507122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.225506, 31.349615, 27.789366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733991, -0.355799, -0.578503,
		0.638491, 0.651828, 0.409206,
		0.231490, -0.669722, 0.705610,
		40.294952, 31.148699, 28.001049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839699, 31.654034, 27.556395>,  <40.132912, 31.617504, 27.507122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839699, 31.654034, 27.556395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784798, 31.295202, 27.724401>,  <40.751858, 31.079903, 27.825205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.784798, 31.295202, 27.724401>,  <40.839699, 31.654034, 27.556395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784798, 31.295202, 27.724401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740785, -0.374452, -0.557694,
		0.657572, 0.234600, 0.715935,
		-0.137248, -0.897078, 0.420017,
		40.743622, 31.026079, 27.850407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490051, 31.302094, 27.505188>,  <40.839699, 31.654034, 27.556395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490051, 31.302094, 27.505188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251179, 31.001451, 27.617233>,  <41.107853, 30.821066, 27.684462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251179, 31.001451, 27.617233>,  <41.490051, 31.302094, 27.505188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251179, 31.001451, 27.617233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511172, -0.625738, -0.589199,
		0.618123, -0.208672, 0.757879,
		-0.597183, -0.751604, 0.280115,
		41.072025, 30.775970, 27.701267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.945156, 30.671721, 27.616222>,  <41.490051, 31.302094, 27.505188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.945156, 30.671721, 27.616222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574505, 30.541422, 27.541134>,  <41.352112, 30.463242, 27.496080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574505, 30.541422, 27.541134>,  <41.945156, 30.671721, 27.616222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574505, 30.541422, 27.541134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353691, -0.585972, -0.729068,
		0.127493, -0.741974, 0.658195,
		-0.926633, -0.325749, -0.187722,
		41.296516, 30.443697, 27.484818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.009666, 29.950144, 27.581427>,  <41.945156, 30.671721, 27.616222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.009666, 29.950144, 27.581427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685730, 30.058916, 27.373501>,  <41.491367, 30.124180, 27.248745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.685730, 30.058916, 27.373501>,  <42.009666, 29.950144, 27.581427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.685730, 30.058916, 27.373501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284212, -0.593285, -0.753151,
		-0.513201, -0.757673, 0.403183,
		-0.809844, 0.271929, -0.519814,
		41.442776, 30.140495, 27.217556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754345, 29.372986, 27.406403>,  <42.009666, 29.950144, 27.581427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754345, 29.372986, 27.406403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591702, 29.624563, 27.141344>,  <41.494114, 29.775511, 26.982309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.591702, 29.624563, 27.141344>,  <41.754345, 29.372986, 27.406403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.591702, 29.624563, 27.141344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261168, -0.615024, -0.744001,
		-0.875478, -0.475578, 0.085813,
		-0.406608, 0.628944, -0.662646,
		41.469719, 29.813246, 26.942551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.540611, 29.016848, 26.919897>,  <41.754345, 29.372986, 27.406403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.540611, 29.016848, 26.919897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518379, 29.365574, 26.725229>,  <41.505039, 29.574810, 26.608429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.518379, 29.365574, 26.725229>,  <41.540611, 29.016848, 26.919897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518379, 29.365574, 26.725229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145226, -0.475180, -0.867821,
		-0.987836, -0.118911, -0.100200,
		-0.055580, 0.871817, -0.486669,
		41.501705, 29.627119, 26.579229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479408, 28.816885, 26.280762>,  <41.540611, 29.016848, 26.919897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479408, 28.816885, 26.280762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568546, 29.199274, 26.204388>,  <41.622028, 29.428707, 26.158564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.568546, 29.199274, 26.204388>,  <41.479408, 28.816885, 26.280762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.568546, 29.199274, 26.204388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473582, -0.277354, -0.835939,
		-0.852092, 0.095859, -0.514538,
		0.222842, 0.955974, -0.190934,
		41.635399, 29.486067, 26.147108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288792, 29.023663, 25.507048>,  <41.479408, 28.816885, 26.280762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288792, 29.023663, 25.507048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.590919, 29.219717, 25.681067>,  <41.772194, 29.337351, 25.785477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.590919, 29.219717, 25.681067>,  <41.288792, 29.023663, 25.507048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590919, 29.219717, 25.681067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576044, -0.179959, -0.797363,
		-0.312527, 0.852866, -0.418266,
		0.755315, 0.490137, 0.435046,
		41.817513, 29.366758, 25.811581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664581, 29.282839, 24.943357>,  <41.288792, 29.023663, 25.507048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664581, 29.282839, 24.943357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.930065, 29.321684, 25.240023>,  <42.089355, 29.344992, 25.418022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.930065, 29.321684, 25.240023>,  <41.664581, 29.282839, 24.943357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930065, 29.321684, 25.240023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741809, -0.212687, -0.635991,
		0.095980, 0.972283, -0.213201,
		0.663707, 0.097112, 0.741661,
		42.129177, 29.350817, 25.462521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.137203, 29.707777, 24.779291>,  <41.664581, 29.282839, 24.943357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.137203, 29.707777, 24.779291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.312962, 29.461210, 25.040661>,  <42.418415, 29.313271, 25.197483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.312962, 29.461210, 25.040661>,  <42.137203, 29.707777, 24.779291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.312962, 29.461210, 25.040661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732665, -0.174950, -0.657720,
		0.519747, 0.767738, 0.374756,
		0.439393, -0.616418, 0.653424,
		42.444778, 29.276285, 25.236689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.927006, 29.858080, 24.784330>,  <42.137203, 29.707777, 24.779291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.927006, 29.858080, 24.784330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882637, 29.492487, 24.940449>,  <42.856014, 29.273130, 25.034121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.882637, 29.492487, 24.940449>,  <42.927006, 29.858080, 24.784330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882637, 29.492487, 24.940449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814099, -0.308816, -0.491808,
		0.570034, 0.263188, 0.778327,
		-0.110922, -0.913983, 0.390297,
		42.849361, 29.218292, 25.057537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.528721, 29.644266, 24.655802>,  <42.927006, 29.858080, 24.784330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.528721, 29.644266, 24.655802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401192, 29.281340, 24.765440>,  <43.324673, 29.063583, 24.831223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.401192, 29.281340, 24.765440>,  <43.528721, 29.644266, 24.655802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401192, 29.281340, 24.765440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651625, -0.419828, -0.631766,
		0.688285, -0.022816, 0.725082,
		-0.318824, -0.907317, 0.274094,
		43.305546, 29.009144, 24.847668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108807, 29.165861, 24.858931>,  <43.528721, 29.644266, 24.655802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108807, 29.165861, 24.858931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800869, 28.958651, 24.709808>,  <43.616104, 28.834324, 24.620335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800869, 28.958651, 24.709808>,  <44.108807, 29.165861, 24.858931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800869, 28.958651, 24.709808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486575, -0.098383, -0.868081,
		0.413011, -0.849688, 0.327799,
		-0.769849, -0.518026, -0.372804,
		43.569916, 28.803244, 24.597967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.355919, 28.476080, 24.616558>,  <44.108807, 29.165861, 24.858931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.355919, 28.476080, 24.616558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999935, 28.509195, 24.437172>,  <43.786346, 28.529064, 24.329540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.999935, 28.509195, 24.437172>,  <44.355919, 28.476080, 24.616558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.999935, 28.509195, 24.437172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393739, -0.356675, -0.847203,
		-0.230092, -0.930553, 0.284830,
		-0.889959, 0.082786, -0.448464,
		43.732948, 28.534031, 24.302633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.289867, 27.872480, 24.217789>,  <44.355919, 28.476080, 24.616558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.289867, 27.872480, 24.217789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.009605, 28.114143, 24.065962>,  <43.841446, 28.259142, 23.974865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.009605, 28.114143, 24.065962>,  <44.289867, 27.872480, 24.217789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.009605, 28.114143, 24.065962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245600, -0.295254, -0.923312,
		-0.669897, -0.740147, 0.058490,
		-0.700657, 0.604159, -0.379569,
		43.799408, 28.295391, 23.952091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.976501, 27.548113, 23.732454>,  <44.289867, 27.872480, 24.217789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.976501, 27.548113, 23.732454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874565, 27.924156, 23.641895>,  <43.813404, 28.149782, 23.587559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874565, 27.924156, 23.641895>,  <43.976501, 27.548113, 23.732454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.874565, 27.924156, 23.641895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033899, -0.225300, -0.973699,
		-0.966389, -0.255811, 0.025546,
		-0.254838, 0.940107, -0.226400,
		43.798115, 28.206188, 23.573975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449173, 27.465818, 23.151270>,  <43.976501, 27.548113, 23.732454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.449173, 27.465818, 23.151270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.628990, 27.822979, 23.141167>,  <43.736881, 28.037275, 23.135105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.628990, 27.822979, 23.141167>,  <43.449173, 27.465818, 23.151270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.628990, 27.822979, 23.141167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196888, -0.126627, -0.972214,
		-0.871289, 0.432081, -0.232726,
		0.449545, 0.892901, -0.025257,
		43.763855, 28.090849, 23.133589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.141815, 27.807140, 22.639454>,  <43.449173, 27.465818, 23.151270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.141815, 27.807140, 22.639454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482197, 28.011915, 22.686443>,  <43.686424, 28.134781, 22.714638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.482197, 28.011915, 22.686443>,  <43.141815, 27.807140, 22.639454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482197, 28.011915, 22.686443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180912, -0.075703, -0.980581,
		-0.493103, 0.855681, -0.157035,
		0.850953, 0.511937, 0.117474,
		43.737484, 28.165497, 22.721685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.242615, 28.437235, 22.179586>,  <43.141815, 27.807140, 22.639454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.242615, 28.437235, 22.179586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.530842, 28.178499, 22.279495>,  <43.703777, 28.023258, 22.339441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.530842, 28.178499, 22.279495>,  <43.242615, 28.437235, 22.179586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530842, 28.178499, 22.279495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104263, -0.255052, -0.961290,
		0.685503, 0.718714, -0.116340,
		0.720565, -0.646837, 0.249774,
		43.747013, 27.984447, 22.354427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.831345, 28.598475, 21.799282>,  <43.242615, 28.437235, 22.179586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.831345, 28.598475, 21.799282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842766, 28.209276, 21.890902>,  <43.849617, 27.975758, 21.945873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842766, 28.209276, 21.890902>,  <43.831345, 28.598475, 21.799282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.842766, 28.209276, 21.890902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125759, -0.223825, -0.966482,
		0.991650, 0.056401, 0.115972,
		0.028553, -0.972996, 0.229049,
		43.851330, 27.917377, 21.959616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403957, 28.324741, 21.507082>,  <43.831345, 28.598475, 21.799282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403957, 28.324741, 21.507082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174526, 28.000984, 21.557514>,  <44.036869, 27.806730, 21.587774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.174526, 28.000984, 21.557514>,  <44.403957, 28.324741, 21.507082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.174526, 28.000984, 21.557514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032492, -0.176276, -0.983804,
		0.818509, -0.560188, 0.127406,
		-0.573575, -0.809392, 0.126082,
		44.002453, 27.758167, 21.595339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.556438, 27.966406, 20.905296>,  <44.403957, 28.324741, 21.507082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.556438, 27.966406, 20.905296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333130, 27.710957, 21.117144>,  <44.199146, 27.557686, 21.244251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.333130, 27.710957, 21.117144>,  <44.556438, 27.966406, 20.905296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.333130, 27.710957, 21.117144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062649, -0.604083, -0.794455,
		0.827290, -0.476700, 0.297232,
		-0.558270, -0.638624, 0.529616,
		44.165649, 27.519369, 21.276028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.277889, 27.918381, 20.689505>,  <44.556438, 27.966406, 20.905296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.277889, 27.918381, 20.689505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.670349, 27.913675, 20.766670>,  <45.905823, 27.910852, 20.812969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.670349, 27.913675, 20.766670>,  <45.277889, 27.918381, 20.689505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.670349, 27.913675, 20.766670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059594, 0.931099, 0.359866,
		-0.183855, -0.364577, 0.912842,
		0.981145, -0.011763, 0.192914,
		45.964691, 27.910147, 20.824545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.369621, 28.098944, 21.329042>,  <45.277889, 27.918381, 20.689505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.369621, 28.098944, 21.329042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.677696, 28.232491, 21.111658>,  <45.862541, 28.312618, 20.981228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.677696, 28.232491, 21.111658>,  <45.369621, 28.098944, 21.329042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.677696, 28.232491, 21.111658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108890, 0.908376, 0.403729,
		0.628459, -0.251768, 0.735971,
		0.770184, 0.333867, -0.543462,
		45.908752, 28.332651, 20.948620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.831787, 28.389517, 21.831348>,  <45.369621, 28.098944, 21.329042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.831787, 28.389517, 21.831348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.869957, 28.577127, 21.480143>,  <45.892857, 28.689693, 21.269419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.869957, 28.577127, 21.480143>,  <45.831787, 28.389517, 21.831348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.869957, 28.577127, 21.480143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262397, 0.862694, 0.432326,
		0.960231, 0.189135, 0.205390,
		0.095420, 0.469027, -0.878014,
		45.898582, 28.717836, 21.216738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.978401, 29.018747, 22.095259>,  <45.831787, 28.389517, 21.831348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.978401, 29.018747, 22.095259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850079, 29.054504, 21.718092>,  <45.773087, 29.075958, 21.491793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850079, 29.054504, 21.718092>,  <45.978401, 29.018747, 22.095259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.850079, 29.054504, 21.718092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547157, 0.795121, 0.261538,
		0.773113, 0.599827, -0.206166,
		-0.320804, 0.089393, -0.942918,
		45.753838, 29.081322, 21.435217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.957554, 29.847368, 21.800856>,  <45.978401, 29.018747, 22.095259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.957554, 29.847368, 21.800856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709362, 29.615232, 21.589872>,  <45.560448, 29.475952, 21.463282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.709362, 29.615232, 21.589872>,  <45.957554, 29.847368, 21.800856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.709362, 29.615232, 21.589872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730998, 0.671561, 0.121029,
		0.283983, 0.460668, -0.840915,
		-0.620480, -0.580337, -0.527460,
		45.523216, 29.441132, 21.431635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.727474, 30.308147, 21.226423>,  <45.957554, 29.847368, 21.800856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.727474, 30.308147, 21.226423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.475185, 30.011562, 21.318007>,  <45.323811, 29.833611, 21.372957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.475185, 30.011562, 21.318007>,  <45.727474, 30.308147, 21.226423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.475185, 30.011562, 21.318007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745225, 0.661015, 0.087736,
		-0.216399, -0.115289, -0.969474,
		-0.630722, -0.741463, 0.228960,
		45.285969, 29.789124, 21.386694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064804, 30.402054, 20.889942>,  <45.727474, 30.308147, 21.226423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064804, 30.402054, 20.889942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.002254, 30.207140, 21.233593>,  <44.964725, 30.090193, 21.439783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.002254, 30.207140, 21.233593>,  <45.064804, 30.402054, 20.889942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.002254, 30.207140, 21.233593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753190, 0.621527, 0.215425,
		-0.638945, -0.613399, -0.464211,
		-0.156378, -0.487284, 0.859128,
		44.955341, 30.060955, 21.491331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358448, 30.247915, 20.895178>,  <45.064804, 30.402054, 20.889942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358448, 30.247915, 20.895178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.465427, 30.264719, 21.280239>,  <44.529617, 30.274801, 21.511276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.465427, 30.264719, 21.280239>,  <44.358448, 30.247915, 20.895178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.465427, 30.264719, 21.280239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820780, 0.533284, 0.204763,
		-0.504767, -0.844893, 0.177107,
		0.267451, 0.042008, 0.962655,
		44.545662, 30.277321, 21.569036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.719681, 30.092285, 21.350552>,  <44.358448, 30.247915, 20.895178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.719681, 30.092285, 21.350552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.948441, 30.274883, 21.623180>,  <44.085697, 30.384441, 21.786758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.948441, 30.274883, 21.623180>,  <43.719681, 30.092285, 21.350552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.948441, 30.274883, 21.623180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782395, 0.553258, 0.285944,
		-0.246553, -0.696791, 0.673568,
		0.571900, 0.456495, 0.681573,
		44.120010, 30.411833, 21.827652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.298145, 30.183847, 21.876757>,  <43.719681, 30.092285, 21.350552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.298145, 30.183847, 21.876757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590183, 30.421623, 22.011576>,  <43.765408, 30.564289, 22.092466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.590183, 30.421623, 22.011576>,  <43.298145, 30.183847, 21.876757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.590183, 30.421623, 22.011576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655710, 0.470585, 0.590418,
		0.192358, -0.652067, 0.733353,
		0.730097, 0.594439, 0.337046,
		43.809212, 30.599955, 22.112690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384384, 30.086058, 22.650301>,  <43.298145, 30.183847, 21.876757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384384, 30.086058, 22.650301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496353, 30.453337, 22.538189>,  <43.563534, 30.673704, 22.470922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496353, 30.453337, 22.538189>,  <43.384384, 30.086058, 22.650301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496353, 30.453337, 22.538189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532788, 0.391446, 0.750271,
		0.798611, -0.060690, 0.598780,
		0.279923, 0.918198, -0.280278,
		43.580330, 30.728796, 22.454105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.279785, 30.427750, 23.193195>,  <43.384384, 30.086058, 22.650301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.279785, 30.427750, 23.193195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324387, 30.749201, 22.959358>,  <43.351147, 30.942072, 22.819057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.324387, 30.749201, 22.959358>,  <43.279785, 30.427750, 23.193195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.324387, 30.749201, 22.959358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385825, 0.577123, 0.719770,
		0.915808, 0.145290, 0.374414,
		0.111507, 0.803629, -0.584591,
		43.357838, 30.990290, 22.783981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.632820, 30.875532, 23.566305>,  <43.279785, 30.427750, 23.193195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.632820, 30.875532, 23.566305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448059, 31.123528, 23.312611>,  <43.337200, 31.272326, 23.160395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448059, 31.123528, 23.312611>,  <43.632820, 30.875532, 23.566305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.448059, 31.123528, 23.312611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345952, 0.532508, 0.772497,
		0.816677, 0.576236, -0.031481,
		-0.461905, 0.619990, -0.634237,
		43.309486, 31.309525, 23.122339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.789433, 31.503111, 23.839294>,  <43.632820, 30.875532, 23.566305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.789433, 31.503111, 23.839294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486767, 31.565718, 23.585379>,  <43.305168, 31.603283, 23.433029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.486767, 31.565718, 23.585379>,  <43.789433, 31.503111, 23.839294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.486767, 31.565718, 23.585379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430452, 0.611535, 0.663880,
		0.492106, 0.775582, -0.395353,
		-0.756666, 0.156519, -0.634790,
		43.259766, 31.612673, 23.394941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.692078, 32.233341, 23.730185>,  <43.789433, 31.503111, 23.839294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.692078, 32.233341, 23.730185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342419, 32.076115, 23.616093>,  <43.132622, 31.981779, 23.547638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342419, 32.076115, 23.616093>,  <43.692078, 32.233341, 23.730185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342419, 32.076115, 23.616093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483778, 0.653206, 0.582478,
		-0.042639, 0.647163, -0.761159,
		-0.874151, -0.393068, -0.285231,
		43.080173, 31.958195, 23.530523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.257275, 32.832199, 23.538927>,  <43.692078, 32.233341, 23.730185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.257275, 32.832199, 23.538927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012150, 32.527302, 23.622305>,  <42.865074, 32.344364, 23.672333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012150, 32.527302, 23.622305>,  <43.257275, 32.832199, 23.538927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.012150, 32.527302, 23.622305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563022, 0.606246, 0.561670,
		-0.554497, 0.226838, -0.800673,
		-0.612813, -0.762241, 0.208446,
		42.828304, 32.298630, 23.684839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582462, 32.996159, 23.259220>,  <43.257275, 32.832199, 23.538927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582462, 32.996159, 23.259220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548523, 32.730877, 23.556665>,  <42.528160, 32.571709, 23.735132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.548523, 32.730877, 23.556665>,  <42.582462, 32.996159, 23.259220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548523, 32.730877, 23.556665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660914, 0.595953, 0.456106,
		-0.745650, -0.452765, -0.488886,
		-0.084844, -0.663207, 0.743612,
		42.523071, 32.531914, 23.779749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.885349, 33.126747, 23.444849>,  <42.582462, 32.996159, 23.259220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.885349, 33.126747, 23.444849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056175, 32.913826, 23.737225>,  <42.158669, 32.786076, 23.912651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.056175, 32.913826, 23.737225>,  <41.885349, 33.126747, 23.444849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056175, 32.913826, 23.737225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526563, 0.510755, 0.679604,
		-0.735084, -0.675120, -0.062165,
		0.427063, -0.532300, 0.730941,
		42.184296, 32.754135, 23.956507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.260399, 32.873203, 23.899527>,  <41.885349, 33.126747, 23.444849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.260399, 32.873203, 23.899527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596771, 32.846840, 24.114374>,  <41.798595, 32.831024, 24.243282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596771, 32.846840, 24.114374>,  <41.260399, 32.873203, 23.899527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596771, 32.846840, 24.114374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422123, 0.541166, 0.727291,
		-0.338604, -0.838329, 0.427261,
		0.840928, -0.065907, 0.537119,
		41.849049, 32.827068, 24.275509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.117378, 32.595936, 24.500700>,  <41.260399, 32.873203, 23.899527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.117378, 32.595936, 24.500700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448734, 32.816105, 24.542288>,  <41.647549, 32.948208, 24.567240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.448734, 32.816105, 24.542288>,  <41.117378, 32.595936, 24.500700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.448734, 32.816105, 24.542288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413452, 0.475582, 0.776453,
		0.377929, -0.686192, 0.621539,
		0.828389, 0.550421, 0.103971,
		41.697250, 32.981232, 24.573479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.222206, 32.626736, 25.200613>,  <41.117378, 32.595936, 24.500700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.222206, 32.626736, 25.200613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439510, 32.932289, 25.061274>,  <41.569893, 33.115620, 24.977669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439510, 32.932289, 25.061274>,  <41.222206, 32.626736, 25.200613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439510, 32.932289, 25.061274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472710, 0.621209, 0.625016,
		0.693837, -0.174880, 0.698575,
		0.543265, 0.763882, -0.348350,
		41.602489, 33.161453, 24.956768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544113, 32.991287, 25.786161>,  <41.222206, 32.626736, 25.200613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544113, 32.991287, 25.786161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523827, 33.256943, 25.487806>,  <41.511654, 33.416336, 25.308794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523827, 33.256943, 25.487806>,  <41.544113, 32.991287, 25.786161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523827, 33.256943, 25.487806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516314, 0.621866, 0.588815,
		0.854896, 0.414975, 0.311365,
		-0.050716, 0.664138, -0.745888,
		41.508614, 33.456184, 25.264040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879597, 33.609138, 25.963015>,  <41.544113, 32.991287, 25.786161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879597, 33.609138, 25.963015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605461, 33.684479, 25.681635>,  <41.440979, 33.729683, 25.512808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.605461, 33.684479, 25.681635>,  <41.879597, 33.609138, 25.963015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.605461, 33.684479, 25.681635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406899, 0.702070, 0.584406,
		0.603944, 0.686747, -0.404513,
		-0.685335, 0.188352, -0.703448,
		41.399860, 33.740986, 25.470600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756214, 34.364819, 26.055273>,  <41.879597, 33.609138, 25.963015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756214, 34.364819, 26.055273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446190, 34.245617, 25.832394>,  <41.260174, 34.174095, 25.698666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.446190, 34.245617, 25.832394>,  <41.756214, 34.364819, 26.055273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.446190, 34.245617, 25.832394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592968, 0.647698, 0.478410,
		0.218328, 0.701199, -0.678714,
		-0.775062, -0.298005, -0.557200,
		41.213673, 34.156216, 25.665234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400623, 34.946629, 26.103870>,  <41.756214, 34.364819, 26.055273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400623, 34.946629, 26.103870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150269, 34.676693, 25.947477>,  <41.000057, 34.514732, 25.853642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.150269, 34.676693, 25.947477>,  <41.400623, 34.946629, 26.103870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.150269, 34.676693, 25.947477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779092, 0.517956, 0.353180,
		-0.035827, 0.525661, -0.849939,
		-0.625885, -0.674835, -0.390982,
		40.962502, 34.474243, 25.830183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.853577, 35.292355, 25.672110>,  <41.400623, 34.946629, 26.103870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.853577, 35.292355, 25.672110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715107, 34.939610, 25.800163>,  <40.632027, 34.727962, 25.876995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.715107, 34.939610, 25.800163>,  <40.853577, 35.292355, 25.672110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715107, 34.939610, 25.800163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860552, 0.434376, 0.266020,
		-0.373652, -0.183405, -0.909256,
		-0.346170, -0.881862, 0.320135,
		40.611256, 34.675053, 25.896204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.146988, 35.313637, 25.389141>,  <40.853577, 35.292355, 25.672110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.146988, 35.313637, 25.389141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155293, 35.030582, 25.671648>,  <40.160275, 34.860748, 25.841152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155293, 35.030582, 25.671648>,  <40.146988, 35.313637, 25.389141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155293, 35.030582, 25.671648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854097, 0.354651, 0.380450,
		-0.519700, -0.611120, -0.597030,
		0.020763, -0.707641, 0.706267,
		40.161522, 34.818291, 25.883528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457230, 35.011139, 25.394552>,  <40.146988, 35.313637, 25.389141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457230, 35.011139, 25.394552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653023, 34.951763, 25.738268>,  <39.770496, 34.916138, 25.944496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653023, 34.951763, 25.738268>,  <39.457230, 35.011139, 25.394552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653023, 34.951763, 25.738268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834854, 0.204828, 0.510945,
		-0.251849, -0.967477, -0.023663,
		0.489480, -0.148436, 0.859288,
		39.799866, 34.907234, 25.996054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972980, 34.623512, 25.740191>,  <39.457230, 35.011139, 25.394552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972980, 34.623512, 25.740191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206951, 34.783913, 26.022202>,  <39.347332, 34.880154, 26.191408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206951, 34.783913, 26.022202>,  <38.972980, 34.623512, 25.740191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206951, 34.783913, 26.022202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783626, 0.055122, 0.618782,
		0.209269, -0.914418, 0.346476,
		0.584924, 0.401000, 0.705027,
		39.382427, 34.904213, 26.233709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729084, 34.280029, 26.340401>,  <38.972980, 34.623512, 25.740191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729084, 34.280029, 26.340401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949459, 34.594044, 26.453669>,  <39.081684, 34.782452, 26.521629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.949459, 34.594044, 26.453669>,  <38.729084, 34.280029, 26.340401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949459, 34.594044, 26.453669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618778, 0.156581, 0.769803,
		0.559987, -0.599329, 0.572031,
		0.550934, 0.785039, 0.283168,
		39.114738, 34.829556, 26.538620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955746, 34.168663, 26.999725>,  <38.729084, 34.280029, 26.340401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955746, 34.168663, 26.999725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962479, 34.562622, 26.930788>,  <38.966518, 34.798996, 26.889425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962479, 34.562622, 26.930788>,  <38.955746, 34.168663, 26.999725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962479, 34.562622, 26.930788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594095, 0.148490, 0.790570,
		0.804219, 0.089082, 0.587620,
		0.016830, 0.984893, -0.172341,
		38.967529, 34.858089, 26.879086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836239, 34.381969, 27.679075>,  <38.955746, 34.168663, 26.999725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836239, 34.381969, 27.679075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783844, 34.732433, 27.493525>,  <38.752407, 34.942711, 27.382195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.783844, 34.732433, 27.493525>,  <38.836239, 34.381969, 27.679075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783844, 34.732433, 27.493525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699746, 0.249754, 0.669312,
		0.702281, 0.412266, 0.580377,
		-0.130983, 0.876162, -0.463879,
		38.744549, 34.995281, 27.354361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846973, 34.960583, 28.228630>,  <38.836239, 34.381969, 27.679075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846973, 34.960583, 28.228630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659470, 35.087231, 27.898779>,  <38.546967, 35.163219, 27.700869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.659470, 35.087231, 27.898779>,  <38.846973, 34.960583, 28.228630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659470, 35.087231, 27.898779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717936, 0.407313, 0.564503,
		0.514617, 0.856648, 0.036383,
		-0.468761, 0.316623, -0.824629,
		38.518841, 35.182217, 27.651390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605991, 35.529968, 28.392206>,  <38.846973, 34.960583, 28.228630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605991, 35.529968, 28.392206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366737, 35.459221, 28.079554>,  <38.223183, 35.416771, 27.891962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366737, 35.459221, 28.079554>,  <38.605991, 35.529968, 28.392206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366737, 35.459221, 28.079554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795385, 0.250228, 0.552041,
		0.097946, 0.951894, -0.290352,
		-0.598138, -0.176872, -0.781631,
		38.187294, 35.406158, 27.845064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216934, 36.077969, 28.359655>,  <38.605991, 35.529968, 28.392206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216934, 36.077969, 28.359655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005577, 35.810074, 28.150948>,  <37.878761, 35.649338, 28.025723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.005577, 35.810074, 28.150948>,  <38.216934, 36.077969, 28.359655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005577, 35.810074, 28.150948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845248, 0.357296, 0.397361,
		-0.079703, 0.650988, -0.754892,
		-0.528397, -0.669741, -0.521769,
		37.847057, 35.609150, 27.994417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604843, 36.398621, 28.230366>,  <38.216934, 36.077969, 28.359655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604843, 36.398621, 28.230366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522808, 36.012085, 28.168238>,  <37.473587, 35.780163, 28.130960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522808, 36.012085, 28.168238>,  <37.604843, 36.398621, 28.230366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522808, 36.012085, 28.168238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940531, 0.150669, 0.304467,
		-0.270817, 0.208524, -0.939774,
		-0.205083, -0.966342, -0.155320,
		37.461285, 35.722183, 28.121641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883873, 36.464405, 28.053663>,  <37.604843, 36.398621, 28.230366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883873, 36.464405, 28.053663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958778, 36.083103, 28.148521>,  <37.003723, 35.854321, 28.205437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.958778, 36.083103, 28.148521>,  <36.883873, 36.464405, 28.053663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958778, 36.083103, 28.148521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825015, -0.021590, 0.564698,
		-0.533180, -0.301399, -0.790492,
		0.187266, -0.953254, 0.237147,
		37.014957, 35.797127, 28.219666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.195282, 36.226627, 28.154480>,  <36.883873, 36.464405, 28.053663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.195282, 36.226627, 28.154480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404099, 35.920589, 28.305271>,  <36.529388, 35.736969, 28.395746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.404099, 35.920589, 28.305271>,  <36.195282, 36.226627, 28.154480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404099, 35.920589, 28.305271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775624, -0.241980, 0.582970,
		-0.354804, -0.596725, -0.719746,
		0.522037, -0.765092, 0.376978,
		36.560711, 35.691063, 28.418365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783356, 35.690773, 28.236004>,  <36.195282, 36.226627, 28.154480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783356, 35.690773, 28.236004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048553, 35.593472, 28.519205>,  <36.207672, 35.535091, 28.689127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.048553, 35.593472, 28.519205>,  <35.783356, 35.690773, 28.236004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.048553, 35.593472, 28.519205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748625, -0.212687, 0.627952,
		-0.002169, -0.946356, -0.323117,
		0.662990, -0.243256, 0.708005,
		36.247452, 35.520493, 28.731606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524078, 35.062794, 28.455736>,  <35.783356, 35.690773, 28.236004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524078, 35.062794, 28.455736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751884, 35.236008, 28.735203>,  <35.888569, 35.339935, 28.902882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.751884, 35.236008, 28.735203>,  <35.524078, 35.062794, 28.455736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751884, 35.236008, 28.735203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697798, -0.194524, 0.689375,
		0.434433, -0.880136, 0.191389,
		0.569514, 0.433038, 0.698665,
		35.922737, 35.365917, 28.944803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.740448, 34.531593, 29.028997>,  <35.524078, 35.062794, 28.455736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.740448, 34.531593, 29.028997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737164, 34.909370, 29.160427>,  <35.735195, 35.136036, 29.239285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737164, 34.909370, 29.160427>,  <35.740448, 34.531593, 29.028997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737164, 34.909370, 29.160427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603206, -0.266747, 0.751657,
		0.797543, -0.192030, 0.571882,
		-0.008207, 0.944442, 0.328576,
		35.734703, 35.192703, 29.259001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486107, 34.451000, 29.718300>,  <35.740448, 34.531593, 29.028997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486107, 34.451000, 29.718300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494068, 34.847645, 29.667225>,  <35.498844, 35.085632, 29.636580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.494068, 34.847645, 29.667225>,  <35.486107, 34.451000, 29.718300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494068, 34.847645, 29.667225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755465, 0.098571, 0.647732,
		0.654886, 0.083571, 0.751092,
		0.019904, 0.991615, -0.127688,
		35.500038, 35.145130, 29.628918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457691, 34.740726, 30.455858>,  <35.486107, 34.451000, 29.718300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457691, 34.740726, 30.455858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375237, 35.057846, 30.226433>,  <35.325764, 35.248119, 30.088778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375237, 35.057846, 30.226433>,  <35.457691, 34.740726, 30.455858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375237, 35.057846, 30.226433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706016, 0.285350, 0.648164,
		0.677530, 0.538560, 0.500906,
		-0.206141, 0.792798, -0.573565,
		35.313393, 35.295685, 30.054363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489475, 35.330090, 30.851980>,  <35.457691, 34.740726, 30.455858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489475, 35.330090, 30.851980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252625, 35.434662, 30.547077>,  <35.110512, 35.497406, 30.364136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252625, 35.434662, 30.547077>,  <35.489475, 35.330090, 30.851980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252625, 35.434662, 30.547077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646141, 0.411212, 0.642967,
		0.481542, 0.873245, -0.074568,
		-0.592131, 0.261434, -0.762255,
		35.074986, 35.513092, 30.318401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326149, 36.042984, 31.015255>,  <35.489475, 35.330090, 30.851980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326149, 36.042984, 31.015255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062611, 35.908783, 30.745926>,  <34.904488, 35.828262, 30.584328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062611, 35.908783, 30.745926>,  <35.326149, 36.042984, 31.015255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062611, 35.908783, 30.745926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728186, 0.509125, 0.458843,
		0.188862, 0.792610, -0.579742,
		-0.658845, -0.335502, -0.673322,
		34.864956, 35.808132, 30.543930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081951, 35.807289, 31.049669>,  <35.326149, 36.042984, 31.015255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081951, 35.807289, 31.049669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342388, 35.849377, 31.350338>,  <36.498650, 35.874630, 31.530739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.342388, 35.849377, 31.350338>,  <36.081951, 35.807289, 31.049669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342388, 35.849377, 31.350338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736048, 0.154161, -0.659141,
		-0.185234, 0.982427, 0.022926,
		0.651093, 0.105221, 0.751669,
		36.537716, 35.880943, 31.575838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384251, 36.462753, 31.012720>,  <36.081951, 35.807289, 31.049669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384251, 36.462753, 31.012720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644405, 36.222763, 31.199066>,  <36.800499, 36.078770, 31.310873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.644405, 36.222763, 31.199066>,  <36.384251, 36.462753, 31.012720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644405, 36.222763, 31.199066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722863, 0.300421, -0.622267,
		0.233390, 0.741468, 0.629090,
		0.650383, -0.599977, 0.465865,
		36.839520, 36.042770, 31.338825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929371, 36.854801, 31.123058>,  <36.384251, 36.462753, 31.012720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929371, 36.854801, 31.123058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099258, 36.494221, 31.156538>,  <37.201191, 36.277874, 31.176626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.099258, 36.494221, 31.156538>,  <36.929371, 36.854801, 31.123058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099258, 36.494221, 31.156538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766857, 0.309080, -0.562494,
		0.481188, 0.303090, 0.822554,
		0.424721, -0.901447, 0.083701,
		37.226673, 36.223785, 31.181648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641422, 36.979969, 31.283703>,  <36.929371, 36.854801, 31.123058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641422, 36.979969, 31.283703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678547, 36.601063, 31.161020>,  <37.700821, 36.373718, 31.087410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678547, 36.601063, 31.161020>,  <37.641422, 36.979969, 31.283703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678547, 36.601063, 31.161020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837998, 0.240671, -0.489731,
		0.537722, -0.211566, 0.816146,
		0.092812, -0.947268, -0.306706,
		37.706390, 36.316883, 31.069008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365391, 36.788609, 31.450340>,  <37.641422, 36.979969, 31.283703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365391, 36.788609, 31.450340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267883, 36.499424, 31.191761>,  <38.209377, 36.325912, 31.036613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267883, 36.499424, 31.191761>,  <38.365391, 36.788609, 31.450340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267883, 36.499424, 31.191761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930613, 0.013267, -0.365764,
		0.273011, -0.690757, 0.669567,
		-0.243771, -0.722965, -0.646449,
		38.194752, 36.282536, 30.997826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901981, 36.286797, 31.486107>,  <38.365391, 36.788609, 31.450340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901981, 36.286797, 31.486107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716457, 36.244984, 31.134209>,  <38.605141, 36.219894, 30.923071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.716457, 36.244984, 31.134209>,  <38.901981, 36.286797, 31.486107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716457, 36.244984, 31.134209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884023, -0.119763, -0.451840,
		-0.058127, -0.987284, 0.147959,
		-0.463814, -0.104535, -0.879743,
		38.577312, 36.213623, 30.870285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274593, 35.781681, 31.239307>,  <38.901981, 36.286797, 31.486107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274593, 35.781681, 31.239307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086952, 35.955441, 30.931740>,  <38.974369, 36.059696, 30.747200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086952, 35.955441, 30.931740>,  <39.274593, 35.781681, 31.239307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086952, 35.955441, 30.931740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792503, -0.177151, -0.583572,
		-0.389721, -0.883126, -0.261164,
		-0.469102, 0.434403, -0.768919,
		38.946220, 36.085762, 30.701063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429428, 35.404438, 30.730227>,  <39.274593, 35.781681, 31.239307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429428, 35.404438, 30.730227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319969, 35.740620, 30.543144>,  <39.254295, 35.942329, 30.430895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.319969, 35.740620, 30.543144>,  <39.429428, 35.404438, 30.730227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319969, 35.740620, 30.543144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755059, -0.113512, -0.645756,
		-0.595821, -0.529854, -0.603533,
		-0.273648, 0.840458, -0.467704,
		39.237873, 35.992756, 30.402834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555042, 35.253189, 30.029032>,  <39.429428, 35.404438, 30.730227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555042, 35.253189, 30.029032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545708, 35.650311, 30.076029>,  <39.540108, 35.888584, 30.104227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.545708, 35.650311, 30.076029>,  <39.555042, 35.253189, 30.029032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545708, 35.650311, 30.076029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721929, 0.098033, -0.684988,
		-0.691574, 0.068838, -0.719018,
		-0.023334, 0.992800, 0.117493,
		39.538708, 35.948151, 30.111277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514057, 35.423965, 29.314886>,  <39.555042, 35.253189, 30.029032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514057, 35.423965, 29.314886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638878, 35.744225, 29.519464>,  <39.713772, 35.936382, 29.642212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.638878, 35.744225, 29.519464>,  <39.514057, 35.423965, 29.314886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638878, 35.744225, 29.519464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801368, 0.067341, -0.594369,
		-0.510324, 0.595333, -0.620603,
		0.312055, 0.800652, 0.511446,
		39.732494, 35.984421, 29.672899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718658, 35.839706, 28.809698>,  <39.514057, 35.423965, 29.314886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718658, 35.839706, 28.809698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911533, 35.966892, 29.136229>,  <40.027260, 36.043205, 29.332148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911533, 35.966892, 29.136229>,  <39.718658, 35.839706, 28.809698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911533, 35.966892, 29.136229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863176, -0.013181, -0.504730,
		-0.149728, 0.948010, -0.280819,
		0.482191, 0.317968, 0.816326,
		40.056190, 36.062283, 29.381126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212677, 36.421658, 28.597700>,  <39.718658, 35.839706, 28.809698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.212677, 36.421658, 28.597700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321556, 36.288803, 28.958941>,  <40.386883, 36.209091, 29.175684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.321556, 36.288803, 28.958941>,  <40.212677, 36.421658, 28.597700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321556, 36.288803, 28.958941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927918, -0.157824, -0.337727,
		0.254704, 0.929932, 0.265239,
		0.272202, -0.332140, 0.903100,
		40.403217, 36.189159, 29.229870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867790, 36.726208, 28.674353>,  <40.212677, 36.421658, 28.597700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867790, 36.726208, 28.674353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834087, 36.412121, 28.919735>,  <40.813866, 36.223667, 29.066965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.834087, 36.412121, 28.919735>,  <40.867790, 36.726208, 28.674353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834087, 36.412121, 28.919735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892181, -0.333618, -0.304486,
		0.443749, 0.521660, 0.728669,
		-0.084258, -0.785220, 0.613458,
		40.808811, 36.176556, 29.103773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535046, 36.725544, 28.975483>,  <40.867790, 36.726208, 28.674353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535046, 36.725544, 28.975483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390778, 36.355938, 29.026249>,  <41.304214, 36.134174, 29.056709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.390778, 36.355938, 29.026249>,  <41.535046, 36.725544, 28.975483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390778, 36.355938, 29.026249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870049, -0.382348, -0.311167,
		0.336050, -0.001806, 0.941842,
		-0.360673, -0.924017, 0.126917,
		41.282574, 36.078732, 29.064323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149956, 36.319016, 29.191446>,  <41.535046, 36.725544, 28.975483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149956, 36.319016, 29.191446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.887554, 36.033470, 29.093424>,  <41.730114, 35.862141, 29.034611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.887554, 36.033470, 29.093424>,  <42.149956, 36.319016, 29.191446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887554, 36.033470, 29.093424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734204, -0.528318, -0.426409,
		0.174931, -0.459647, 0.870703,
		-0.656006, -0.713866, -0.245055,
		41.690754, 35.819309, 29.019907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.445805, 35.622322, 29.391859>,  <42.149956, 36.319016, 29.191446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.445805, 35.622322, 29.391859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167870, 35.545265, 29.114704>,  <42.001110, 35.499031, 28.948412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167870, 35.545265, 29.114704>,  <42.445805, 35.622322, 29.391859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167870, 35.545265, 29.114704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641458, -0.601639, -0.475986,
		-0.325172, -0.775190, 0.541612,
		-0.694834, -0.192644, -0.692888,
		41.959419, 35.487473, 28.906837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.452927, 34.882339, 29.323580>,  <42.445805, 35.622322, 29.391859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.452927, 34.882339, 29.323580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261917, 35.018520, 28.999588>,  <42.147312, 35.100227, 28.805193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261917, 35.018520, 28.999588>,  <42.452927, 34.882339, 29.323580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261917, 35.018520, 28.999588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439685, -0.705546, -0.555772,
		-0.760691, -0.621529, 0.187221,
		-0.477520, 0.340452, -0.809979,
		42.118660, 35.120655, 28.756594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.063770, 34.401138, 29.014900>,  <42.452927, 34.882339, 29.323580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.063770, 34.401138, 29.014900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122871, 34.649055, 28.706608>,  <42.158333, 34.797806, 28.521633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122871, 34.649055, 28.706608>,  <42.063770, 34.401138, 29.014900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122871, 34.649055, 28.706608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234104, -0.779056, -0.581608,
		-0.960918, -0.094496, -0.260206,
		0.147755, 0.619793, -0.770730,
		42.167198, 34.834991, 28.475389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844044, 34.016727, 28.489721>,  <42.063770, 34.401138, 29.014900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844044, 34.016727, 28.489721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044395, 34.308434, 28.303267>,  <42.164608, 34.483459, 28.191393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.044395, 34.308434, 28.303267>,  <41.844044, 34.016727, 28.489721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.044395, 34.308434, 28.303267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256816, -0.639538, -0.724594,
		-0.826538, 0.243223, -0.507619,
		0.500880, 0.729270, -0.466139,
		42.194660, 34.527214, 28.163425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623543, 33.965919, 27.778641>,  <41.844044, 34.016727, 28.489721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623543, 33.965919, 27.778641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.964088, 34.175716, 27.775101>,  <42.168415, 34.301594, 27.772976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.964088, 34.175716, 27.775101>,  <41.623543, 33.965919, 27.778641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.964088, 34.175716, 27.775101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322153, -0.536094, -0.780270,
		-0.413991, 0.661446, -0.625380,
		0.851369, 0.524493, -0.008851,
		42.219498, 34.333065, 27.772446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819355, 34.118172, 27.065371>,  <41.623543, 33.965919, 27.778641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819355, 34.118172, 27.065371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160995, 34.169552, 27.266972>,  <42.365978, 34.200382, 27.387932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.160995, 34.169552, 27.266972>,  <41.819355, 34.118172, 27.065371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.160995, 34.169552, 27.266972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479030, -0.571747, -0.666059,
		0.202603, 0.810311, -0.549861,
		0.854097, 0.128455, 0.504002,
		42.417225, 34.208088, 27.418173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292229, 34.585781, 26.705200>,  <41.819355, 34.118172, 27.065371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292229, 34.585781, 26.705200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478493, 34.305164, 26.920979>,  <42.590252, 34.136795, 27.050446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.478493, 34.305164, 26.920979>,  <42.292229, 34.585781, 26.705200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.478493, 34.305164, 26.920979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473855, -0.317159, -0.821506,
		0.747407, 0.638165, 0.184738,
		0.465665, -0.701538, 0.539445,
		42.618191, 34.094704, 27.082811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.091019, 34.632740, 26.501656>,  <42.292229, 34.585781, 26.705200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.091019, 34.632740, 26.501656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017540, 34.277946, 26.671131>,  <42.973454, 34.065071, 26.772816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.017540, 34.277946, 26.671131>,  <43.091019, 34.632740, 26.501656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.017540, 34.277946, 26.671131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467375, -0.457996, -0.756174,
		0.864764, 0.059118, 0.498686,
		-0.183693, -0.886986, 0.423689,
		42.962433, 34.011852, 26.798239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763256, 34.421432, 26.807611>,  <43.091019, 34.632740, 26.501656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763256, 34.421432, 26.807611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524731, 34.108322, 26.736423>,  <43.381615, 33.920456, 26.693710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.524731, 34.108322, 26.736423>,  <43.763256, 34.421432, 26.807611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.524731, 34.108322, 26.736423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718229, -0.421233, -0.553814,
		0.358545, -0.458070, 0.813399,
		-0.596316, -0.782774, -0.177969,
		43.345837, 33.873489, 26.683033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.174957, 33.866394, 26.904940>,  <43.763256, 34.421432, 26.807611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.174957, 33.866394, 26.904940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877422, 33.684341, 26.709162>,  <43.698902, 33.575111, 26.591694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877422, 33.684341, 26.709162>,  <44.174957, 33.866394, 26.904940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877422, 33.684341, 26.709162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664599, -0.581220, -0.469565,
		-0.070763, -0.674567, 0.734814,
		-0.743842, -0.455129, -0.489446,
		43.654270, 33.547802, 26.562328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362602, 33.193298, 26.833975>,  <44.174957, 33.866394, 26.904940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362602, 33.193298, 26.833975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068073, 33.221954, 26.564842>,  <43.891357, 33.239147, 26.403362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.068073, 33.221954, 26.564842>,  <44.362602, 33.193298, 26.833975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.068073, 33.221954, 26.564842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400293, -0.755587, -0.518511,
		-0.545529, -0.651119, 0.527676,
		-0.736317, 0.071637, -0.672833,
		43.847179, 33.243446, 26.362991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262016, 32.549873, 26.656727>,  <44.362602, 33.193298, 26.833975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262016, 32.549873, 26.656727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.107525, 32.742764, 26.342203>,  <44.014828, 32.858498, 26.153488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.107525, 32.742764, 26.342203>,  <44.262016, 32.549873, 26.656727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.107525, 32.742764, 26.342203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356936, -0.707912, -0.609473,
		-0.850542, -0.516060, 0.101293,
		-0.386231, 0.482227, -0.786309,
		43.991657, 32.887432, 26.106310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.091240, 31.948704, 26.293095>,  <44.262016, 32.549873, 26.656727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.091240, 31.948704, 26.293095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090096, 32.259388, 26.041153>,  <44.089409, 32.445797, 25.889988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090096, 32.259388, 26.041153>,  <44.091240, 31.948704, 26.293095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.090096, 32.259388, 26.041153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453505, -0.560353, -0.693064,
		-0.891249, -0.287624, -0.350639,
		-0.002860, 0.776709, -0.629853,
		44.089237, 32.492401, 25.852198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.826794, 31.751648, 25.544769>,  <44.091240, 31.948704, 26.293095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.826794, 31.751648, 25.544769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080421, 32.058903, 25.509167>,  <44.232597, 32.243256, 25.487806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080421, 32.058903, 25.509167>,  <43.826794, 31.751648, 25.544769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.080421, 32.058903, 25.509167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482055, -0.482644, -0.731216,
		-0.604632, 0.420735, -0.676314,
		0.634068, 0.768138, -0.089005,
		44.270641, 32.289345, 25.482466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151913, 31.614319, 24.931469>,  <43.826794, 31.751648, 25.544769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151913, 31.614319, 24.931469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381607, 31.931036, 25.014723>,  <44.519424, 32.121067, 25.064676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.381607, 31.931036, 25.014723>,  <44.151913, 31.614319, 24.931469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.381607, 31.931036, 25.014723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669458, -0.307794, -0.676084,
		-0.471253, 0.527570, -0.706817,
		0.574236, 0.791791, 0.208137,
		44.553879, 32.168571, 25.077164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363728, 31.972233, 24.263510>,  <44.151913, 31.614319, 24.931469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363728, 31.972233, 24.263510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618752, 32.065224, 24.557304>,  <44.771767, 32.121017, 24.733582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.618752, 32.065224, 24.557304>,  <44.363728, 31.972233, 24.263510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.618752, 32.065224, 24.557304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742049, -0.441572, -0.504358,
		0.207078, 0.866584, -0.454038,
		0.637559, 0.232477, 0.734488,
		44.810020, 32.134968, 24.777651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.932331, 32.197384, 23.891235>,  <44.363728, 31.972233, 24.263510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.932331, 32.197384, 23.891235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083549, 32.142529, 24.257465>,  <45.174278, 32.109615, 24.477203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083549, 32.142529, 24.257465>,  <44.932331, 32.197384, 23.891235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.083549, 32.142529, 24.257465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855982, -0.324963, -0.402112,
		0.352675, 0.935730, -0.005458,
		0.378041, -0.137143, 0.915574,
		45.196960, 32.101387, 24.532137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.678486, 32.292469, 23.833946>,  <44.932331, 32.197384, 23.891235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.678486, 32.292469, 23.833946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.644833, 32.097301, 24.181477>,  <45.624641, 31.980202, 24.389996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.644833, 32.097301, 24.181477>,  <45.678486, 32.292469, 23.833946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.644833, 32.097301, 24.181477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827078, -0.520490, -0.212210,
		0.555756, 0.700733, 0.447335,
		-0.084131, -0.487917, 0.868826,
		45.619595, 31.950926, 24.442125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.486401, 32.182213, 24.184378>,  <45.678486, 32.292469, 23.833946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.486401, 32.182213, 24.184378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.224483, 31.907963, 24.311600>,  <46.067333, 31.743412, 24.387934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.224483, 31.907963, 24.311600>,  <46.486401, 32.182213, 24.184378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.224483, 31.907963, 24.311600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659846, -0.723792, -0.201810,
		0.368574, 0.077724, 0.926344,
		-0.654795, -0.685626, 0.318057,
		46.028046, 31.702274, 24.407017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.916557, 31.723619, 24.593967>,  <46.486401, 32.182213, 24.184378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.916557, 31.723619, 24.593967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.583019, 31.507092, 24.550755>,  <46.382896, 31.377174, 24.524826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.583019, 31.507092, 24.550755>,  <46.916557, 31.723619, 24.593967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.583019, 31.507092, 24.550755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550116, -0.831077, -0.081755,
		-0.045528, -0.127602, 0.990780,
		-0.833846, -0.541322, -0.108034,
		46.332867, 31.344694, 24.518345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.978104, 31.146662, 25.055948>,  <46.916557, 31.723619, 24.593967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.978104, 31.146662, 25.055948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.700619, 31.027618, 24.793591>,  <46.534130, 30.956192, 24.636177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.700619, 31.027618, 24.793591>,  <46.978104, 31.146662, 25.055948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.700619, 31.027618, 24.793591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378447, -0.925414, 0.019639,
		-0.612818, -0.234597, 0.754598,
		-0.693709, -0.297611, -0.655893,
		46.492508, 30.938335, 24.596823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.577095, 30.615732, 25.400501>,  <46.978104, 31.146662, 25.055948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.577095, 30.615732, 25.400501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.554184, 30.585098, 25.002335>,  <46.540436, 30.566717, 24.763435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.554184, 30.585098, 25.002335>,  <46.577095, 30.615732, 25.400501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.554184, 30.585098, 25.002335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339817, -0.939014, 0.052690,
		-0.938745, -0.335242, 0.079813,
		-0.057282, -0.076584, -0.995416,
		46.536999, 30.562122, 24.703711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.550026, 29.891264, 25.504551>,  <46.577095, 30.615732, 25.400501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.550026, 29.891264, 25.504551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.264008, 30.154121, 25.599943>,  <46.092396, 30.311836, 25.657179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.264008, 30.154121, 25.599943>,  <46.550026, 29.891264, 25.504551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.264008, 30.154121, 25.599943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495888, 0.236337, 0.835607,
		0.492750, 0.715758, -0.494861,
		-0.715047, 0.657141, 0.238481,
		46.049492, 30.351263, 25.671488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.180965, 29.445328, 25.325159>,  <46.550026, 29.891264, 25.504551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.180965, 29.445328, 25.325159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.375156, 29.314934, 25.649639>,  <47.491673, 29.236698, 25.844328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.375156, 29.314934, 25.649639>,  <47.180965, 29.445328, 25.325159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.375156, 29.314934, 25.649639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780063, 0.257428, 0.570292,
		-0.394731, -0.909651, -0.129312,
		0.485479, -0.325983, 0.811200,
		47.520802, 29.217138, 25.893000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.643307, 29.163492, 25.666334>,  <47.180965, 29.445328, 25.325159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.643307, 29.163492, 25.666334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.949909, 29.210365, 25.918917>,  <47.133869, 29.238489, 26.070465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.949909, 29.210365, 25.918917>,  <46.643307, 29.163492, 25.666334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.949909, 29.210365, 25.918917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641256, 0.085360, 0.762565,
		0.035453, -0.989436, 0.140569,
		0.766508, 0.117176, 0.631455,
		47.179863, 29.245520, 26.108353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.451923, 28.692493, 26.227964>,  <46.643307, 29.163492, 25.666334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.451923, 28.692493, 26.227964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.691353, 28.991997, 26.341856>,  <46.835011, 29.171698, 26.410191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.691353, 28.991997, 26.341856>,  <46.451923, 28.692493, 26.227964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.691353, 28.991997, 26.341856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581771, 0.161989, 0.797058,
		0.550681, -0.642746, 0.532568,
		0.598576, 0.748757, 0.284727,
		46.870926, 29.216623, 26.427275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.565861, 28.630085, 26.980034>,  <46.451923, 28.692493, 26.227964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.565861, 28.630085, 26.980034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.665344, 29.012630, 26.918703>,  <46.725033, 29.242159, 26.881905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.665344, 29.012630, 26.918703>,  <46.565861, 28.630085, 26.980034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.665344, 29.012630, 26.918703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404190, 0.246338, 0.880879,
		0.880213, -0.157106, 0.447820,
		0.248706, 0.956366, -0.153329,
		46.739956, 29.299540, 26.872704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.788559, 28.872086, 27.607843>,  <46.565861, 28.630085, 26.980034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.788559, 28.872086, 27.607843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.707661, 29.198919, 27.391890>,  <46.659122, 29.395020, 27.262318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.707661, 29.198919, 27.391890>,  <46.788559, 28.872086, 27.607843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.707661, 29.198919, 27.391890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490512, 0.392631, 0.777971,
		0.847641, 0.422158, 0.321382,
		-0.202242, 0.817082, -0.539884,
		46.646988, 29.444044, 27.229925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.021851, 29.432472, 28.059601>,  <46.788559, 28.872086, 27.607843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.021851, 29.432472, 28.059601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.778286, 29.590425, 27.784416>,  <46.632145, 29.685198, 27.619307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.778286, 29.590425, 27.784416>,  <47.021851, 29.432472, 28.059601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.778286, 29.590425, 27.784416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505721, 0.474912, 0.720212,
		0.611121, 0.786463, -0.089480,
		-0.608915, 0.394885, -0.687959,
		46.595612, 29.708891, 27.578028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.938320, 30.171160, 28.191700>,  <47.021851, 29.432472, 28.059601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.938320, 30.171160, 28.191700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.620415, 30.102167, 27.958942>,  <46.429672, 30.060772, 27.819288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.620415, 30.102167, 27.958942>,  <46.938320, 30.171160, 28.191700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.620415, 30.102167, 27.958942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545627, 0.622919, 0.560592,
		0.265781, 0.763035, -0.589184,
		-0.794766, -0.172480, -0.581892,
		46.381985, 30.050423, 27.784374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.632812, 30.815168, 28.237329>,  <46.938320, 30.171160, 28.191700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.632812, 30.815168, 28.237329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343529, 30.600948, 28.062904>,  <46.169956, 30.472416, 27.958250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.343529, 30.600948, 28.062904>,  <46.632812, 30.815168, 28.237329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.343529, 30.600948, 28.062904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689856, 0.590000, 0.419522,
		0.032602, 0.604224, -0.796147,
		-0.723212, -0.535550, -0.436063,
		46.126564, 30.440283, 27.932085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.160919, 31.275707, 27.790348>,  <46.632812, 30.815168, 28.237329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.160919, 31.275707, 27.790348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.963684, 30.948872, 27.909836>,  <45.845345, 30.752769, 27.981529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.963684, 30.948872, 27.909836>,  <46.160919, 31.275707, 27.790348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.963684, 30.948872, 27.909836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743688, 0.574050, 0.342628,
		-0.451438, -0.053211, -0.890714,
		-0.493084, -0.817089, 0.298720,
		45.815758, 30.703745, 27.999453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.452694, 31.473854, 27.626326>,  <46.160919, 31.275707, 27.790348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.452694, 31.473854, 27.626326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.449512, 31.155226, 27.868124>,  <45.447605, 30.964048, 28.013203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.449512, 31.155226, 27.868124>,  <45.452694, 31.473854, 27.626326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.449512, 31.155226, 27.868124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715614, 0.426771, 0.552959,
		-0.698451, -0.428186, -0.573431,
		-0.007954, -0.796570, 0.604495,
		45.447124, 30.916254, 28.049473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.729595, 31.324167, 27.696543>,  <45.452694, 31.473854, 27.626326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.729595, 31.324167, 27.696543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915909, 31.155670, 28.007822>,  <45.027699, 31.054571, 28.194590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915909, 31.155670, 28.007822>,  <44.729595, 31.324167, 27.696543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.915909, 31.155670, 28.007822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693462, 0.372520, 0.616716,
		-0.549683, -0.826912, -0.118602,
		0.465788, -0.421244, 0.778199,
		45.055645, 31.029297, 28.241282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.206810, 30.851442, 28.046530>,  <44.729595, 31.324167, 27.696543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.206810, 30.851442, 28.046530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.474152, 30.952532, 28.326368>,  <44.634556, 31.013186, 28.494270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.474152, 30.952532, 28.326368>,  <44.206810, 30.851442, 28.046530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.474152, 30.952532, 28.326368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734380, 0.373728, 0.566581,
		-0.118272, -0.892446, 0.435376,
		0.668355, 0.252721, 0.699596,
		44.674660, 31.028349, 28.536247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.892658, 30.592514, 28.707764>,  <44.206810, 30.851442, 28.046530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.892658, 30.592514, 28.707764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172710, 30.863020, 28.799404>,  <44.340740, 31.025324, 28.854389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172710, 30.863020, 28.799404>,  <43.892658, 30.592514, 28.707764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.172710, 30.863020, 28.799404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651668, 0.474074, 0.592101,
		0.291806, -0.563844, 0.772612,
		0.700128, 0.676265, 0.229102,
		44.382748, 31.065899, 28.868134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.831375, 30.705784, 29.479025>,  <43.892658, 30.592514, 28.707764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.831375, 30.705784, 29.479025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.018578, 31.022440, 29.321911>,  <44.130898, 31.212433, 29.227642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.018578, 31.022440, 29.321911>,  <43.831375, 30.705784, 29.479025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.018578, 31.022440, 29.321911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604063, 0.610986, 0.511667,
		0.645044, -0.002191, 0.764143,
		0.468002, 0.791638, -0.392789,
		44.158978, 31.259932, 29.204075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.092781, 31.253891, 30.023932>,  <43.831375, 30.705784, 29.479025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.092781, 31.253891, 30.023932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.054401, 31.442671, 29.673376>,  <44.031372, 31.555939, 29.463043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.054401, 31.442671, 29.673376>,  <44.092781, 31.253891, 30.023932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.054401, 31.442671, 29.673376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602302, 0.673447, 0.428605,
		0.792481, 0.568974, 0.219641,
		-0.095949, 0.471952, -0.876388,
		44.025616, 31.584257, 29.410460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184013, 31.860533, 30.195284>,  <44.092781, 31.253891, 30.023932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184013, 31.860533, 30.195284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046062, 31.957188, 29.832479>,  <43.963291, 32.015179, 29.614796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046062, 31.957188, 29.832479>,  <44.184013, 31.860533, 30.195284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.046062, 31.957188, 29.832479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538067, 0.740883, 0.401967,
		0.769120, 0.626663, -0.125497,
		-0.344876, 0.241635, -0.907013,
		43.942600, 32.029678, 29.560375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.385048, 32.557980, 30.052229>,  <44.184013, 31.860533, 30.195284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.385048, 32.557980, 30.052229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064571, 32.475800, 29.827415>,  <43.872284, 32.426491, 29.692528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.064571, 32.475800, 29.827415>,  <44.385048, 32.557980, 30.052229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.064571, 32.475800, 29.827415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440098, 0.838697, 0.320781,
		0.405472, 0.504357, -0.762375,
		-0.801190, -0.205452, -0.562035,
		43.824215, 32.414165, 29.658804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.115635, 33.177784, 29.834494>,  <44.385048, 32.557980, 30.052229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.115635, 33.177784, 29.834494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783619, 32.966228, 29.763712>,  <43.584408, 32.839294, 29.721243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.783619, 32.966228, 29.763712>,  <44.115635, 33.177784, 29.834494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783619, 32.966228, 29.763712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557303, 0.774584, 0.299053,
		-0.021097, 0.346845, -0.937685,
		-0.830041, -0.528884, -0.176956,
		43.534607, 32.807564, 29.710625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686951, 33.621933, 29.468136>,  <44.115635, 33.177784, 29.834494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686951, 33.621933, 29.468136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.446407, 33.334167, 29.607170>,  <43.302082, 33.161507, 29.690590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.446407, 33.334167, 29.607170>,  <43.686951, 33.621933, 29.468136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.446407, 33.334167, 29.607170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664020, 0.691949, 0.283342,
		-0.444352, -0.060415, -0.893813,
		-0.601355, -0.719413, 0.347586,
		43.265999, 33.118343, 29.711447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.046692, 33.962990, 29.450020>,  <43.686951, 33.621933, 29.468136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.046692, 33.962990, 29.450020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987949, 33.640247, 29.678900>,  <42.952702, 33.446602, 29.816227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987949, 33.640247, 29.678900>,  <43.046692, 33.962990, 29.450020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987949, 33.640247, 29.678900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725874, 0.480884, 0.491791,
		-0.671967, -0.343120, -0.656300,
		-0.146861, -0.806858, 0.572200,
		42.943890, 33.398190, 29.850559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363869, 33.863533, 29.435984>,  <43.046692, 33.962990, 29.450020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363869, 33.863533, 29.435984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508972, 33.698689, 29.770306>,  <42.596035, 33.599781, 29.970900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.508972, 33.698689, 29.770306>,  <42.363869, 33.863533, 29.435984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508972, 33.698689, 29.770306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616628, 0.566312, 0.546865,
		-0.698695, -0.713761, -0.048683,
		0.362761, -0.412111, 0.835804,
		42.617802, 33.575054, 30.021048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.808613, 33.537369, 29.786243>,  <42.363869, 33.863533, 29.435984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.808613, 33.537369, 29.786243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099506, 33.637745, 30.041796>,  <42.274040, 33.697971, 30.195127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.099506, 33.637745, 30.041796>,  <41.808613, 33.537369, 29.786243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099506, 33.637745, 30.041796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623667, 0.630300, 0.462343,
		-0.286665, -0.734677, 0.614876,
		0.727229, 0.250941, 0.638879,
		42.317677, 33.713028, 30.233459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474083, 33.659824, 30.449606>,  <41.808613, 33.537369, 29.786243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474083, 33.659824, 30.449606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829281, 33.818371, 30.542873>,  <42.042400, 33.913498, 30.598833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.829281, 33.818371, 30.542873>,  <41.474083, 33.659824, 30.449606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.829281, 33.818371, 30.542873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456374, 0.697277, 0.552745,
		0.056504, -0.597245, 0.800066,
		0.887992, 0.396362, 0.233168,
		42.095680, 33.937279, 30.612823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593136, 33.671135, 31.172543>,  <41.474083, 33.659824, 30.449606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593136, 33.671135, 31.172543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842701, 33.953365, 31.038145>,  <41.992439, 34.122704, 30.957508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842701, 33.953365, 31.038145>,  <41.593136, 33.671135, 31.172543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842701, 33.953365, 31.038145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246898, 0.585881, 0.771871,
		0.741467, -0.398625, 0.539745,
		0.623913, 0.705579, -0.335992,
		42.029877, 34.165039, 30.937347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538872, 34.057514, 31.718922>,  <41.593136, 33.671135, 31.172543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538872, 34.057514, 31.718922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785015, 34.247768, 31.467493>,  <41.932701, 34.361919, 31.316635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785015, 34.247768, 31.467493>,  <41.538872, 34.057514, 31.718922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785015, 34.247768, 31.467493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178450, 0.860790, 0.476651,
		0.767780, -0.181144, 0.614573,
		0.615361, 0.475634, -0.628573,
		41.969624, 34.390457, 31.278921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054626, 34.473576, 32.143070>,  <41.538872, 34.057514, 31.718922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054626, 34.473576, 32.143070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008167, 34.634521, 31.779839>,  <41.980293, 34.731087, 31.561899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008167, 34.634521, 31.779839>,  <42.054626, 34.473576, 32.143070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008167, 34.634521, 31.779839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124966, 0.901085, 0.415245,
		0.985339, 0.161709, -0.054375,
		-0.116146, 0.402362, -0.908083,
		41.973324, 34.755230, 31.507414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532433, 35.041992, 32.061497>,  <42.054626, 34.473576, 32.143070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532433, 35.041992, 32.061497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.220364, 35.082138, 31.814516>,  <42.033123, 35.106224, 31.666327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.220364, 35.082138, 31.814516>,  <42.532433, 35.041992, 32.061497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220364, 35.082138, 31.814516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248466, 0.856131, 0.453105,
		0.574098, 0.506919, -0.642997,
		-0.780177, 0.100364, -0.617455,
		41.986309, 35.112247, 31.629280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.564266, 35.766293, 31.800896>,  <42.532433, 35.041992, 32.061497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.564266, 35.766293, 31.800896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188492, 35.652504, 31.724432>,  <41.963028, 35.584232, 31.678555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.188492, 35.652504, 31.724432>,  <42.564266, 35.766293, 31.800896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188492, 35.652504, 31.724432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342718, 0.775199, 0.530670,
		-0.002774, 0.564043, -0.825741,
		-0.939434, -0.284468, -0.191158,
		41.906662, 35.567165, 31.667086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351753, 36.319595, 31.531475>,  <42.564266, 35.766293, 31.800896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351753, 36.319595, 31.531475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055149, 36.104145, 31.691500>,  <41.877186, 35.974876, 31.787514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055149, 36.104145, 31.691500>,  <42.351753, 36.319595, 31.531475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055149, 36.104145, 31.691500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370175, 0.825729, 0.425608,
		-0.559584, 0.167500, -0.811671,
		-0.741509, -0.538624, 0.400061,
		41.832695, 35.942558, 31.811518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.877110, 36.818348, 31.484018>,  <42.351753, 36.319595, 31.531475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.877110, 36.818348, 31.484018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731480, 36.547661, 31.739986>,  <41.644100, 36.385246, 31.893568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.731480, 36.547661, 31.739986>,  <41.877110, 36.818348, 31.484018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731480, 36.547661, 31.739986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299865, 0.735659, 0.607361,
		-0.881777, 0.029236, -0.470760,
		-0.364075, -0.676721, 0.639920,
		41.622257, 36.344643, 31.931963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084488, 36.931408, 31.603188>,  <41.877110, 36.818348, 31.484018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084488, 36.931408, 31.603188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238964, 36.742821, 31.920319>,  <41.331650, 36.629669, 32.110596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238964, 36.742821, 31.920319>,  <41.084488, 36.931408, 31.603188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238964, 36.742821, 31.920319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183139, 0.803209, 0.566847,
		-0.904055, -0.364109, 0.223849,
		0.386191, -0.471465, 0.792828,
		41.354820, 36.601379, 32.158169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726059, 37.188332, 32.228294>,  <41.084488, 36.931408, 31.603188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726059, 37.188332, 32.228294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030354, 36.985950, 32.390919>,  <41.212929, 36.864521, 32.488495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.030354, 36.985950, 32.390919>,  <40.726059, 37.188332, 32.228294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030354, 36.985950, 32.390919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064518, 0.682231, 0.728285,
		-0.645845, -0.527803, 0.551641,
		0.760737, -0.505950, 0.406562,
		41.258575, 36.834164, 32.512886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518578, 37.037548, 32.827888>,  <40.726059, 37.188332, 32.228294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518578, 37.037548, 32.827888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915333, 37.006901, 32.868462>,  <41.153385, 36.988514, 32.892803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.915333, 37.006901, 32.868462>,  <40.518578, 37.037548, 32.827888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915333, 37.006901, 32.868462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054412, 0.465214, 0.883524,
		-0.114881, -0.881876, 0.457272,
		0.991888, -0.076619, 0.101429,
		41.212898, 36.983913, 32.898891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590546, 36.672123, 33.460621>,  <40.518578, 37.037548, 32.827888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590546, 36.672123, 33.460621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921783, 36.878563, 33.373074>,  <41.120525, 37.002426, 33.320545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921783, 36.878563, 33.373074>,  <40.590546, 36.672123, 33.460621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921783, 36.878563, 33.373074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074883, 0.488765, 0.869196,
		0.555565, -0.703386, 0.443390,
		0.828094, 0.516098, -0.218869,
		41.170212, 37.033390, 33.307415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051598, 36.487801, 33.972824>,  <40.590546, 36.672123, 33.460621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051598, 36.487801, 33.972824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202885, 36.836388, 33.847923>,  <41.293659, 37.045540, 33.772984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202885, 36.836388, 33.847923>,  <41.051598, 36.487801, 33.972824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202885, 36.836388, 33.847923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024446, 0.327786, 0.944436,
		0.925393, -0.364838, 0.102671,
		0.378221, 0.871464, -0.312250,
		41.316349, 37.097828, 33.754250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.437748, 36.733887, 34.477928>,  <41.051598, 36.487801, 33.972824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.437748, 36.733887, 34.477928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396259, 37.075211, 34.273533>,  <41.371368, 37.280006, 34.150898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.396259, 37.075211, 34.273533>,  <41.437748, 36.733887, 34.477928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.396259, 37.075211, 34.273533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045652, 0.517300, 0.854586,
		0.993559, 0.065308, -0.092608,
		-0.103717, 0.853309, -0.510986,
		41.365143, 37.331203, 34.120235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966690, 37.134834, 34.729698>,  <41.437748, 36.733887, 34.477928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966690, 37.134834, 34.729698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.702129, 37.385975, 34.565575>,  <41.543392, 37.536659, 34.467098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.702129, 37.385975, 34.565575>,  <41.966690, 37.134834, 34.729698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.702129, 37.385975, 34.565575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048119, 0.581448, 0.812159,
		0.748490, 0.517417, -0.414780,
		-0.661398, 0.627852, -0.410311,
		41.503712, 37.574329, 34.442482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281490, 37.786713, 34.689686>,  <41.966690, 37.134834, 34.729698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281490, 37.786713, 34.689686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888680, 37.861736, 34.698097>,  <41.652992, 37.906750, 34.703144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.888680, 37.861736, 34.698097>,  <42.281490, 37.786713, 34.689686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.888680, 37.861736, 34.698097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138150, 0.638436, 0.757175,
		0.128592, 0.746472, -0.652873,
		-0.982028, 0.187562, 0.021027,
		41.594070, 37.918003, 34.704407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202267, 38.553879, 34.838581>,  <42.281490, 37.786713, 34.689686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202267, 38.553879, 34.838581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827732, 38.418945, 34.877544>,  <41.603012, 38.337986, 34.900921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.827732, 38.418945, 34.877544>,  <42.202267, 38.553879, 34.838581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827732, 38.418945, 34.877544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134725, 0.601369, 0.787531,
		-0.324237, 0.724268, -0.608528,
		-0.936333, -0.337330, 0.097409,
		41.546833, 38.317745, 34.906769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730320, 39.114132, 34.783726>,  <42.202267, 38.553879, 34.838581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730320, 39.114132, 34.783726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573555, 38.835968, 35.024662>,  <41.479496, 38.669071, 35.169224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.573555, 38.835968, 35.024662>,  <41.730320, 39.114132, 34.783726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.573555, 38.835968, 35.024662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050924, 0.637314, 0.768919,
		-0.918591, 0.332024, -0.214361,
		-0.391915, -0.695406, 0.602339,
		41.455982, 38.627346, 35.205364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545666, 39.639961, 35.306587>,  <41.730320, 39.114132, 34.783726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545666, 39.639961, 35.306587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765472, 39.968449, 35.368073>,  <41.897358, 40.165543, 35.404964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.765472, 39.968449, 35.368073>,  <41.545666, 39.639961, 35.306587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765472, 39.968449, 35.368073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399214, 0.419713, -0.815150,
		-0.733931, 0.386577, 0.558483,
		0.549521, 0.821218, 0.153713,
		41.930328, 40.214813, 35.414185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.092136, 40.170879, 35.223125>,  <41.545666, 39.639961, 35.306587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.092136, 40.170879, 35.223125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.455475, 40.324375, 35.156609>,  <41.673477, 40.416473, 35.116699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.455475, 40.324375, 35.156609>,  <41.092136, 40.170879, 35.223125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.455475, 40.324375, 35.156609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374968, 0.571146, -0.730199,
		-0.185228, 0.725628, 0.662688,
		0.908345, 0.383740, -0.166295,
		41.727978, 40.439499, 35.106720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852333, 40.764633, 35.160061>,  <41.092136, 40.170879, 35.223125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852333, 40.764633, 35.160061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219036, 40.767406, 35.000309>,  <41.439056, 40.769070, 34.904457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219036, 40.767406, 35.000309>,  <40.852333, 40.764633, 35.160061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219036, 40.767406, 35.000309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338466, 0.544440, -0.767481,
		0.212119, 0.838772, 0.501466,
		0.916759, 0.006932, -0.399381,
		41.494064, 40.769485, 34.880493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997860, 41.385872, 35.000317>,  <40.852333, 40.764633, 35.160061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.997860, 41.385872, 35.000317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287449, 41.251610, 34.759254>,  <41.461201, 41.171051, 34.614616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287449, 41.251610, 34.759254>,  <40.997860, 41.385872, 35.000317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287449, 41.251610, 34.759254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428220, 0.466252, -0.774104,
		0.540823, 0.818501, 0.193819,
		0.723973, -0.335656, -0.602659,
		41.504642, 41.150913, 34.578457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363590, 42.039238, 34.652683>,  <40.997860, 41.385872, 35.000317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363590, 42.039238, 34.652683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398643, 41.706020, 34.434193>,  <41.419674, 41.506088, 34.303101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398643, 41.706020, 34.434193>,  <41.363590, 42.039238, 34.652683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398643, 41.706020, 34.434193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545456, 0.418697, -0.726065,
		0.833545, 0.361569, -0.417697,
		0.087634, -0.833043, -0.546223,
		41.424934, 41.456108, 34.270325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368820, 42.241558, 34.004932>,  <41.363590, 42.039238, 34.652683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368820, 42.241558, 34.004932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262234, 41.858372, 33.962399>,  <41.198284, 41.628460, 33.936878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.262234, 41.858372, 33.962399>,  <41.368820, 42.241558, 34.004932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262234, 41.858372, 33.962399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568718, 0.245335, -0.785093,
		0.778176, -0.148724, -0.610183,
		-0.266462, -0.957963, -0.106331,
		41.182297, 41.570984, 33.930500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510277, 42.049057, 33.233112>,  <41.368820, 42.241558, 34.004932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510277, 42.049057, 33.233112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230762, 41.810364, 33.390896>,  <41.063053, 41.667149, 33.485565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230762, 41.810364, 33.390896>,  <41.510277, 42.049057, 33.233112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230762, 41.810364, 33.390896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617036, 0.223865, -0.754421,
		0.361882, -0.770580, -0.524640,
		-0.698791, -0.596733, 0.394463,
		41.021126, 41.631344, 33.509235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161396, 41.972103, 32.678463>,  <41.510277, 42.049057, 33.233112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161396, 41.972103, 32.678463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923172, 41.827007, 32.965164>,  <40.780239, 41.739948, 33.137184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923172, 41.827007, 32.965164>,  <41.161396, 41.972103, 32.678463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923172, 41.827007, 32.965164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775079, 0.024996, -0.631370,
		0.211108, -0.931555, -0.296039,
		-0.595556, -0.362741, 0.716751,
		40.744507, 41.718185, 33.180191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617184, 41.737762, 32.276402>,  <41.161396, 41.972103, 32.678463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617184, 41.737762, 32.276402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439114, 41.713207, 32.633736>,  <40.332272, 41.698475, 32.848137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439114, 41.713207, 32.633736>,  <40.617184, 41.737762, 32.276402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439114, 41.713207, 32.633736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860045, 0.307056, -0.407480,
		-0.249290, -0.949709, -0.189490,
		-0.445171, -0.061389, 0.893338,
		40.305561, 41.694790, 32.901737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006790, 41.346561, 32.189857>,  <40.617184, 41.737762, 32.276402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006790, 41.346561, 32.189857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959663, 41.588146, 32.505161>,  <39.931389, 41.733097, 32.694344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959663, 41.588146, 32.505161>,  <40.006790, 41.346561, 32.189857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959663, 41.588146, 32.505161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696207, 0.515793, -0.499253,
		-0.708107, -0.607611, 0.359713,
		-0.117814, 0.603959, 0.788260,
		39.924320, 41.769333, 32.741638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309250, 41.476994, 32.309692>,  <40.006790, 41.346561, 32.189857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309250, 41.476994, 32.309692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488068, 41.795616, 32.472492>,  <39.595360, 41.986790, 32.570171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488068, 41.795616, 32.472492>,  <39.309250, 41.476994, 32.309692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488068, 41.795616, 32.472492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698464, 0.595094, -0.397507,
		-0.558838, -0.106569, 0.822401,
		0.447044, 0.796559, 0.406996,
		39.622181, 42.034584, 32.594589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792988, 41.950817, 32.479946>,  <39.309250, 41.476994, 32.309692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.792988, 41.950817, 32.479946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122368, 42.175419, 32.447330>,  <39.319996, 42.310181, 32.427761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122368, 42.175419, 32.447330>,  <38.792988, 41.950817, 32.479946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122368, 42.175419, 32.447330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546339, 0.745868, -0.381044,
		-0.153138, 0.358319, 0.920954,
		0.823446, 0.561505, -0.081543,
		39.369400, 42.343872, 32.422867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533978, 42.604015, 32.430016>,  <38.792988, 41.950817, 32.479946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533978, 42.604015, 32.430016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908047, 42.636108, 32.292019>,  <39.132488, 42.655365, 32.209221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908047, 42.636108, 32.292019>,  <38.533978, 42.604015, 32.430016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908047, 42.636108, 32.292019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281476, 0.759581, -0.586351,
		0.215010, 0.645445, 0.732920,
		0.935170, 0.080228, -0.344995,
		39.188599, 42.660175, 32.188522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.867466, 43.300079, 32.632561>,  <38.533978, 42.604015, 32.430016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.867466, 43.300079, 32.632561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996613, 43.135639, 32.291561>,  <39.074100, 43.036976, 32.086960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996613, 43.135639, 32.291561>,  <38.867466, 43.300079, 32.632561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996613, 43.135639, 32.291561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047035, 0.892656, -0.448278,
		0.945274, 0.184832, 0.268876,
		0.322870, -0.411099, -0.852498,
		39.093475, 43.012310, 32.035812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234806, 43.854866, 32.258965>,  <38.867466, 43.300079, 32.632561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234806, 43.854866, 32.258965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144691, 43.583397, 31.979353>,  <39.090622, 43.420517, 31.811584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144691, 43.583397, 31.979353>,  <39.234806, 43.854866, 32.258965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144691, 43.583397, 31.979353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284684, 0.732022, -0.618950,
		0.931772, 0.059561, -0.358124,
		-0.225290, -0.678673, -0.699033,
		39.077103, 43.379795, 31.769644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686062, 43.896721, 31.619444>,  <39.234806, 43.854866, 32.258965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686062, 43.896721, 31.619444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331837, 43.732651, 31.532238>,  <39.119301, 43.634209, 31.479914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.331837, 43.732651, 31.532238>,  <39.686062, 43.896721, 31.619444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331837, 43.732651, 31.532238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240080, 0.805952, -0.541112,
		0.397659, -0.426850, -0.812199,
		-0.885567, -0.410171, -0.218016,
		39.066166, 43.609600, 31.466833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591053, 44.211201, 30.988905>,  <39.686062, 43.896721, 31.619444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591053, 44.211201, 30.988905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245731, 44.018410, 31.048788>,  <39.038540, 43.902737, 31.084719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245731, 44.018410, 31.048788>,  <39.591053, 44.211201, 30.988905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245731, 44.018410, 31.048788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475702, 0.678010, -0.560366,
		0.168577, -0.554982, -0.814602,
		-0.863301, -0.481973, 0.149709,
		38.986740, 43.873817, 31.093700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312645, 44.223038, 30.323915>,  <39.591053, 44.211201, 30.988905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312645, 44.223038, 30.323915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023239, 44.175602, 30.595932>,  <38.849594, 44.147141, 30.759142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.023239, 44.175602, 30.595932>,  <39.312645, 44.223038, 30.323915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.023239, 44.175602, 30.595932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552497, 0.690082, -0.467476,
		-0.413844, -0.713949, -0.564810,
		-0.723519, -0.118594, 0.680041,
		38.806183, 44.140022, 30.799944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708557, 44.095718, 29.967482>,  <39.312645, 44.223038, 30.323915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708557, 44.095718, 29.967482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609650, 44.256638, 30.320076>,  <38.550304, 44.353188, 30.531631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609650, 44.256638, 30.320076>,  <38.708557, 44.095718, 29.967482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609650, 44.256638, 30.320076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620159, 0.633283, -0.462985,
		-0.744486, -0.661144, 0.092894,
		-0.247272, 0.402295, 0.881485,
		38.535469, 44.377327, 30.584522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005905, 44.019695, 30.072073>,  <38.708557, 44.095718, 29.967482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005905, 44.019695, 30.072073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132668, 44.340282, 30.274942>,  <38.208725, 44.532635, 30.396664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.132668, 44.340282, 30.274942>,  <38.005905, 44.019695, 30.072073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132668, 44.340282, 30.274942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549277, 0.591024, -0.590750,
		-0.773216, -0.091364, 0.627527,
		0.316910, 0.801464, 0.507173,
		38.227741, 44.580723, 30.427094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538929, 44.297802, 29.590218>,  <38.005905, 44.019695, 30.072073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538929, 44.297802, 29.590218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803082, 44.566647, 29.724184>,  <37.961575, 44.727951, 29.804564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803082, 44.566647, 29.724184>,  <37.538929, 44.297802, 29.590218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803082, 44.566647, 29.724184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274030, 0.630936, -0.725829,
		-0.699146, 0.387546, 0.600835,
		0.660381, 0.672107, 0.334917,
		38.001194, 44.768280, 29.824659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169930, 44.852127, 29.848192>,  <37.538929, 44.297802, 29.590218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169930, 44.852127, 29.848192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537579, 44.954636, 29.728495>,  <37.758167, 45.016140, 29.656677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537579, 44.954636, 29.728495>,  <37.169930, 44.852127, 29.848192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537579, 44.954636, 29.728495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393146, 0.645938, -0.654370,
		0.025597, 0.719090, 0.694445,
		0.919120, 0.256268, -0.299242,
		37.813316, 45.031517, 29.638721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243496, 45.663197, 29.892246>,  <37.169930, 44.852127, 29.848192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243496, 45.663197, 29.892246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469048, 45.484119, 29.614655>,  <37.604378, 45.376671, 29.448099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469048, 45.484119, 29.614655>,  <37.243496, 45.663197, 29.892246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469048, 45.484119, 29.614655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340178, 0.639803, -0.689153,
		0.752541, 0.624676, 0.208475,
		0.563880, -0.447697, -0.693979,
		37.638210, 45.349812, 29.406462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007034, 45.610359, 30.102186>,  <37.243496, 45.663197, 29.892246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007034, 45.610359, 30.102186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751072, 45.503571, 30.390421>,  <37.597496, 45.439495, 30.563362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751072, 45.503571, 30.390421>,  <38.007034, 45.610359, 30.102186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751072, 45.503571, 30.390421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705283, -0.576361, 0.412776,
		0.305116, 0.772355, 0.557111,
		-0.639907, -0.266976, 0.720585,
		37.559101, 45.423477, 30.606596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244751, 45.696892, 30.793945>,  <38.007034, 45.610359, 30.102186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244751, 45.696892, 30.793945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986664, 45.392929, 30.825521>,  <37.831810, 45.210552, 30.844467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986664, 45.392929, 30.825521>,  <38.244751, 45.696892, 30.793945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986664, 45.392929, 30.825521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709944, -0.558187, 0.429427,
		-0.282262, 0.333116, 0.899645,
		-0.645219, -0.759908, 0.078939,
		37.793098, 45.164955, 30.849203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572102, 45.205231, 31.320940>,  <38.244751, 45.696892, 30.793945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572102, 45.205231, 31.320940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309822, 44.994099, 31.104996>,  <38.152454, 44.867420, 30.975430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309822, 44.994099, 31.104996>,  <38.572102, 45.205231, 31.320940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309822, 44.994099, 31.104996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392793, -0.849123, 0.353133,
		-0.644802, 0.019497, 0.764101,
		-0.655701, -0.527835, -0.539858,
		38.113113, 44.835747, 30.943039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005585, 44.785370, 31.706316>,  <38.572102, 45.205231, 31.320940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005585, 44.785370, 31.706316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190903, 44.649567, 31.378880>,  <38.302094, 44.568085, 31.182417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.190903, 44.649567, 31.378880>,  <38.005585, 44.785370, 31.706316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190903, 44.649567, 31.378880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319876, -0.797368, 0.511745,
		-0.826463, -0.498935, -0.260811,
		0.463290, -0.339512, -0.818593,
		38.329891, 44.547714, 31.133303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846935, 43.978851, 31.670170>,  <38.005585, 44.785370, 31.706316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846935, 43.978851, 31.670170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137035, 44.032421, 31.400038>,  <38.311096, 44.064564, 31.237959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.137035, 44.032421, 31.400038>,  <37.846935, 43.978851, 31.670170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137035, 44.032421, 31.400038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451940, -0.832583, 0.320244,
		-0.519382, -0.537467, -0.664357,
		0.725253, 0.133921, -0.675332,
		38.354610, 44.072598, 31.197437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815746, 43.371384, 31.181524>,  <37.846935, 43.978851, 31.670170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815746, 43.371384, 31.181524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181614, 43.523342, 31.126295>,  <38.401134, 43.614517, 31.093157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181614, 43.523342, 31.126295>,  <37.815746, 43.371384, 31.181524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181614, 43.523342, 31.126295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404071, -0.850418, 0.336921,
		0.010575, -0.363962, -0.931354,
		0.914667, 0.379896, -0.138073,
		38.456013, 43.637310, 31.084873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256027, 42.795547, 30.880674>,  <37.815746, 43.371384, 31.181524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256027, 42.795547, 30.880674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497299, 43.071369, 31.041016>,  <38.642063, 43.236862, 31.137220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.497299, 43.071369, 31.041016>,  <38.256027, 42.795547, 30.880674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497299, 43.071369, 31.041016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530447, -0.722124, 0.444031,
		0.595652, -0.055199, -0.801344,
		0.603179, 0.689558, 0.400854,
		38.678253, 43.278236, 31.161272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918774, 42.489574, 30.835125>,  <38.256027, 42.795547, 30.880674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918774, 42.489574, 30.835125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948532, 42.769024, 31.119772>,  <38.966385, 42.936691, 31.290560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948532, 42.769024, 31.119772>,  <38.918774, 42.489574, 30.835125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948532, 42.769024, 31.119772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479673, -0.650688, 0.588658,
		0.874288, 0.297550, -0.383515,
		0.074394, 0.698619, 0.711616,
		38.970852, 42.978611, 31.333256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558315, 42.259369, 31.107288>,  <38.918774, 42.489574, 30.835125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558315, 42.259369, 31.107288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437962, 42.520599, 31.385269>,  <39.365749, 42.677338, 31.552057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437962, 42.520599, 31.385269>,  <39.558315, 42.259369, 31.107288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437962, 42.520599, 31.385269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626479, -0.414065, 0.660359,
		0.719020, 0.634066, -0.284553,
		-0.300888, 0.653078, 0.694950,
		39.347694, 42.716522, 31.593754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038486, 42.687836, 31.249418>,  <39.558315, 42.259369, 31.107288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038486, 42.687836, 31.249418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805664, 42.612167, 31.565754>,  <39.665970, 42.566769, 31.755554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.805664, 42.612167, 31.565754>,  <40.038486, 42.687836, 31.249418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805664, 42.612167, 31.565754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789218, -0.365628, 0.493408,
		0.195816, 0.911335, 0.362110,
		-0.582057, -0.189167, 0.790838,
		39.631046, 42.555416, 31.803005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956825, 43.003498, 31.864695>,  <40.038486, 42.687836, 31.249418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956825, 43.003498, 31.864695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809834, 43.125507, 32.216129>,  <39.721638, 43.198715, 32.426991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.809834, 43.125507, 32.216129>,  <39.956825, 43.003498, 31.864695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809834, 43.125507, 32.216129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167998, -0.907375, 0.385288,
		0.914731, 0.289188, 0.282201,
		-0.367483, 0.305026, 0.878587,
		39.699589, 43.217014, 32.479706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386154, 42.989918, 32.408371>,  <39.956825, 43.003498, 31.864695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386154, 42.989918, 32.408371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017159, 42.901913, 32.535240>,  <39.795761, 42.849110, 32.611362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.017159, 42.901913, 32.535240>,  <40.386154, 42.989918, 32.408371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017159, 42.901913, 32.535240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360361, -0.785378, 0.503311,
		0.138365, 0.578598, 0.803790,
		-0.922494, -0.220014, 0.317173,
		39.740410, 42.835907, 32.630394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173130, 43.088165, 33.170357>,  <40.386154, 42.989918, 32.408371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173130, 43.088165, 33.170357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996368, 42.769089, 33.006207>,  <39.890312, 42.577644, 32.907715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996368, 42.769089, 33.006207>,  <40.173130, 43.088165, 33.170357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996368, 42.769089, 33.006207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417628, -0.587807, 0.692871,
		-0.793919, 0.134798, 0.592893,
		-0.441904, -0.797692, -0.410375,
		39.863796, 42.529781, 32.883095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736786, 42.566277, 33.716263>,  <40.173130, 43.088165, 33.170357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736786, 42.566277, 33.716263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917091, 42.414219, 33.393204>,  <40.025276, 42.322983, 33.199368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917091, 42.414219, 33.393204>,  <39.736786, 42.566277, 33.716263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917091, 42.414219, 33.393204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434936, -0.696583, 0.570615,
		-0.779514, -0.608489, -0.148655,
		0.450764, -0.380148, -0.807651,
		40.052322, 42.300175, 33.150909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738148, 41.896278, 33.951969>,  <39.736786, 42.566277, 33.716263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738148, 41.896278, 33.951969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964592, 41.869633, 33.623314>,  <40.100456, 41.853645, 33.426121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964592, 41.869633, 33.623314>,  <39.738148, 41.896278, 33.951969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964592, 41.869633, 33.623314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589058, -0.664564, 0.459744,
		-0.576656, -0.744256, -0.336974,
		0.566108, -0.066617, -0.821635,
		40.134426, 41.849648, 33.376823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883762, 41.199894, 34.016960>,  <39.738148, 41.896278, 33.951969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883762, 41.199894, 34.016960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154202, 41.349812, 33.763214>,  <40.316463, 41.439762, 33.610966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154202, 41.349812, 33.763214>,  <39.883762, 41.199894, 34.016960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154202, 41.349812, 33.763214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624561, -0.748302, 0.223533,
		-0.390919, -0.547332, -0.740007,
		0.676096, 0.374796, -0.634368,
		40.357029, 41.462250, 33.572903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339283, 40.787693, 34.108292>,  <39.883762, 41.199894, 34.016960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339283, 40.787693, 34.108292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546326, 41.008446, 33.846756>,  <40.670551, 41.140900, 33.689835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546326, 41.008446, 33.846756>,  <40.339283, 40.787693, 34.108292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546326, 41.008446, 33.846756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854756, -0.299162, 0.424140,
		0.038472, -0.778411, -0.626575,
		0.517603, 0.551886, -0.653843,
		40.701607, 41.174011, 33.650604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.851181, 40.375191, 33.728455>,  <40.339283, 40.787693, 34.108292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.851181, 40.375191, 33.728455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988358, 40.747910, 33.776016>,  <41.070663, 40.971542, 33.804554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988358, 40.747910, 33.776016>,  <40.851181, 40.375191, 33.728455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988358, 40.747910, 33.776016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751422, -0.348084, 0.560538,
		0.563698, -0.102885, -0.819548,
		0.342942, 0.931801, 0.118904,
		41.091240, 41.027451, 33.811687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619362, 40.338276, 33.626617>,  <40.851181, 40.375191, 33.728455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619362, 40.338276, 33.626617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543591, 40.667606, 33.840626>,  <41.498127, 40.865204, 33.969032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543591, 40.667606, 33.840626>,  <41.619362, 40.338276, 33.626617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543591, 40.667606, 33.840626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786570, -0.198914, 0.584587,
		0.587730, 0.531567, -0.609926,
		-0.189424, 0.823329, 0.535022,
		41.486763, 40.914604, 34.001133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.258854, 40.509480, 33.803883>,  <41.619362, 40.338276, 33.626617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.258854, 40.509480, 33.803883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039604, 40.727333, 34.057789>,  <41.908054, 40.858044, 34.210133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.039604, 40.727333, 34.057789>,  <42.258854, 40.509480, 33.803883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.039604, 40.727333, 34.057789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594403, -0.280274, 0.753745,
		0.588422, 0.790458, -0.170104,
		-0.548128, 0.544631, 0.634770,
		41.875164, 40.890724, 34.248219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.685303, 40.766510, 34.325974>,  <42.258854, 40.509480, 33.803883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.685303, 40.766510, 34.325974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329266, 40.769314, 34.508263>,  <42.115643, 40.770996, 34.617638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329266, 40.769314, 34.508263>,  <42.685303, 40.766510, 34.325974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329266, 40.769314, 34.508263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443088, -0.220976, 0.868817,
		0.106796, 0.975254, 0.193582,
		-0.890094, 0.007013, 0.455723,
		42.062237, 40.771416, 34.644981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.865334, 41.010288, 34.931156>,  <42.685303, 40.766510, 34.325974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.865334, 41.010288, 34.931156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512043, 40.828812, 34.978619>,  <42.300068, 40.719925, 35.007095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.512043, 40.828812, 34.978619>,  <42.865334, 41.010288, 34.931156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.512043, 40.828812, 34.978619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240445, -0.220889, 0.945195,
		-0.402621, 0.863347, 0.304183,
		-0.883223, -0.453695, 0.118653,
		42.247078, 40.692703, 35.014214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.536266, 41.337124, 35.475712>,  <42.865334, 41.010288, 34.931156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.536266, 41.337124, 35.475712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380310, 40.969311, 35.455933>,  <42.286736, 40.748623, 35.444065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.380310, 40.969311, 35.455933>,  <42.536266, 41.337124, 35.475712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.380310, 40.969311, 35.455933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496004, -0.254945, 0.830050,
		-0.775864, 0.299105, 0.555493,
		-0.389892, -0.919532, -0.049445,
		42.263344, 40.693451, 35.441097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.449387, 41.104191, 36.076241>,  <42.536266, 41.337124, 35.475712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.449387, 41.104191, 36.076241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482273, 40.773132, 35.854160>,  <42.502003, 40.574497, 35.720913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482273, 40.773132, 35.854160>,  <42.449387, 41.104191, 36.076241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.482273, 40.773132, 35.854160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690372, -0.354482, 0.630658,
		-0.718768, -0.435145, 0.542237,
		0.082214, -0.827642, -0.555202,
		42.506939, 40.524841, 35.687599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209606, 40.443687, 36.411724>,  <42.449387, 41.104191, 36.076241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209606, 40.443687, 36.411724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481007, 40.343445, 36.135509>,  <42.643845, 40.283298, 35.969780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481007, 40.343445, 36.135509>,  <42.209606, 40.443687, 36.411724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481007, 40.343445, 36.135509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553139, -0.444281, 0.704735,
		-0.483401, -0.860123, -0.162825,
		0.678499, -0.250605, -0.690533,
		42.684555, 40.268265, 35.928349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284054, 39.804211, 36.630699>,  <42.209606, 40.443687, 36.411724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284054, 39.804211, 36.630699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596153, 39.896172, 36.398026>,  <42.783413, 39.951347, 36.258423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.596153, 39.896172, 36.398026>,  <42.284054, 39.804211, 36.630699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596153, 39.896172, 36.398026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620060, -0.406315, 0.671144,
		-0.082051, -0.884339, -0.459579,
		0.780252, 0.229898, -0.581681,
		42.830231, 39.965141, 36.223522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601936, 39.153267, 36.489704>,  <42.284054, 39.804211, 36.630699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601936, 39.153267, 36.489704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849262, 39.466427, 36.517296>,  <42.997658, 39.654324, 36.533852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849262, 39.466427, 36.517296>,  <42.601936, 39.153267, 36.489704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849262, 39.466427, 36.517296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443087, -0.419736, 0.792146,
		0.649124, -0.459230, -0.606420,
		0.618314, 0.782898, 0.068982,
		43.034756, 39.701298, 36.537991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.291252, 38.696712, 36.715290>,  <42.601936, 39.153267, 36.489704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.291252, 38.696712, 36.715290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538200, 39.011196, 36.726032>,  <43.686371, 39.199886, 36.732479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538200, 39.011196, 36.726032>,  <43.291252, 38.696712, 36.715290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538200, 39.011196, 36.726032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664729, 0.539623, -0.516665,
		-0.420701, 0.301122, 0.855767,
		0.617371, 0.786214, 0.026856,
		43.723412, 39.247059, 36.734089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485252, 38.800026, 37.426228>,  <43.291252, 38.696712, 36.715290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485252, 38.800026, 37.426228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731247, 38.638966, 37.155033>,  <43.878845, 38.542328, 36.992317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731247, 38.638966, 37.155033>,  <43.485252, 38.800026, 37.426228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.731247, 38.638966, 37.155033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215393, -0.912881, 0.346776,
		-0.758546, -0.067231, -0.648141,
		0.614991, -0.402651, -0.677982,
		43.915745, 38.518169, 36.951637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.044296, 38.354271, 37.490761>,  <43.485252, 38.800026, 37.426228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.044296, 38.354271, 37.490761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339409, 38.313869, 37.757736>,  <44.516476, 38.289627, 37.917923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339409, 38.313869, 37.757736>,  <44.044296, 38.354271, 37.490761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339409, 38.313869, 37.757736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405464, 0.856817, -0.318532,
		-0.539702, 0.505631, 0.673097,
		0.737781, -0.101004, 0.667441,
		44.560741, 38.283569, 37.957970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.422169, 38.141911, 36.785831>,  <44.044296, 38.354271, 37.490761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.422169, 38.141911, 36.785831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.257000, 37.964851, 36.467445>,  <44.157898, 37.858616, 36.276413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.257000, 37.964851, 36.467445>,  <44.422169, 38.141911, 36.785831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.257000, 37.964851, 36.467445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176402, 0.818529, -0.546710,
		0.893520, -0.366158, -0.259905,
		-0.412922, -0.442649, -0.795963,
		44.133121, 37.832058, 36.228657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.913395, 38.035534, 36.192043>,  <44.422169, 38.141911, 36.785831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.913395, 38.035534, 36.192043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.530212, 38.079254, 36.085934>,  <44.300301, 38.105488, 36.022270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.530212, 38.079254, 36.085934>,  <44.913395, 38.035534, 36.192043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.530212, 38.079254, 36.085934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214079, 0.887868, -0.407260,
		0.191012, -0.446927, -0.873940,
		-0.957958, 0.109301, -0.265272,
		44.242825, 38.112045, 36.006351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996651, 38.148815, 35.500637>,  <44.913395, 38.035534, 36.192043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.996651, 38.148815, 35.500637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625832, 38.260838, 35.600357>,  <44.403339, 38.328053, 35.660191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625832, 38.260838, 35.600357>,  <44.996651, 38.148815, 35.500637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625832, 38.260838, 35.600357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129357, 0.862972, -0.488413,
		-0.351922, -0.420533, -0.836243,
		-0.927048, 0.280057, 0.249300,
		44.347717, 38.344856, 35.675148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.965260, 37.572670, 35.167301>,  <44.996651, 38.148815, 35.500637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.965260, 37.572670, 35.167301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893616, 37.841179, 34.879604>,  <44.850628, 38.002285, 34.706985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.893616, 37.841179, 34.879604>,  <44.965260, 37.572670, 35.167301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.893616, 37.841179, 34.879604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977317, -0.037426, 0.208448,
		0.113007, 0.740266, 0.662749,
		-0.179111, 0.671272, -0.719245,
		44.839882, 38.042561, 34.663830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.636448, 37.040607, 34.532478>,  <44.965260, 37.572670, 35.167301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.636448, 37.040607, 34.532478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577450, 36.652447, 34.608963>,  <44.542053, 36.419548, 34.654854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577450, 36.652447, 34.608963>,  <44.636448, 37.040607, 34.532478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.577450, 36.652447, 34.608963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294644, 0.227661, 0.928092,
		-0.944156, 0.080547, -0.319502,
		-0.147493, -0.970403, 0.191215,
		44.533203, 36.361324, 34.666328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.283798, 36.853485, 34.805466>,  <44.636448, 37.040607, 34.532478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.283798, 36.853485, 34.805466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638008, 36.703949, 34.915802>,  <45.850536, 36.614227, 34.982002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.638008, 36.703949, 34.915802>,  <45.283798, 36.853485, 34.805466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.638008, 36.703949, 34.915802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463334, 0.754226, -0.465257,
		-0.034112, 0.539803, 0.841100,
		0.885527, -0.373839, 0.275837,
		45.903667, 36.591797, 34.998554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.314220, 36.468918, 34.183517>,  <45.283798, 36.853485, 34.805466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.314220, 36.468918, 34.183517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.339912, 36.237679, 34.508892>,  <45.355328, 36.098934, 34.704117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.339912, 36.237679, 34.508892>,  <45.314220, 36.468918, 34.183517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.339912, 36.237679, 34.508892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968591, -0.160098, -0.190266,
		0.240222, 0.800107, 0.549656,
		0.064235, -0.578098, 0.813435,
		45.359184, 36.064251, 34.752922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.843571, 36.090252, 33.550243>,  <45.314220, 36.468918, 34.183517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.843571, 36.090252, 33.550243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.138428, 36.360500, 33.555183>,  <46.315342, 36.522652, 33.558147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.138428, 36.360500, 33.555183>,  <45.843571, 36.090252, 33.550243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.138428, 36.360500, 33.555183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659904, -0.723684, 0.202010,
		0.145420, -0.140760, -0.979306,
		0.737142, 0.675624, 0.012351,
		46.359570, 36.563187, 33.558887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.357674, 35.686054, 33.262215>,  <45.843571, 36.090252, 33.550243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.357674, 35.686054, 33.262215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.502666, 35.978188, 33.493809>,  <46.589661, 36.153465, 33.632767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.502666, 35.978188, 33.493809>,  <46.357674, 35.686054, 33.262215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.502666, 35.978188, 33.493809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786264, -0.573183, 0.230760,
		0.500396, 0.371590, -0.782000,
		0.362481, 0.730330, 0.578986,
		46.611412, 36.197289, 33.667503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.065163, 35.737320, 33.351807>,  <46.357674, 35.686054, 33.262215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.065163, 35.737320, 33.351807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.917622, 35.884819, 33.693092>,  <46.829098, 35.973316, 33.897865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.917622, 35.884819, 33.693092>,  <47.065163, 35.737320, 33.351807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.917622, 35.884819, 33.693092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655092, -0.548071, 0.520070,
		0.659395, 0.750763, -0.039404,
		-0.368854, 0.368745, 0.853214,
		46.806965, 35.995441, 33.949055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.540962, 35.609837, 33.898220>,  <47.065163, 35.737320, 33.351807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.540962, 35.609837, 33.898220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.220016, 35.693542, 34.121796>,  <47.027447, 35.743767, 34.255943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.220016, 35.693542, 34.121796>,  <47.540962, 35.609837, 33.898220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.220016, 35.693542, 34.121796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321773, -0.637077, 0.700425,
		0.502662, 0.741850, 0.443834,
		-0.802367, 0.209263, 0.558942,
		46.979305, 35.756321, 34.289478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.779568, 35.867462, 34.533226>,  <47.540962, 35.609837, 33.898220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.779568, 35.867462, 34.533226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.418503, 35.696018, 34.548637>,  <47.201862, 35.593151, 34.557884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.418503, 35.696018, 34.548637>,  <47.779568, 35.867462, 34.533226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.418503, 35.696018, 34.548637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365239, -0.715695, 0.595299,
		-0.227581, 0.551427, 0.802580,
		-0.902667, -0.428613, 0.038524,
		47.147701, 35.567436, 34.560196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.464760, 35.824486, 35.227318>,  <47.779568, 35.867462, 34.533226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.464760, 35.824486, 35.227318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.355721, 35.518051, 34.994492>,  <47.290295, 35.334190, 34.854797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.355721, 35.518051, 34.994492>,  <47.464760, 35.824486, 35.227318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.355721, 35.518051, 34.994492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604837, -0.606935, 0.515560,
		-0.748238, -0.211510, 0.628811,
		-0.272601, -0.766090, -0.582061,
		47.273941, 35.288223, 34.819874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.307072, 35.154583, 35.539803>,  <47.464760, 35.824486, 35.227318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.307072, 35.154583, 35.539803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.512810, 35.098534, 35.201382>,  <47.636253, 35.064903, 34.998329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.512810, 35.098534, 35.201382>,  <47.307072, 35.154583, 35.539803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.512810, 35.098534, 35.201382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777855, -0.339172, 0.529059,
		-0.361090, -0.930231, -0.065460,
		0.514349, -0.140119, -0.846056,
		47.667114, 35.056496, 34.947563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<42.030163, 29.840754, 30.743011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.676765, 29.715475, 30.603666>,  <41.464729, 29.640308, 30.520060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.676765, 29.715475, 30.603666>,  <42.030163, 29.840754, 30.743011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.676765, 29.715475, 30.603666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457612, 0.736055, 0.498812,
		0.100189, 0.600110, -0.793619,
		-0.883489, -0.313194, -0.348362,
		41.411720, 29.621517, 30.499157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.690613, 30.402292, 30.581039>,  <42.030163, 29.840754, 30.743011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.690613, 30.402292, 30.581039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.386932, 30.143045, 30.604923>,  <41.204723, 29.987497, 30.619253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.386932, 30.143045, 30.604923>,  <41.690613, 30.402292, 30.581039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386932, 30.143045, 30.604923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572104, 0.708259, 0.413601,
		-0.310351, 0.279845, -0.908498,
		-0.759197, -0.648117, 0.059708,
		41.159172, 29.948610, 30.622835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061661, 30.677748, 30.318230>,  <41.690613, 30.402292, 30.581039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061661, 30.677748, 30.318230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.938789, 30.395330, 30.573460>,  <40.865067, 30.225880, 30.726597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.938789, 30.395330, 30.573460>,  <41.061661, 30.677748, 30.318230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938789, 30.395330, 30.573460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617040, 0.658222, 0.431283,
		-0.724500, -0.261236, -0.637852,
		-0.307181, -0.706045, 0.638076,
		40.846634, 30.183517, 30.764883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267841, 30.531187, 30.247921>,  <41.061661, 30.677748, 30.318230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267841, 30.531187, 30.247921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.379532, 30.393353, 30.606426>,  <40.446548, 30.310652, 30.821529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.379532, 30.393353, 30.606426>,  <40.267841, 30.531187, 30.247921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379532, 30.393353, 30.606426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768482, 0.479448, 0.423751,
		-0.575731, -0.807087, -0.130933,
		0.279228, -0.344586, 0.896265,
		40.463299, 30.289976, 30.875305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610947, 30.484917, 30.625328>,  <40.267841, 30.531187, 30.247921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610947, 30.484917, 30.625328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.892612, 30.460352, 30.908278>,  <40.061611, 30.445612, 31.078047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.892612, 30.460352, 30.908278>,  <39.610947, 30.484917, 30.625328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.892612, 30.460352, 30.908278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506614, 0.654566, 0.561147,
		-0.497485, -0.753506, 0.429811,
		0.704167, -0.061414, 0.707373,
		40.103863, 30.441927, 31.120489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296219, 30.424503, 31.253155>,  <39.610947, 30.484917, 30.625328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296219, 30.424503, 31.253155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.657112, 30.541040, 31.380339>,  <39.873646, 30.610962, 31.456650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.657112, 30.541040, 31.380339>,  <39.296219, 30.424503, 31.253155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657112, 30.541040, 31.380339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427698, 0.698997, 0.573130,
		-0.055278, -0.653087, 0.755263,
		0.902230, 0.291343, 0.317962,
		39.927780, 30.628443, 31.475727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229347, 30.542673, 31.994295>,  <39.296219, 30.424503, 31.253155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229347, 30.542673, 31.994295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.555622, 30.752586, 31.896929>,  <39.751389, 30.878534, 31.838509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.555622, 30.752586, 31.896929>,  <39.229347, 30.542673, 31.994295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555622, 30.752586, 31.896929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317193, 0.757617, 0.570442,
		0.483774, -0.388095, 0.784439,
		0.815690, 0.524784, -0.243415,
		39.800331, 30.910021, 31.823904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410591, 30.804106, 32.578259>,  <39.229347, 30.542673, 31.994295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410591, 30.804106, 32.578259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.612305, 31.020906, 32.309357>,  <39.733334, 31.150988, 32.148014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.612305, 31.020906, 32.309357>,  <39.410591, 30.804106, 32.578259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.612305, 31.020906, 32.309357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171752, 0.825892, 0.537033,
		0.846286, -0.155355, 0.509573,
		0.504283, 0.542004, -0.672258,
		39.763592, 31.183508, 32.107681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807648, 31.185806, 32.991856>,  <39.410591, 30.804106, 32.578259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807648, 31.185806, 32.991856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.783966, 31.373531, 32.639439>,  <39.769756, 31.486166, 32.427986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.783966, 31.373531, 32.639439>,  <39.807648, 31.185806, 32.991856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783966, 31.373531, 32.639439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171008, 0.864779, 0.472137,
		0.983489, 0.178620, 0.029054,
		-0.059208, 0.469310, -0.881046,
		39.766205, 31.514324, 32.375126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278477, 31.765205, 33.098408>,  <39.807648, 31.185806, 32.991856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278477, 31.765205, 33.098408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.018524, 31.855167, 32.808010>,  <39.862553, 31.909145, 32.633770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.018524, 31.855167, 32.808010>,  <40.278477, 31.765205, 33.098408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018524, 31.855167, 32.808010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069909, 0.933476, 0.351760,
		0.756812, 0.279357, -0.590928,
		-0.649883, 0.224906, -0.725995,
		39.823559, 31.922640, 32.590210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.531731, 32.406242, 32.773731>,  <40.278477, 31.765205, 33.098408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.531731, 32.406242, 32.773731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.143154, 32.418079, 32.679558>,  <39.910007, 32.425182, 32.623055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.143154, 32.418079, 32.679558>,  <40.531731, 32.406242, 32.773731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143154, 32.418079, 32.679558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065080, 0.920921, 0.384278,
		0.228187, 0.388625, -0.892693,
		-0.971440, 0.029591, -0.235434,
		39.851723, 32.426956, 32.608929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437462, 33.016239, 32.358238>,  <40.531731, 32.406242, 32.773731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437462, 33.016239, 32.358238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.081333, 32.901859, 32.499973>,  <39.867657, 32.833233, 32.585014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.081333, 32.901859, 32.499973>,  <40.437462, 33.016239, 32.358238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081333, 32.901859, 32.499973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137482, 0.910712, 0.389491,
		-0.434074, 0.298058, -0.850142,
		-0.890325, -0.285947, 0.354339,
		39.814236, 32.816074, 32.606274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166878, 33.601097, 32.456841>,  <40.437462, 33.016239, 32.358238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166878, 33.601097, 32.456841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.951710, 33.351791, 32.683884>,  <39.822609, 33.202209, 32.820110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.951710, 33.351791, 32.683884>,  <40.166878, 33.601097, 32.456841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951710, 33.351791, 32.683884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330279, 0.775316, 0.538332,
		-0.775601, 0.102110, -0.622910,
		-0.537921, -0.623264, 0.567611,
		39.790333, 33.164810, 32.854168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476425, 33.924892, 32.466793>,  <40.166878, 33.601097, 32.456841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476425, 33.924892, 32.466793> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.497772, 33.677814, 32.780636>,  <39.510578, 33.529568, 32.968941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.497772, 33.677814, 32.780636>,  <39.476425, 33.924892, 32.466793>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.497772, 33.677814, 32.780636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317694, 0.734395, 0.599779,
		-0.946691, -0.281271, -0.157048,
		0.053365, -0.617698, 0.784603,
		39.513783, 33.492504, 33.016018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803276, 33.968037, 32.811684>,  <39.476425, 33.924892, 32.466793>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803276, 33.968037, 32.811684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.075787, 33.822292, 33.065647>,  <39.239292, 33.734848, 33.218025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.075787, 33.822292, 33.065647>,  <38.803276, 33.968037, 32.811684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075787, 33.822292, 33.065647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357537, 0.591217, 0.722932,
		-0.638773, -0.719519, 0.272511,
		0.681276, -0.364356, 0.634907,
		39.280170, 33.712986, 33.256119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451363, 33.733791, 33.401455>,  <38.803276, 33.968037, 32.811684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451363, 33.733791, 33.401455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822884, 33.835125, 33.509636>,  <39.045795, 33.895924, 33.574547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.822884, 33.835125, 33.509636>,  <38.451363, 33.733791, 33.401455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.822884, 33.835125, 33.509636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370372, 0.658573, 0.655062,
		-0.012167, -0.708594, 0.705512,
		0.928804, 0.253332, 0.270456,
		39.101524, 33.911125, 33.590775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358032, 33.790077, 34.084400>,  <38.451363, 33.733791, 33.401455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358032, 33.790077, 34.084400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.708244, 33.976582, 34.033714>,  <38.918369, 34.088482, 34.003304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.708244, 33.976582, 34.033714>,  <38.358032, 33.790077, 34.084400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708244, 33.976582, 34.033714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225787, 0.626680, 0.745850,
		0.427168, -0.624401, 0.653950,
		0.875527, 0.466256, -0.126716,
		38.970901, 34.116459, 33.995701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662228, 33.725918, 34.687485>,  <38.358032, 33.790077, 34.084400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662228, 33.725918, 34.687485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.841637, 34.036537, 34.510487>,  <38.949280, 34.222908, 34.404289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.841637, 34.036537, 34.510487>,  <38.662228, 33.725918, 34.687485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841637, 34.036537, 34.510487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266215, 0.588687, 0.763267,
		0.853206, -0.224541, 0.470767,
		0.448519, 0.776549, -0.442495,
		38.976192, 34.269501, 34.377739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935902, 34.141739, 35.227676>,  <38.662228, 33.725918, 34.687485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935902, 34.141739, 35.227676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.953094, 34.404076, 34.926205>,  <38.963409, 34.561478, 34.745323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.953094, 34.404076, 34.926205>,  <38.935902, 34.141739, 35.227676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953094, 34.404076, 34.926205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065359, 0.754604, 0.652917,
		0.996936, 0.021198, 0.075297,
		0.042979, 0.655838, -0.753677,
		38.965988, 34.600826, 34.700100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.401604, 34.637024, 35.519653>,  <38.935902, 34.141739, 35.227676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.401604, 34.637024, 35.519653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.184711, 34.794411, 35.222691>,  <39.054577, 34.888844, 35.044514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.184711, 34.794411, 35.222691>,  <39.401604, 34.637024, 35.519653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184711, 34.794411, 35.222691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293343, 0.739330, 0.606086,
		0.787362, 0.546417, -0.285463,
		-0.542227, 0.393471, -0.742409,
		39.022045, 34.912453, 34.999969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605755, 35.335129, 35.378208>,  <39.401604, 34.637024, 35.519653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605755, 35.335129, 35.378208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.227211, 35.319687, 35.249893>,  <39.000084, 35.310421, 35.172905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.227211, 35.319687, 35.249893>,  <39.605755, 35.335129, 35.378208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227211, 35.319687, 35.249893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212582, 0.822071, 0.528213,
		0.243322, 0.568075, -0.786184,
		-0.946363, -0.038603, -0.320790,
		38.943302, 35.308105, 35.153656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.503273, 36.030045, 35.288624>,  <39.605755, 35.335129, 35.378208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.503273, 36.030045, 35.288624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.128620, 35.889927, 35.289814>,  <38.903828, 35.805859, 35.290527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.128620, 35.889927, 35.289814>,  <39.503273, 36.030045, 35.288624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128620, 35.889927, 35.289814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304275, 0.817743, 0.488583,
		-0.173580, 0.456719, -0.872513,
		-0.936636, -0.350292, 0.002976,
		38.847630, 35.784840, 35.290707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983040, 36.454399, 35.688519>,  <39.503273, 36.030045, 35.288624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983040, 36.454399, 35.688519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.331223, 36.534733, 35.868286>,  <40.540131, 36.582935, 35.976147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.331223, 36.534733, 35.868286>,  <39.983040, 36.454399, 35.688519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331223, 36.534733, 35.868286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331808, -0.913786, -0.234303,
		0.363615, 0.353070, -0.862047,
		0.870452, 0.200838, 0.449418,
		40.592358, 36.594986, 36.003113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548893, 36.200130, 35.219482>,  <39.983040, 36.454399, 35.688519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548893, 36.200130, 35.219482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.682426, 36.226357, 35.595623>,  <40.762547, 36.242092, 35.821308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.682426, 36.226357, 35.595623>,  <40.548893, 36.200130, 35.219482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682426, 36.226357, 35.595623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253841, -0.966980, -0.022693,
		0.907809, 0.246274, -0.339458,
		0.333838, 0.065568, 0.940347,
		40.782578, 36.246025, 35.877728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318138, 36.175907, 35.267365>,  <40.548893, 36.200130, 35.219482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318138, 36.175907, 35.267365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.199608, 36.029705, 35.620316>,  <41.128490, 35.941982, 35.832088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.199608, 36.029705, 35.620316>,  <41.318138, 36.175907, 35.267365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.199608, 36.029705, 35.620316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357643, -0.899121, -0.252335,
		0.885598, 0.240804, 0.397152,
		-0.296325, -0.365506, 0.882381,
		41.110710, 35.920052, 35.885029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875240, 35.861153, 35.610439>,  <41.318138, 36.175907, 35.267365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875240, 35.861153, 35.610439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.560596, 35.683376, 35.781891>,  <41.371811, 35.576710, 35.884762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.560596, 35.683376, 35.781891>,  <41.875240, 35.861153, 35.610439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.560596, 35.683376, 35.781891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348742, -0.892651, -0.285575,
		0.509539, -0.075154, 0.857159,
		-0.786606, -0.444439, 0.428631,
		41.324615, 35.550045, 35.910480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.124546, 35.419006, 36.125584>,  <41.875240, 35.861153, 35.610439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.124546, 35.419006, 36.125584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.755638, 35.276615, 36.065323>,  <41.534294, 35.191181, 36.029167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.755638, 35.276615, 36.065323>,  <42.124546, 35.419006, 36.125584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.755638, 35.276615, 36.065323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383078, -0.893811, -0.233139,
		-0.051663, -0.272729, 0.960703,
		-0.922270, -0.355979, -0.150653,
		41.478958, 35.169823, 36.020126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094589, 34.815975, 36.467541>,  <42.124546, 35.419006, 36.125584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094589, 34.815975, 36.467541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.792561, 34.752197, 36.213158>,  <41.611343, 34.713932, 36.060528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.792561, 34.752197, 36.213158>,  <42.094589, 34.815975, 36.467541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792561, 34.752197, 36.213158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349448, -0.918592, -0.184595,
		-0.554755, -0.361617, 0.749320,
		-0.755072, -0.159443, -0.635960,
		41.566040, 34.704365, 36.022369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931438, 34.134655, 36.522961>,  <42.094589, 34.815975, 36.467541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931438, 34.134655, 36.522961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.740623, 34.213139, 36.180279>,  <41.626133, 34.260227, 35.974670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.740623, 34.213139, 36.180279>,  <41.931438, 34.134655, 36.522961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740623, 34.213139, 36.180279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150643, -0.942083, -0.299645,
		-0.865875, -0.271999, 0.419854,
		-0.477040, 0.196207, -0.856701,
		41.597511, 34.271999, 35.923267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637329, 33.498417, 36.326721>,  <41.931438, 34.134655, 36.522961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637329, 33.498417, 36.326721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.650669, 33.713741, 35.989887>,  <41.658672, 33.842937, 35.787788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.650669, 33.713741, 35.989887>,  <41.637329, 33.498417, 36.326721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650669, 33.713741, 35.989887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133579, -0.837394, -0.530026,
		-0.990477, -0.094809, -0.099833,
		0.033349, 0.538314, -0.842084,
		41.660675, 33.875237, 35.737263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.208740, 33.150394, 35.906101>,  <41.637329, 33.498417, 36.326721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.208740, 33.150394, 35.906101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.452938, 33.354176, 35.663532>,  <41.599457, 33.476444, 35.517990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.452938, 33.354176, 35.663532>,  <41.208740, 33.150394, 35.906101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452938, 33.354176, 35.663532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179236, -0.834675, -0.520761,
		-0.771470, 0.209230, -0.600880,
		0.610498, 0.509451, -0.606426,
		41.636089, 33.507011, 35.481606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023014, 33.058895, 35.212437>,  <41.208740, 33.150394, 35.906101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023014, 33.058895, 35.212437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.412399, 33.150410, 35.210415>,  <41.646030, 33.205318, 35.209202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.412399, 33.150410, 35.210415>,  <41.023014, 33.058895, 35.212437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412399, 33.150410, 35.210415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187910, -0.811763, -0.552929,
		-0.130609, 0.537306, -0.833213,
		0.973463, 0.228787, -0.005058,
		41.704437, 33.219048, 35.208897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266468, 32.893703, 34.552505>,  <41.023014, 33.058895, 35.212437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266468, 32.893703, 34.552505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.624535, 32.954727, 34.720028>,  <41.839375, 32.991341, 34.820541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.624535, 32.954727, 34.720028>,  <41.266468, 32.893703, 34.552505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.624535, 32.954727, 34.720028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357876, -0.806110, -0.471287,
		0.265708, 0.571763, -0.776200,
		0.895167, 0.152559, 0.418810,
		41.893085, 33.000496, 34.845673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636215, 32.931442, 34.042683>,  <41.266468, 32.893703, 34.552505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636215, 32.931442, 34.042683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.872131, 32.801258, 34.338310>,  <42.013680, 32.723148, 34.515686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.872131, 32.801258, 34.338310>,  <41.636215, 32.931442, 34.042683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872131, 32.801258, 34.338310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425044, -0.653063, -0.626775,
		0.686650, 0.683802, -0.246834,
		0.589788, -0.325460, 0.739071,
		42.049068, 32.703621, 34.560032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.283375, 32.986816, 33.714638>,  <41.636215, 32.931442, 34.042683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.283375, 32.986816, 33.714638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.369659, 32.759998, 34.032612>,  <42.421429, 32.623905, 34.223396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.369659, 32.759998, 34.032612>,  <42.283375, 32.986816, 33.714638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369659, 32.759998, 34.032612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600784, -0.564699, -0.565839,
		0.769759, 0.599642, 0.218863,
		0.215709, -0.567049, 0.794937,
		42.434372, 32.589882, 34.271091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967335, 33.018661, 33.747585>,  <42.283375, 32.986816, 33.714638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967335, 33.018661, 33.747585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.874043, 32.695259, 33.963703>,  <42.818066, 32.501217, 34.093372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.874043, 32.695259, 33.963703>,  <42.967335, 33.018661, 33.747585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.874043, 32.695259, 33.963703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562631, -0.565370, -0.603160,
		0.793126, 0.163310, 0.586755,
		-0.233232, -0.808509, 0.540293,
		42.804073, 32.452705, 34.125790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604671, 32.564095, 33.795628>,  <42.967335, 33.018661, 33.747585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604671, 32.564095, 33.795628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.289017, 32.328762, 33.866207>,  <43.099625, 32.187565, 33.908554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.289017, 32.328762, 33.866207>,  <43.604671, 32.564095, 33.795628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.289017, 32.328762, 33.866207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327091, -0.645678, -0.690009,
		0.519882, -0.486794, 0.701964,
		-0.789135, -0.588330, 0.176450,
		43.052277, 32.152264, 33.919144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883095, 31.874437, 33.837078>,  <43.604671, 32.564095, 33.795628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883095, 31.874437, 33.837078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.496605, 31.849125, 33.737148>,  <43.264713, 31.833937, 33.677189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.496605, 31.849125, 33.737148>,  <43.883095, 31.874437, 33.837078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496605, 31.849125, 33.737148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219842, -0.708259, -0.670850,
		-0.134491, -0.703111, 0.698246,
		-0.966220, -0.063280, -0.249827,
		43.206738, 31.830141, 33.662201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.817062, 31.149391, 33.750923>,  <43.883095, 31.874437, 33.837078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.817062, 31.149391, 33.750923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.520218, 31.326658, 33.549774>,  <43.342113, 31.433018, 33.429085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.520218, 31.326658, 33.549774>,  <43.817062, 31.149391, 33.750923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.520218, 31.326658, 33.549774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101041, -0.667702, -0.737539,
		-0.662571, -0.598174, 0.450763,
		-0.742152, 0.443127, -0.502841,
		43.297585, 31.459608, 33.398914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.383293, 30.665344, 33.595974>,  <43.817062, 31.149391, 33.750923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.383293, 30.665344, 33.595974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.294178, 30.952530, 33.332188>,  <43.240711, 31.124842, 33.173916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.294178, 30.952530, 33.332188>,  <43.383293, 30.665344, 33.595974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.294178, 30.952530, 33.332188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022056, -0.672578, -0.739697,
		-0.974618, -0.179338, 0.134005,
		-0.222785, 0.717966, -0.659463,
		43.227345, 31.167919, 33.134350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.741352, 30.361649, 33.065826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.921852, 30.674406, 32.893776>,  <43.030151, 30.862061, 32.790546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.921852, 30.674406, 32.893776>,  <42.741352, 30.361649, 33.065826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.921852, 30.674406, 32.893776> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127661, -0.420473, -0.898279,
		-0.883217, 0.460262, -0.089923,
		0.451253, 0.781896, -0.430126,
		43.057228, 30.908976, 32.764736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397331, 30.509167, 32.511532>,  <42.741352, 30.361649, 33.065826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397331, 30.509167, 32.511532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.753872, 30.669491, 32.426819>,  <42.967796, 30.765686, 32.375992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.753872, 30.669491, 32.426819>,  <42.397331, 30.509167, 32.511532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.753872, 30.669491, 32.426819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105239, -0.271451, -0.956681,
		-0.440937, 0.875022, -0.199776,
		0.891347, 0.400812, -0.211779,
		43.021275, 30.789734, 32.363285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.393806, 30.684027, 31.827026>,  <42.397331, 30.509167, 32.511532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.393806, 30.684027, 31.827026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.789967, 30.722752, 31.866505>,  <43.027660, 30.745987, 31.890192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.789967, 30.722752, 31.866505>,  <42.393806, 30.684027, 31.827026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.789967, 30.722752, 31.866505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126264, -0.342666, -0.930933,
		-0.056307, 0.934455, -0.351600,
		0.990397, 0.096812, 0.098694,
		43.087086, 30.751795, 31.896112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647755, 30.847004, 31.136032>,  <42.393806, 30.684027, 31.827026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647755, 30.847004, 31.136032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.949951, 30.680044, 31.338024>,  <43.131271, 30.579868, 31.459219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.949951, 30.680044, 31.338024>,  <42.647755, 30.847004, 31.136032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949951, 30.680044, 31.338024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230102, -0.552623, -0.801038,
		0.613416, 0.721377, -0.321460,
		0.755496, -0.417401, 0.504978,
		43.176601, 30.554823, 31.489517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.255844, 30.863607, 30.739481>,  <42.647755, 30.847004, 31.136032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.255844, 30.863607, 30.739481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.323250, 30.564129, 30.995937>,  <43.363693, 30.384441, 31.149811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.323250, 30.564129, 30.995937>,  <43.255844, 30.863607, 30.739481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.323250, 30.564129, 30.995937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251919, -0.596128, -0.762344,
		0.952964, 0.289981, 0.088154,
		0.168514, -0.748694, 0.641140,
		43.373802, 30.339521, 31.188280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.866257, 30.578693, 30.452669>,  <43.255844, 30.863607, 30.739481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.866257, 30.578693, 30.452669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.722790, 30.303917, 30.705482>,  <43.636707, 30.139051, 30.857170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.722790, 30.303917, 30.705482>,  <43.866257, 30.578693, 30.452669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722790, 30.303917, 30.705482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269441, -0.724452, -0.634485,
		0.893732, -0.057276, 0.444930,
		-0.358670, -0.686942, 0.632033,
		43.615189, 30.097834, 30.895092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.401634, 30.108551, 30.664566>,  <43.866257, 30.578693, 30.452669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.401634, 30.108551, 30.664566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.067360, 29.899937, 30.733425>,  <43.866795, 29.774769, 30.774740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.067360, 29.899937, 30.733425>,  <44.401634, 30.108551, 30.664566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067360, 29.899937, 30.733425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408402, -0.799681, -0.440134,
		0.367208, -0.297508, 0.881276,
		-0.835683, -0.521536, 0.172147,
		43.816654, 29.743477, 30.785069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639145, 29.486801, 30.995255>,  <44.401634, 30.108551, 30.664566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639145, 29.486801, 30.995255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.277439, 29.391853, 30.853285>,  <44.060417, 29.334885, 30.768103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.277439, 29.391853, 30.853285>,  <44.639145, 29.486801, 30.995255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277439, 29.391853, 30.853285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363269, -0.864515, -0.347346,
		-0.224387, -0.443023, 0.867975,
		-0.904260, -0.237369, -0.354923,
		44.006161, 29.320642, 30.746807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.578018, 28.736095, 31.178905>,  <44.639145, 29.486801, 30.995255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.578018, 28.736095, 31.178905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.288521, 28.805696, 30.911797>,  <44.114822, 28.847458, 30.751532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.288521, 28.805696, 30.911797>,  <44.578018, 28.736095, 31.178905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288521, 28.805696, 30.911797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246840, -0.838383, -0.485987,
		-0.644413, -0.516562, 0.563822,
		-0.723742, 0.174003, -0.667773,
		44.071400, 28.857897, 30.711464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.115360, 28.088654, 31.147432>,  <44.578018, 28.736095, 31.178905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.115360, 28.088654, 31.147432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.097912, 28.311331, 30.815603>,  <44.087444, 28.444937, 30.616507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.097912, 28.311331, 30.815603>,  <44.115360, 28.088654, 31.147432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.097912, 28.311331, 30.815603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386481, -0.756309, -0.527853,
		-0.921265, -0.343637, -0.182164,
		-0.043618, 0.556695, -0.829571,
		44.084827, 28.478340, 30.566732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.828259, 27.607941, 30.689901>,  <44.115360, 28.088654, 31.147432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.828259, 27.607941, 30.689901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.011051, 27.897703, 30.483446>,  <44.120728, 28.071562, 30.359573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.011051, 27.897703, 30.483446>,  <43.828259, 27.607941, 30.689901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011051, 27.897703, 30.483446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406790, -0.686244, -0.602985,
		-0.791005, 0.065594, -0.608284,
		0.456983, 0.724408, -0.516139,
		44.148148, 28.115025, 30.328604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759560, 27.465710, 29.972780>,  <43.828259, 27.607941, 30.689901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759560, 27.465710, 29.972780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.085949, 27.691683, 30.021843>,  <44.281780, 27.827267, 30.051281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.085949, 27.691683, 30.021843>,  <43.759560, 27.465710, 29.972780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.085949, 27.691683, 30.021843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481396, -0.546534, -0.685243,
		-0.320082, 0.618183, -0.717912,
		0.815969, 0.564934, 0.122655,
		44.330738, 27.861162, 30.058640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.092903, 27.331484, 29.335976>,  <43.759560, 27.465710, 29.972780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.092903, 27.331484, 29.335976> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.354713, 27.563538, 29.529902>,  <44.511799, 27.702770, 29.646257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.354713, 27.563538, 29.529902>,  <44.092903, 27.331484, 29.335976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.354713, 27.563538, 29.529902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723434, -0.294283, -0.624532,
		-0.219640, 0.759501, -0.612305,
		0.654523, 0.580134, 0.484812,
		44.551071, 27.737577, 29.675344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.380775, 27.784142, 28.873045>,  <44.092903, 27.331484, 29.335976>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.380775, 27.784142, 28.873045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.658131, 27.765171, 29.160645>,  <44.824543, 27.753788, 29.333204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.658131, 27.765171, 29.160645>,  <44.380775, 27.784142, 28.873045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658131, 27.765171, 29.160645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720144, 0.011607, -0.693728,
		0.024556, 0.998807, 0.042203,
		0.693390, -0.047427, 0.719000,
		44.866146, 27.750942, 29.376345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991611, 28.249836, 28.674364>,  <44.380775, 27.784142, 28.873045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991611, 28.249836, 28.674364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.131882, 27.982172, 28.936434>,  <45.216042, 27.821573, 29.093676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.131882, 27.982172, 28.936434>,  <44.991611, 28.249836, 28.674364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.131882, 27.982172, 28.936434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784985, -0.171490, -0.595306,
		0.510711, 0.723059, 0.465145,
		0.350673, -0.669161, 0.655173,
		45.237083, 27.781424, 29.132986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.621010, 28.396017, 28.473125>,  <44.991611, 28.249836, 28.674364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.621010, 28.396017, 28.473125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.626419, 28.055712, 28.683275>,  <45.629665, 27.851528, 28.809366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.626419, 28.055712, 28.683275>,  <45.621010, 28.396017, 28.473125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.626419, 28.055712, 28.683275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847765, -0.268849, -0.457182,
		0.530200, 0.451578, 0.717611,
		0.013525, -0.850763, 0.525376,
		45.630478, 27.800484, 28.840887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.305439, 28.319027, 28.798681>,  <45.621010, 28.396017, 28.473125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.305439, 28.319027, 28.798681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.171722, 27.942402, 28.815235>,  <46.091492, 27.716427, 28.825167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.171722, 27.942402, 28.815235>,  <46.305439, 28.319027, 28.798681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.171722, 27.942402, 28.815235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887752, -0.329323, -0.321624,
		0.316458, -0.070777, 0.945962,
		-0.334291, -0.941561, 0.041385,
		46.071434, 27.659933, 28.827650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.842762, 27.927320, 29.035734>,  <46.305439, 28.319027, 28.798681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.842762, 27.927320, 29.035734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.616398, 27.652306, 28.853729>,  <46.480579, 27.487297, 28.744526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.616398, 27.652306, 28.853729>,  <46.842762, 27.927320, 29.035734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.616398, 27.652306, 28.853729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806286, -0.346259, -0.479591,
		0.172184, -0.638277, 0.750303,
		-0.565911, -0.687537, -0.455014,
		46.446625, 27.446045, 28.717226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.345417, 27.449766, 28.857962>,  <46.842762, 27.927320, 29.035734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.345417, 27.449766, 28.857962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.028351, 27.386513, 28.622446>,  <46.838112, 27.348560, 28.481136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.028351, 27.386513, 28.622446>,  <47.345417, 27.449766, 28.857962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.028351, 27.386513, 28.622446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609373, -0.234843, -0.757306,
		-0.018516, -0.959084, 0.282515,
		-0.792667, -0.158135, -0.588789,
		46.790550, 27.339073, 28.445810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.495327, 26.789627, 28.531616>,  <47.345417, 27.449766, 28.857962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.495327, 26.789627, 28.531616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.216038, 26.946087, 28.291790>,  <47.048462, 27.039963, 28.147894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.216038, 26.946087, 28.291790>,  <47.495327, 26.789627, 28.531616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.216038, 26.946087, 28.291790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468969, -0.382867, -0.795915,
		-0.540877, -0.836908, 0.083891,
		-0.698227, 0.391150, -0.599568,
		47.006569, 27.063431, 28.111919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.425873, 26.263601, 27.997530>,  <47.495327, 26.789627, 28.531616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.425873, 26.263601, 27.997530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.287750, 26.609896, 27.852608>,  <47.204876, 26.817673, 27.765656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.287750, 26.609896, 27.852608>,  <47.425873, 26.263601, 27.997530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.287750, 26.609896, 27.852608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556939, -0.121689, -0.821590,
		-0.755369, -0.485482, -0.440142,
		-0.345306, 0.865736, -0.362304,
		47.184158, 26.869617, 27.743916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.379978, 26.135834, 27.284615>,  <47.425873, 26.263601, 27.997530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.379978, 26.135834, 27.284615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.402180, 26.531933, 27.335732>,  <47.415501, 26.769592, 27.366402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.402180, 26.531933, 27.335732>,  <47.379978, 26.135834, 27.284615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.402180, 26.531933, 27.335732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654107, 0.060639, -0.753967,
		-0.754363, 0.125435, -0.644362,
		0.055501, 0.990247, 0.127792,
		47.418831, 26.829006, 27.374069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.311848, 26.428431, 26.548220>,  <47.379978, 26.135834, 27.284615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.311848, 26.428431, 26.548220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.465561, 26.675867, 26.822351>,  <47.557789, 26.824329, 26.986830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.465561, 26.675867, 26.822351>,  <47.311848, 26.428431, 26.548220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.465561, 26.675867, 26.822351> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790941, 0.162279, -0.589981,
		-0.476170, 0.768774, -0.426907,
		0.384284, 0.618589, 0.685327,
		47.580845, 26.861444, 27.027950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.137680, 26.531267, 25.854826>,  <47.311848, 26.428431, 26.548220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.137680, 26.531267, 25.854826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.952202, 26.518879, 25.500645>,  <46.840916, 26.511446, 25.288136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.952202, 26.518879, 25.500645>,  <47.137680, 26.531267, 25.854826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.952202, 26.518879, 25.500645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768851, 0.510705, 0.384770,
		0.440287, 0.859198, -0.260626,
		-0.463697, -0.030973, -0.885452,
		46.813091, 26.509586, 25.235008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.891136, 27.119410, 25.773232>,  <47.137680, 26.531267, 25.854826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.891136, 27.119410, 25.773232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.651775, 26.883772, 25.556019>,  <46.508160, 26.742390, 25.425692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.651775, 26.883772, 25.556019>,  <46.891136, 27.119410, 25.773232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.651775, 26.883772, 25.556019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799356, 0.484896, 0.354832,
		0.054283, 0.646407, -0.761060,
		-0.598401, -0.589096, -0.543031,
		46.472256, 26.707043, 25.393110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.359455, 27.536743, 25.581768>,  <46.891136, 27.119410, 25.773232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.359455, 27.536743, 25.581768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.213215, 27.176716, 25.486933>,  <46.125469, 26.960699, 25.430033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.213215, 27.176716, 25.486933>,  <46.359455, 27.536743, 25.581768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.213215, 27.176716, 25.486933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909932, 0.292031, 0.294520,
		-0.195851, 0.323410, -0.925769,
		-0.365604, -0.900069, -0.237087,
		46.103535, 26.906694, 25.415806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.717953, 27.695831, 25.215391>,  <46.359455, 27.536743, 25.581768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.717953, 27.695831, 25.215391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.680557, 27.315907, 25.334801>,  <45.658119, 27.087952, 25.406446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.680557, 27.315907, 25.334801>,  <45.717953, 27.695831, 25.215391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.680557, 27.315907, 25.334801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916384, 0.199312, 0.347154,
		-0.389230, -0.241105, -0.889026,
		-0.093493, -0.949812, 0.298523,
		45.652508, 27.030962, 25.424358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.009884, 27.626476, 25.193182>,  <45.717953, 27.695831, 25.215391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.009884, 27.626476, 25.193182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.137733, 27.343245, 25.445042>,  <45.214443, 27.173306, 25.596157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.137733, 27.343245, 25.445042>,  <45.009884, 27.626476, 25.193182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.137733, 27.343245, 25.445042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882120, 0.020276, 0.470588,
		-0.345982, -0.705839, -0.618133,
		0.319626, -0.708082, 0.629649,
		45.233620, 27.130819, 25.633936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.398266, 27.340160, 25.339914>,  <45.009884, 27.626476, 25.193182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.398266, 27.340160, 25.339914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.644573, 27.183319, 25.613289>,  <44.792358, 27.089214, 25.777313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.644573, 27.183319, 25.613289>,  <44.398266, 27.340160, 25.339914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.644573, 27.183319, 25.613289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725634, 0.055821, 0.685813,
		-0.307059, -0.918226, -0.250150,
		0.615768, -0.392102, 0.683436,
		44.829304, 27.065689, 25.818319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020092, 26.762585, 25.630751>,  <44.398266, 27.340160, 25.339914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020092, 26.762585, 25.630751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.306717, 26.919420, 25.861507>,  <44.478691, 27.013521, 25.999962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.306717, 26.919420, 25.861507>,  <44.020092, 26.762585, 25.630751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306717, 26.919420, 25.861507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669550, 0.154775, 0.726462,
		0.195554, -0.906812, 0.373432,
		0.716562, 0.392094, 0.576889,
		44.521687, 27.037046, 26.034575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885452, 26.426750, 26.231903>,  <44.020092, 26.762585, 25.630751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885452, 26.426750, 26.231903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.098858, 26.751408, 26.327065>,  <44.226902, 26.946201, 26.384161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.098858, 26.751408, 26.327065>,  <43.885452, 26.426750, 26.231903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.098858, 26.751408, 26.327065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672094, 0.236073, 0.701826,
		0.513470, -0.534327, 0.671449,
		0.533515, 0.811643, 0.237902,
		44.258911, 26.994900, 26.398436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.751156, 26.484724, 26.910873>,  <43.885452, 26.426750, 26.231903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.751156, 26.484724, 26.910873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.920143, 26.833427, 26.811630>,  <44.021538, 27.042648, 26.752085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.920143, 26.833427, 26.811630>,  <43.751156, 26.484724, 26.910873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.920143, 26.833427, 26.811630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574566, 0.469291, 0.670552,
		0.700994, -0.140734, 0.699144,
		0.422471, 0.871757, -0.248109,
		44.046886, 27.094954, 26.737198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967449, 26.739525, 27.495237>,  <43.751156, 26.484724, 26.910873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.967449, 26.739525, 27.495237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.908112, 27.057528, 27.259964>,  <43.872509, 27.248329, 27.118799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.908112, 27.057528, 27.259964>,  <43.967449, 26.739525, 27.495237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.908112, 27.057528, 27.259964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291668, 0.533138, 0.794162,
		0.944947, 0.289360, 0.152792,
		-0.148340, 0.795006, -0.588184,
		43.863609, 27.296030, 27.083509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.362480, 27.303278, 27.775972>,  <43.967449, 26.739525, 27.495237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.362480, 27.303278, 27.775972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.060249, 27.456024, 27.563078>,  <43.878910, 27.547672, 27.435341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.060249, 27.456024, 27.563078>,  <44.362480, 27.303278, 27.775972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.060249, 27.456024, 27.563078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259165, 0.571944, 0.778276,
		0.601606, 0.725988, -0.333184,
		-0.755581, 0.381866, -0.532236,
		43.833576, 27.570583, 27.403408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.268612, 27.950218, 27.973557>,  <44.362480, 27.303278, 27.775972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.268612, 27.950218, 27.973557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.916172, 27.904184, 27.790070>,  <43.704708, 27.876564, 27.679977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.916172, 27.904184, 27.790070>,  <44.268612, 27.950218, 27.973557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.916172, 27.904184, 27.790070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462121, 0.415706, 0.783347,
		0.100540, 0.902188, -0.419461,
		-0.881099, -0.115085, -0.458715,
		43.651844, 27.869659, 27.652454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.905277, 28.564665, 28.224579>,  <44.268612, 27.950218, 27.973557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.905277, 28.564665, 28.224579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.618359, 28.335180, 28.066420>,  <43.446205, 28.197491, 27.971525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.618359, 28.335180, 28.066420>,  <43.905277, 28.564665, 28.224579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.618359, 28.335180, 28.066420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635672, 0.306465, 0.708519,
		-0.285310, 0.759563, -0.584519,
		-0.717300, -0.573710, -0.395396,
		43.403168, 28.163067, 27.947802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267029, 29.038092, 28.246397>,  <43.905277, 28.564665, 28.224579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267029, 29.038092, 28.246397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.108204, 28.676809, 28.181206>,  <43.012909, 28.460039, 28.142092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.108204, 28.676809, 28.181206>,  <43.267029, 29.038092, 28.246397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108204, 28.676809, 28.181206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758997, 0.223307, 0.611602,
		-0.516009, 0.366543, -0.774197,
		-0.397063, -0.903205, -0.162977,
		42.989086, 28.405848, 28.132313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505417, 29.053749, 28.188419>,  <43.267029, 29.038092, 28.246397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505417, 29.053749, 28.188419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.584358, 28.680285, 28.307970>,  <42.631725, 28.456205, 28.379700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.584358, 28.680285, 28.307970>,  <42.505417, 29.053749, 28.188419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.584358, 28.680285, 28.307970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603594, 0.124505, 0.787510,
		-0.772480, -0.335819, -0.538981,
		0.197355, -0.933662, 0.298876,
		42.643566, 28.400187, 28.397633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811962, 28.846252, 28.308722>,  <42.505417, 29.053749, 28.188419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811962, 28.846252, 28.308722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.061974, 28.608038, 28.510584>,  <42.211979, 28.465109, 28.631701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.061974, 28.608038, 28.510584>,  <41.811962, 28.846252, 28.308722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061974, 28.608038, 28.510584> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557601, 0.111808, 0.822545,
		-0.546279, -0.795510, -0.262188,
		0.625028, -0.595535, 0.504656,
		42.249481, 28.429377, 28.661982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392586, 28.388836, 28.639631>,  <41.811962, 28.846252, 28.308722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392586, 28.388836, 28.639631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.740704, 28.404602, 28.836016>,  <41.949574, 28.414062, 28.953846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.740704, 28.404602, 28.836016>,  <41.392586, 28.388836, 28.639631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740704, 28.404602, 28.836016> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490979, 0.148698, 0.858387,
		-0.039173, -0.988097, 0.148762,
		0.870290, 0.039413, 0.490960,
		42.001789, 28.416428, 28.983303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.166046, 28.037359, 29.255051>,  <41.392586, 28.388836, 28.639631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.166046, 28.037359, 29.255051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.493092, 28.262827, 29.302013>,  <41.689320, 28.398108, 29.330191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.493092, 28.262827, 29.302013>,  <41.166046, 28.037359, 29.255051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493092, 28.262827, 29.302013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422863, 0.449473, 0.786868,
		0.390761, -0.693002, 0.605850,
		0.817614, 0.563669, 0.117408,
		41.738377, 28.431929, 29.337236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499950, 27.856251, 29.916908>,  <41.166046, 28.037359, 29.255051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499950, 27.856251, 29.916908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.555038, 28.232742, 29.793541>,  <41.588093, 28.458637, 29.719521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.555038, 28.232742, 29.793541>,  <41.499950, 27.856251, 29.916908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.555038, 28.232742, 29.793541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315345, 0.336851, 0.887180,
		0.938931, -0.024923, 0.343203,
		0.137720, 0.941228, -0.308421,
		41.596355, 28.515110, 29.701015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611294, 28.108313, 30.477200>,  <41.499950, 27.856251, 29.916908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611294, 28.108313, 30.477200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.551998, 28.449205, 30.276508>,  <41.516422, 28.653740, 30.156094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.551998, 28.449205, 30.276508>,  <41.611294, 28.108313, 30.477200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551998, 28.449205, 30.276508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358073, 0.426657, 0.830511,
		0.921852, 0.302765, 0.241915,
		-0.148235, 0.852231, -0.501726,
		41.507526, 28.704874, 30.125990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762157, 28.630804, 30.922001>,  <41.611294, 28.108313, 30.477200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762157, 28.630804, 30.922001> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.580894, 28.855244, 30.644924>,  <41.472137, 28.989908, 30.478678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.580894, 28.855244, 30.644924>,  <41.762157, 28.630804, 30.922001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580894, 28.855244, 30.644924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389024, 0.574679, 0.720003,
		0.802068, 0.595745, -0.042137,
		-0.453153, 0.561099, -0.692691,
		41.444950, 29.023573, 30.437117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.996685, 32.443359, 35.431648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.717461, 32.543728, 35.163395>,  <42.549927, 32.603947, 35.002441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.717461, 32.543728, 35.163395>,  <42.996685, 32.443359, 35.431648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717461, 32.543728, 35.163395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179440, 0.845402, 0.503086,
		0.693189, 0.471524, -0.545118,
		-0.698061, 0.250918, -0.670634,
		42.508041, 32.619003, 34.962204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031799, 33.114410, 35.423115>,  <42.996685, 32.443359, 35.431648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031799, 33.114410, 35.423115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.671986, 33.069397, 35.254272>,  <42.456097, 33.042389, 35.152966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.671986, 33.069397, 35.254272>,  <43.031799, 33.114410, 35.423115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671986, 33.069397, 35.254272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300736, 0.860351, 0.411526,
		0.316849, 0.497124, -0.807758,
		-0.899535, -0.112530, -0.422105,
		42.402126, 33.035637, 35.127640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.949646, 33.699642, 35.127655>,  <43.031799, 33.114410, 35.423115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.949646, 33.699642, 35.127655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.577332, 33.555866, 35.154324>,  <42.353943, 33.469601, 35.170326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.577332, 33.555866, 35.154324>,  <42.949646, 33.699642, 35.127655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577332, 33.555866, 35.154324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335992, 0.912998, 0.231395,
		-0.144042, 0.192979, -0.970573,
		-0.930785, -0.359435, 0.066670,
		42.298096, 33.448036, 35.174324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.557690, 34.177189, 34.863571>,  <42.949646, 33.699642, 35.127655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.557690, 34.177189, 34.863571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.261265, 33.975792, 35.041252>,  <42.083408, 33.854954, 35.147861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.261265, 33.975792, 35.041252>,  <42.557690, 34.177189, 34.863571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261265, 33.975792, 35.041252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451846, 0.863325, 0.224734,
		-0.496644, -0.034169, -0.867281,
		-0.741067, -0.503490, 0.444204,
		42.038944, 33.824745, 35.174515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880623, 34.518082, 34.684368>,  <42.557690, 34.177189, 34.863571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880623, 34.518082, 34.684368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.789459, 34.310379, 35.013836>,  <41.734760, 34.185757, 35.211517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.789459, 34.310379, 35.013836>,  <41.880623, 34.518082, 34.684368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.789459, 34.310379, 35.013836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659272, 0.704818, 0.261903,
		-0.716531, -0.483332, -0.502965,
		-0.227912, -0.519252, 0.823671,
		41.721085, 34.154602, 35.260937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.195606, 34.534584, 34.717846>,  <41.880623, 34.518082, 34.684368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.195606, 34.534584, 34.717846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.323944, 34.459915, 35.089268>,  <41.400948, 34.415115, 35.312122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.323944, 34.459915, 35.089268>,  <41.195606, 34.534584, 34.717846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323944, 34.459915, 35.089268> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625907, 0.694013, 0.355789,
		-0.710844, -0.695342, 0.105832,
		0.320844, -0.186670, 0.928555,
		41.420197, 34.403915, 35.367836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663166, 34.644123, 35.121002>,  <41.195606, 34.534584, 34.717846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663166, 34.644123, 35.121002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.944096, 34.650822, 35.405666>,  <41.112656, 34.654842, 35.576466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.944096, 34.650822, 35.405666>,  <40.663166, 34.644123, 35.121002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944096, 34.650822, 35.405666> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453105, 0.781569, 0.428771,
		-0.549029, -0.623593, 0.556506,
		0.702327, 0.016748, 0.711658,
		41.154793, 34.655846, 35.619164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325775, 34.692192, 35.801460>,  <40.663166, 34.644123, 35.121002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325775, 34.692192, 35.801460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.692604, 34.845596, 35.845074>,  <40.912701, 34.937641, 35.871243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.692604, 34.845596, 35.845074>,  <40.325775, 34.692192, 35.801460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692604, 34.845596, 35.845074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392464, 0.820078, 0.416467,
		0.070306, -0.424723, 0.902589,
		0.917076, 0.383514, 0.109032,
		40.967728, 34.960651, 35.877785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327633, 35.010677, 36.493488>,  <40.325775, 34.692192, 35.801460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327633, 35.010677, 36.493488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.647434, 35.175186, 36.318378>,  <40.839314, 35.273891, 36.213310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.647434, 35.175186, 36.318378>,  <40.327633, 35.010677, 36.493488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647434, 35.175186, 36.318378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218960, 0.878228, 0.425172,
		0.559329, -0.244071, 0.792200,
		0.799504, 0.411271, -0.437777,
		40.887287, 35.298569, 36.187046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637447, 35.457584, 36.994602>,  <40.327633, 35.010677, 36.493488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637447, 35.457584, 36.994602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.787743, 35.610359, 36.656857>,  <40.877922, 35.702023, 36.454208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.787743, 35.610359, 36.656857>,  <40.637447, 35.457584, 36.994602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787743, 35.610359, 36.656857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325685, 0.907426, 0.265530,
		0.867610, 0.175225, 0.465348,
		0.375742, 0.381934, -0.844360,
		40.900463, 35.724941, 36.403549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013985, 36.096729, 37.178017>,  <40.637447, 35.457584, 36.994602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013985, 36.096729, 37.178017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.911617, 36.161442, 36.796791>,  <40.850197, 36.200272, 36.568054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.911617, 36.161442, 36.796791>,  <41.013985, 36.096729, 37.178017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911617, 36.161442, 36.796791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075320, 0.979562, 0.186508,
		0.963759, 0.119516, -0.238504,
		-0.255920, 0.161784, -0.953064,
		40.834843, 36.209976, 36.510872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506126, 36.614311, 36.875290>,  <41.013985, 36.096729, 37.178017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506126, 36.614311, 36.875290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.116459, 36.630402, 36.786400>,  <40.882660, 36.640057, 36.733067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.116459, 36.630402, 36.786400>,  <41.506126, 36.614311, 36.875290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116459, 36.630402, 36.786400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037275, 0.941868, 0.333909,
		0.222735, 0.333566, -0.916036,
		-0.974166, 0.040228, -0.222221,
		40.824207, 36.642471, 36.719734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393894, 37.194893, 36.468590>,  <41.506126, 36.614311, 36.875290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393894, 37.194893, 36.468590> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.014084, 37.115948, 36.566124>,  <40.786198, 37.068581, 36.624645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.014084, 37.115948, 36.566124>,  <41.393894, 37.194893, 36.468590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014084, 37.115948, 36.566124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117310, 0.944285, 0.307513,
		-0.290941, 0.263386, -0.919772,
		-0.949522, -0.197367, 0.243834,
		40.729229, 37.056736, 36.639275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525852, 37.907337, 36.279621>,  <41.393894, 37.194893, 36.468590>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525852, 37.907337, 36.279621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.381630, 38.189117, 36.035084>,  <41.295097, 38.358185, 35.888359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.381630, 38.189117, 36.035084>,  <41.525852, 37.907337, 36.279621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.381630, 38.189117, 36.035084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110330, -0.683040, -0.721999,
		-0.926190, -0.192871, 0.323996,
		-0.360555, 0.704454, -0.611346,
		41.273464, 38.400455, 35.851681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913246, 37.695385, 35.992428>,  <41.525852, 37.907337, 36.279621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913246, 37.695385, 35.992428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.031258, 37.976021, 35.732971>,  <41.102066, 38.144402, 35.577297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.031258, 37.976021, 35.732971>,  <40.913246, 37.695385, 35.992428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031258, 37.976021, 35.732971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104795, -0.651000, -0.751809,
		-0.949723, 0.289781, -0.118542,
		0.295031, 0.701588, -0.648637,
		41.119766, 38.186497, 35.538380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447922, 37.819611, 35.313110>,  <40.913246, 37.695385, 35.992428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447922, 37.819611, 35.313110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.797379, 37.964504, 35.183163>,  <41.007053, 38.051441, 35.105194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.797379, 37.964504, 35.183163>,  <40.447922, 37.819611, 35.313110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.797379, 37.964504, 35.183163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121074, -0.484827, -0.866189,
		-0.471272, 0.796069, -0.379706,
		0.873638, 0.362238, -0.324869,
		41.059471, 38.073177, 35.085701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340630, 38.178734, 34.728283>,  <40.447922, 37.819611, 35.313110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340630, 38.178734, 34.728283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.723549, 38.064228, 34.712109>,  <40.953300, 37.995525, 34.702404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.723549, 38.064228, 34.712109>,  <40.340630, 38.178734, 34.728283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723549, 38.064228, 34.712109> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116655, -0.254520, -0.960006,
		0.264524, 0.923728, -0.277046,
		0.957298, -0.286263, -0.040431,
		41.010738, 37.978348, 34.699978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650257, 38.405670, 34.043736>,  <40.340630, 38.178734, 34.728283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650257, 38.405670, 34.043736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.903477, 38.120789, 34.165073>,  <41.055408, 37.949860, 34.237877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.903477, 38.120789, 34.165073>,  <40.650257, 38.405670, 34.043736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903477, 38.120789, 34.165073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149521, -0.271989, -0.950613,
		0.759536, 0.647140, -0.065693,
		0.633047, -0.712202, 0.303346,
		41.093391, 37.907127, 34.256077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140678, 38.472382, 33.529320>,  <40.650257, 38.405670, 34.043736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140678, 38.472382, 33.529320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.196568, 38.113739, 33.697399>,  <41.230103, 37.898552, 33.798248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.196568, 38.113739, 33.697399>,  <41.140678, 38.472382, 33.529320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196568, 38.113739, 33.697399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377463, -0.344092, -0.859722,
		0.915423, 0.278733, 0.290359,
		0.139723, -0.896610, 0.420201,
		41.238483, 37.844757, 33.823460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766853, 38.244362, 33.312389>,  <41.140678, 38.472382, 33.529320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766853, 38.244362, 33.312389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.628990, 37.895470, 33.451199>,  <41.546272, 37.686134, 33.534485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.628990, 37.895470, 33.451199>,  <41.766853, 38.244362, 33.312389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.628990, 37.895470, 33.451199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429030, -0.475173, -0.768208,
		0.834951, -0.115885, 0.537985,
		-0.344659, -0.872228, 0.347028,
		41.525593, 37.633801, 33.555305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313240, 37.696159, 33.235958>,  <41.766853, 38.244362, 33.312389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313240, 37.696159, 33.235958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.954365, 37.519947, 33.248482>,  <41.739040, 37.414219, 33.255997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.954365, 37.519947, 33.248482>,  <42.313240, 37.696159, 33.235958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954365, 37.519947, 33.248482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276174, -0.614965, -0.738611,
		0.344635, -0.654029, 0.673404,
		-0.897193, -0.440528, 0.031312,
		41.685207, 37.387787, 33.257877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.494232, 37.017952, 33.015228>,  <42.313240, 37.696159, 33.235958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.494232, 37.017952, 33.015228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.097023, 36.986805, 32.979801>,  <41.858696, 36.968117, 32.958546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.097023, 36.986805, 32.979801>,  <42.494232, 37.017952, 33.015228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097023, 36.986805, 32.979801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117071, -0.741125, -0.661082,
		-0.014163, -0.666837, 0.745069,
		-0.993023, -0.077863, -0.088564,
		41.799118, 36.963448, 32.953232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276009, 36.304779, 33.072762>,  <42.494232, 37.017952, 33.015228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276009, 36.304779, 33.072762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.953091, 36.457226, 32.892525>,  <41.759342, 36.548695, 32.784382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.953091, 36.457226, 32.892525>,  <42.276009, 36.304779, 33.072762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.953091, 36.457226, 32.892525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026582, -0.786221, -0.617373,
		-0.589555, -0.486422, 0.644840,
		-0.807291, 0.381117, -0.450590,
		41.710903, 36.571560, 32.757347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.753723, 35.800831, 33.180286>,  <42.276009, 36.304779, 33.072762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.753723, 35.800831, 33.180286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.649540, 36.035152, 32.873302>,  <41.587029, 36.175747, 32.689114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.649540, 36.035152, 32.873302>,  <41.753723, 35.800831, 33.180286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.649540, 36.035152, 32.873302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046642, -0.786331, -0.616042,
		-0.964357, -0.196251, 0.177485,
		-0.260460, 0.585807, -0.767457,
		41.571404, 36.210896, 32.643066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.241211, 35.488945, 32.854385>,  <41.753723, 35.800831, 33.180286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.241211, 35.488945, 32.854385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.373623, 35.739655, 32.572231>,  <41.453072, 35.890079, 32.402939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.373623, 35.739655, 32.572231>,  <41.241211, 35.488945, 32.854385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.373623, 35.739655, 32.572231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088902, -0.723492, -0.684584,
		-0.939423, 0.289327, -0.183775,
		0.331029, 0.626777, -0.705387,
		41.472931, 35.927689, 32.360615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822025, 35.289146, 32.353462>,  <41.241211, 35.488945, 32.854385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822025, 35.289146, 32.353462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.143677, 35.468029, 32.196804>,  <41.336666, 35.575359, 32.102810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.143677, 35.468029, 32.196804>,  <40.822025, 35.289146, 32.353462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143677, 35.468029, 32.196804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023507, -0.634393, -0.772653,
		-0.593994, 0.630517, -0.499620,
		0.804126, 0.447207, -0.391647,
		41.384914, 35.602192, 32.079311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667675, 35.137791, 31.623890>,  <40.822025, 35.289146, 32.353462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667675, 35.137791, 31.623890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.046505, 35.264641, 31.643770>,  <41.273804, 35.340752, 31.655699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.046505, 35.264641, 31.643770>,  <40.667675, 35.137791, 31.623890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046505, 35.264641, 31.643770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238357, -0.591060, -0.770607,
		-0.215004, 0.741672, -0.635370,
		0.947079, 0.317129, 0.049702,
		41.330627, 35.359779, 31.658680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918499, 35.186348, 30.870235>,  <40.667675, 35.137791, 31.623890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.918499, 35.186348, 30.870235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.241299, 35.159298, 31.104904>,  <41.434978, 35.143066, 31.245705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.241299, 35.159298, 31.104904>,  <40.918499, 35.186348, 30.870235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.241299, 35.159298, 31.104904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434157, -0.605488, -0.667003,
		0.400329, 0.792976, -0.459266,
		0.806997, -0.067627, 0.586670,
		41.483398, 35.139011, 31.280905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753307, 35.763584, 30.437176>,  <40.918499, 35.186348, 30.870235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753307, 35.763584, 30.437176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.658901, 35.872562, 30.064066>,  <40.602257, 35.937950, 29.840200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.658901, 35.872562, 30.064066>,  <40.753307, 35.763584, 30.437176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658901, 35.872562, 30.064066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860307, 0.387753, 0.330937,
		0.451850, 0.880579, 0.142874,
		-0.236016, 0.272449, -0.932774,
		40.588097, 35.954296, 29.784233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615685, 36.447021, 30.486668>,  <40.753307, 35.763584, 30.437176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615685, 36.447021, 30.486668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.459194, 36.328045, 30.138308>,  <40.365299, 36.256657, 29.929291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.459194, 36.328045, 30.138308>,  <40.615685, 36.447021, 30.486668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.459194, 36.328045, 30.138308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905900, 0.291190, 0.307494,
		0.162136, 0.909249, -0.383377,
		-0.391225, -0.297445, -0.870902,
		40.341827, 36.238811, 29.877037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184517, 36.989143, 30.351240>,  <40.615685, 36.447021, 30.486668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184517, 36.989143, 30.351240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.039577, 36.689903, 30.128870>,  <39.952614, 36.510361, 29.995447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.039577, 36.689903, 30.128870>,  <40.184517, 36.989143, 30.351240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039577, 36.689903, 30.128870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902115, 0.131569, 0.410948,
		-0.234286, 0.650417, -0.722542,
		-0.362352, -0.748096, -0.555926,
		39.930870, 36.465473, 29.962091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554993, 37.258141, 30.242708>,  <40.184517, 36.989143, 30.351240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554993, 37.258141, 30.242708> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.537083, 36.861275, 30.196056>,  <39.526337, 36.623154, 30.168064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.537083, 36.861275, 30.196056>,  <39.554993, 37.258141, 30.242708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537083, 36.861275, 30.196056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881185, -0.015773, 0.472508,
		-0.470646, 0.123932, -0.873575,
		-0.044780, -0.992165, -0.116631,
		39.523647, 36.563625, 30.161068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884396, 37.152397, 29.831846>,  <39.554993, 37.258141, 30.242708>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884396, 37.152397, 29.831846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.972336, 36.800766, 30.001028>,  <39.025101, 36.589787, 30.102537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.972336, 36.800766, 30.001028>,  <38.884396, 37.152397, 29.831846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972336, 36.800766, 30.001028> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.946516, -0.087258, 0.310635,
		-0.236166, -0.468625, -0.851244,
		0.219849, -0.879077, 0.422954,
		39.038292, 36.537045, 30.127914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345387, 36.626251, 29.668888>,  <38.884396, 37.152397, 29.831846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345387, 36.626251, 29.668888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.531719, 36.448177, 29.974781>,  <38.643517, 36.341331, 30.158316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.531719, 36.448177, 29.974781>,  <38.345387, 36.626251, 29.668888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531719, 36.448177, 29.974781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870992, -0.383170, 0.307495,
		0.156129, -0.809314, -0.566246,
		0.465829, -0.445187, 0.764730,
		38.671467, 36.314621, 30.204201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129734, 35.876522, 29.699516>,  <38.345387, 36.626251, 29.668888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129734, 35.876522, 29.699516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.270443, 35.989372, 30.056540>,  <38.354870, 36.057083, 30.270754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.270443, 35.989372, 30.056540>,  <38.129734, 35.876522, 29.699516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270443, 35.989372, 30.056540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811085, -0.384163, 0.441091,
		0.467331, -0.879104, 0.093691,
		0.351772, 0.282127, 0.892559,
		38.375973, 36.074009, 30.324306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867840, 35.379143, 30.102505>,  <38.129734, 35.876522, 29.699516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867840, 35.379143, 30.102505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.961288, 35.676685, 30.352974>,  <38.017357, 35.855213, 30.503256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.961288, 35.676685, 30.352974>,  <37.867840, 35.379143, 30.102505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961288, 35.676685, 30.352974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782696, -0.238221, 0.575011,
		0.576896, -0.624437, 0.526564,
		0.233620, 0.743860, 0.626173,
		38.031376, 35.899845, 30.540827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945244, 35.100334, 30.674078>,  <37.867840, 35.379143, 30.102505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945244, 35.100334, 30.674078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.841240, 35.477051, 30.759325>,  <37.778835, 35.703079, 30.810474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.841240, 35.477051, 30.759325>,  <37.945244, 35.100334, 30.674078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841240, 35.477051, 30.759325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755503, -0.335869, 0.562501,
		0.601340, -0.014755, 0.798857,
		-0.260012, 0.941793, 0.213119,
		37.763237, 35.759590, 30.823261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884892, 35.110626, 31.385536>,  <37.945244, 35.100334, 30.674078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884892, 35.110626, 31.385536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.664787, 35.433956, 31.301802>,  <37.532726, 35.627956, 31.251560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.664787, 35.433956, 31.301802>,  <37.884892, 35.110626, 31.385536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664787, 35.433956, 31.301802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649666, -0.256960, 0.715475,
		0.524547, 0.529696, 0.666538,
		-0.550258, 0.808328, -0.209338,
		37.499710, 35.676453, 31.239000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554317, 35.134773, 31.964735>,  <37.884892, 35.110626, 31.385536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554317, 35.134773, 31.964735> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.352020, 35.408649, 31.754812>,  <37.230644, 35.572975, 31.628859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.352020, 35.408649, 31.754812>,  <37.554317, 35.134773, 31.964735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352020, 35.408649, 31.754812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696423, 0.034991, 0.716777,
		0.509137, 0.727990, 0.459140,
		-0.505741, 0.684694, -0.524805,
		37.200298, 35.614059, 31.597370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502720, 35.622662, 32.396652>,  <37.554317, 35.134773, 31.964735>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502720, 35.622662, 32.396652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.213219, 35.692173, 32.129524>,  <37.039516, 35.733879, 31.969248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.213219, 35.692173, 32.129524>,  <37.502720, 35.622662, 32.396652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213219, 35.692173, 32.129524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687361, -0.096089, 0.719931,
		0.060936, 0.980086, 0.188992,
		-0.723755, 0.173776, -0.667818,
		36.996094, 35.744305, 31.929178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.468784, 34.175266, 28.144878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151314, 34.221554, 27.905983>,  <42.960831, 34.249329, 27.762646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151314, 34.221554, 27.905983>,  <43.468784, 34.175266, 28.144878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151314, 34.221554, 27.905983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430889, 0.586092, 0.686172,
		0.429440, 0.801938, -0.415302,
		-0.793672, 0.115721, -0.597238,
		42.913212, 34.256271, 27.726812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.356853, 34.903450, 27.979048>,  <43.468784, 34.175266, 28.144878>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.356853, 34.903450, 27.979048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.002674, 34.737885, 27.894518>,  <42.790169, 34.638546, 27.843800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.002674, 34.737885, 27.894518>,  <43.356853, 34.903450, 27.979048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002674, 34.737885, 27.894518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464713, 0.793747, 0.392437,
		0.005301, 0.445687, -0.895173,
		-0.885446, -0.413918, -0.211324,
		42.737041, 34.613708, 27.831121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.965416, 35.420300, 27.650118>,  <43.356853, 34.903450, 27.979048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.965416, 35.420300, 27.650118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708130, 35.143200, 27.780579>,  <42.553757, 34.976940, 27.858856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.708130, 35.143200, 27.780579>,  <42.965416, 35.420300, 27.650118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708130, 35.143200, 27.780579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477498, 0.695899, 0.536396,
		-0.598556, 0.189280, -0.778398,
		-0.643215, -0.692747, 0.326154,
		42.515163, 34.935375, 27.878426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320396, 35.711254, 27.512936>,  <42.965416, 35.420300, 27.650118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320396, 35.711254, 27.512936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269810, 35.429501, 27.792322>,  <42.239456, 35.260448, 27.959953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269810, 35.429501, 27.792322>,  <42.320396, 35.711254, 27.512936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269810, 35.429501, 27.792322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518291, 0.647285, 0.558924,
		-0.845802, -0.291321, -0.446936,
		-0.126468, -0.704382, 0.698464,
		42.231869, 35.218185, 28.001862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583988, 35.628300, 27.622360>,  <42.320396, 35.711254, 27.512936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583988, 35.628300, 27.622360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756664, 35.495392, 27.957798>,  <41.860271, 35.415649, 28.159061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756664, 35.495392, 27.957798>,  <41.583988, 35.628300, 27.622360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756664, 35.495392, 27.957798> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613468, 0.573421, 0.542997,
		-0.661288, -0.748858, 0.043705,
		0.431689, -0.332266, 0.838597,
		41.886169, 35.395714, 28.209377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000248, 35.280708, 27.996746>,  <41.583988, 35.628300, 27.622360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000248, 35.280708, 27.996746> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288467, 35.336483, 28.268444>,  <41.461399, 35.369949, 28.431463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288467, 35.336483, 28.268444>,  <41.000248, 35.280708, 27.996746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288467, 35.336483, 28.268444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629280, 0.542928, 0.556090,
		-0.291241, -0.828122, 0.478949,
		0.720545, 0.139437, 0.679244,
		41.504631, 35.378315, 28.472218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.773869, 35.021397, 28.635733>,  <41.000248, 35.280708, 27.996746>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.773869, 35.021397, 28.635733> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068081, 35.269985, 28.743635>,  <41.244606, 35.419140, 28.808376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068081, 35.269985, 28.743635>,  <40.773869, 35.021397, 28.635733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068081, 35.269985, 28.743635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597549, 0.407454, 0.690591,
		0.319270, -0.669143, 0.671054,
		0.735528, 0.621473, 0.269758,
		41.288738, 35.456429, 28.824562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808357, 34.878021, 29.342157>,  <40.773869, 35.021397, 28.635733>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808357, 34.878021, 29.342157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956936, 35.240810, 29.262733>,  <41.046082, 35.458485, 29.215078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956936, 35.240810, 29.262733>,  <40.808357, 34.878021, 29.342157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956936, 35.240810, 29.262733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650815, 0.406873, 0.641010,
		0.662168, -0.108875, 0.741404,
		0.371447, 0.906973, -0.198561,
		41.068371, 35.512901, 29.203165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.991528, 35.170670, 29.983683>,  <40.808357, 34.878021, 29.342157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.991528, 35.170670, 29.983683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935879, 35.466862, 29.720673>,  <40.902489, 35.644577, 29.562866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935879, 35.466862, 29.720673>,  <40.991528, 35.170670, 29.983683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935879, 35.466862, 29.720673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737235, 0.365862, 0.568004,
		0.661159, 0.563769, 0.495009,
		-0.139118, 0.740479, -0.657523,
		40.894142, 35.689007, 29.523417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.523479, 35.389721, 30.500935>,  <40.991528, 35.170670, 29.983683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.523479, 35.389721, 30.500935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678349, 35.182522, 30.806032>,  <41.771271, 35.058205, 30.989090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678349, 35.182522, 30.806032>,  <41.523479, 35.389721, 30.500935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678349, 35.182522, 30.806032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619408, -0.466650, -0.631325,
		0.682959, 0.716881, 0.140177,
		0.387171, -0.517996, 0.762744,
		41.794498, 35.027122, 31.034855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277302, 35.422802, 30.488852>,  <41.523479, 35.389721, 30.500935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277302, 35.422802, 30.488852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172379, 35.096188, 30.694555>,  <42.109425, 34.900219, 30.817978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172379, 35.096188, 30.694555>,  <42.277302, 35.422802, 30.488852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.172379, 35.096188, 30.694555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752083, -0.506889, -0.421231,
		0.604623, 0.276274, 0.747064,
		-0.262304, -0.816539, 0.514257,
		42.093689, 34.851227, 30.848833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886295, 34.992260, 30.405581>,  <42.277302, 35.422802, 30.488852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886295, 34.992260, 30.405581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610832, 34.749340, 30.564039>,  <42.445553, 34.603588, 30.659115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610832, 34.749340, 30.564039>,  <42.886295, 34.992260, 30.405581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610832, 34.749340, 30.564039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475116, -0.790662, -0.386158,
		0.547733, -0.077716, 0.833036,
		-0.688661, -0.607300, 0.396147,
		42.404236, 34.567150, 30.682884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225044, 34.515511, 30.794565>,  <42.886295, 34.992260, 30.405581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.225044, 34.515511, 30.794565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879772, 34.335178, 30.703634>,  <42.672611, 34.226978, 30.649075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879772, 34.335178, 30.703634>,  <43.225044, 34.515511, 30.794565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.879772, 34.335178, 30.703634> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504607, -0.754849, -0.419015,
		0.017307, -0.476396, 0.879061,
		-0.863176, -0.450832, -0.227329,
		42.620819, 34.199928, 30.635435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311844, 33.871559, 31.031361>,  <43.225044, 34.515511, 30.794565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311844, 33.871559, 31.031361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000957, 33.834892, 30.782351>,  <42.814426, 33.812893, 30.632944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000957, 33.834892, 30.782351>,  <43.311844, 33.871559, 31.031361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000957, 33.834892, 30.782351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368902, -0.867855, -0.332776,
		-0.509757, -0.488288, 0.708324,
		-0.777213, -0.091667, -0.622525,
		42.767796, 33.807392, 30.595592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.046558, 33.202988, 31.199032>,  <43.311844, 33.871559, 31.031361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.046558, 33.202988, 31.199032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943108, 33.306385, 30.826733>,  <42.881035, 33.368423, 30.603354>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943108, 33.306385, 30.826733>,  <43.046558, 33.202988, 31.199032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.943108, 33.306385, 30.826733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357144, -0.869667, -0.340774,
		-0.897530, -0.420545, 0.132600,
		-0.258628, 0.258498, -0.930747,
		42.865520, 33.383934, 30.547508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923496, 32.550694, 30.855482>,  <43.046558, 33.202988, 31.199032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923496, 32.550694, 30.855482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882729, 32.801395, 30.546473>,  <42.858269, 32.951817, 30.361067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882729, 32.801395, 30.546473>,  <42.923496, 32.550694, 30.855482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.882729, 32.801395, 30.546473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317433, -0.715480, -0.622354,
		-0.942788, -0.308654, -0.126031,
		-0.101919, 0.626754, -0.772523,
		42.852154, 32.989422, 30.314716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503201, 32.228291, 30.261309>,  <42.923496, 32.550694, 30.855482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503201, 32.228291, 30.261309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728851, 32.513020, 30.093943>,  <42.864243, 32.683857, 29.993523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.728851, 32.513020, 30.093943>,  <42.503201, 32.228291, 30.261309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728851, 32.513020, 30.093943> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348915, -0.664788, -0.660541,
		-0.748347, 0.226635, -0.623389,
		0.564124, 0.711824, -0.418415,
		42.898087, 32.726566, 29.968418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475845, 32.100624, 29.598085>,  <42.503201, 32.228291, 30.261309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475845, 32.100624, 29.598085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.818077, 32.303684, 29.638636>,  <43.023415, 32.425522, 29.662966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.818077, 32.303684, 29.638636>,  <42.475845, 32.100624, 29.598085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818077, 32.303684, 29.638636> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434765, -0.598339, -0.673031,
		-0.281006, 0.619906, -0.732634,
		0.855579, 0.507649, 0.101376,
		43.074749, 32.455978, 29.669048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769142, 32.132557, 28.902393>,  <42.475845, 32.100624, 29.598085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.769142, 32.132557, 28.902393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.082706, 32.220589, 29.134619>,  <43.270844, 32.273407, 29.273954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.082706, 32.220589, 29.134619>,  <42.769142, 32.132557, 28.902393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.082706, 32.220589, 29.134619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561389, -0.650652, -0.511365,
		0.265204, 0.726785, -0.633601,
		0.783906, 0.220081, 0.580564,
		43.317879, 32.286613, 29.308788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361111, 32.204483, 28.429506>,  <42.769142, 32.132557, 28.902393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361111, 32.204483, 28.429506> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518764, 32.165417, 28.795046>,  <43.613358, 32.141975, 29.014370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518764, 32.165417, 28.795046>,  <43.361111, 32.204483, 28.429506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518764, 32.165417, 28.795046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704445, -0.606517, -0.368639,
		0.590271, 0.789048, -0.170244,
		0.394130, -0.097669, 0.913850,
		43.637005, 32.136116, 29.069201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.050095, 32.327507, 28.350653>,  <43.361111, 32.204483, 28.429506>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.050095, 32.327507, 28.350653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034943, 32.094204, 28.675215>,  <44.025852, 31.954222, 28.869951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.034943, 32.094204, 28.675215>,  <44.050095, 32.327507, 28.350653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.034943, 32.094204, 28.675215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723472, -0.576121, -0.380357,
		0.689313, 0.572622, 0.443791,
		-0.037876, -0.583256, 0.811405,
		44.023579, 31.919228, 28.918636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.805866, 32.259300, 28.639269>,  <44.050095, 32.327507, 28.350653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.805866, 32.259300, 28.639269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.586231, 31.973177, 28.812170>,  <44.454453, 31.801504, 28.915911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.586231, 31.973177, 28.812170>,  <44.805866, 32.259300, 28.639269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.586231, 31.973177, 28.812170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699287, -0.676449, -0.231117,
		0.457717, 0.175367, 0.871632,
		-0.549084, -0.715306, 0.432254,
		44.421505, 31.758585, 28.941847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.270580, 31.940603, 29.135698>,  <44.805866, 32.259300, 28.639269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.270580, 31.940603, 29.135698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.001766, 31.654484, 29.059052>,  <44.840477, 31.482811, 29.013063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.001766, 31.654484, 29.059052>,  <45.270580, 31.940603, 29.135698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.001766, 31.654484, 29.059052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694429, -0.518878, -0.498532,
		0.257175, -0.468093, 0.845429,
		-0.672034, -0.715300, -0.191615,
		44.800156, 31.439894, 29.001566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.111931, 30.069242, 27.073265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.467487, 30.175747, 27.222382>,  <40.680820, 30.239649, 27.311852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.467487, 30.175747, 27.222382>,  <40.111931, 30.069242, 27.073265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467487, 30.175747, 27.222382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452301, 0.380876, 0.806447,
		0.072736, -0.885460, 0.458988,
		0.888895, 0.266259, 0.372791,
		40.734154, 30.255625, 27.334219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210453, 29.787119, 27.712713>,  <40.111931, 30.069242, 27.073265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.210453, 29.787119, 27.712713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.471626, 30.089561, 27.730530>,  <40.628330, 30.271027, 27.741220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.471626, 30.089561, 27.730530>,  <40.210453, 29.787119, 27.712713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.471626, 30.089561, 27.730530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471576, 0.359799, 0.805084,
		0.592704, -0.546669, 0.591486,
		0.652930, 0.756107, 0.044542,
		40.667507, 30.316393, 27.743893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446739, 29.903177, 28.404810>,  <40.210453, 29.787119, 27.712713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446739, 29.903177, 28.404810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.541584, 30.252462, 28.234505>,  <40.598492, 30.462034, 28.132322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.541584, 30.252462, 28.234505>,  <40.446739, 29.903177, 28.404810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541584, 30.252462, 28.234505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423900, 0.487336, 0.763422,
		0.874121, -0.000535, 0.485708,
		0.237112, 0.873214, -0.425764,
		40.612717, 30.514427, 28.106775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683182, 30.361984, 28.917267>,  <40.446739, 29.903177, 28.404810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683182, 30.361984, 28.917267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.558422, 30.609234, 28.628645>,  <40.483566, 30.757584, 28.455473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.558422, 30.609234, 28.628645>,  <40.683182, 30.361984, 28.917267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.558422, 30.609234, 28.628645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608395, 0.453384, 0.651382,
		0.729777, 0.642155, 0.234654,
		-0.311901, 0.618126, -0.721553,
		40.464851, 30.794672, 28.412180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704948, 31.004095, 29.260864>,  <40.683182, 30.361984, 28.917267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704948, 31.004095, 29.260864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.456017, 31.043524, 28.950254>,  <40.306660, 31.067181, 28.763887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.456017, 31.043524, 28.950254>,  <40.704948, 31.004095, 29.260864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456017, 31.043524, 28.950254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639131, 0.508743, 0.576795,
		0.451908, 0.855257, -0.253604,
		-0.622327, 0.098573, -0.776526,
		40.269318, 31.073095, 28.717297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602104, 31.650305, 29.299353>,  <40.704948, 31.004095, 29.260864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602104, 31.650305, 29.299353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.300259, 31.514854, 29.074535>,  <40.119152, 31.433584, 28.939644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.300259, 31.514854, 29.074535>,  <40.602104, 31.650305, 29.299353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300259, 31.514854, 29.074535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649520, 0.507137, 0.566512,
		0.093198, 0.792556, -0.602636,
		-0.754611, -0.338626, -0.562045,
		40.073875, 31.413267, 28.905922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121761, 32.164894, 29.189960>,  <40.602104, 31.650305, 29.299353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121761, 32.164894, 29.189960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.895031, 31.861929, 29.060318>,  <39.758995, 31.680151, 28.982533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.895031, 31.861929, 29.060318>,  <40.121761, 32.164894, 29.189960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895031, 31.861929, 29.060318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810739, 0.442943, 0.382759,
		-0.146344, 0.479722, -0.865130,
		-0.566821, -0.757409, -0.324107,
		39.724983, 31.634706, 28.963085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.498161, 32.413101, 28.884777>,  <40.121761, 32.164894, 29.189960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.498161, 32.413101, 28.884777> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.379185, 32.043179, 28.979654>,  <39.307800, 31.821224, 29.036581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.379185, 32.043179, 28.979654>,  <39.498161, 32.413101, 28.884777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379185, 32.043179, 28.979654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713306, 0.380389, 0.588641,
		-0.634606, 0.005892, -0.772813,
		-0.297438, -0.924808, 0.237194,
		39.289955, 31.765736, 29.050812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723267, 32.324368, 28.771036>,  <39.498161, 32.413101, 28.884777>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723267, 32.324368, 28.771036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.834084, 32.032230, 29.020786>,  <38.900574, 31.856947, 29.170635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.834084, 32.032230, 29.020786>,  <38.723267, 32.324368, 28.771036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834084, 32.032230, 29.020786> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714656, 0.277733, 0.641975,
		-0.642273, -0.624067, -0.445002,
		0.277044, -0.730346, 0.624373,
		38.917198, 31.813128, 29.208097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120354, 31.944633, 28.944979>,  <38.723267, 32.324368, 28.771036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120354, 31.944633, 28.944979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.377201, 31.870193, 29.242449>,  <38.531311, 31.825529, 29.420931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.377201, 31.870193, 29.242449>,  <38.120354, 31.944633, 28.944979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377201, 31.870193, 29.242449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711033, 0.218044, 0.668498,
		-0.286562, -0.958031, 0.007686,
		0.642117, -0.186101, 0.743674,
		38.569836, 31.814363, 29.465551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736389, 31.532314, 29.538408>,  <38.120354, 31.944633, 28.944979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736389, 31.532314, 29.538408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.067852, 31.703033, 29.683277>,  <38.266731, 31.805464, 29.770199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.067852, 31.703033, 29.683277>,  <37.736389, 31.532314, 29.538408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067852, 31.703033, 29.683277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477485, 0.201312, 0.855267,
		0.292117, -0.881656, 0.370608,
		0.828659, 0.426798, 0.362171,
		38.316448, 31.831072, 29.791929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880264, 31.117680, 30.268873>,  <37.736389, 31.532314, 29.538408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880264, 31.117680, 30.268873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.070179, 31.469070, 30.290260>,  <38.184128, 31.679905, 30.303093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.070179, 31.469070, 30.290260>,  <37.880264, 31.117680, 30.268873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070179, 31.469070, 30.290260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486124, 0.211119, 0.848005,
		0.733664, -0.428612, 0.527284,
		0.474785, 0.878476, 0.053469,
		38.212616, 31.732613, 30.306301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251377, 31.184870, 30.964094>,  <37.880264, 31.117680, 30.268873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251377, 31.184870, 30.964094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.207249, 31.556778, 30.823606>,  <38.180771, 31.779922, 30.739313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.207249, 31.556778, 30.823606>,  <38.251377, 31.184870, 30.964094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.207249, 31.556778, 30.823606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506651, 0.251404, 0.824682,
		0.855063, 0.268930, 0.443333,
		-0.110326, 0.929770, -0.351220,
		38.174152, 31.835709, 30.718241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521809, 31.645029, 31.534416>,  <38.251377, 31.184870, 30.964094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521809, 31.645029, 31.534416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.285397, 31.862295, 31.295868>,  <38.143551, 31.992655, 31.152739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.285397, 31.862295, 31.295868>,  <38.521809, 31.645029, 31.534416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285397, 31.862295, 31.295868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563945, 0.250385, 0.786939,
		0.576759, 0.801424, 0.158331,
		-0.591028, 0.543164, -0.596371,
		38.108089, 32.025246, 31.116957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915863, 32.176197, 31.647190>,  <38.521809, 31.645029, 31.534416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915863, 32.176197, 31.647190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.197876, 32.114971, 31.924173>,  <39.367085, 32.078236, 32.090363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.197876, 32.114971, 31.924173>,  <38.915863, 32.176197, 31.647190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197876, 32.114971, 31.924173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349119, -0.775005, -0.526767,
		0.617286, 0.613139, -0.492969,
		0.705034, -0.153061, 0.692459,
		39.409386, 32.069054, 32.131912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560883, 32.173012, 31.286942>,  <38.915863, 32.176197, 31.647190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560883, 32.173012, 31.286942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.655121, 31.983530, 31.626377>,  <39.711662, 31.869841, 31.830038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.655121, 31.983530, 31.626377>,  <39.560883, 32.173012, 31.286942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655121, 31.983530, 31.626377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446315, -0.722906, -0.527457,
		0.863306, 0.503003, 0.041109,
		0.235595, -0.473704, 0.848587,
		39.725800, 31.841419, 31.880953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226154, 32.013443, 31.211248>,  <39.560883, 32.173012, 31.286942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226154, 32.013443, 31.211248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.073528, 31.758949, 31.479462>,  <39.981953, 31.606253, 31.640390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.073528, 31.758949, 31.479462>,  <40.226154, 32.013443, 31.211248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.073528, 31.758949, 31.479462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587303, -0.727042, -0.355647,
		0.713781, 0.258103, 0.651076,
		-0.381567, -0.636233, 0.670533,
		39.959057, 31.568079, 31.680622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801620, 31.667059, 31.551853>,  <40.226154, 32.013443, 31.211248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801620, 31.667059, 31.551853> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.489597, 31.426825, 31.622057>,  <40.302383, 31.282684, 31.664179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.489597, 31.426825, 31.622057>,  <40.801620, 31.667059, 31.551853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489597, 31.426825, 31.622057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537242, -0.786674, -0.304163,
		0.320743, -0.142975, 0.936313,
		-0.780061, -0.600585, 0.175508,
		40.255581, 31.246649, 31.674709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104706, 31.047085, 31.834322>,  <40.801620, 31.667059, 31.551853>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104706, 31.047085, 31.834322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.741482, 30.937794, 31.707338>,  <40.523548, 30.872219, 31.631147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.741482, 30.937794, 31.707338>,  <41.104706, 31.047085, 31.834322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741482, 30.937794, 31.707338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391485, -0.823107, -0.411380,
		-0.148904, -0.497838, 0.854392,
		-0.908056, -0.273226, -0.317460,
		40.469067, 30.855825, 31.612101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.023136, 30.343040, 32.065914>,  <41.104706, 31.047085, 31.834322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.023136, 30.343040, 32.065914> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.762207, 30.395412, 31.767294>,  <40.605652, 30.426836, 31.588121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.762207, 30.395412, 31.767294>,  <41.023136, 30.343040, 32.065914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762207, 30.395412, 31.767294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352824, -0.819289, -0.451974,
		-0.670817, -0.558232, 0.488244,
		-0.652319, 0.130927, -0.746551,
		40.566513, 30.434690, 31.543329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.504032, 29.714455, 32.023251>,  <41.023136, 30.343040, 32.065914>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.504032, 29.714455, 32.023251> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.543045, 29.903839, 31.673090>,  <40.566452, 30.017469, 31.462996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.543045, 29.903839, 31.673090>,  <40.504032, 29.714455, 32.023251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543045, 29.903839, 31.673090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287201, -0.855560, -0.430735,
		-0.952891, -0.209404, -0.219426,
		0.097535, 0.473463, -0.875397,
		40.572304, 30.045877, 31.410471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301586, 29.288052, 31.500168>,  <40.504032, 29.714455, 32.023251>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301586, 29.288052, 31.500168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.441830, 29.563131, 31.245880>,  <40.525978, 29.728180, 31.093307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.441830, 29.563131, 31.245880>,  <40.301586, 29.288052, 31.500168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.441830, 29.563131, 31.245880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282906, -0.724872, -0.628111,
		-0.892768, 0.040373, -0.448703,
		0.350611, 0.687699, -0.635721,
		40.547012, 29.769442, 31.055164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185699, 29.055162, 30.813419>,  <40.301586, 29.288052, 31.500168>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185699, 29.055162, 30.813419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.472214, 29.329374, 30.761284>,  <40.644123, 29.493902, 30.730003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.472214, 29.329374, 30.761284>,  <40.185699, 29.055162, 30.813419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472214, 29.329374, 30.761284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386787, -0.545502, -0.743521,
		-0.580806, 0.482157, -0.655888,
		0.716282, 0.685530, -0.130339,
		40.687099, 29.535034, 30.722181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.258408, 29.200335, 30.062992>,  <40.185699, 29.055162, 30.813419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.258408, 29.200335, 30.062992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.604092, 29.318243, 30.226088>,  <40.811501, 29.388988, 30.323944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.604092, 29.318243, 30.226088>,  <40.258408, 29.200335, 30.062992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604092, 29.318243, 30.226088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498577, -0.392954, -0.772663,
		-0.067537, 0.871032, -0.486561,
		0.864211, 0.294771, 0.407738,
		40.863354, 29.406675, 30.348410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673347, 29.518560, 29.518875>,  <40.258408, 29.200335, 30.062992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.673347, 29.518560, 29.518875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.909870, 29.380381, 29.810360>,  <41.051785, 29.297472, 29.985250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.909870, 29.380381, 29.810360>,  <40.673347, 29.518560, 29.518875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.909870, 29.380381, 29.810360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579183, -0.446858, -0.681810,
		0.561163, 0.825216, -0.064151,
		0.591307, -0.345452, 0.728711,
		41.087261, 29.276745, 30.028973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.354248, 29.835489, 29.384295>,  <40.673347, 29.518560, 29.518875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.354248, 29.835489, 29.384295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.390297, 29.495596, 29.592077>,  <41.411926, 29.291660, 29.716747>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.390297, 29.495596, 29.592077>,  <41.354248, 29.835489, 29.384295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390297, 29.495596, 29.592077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554127, -0.390608, -0.735098,
		0.827540, 0.354092, 0.435657,
		0.090121, -0.849732, 0.519455,
		41.417332, 29.240677, 29.747913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.028309, 29.689493, 29.493757>,  <41.354248, 29.835489, 29.384295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.028309, 29.689493, 29.493757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.884998, 29.318306, 29.534779>,  <41.799011, 29.095594, 29.559391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.884998, 29.318306, 29.534779>,  <42.028309, 29.689493, 29.493757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884998, 29.318306, 29.534779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697628, -0.339094, -0.631133,
		0.620447, -0.154573, 0.768865,
		-0.358274, -0.927967, 0.102555,
		41.777515, 29.039915, 29.565546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686729, 29.330269, 29.504017>,  <42.028309, 29.689493, 29.493757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686729, 29.330269, 29.504017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.370575, 29.099030, 29.422935>,  <42.180882, 28.960287, 29.374287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.370575, 29.099030, 29.422935>,  <42.686729, 29.330269, 29.504017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.370575, 29.099030, 29.422935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400968, -0.238028, -0.884628,
		0.463152, -0.780478, 0.419933,
		-0.790389, -0.578097, -0.202704,
		42.133457, 28.925600, 29.362123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823475, 29.135406, 30.207798>,  <42.686729, 29.330269, 29.504017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823475, 29.135406, 30.207798> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.181206, 29.169910, 30.383404>,  <43.395844, 29.190613, 30.488768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.181206, 29.169910, 30.383404>,  <42.823475, 29.135406, 30.207798>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.181206, 29.169910, 30.383404> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395046, 0.612888, 0.684330,
		-0.210037, -0.785447, 0.582200,
		0.894329, 0.086262, 0.439017,
		43.449505, 29.195789, 30.515108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.746696, 29.038172, 30.932909>,  <42.823475, 29.135406, 30.207798>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.746696, 29.038172, 30.932909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.083614, 29.249950, 30.892471>,  <43.285767, 29.377018, 30.868208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.083614, 29.249950, 30.892471>,  <42.746696, 29.038172, 30.932909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083614, 29.249950, 30.892471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254412, 0.555858, 0.791389,
		0.475191, -0.640867, 0.602895,
		0.842299, 0.529445, -0.101095,
		43.336304, 29.408785, 30.862143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174786, 29.101490, 31.586578>,  <42.746696, 29.038172, 30.932909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174786, 29.101490, 31.586578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.301113, 29.425135, 31.388346>,  <43.376907, 29.619322, 31.269405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.301113, 29.425135, 31.388346>,  <43.174786, 29.101490, 31.586578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301113, 29.425135, 31.388346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089951, 0.494429, 0.864551,
		0.944548, -0.317616, 0.083367,
		0.315814, 0.809111, -0.495582,
		43.395859, 29.667868, 31.239672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.708920, 29.366455, 31.997305>,  <43.174786, 29.101490, 31.586578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.708920, 29.366455, 31.997305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.583801, 29.666153, 31.763794>,  <43.508732, 29.845972, 31.623688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.583801, 29.666153, 31.763794>,  <43.708920, 29.366455, 31.997305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.583801, 29.666153, 31.763794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242620, 0.657254, 0.713549,
		0.918311, 0.081560, -0.387368,
		-0.312796, 0.749243, -0.583775,
		43.489964, 29.890926, 31.588661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.098747, 30.009487, 32.176476>,  <43.708920, 29.366455, 31.997305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.098747, 30.009487, 32.176476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.808922, 30.186619, 31.965225>,  <43.635029, 30.292898, 31.838476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.808922, 30.186619, 31.965225>,  <44.098747, 30.009487, 32.176476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.808922, 30.186619, 31.965225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077101, 0.813542, 0.576372,
		0.684886, 0.376897, -0.623603,
		-0.724560, 0.442829, -0.528124,
		43.591553, 30.319468, 31.806787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352211, 30.719578, 32.017700>,  <44.098747, 30.009487, 32.176476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352211, 30.719578, 32.017700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.953251, 30.735346, 31.993567>,  <43.713875, 30.744806, 31.979086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.953251, 30.735346, 31.993567>,  <44.352211, 30.719578, 32.017700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.953251, 30.735346, 31.993567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004717, 0.799638, 0.600465,
		0.071916, 0.599188, -0.797372,
		-0.997400, 0.039422, -0.060334,
		43.654030, 30.747173, 31.975466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.131504, 31.427698, 32.149555>,  <44.352211, 30.719578, 32.017700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.131504, 31.427698, 32.149555> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.771427, 31.265982, 32.214306>,  <43.555382, 31.168951, 32.253155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.771427, 31.265982, 32.214306>,  <44.131504, 31.427698, 32.149555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.771427, 31.265982, 32.214306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185134, 0.691705, 0.698047,
		-0.394184, 0.598407, -0.697515,
		-0.900191, -0.404293, 0.161874,
		43.501369, 31.144693, 32.262867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666443, 31.989447, 32.333324>,  <44.131504, 31.427698, 32.149555>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.666443, 31.989447, 32.333324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.478863, 31.657627, 32.454609>,  <43.366314, 31.458536, 32.527378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.478863, 31.657627, 32.454609>,  <43.666443, 31.989447, 32.333324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478863, 31.657627, 32.454609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392059, 0.503137, 0.770158,
		-0.791437, 0.242292, -0.561179,
		-0.468953, -0.829547, 0.303209,
		43.338177, 31.408764, 32.545570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.863693, 32.100475, 32.352226>,  <43.666443, 31.989447, 32.333324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.863693, 32.100475, 32.352226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.962116, 31.795059, 32.591045>,  <43.021168, 31.611811, 32.734337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.962116, 31.795059, 32.591045>,  <42.863693, 32.100475, 32.352226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.962116, 31.795059, 32.591045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433869, 0.464060, 0.772273,
		-0.866726, -0.449062, -0.217092,
		0.246055, -0.763539, 0.597047,
		43.035934, 31.565998, 32.770161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.292545, 32.132923, 32.863766>,  <42.863693, 32.100475, 32.352226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.292545, 32.132923, 32.863766> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.586723, 31.916302, 33.026657>,  <42.763229, 31.786329, 33.124393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.586723, 31.916302, 33.026657>,  <42.292545, 32.132923, 32.863766>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586723, 31.916302, 33.026657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327519, 0.242012, 0.913324,
		-0.593171, -0.805077, 0.000617,
		0.735446, -0.541555, 0.407232,
		42.807358, 31.753836, 33.148827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.997974, 31.579908, 33.382992>,  <42.292545, 32.132923, 32.863766>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.997974, 31.579908, 33.382992> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.381313, 31.650911, 33.472488>,  <42.611317, 31.693512, 33.526188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.381313, 31.650911, 33.472488>,  <41.997974, 31.579908, 33.382992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381313, 31.650911, 33.472488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251982, 0.156754, 0.954952,
		0.134443, -0.971554, 0.194955,
		0.958348, 0.177512, 0.223739,
		42.668819, 31.704163, 33.539612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103127, 31.279884, 34.020435>,  <41.997974, 31.579908, 33.382992>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103127, 31.279884, 34.020435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.381302, 31.565981, 33.992722>,  <42.548206, 31.737638, 33.976093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.381302, 31.565981, 33.992722>,  <42.103127, 31.279884, 34.020435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381302, 31.565981, 33.992722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332265, 0.405551, 0.851545,
		0.637156, -0.569175, 0.519684,
		0.695437, 0.715240, -0.069283,
		42.589931, 31.780552, 33.971935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387669, 31.358438, 34.718655>,  <42.103127, 31.279884, 34.020435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387669, 31.358438, 34.718655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.472893, 31.697546, 34.524376>,  <42.524025, 31.901011, 34.407810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.472893, 31.697546, 34.524376>,  <42.387669, 31.358438, 34.718655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472893, 31.697546, 34.524376> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359508, 0.530253, 0.767845,
		0.908494, 0.011016, 0.417753,
		0.213056, 0.847768, -0.485692,
		42.536808, 31.951876, 34.378670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.787518, 31.772306, 35.208092>,  <42.387669, 31.358438, 34.718655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.787518, 31.772306, 35.208092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.689362, 32.032299, 34.920395>,  <42.630466, 32.188293, 34.747776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.689362, 32.032299, 34.920395>,  <42.787518, 31.772306, 35.208092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.689362, 32.032299, 34.920395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195524, 0.693495, 0.693423,
		0.949501, 0.310791, -0.043093,
		-0.245394, 0.649980, -0.719241,
		42.615742, 32.227295, 34.704624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.620739, 31.283058, 29.357935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.322472, 31.172235, 29.115540>,  <45.143513, 31.105742, 28.970102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.322472, 31.172235, 29.115540>,  <45.620739, 31.283058, 29.357935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.322472, 31.172235, 29.115540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598947, -0.677204, -0.427384,
		-0.291967, -0.681640, 0.670911,
		-0.745666, -0.277058, -0.605987,
		45.098770, 31.089119, 28.933743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.508663, 30.545074, 29.342253>,  <45.620739, 31.283058, 29.357935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.508663, 30.545074, 29.342253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.371735, 30.681208, 28.991941>,  <45.289577, 30.762888, 28.781755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.371735, 30.681208, 28.991941>,  <45.508663, 30.545074, 29.342253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.371735, 30.681208, 28.991941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576275, -0.660140, -0.481791,
		-0.742105, -0.669618, 0.029857,
		-0.342325, 0.340334, -0.875778,
		45.269035, 30.783308, 28.729208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.356922, 29.962091, 28.900690>,  <45.508663, 30.545074, 29.342253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.356922, 29.962091, 28.900690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.395428, 30.252043, 28.627844>,  <45.418533, 30.426014, 28.464136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.395428, 30.252043, 28.627844>,  <45.356922, 29.962091, 28.900690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.395428, 30.252043, 28.627844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544613, -0.611978, -0.573481,
		-0.833145, -0.316283, -0.453691,
		0.096267, 0.724878, -0.682118,
		45.424309, 30.469505, 28.423208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.067596, 29.677181, 28.289549>,  <45.356922, 29.962091, 28.900690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.067596, 29.677181, 28.289549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.346363, 29.957636, 28.229259>,  <45.513622, 30.125908, 28.193087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.346363, 29.957636, 28.229259>,  <45.067596, 29.677181, 28.289549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.346363, 29.957636, 28.229259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432889, -0.578839, -0.691051,
		-0.571765, 0.416358, -0.706916,
		0.696916, 0.701135, -0.150724,
		45.555439, 30.167976, 28.184042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.216904, 29.583435, 27.539343>,  <45.067596, 29.677181, 28.289549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.216904, 29.583435, 27.539343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.487309, 29.855024, 27.653883>,  <45.649551, 30.017979, 27.722607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.487309, 29.855024, 27.653883>,  <45.216904, 29.583435, 27.539343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.487309, 29.855024, 27.653883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648350, -0.363366, -0.669035,
		-0.350206, 0.637935, -0.685854,
		0.676016, 0.678973, 0.286352,
		45.690113, 30.058716, 27.739788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.342854, 29.952736, 26.935486>,  <45.216904, 29.583435, 27.539343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.342854, 29.952736, 26.935486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.657372, 29.993954, 27.179167>,  <45.846081, 30.018684, 27.325375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.657372, 29.993954, 27.179167>,  <45.342854, 29.952736, 26.935486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.657372, 29.993954, 27.179167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610172, -0.284505, -0.739424,
		0.097127, 0.953121, -0.286578,
		0.786293, 0.103044, 0.609200,
		45.893261, 30.024866, 27.361927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.871372, 30.064783, 26.451982>,  <45.342854, 29.952736, 26.935486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.871372, 30.064783, 26.451982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.057968, 29.992580, 26.798347>,  <46.169926, 29.949259, 27.006166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.057968, 29.992580, 26.798347>,  <45.871372, 30.064783, 26.451982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.057968, 29.992580, 26.798347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831310, -0.244967, -0.498914,
		0.302178, 0.952579, 0.035783,
		0.466489, -0.180508, 0.865912,
		46.197914, 29.938429, 27.058121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.471500, 30.540951, 26.486343>,  <45.871372, 30.064783, 26.451982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.471500, 30.540951, 26.486343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.504944, 30.213333, 26.713385>,  <46.525009, 30.016762, 26.849609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.504944, 30.213333, 26.713385>,  <46.471500, 30.540951, 26.486343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.504944, 30.213333, 26.713385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835698, -0.252627, -0.487635,
		0.542787, 0.515114, 0.663355,
		0.083606, -0.819046, 0.567603,
		46.530025, 29.967619, 26.883665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.085037, 30.574877, 26.764557>,  <46.471500, 30.540951, 26.486343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.085037, 30.574877, 26.764557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.982311, 30.188322, 26.769407>,  <46.920677, 29.956390, 26.772318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.982311, 30.188322, 26.769407>,  <47.085037, 30.574877, 26.764557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.982311, 30.188322, 26.769407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929804, -0.250478, -0.269676,
		0.263647, -0.057983, 0.962875,
		-0.256815, -0.966385, 0.012125,
		46.905266, 29.898407, 26.773045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.708431, 30.125954, 26.785383>,  <47.085037, 30.574877, 26.764557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.708431, 30.125954, 26.785383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.436092, 29.848570, 26.691095>,  <47.272690, 29.682140, 26.634523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.436092, 29.848570, 26.691095>,  <47.708431, 30.125954, 26.785383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.436092, 29.848570, 26.691095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681354, -0.481597, -0.551199,
		0.268713, -0.535890, 0.800385,
		-0.680845, -0.693460, -0.235719,
		47.231838, 29.640532, 26.620380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.157246, 29.531185, 26.861109>,  <47.708431, 30.125954, 26.785383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.157246, 29.531185, 26.861109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.831749, 29.401348, 26.668249>,  <47.636452, 29.323446, 26.552534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.831749, 29.401348, 26.668249>,  <48.157246, 29.531185, 26.861109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.831749, 29.401348, 26.668249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562010, -0.650975, -0.510271,
		-0.148237, -0.686200, 0.712148,
		-0.813739, -0.324593, -0.482150,
		47.587627, 29.303970, 26.523603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.978329, 28.793032, 26.983507>,  <48.157246, 29.531185, 26.861109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.978329, 28.793032, 26.983507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.832748, 28.903381, 26.627657>,  <47.745399, 28.969591, 26.414146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.832748, 28.903381, 26.627657>,  <47.978329, 28.793032, 26.983507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.832748, 28.903381, 26.627657> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696956, -0.552960, -0.456606,
		-0.617892, -0.786212, 0.008980,
		-0.363954, 0.275874, -0.889624,
		47.723560, 28.986143, 26.360769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.996040, 28.255590, 26.603148>,  <47.978329, 28.793032, 26.983507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.996040, 28.255590, 26.603148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.991871, 28.548788, 26.331085>,  <47.989368, 28.724707, 26.167849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.991871, 28.548788, 26.331085>,  <47.996040, 28.255590, 26.603148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.991871, 28.548788, 26.331085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794361, -0.407073, -0.450869,
		-0.607357, -0.544986, -0.578020,
		-0.010421, 0.732995, -0.680154,
		47.988743, 28.768686, 26.127039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.998745, 27.920649, 27.392321>,  <47.996040, 28.255590, 26.603148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.998745, 27.920649, 27.392321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.819809, 27.603638, 27.226530>,  <47.712448, 27.413431, 27.127056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.819809, 27.603638, 27.226530>,  <47.998745, 27.920649, 27.392321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.819809, 27.603638, 27.226530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676907, -0.002869, 0.736063,
		-0.584538, 0.609832, -0.535183,
		-0.447339, -0.792526, -0.414476,
		47.685608, 27.365879, 27.102188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.303539, 28.116899, 27.258917>,  <47.998745, 27.920649, 27.392321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.303539, 28.116899, 27.258917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.327427, 27.718613, 27.287157>,  <47.341759, 27.479641, 27.304100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<47.327427, 27.718613, 27.287157>,  <47.303539, 28.116899, 27.258917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.327427, 27.718613, 27.287157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744987, 0.002617, 0.667073,
		-0.664400, -0.092431, -0.741639,
		0.059717, -0.995715, 0.070599,
		47.345341, 27.419897, 27.308336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.604008, 27.896297, 27.103613>,  <47.303539, 28.116899, 27.258917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.604008, 27.896297, 27.103613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.792294, 27.606083, 27.304420>,  <46.905266, 27.431955, 27.424906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.792294, 27.606083, 27.304420>,  <46.604008, 27.896297, 27.103613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.792294, 27.606083, 27.304420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751938, -0.032251, 0.658445,
		-0.461534, -0.687429, -0.560738,
		0.470719, -0.725535, 0.502019,
		46.933510, 27.388422, 27.455027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.086205, 27.506031, 27.312601>,  <46.604008, 27.896297, 27.103613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.086205, 27.506031, 27.312601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.375488, 27.371222, 27.553728>,  <46.549057, 27.290337, 27.698404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.375488, 27.371222, 27.553728>,  <46.086205, 27.506031, 27.312601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.375488, 27.371222, 27.553728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665707, -0.107803, 0.738385,
		-0.183869, -0.935303, -0.302324,
		0.723206, -0.337025, 0.602816,
		46.592449, 27.270115, 27.734573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.736698, 27.074232, 27.782721>,  <46.086205, 27.506031, 27.312601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.736698, 27.074232, 27.782721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.079037, 27.159002, 27.971451>,  <46.284439, 27.209864, 28.084688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.079037, 27.159002, 27.971451>,  <45.736698, 27.074232, 27.782721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.079037, 27.159002, 27.971451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450495, -0.142788, 0.881287,
		0.254137, -0.966799, -0.026734,
		0.855844, 0.211924, 0.471826,
		46.335789, 27.222580, 28.112999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.844543, 26.494759, 28.141796>,  <45.736698, 27.074232, 27.782721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.844543, 26.494759, 28.141796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.993080, 26.814838, 28.330172>,  <46.082203, 27.006886, 28.443197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.993080, 26.814838, 28.330172>,  <45.844543, 26.494759, 28.141796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.993080, 26.814838, 28.330172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576922, -0.198560, 0.792297,
		0.727505, -0.565911, 0.387919,
		0.371345, 0.800199, 0.470940,
		46.104485, 27.054897, 28.471453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.623310, 26.449440, 28.767006>,  <45.844543, 26.494759, 28.141796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.623310, 26.449440, 28.767006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.769077, 26.821787, 28.777470>,  <45.856537, 27.045195, 28.783749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.769077, 26.821787, 28.777470>,  <45.623310, 26.449440, 28.767006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.769077, 26.821787, 28.777470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631114, 0.226217, 0.741971,
		0.684759, -0.286897, 0.669922,
		0.364416, 0.930869, 0.026160,
		45.878403, 27.101048, 28.785318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.739433, 26.600872, 29.428009>,  <45.623310, 26.449440, 28.767006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.739433, 26.600872, 29.428009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.688545, 26.965221, 29.270975>,  <45.658012, 27.183832, 29.176756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.688545, 26.965221, 29.270975>,  <45.739433, 26.600872, 29.428009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.688545, 26.965221, 29.270975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563173, 0.259476, 0.784543,
		0.816487, 0.320903, 0.479969,
		-0.127222, 0.910875, -0.392583,
		45.650379, 27.238483, 29.153200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.822048, 27.035660, 30.022074>,  <45.739433, 26.600872, 29.428009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.822048, 27.035660, 30.022074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.642040, 27.262308, 29.745979>,  <45.534035, 27.398298, 29.580322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.642040, 27.262308, 29.745979>,  <45.822048, 27.035660, 30.022074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.642040, 27.262308, 29.745979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582049, 0.400087, 0.707919,
		0.677277, 0.720326, 0.149756,
		-0.450017, 0.566622, -0.690234,
		45.507034, 27.432295, 29.538910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.550064, 27.578552, 30.426785>,  <45.822048, 27.035660, 30.022074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.550064, 27.578552, 30.426785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.350330, 27.661768, 30.090361>,  <45.230492, 27.711697, 29.888506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.350330, 27.661768, 30.090361>,  <45.550064, 27.578552, 30.426785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.350330, 27.661768, 30.090361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703393, 0.469446, 0.533722,
		0.505868, 0.858103, -0.088078,
		-0.499336, 0.208039, -0.841061,
		45.200531, 27.724180, 29.838043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503700, 28.311777, 30.390387>,  <45.550064, 27.578552, 30.426785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.503700, 28.311777, 30.390387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.214127, 28.123205, 30.188925>,  <45.040382, 28.010061, 30.068048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.214127, 28.123205, 30.188925>,  <45.503700, 28.311777, 30.390387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.214127, 28.123205, 30.188925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657421, 0.692706, 0.296574,
		0.209071, 0.545814, -0.811404,
		-0.723939, -0.471429, -0.503654,
		44.996944, 27.981777, 30.037828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.172501, 28.853354, 30.045971>,  <45.503700, 28.311777, 30.390387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.172501, 28.853354, 30.045971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.931431, 28.534431, 30.032757>,  <44.786789, 28.343079, 30.024828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.931431, 28.534431, 30.032757>,  <45.172501, 28.853354, 30.045971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.931431, 28.534431, 30.032757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781997, 0.581838, 0.223486,
		-0.158967, 0.160521, -0.974147,
		-0.602670, -0.797307, -0.033034,
		44.750629, 28.295240, 30.022846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.715672, 29.075890, 29.547956>,  <45.172501, 28.853354, 30.045971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.715672, 29.075890, 29.547956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.547070, 28.795874, 29.778530>,  <44.445908, 28.627863, 29.916874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.547070, 28.795874, 29.778530>,  <44.715672, 29.075890, 29.547956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547070, 28.795874, 29.778530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789053, 0.596402, 0.147311,
		-0.446909, -0.392743, -0.803757,
		-0.421507, -0.700041, 0.576432,
		44.420616, 28.585861, 29.951460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061813, 29.186392, 29.460718>,  <44.715672, 29.075890, 29.547956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.061813, 29.186392, 29.460718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.069809, 28.969999, 29.797037>,  <44.074608, 28.840164, 29.998829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.069809, 28.969999, 29.797037>,  <44.061813, 29.186392, 29.460718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.069809, 28.969999, 29.797037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705230, 0.588479, 0.395403,
		-0.708697, -0.600857, -0.369755,
		0.019988, -0.540983, 0.840795,
		44.075806, 28.807705, 30.049276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.367996, 29.218412, 29.721546>,  <44.061813, 29.186392, 29.460718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.367996, 29.218412, 29.721546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.580242, 29.099241, 30.038956>,  <43.707592, 29.027739, 30.229403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.580242, 29.099241, 30.038956>,  <43.367996, 29.218412, 29.721546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.580242, 29.099241, 30.038956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525352, 0.619084, 0.583730,
		-0.665169, -0.726618, 0.171979,
		0.530618, -0.297929, 0.793526,
		43.739429, 29.009863, 30.277014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.113880, 28.469305, 29.628422>,  <43.367996, 29.218412, 29.721546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.113880, 28.469305, 29.628422> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.761505, 28.450321, 29.440084>,  <42.550079, 28.438931, 29.327082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.761505, 28.450321, 29.440084>,  <43.113880, 28.469305, 29.628422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761505, 28.450321, 29.440084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406473, -0.585395, -0.701493,
		-0.242336, -0.809358, 0.534989,
		-0.880938, -0.047462, -0.470844,
		42.497223, 28.436083, 29.298832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.076118, 27.730787, 29.398991>,  <43.113880, 28.469305, 29.628422>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.076118, 27.730787, 29.398991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.816715, 27.940544, 29.178282>,  <42.661072, 28.066399, 29.045856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.816715, 27.940544, 29.178282>,  <43.076118, 27.730787, 29.398991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816715, 27.940544, 29.178282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335657, -0.453589, -0.825586,
		-0.683207, -0.720605, 0.118140,
		-0.648508, 0.524391, -0.551771,
		42.622162, 28.097862, 29.012751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.675091, 27.191479, 28.854525>,  <43.076118, 27.730787, 29.398991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.675091, 27.191479, 28.854525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.682499, 27.566311, 28.715076>,  <42.686943, 27.791210, 28.631407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.682499, 27.566311, 28.715076>,  <42.675091, 27.191479, 28.854525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682499, 27.566311, 28.715076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488267, -0.312755, -0.814727,
		-0.872498, -0.155129, -0.463339,
		0.018524, 0.937080, -0.348622,
		42.688057, 27.847435, 28.610489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577335, 27.106293, 28.118946>,  <42.675091, 27.191479, 28.854525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577335, 27.106293, 28.118946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.702473, 27.486149, 28.111887>,  <42.777554, 27.714064, 28.107651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.702473, 27.486149, 28.111887>,  <42.577335, 27.106293, 28.118946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.702473, 27.486149, 28.111887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476343, -0.172943, -0.862084,
		-0.821722, 0.261290, -0.506458,
		0.312842, 0.949641, -0.017647,
		42.796326, 27.771042, 28.106592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.520870, 27.315599, 27.482347>,  <42.577335, 27.106293, 28.118946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.520870, 27.315599, 27.482347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.778198, 27.586660, 27.624857>,  <42.932594, 27.749296, 27.710363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.778198, 27.586660, 27.624857>,  <42.520870, 27.315599, 27.482347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.778198, 27.586660, 27.624857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489681, -0.006484, -0.871878,
		-0.588519, 0.735355, -0.336004,
		0.643318, 0.677651, 0.356273,
		42.971195, 27.789955, 27.731739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514221, 27.938030, 27.010592>,  <42.520870, 27.315599, 27.482347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514221, 27.938030, 27.010592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.858681, 27.890474, 27.208296>,  <43.065357, 27.861940, 27.326920>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.858681, 27.890474, 27.208296>,  <42.514221, 27.938030, 27.010592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858681, 27.890474, 27.208296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483964, -0.105849, -0.868663,
		0.155591, 0.987249, -0.033613,
		0.861145, -0.118889, 0.494262,
		43.117023, 27.854807, 27.356575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972855, 28.108078, 26.556107>,  <42.514221, 27.938030, 27.010592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972855, 28.108078, 26.556107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.239723, 27.966499, 26.818281>,  <43.399845, 27.881552, 26.975586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.239723, 27.966499, 26.818281>,  <42.972855, 28.108078, 26.556107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.239723, 27.966499, 26.818281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588804, -0.288379, -0.755081,
		0.456274, 0.889696, 0.016006,
		0.667176, -0.353948, 0.655436,
		43.439877, 27.860315, 27.014912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.048450, 28.650856, 26.169695>,  <42.972855, 28.108078, 26.556107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.048450, 28.650856, 26.169695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.858788, 28.849913, 25.879171>,  <42.744987, 28.969347, 25.704857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.858788, 28.849913, 25.879171>,  <43.048450, 28.650856, 26.169695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.858788, 28.849913, 25.879171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545404, 0.481577, 0.686016,
		0.691164, 0.721413, 0.043071,
		-0.474159, 0.497641, -0.726310,
		42.716541, 28.999205, 25.661278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.031792, 29.378359, 26.340477>,  <43.048450, 28.650856, 26.169695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.031792, 29.378359, 26.340477> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.744198, 29.388708, 26.062656>,  <42.571644, 29.394918, 25.895966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.744198, 29.388708, 26.062656>,  <43.031792, 29.378359, 26.340477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.744198, 29.388708, 26.062656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551332, 0.587244, 0.592602,
		0.423203, 0.808996, -0.407951,
		-0.718980, 0.025874, -0.694549,
		42.528503, 29.396471, 25.854292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.836281, 29.990381, 26.394753>,  <43.031792, 29.378359, 26.340477>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.836281, 29.990381, 26.394753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.529694, 29.793903, 26.229221>,  <42.345741, 29.676016, 26.129902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.529694, 29.793903, 26.229221>,  <42.836281, 29.990381, 26.394753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529694, 29.793903, 26.229221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637754, 0.505653, 0.581020,
		-0.076140, 0.709254, -0.700828,
		-0.766467, -0.491195, -0.413830,
		42.299755, 29.646545, 26.105072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316593, 30.575649, 26.155415>,  <42.836281, 29.990381, 26.394753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316593, 30.575649, 26.155415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.113369, 30.231133, 26.152611>,  <41.991432, 30.024424, 26.150928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.113369, 30.231133, 26.152611>,  <42.316593, 30.575649, 26.155415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113369, 30.231133, 26.152611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663770, 0.386336, 0.640433,
		-0.548890, 0.330035, -0.767982,
		-0.508064, -0.861291, -0.007011,
		41.960949, 29.972746, 26.150507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.664425, 30.806883, 25.983772>,  <42.316593, 30.575649, 26.155415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.664425, 30.806883, 25.983772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.603954, 30.450027, 26.154060>,  <41.567673, 30.235914, 26.256233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.603954, 30.450027, 26.154060>,  <41.664425, 30.806883, 25.983772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.603954, 30.450027, 26.154060> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623355, 0.420281, 0.659388,
		-0.767187, -0.165692, -0.619654,
		-0.151174, -0.892138, 0.425719,
		41.558601, 30.182386, 26.281776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946247, 30.727898, 26.163084>,  <41.664425, 30.806883, 25.983772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946247, 30.727898, 26.163084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.098057, 30.434013, 26.387999>,  <41.189144, 30.257683, 26.522947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.098057, 30.434013, 26.387999>,  <40.946247, 30.727898, 26.163084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098057, 30.434013, 26.387999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634861, 0.235275, 0.735933,
		-0.672988, -0.636276, -0.377146,
		0.379524, -0.734710, 0.562284,
		41.211914, 30.213600, 26.556684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.361050, 30.350307, 26.442774>,  <40.946247, 30.727898, 26.163084>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.361050, 30.350307, 26.442774> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.684994, 30.316971, 26.675043>,  <40.879360, 30.296968, 26.814405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.684994, 30.316971, 26.675043>,  <40.361050, 30.350307, 26.442774>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684994, 30.316971, 26.675043> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561096, 0.178780, 0.808213,
		-0.171170, -0.980353, 0.098025,
		0.809859, -0.083341, 0.580674,
		40.927952, 30.291969, 26.849245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<47.178642, 30.480074, 23.863092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.857853, 30.254974, 23.943243>,  <46.665379, 30.119915, 23.991333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.857853, 30.254974, 23.943243>,  <47.178642, 30.480074, 23.863092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.857853, 30.254974, 23.943243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523738, 0.823721, 0.217216,
		-0.287294, 0.069255, -0.955335,
		-0.801973, -0.562750, 0.200379,
		46.617260, 30.086149, 24.003357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.445198, 30.459000, 23.381346>,  <47.178642, 30.480074, 23.863092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.445198, 30.459000, 23.381346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.468639, 30.478035, 23.780205>,  <46.482704, 30.489456, 24.019520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.468639, 30.478035, 23.780205>,  <46.445198, 30.459000, 23.381346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.468639, 30.478035, 23.780205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551506, 0.834138, -0.007393,
		-0.832109, -0.549499, 0.075132,
		0.058608, 0.047587, 0.997146,
		46.486221, 30.492311, 24.079350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.718971, 30.439129, 23.704660>,  <46.445198, 30.459000, 23.381346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.718971, 30.439129, 23.704660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.941578, 30.623156, 23.981392>,  <46.075142, 30.733572, 24.147430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.941578, 30.623156, 23.981392>,  <45.718971, 30.439129, 23.704660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.941578, 30.623156, 23.981392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715139, 0.689121, 0.117001,
		-0.422924, -0.559865, 0.712521,
		0.556517, 0.460069, 0.691827,
		46.108532, 30.761177, 24.188940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.262371, 30.639254, 24.129463>,  <45.718971, 30.439129, 23.704660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.262371, 30.639254, 24.129463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.578915, 30.848753, 24.255596>,  <45.768841, 30.974453, 24.331276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.578915, 30.848753, 24.255596>,  <45.262371, 30.639254, 24.129463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.578915, 30.848753, 24.255596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600793, 0.761692, 0.242636,
		-0.113107, -0.381463, 0.917438,
		0.791362, 0.523747, 0.315333,
		45.816322, 31.005877, 24.350197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.165142, 30.845087, 24.830353>,  <45.262371, 30.639254, 24.129463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.165142, 30.845087, 24.830353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.427696, 31.114189, 24.693792>,  <45.585228, 31.275650, 24.611856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.427696, 31.114189, 24.693792>,  <45.165142, 30.845087, 24.830353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.427696, 31.114189, 24.693792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532402, 0.733694, 0.422186,
		0.534514, -0.095354, 0.839764,
		0.656387, 0.672756, -0.341403,
		45.624611, 31.316015, 24.591372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.350761, 31.152510, 25.399212>,  <45.165142, 30.845087, 24.830353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.350761, 31.152510, 25.399212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.444656, 31.398548, 25.098133>,  <45.500992, 31.546171, 24.917486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.444656, 31.398548, 25.098133>,  <45.350761, 31.152510, 25.399212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.444656, 31.398548, 25.098133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466543, 0.750608, 0.467894,
		0.852781, 0.241333, 0.463166,
		0.234738, 0.615098, -0.752697,
		45.515079, 31.583078, 24.872324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.591373, 31.711863, 25.707003>,  <45.350761, 31.152510, 25.399212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.591373, 31.711863, 25.707003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.474258, 31.858412, 25.353722>,  <45.403992, 31.946342, 25.141752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.474258, 31.858412, 25.353722>,  <45.591373, 31.711863, 25.707003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.474258, 31.858412, 25.353722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539412, 0.699380, 0.468937,
		0.789501, 0.613707, -0.007141,
		-0.292785, 0.366375, -0.883202,
		45.386421, 31.968325, 25.088760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.691128, 32.429832, 25.690523>,  <45.591373, 31.711863, 25.707003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.691128, 32.429832, 25.690523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.412701, 32.344040, 25.416449>,  <45.245644, 32.292564, 25.252005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.412701, 32.344040, 25.416449>,  <45.691128, 32.429832, 25.690523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.412701, 32.344040, 25.416449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534583, 0.791887, 0.295189,
		0.479276, 0.571762, -0.665871,
		-0.696072, -0.214486, -0.685186,
		45.203880, 32.279694, 25.210894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.374504, 33.090424, 25.458368>,  <45.691128, 32.429832, 25.690523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.374504, 33.090424, 25.458368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.110523, 32.808689, 25.353777>,  <44.952137, 32.639648, 25.291021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.110523, 32.808689, 25.353777>,  <45.374504, 33.090424, 25.458368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.110523, 32.808689, 25.353777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746664, 0.576224, 0.332355,
		-0.083420, 0.414576, -0.906183,
		-0.659950, -0.704339, -0.261480,
		44.912537, 32.597389, 25.275333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.808834, 33.441143, 25.289017>,  <45.374504, 33.090424, 25.458368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.808834, 33.441143, 25.289017> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.639488, 33.081718, 25.335232>,  <44.537880, 32.866062, 25.362961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.639488, 33.081718, 25.335232>,  <44.808834, 33.441143, 25.289017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.639488, 33.081718, 25.335232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846211, 0.437761, 0.303795,
		-0.323556, 0.030848, -0.945706,
		-0.423365, -0.898562, 0.115536,
		44.512478, 32.812149, 25.369892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.168961, 33.455685, 24.917761>,  <44.808834, 33.441143, 25.289017>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.168961, 33.455685, 24.917761> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.163807, 33.192764, 25.219168>,  <44.160713, 33.035011, 25.400013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.163807, 33.192764, 25.219168>,  <44.168961, 33.455685, 24.917761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.163807, 33.192764, 25.219168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805589, 0.453233, 0.381585,
		-0.592335, -0.602111, -0.535352,
		-0.012883, -0.657300, 0.753519,
		44.159943, 32.995575, 25.445223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.485836, 33.250793, 25.025434>,  <44.168961, 33.455685, 24.917761>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.485836, 33.250793, 25.025434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.656464, 33.164494, 25.376772>,  <43.758842, 33.112713, 25.587574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.656464, 33.164494, 25.376772>,  <43.485836, 33.250793, 25.025434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.656464, 33.164494, 25.376772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828554, 0.296196, 0.475149,
		-0.362676, -0.930440, -0.052413,
		0.426573, -0.215752, 0.878343,
		43.784435, 33.099770, 25.640274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.856907, 32.806957, 25.049179>,  <43.485836, 33.250793, 25.025434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.856907, 32.806957, 25.049179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.540428, 32.792458, 24.804983>,  <42.350540, 32.783756, 24.658466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.540428, 32.792458, 24.804983>,  <42.856907, 32.806957, 25.049179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540428, 32.792458, 24.804983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458970, -0.694921, -0.553562,
		-0.404176, -0.718172, 0.566455,
		-0.791194, -0.036250, -0.610489,
		42.303070, 32.781582, 24.621836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.703678, 32.099819, 24.969667>,  <42.856907, 32.806957, 25.049179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.703678, 32.099819, 24.969667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.536953, 32.283165, 24.655682>,  <42.436920, 32.393173, 24.467291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.536953, 32.283165, 24.655682>,  <42.703678, 32.099819, 24.969667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536953, 32.283165, 24.655682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328607, -0.729168, -0.600276,
		-0.847518, -0.508145, 0.153303,
		-0.416811, 0.458368, -0.784963,
		42.411911, 32.420677, 24.420193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278362, 31.533617, 24.571978>,  <42.703678, 32.099819, 24.969667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278362, 31.533617, 24.571978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.352783, 31.848927, 24.337368>,  <42.397434, 32.038113, 24.196602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.352783, 31.848927, 24.337368>,  <42.278362, 31.533617, 24.571978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352783, 31.848927, 24.337368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408137, -0.605012, -0.683656,
		-0.893762, -0.112190, -0.434285,
		0.186048, 0.788273, -0.586526,
		42.408596, 32.085407, 24.161409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892731, 31.423929, 23.868650>,  <42.278362, 31.533617, 24.571978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892731, 31.423929, 23.868650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.207794, 31.667688, 23.832346>,  <42.396832, 31.813944, 23.810564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.207794, 31.667688, 23.832346>,  <41.892731, 31.423929, 23.868650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.207794, 31.667688, 23.832346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326025, -0.537243, -0.777867,
		-0.522789, 0.583100, -0.621840,
		0.787654, 0.609396, -0.090759,
		42.444092, 31.850508, 23.805119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.060890, 31.299747, 23.193182>,  <41.892731, 31.423929, 23.868650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.060890, 31.299747, 23.193182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.379276, 31.513454, 23.307018>,  <42.570309, 31.641680, 23.375320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.379276, 31.513454, 23.307018>,  <42.060890, 31.299747, 23.193182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379276, 31.513454, 23.307018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498045, -0.310772, -0.809551,
		-0.344075, 0.786115, -0.513454,
		0.795967, 0.534270, 0.284591,
		42.618065, 31.673735, 23.392395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194847, 31.639215, 22.637392>,  <42.060890, 31.299747, 23.193182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194847, 31.639215, 22.637392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.523083, 31.638607, 22.865997>,  <42.720024, 31.638241, 23.003160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.523083, 31.638607, 22.865997>,  <42.194847, 31.639215, 22.637392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523083, 31.638607, 22.865997> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547060, -0.287298, -0.786248,
		0.165392, 0.957840, -0.234921,
		0.820592, -0.001523, 0.571513,
		42.769260, 31.638149, 23.037451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739197, 32.130257, 22.236164>,  <42.194847, 31.639215, 22.637392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739197, 32.130257, 22.236164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.902729, 31.890135, 22.511118>,  <43.000847, 31.746063, 22.676090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.902729, 31.890135, 22.511118>,  <42.739197, 32.130257, 22.236164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.902729, 31.890135, 22.511118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652212, -0.334653, -0.680166,
		0.638340, 0.726392, 0.254708,
		0.408828, -0.600301, 0.687384,
		43.025379, 31.710045, 22.717333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.423038, 31.967999, 21.982498>,  <42.739197, 32.130257, 22.236164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.423038, 31.967999, 21.982498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.415852, 31.652048, 22.227699>,  <43.411541, 31.462477, 22.374821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.415852, 31.652048, 22.227699>,  <43.423038, 31.967999, 21.982498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.415852, 31.652048, 22.227699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652619, -0.473745, -0.591315,
		0.757473, 0.389435, 0.523999,
		-0.017964, -0.789877, 0.613002,
		43.410461, 31.415085, 22.411600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.143009, 31.867567, 21.987484>,  <43.423038, 31.967999, 21.982498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.143009, 31.867567, 21.987484> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.947311, 31.552261, 22.136763>,  <43.829891, 31.363077, 22.226330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.947311, 31.552261, 22.136763>,  <44.143009, 31.867567, 21.987484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947311, 31.552261, 22.136763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789296, -0.582219, -0.195021,
		0.371009, 0.199148, 0.907024,
		-0.489249, -0.788265, 0.373195,
		43.800537, 31.315783, 22.248720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.653835, 31.558109, 22.272762>,  <44.143009, 31.867567, 21.987484>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.653835, 31.558109, 22.272762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.398148, 31.253935, 22.226925>,  <44.244736, 31.071430, 22.199423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.398148, 31.253935, 22.226925>,  <44.653835, 31.558109, 22.272762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.398148, 31.253935, 22.226925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737885, -0.564518, -0.369925,
		0.216613, -0.321022, 0.921967,
		-0.639221, -0.760437, -0.114596,
		44.206383, 31.025805, 22.192547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.822811, 31.002594, 22.754156>,  <44.653835, 31.558109, 22.272762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.822811, 31.002594, 22.754156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.619690, 30.840437, 22.450106>,  <44.497818, 30.743143, 22.267675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.619690, 30.840437, 22.450106>,  <44.822811, 31.002594, 22.754156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619690, 30.840437, 22.450106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749603, -0.642760, -0.157974,
		-0.424537, -0.650013, 0.630280,
		-0.507803, -0.405393, -0.760126,
		44.467350, 30.718819, 22.222067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.965805, 30.261415, 22.782860>,  <44.822811, 31.002594, 22.754156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.965805, 30.261415, 22.782860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.841480, 30.269718, 22.402761>,  <44.766884, 30.274700, 22.174704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.841480, 30.269718, 22.402761>,  <44.965805, 30.261415, 22.782860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.841480, 30.269718, 22.402761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547089, -0.813631, -0.196718,
		-0.777232, -0.581011, 0.241530,
		-0.310812, 0.020757, -0.950245,
		44.748238, 30.275946, 22.117687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.832161, 29.604961, 22.680746>,  <44.965805, 30.261415, 22.782860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.832161, 29.604961, 22.680746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.875084, 29.735023, 22.304924>,  <44.900837, 29.813061, 22.079432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.875084, 29.735023, 22.304924>,  <44.832161, 29.604961, 22.680746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.875084, 29.735023, 22.304924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539852, -0.812619, -0.219566,
		-0.834892, -0.483658, -0.262737,
		0.107310, 0.325153, -0.939553,
		44.907276, 29.832569, 22.023058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.837906, 28.859653, 22.929869>,  <44.832161, 29.604961, 22.680746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.837906, 28.859653, 22.929869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.493900, 28.669720, 22.855131>,  <44.287498, 28.555759, 22.810289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.493900, 28.669720, 22.855131>,  <44.837906, 28.859653, 22.929869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.493900, 28.669720, 22.855131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448716, 0.529397, 0.719995,
		-0.242964, 0.703044, -0.668354,
		-0.860013, -0.474834, -0.186842,
		44.235897, 28.527269, 22.799078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272377, 29.311506, 23.079948>,  <44.837906, 28.859653, 22.929869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272377, 29.311506, 23.079948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.093250, 28.954578, 23.102665>,  <43.985775, 28.740421, 23.116295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.093250, 28.954578, 23.102665>,  <44.272377, 29.311506, 23.079948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.093250, 28.954578, 23.102665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572520, 0.334955, 0.748349,
		-0.686788, 0.302611, -0.660870,
		-0.447820, -0.892318, 0.056792,
		43.958904, 28.686882, 23.119703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.528339, 29.404486, 23.225819>,  <44.272377, 29.311506, 23.079948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.528339, 29.404486, 23.225819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.613106, 29.029114, 23.334957>,  <43.663967, 28.803890, 23.400440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.613106, 29.029114, 23.334957>,  <43.528339, 29.404486, 23.225819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613106, 29.029114, 23.334957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379644, 0.178211, 0.907806,
		-0.900535, -0.295961, -0.318504,
		0.211914, -0.938429, 0.272845,
		43.676682, 28.747585, 23.416811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975277, 29.166477, 23.532356>,  <43.528339, 29.404486, 23.225819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975277, 29.166477, 23.532356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.245632, 28.900524, 23.659550>,  <43.407845, 28.740953, 23.735867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.245632, 28.900524, 23.659550>,  <42.975277, 29.166477, 23.532356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245632, 28.900524, 23.659550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464248, -0.048986, 0.884349,
		-0.572412, -0.745340, -0.341779,
		0.675884, -0.664883, 0.317983,
		43.448399, 28.701059, 23.754944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.552563, 28.660984, 23.776331>,  <42.975277, 29.166477, 23.532356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.552563, 28.660984, 23.776331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.915352, 28.609955, 23.936892>,  <43.133026, 28.579338, 24.033228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.915352, 28.609955, 23.936892>,  <42.552563, 28.660984, 23.776331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.915352, 28.609955, 23.936892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413886, -0.093252, 0.905540,
		-0.078089, -0.987436, -0.137377,
		0.906973, -0.127571, 0.401404,
		43.187443, 28.571684, 24.057312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566914, 28.014114, 24.321667>,  <42.552563, 28.660984, 23.776331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566914, 28.014114, 24.321667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.857082, 28.277857, 24.400667>,  <43.031185, 28.436102, 24.448067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.857082, 28.277857, 24.400667>,  <42.566914, 28.014114, 24.321667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857082, 28.277857, 24.400667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257544, -0.006075, 0.966248,
		0.638301, -0.751806, 0.165406,
		0.725426, 0.659356, 0.197501,
		43.074711, 28.475664, 24.459917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.631123, 27.948708, 25.036545>,  <42.566914, 28.014114, 24.321667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.631123, 27.948708, 25.036545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.829521, 28.290773, 24.976299>,  <42.948559, 28.496014, 24.940153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.829521, 28.290773, 24.976299>,  <42.631123, 27.948708, 25.036545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829521, 28.290773, 24.976299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345524, 0.353501, 0.869281,
		0.796621, -0.379117, 0.470814,
		0.495992, 0.855165, -0.150613,
		42.978317, 28.547323, 24.931116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.985783, 28.057753, 25.671471>,  <42.631123, 27.948708, 25.036545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.985783, 28.057753, 25.671471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.930309, 28.406450, 25.483501>,  <42.897026, 28.615669, 25.370720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.930309, 28.406450, 25.483501>,  <42.985783, 28.057753, 25.671471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930309, 28.406450, 25.483501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544393, 0.329277, 0.771500,
		0.827286, 0.362818, 0.428907,
		-0.138686, 0.871745, -0.469922,
		42.888702, 28.667974, 25.342525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578030, 28.174805, 26.127834>,  <42.985783, 28.057753, 25.671471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578030, 28.174805, 26.127834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.682705, 27.919115, 26.417084>,  <43.745510, 27.765701, 26.590633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.682705, 27.919115, 26.417084>,  <43.578030, 28.174805, 26.127834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682705, 27.919115, 26.417084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705992, -0.384091, -0.595020,
		0.658098, 0.666232, 0.350775,
		0.261692, -0.639225, 0.723124,
		43.761211, 27.727348, 26.634022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.420410, 28.234062, 26.241838>,  <43.578030, 28.174805, 26.127834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.420410, 28.234062, 26.241838> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.303787, 27.888660, 26.406452>,  <44.233814, 27.681419, 26.505220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.303787, 27.888660, 26.406452>,  <44.420410, 28.234062, 26.241838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.303787, 27.888660, 26.406452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763849, -0.469140, -0.443218,
		0.575786, 0.185127, 0.796366,
		-0.291555, -0.863502, 0.411533,
		44.216320, 27.629610, 26.529913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.956928, 28.026232, 26.646006>,  <44.420410, 28.234062, 26.241838>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.956928, 28.026232, 26.646006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.736919, 27.696684, 26.591290>,  <44.604912, 27.498955, 26.558460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.736919, 27.696684, 26.591290>,  <44.956928, 28.026232, 26.646006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.736919, 27.696684, 26.591290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749216, -0.414401, -0.516670,
		0.368981, -0.386668, 0.845187,
		-0.550026, -0.823869, -0.136791,
		44.571911, 27.449524, 26.550253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.435860, 27.514996, 26.812233>,  <44.956928, 28.026232, 26.646006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.435860, 27.514996, 26.812233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.148396, 27.358076, 26.582579>,  <44.975918, 27.263924, 26.444786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.148396, 27.358076, 26.582579>,  <45.435860, 27.514996, 26.812233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.148396, 27.358076, 26.582579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691361, -0.491563, -0.529515,
		-0.074493, -0.777474, 0.624487,
		-0.718659, -0.392301, -0.574134,
		44.932796, 27.240385, 26.410339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.616322, 26.855537, 26.807262>,  <45.435860, 27.514996, 26.812233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.616322, 26.855537, 26.807262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.372513, 26.905600, 26.494131>,  <45.226227, 26.935637, 26.306253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.372513, 26.905600, 26.494131>,  <45.616322, 26.855537, 26.807262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372513, 26.905600, 26.494131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614073, -0.549994, -0.566058,
		-0.501393, -0.825739, 0.258382,
		-0.609525, 0.125152, -0.782826,
		45.189655, 26.943146, 26.259283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.560581, 26.248713, 26.504131>,  <45.616322, 26.855537, 26.807262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.560581, 26.248713, 26.504131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.461254, 26.503086, 26.211851>,  <45.401657, 26.655710, 26.036482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.461254, 26.503086, 26.211851>,  <45.560581, 26.248713, 26.504131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.461254, 26.503086, 26.211851> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721399, -0.382013, -0.577625,
		-0.646469, -0.670563, -0.363902,
		-0.248319, 0.635934, -0.730702,
		45.386757, 26.693867, 25.992641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.562519, 25.841639, 25.881121>,  <45.560581, 26.248713, 26.504131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.562519, 25.841639, 25.881121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.608215, 26.210894, 25.734282>,  <45.635635, 26.432447, 25.646177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.608215, 26.210894, 25.734282>,  <45.562519, 25.841639, 25.881121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.608215, 26.210894, 25.734282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661615, -0.346350, -0.665062,
		-0.741090, -0.166898, -0.650331,
		0.114245, 0.923140, -0.367099,
		45.642490, 26.487835, 25.624151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.561134, 25.721113, 25.208496>,  <45.562519, 25.841639, 25.881121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.561134, 25.721113, 25.208496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.734547, 26.076090, 25.271111>,  <45.838593, 26.289076, 25.308680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.734547, 26.076090, 25.271111>,  <45.561134, 25.721113, 25.208496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.734547, 26.076090, 25.271111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683727, -0.210780, -0.698634,
		-0.587001, 0.409904, -0.698146,
		0.433528, 0.887440, 0.156535,
		45.864605, 26.342321, 25.318071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.655106, 26.023216, 24.535202>,  <45.561134, 25.721113, 25.208496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.655106, 26.023216, 24.535202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.900444, 26.208378, 24.791180>,  <46.047646, 26.319475, 24.944767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.900444, 26.208378, 24.791180>,  <45.655106, 26.023216, 24.535202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.900444, 26.208378, 24.791180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770608, -0.173128, -0.613343,
		-0.173128, 0.869337, -0.462905,
		0.613343, 0.462905, 0.639945,
		46.084446, 26.347250, 24.983164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.660130, 35.294300, 35.219707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.028908, 35.446728, 35.247410>,  <38.250175, 35.538185, 35.264030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.028908, 35.446728, 35.247410>,  <37.660130, 35.294300, 35.219707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028908, 35.446728, 35.247410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260128, -0.476734, -0.839678,
		-0.286959, 0.792155, -0.538651,
		0.921948, 0.381071, 0.069259,
		38.305492, 35.561050, 35.268188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842434, 35.258511, 34.541454>,  <37.660130, 35.294300, 35.219707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842434, 35.258511, 34.541454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.197807, 35.306458, 34.718685>,  <38.411030, 35.335228, 34.825024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.197807, 35.306458, 34.718685>,  <37.842434, 35.258511, 34.541454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.197807, 35.306458, 34.718685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409412, -0.643382, -0.646870,
		0.207526, 0.756102, -0.620679,
		0.888434, 0.119871, 0.443075,
		38.464336, 35.342419, 34.851608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356304, 35.506584, 34.038490>,  <37.842434, 35.258511, 34.541454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356304, 35.506584, 34.038490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.575809, 35.334225, 34.325035>,  <38.707512, 35.230808, 34.496964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.575809, 35.334225, 34.325035>,  <38.356304, 35.506584, 34.038490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575809, 35.334225, 34.325035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481860, -0.537202, -0.692261,
		0.683130, 0.725077, -0.087164,
		0.548767, -0.430903, 0.716364,
		38.740440, 35.204952, 34.539944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960464, 35.379925, 33.675102>,  <38.356304, 35.506584, 34.038490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960464, 35.379925, 33.675102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.979710, 35.151886, 34.003166>,  <38.991257, 35.015060, 34.200005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.979710, 35.151886, 34.003166>,  <38.960464, 35.379925, 33.675102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979710, 35.151886, 34.003166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418070, -0.734236, -0.534897,
		0.907140, 0.368621, 0.203016,
		0.048113, -0.570101, 0.820164,
		38.994144, 34.980854, 34.249214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680511, 35.218018, 33.804779>,  <38.960464, 35.379925, 33.675102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680511, 35.218018, 33.804779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.477890, 34.919861, 33.978123>,  <39.356319, 34.740967, 34.082127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.477890, 34.919861, 33.978123>,  <39.680511, 35.218018, 33.804779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.477890, 34.919861, 33.978123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388787, -0.646079, -0.656830,
		0.769579, -0.164234, 0.617070,
		-0.506550, -0.745392, 0.433357,
		39.325924, 34.696243, 34.108131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102516, 34.725468, 33.745525>,  <39.680511, 35.218018, 33.804779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102516, 34.725468, 33.745525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.775238, 34.509163, 33.823643>,  <39.578873, 34.379379, 33.870514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.775238, 34.509163, 33.823643>,  <40.102516, 34.725468, 33.745525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775238, 34.509163, 33.823643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334126, -0.723641, -0.603907,
		0.467889, -0.428861, 0.772760,
		-0.818193, -0.540760, 0.195290,
		39.529781, 34.346935, 33.882229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.326214, 34.073959, 33.970779>,  <40.102516, 34.725468, 33.745525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.326214, 34.073959, 33.970779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.944450, 34.015972, 33.866398>,  <39.715393, 33.981182, 33.803768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.944450, 34.015972, 33.866398>,  <40.326214, 34.073959, 33.970779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.944450, 34.015972, 33.866398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267755, -0.802212, -0.533631,
		-0.131984, -0.579172, 0.804450,
		-0.954404, -0.144965, -0.260955,
		39.658131, 33.972481, 33.788113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099785, 33.358101, 34.193027>,  <40.326214, 34.073959, 33.970779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099785, 33.358101, 34.193027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.845100, 33.468693, 33.905094>,  <39.692287, 33.535046, 33.732334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.845100, 33.468693, 33.905094>,  <40.099785, 33.358101, 34.193027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845100, 33.468693, 33.905094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135316, -0.878962, -0.457291,
		-0.759134, -0.388568, 0.522236,
		-0.636715, 0.276478, -0.719829,
		39.654087, 33.551636, 33.689144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.634636, 32.738949, 34.072903>,  <40.099785, 33.358101, 34.193027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.634636, 32.738949, 34.072903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.592159, 32.968460, 33.748062>,  <39.566673, 33.106167, 33.553158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.592159, 32.968460, 33.748062>,  <39.634636, 32.738949, 34.072903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592159, 32.968460, 33.748062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135061, -0.800823, -0.583473,
		-0.985131, -0.171641, 0.007543,
		-0.106188, 0.573779, -0.812097,
		39.560303, 33.140594, 33.504433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051144, 32.442631, 33.669331>,  <39.634636, 32.738949, 34.072903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051144, 32.442631, 33.669331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.284309, 32.652283, 33.420975>,  <39.424210, 32.778072, 33.271961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.284309, 32.652283, 33.420975>,  <39.051144, 32.442631, 33.669331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.284309, 32.652283, 33.420975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168647, -0.669455, -0.723456,
		-0.794842, 0.526421, -0.301839,
		0.582910, 0.524129, -0.620890,
		39.459183, 32.809521, 33.234707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616653, 32.413174, 33.026379>,  <39.051144, 32.442631, 33.669331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616653, 32.413174, 33.026379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.980980, 32.521717, 32.901947>,  <39.199577, 32.586845, 32.827290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.980980, 32.521717, 32.901947>,  <38.616653, 32.413174, 33.026379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980980, 32.521717, 32.901947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049944, -0.820478, -0.569492,
		-0.409772, 0.503168, -0.760861,
		0.910820, 0.271362, -0.311078,
		39.254227, 32.603127, 32.808624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600513, 32.327404, 32.356148>,  <38.616653, 32.413174, 33.026379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600513, 32.327404, 32.356148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.991550, 32.351147, 32.436939>,  <39.226173, 32.365391, 32.485413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.991550, 32.351147, 32.436939>,  <38.600513, 32.327404, 32.356148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.991550, 32.351147, 32.436939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162701, -0.821848, -0.545980,
		0.133591, 0.566607, -0.813087,
		0.977590, 0.059353, 0.201979,
		39.284828, 32.368954, 32.497532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266445, 32.854771, 31.937374>,  <38.600513, 32.327404, 32.356148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266445, 32.854771, 31.937374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.031776, 32.715794, 31.644773>,  <37.890976, 32.632408, 31.469213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.031776, 32.715794, 31.644773>,  <38.266445, 32.854771, 31.937374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031776, 32.715794, 31.644773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734846, 0.607991, 0.300580,
		0.340314, 0.713885, -0.612008,
		-0.586675, -0.347440, -0.731504,
		37.855774, 32.611561, 31.425322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951576, 33.523491, 31.707037>,  <38.266445, 32.854771, 31.937374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951576, 33.523491, 31.707037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.737282, 33.202518, 31.601891>,  <37.608707, 33.009937, 31.538803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.737282, 33.202518, 31.601891>,  <37.951576, 33.523491, 31.707037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737282, 33.202518, 31.601891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840141, 0.475374, 0.261117,
		-0.084569, 0.360732, -0.928827,
		-0.535734, -0.802428, -0.262864,
		37.576561, 32.961788, 31.523031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433773, 33.787144, 31.219387>,  <37.951576, 33.523491, 31.707037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433773, 33.787144, 31.219387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.295868, 33.437000, 31.354971>,  <37.213127, 33.226913, 31.436321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.295868, 33.437000, 31.354971>,  <37.433773, 33.787144, 31.219387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295868, 33.437000, 31.354971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871760, 0.432483, 0.230202,
		-0.348103, -0.216128, -0.912202,
		-0.344759, -0.875356, 0.338960,
		37.192440, 33.174393, 31.456659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.754036, 33.775921, 30.943848>,  <37.433773, 33.787144, 31.219387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.754036, 33.775921, 30.943848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.745949, 33.488899, 31.222334>,  <36.741096, 33.316689, 31.389425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.745949, 33.488899, 31.222334>,  <36.754036, 33.775921, 30.943848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745949, 33.488899, 31.222334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961966, 0.203703, 0.182007,
		-0.272420, -0.666054, -0.694378,
		-0.020220, -0.717550, 0.696214,
		36.739883, 33.273636, 31.431198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304848, 33.374874, 30.849092>,  <36.754036, 33.775921, 30.943848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304848, 33.374874, 30.849092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.328892, 33.287636, 31.238722>,  <36.343319, 33.235294, 31.472500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.328892, 33.287636, 31.238722>,  <36.304848, 33.374874, 30.849092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328892, 33.287636, 31.238722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964564, 0.238466, 0.112914,
		-0.256910, -0.946344, -0.196035,
		0.060108, -0.218097, 0.974074,
		36.346924, 33.222206, 31.530945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.782192, 32.943424, 31.054190>,  <36.304848, 33.374874, 30.849092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.782192, 32.943424, 31.054190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.889893, 33.123848, 31.394556>,  <35.954514, 33.232101, 31.598776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.889893, 33.123848, 31.394556>,  <35.782192, 32.943424, 31.054190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889893, 33.123848, 31.394556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960119, 0.194843, 0.200518,
		-0.075350, -0.870967, 0.485529,
		0.269246, 0.451056, 0.850914,
		35.970665, 33.259167, 31.649830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345592, 32.667332, 31.714397>,  <35.782192, 32.943424, 31.054190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345592, 32.667332, 31.714397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.488350, 33.027157, 31.815125>,  <35.574005, 33.243053, 31.875561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.488350, 33.027157, 31.815125>,  <35.345592, 32.667332, 31.714397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488350, 33.027157, 31.815125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918984, 0.289741, 0.267431,
		0.167610, -0.326861, 0.930091,
		0.356898, 0.899562, 0.251816,
		35.595421, 33.297024, 31.890669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999729, 32.778564, 32.324120>,  <35.345592, 32.667332, 31.714397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999729, 32.778564, 32.324120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121330, 33.145298, 32.220577>,  <35.194290, 33.365337, 32.158451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.121330, 33.145298, 32.220577>,  <34.999729, 32.778564, 32.324120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121330, 33.145298, 32.220577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891702, 0.369481, 0.261442,
		0.335340, 0.151342, 0.929862,
		0.303999, 0.916831, -0.258854,
		35.212528, 33.420349, 32.142921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774593, 33.228958, 32.841324>,  <34.999729, 32.778564, 32.324120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774593, 33.228958, 32.841324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.832844, 33.456959, 32.517868>,  <34.867794, 33.593758, 32.323795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.832844, 33.456959, 32.517868>,  <34.774593, 33.228958, 32.841324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832844, 33.456959, 32.517868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859677, 0.477425, 0.181715,
		0.489641, 0.668705, 0.559541,
		0.145625, 0.569999, -0.808637,
		34.876530, 33.627960, 32.275276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510784, 33.807442, 33.054276>,  <34.774593, 33.228958, 32.841324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510784, 33.807442, 33.054276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518852, 33.842701, 32.655914>,  <34.523693, 33.863857, 32.416897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518852, 33.842701, 32.655914>,  <34.510784, 33.807442, 33.054276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518852, 33.842701, 32.655914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904107, 0.426862, 0.019473,
		0.426830, 0.900012, 0.088290,
		0.020162, 0.088135, -0.995905,
		34.524902, 33.869144, 32.357143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165741, 34.416943, 32.914570>,  <34.510784, 33.807442, 33.054276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165741, 34.416943, 32.914570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.166607, 34.252842, 32.549782>,  <34.167126, 34.154381, 32.330910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.166607, 34.252842, 32.549782>,  <34.165741, 34.416943, 32.914570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166607, 34.252842, 32.549782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932021, 0.329667, -0.150516,
		0.362396, 0.850301, -0.381650,
		0.002166, -0.410252, -0.911969,
		34.167255, 34.129765, 32.276192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917973, 35.003231, 32.515568>,  <34.165741, 34.416943, 32.914570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917973, 35.003231, 32.515568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.829964, 34.671227, 32.310562>,  <33.777157, 34.472023, 32.187561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.829964, 34.671227, 32.310562>,  <33.917973, 35.003231, 32.515568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829964, 34.671227, 32.310562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870158, 0.404469, -0.281477,
		0.440925, 0.384035, -0.811235,
		-0.220022, -0.830013, -0.512512,
		33.763958, 34.422222, 32.156811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640038, 35.295780, 31.937885>,  <33.917973, 35.003231, 32.515568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640038, 35.295780, 31.937885> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.487278, 34.926586, 31.956890>,  <33.395622, 34.705070, 31.968292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.487278, 34.926586, 31.956890>,  <33.640038, 35.295780, 31.937885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487278, 34.926586, 31.956890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917468, 0.372418, -0.139848,
		0.111383, -0.096998, -0.989032,
		-0.381899, -0.922982, 0.047511,
		33.372707, 34.649693, 31.971144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158604, 35.212757, 31.406799>,  <33.640038, 35.295780, 31.937885>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158604, 35.212757, 31.406799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.039757, 34.920582, 31.652786>,  <32.968449, 34.745277, 31.800379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.039757, 34.920582, 31.652786>,  <33.158604, 35.212757, 31.406799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039757, 34.920582, 31.652786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954613, 0.213153, -0.208037,
		0.020875, -0.648868, -0.760614,
		-0.297116, -0.730435, 0.614968,
		32.950623, 34.701450, 31.837276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907211, 34.957829, 31.152519>,  <33.158604, 35.212757, 31.406799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907211, 34.957829, 31.152519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.937092, 35.337872, 31.031385>,  <33.955021, 35.565899, 30.958704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.937092, 35.337872, 31.031385>,  <33.907211, 34.957829, 31.152519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937092, 35.337872, 31.031385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490098, -0.299457, -0.818615,
		-0.868461, -0.087269, -0.488016,
		0.074700, 0.950111, -0.302837,
		33.959503, 35.622906, 30.940535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777065, 35.068756, 30.444273>,  <33.907211, 34.957829, 31.152519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777065, 35.068756, 30.444273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033131, 35.367149, 30.517712>,  <34.186771, 35.546185, 30.561775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.033131, 35.367149, 30.517712>,  <33.777065, 35.068756, 30.444273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033131, 35.367149, 30.517712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456665, -0.177331, -0.871786,
		-0.617777, 0.641927, -0.454183,
		0.640163, 0.745979, 0.183595,
		34.225178, 35.590942, 30.572790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.911976, 35.442467, 29.789499>,  <33.777065, 35.068756, 30.444273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.911976, 35.442467, 29.789499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.217720, 35.541164, 30.027782>,  <34.401165, 35.600384, 30.170752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.217720, 35.541164, 30.027782>,  <33.911976, 35.442467, 29.789499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217720, 35.541164, 30.027782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620124, -0.028232, -0.783996,
		-0.176628, 0.968669, -0.174591,
		0.764362, 0.246744, 0.595709,
		34.447029, 35.615189, 30.206495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365540, 35.713558, 29.279293>,  <33.911976, 35.442467, 29.789499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365540, 35.713558, 29.279293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.577682, 35.647995, 29.612003>,  <34.704967, 35.608658, 29.811630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.577682, 35.647995, 29.612003>,  <34.365540, 35.713558, 29.279293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577682, 35.647995, 29.612003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791896, -0.254521, -0.555085,
		0.302687, 0.953076, -0.005192,
		0.530360, -0.163905, 0.831777,
		34.736790, 35.598824, 29.861536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922031, 36.250343, 29.258261>,  <34.365540, 35.713558, 29.279293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922031, 36.250343, 29.258261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032722, 35.952179, 29.500841>,  <35.099136, 35.773281, 29.646389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.032722, 35.952179, 29.500841>,  <34.922031, 36.250343, 29.258261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.032722, 35.952179, 29.500841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800836, -0.169911, -0.574275,
		0.531113, 0.644589, 0.549931,
		0.276732, -0.745409, 0.606452,
		35.115742, 35.728558, 29.682777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575935, 36.475533, 29.484850>,  <34.922031, 36.250343, 29.258261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575935, 36.475533, 29.484850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.545444, 36.078709, 29.524847>,  <35.527149, 35.840614, 29.548845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.545444, 36.078709, 29.524847>,  <35.575935, 36.475533, 29.484850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545444, 36.078709, 29.524847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929084, -0.107073, -0.354031,
		0.361928, 0.065914, 0.929873,
		-0.076228, -0.992064, 0.099992,
		35.522575, 35.781090, 29.554844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.084797, 36.240932, 29.864473>,  <35.575935, 36.475533, 29.484850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.084797, 36.240932, 29.864473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.967636, 35.909149, 29.674231>,  <35.897339, 35.710079, 29.560085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.967636, 35.909149, 29.674231>,  <36.084797, 36.240932, 29.864473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967636, 35.909149, 29.674231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914698, -0.098220, -0.392021,
		0.278452, -0.549861, 0.787476,
		-0.292902, -0.829461, -0.475607,
		35.879765, 35.660313, 29.531548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689510, 35.773289, 29.925043>,  <36.084797, 36.240932, 29.864473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689510, 35.773289, 29.925043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.457569, 35.635586, 29.629679>,  <36.318405, 35.552963, 29.452459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.457569, 35.635586, 29.629679>,  <36.689510, 35.773289, 29.925043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457569, 35.635586, 29.629679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799020, -0.063221, -0.597971,
		0.159175, -0.936743, 0.311731,
		-0.579854, -0.344261, -0.738413,
		36.283611, 35.532307, 29.408155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142334, 35.311825, 29.632179>,  <36.689510, 35.773289, 29.925043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142334, 35.311825, 29.632179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.863007, 35.377281, 29.353449>,  <36.695408, 35.416553, 29.186211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.863007, 35.377281, 29.353449>,  <37.142334, 35.311825, 29.632179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863007, 35.377281, 29.353449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707764, 0.012534, -0.706338,
		-0.106854, -0.986440, -0.124573,
		-0.698322, 0.163644, -0.696827,
		36.653511, 35.426373, 29.144402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266273, 34.815987, 29.075098>,  <37.142334, 35.311825, 29.632179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266273, 34.815987, 29.075098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.054947, 35.090145, 28.874649>,  <36.928150, 35.254639, 28.754379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.054947, 35.090145, 28.874649>,  <37.266273, 34.815987, 29.075098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054947, 35.090145, 28.874649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601758, -0.114113, -0.790485,
		-0.598977, -0.719177, -0.352152,
		-0.528313, 0.685392, -0.501121,
		36.896454, 35.295761, 28.724312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238041, 34.498074, 28.550045>,  <37.266273, 34.815987, 29.075098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238041, 34.498074, 28.550045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.157333, 34.874554, 28.441656>,  <37.108910, 35.100441, 28.376623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.157333, 34.874554, 28.441656>,  <37.238041, 34.498074, 28.550045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157333, 34.874554, 28.441656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624890, -0.089332, -0.775585,
		-0.754190, -0.325816, -0.570125,
		-0.201767, 0.941204, -0.270973,
		37.096802, 35.156914, 28.360365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064438, 34.493801, 27.917368>,  <37.238041, 34.498074, 28.550045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064438, 34.493801, 27.917368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.187256, 34.868244, 27.985977>,  <37.260948, 35.092911, 28.027143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.187256, 34.868244, 27.985977>,  <37.064438, 34.493801, 27.917368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187256, 34.868244, 27.985977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586273, -0.044080, -0.808913,
		-0.749671, 0.348933, -0.562351,
		0.307045, 0.936110, 0.171524,
		37.279369, 35.149078, 28.037434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153107, 34.709805, 27.274870>,  <37.064438, 34.493801, 27.917368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153107, 34.709805, 27.274870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.362099, 34.976192, 27.487850>,  <37.487492, 35.136024, 27.615639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.362099, 34.976192, 27.487850>,  <37.153107, 34.709805, 27.274870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362099, 34.976192, 27.487850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739401, -0.042896, -0.671897,
		-0.424622, 0.744747, -0.514829,
		0.522477, 0.665967, 0.532452,
		37.518841, 35.175983, 27.647585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460243, 35.196262, 26.804861>,  <37.153107, 34.709805, 27.274870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460243, 35.196262, 26.804861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.681087, 35.261570, 27.131912>,  <37.813595, 35.300755, 27.328144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.681087, 35.261570, 27.131912>,  <37.460243, 35.196262, 26.804861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681087, 35.261570, 27.131912> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829220, -0.005194, -0.558898,
		-0.087003, 0.986568, -0.138252,
		0.552109, 0.163267, 0.817630,
		37.846722, 35.310551, 27.377201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.796738, 35.726784, 26.643932>,  <37.460243, 35.196262, 26.804861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.796738, 35.726784, 26.643932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.012192, 35.555576, 26.934219>,  <38.141464, 35.452850, 27.108393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.012192, 35.555576, 26.934219>,  <37.796738, 35.726784, 26.643932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012192, 35.555576, 26.934219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808884, 0.021694, -0.587567,
		0.235748, 0.903508, 0.357905,
		0.538636, -0.428022, 0.725719,
		38.173782, 35.427170, 27.151936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517750, 36.082775, 26.630117>,  <37.796738, 35.726784, 26.643932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517750, 36.082775, 26.630117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.573708, 35.746552, 26.839457>,  <38.607285, 35.544819, 26.965059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.573708, 35.746552, 26.839457>,  <38.517750, 36.082775, 26.630117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573708, 35.746552, 26.839457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763830, -0.244717, -0.597224,
		0.630073, 0.483299, 0.607807,
		0.139897, -0.840557, 0.523348,
		38.615677, 35.494385, 26.996462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159286, 36.166946, 26.802685>,  <38.517750, 36.082775, 26.630117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159286, 36.166946, 26.802685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.057865, 35.780025, 26.800507>,  <38.997013, 35.547871, 26.799200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.057865, 35.780025, 26.800507>,  <39.159286, 36.166946, 26.802685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057865, 35.780025, 26.800507> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820977, -0.212216, -0.530058,
		0.511572, -0.138870, 0.847944,
		-0.253557, -0.967305, -0.005445,
		38.981796, 35.489834, 26.798874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769382, 35.772308, 27.128351>,  <39.159286, 36.166946, 26.802685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.769382, 35.772308, 27.128351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.578976, 35.495892, 26.910776>,  <39.464729, 35.330044, 26.780231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.578976, 35.495892, 26.910776>,  <39.769382, 35.772308, 27.128351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578976, 35.495892, 26.910776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877475, -0.331943, -0.346197,
		0.058679, -0.642089, 0.764381,
		-0.476020, -0.691040, -0.543939,
		39.436169, 35.288578, 26.747595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.207855, 35.300018, 27.102621>,  <39.769382, 35.772308, 27.128351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.207855, 35.300018, 27.102621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.943146, 35.133518, 26.853207>,  <39.784321, 35.033619, 26.703558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.943146, 35.133518, 26.853207>,  <40.207855, 35.300018, 27.102621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943146, 35.133518, 26.853207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735870, -0.519688, -0.434074,
		-0.143361, -0.746098, 0.650219,
		-0.661773, -0.416247, -0.623534,
		39.744614, 35.008644, 26.666147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317902, 34.560120, 27.120552>,  <40.207855, 35.300018, 27.102621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317902, 34.560120, 27.120552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.140526, 34.655693, 26.775003>,  <40.034100, 34.713039, 26.567675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.140526, 34.655693, 26.775003>,  <40.317902, 34.560120, 27.120552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140526, 34.655693, 26.775003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731816, -0.459960, -0.502874,
		-0.517501, -0.855187, 0.029106,
		-0.443439, 0.238937, -0.863870,
		40.007496, 34.727375, 26.515842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171291, 33.932163, 26.903414>,  <40.317902, 34.560120, 27.120552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171291, 33.932163, 26.903414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.182129, 34.188568, 26.596592>,  <40.188633, 34.342411, 26.412498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.182129, 34.188568, 26.596592>,  <40.171291, 33.932163, 26.903414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182129, 34.188568, 26.596592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623550, -0.610589, -0.488228,
		-0.781314, -0.465068, -0.416247,
		0.027096, 0.641010, -0.767054,
		40.190258, 34.380871, 26.366476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095844, 33.511070, 26.199362>,  <40.171291, 33.932163, 26.903414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095844, 33.511070, 26.199362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.267799, 33.866489, 26.135260>,  <40.370972, 34.079739, 26.096798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.267799, 33.866489, 26.135260>,  <40.095844, 33.511070, 26.199362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.267799, 33.866489, 26.135260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597373, -0.413004, -0.687440,
		-0.677007, 0.199793, -0.708340,
		0.429892, 0.888544, -0.160255,
		40.396767, 34.133053, 26.087183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073395, 33.601559, 25.499390>,  <40.095844, 33.511070, 26.199362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073395, 33.601559, 25.499390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.350712, 33.875130, 25.590240>,  <40.517101, 34.039272, 25.644751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.350712, 33.875130, 25.590240>,  <40.073395, 33.601559, 25.499390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350712, 33.875130, 25.590240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637209, -0.434560, -0.636492,
		-0.336615, 0.586003, -0.737082,
		0.693293, 0.683928, 0.227127,
		40.558701, 34.080307, 25.658379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221264, 33.891987, 24.858831>,  <40.073395, 33.601559, 25.499390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221264, 33.891987, 24.858831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.533745, 33.965633, 25.097435>,  <40.721233, 34.009819, 25.240597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.533745, 33.965633, 25.097435>,  <40.221264, 33.891987, 24.858831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533745, 33.965633, 25.097435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615789, -0.384280, -0.687847,
		0.102584, 0.904672, -0.413577,
		0.781205, 0.184114, 0.596508,
		40.768105, 34.020866, 25.276388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768723, 34.128925, 24.424156>,  <40.221264, 33.891987, 24.858831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768723, 34.128925, 24.424156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.959454, 34.021622, 24.758982>,  <41.073891, 33.957241, 24.959877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.959454, 34.021622, 24.758982>,  <40.768723, 34.128925, 24.424156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959454, 34.021622, 24.758982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713461, -0.438129, -0.546823,
		0.513432, 0.857952, -0.017519,
		0.476824, -0.268257, 0.837065,
		41.102501, 33.941143, 25.010101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440907, 34.330791, 24.360573>,  <40.768723, 34.128925, 24.424156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440907, 34.330791, 24.360573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.490818, 34.061184, 24.651812>,  <41.520763, 33.899418, 24.826555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.490818, 34.061184, 24.651812>,  <41.440907, 34.330791, 24.360573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490818, 34.061184, 24.651812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711184, -0.450939, -0.539325,
		0.691843, 0.585109, 0.423084,
		0.124779, -0.674019, 0.728099,
		41.528252, 33.858978, 24.870241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.093647, 34.221428, 24.439529>,  <41.440907, 34.330791, 24.360573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.093647, 34.221428, 24.439529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.934147, 33.892849, 24.602612>,  <41.838448, 33.695702, 24.700460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.934147, 33.892849, 24.602612>,  <42.093647, 34.221428, 24.439529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934147, 33.892849, 24.602612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683263, -0.562647, -0.465382,
		0.611681, 0.093000, 0.785619,
		-0.398746, -0.821450, 0.407704,
		41.814522, 33.646416, 24.724922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660839, 33.750736, 24.735260>,  <42.093647, 34.221428, 24.439529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660839, 33.750736, 24.735260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.351727, 33.509464, 24.656286>,  <42.166260, 33.364700, 24.608902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.351727, 33.509464, 24.656286>,  <42.660839, 33.750736, 24.735260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.351727, 33.509464, 24.656286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626145, -0.673767, -0.392404,
		0.103664, -0.426867, 0.898353,
		-0.772785, -0.603177, -0.197435,
		42.119892, 33.328510, 24.597055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922470, 33.418152, 25.451487>,  <42.660839, 33.750736, 24.735260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.922470, 33.418152, 25.451487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.198929, 33.338287, 25.729322>,  <43.364803, 33.290367, 25.896025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.198929, 33.338287, 25.729322>,  <42.922470, 33.418152, 25.451487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198929, 33.338287, 25.729322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665440, 0.199168, 0.719390,
		-0.281977, -0.959409, 0.004788,
		0.691143, -0.199666, 0.694591,
		43.406273, 33.278389, 25.937700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.647991, 32.864811, 25.938917>,  <42.922470, 33.418152, 25.451487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.647991, 32.864811, 25.938917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.936424, 33.060127, 26.135536>,  <43.109482, 33.177319, 26.253508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.936424, 33.060127, 26.135536>,  <42.647991, 32.864811, 25.938917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.936424, 33.060127, 26.135536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675930, 0.339922, 0.653890,
		0.152200, -0.803757, 0.575160,
		0.721078, 0.488290, 0.491547,
		43.152748, 33.206615, 26.283001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556580, 32.772442, 26.701326>,  <42.647991, 32.864811, 25.938917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556580, 32.772442, 26.701326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.789375, 33.094784, 26.657711>,  <42.929050, 33.288189, 26.631542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.789375, 33.094784, 26.657711>,  <42.556580, 32.772442, 26.701326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.789375, 33.094784, 26.657711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510910, 0.466663, 0.721939,
		0.632663, -0.364449, 0.683311,
		0.581986, 0.805855, -0.109040,
		42.963970, 33.336540, 26.625000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.791424, 32.832767, 27.299150>,  <42.556580, 32.772442, 26.701326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.791424, 32.832767, 27.299150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.839458, 33.195415, 27.137354>,  <42.868279, 33.413006, 27.040276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.839458, 33.195415, 27.137354>,  <42.791424, 32.832767, 27.299150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.839458, 33.195415, 27.137354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196388, 0.421085, 0.885505,
		0.973145, -0.026901, 0.228617,
		0.120088, 0.906622, -0.404494,
		42.875484, 33.467403, 27.016006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234921, 33.183109, 27.812859>,  <42.791424, 32.832767, 27.299150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234921, 33.183109, 27.812859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.018330, 33.441994, 27.598227>,  <42.888374, 33.597324, 27.469448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.018330, 33.441994, 27.598227>,  <43.234921, 33.183109, 27.812859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.018330, 33.441994, 27.598227> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336984, 0.417643, 0.843811,
		0.770221, 0.637726, -0.008047,
		-0.541481, 0.647209, -0.536581,
		42.855885, 33.636158, 27.437252>
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
