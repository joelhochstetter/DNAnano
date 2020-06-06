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
	<23.976631, 34.742233, 34.794121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.249784, 34.938393, 35.010708>,  <24.413677, 35.056087, 35.140659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.249784, 34.938393, 35.010708>,  <23.976631, 34.742233, 34.794121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.249784, 34.938393, 35.010708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609035, 0.027134, -0.792679,
		-0.403418, 0.871078, -0.280137,
		0.682884, 0.490394, 0.541463,
		24.454649, 35.085510, 35.173145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.160105, 35.242599, 34.337898>,  <23.976631, 34.742233, 34.794121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.160105, 35.242599, 34.337898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.467905, 35.196159, 34.589100>,  <24.652584, 35.168297, 34.739822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.467905, 35.196159, 34.589100>,  <24.160105, 35.242599, 34.337898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.467905, 35.196159, 34.589100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630380, -0.019628, -0.776038,
		0.102423, 0.993044, 0.058083,
		0.769500, -0.116098, 0.628006,
		24.698755, 35.161331, 34.777500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.585560, 35.743980, 34.154747>,  <24.160105, 35.242599, 34.337898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.585560, 35.743980, 34.154747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.786425, 35.457172, 34.348122>,  <24.906944, 35.285088, 34.464146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.786425, 35.457172, 34.348122>,  <24.585560, 35.743980, 34.154747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.786425, 35.457172, 34.348122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740617, 0.067977, -0.668480,
		0.446451, 0.693730, 0.565172,
		0.502164, -0.717020, 0.483440,
		24.937075, 35.242065, 34.493153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.291891, 35.956585, 34.260830>,  <24.585560, 35.743980, 34.154747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.291891, 35.956585, 34.260830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.282051, 35.557144, 34.242142>,  <25.276148, 35.317478, 34.230927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.282051, 35.557144, 34.242142>,  <25.291891, 35.956585, 34.260830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.282051, 35.557144, 34.242142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719516, 0.014763, -0.694319,
		0.694040, -0.050699, 0.718149,
		-0.024599, -0.998605, -0.046725,
		25.274672, 35.257565, 34.228123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.927393, 35.649620, 34.621983>,  <25.291891, 35.956585, 34.260830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.927393, 35.649620, 34.621983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789034, 35.452454, 34.302635>,  <25.706018, 35.334152, 34.111027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789034, 35.452454, 34.302635>,  <25.927393, 35.649620, 34.621983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789034, 35.452454, 34.302635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713465, 0.414433, -0.564989,
		0.609362, -0.765033, 0.208330,
		-0.345897, -0.492919, -0.798365,
		25.685265, 35.304577, 34.063126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.540390, 35.567848, 34.219482>,  <25.927393, 35.649620, 34.621983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.540390, 35.567848, 34.219482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231857, 35.500648, 33.973938>,  <26.046738, 35.460331, 33.826611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231857, 35.500648, 33.973938>,  <26.540390, 35.567848, 34.219482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231857, 35.500648, 33.973938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501190, 0.434113, -0.748569,
		0.392237, -0.885056, -0.250651,
		-0.771336, -0.167992, -0.613856,
		26.000458, 35.450249, 33.789780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.653379, 35.021702, 33.679188>,  <26.540390, 35.567848, 34.219482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.653379, 35.021702, 33.679188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418331, 35.327225, 33.572376>,  <26.277302, 35.510536, 33.508289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418331, 35.327225, 33.572376>,  <26.653379, 35.021702, 33.679188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.418331, 35.327225, 33.572376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737083, 0.369170, -0.566058,
		-0.333778, -0.529450, -0.779920,
		-0.587623, 0.763804, -0.267028,
		26.242044, 35.556366, 33.492268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.310064, 34.793365, 33.303490>,  <26.653379, 35.021702, 33.679188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.310064, 34.793365, 33.303490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.454559, 34.803982, 32.930653>,  <27.541256, 34.810352, 32.706951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.454559, 34.803982, 32.930653>,  <27.310064, 34.793365, 33.303490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454559, 34.803982, 32.930653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095261, 0.993314, 0.065207,
		0.927596, -0.112348, 0.356292,
		0.361236, 0.026545, -0.932096,
		27.562929, 34.811947, 32.651024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.921555, 35.248028, 33.263996>,  <27.310064, 34.793365, 33.303490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.921555, 35.248028, 33.263996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792431, 35.250469, 32.885418>,  <27.714958, 35.251934, 32.658272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.792431, 35.250469, 32.885418>,  <27.921555, 35.248028, 33.263996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.792431, 35.250469, 32.885418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218304, 0.973496, -0.068177,
		0.920945, -0.228621, -0.315584,
		-0.322807, 0.006106, -0.946445,
		27.695589, 35.252300, 32.601486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414534, 35.607178, 32.914829>,  <27.921555, 35.248028, 33.263996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414534, 35.607178, 32.914829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093348, 35.630169, 32.677528>,  <27.900637, 35.643963, 32.535149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.093348, 35.630169, 32.677528>,  <28.414534, 35.607178, 32.914829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093348, 35.630169, 32.677528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165306, 0.977769, -0.129003,
		0.572646, -0.201653, -0.794615,
		-0.802963, 0.057481, -0.593250,
		27.852459, 35.647415, 32.499554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601498, 35.990349, 32.323853>,  <28.414534, 35.607178, 32.914829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601498, 35.990349, 32.323853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202946, 36.001637, 32.291771>,  <27.963814, 36.008408, 32.272522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.202946, 36.001637, 32.291771>,  <28.601498, 35.990349, 32.323853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.202946, 36.001637, 32.291771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035911, 0.994715, -0.096191,
		0.077066, -0.098723, -0.992126,
		-0.996379, 0.028215, -0.080204,
		27.904032, 36.010101, 32.267708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285343, 36.470055, 31.756954>,  <28.601498, 35.990349, 32.323853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285343, 36.470055, 31.756954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052034, 36.429581, 32.079334>,  <27.912048, 36.405296, 32.272762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052034, 36.429581, 32.079334>,  <28.285343, 36.470055, 31.756954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052034, 36.429581, 32.079334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113034, 0.972446, 0.203892,
		-0.804373, 0.210024, -0.555765,
		-0.583273, -0.101185, 0.805949,
		27.877052, 36.399223, 32.321117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.854507, 37.068760, 31.627771>,  <28.285343, 36.470055, 31.756954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.854507, 37.068760, 31.627771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851500, 36.953545, 32.010807>,  <27.849695, 36.884415, 32.240627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.851500, 36.953545, 32.010807>,  <27.854507, 37.068760, 31.627771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.851500, 36.953545, 32.010807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211086, 0.936496, 0.280031,
		-0.977439, -0.200028, -0.067843,
		-0.007520, -0.288034, 0.957591,
		27.849243, 36.867134, 32.298084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243931, 37.296185, 31.949793>,  <27.854507, 37.068760, 31.627771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243931, 37.296185, 31.949793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535383, 37.244850, 32.218903>,  <27.710255, 37.214050, 32.380367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.535383, 37.244850, 32.218903>,  <27.243931, 37.296185, 31.949793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.535383, 37.244850, 32.218903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248097, 0.866122, 0.433914,
		-0.638394, -0.483076, 0.599242,
		0.728630, -0.128338, 0.672776,
		27.753973, 37.206348, 32.420734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972300, 37.382687, 32.690186>,  <27.243931, 37.296185, 31.949793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972300, 37.382687, 32.690186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343327, 37.523163, 32.639141>,  <27.565943, 37.607449, 32.608513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.343327, 37.523163, 32.639141>,  <26.972300, 37.382687, 32.690186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.343327, 37.523163, 32.639141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296903, 0.900070, 0.318938,
		0.226867, -0.257949, 0.939145,
		0.927567, 0.351192, -0.127610,
		27.621597, 37.628521, 32.600857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839758, 36.649380, 32.457474>,  <26.972300, 37.382687, 32.690186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839758, 36.649380, 32.457474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188393, 36.535397, 32.297905>,  <27.397573, 36.467007, 32.202164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.188393, 36.535397, 32.297905>,  <26.839758, 36.649380, 32.457474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.188393, 36.535397, 32.297905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254843, -0.958489, 0.127882,
		-0.418803, -0.009798, -0.908024,
		0.871585, -0.284961, -0.398921,
		27.449867, 36.449909, 32.178230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608953, 36.033241, 32.183193>,  <26.839758, 36.649380, 32.457474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608953, 36.033241, 32.183193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007198, 36.037308, 32.220398>,  <27.246145, 36.039749, 32.242722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007198, 36.037308, 32.220398>,  <26.608953, 36.033241, 32.183193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007198, 36.037308, 32.220398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001339, -0.992425, 0.122848,
		0.093556, -0.122433, -0.988057,
		0.995613, 0.010170, 0.093011,
		27.305882, 36.040359, 32.248302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.900291, 35.604008, 31.646065>,  <26.608953, 36.033241, 32.183193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.900291, 35.604008, 31.646065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174911, 35.609962, 31.936836>,  <27.339684, 35.613537, 32.111298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174911, 35.609962, 31.936836>,  <26.900291, 35.604008, 31.646065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.174911, 35.609962, 31.936836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114817, -0.989466, -0.088173,
		0.717958, 0.143999, -0.681030,
		0.686552, 0.014889, 0.726928,
		27.380877, 35.614429, 32.154915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475142, 35.335590, 31.290539>,  <26.900291, 35.604008, 31.646065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475142, 35.335590, 31.290539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514742, 35.303749, 31.687298>,  <27.538502, 35.284645, 31.925354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514742, 35.303749, 31.687298>,  <27.475142, 35.335590, 31.290539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514742, 35.303749, 31.687298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145920, -0.984858, -0.093605,
		0.984330, 0.154005, -0.085884,
		0.098999, -0.079606, 0.991898,
		27.544441, 35.279869, 31.984867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919394, 34.864033, 31.272562>,  <27.475142, 35.335590, 31.290539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919394, 34.864033, 31.272562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781326, 34.855068, 31.647871>,  <27.698486, 34.849689, 31.873056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.781326, 34.855068, 31.647871>,  <27.919394, 34.864033, 31.272562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781326, 34.855068, 31.647871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231102, -0.970963, 0.061824,
		0.909643, 0.238177, 0.340325,
		-0.345168, -0.022412, 0.938273,
		27.677776, 34.848343, 31.929354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352734, 34.503601, 31.760199>,  <27.919394, 34.864033, 31.272562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352734, 34.503601, 31.760199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005701, 34.483273, 31.958075>,  <27.797482, 34.471077, 32.076801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.005701, 34.483273, 31.958075>,  <28.352734, 34.503601, 31.760199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.005701, 34.483273, 31.958075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118179, -0.987336, 0.105836,
		0.483047, 0.150283, 0.862601,
		-0.867582, -0.050818, 0.494690,
		27.745426, 34.468029, 32.106480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.438427, 34.070976, 32.399582>,  <28.352734, 34.503601, 31.760199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.438427, 34.070976, 32.399582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057398, 34.078602, 32.278099>,  <27.828781, 34.083176, 32.205208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.057398, 34.078602, 32.278099>,  <28.438427, 34.070976, 32.399582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057398, 34.078602, 32.278099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102303, -0.960006, 0.260621,
		-0.286596, 0.279331, 0.916426,
		-0.952574, 0.019060, -0.303711,
		27.771626, 34.084320, 32.186985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965511, 33.738575, 32.885231>,  <28.438427, 34.070976, 32.399582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965511, 33.738575, 32.885231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761126, 33.705269, 32.543007>,  <27.638494, 33.685284, 32.337673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.761126, 33.705269, 32.543007>,  <27.965511, 33.738575, 32.885231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.761126, 33.705269, 32.543007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142121, -0.973417, 0.179613,
		-0.847772, 0.213368, 0.485547,
		-0.510963, -0.083264, -0.855560,
		27.607836, 33.680290, 32.286339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458359, 33.280052, 32.892975>,  <27.965511, 33.738575, 32.885231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458359, 33.280052, 32.892975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580498, 33.318787, 32.514053>,  <27.653782, 33.342026, 32.286701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580498, 33.318787, 32.514053>,  <27.458359, 33.280052, 32.892975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580498, 33.318787, 32.514053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073334, -0.994253, -0.077994,
		-0.949412, -0.045654, -0.310696,
		0.305349, 0.096833, -0.947304,
		27.672102, 33.347836, 32.229862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.959673, 32.933372, 32.411747>,  <27.458359, 33.280052, 32.892975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.959673, 32.933372, 32.411747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347931, 32.949013, 32.316822>,  <27.580887, 32.958397, 32.259869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.347931, 32.949013, 32.316822>,  <26.959673, 32.933372, 32.411747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.347931, 32.949013, 32.316822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053461, -0.997089, 0.054368,
		-0.234492, -0.065459, -0.969912,
		0.970647, 0.039104, -0.237309,
		27.639126, 32.960743, 32.245628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.126514, 32.596844, 31.767052>,  <26.959673, 32.933372, 32.411747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.126514, 32.596844, 31.767052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450611, 32.591434, 32.001427>,  <27.645069, 32.588188, 32.142052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450611, 32.591434, 32.001427>,  <27.126514, 32.596844, 31.767052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450611, 32.591434, 32.001427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056531, -0.993270, -0.101089,
		0.583362, 0.115030, -0.804026,
		0.810243, -0.013520, 0.585939,
		27.693684, 32.587379, 32.177208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810307, 32.325417, 31.441137>,  <27.126514, 32.596844, 31.767052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.810307, 32.325417, 31.441137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726587, 32.237034, 31.822161>,  <27.676355, 32.184002, 32.050774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726587, 32.237034, 31.822161>,  <27.810307, 32.325417, 31.441137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726587, 32.237034, 31.822161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022279, -0.974960, -0.221261,
		0.977598, -0.025087, 0.208981,
		-0.209300, -0.220960, 0.952560,
		27.663797, 32.170746, 32.107929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486061, 32.291031, 31.715191>,  <27.810307, 32.325417, 31.441137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486061, 32.291031, 31.715191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885643, 32.304649, 31.702997>,  <29.125393, 32.312820, 31.695681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.885643, 32.304649, 31.702997>,  <28.486061, 32.291031, 31.715191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885643, 32.304649, 31.702997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038130, 0.988674, -0.145153,
		0.025196, 0.146163, 0.988939,
		0.998955, 0.034051, -0.030484,
		29.185329, 32.314865, 31.693851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873611, 31.672583, 32.020798>,  <28.486061, 32.291031, 31.715191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873611, 31.672583, 32.020798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946293, 32.030006, 32.185013>,  <28.989902, 32.244461, 32.283543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.946293, 32.030006, 32.185013>,  <28.873611, 31.672583, 32.020798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946293, 32.030006, 32.185013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879320, -0.334534, 0.338946,
		0.440205, 0.299403, -0.846509,
		0.181704, 0.893557, 0.410535,
		29.000805, 32.298073, 32.308174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467676, 31.796366, 31.848297>,  <28.873611, 31.672583, 32.020798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467676, 31.796366, 31.848297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423954, 32.013378, 32.181454>,  <29.397720, 32.143585, 32.381348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423954, 32.013378, 32.181454>,  <29.467676, 31.796366, 31.848297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423954, 32.013378, 32.181454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868924, -0.354768, 0.345125,
		0.482725, 0.761445, -0.432640,
		-0.109307, 0.542532, 0.832893,
		29.391161, 32.176136, 32.431320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997002, 32.358822, 32.011433>,  <29.467676, 31.796366, 31.848297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997002, 32.358822, 32.011433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822868, 32.188942, 32.328953>,  <29.718390, 32.087013, 32.519466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822868, 32.188942, 32.328953>,  <29.997002, 32.358822, 32.011433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822868, 32.188942, 32.328953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867577, -0.433365, 0.243935,
		0.240407, 0.794876, 0.557114,
		-0.435332, -0.424696, 0.793800,
		29.692268, 32.061535, 32.567093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340685, 32.500580, 32.686153>,  <29.997002, 32.358822, 32.011433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340685, 32.500580, 32.686153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152668, 32.166466, 32.800251>,  <30.039858, 31.965998, 32.868710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.152668, 32.166466, 32.800251>,  <30.340685, 32.500580, 32.686153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152668, 32.166466, 32.800251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779726, -0.241504, 0.577670,
		-0.413629, 0.493944, 0.764807,
		-0.470041, -0.835281, 0.285249,
		30.011656, 31.915882, 32.885826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270710, 33.281643, 33.013020>,  <30.340685, 32.500580, 32.686153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270710, 33.281643, 33.013020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546413, 33.015396, 33.127480>,  <30.711836, 32.855648, 33.196156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546413, 33.015396, 33.127480>,  <30.270710, 33.281643, 33.013020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546413, 33.015396, 33.127480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250565, 0.589576, 0.767865,
		-0.679811, -0.457556, 0.573149,
		0.689256, -0.665614, 0.286152,
		30.753191, 32.815712, 33.213326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097891, 33.035294, 33.714764>,  <30.270710, 33.281643, 33.013020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097891, 33.035294, 33.714764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488081, 33.001820, 33.633335>,  <30.722195, 32.981735, 33.584476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488081, 33.001820, 33.633335>,  <30.097891, 33.035294, 33.714764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488081, 33.001820, 33.633335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210332, 0.626877, 0.750190,
		0.064836, -0.774611, 0.629105,
		0.975477, -0.083682, -0.203570,
		30.780724, 32.976715, 33.572266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370085, 33.065784, 34.413494>,  <30.097891, 33.035294, 33.714764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370085, 33.065784, 34.413494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631433, 33.144169, 34.120998>,  <30.788242, 33.191200, 33.945503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.631433, 33.144169, 34.120998>,  <30.370085, 33.065784, 34.413494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.631433, 33.144169, 34.120998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452496, 0.673290, 0.584746,
		0.606919, -0.712938, 0.351238,
		0.653373, 0.195959, -0.731234,
		30.827446, 33.202957, 33.901627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756891, 33.505398, 34.888031>,  <30.370085, 33.065784, 34.413494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756891, 33.505398, 34.888031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098093, 33.299168, 34.855618>,  <31.302814, 33.175430, 34.836170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.098093, 33.299168, 34.855618>,  <30.756891, 33.505398, 34.888031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098093, 33.299168, 34.855618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113282, -0.031342, -0.993068,
		0.509461, 0.856271, -0.085140,
		0.853004, -0.515575, -0.081032,
		31.353994, 33.144497, 34.831306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.145544, 33.679546, 34.208981>,  <30.756891, 33.505398, 34.888031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.145544, 33.679546, 34.208981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294510, 33.324368, 34.316948>,  <31.383890, 33.111259, 34.381729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.294510, 33.324368, 34.316948>,  <31.145544, 33.679546, 34.208981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.294510, 33.324368, 34.316948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068765, -0.263639, -0.962167,
		0.925515, 0.376887, -0.037123,
		0.372416, -0.887947, 0.269919,
		31.406235, 33.057983, 34.397923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789186, 33.660744, 33.950844>,  <31.145544, 33.679546, 34.208981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789186, 33.660744, 33.950844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684134, 33.276978, 33.991940>,  <31.621101, 33.046719, 34.016598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684134, 33.276978, 33.991940>,  <31.789186, 33.660744, 33.950844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684134, 33.276978, 33.991940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037405, -0.116518, -0.992484,
		0.964171, -0.256814, 0.066488,
		-0.262631, -0.959411, 0.102737,
		31.605345, 32.989155, 34.022762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205139, 33.255932, 33.485832>,  <31.789186, 33.660744, 33.950844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205139, 33.255932, 33.485832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882816, 33.031036, 33.560192>,  <31.689423, 32.896099, 33.604809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882816, 33.031036, 33.560192>,  <32.205139, 33.255932, 33.485832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882816, 33.031036, 33.560192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069819, -0.221528, -0.972651,
		0.588047, -0.796749, 0.139254,
		-0.805808, -0.562243, 0.185897,
		31.641073, 32.862362, 33.615963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251614, 32.580902, 33.052055>,  <32.205139, 33.255932, 33.485832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251614, 32.580902, 33.052055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872911, 32.668823, 33.146156>,  <31.645691, 32.721577, 33.202618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872911, 32.668823, 33.146156>,  <32.251614, 32.580902, 33.052055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872911, 32.668823, 33.146156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291080, -0.272110, -0.917185,
		-0.137580, -0.936827, 0.321599,
		-0.946755, 0.219797, 0.235255,
		31.588884, 32.734764, 33.216732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.916479, 32.036823, 32.732166>,  <32.251614, 32.580902, 33.052055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.916479, 32.036823, 32.732166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665945, 32.343464, 32.788769>,  <31.515625, 32.527447, 32.822731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.665945, 32.343464, 32.788769>,  <31.916479, 32.036823, 32.732166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665945, 32.343464, 32.788769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450958, -0.208238, -0.867913,
		-0.635878, -0.607418, 0.476133,
		-0.626335, 0.766603, 0.141505,
		31.478045, 32.573444, 32.831219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269781, 31.772053, 32.724949>,  <31.916479, 32.036823, 32.732166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269781, 31.772053, 32.724949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225317, 32.153076, 32.611618>,  <31.198639, 32.381691, 32.543617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.225317, 32.153076, 32.611618>,  <31.269781, 31.772053, 32.724949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225317, 32.153076, 32.611618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713826, -0.274887, -0.644119,
		-0.691445, 0.130647, 0.710518,
		-0.111160, 0.952559, -0.283329,
		31.191969, 32.438843, 32.526619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113403, 31.978119, 33.444347>,  <31.269781, 31.772053, 32.724949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113403, 31.978119, 33.444347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774719, 31.767084, 33.416824>,  <30.571508, 31.640463, 33.400311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.774719, 31.767084, 33.416824>,  <31.113403, 31.978119, 33.444347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774719, 31.767084, 33.416824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070115, -0.017548, 0.997384,
		-0.527414, 0.849320, -0.022133,
		-0.846710, -0.527586, -0.068805,
		30.520706, 31.608809, 33.396183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538610, 32.221371, 33.744411>,  <31.113403, 31.978119, 33.444347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538610, 32.221371, 33.744411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900904, 32.389267, 33.720844>,  <31.118279, 32.490005, 33.706703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900904, 32.389267, 33.720844>,  <30.538610, 32.221371, 33.744411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900904, 32.389267, 33.720844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094657, -0.064823, 0.993397,
		0.413148, -0.905327, -0.098443,
		0.905731, 0.419739, -0.058914,
		31.172623, 32.515190, 33.703171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078766, 31.759544, 34.126358>,  <30.538610, 32.221371, 33.744411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078766, 31.759544, 34.126358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219158, 32.133957, 34.116085>,  <31.303392, 32.358604, 34.109921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.219158, 32.133957, 34.116085>,  <31.078766, 31.759544, 34.126358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219158, 32.133957, 34.116085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316525, -0.092782, 0.944036,
		0.881264, -0.339466, -0.328842,
		0.350979, 0.936031, -0.025684,
		31.324451, 32.414764, 34.108379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623074, 31.814003, 34.610237>,  <31.078766, 31.759544, 34.126358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623074, 31.814003, 34.610237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539827, 32.199841, 34.545437>,  <31.489880, 32.431343, 34.506557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539827, 32.199841, 34.545437>,  <31.623074, 31.814003, 34.610237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539827, 32.199841, 34.545437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132981, 0.191989, 0.972346,
		0.969022, 0.180816, -0.168229,
		-0.208114, 0.964596, -0.161996,
		31.477394, 32.489220, 34.496838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910685, 32.198326, 35.229755>,  <31.623074, 31.814003, 34.610237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910685, 32.198326, 35.229755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253399, 32.010113, 35.145363>,  <32.459026, 31.897184, 35.094727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.253399, 32.010113, 35.145363>,  <31.910685, 32.198326, 35.229755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.253399, 32.010113, 35.145363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015373, -0.385651, 0.922517,
		-0.515442, -0.793643, -0.323187,
		0.856786, -0.470536, -0.210982,
		32.510433, 31.868952, 35.082069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988605, 31.431267, 35.407696>,  <31.910685, 32.198326, 35.229755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988605, 31.431267, 35.407696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331062, 31.637238, 35.425026>,  <32.536537, 31.760820, 35.435425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331062, 31.637238, 35.425026>,  <31.988605, 31.431267, 35.407696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331062, 31.637238, 35.425026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056381, -0.176420, 0.982699,
		0.513659, -0.838885, -0.180072,
		0.856140, 0.514925, 0.043323,
		32.587906, 31.791716, 35.438023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656681, 31.013107, 35.589893>,  <31.988605, 31.431267, 35.407696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656681, 31.013107, 35.589893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654636, 31.398199, 35.698063>,  <32.653412, 31.629253, 35.762966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654636, 31.398199, 35.698063>,  <32.656681, 31.013107, 35.589893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654636, 31.398199, 35.698063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092506, -0.268813, 0.958740,
		0.995699, 0.029912, -0.087685,
		-0.005107, 0.962728, 0.270424,
		32.653103, 31.687017, 35.779190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268642, 31.206841, 35.965900>,  <32.656681, 31.013107, 35.589893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268642, 31.206841, 35.965900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972599, 31.427017, 36.120430>,  <32.794971, 31.559124, 36.213146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972599, 31.427017, 36.120430>,  <33.268642, 31.206841, 35.965900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972599, 31.427017, 36.120430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089054, -0.489189, 0.867620,
		0.666560, 0.676540, 0.313036,
		-0.740113, 0.550443, 0.386322,
		32.750565, 31.592150, 36.236328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460342, 31.575050, 36.606236>,  <33.268642, 31.206841, 35.965900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460342, 31.575050, 36.606236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060455, 31.572056, 36.615276>,  <32.820522, 31.570259, 36.620701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060455, 31.572056, 36.615276>,  <33.460342, 31.575050, 36.606236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060455, 31.572056, 36.615276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021780, -0.670940, 0.741192,
		0.009611, 0.741474, 0.670913,
		-0.999717, -0.007489, 0.022598,
		32.760540, 31.569809, 36.622055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234928, 31.494411, 37.322563>,  <33.460342, 31.575050, 36.606236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234928, 31.494411, 37.322563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935543, 31.375196, 37.085590>,  <32.755913, 31.303667, 36.943405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935543, 31.375196, 37.085590>,  <33.234928, 31.494411, 37.322563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935543, 31.375196, 37.085590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122550, -0.815781, 0.565228,
		-0.651754, 0.495656, 0.574058,
		-0.748464, -0.298039, -0.592431,
		32.711002, 31.285786, 36.907860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685452, 31.415880, 37.744423>,  <33.234928, 31.494411, 37.322563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685452, 31.415880, 37.744423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614601, 31.200420, 37.414944>,  <32.572090, 31.071144, 37.217255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.614601, 31.200420, 37.414944>,  <32.685452, 31.415880, 37.744423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614601, 31.200420, 37.414944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264121, -0.780216, 0.567012,
		-0.948085, 0.317991, -0.004069,
		-0.177131, -0.538651, -0.823699,
		32.561462, 31.038826, 37.167835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506222, 32.070274, 37.358147>,  <32.685452, 31.415880, 37.744423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506222, 32.070274, 37.358147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184776, 31.859699, 37.247105>,  <31.991909, 31.733353, 37.180481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184776, 31.859699, 37.247105>,  <32.506222, 32.070274, 37.358147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184776, 31.859699, 37.247105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031365, -0.503256, 0.863568,
		-0.594322, 0.685269, 0.420936,
		-0.803615, -0.526440, -0.277602,
		31.943691, 31.701767, 37.163822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951218, 32.130772, 37.757423>,  <32.506222, 32.070274, 37.358147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951218, 32.130772, 37.757423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927362, 31.767305, 37.592125>,  <31.913050, 31.549227, 37.492947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927362, 31.767305, 37.592125>,  <31.951218, 32.130772, 37.757423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927362, 31.767305, 37.592125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008464, -0.414430, 0.910042,
		-0.998184, 0.050776, 0.032407,
		-0.059639, -0.908664, -0.413248,
		31.909472, 31.494707, 37.468151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.335434, 31.744820, 38.087811>,  <31.951218, 32.130772, 37.757423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.335434, 31.744820, 38.087811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532549, 31.443930, 37.912853>,  <31.650818, 31.263395, 37.807877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532549, 31.443930, 37.912853>,  <31.335434, 31.744820, 38.087811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532549, 31.443930, 37.912853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203354, -0.588307, 0.782651,
		-0.846053, -0.296735, -0.442879,
		0.492789, -0.752225, -0.437397,
		31.680386, 31.218262, 37.781635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533123, 31.658901, 38.877380>,  <31.335434, 31.744820, 38.087811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533123, 31.658901, 38.877380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592216, 31.268576, 38.941837>,  <31.627672, 31.034380, 38.980511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592216, 31.268576, 38.941837>,  <31.533123, 31.658901, 38.877380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592216, 31.268576, 38.941837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650660, -0.026812, -0.758896,
		0.744860, 0.216963, 0.630961,
		0.147735, -0.975812, 0.161141,
		31.636538, 30.975832, 38.990181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292454, 31.485111, 38.711552>,  <31.533123, 31.658901, 38.877380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292454, 31.485111, 38.711552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105259, 31.132025, 38.694557>,  <31.992943, 30.920174, 38.684361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.105259, 31.132025, 38.694557>,  <32.292454, 31.485111, 38.711552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105259, 31.132025, 38.694557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521307, -0.236918, -0.819823,
		0.713604, -0.405811, 0.571040,
		-0.467983, -0.882716, -0.042487,
		31.964865, 30.867210, 38.681812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825500, 30.990595, 38.510269>,  <32.292454, 31.485111, 38.711552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825500, 30.990595, 38.510269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447533, 30.903639, 38.412392>,  <32.220753, 30.851465, 38.353664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.447533, 30.903639, 38.412392>,  <32.825500, 30.990595, 38.510269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.447533, 30.903639, 38.412392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271094, -0.100843, -0.957256,
		0.183422, -0.970861, 0.154222,
		-0.944915, -0.217391, -0.244697,
		32.164059, 30.838421, 38.338982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755901, 30.336849, 38.092091>,  <32.825500, 30.990595, 38.510269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755901, 30.336849, 38.092091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408089, 30.524403, 38.030033>,  <32.199402, 30.636934, 37.992798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.408089, 30.524403, 38.030033>,  <32.755901, 30.336849, 38.092091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408089, 30.524403, 38.030033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171554, -0.007816, -0.985144,
		-0.463129, -0.883226, -0.073643,
		-0.869529, 0.468882, -0.155140,
		32.147228, 30.665068, 37.983490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550400, 30.249559, 37.441990>,  <32.755901, 30.336849, 38.092091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550400, 30.249559, 37.441990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307621, 30.556763, 37.523754>,  <32.161953, 30.741085, 37.572815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.307621, 30.556763, 37.523754>,  <32.550400, 30.249559, 37.441990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307621, 30.556763, 37.523754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011345, 0.248809, -0.968486,
		-0.794663, -0.590136, -0.142300,
		-0.606944, 0.768006, 0.204415,
		32.125538, 30.787165, 37.585079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.206558, 30.441315, 36.780346>,  <32.550400, 30.249559, 37.441990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.206558, 30.441315, 36.780346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170628, 30.760538, 37.018684>,  <32.149071, 30.952072, 37.161690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170628, 30.760538, 37.018684>,  <32.206558, 30.441315, 36.780346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170628, 30.760538, 37.018684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052161, 0.601216, -0.797382,
		-0.994591, -0.040545, -0.095633,
		-0.089826, 0.798057, 0.595849,
		32.143681, 30.999956, 37.197437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629534, 30.859140, 36.583164>,  <32.206558, 30.441315, 36.780346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629534, 30.859140, 36.583164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910194, 31.078722, 36.764862>,  <32.078590, 31.210470, 36.873882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910194, 31.078722, 36.764862>,  <31.629534, 30.859140, 36.583164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910194, 31.078722, 36.764862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049237, 0.673347, -0.737685,
		-0.710817, 0.495232, 0.499483,
		0.701651, 0.548952, 0.454243,
		32.120689, 31.243408, 36.901134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460833, 31.607265, 36.732197>,  <31.629534, 30.859140, 36.583164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460833, 31.607265, 36.732197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859102, 31.608681, 36.695061>,  <32.098064, 31.609529, 36.672779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.859102, 31.608681, 36.695061>,  <31.460833, 31.607265, 36.732197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859102, 31.608681, 36.695061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065079, 0.739701, -0.669781,
		0.066301, 0.672926, 0.736733,
		0.995675, 0.003539, -0.092836,
		32.157806, 31.609743, 36.667210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779152, 32.388813, 36.805805>,  <31.460833, 31.607265, 36.732197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779152, 32.388813, 36.805805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060570, 32.179546, 36.613419>,  <32.229420, 32.053986, 36.497986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060570, 32.179546, 36.613419>,  <31.779152, 32.388813, 36.805805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060570, 32.179546, 36.613419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080153, 0.614060, -0.785179,
		0.706118, 0.590958, 0.390084,
		0.703543, -0.523163, -0.480966,
		32.271633, 32.022598, 36.469128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366310, 32.891941, 36.537773>,  <31.779152, 32.388813, 36.805805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366310, 32.891941, 36.537773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365288, 32.585613, 36.280552>,  <32.364674, 32.401817, 36.126221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.365288, 32.585613, 36.280552>,  <32.366310, 32.891941, 36.537773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.365288, 32.585613, 36.280552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267312, 0.619129, -0.738392,
		0.963606, -0.173785, 0.203128,
		-0.002559, -0.765818, -0.643052,
		32.364521, 32.355869, 36.087635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998119, 32.730949, 36.254131>,  <32.366310, 32.891941, 36.537773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998119, 32.730949, 36.254131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652679, 32.699326, 36.054955>,  <32.445415, 32.680351, 35.935448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.652679, 32.699326, 36.054955>,  <32.998119, 32.730949, 36.254131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.652679, 32.699326, 36.054955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202872, 0.849663, -0.486740,
		0.461565, -0.521366, -0.717728,
		-0.863597, -0.079056, -0.497946,
		32.393600, 32.675610, 35.905571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727970, 32.825188, 36.190689>,  <32.998119, 32.730949, 36.254131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727970, 32.825188, 36.190689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910130, 33.168579, 36.096348>,  <34.019424, 33.374615, 36.039742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.910130, 33.168579, 36.096348>,  <33.727970, 32.825188, 36.190689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910130, 33.168579, 36.096348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162716, -0.340715, -0.925979,
		-0.875293, 0.383311, -0.294849,
		0.455397, 0.858479, -0.235855,
		34.046749, 33.426125, 36.025593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340229, 33.197445, 35.599285>,  <33.727970, 32.825188, 36.190689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340229, 33.197445, 35.599285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726276, 33.302013, 35.605019>,  <33.957905, 33.364754, 35.608459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726276, 33.302013, 35.605019>,  <33.340229, 33.197445, 35.599285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726276, 33.302013, 35.605019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057095, -0.156735, -0.985989,
		-0.255516, 0.952414, -0.166193,
		0.965118, 0.261425, 0.014330,
		34.015812, 33.380440, 35.609318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346497, 33.404243, 34.986000>,  <33.340229, 33.197445, 35.599285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346497, 33.404243, 34.986000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732552, 33.395073, 35.090294>,  <33.964184, 33.389572, 35.152870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732552, 33.395073, 35.090294>,  <33.346497, 33.404243, 34.986000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732552, 33.395073, 35.090294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246339, -0.257159, -0.934444,
		0.088470, 0.966097, -0.242547,
		0.965137, -0.022922, 0.260738,
		34.022095, 33.388195, 35.168514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657845, 33.759842, 34.471848>,  <33.346497, 33.404243, 34.986000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657845, 33.759842, 34.471848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965530, 33.562565, 34.634361>,  <34.150143, 33.444199, 34.731869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.965530, 33.562565, 34.634361>,  <33.657845, 33.759842, 34.471848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965530, 33.562565, 34.634361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280520, -0.310638, -0.908192,
		0.574124, 0.812565, -0.100596,
		0.769214, -0.493196, 0.406286,
		34.196293, 33.414604, 34.756248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178555, 33.963367, 34.145260>,  <33.657845, 33.759842, 34.471848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178555, 33.963367, 34.145260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329140, 33.627548, 34.301945>,  <34.419491, 33.426056, 34.395958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329140, 33.627548, 34.301945>,  <34.178555, 33.963367, 34.145260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329140, 33.627548, 34.301945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246922, -0.316600, -0.915857,
		0.892921, 0.441507, 0.088114,
		0.376460, -0.839545, 0.391717,
		34.442078, 33.375687, 34.419460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793377, 33.918995, 33.800522>,  <34.178555, 33.963367, 34.145260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793377, 33.918995, 33.800522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704216, 33.555477, 33.941608>,  <34.650719, 33.337368, 34.026260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704216, 33.555477, 33.941608>,  <34.793377, 33.918995, 33.800522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704216, 33.555477, 33.941608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279658, -0.406220, -0.869929,
		0.933866, -0.095270, 0.344700,
		-0.222902, -0.908795, 0.352712,
		34.637344, 33.282837, 34.047421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297333, 33.495235, 33.641220>,  <34.793377, 33.918995, 33.800522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297333, 33.495235, 33.641220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002083, 33.230190, 33.692001>,  <34.824932, 33.071163, 33.722469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.002083, 33.230190, 33.692001>,  <35.297333, 33.495235, 33.641220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002083, 33.230190, 33.692001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182287, -0.377041, -0.908081,
		0.649567, -0.647139, 0.399090,
		-0.738128, -0.662609, 0.126948,
		34.780643, 33.031406, 33.730087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588814, 32.882141, 33.263161>,  <35.297333, 33.495235, 33.641220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588814, 32.882141, 33.263161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192287, 32.836979, 33.290138>,  <34.954372, 32.809879, 33.306324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.192287, 32.836979, 33.290138>,  <35.588814, 32.882141, 33.263161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192287, 32.836979, 33.290138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008285, -0.458189, -0.888816,
		0.131257, -0.881655, 0.453274,
		-0.991314, -0.112908, 0.067445,
		34.894894, 32.803108, 33.310371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399708, 32.245941, 32.949085>,  <35.588814, 32.882141, 33.263161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399708, 32.245941, 32.949085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047462, 32.434834, 32.964668>,  <34.836113, 32.548168, 32.974018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047462, 32.434834, 32.964668>,  <35.399708, 32.245941, 32.949085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047462, 32.434834, 32.964668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257158, -0.407249, -0.876367,
		-0.397958, -0.781771, 0.480066,
		-0.880625, 0.472209, 0.038971,
		34.783279, 32.576500, 32.976357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.032333, 31.684900, 32.849560>,  <35.399708, 32.245941, 32.949085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.032333, 31.684900, 32.849560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848808, 32.029346, 32.761951>,  <34.738693, 32.236015, 32.709385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.848808, 32.029346, 32.761951>,  <35.032333, 31.684900, 32.849560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848808, 32.029346, 32.761951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122327, -0.305369, -0.944344,
		-0.880072, -0.406484, 0.245445,
		-0.458812, 0.861116, -0.219023,
		34.711166, 32.287682, 32.696243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381653, 31.448044, 32.493519>,  <35.032333, 31.684900, 32.849560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381653, 31.448044, 32.493519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449039, 31.830166, 32.396351>,  <34.489471, 32.059441, 32.338051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449039, 31.830166, 32.396351>,  <34.381653, 31.448044, 32.493519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449039, 31.830166, 32.396351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277278, -0.190560, -0.941703,
		-0.945905, 0.226001, 0.232782,
		0.168467, 0.955306, -0.242917,
		34.499580, 32.116756, 32.323475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851082, 31.588779, 31.942879>,  <34.381653, 31.448044, 32.493519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851082, 31.588779, 31.942879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135540, 31.866667, 31.899719>,  <34.306213, 32.033401, 31.873823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.135540, 31.866667, 31.899719>,  <33.851082, 31.588779, 31.942879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135540, 31.866667, 31.899719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302991, 0.164358, -0.938714,
		-0.634409, 0.700251, 0.327376,
		0.711141, 0.694720, -0.107899,
		34.348881, 32.075085, 31.867350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556110, 32.078190, 31.499020>,  <33.851082, 31.588779, 31.942879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556110, 32.078190, 31.499020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941578, 32.180233, 31.467365>,  <34.172859, 32.241459, 31.448372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941578, 32.180233, 31.467365>,  <33.556110, 32.078190, 31.499020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941578, 32.180233, 31.467365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143596, 0.244998, -0.958831,
		-0.225214, 0.935360, 0.272729,
		0.963669, 0.255105, -0.079137,
		34.230679, 32.256763, 31.443624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561348, 32.765743, 31.239565>,  <33.556110, 32.078190, 31.499020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561348, 32.765743, 31.239565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908161, 32.598042, 31.131876>,  <34.116249, 32.497421, 31.067263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908161, 32.598042, 31.131876>,  <33.561348, 32.765743, 31.239565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908161, 32.598042, 31.131876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144570, 0.305403, -0.941185,
		0.476819, 0.854958, 0.204182,
		0.867032, -0.419256, -0.269223,
		34.168270, 32.472263, 31.051109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942284, 33.278351, 30.783760>,  <33.561348, 32.765743, 31.239565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942284, 33.278351, 30.783760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118309, 32.936218, 30.674397>,  <34.223923, 32.730938, 30.608778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118309, 32.936218, 30.674397>,  <33.942284, 33.278351, 30.783760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118309, 32.936218, 30.674397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185128, 0.211516, -0.959682,
		0.878678, 0.472933, -0.065266,
		0.440060, -0.855334, -0.273407,
		34.250328, 32.679619, 30.592375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400509, 33.499809, 30.374781>,  <33.942284, 33.278351, 30.783760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400509, 33.499809, 30.374781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348312, 33.121304, 30.256418>,  <34.316994, 32.894199, 30.185400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348312, 33.121304, 30.256418>,  <34.400509, 33.499809, 30.374781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348312, 33.121304, 30.256418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109424, 0.310380, -0.944294,
		0.985393, -0.090841, -0.144045,
		-0.130489, -0.946262, -0.295906,
		34.309166, 32.837425, 30.167646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778843, 33.409901, 29.825457>,  <34.400509, 33.499809, 30.374781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778843, 33.409901, 29.825457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526524, 33.103813, 29.774010>,  <34.375134, 32.920162, 29.743141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526524, 33.103813, 29.774010>,  <34.778843, 33.409901, 29.825457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526524, 33.103813, 29.774010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240506, 0.350403, -0.905193,
		0.737737, -0.540056, -0.405071,
		-0.630794, -0.765217, -0.128619,
		34.337284, 32.874249, 29.735424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908154, 33.189899, 29.174788>,  <34.778843, 33.409901, 29.825457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908154, 33.189899, 29.174788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548203, 33.054375, 29.284645>,  <34.332233, 32.973061, 29.350559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.548203, 33.054375, 29.284645>,  <34.908154, 33.189899, 29.174788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548203, 33.054375, 29.284645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364701, 0.239195, -0.899877,
		0.239195, -0.909941, -0.338811,
		0.899877, 0.338811, -0.274642,
		34.278240, 32.952732, 29.367037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762222, 32.685528, 28.707005>,  <34.908154, 33.189899, 29.174788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762222, 32.685528, 28.707005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427216, 32.835564, 28.865938>,  <34.226212, 32.925583, 28.961298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427216, 32.835564, 28.865938>,  <34.762222, 32.685528, 28.707005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427216, 32.835564, 28.865938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383418, 0.114670, -0.916429,
		-0.389303, -0.919870, 0.047777,
		-0.837516, 0.375087, 0.397336,
		34.175961, 32.948090, 28.985140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282207, 32.348866, 28.297945>,  <34.762222, 32.685528, 28.707005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282207, 32.348866, 28.297945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070759, 32.633617, 28.482895>,  <33.943890, 32.804466, 28.593864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.070759, 32.633617, 28.482895>,  <34.282207, 32.348866, 28.297945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070759, 32.633617, 28.482895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515838, 0.163195, -0.840998,
		-0.674145, -0.683080, 0.280945,
		-0.528620, 0.711877, 0.462376,
		33.912174, 32.847179, 28.621607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554436, 32.261032, 28.127964>,  <34.282207, 32.348866, 28.297945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554436, 32.261032, 28.127964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595589, 32.646168, 28.227854>,  <33.620281, 32.877247, 28.287786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595589, 32.646168, 28.227854>,  <33.554436, 32.261032, 28.127964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595589, 32.646168, 28.227854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393638, 0.269970, -0.878729,
		-0.913490, -0.007895, 0.406784,
		0.102882, 0.962837, 0.249723,
		33.626453, 32.935020, 28.302771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966732, 32.431625, 27.954451>,  <33.554436, 32.261032, 28.127964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966732, 32.431625, 27.954451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199478, 32.756760, 27.965193>,  <33.339127, 32.951839, 27.971638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199478, 32.756760, 27.965193>,  <32.966732, 32.431625, 27.954451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199478, 32.756760, 27.965193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361821, 0.288298, -0.886549,
		-0.728364, 0.506139, 0.461854,
		0.581869, 0.812839, 0.026854,
		33.374039, 33.000610, 27.973249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541225, 32.978130, 27.841846>,  <32.966732, 32.431625, 27.954451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541225, 32.978130, 27.841846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907967, 33.095631, 27.733700>,  <33.128010, 33.166130, 27.668812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907967, 33.095631, 27.733700>,  <32.541225, 32.978130, 27.841846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907967, 33.095631, 27.733700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356993, 0.300074, -0.884597,
		-0.178719, 0.907562, 0.379989,
		0.916851, 0.293747, -0.270364,
		33.183022, 33.183754, 27.652590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388004, 33.569813, 27.649120>,  <32.541225, 32.978130, 27.841846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388004, 33.569813, 27.649120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746765, 33.498898, 27.487066>,  <32.962021, 33.456348, 27.389833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746765, 33.498898, 27.487066>,  <32.388004, 33.569813, 27.649120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746765, 33.498898, 27.487066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365924, 0.216902, -0.905015,
		0.248327, 0.959959, 0.129664,
		0.896902, -0.177292, -0.405135,
		33.015835, 33.445709, 27.365526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423065, 34.069820, 27.040049>,  <32.388004, 33.569813, 27.649120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423065, 34.069820, 27.040049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748657, 33.845673, 26.978819>,  <32.944012, 33.711185, 26.942081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748657, 33.845673, 26.978819>,  <32.423065, 34.069820, 27.040049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748657, 33.845673, 26.978819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032021, 0.219832, -0.975012,
		0.580016, 0.798538, 0.160994,
		0.813976, -0.560367, -0.153076,
		32.992851, 33.677563, 26.932896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991356, 34.528515, 26.608263>,  <32.423065, 34.069820, 27.040049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991356, 34.528515, 26.608263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040913, 34.136269, 26.547544>,  <33.070644, 33.900921, 26.511112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040913, 34.136269, 26.547544>,  <32.991356, 34.528515, 26.608263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040913, 34.136269, 26.547544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127557, 0.167445, -0.977594,
		0.984063, 0.101749, 0.145829,
		0.123888, -0.980617, -0.151798,
		33.078079, 33.842083, 26.502005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598896, 34.464897, 26.229937>,  <32.991356, 34.528515, 26.608263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598896, 34.464897, 26.229937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392109, 34.128742, 26.164841>,  <33.268036, 33.927048, 26.125782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392109, 34.128742, 26.164841>,  <33.598896, 34.464897, 26.229937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392109, 34.128742, 26.164841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108202, 0.124437, -0.986310,
		0.849138, -0.527501, 0.026602,
		-0.516969, -0.840392, -0.162741,
		33.237019, 33.876625, 26.116018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860752, 34.213467, 25.675476>,  <33.598896, 34.464897, 26.229937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860752, 34.213467, 25.675476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525749, 33.995152, 25.664864>,  <33.324749, 33.864162, 25.658495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525749, 33.995152, 25.664864>,  <33.860752, 34.213467, 25.675476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525749, 33.995152, 25.664864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056002, 0.134033, -0.989393,
		0.543552, -0.827136, -0.142818,
		-0.837505, -0.545785, -0.026533,
		33.274498, 33.831417, 25.656904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951405, 33.652035, 25.227913>,  <33.860752, 34.213467, 25.675476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951405, 33.652035, 25.227913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556454, 33.707233, 25.258995>,  <33.319481, 33.740353, 25.277645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556454, 33.707233, 25.258995>,  <33.951405, 33.652035, 25.227913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556454, 33.707233, 25.258995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062354, 0.112286, -0.991718,
		-0.145576, -0.984047, -0.102265,
		-0.987380, 0.137994, 0.077705,
		33.260239, 33.748631, 25.282307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647522, 33.262875, 24.722786>,  <33.951405, 33.652035, 25.227913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647522, 33.262875, 24.722786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374493, 33.542507, 24.807997>,  <33.210674, 33.710285, 24.859123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.374493, 33.542507, 24.807997>,  <33.647522, 33.262875, 24.722786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374493, 33.542507, 24.807997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036091, 0.323384, -0.945579,
		-0.729924, -0.637740, -0.245964,
		-0.682575, 0.699078, 0.213029,
		33.169720, 33.752232, 24.871906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127056, 33.149670, 24.361969>,  <33.647522, 33.262875, 24.722786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127056, 33.149670, 24.361969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081448, 33.540550, 24.433607>,  <33.054081, 33.775078, 24.476589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081448, 33.540550, 24.433607>,  <33.127056, 33.149670, 24.361969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081448, 33.540550, 24.433607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069520, 0.171980, -0.982644,
		-0.991043, -0.124496, 0.048325,
		-0.114024, 0.977202, 0.179094,
		33.047241, 33.833710, 24.487335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666111, 33.355927, 23.940535>,  <33.127056, 33.149670, 24.361969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666111, 33.355927, 23.940535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814873, 33.715733, 24.032232>,  <32.904129, 33.931618, 24.087250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814873, 33.715733, 24.032232>,  <32.666111, 33.355927, 23.940535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814873, 33.715733, 24.032232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092206, 0.209937, -0.973357,
		-0.923680, 0.383133, -0.004864,
		0.371905, 0.899519, 0.229242,
		32.926445, 33.985588, 24.101006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152119, 33.847797, 23.698999>,  <32.666111, 33.355927, 23.940535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152119, 33.847797, 23.698999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505367, 34.031773, 23.736008>,  <32.717316, 34.142159, 23.758213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.505367, 34.031773, 23.736008>,  <32.152119, 33.847797, 23.698999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505367, 34.031773, 23.736008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103091, 0.382638, -0.918129,
		-0.457682, 0.801279, 0.385330,
		0.883119, 0.459936, 0.092522,
		32.770302, 34.169754, 23.763763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.091988, 34.275898, 23.219893>,  <32.152119, 33.847797, 23.698999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.091988, 34.275898, 23.219893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479454, 34.345158, 23.291109>,  <32.711933, 34.386715, 23.333839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479454, 34.345158, 23.291109>,  <32.091988, 34.275898, 23.219893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479454, 34.345158, 23.291109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104560, 0.365926, -0.924752,
		-0.225274, 0.914394, 0.336356,
		0.968669, 0.173154, 0.178042,
		32.770054, 34.397102, 23.344522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117554, 34.903866, 23.021143>,  <32.091988, 34.275898, 23.219893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117554, 34.903866, 23.021143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500713, 34.789028, 23.020397>,  <32.730610, 34.720123, 23.019949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.500713, 34.789028, 23.020397>,  <32.117554, 34.903866, 23.021143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500713, 34.789028, 23.020397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168871, 0.568669, -0.805045,
		0.232187, 0.770838, 0.593211,
		0.957900, -0.287097, -0.001865,
		32.788082, 34.702900, 23.019838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553688, 35.506718, 23.057758>,  <32.117554, 34.903866, 23.021143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553688, 35.506718, 23.057758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746372, 35.195198, 22.897043>,  <32.861980, 35.008286, 22.800615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746372, 35.195198, 22.897043>,  <32.553688, 35.506718, 23.057758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746372, 35.195198, 22.897043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120956, 0.513186, -0.849712,
		0.867945, 0.360714, 0.341406,
		0.481707, -0.778798, -0.401786,
		32.890884, 34.961559, 22.776508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073261, 35.808678, 22.865923>,  <32.553688, 35.506718, 23.057758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073261, 35.808678, 22.865923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055401, 35.474281, 22.647156>,  <33.044685, 35.273643, 22.515896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055401, 35.474281, 22.647156>,  <33.073261, 35.808678, 22.865923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055401, 35.474281, 22.647156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028468, 0.548306, -0.835794,
		0.998597, -0.021752, -0.048283,
		-0.044654, -0.835995, -0.546917,
		33.042004, 35.223484, 22.483080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702133, 35.808681, 22.413162>,  <33.073261, 35.808678, 22.865923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702133, 35.808681, 22.413162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429520, 35.561081, 22.257032>,  <33.265953, 35.412521, 22.163355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.429520, 35.561081, 22.257032>,  <33.702133, 35.808681, 22.413162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.429520, 35.561081, 22.257032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140384, 0.412883, -0.899900,
		0.718198, -0.668105, -0.194494,
		-0.681531, -0.619003, -0.390322,
		33.225060, 35.375381, 22.139936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919102, 35.812080, 21.775597>,  <33.702133, 35.808681, 22.413162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919102, 35.812080, 21.775597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567982, 35.623840, 21.739822>,  <33.357307, 35.510899, 21.718357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567982, 35.623840, 21.739822>,  <33.919102, 35.812080, 21.775597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567982, 35.623840, 21.739822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033212, 0.246048, -0.968689,
		0.477867, -0.847349, -0.231611,
		-0.877804, -0.470596, -0.089436,
		33.304642, 35.482662, 21.712992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001320, 35.578411, 21.174540>,  <33.919102, 35.812080, 21.775597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001320, 35.578411, 21.174540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608727, 35.599590, 21.248178>,  <33.373173, 35.612297, 21.292362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.608727, 35.599590, 21.248178>,  <34.001320, 35.578411, 21.174540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608727, 35.599590, 21.248178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174956, 0.143595, -0.974049,
		-0.078009, -0.988219, -0.131672,
		-0.981481, 0.052947, 0.184096,
		33.314281, 35.615475, 21.303408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700584, 35.096851, 20.804592>,  <34.001320, 35.578411, 21.174540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700584, 35.096851, 20.804592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412655, 35.364506, 20.878464>,  <33.239899, 35.525101, 20.922787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412655, 35.364506, 20.878464>,  <33.700584, 35.096851, 20.804592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412655, 35.364506, 20.878464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123589, 0.138258, -0.982655,
		-0.683067, -0.730162, -0.016823,
		-0.719823, 0.669140, 0.184679,
		33.196709, 35.565247, 20.933868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325691, 34.956615, 20.231030>,  <33.700584, 35.096851, 20.804592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325691, 34.956615, 20.231030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190117, 35.302383, 20.379568>,  <33.108772, 35.509846, 20.468691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190117, 35.302383, 20.379568>,  <33.325691, 34.956615, 20.231030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190117, 35.302383, 20.379568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204427, 0.317612, -0.925922,
		-0.918330, -0.389745, 0.069060,
		-0.338939, 0.864420, 0.371347,
		33.088436, 35.561710, 20.490973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582569, 35.044769, 20.026054>,  <33.325691, 34.956615, 20.231030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582569, 35.044769, 20.026054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768692, 35.392616, 20.092089>,  <32.880363, 35.601326, 20.131710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.768692, 35.392616, 20.092089>,  <32.582569, 35.044769, 20.026054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.768692, 35.392616, 20.092089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229850, 0.298814, -0.926218,
		-0.854788, 0.393027, 0.338922,
		0.465303, 0.869621, 0.165085,
		32.908283, 35.653503, 20.141615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408131, 35.336182, 19.415119>,  <32.582569, 35.044769, 20.026054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408131, 35.336182, 19.415119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670959, 35.595211, 19.569469>,  <32.828659, 35.750629, 19.662079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.670959, 35.595211, 19.569469>,  <32.408131, 35.336182, 19.415119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670959, 35.595211, 19.569469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105634, 0.427740, -0.897708,
		-0.746388, 0.630623, 0.212651,
		0.657075, 0.647575, 0.385875,
		32.868080, 35.789482, 19.685232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272133, 35.988651, 19.125574>,  <32.408131, 35.336182, 19.415119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272133, 35.988651, 19.125574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656364, 35.935852, 19.223450>,  <32.886902, 35.904171, 19.282175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656364, 35.935852, 19.223450>,  <32.272133, 35.988651, 19.125574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656364, 35.935852, 19.223450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275553, 0.335019, -0.901018,
		0.036959, 0.932919, 0.358184,
		0.960575, -0.131999, 0.244687,
		32.944538, 35.896252, 19.296856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554394, 36.563992, 19.192915>,  <32.272133, 35.988651, 19.125574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554394, 36.563992, 19.192915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831100, 36.310219, 19.054953>,  <32.997124, 36.157955, 18.972176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831100, 36.310219, 19.054953>,  <32.554394, 36.563992, 19.192915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831100, 36.310219, 19.054953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105207, 0.561076, -0.821052,
		0.714418, 0.531688, 0.454878,
		0.691764, -0.634431, -0.344906,
		33.038631, 36.119888, 18.951481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874760, 36.962563, 18.700638>,  <32.554394, 36.563992, 19.192915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874760, 36.962563, 18.700638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945621, 36.574905, 18.632076>,  <32.988136, 36.342312, 18.590939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945621, 36.574905, 18.632076>,  <32.874760, 36.962563, 18.700638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945621, 36.574905, 18.632076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110197, 0.192596, -0.975071,
		0.977995, 0.153846, 0.140915,
		0.177150, -0.969143, -0.171405,
		32.998768, 36.284161, 18.580654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302341, 37.458862, 18.238247>,  <32.874760, 36.962563, 18.700638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302341, 37.458862, 18.238247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932720, 37.596912, 18.303997>,  <32.710949, 37.679741, 18.343447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.932720, 37.596912, 18.303997>,  <33.302341, 37.458862, 18.238247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932720, 37.596912, 18.303997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179605, 0.012382, 0.983661,
		0.337450, 0.938475, -0.073428,
		-0.924051, 0.345124, 0.164377,
		32.655506, 37.700451, 18.353310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274479, 38.114967, 18.656694>,  <33.302341, 37.458862, 18.238247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274479, 38.114967, 18.656694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991795, 37.835228, 18.699558>,  <32.822186, 37.667385, 18.725277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.991795, 37.835228, 18.699558>,  <33.274479, 38.114967, 18.656694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991795, 37.835228, 18.699558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357102, -0.221833, 0.907341,
		-0.610772, 0.679491, 0.406508,
		-0.706707, -0.699344, 0.107158,
		32.779781, 37.625423, 18.731705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034882, 38.592949, 19.154493>,  <33.274479, 38.114967, 18.656694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034882, 38.592949, 19.154493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306599, 38.851162, 19.294121>,  <33.469627, 39.006088, 19.377897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306599, 38.851162, 19.294121>,  <33.034882, 38.592949, 19.154493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306599, 38.851162, 19.294121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538155, 0.114777, 0.834994,
		0.498953, -0.755057, 0.425365,
		0.679290, 0.645535, 0.349069,
		33.510387, 39.044823, 19.398842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180519, 37.981419, 19.670759>,  <33.034882, 38.592949, 19.154493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180519, 37.981419, 19.670759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986118, 38.153027, 19.975323>,  <32.869476, 38.255993, 20.158060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.986118, 38.153027, 19.975323>,  <33.180519, 37.981419, 19.670759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.986118, 38.153027, 19.975323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837515, -0.020324, 0.546037,
		0.249736, 0.903066, -0.349434,
		-0.486005, 0.429021, 0.761407,
		32.840317, 38.281734, 20.203745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635170, 38.645969, 19.939995>,  <33.180519, 37.981419, 19.670759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635170, 38.645969, 19.939995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385929, 38.494297, 20.213629>,  <33.236385, 38.403294, 20.377810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385929, 38.494297, 20.213629>,  <33.635170, 38.645969, 19.939995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385929, 38.494297, 20.213629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733618, 0.019938, 0.679269,
		-0.271204, 0.925108, 0.265750,
		-0.623099, -0.379180, 0.684084,
		33.199001, 38.380543, 20.418854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644371, 39.097542, 20.535404>,  <33.635170, 38.645969, 19.939995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644371, 39.097542, 20.535404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504063, 38.739990, 20.647079>,  <33.419876, 38.525459, 20.714085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504063, 38.739990, 20.647079>,  <33.644371, 39.097542, 20.535404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504063, 38.739990, 20.647079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605329, 0.011043, 0.795899,
		-0.714517, 0.448181, 0.537215,
		-0.350774, -0.893875, 0.279187,
		33.398830, 38.471828, 20.730835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663727, 39.072216, 21.264704>,  <33.644371, 39.097542, 20.535404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663727, 39.072216, 21.264704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600502, 38.687382, 21.175791>,  <33.562565, 38.456482, 21.122442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600502, 38.687382, 21.175791>,  <33.663727, 39.072216, 21.264704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600502, 38.687382, 21.175791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392482, -0.267781, 0.879915,
		-0.906076, 0.051841, 0.419928,
		-0.158065, -0.962084, -0.222283,
		33.553082, 38.398758, 21.109106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226898, 38.750008, 21.731867>,  <33.663727, 39.072216, 21.264704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226898, 38.750008, 21.731867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454971, 38.461964, 21.573708>,  <33.591816, 38.289139, 21.478811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454971, 38.461964, 21.573708>,  <33.226898, 38.750008, 21.731867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454971, 38.461964, 21.573708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373822, -0.201161, 0.905423,
		-0.731541, -0.664063, 0.154494,
		0.570180, -0.720107, -0.395399,
		33.626026, 38.245930, 21.455088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070515, 38.193520, 22.126991>,  <33.226898, 38.750008, 21.731867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070515, 38.193520, 22.126991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433933, 38.126499, 21.973907>,  <33.651985, 38.086285, 21.882057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433933, 38.126499, 21.973907>,  <33.070515, 38.193520, 22.126991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433933, 38.126499, 21.973907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305196, -0.359378, 0.881875,
		-0.285295, -0.918027, -0.275377,
		0.908549, -0.167551, -0.382707,
		33.706497, 38.076233, 21.859095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384075, 37.745621, 22.604916>,  <33.070515, 38.193520, 22.126991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384075, 37.745621, 22.604916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717976, 37.823902, 22.399046>,  <33.918316, 37.870872, 22.275524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717976, 37.823902, 22.399046>,  <33.384075, 37.745621, 22.604916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717976, 37.823902, 22.399046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549429, -0.234375, 0.801995,
		0.036329, -0.952243, -0.303172,
		0.834750, 0.195707, -0.514675,
		33.968399, 37.882614, 22.244644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821301, 37.097301, 22.669779>,  <33.384075, 37.745621, 22.604916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821301, 37.097301, 22.669779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080055, 37.395401, 22.605103>,  <34.235306, 37.574261, 22.566296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080055, 37.395401, 22.605103>,  <33.821301, 37.097301, 22.669779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080055, 37.395401, 22.605103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432579, -0.183984, 0.882624,
		0.628027, -0.640899, -0.441395,
		0.646883, 0.745250, -0.161692,
		34.274120, 37.618977, 22.556595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.432865, 36.771404, 22.816914>,  <33.821301, 37.097301, 22.669779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.432865, 36.771404, 22.816914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479809, 37.168175, 22.836143>,  <34.507977, 37.406239, 22.847681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479809, 37.168175, 22.836143>,  <34.432865, 36.771404, 22.816914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479809, 37.168175, 22.836143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437843, -0.095133, 0.894004,
		0.891358, -0.083870, -0.445473,
		0.117359, 0.991925, 0.048076,
		34.515018, 37.465752, 22.850567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143341, 36.849766, 23.077898>,  <34.432865, 36.771404, 22.816914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143341, 36.849766, 23.077898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956757, 37.192596, 23.165377>,  <34.844807, 37.398296, 23.217865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956757, 37.192596, 23.165377>,  <35.143341, 36.849766, 23.077898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956757, 37.192596, 23.165377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341121, -0.053815, 0.938478,
		0.816118, 0.512368, -0.267264,
		-0.466463, 0.857078, 0.218699,
		34.816818, 37.449718, 23.230986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614964, 37.142643, 23.430309>,  <35.143341, 36.849766, 23.077898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614964, 37.142643, 23.430309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290768, 37.351692, 23.536112>,  <35.096249, 37.477123, 23.599594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290768, 37.351692, 23.536112>,  <35.614964, 37.142643, 23.430309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290768, 37.351692, 23.536112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264581, -0.076232, 0.961346,
		0.522587, 0.849147, -0.076492,
		-0.810493, 0.522625, 0.264506,
		35.047619, 37.508480, 23.615463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851700, 37.640701, 23.824860>,  <35.614964, 37.142643, 23.430309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851700, 37.640701, 23.824860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463600, 37.623104, 23.920095>,  <35.230740, 37.612545, 23.977236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463600, 37.623104, 23.920095>,  <35.851700, 37.640701, 23.824860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463600, 37.623104, 23.920095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220989, 0.240843, 0.945071,
		-0.098921, 0.969567, -0.223955,
		-0.970247, -0.043995, 0.238088,
		35.172527, 37.609905, 23.991522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648525, 38.388493, 24.164055>,  <35.851700, 37.640701, 23.824860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648525, 38.388493, 24.164055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399826, 38.105873, 24.299240>,  <35.250607, 37.936302, 24.380350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399826, 38.105873, 24.299240>,  <35.648525, 38.388493, 24.164055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399826, 38.105873, 24.299240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259203, 0.221565, 0.940065,
		-0.739086, 0.672081, 0.045384,
		-0.621744, -0.706553, 0.337961,
		35.213303, 37.893906, 24.400629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141354, 38.787613, 24.718338>,  <35.648525, 38.388493, 24.164055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141354, 38.787613, 24.718338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191460, 38.394093, 24.769638>,  <35.221523, 38.157982, 24.800419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.191460, 38.394093, 24.769638>,  <35.141354, 38.787613, 24.718338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191460, 38.394093, 24.769638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259874, 0.157291, 0.952746,
		-0.957483, -0.086017, 0.275367,
		0.125265, -0.983799, 0.128250,
		35.229038, 38.098953, 24.808113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061886, 38.659977, 25.454668>,  <35.141354, 38.787613, 24.718338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061886, 38.659977, 25.454668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150249, 38.280010, 25.366261>,  <35.203270, 38.052029, 25.313215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150249, 38.280010, 25.366261>,  <35.061886, 38.659977, 25.454668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150249, 38.280010, 25.366261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160659, -0.188078, 0.968925,
		-0.961970, -0.249556, 0.111065,
		0.220913, -0.949920, -0.221019,
		35.216522, 37.995033, 25.299955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732285, 38.246178, 26.000105>,  <35.061886, 38.659977, 25.454668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732285, 38.246178, 26.000105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043690, 38.057091, 25.834957>,  <35.230534, 37.943638, 25.735868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043690, 38.057091, 25.834957>,  <34.732285, 38.246178, 26.000105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043690, 38.057091, 25.834957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355348, -0.210253, 0.910781,
		-0.517344, -0.855766, 0.004293,
		0.778513, -0.472713, -0.412868,
		35.277245, 37.915276, 25.711096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588615, 37.613468, 26.268610>,  <34.732285, 38.246178, 26.000105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588615, 37.613468, 26.268610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969128, 37.613335, 26.145275>,  <35.197433, 37.613255, 26.071274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969128, 37.613335, 26.145275>,  <34.588615, 37.613468, 26.268610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969128, 37.613335, 26.145275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280412, -0.414909, 0.865575,
		-0.128223, -0.909863, -0.394599,
		0.951277, -0.000336, -0.308338,
		35.254509, 37.613235, 26.052774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933933, 36.939476, 26.382017>,  <34.588615, 37.613468, 26.268610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933933, 36.939476, 26.382017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226883, 37.211830, 26.379898>,  <35.402653, 37.375240, 26.378626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226883, 37.211830, 26.379898>,  <34.933933, 36.939476, 26.382017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226883, 37.211830, 26.379898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298115, -0.313646, 0.901528,
		0.612173, -0.661836, -0.432687,
		0.732374, 0.680881, -0.005298,
		35.446594, 37.416096, 26.378309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559998, 36.575054, 26.548447>,  <34.933933, 36.939476, 26.382017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559998, 36.575054, 26.548447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642811, 36.960640, 26.615280>,  <35.692497, 37.191990, 26.655380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.642811, 36.960640, 26.615280>,  <35.559998, 36.575054, 26.548447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.642811, 36.960640, 26.615280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287235, -0.223150, 0.931504,
		0.935218, -0.144858, -0.323083,
		0.207032, 0.963960, 0.167086,
		35.704922, 37.249828, 26.665405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178432, 36.587254, 27.087427>,  <35.559998, 36.575054, 26.548447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178432, 36.587254, 27.087427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943420, 36.910915, 27.090721>,  <35.802414, 37.105114, 27.092697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.943420, 36.910915, 27.090721>,  <36.178432, 36.587254, 27.087427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.943420, 36.910915, 27.090721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012527, -0.001083, 0.999921,
		0.809103, 0.587590, -0.009501,
		-0.587533, 0.809159, 0.008237,
		35.767162, 37.153664, 27.093193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414150, 36.962070, 27.583099>,  <36.178432, 36.587254, 27.087427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414150, 36.962070, 27.583099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041302, 37.106621, 27.573626>,  <35.817593, 37.193352, 27.567942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.041302, 37.106621, 27.573626>,  <36.414150, 36.962070, 27.583099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.041302, 37.106621, 27.573626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015101, 0.026553, 0.999533,
		0.361836, 0.932042, -0.019294,
		-0.932120, 0.361375, -0.023682,
		35.761665, 37.215034, 27.566521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399052, 37.166317, 28.304766>,  <36.414150, 36.962070, 27.583099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399052, 37.166317, 28.304766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028416, 37.168438, 28.154348>,  <35.806034, 37.169712, 28.064098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028416, 37.168438, 28.154348>,  <36.399052, 37.166317, 28.304766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028416, 37.168438, 28.154348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359605, -0.305218, 0.881774,
		-0.110097, 0.952268, 0.284719,
		-0.926587, 0.005306, -0.376044,
		35.750439, 37.170029, 28.041534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108559, 37.506870, 28.779991>,  <36.399052, 37.166317, 28.304766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108559, 37.506870, 28.779991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803623, 37.339752, 28.582289>,  <35.620663, 37.239479, 28.463667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803623, 37.339752, 28.582289>,  <36.108559, 37.506870, 28.779991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803623, 37.339752, 28.582289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465849, -0.175894, 0.867206,
		-0.449254, 0.891351, -0.060541,
		-0.762336, -0.417799, -0.494256,
		35.574921, 37.214413, 28.434011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460167, 37.906166, 28.992670>,  <36.108559, 37.506870, 28.779991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460167, 37.906166, 28.992670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351025, 37.545509, 28.858450>,  <35.285538, 37.329117, 28.777918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.351025, 37.545509, 28.858450>,  <35.460167, 37.906166, 28.992670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351025, 37.545509, 28.858450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309292, -0.248057, 0.918045,
		-0.910982, 0.354277, -0.211186,
		-0.272856, -0.901640, -0.335551,
		35.269169, 37.275017, 28.757784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875301, 37.883869, 29.253445>,  <35.460167, 37.906166, 28.992670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875301, 37.883869, 29.253445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994213, 37.509018, 29.180332>,  <35.065559, 37.284107, 29.136465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994213, 37.509018, 29.180332>,  <34.875301, 37.883869, 29.253445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994213, 37.509018, 29.180332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232285, -0.256670, 0.938171,
		-0.926103, -0.236445, -0.293985,
		0.297283, -0.937131, -0.182781,
		35.083397, 37.227879, 29.125498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411491, 37.456902, 29.638933>,  <34.875301, 37.883869, 29.253445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411491, 37.456902, 29.638933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731911, 37.225731, 29.576550>,  <34.924160, 37.087029, 29.539120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731911, 37.225731, 29.576550>,  <34.411491, 37.456902, 29.638933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731911, 37.225731, 29.576550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176861, -0.477409, 0.860698,
		-0.571882, -0.661873, -0.484639,
		0.801044, -0.577931, -0.155962,
		34.972225, 37.052353, 29.529760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194225, 36.800285, 29.910049>,  <34.411491, 37.456902, 29.638933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194225, 36.800285, 29.910049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593700, 36.785072, 29.896332>,  <34.833385, 36.775944, 29.888102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593700, 36.785072, 29.896332>,  <34.194225, 36.800285, 29.910049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593700, 36.785072, 29.896332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009890, -0.513805, 0.857850,
		-0.050245, -0.857064, -0.512754,
		0.998688, -0.038032, -0.034293,
		34.893307, 36.773663, 29.886044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279118, 36.191181, 30.087841>,  <34.194225, 36.800285, 29.910049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279118, 36.191181, 30.087841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627914, 36.375023, 30.155249>,  <34.837193, 36.485329, 30.195694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627914, 36.375023, 30.155249>,  <34.279118, 36.191181, 30.087841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627914, 36.375023, 30.155249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095800, -0.497809, 0.861980,
		0.480062, -0.735491, -0.478113,
		0.871988, 0.459608, 0.168519,
		34.889511, 36.512905, 30.205805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786331, 35.691586, 30.298254>,  <34.279118, 36.191181, 30.087841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786331, 35.691586, 30.298254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967823, 36.026371, 30.420643>,  <35.076717, 36.227242, 30.494076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967823, 36.026371, 30.420643>,  <34.786331, 35.691586, 30.298254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967823, 36.026371, 30.420643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198595, -0.429682, 0.880871,
		0.868728, -0.338914, -0.361177,
		0.453731, 0.836965, 0.305971,
		35.103943, 36.277462, 30.512434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194347, 35.454857, 30.809223>,  <34.786331, 35.691586, 30.298254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194347, 35.454857, 30.809223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164272, 35.848923, 30.870928>,  <35.146229, 36.085361, 30.907949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164272, 35.848923, 30.870928>,  <35.194347, 35.454857, 30.809223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164272, 35.848923, 30.870928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067533, -0.149313, 0.986481,
		0.994880, 0.084589, -0.055305,
		-0.075188, 0.985165, 0.154261,
		35.141716, 36.144474, 30.917206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702652, 35.629055, 31.239092>,  <35.194347, 35.454857, 30.809223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702652, 35.629055, 31.239092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423710, 35.913822, 31.272234>,  <35.256344, 36.084682, 31.292120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.423710, 35.913822, 31.272234>,  <35.702652, 35.629055, 31.239092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423710, 35.913822, 31.272234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077377, -0.189712, 0.978786,
		0.712532, 0.676155, 0.187384,
		-0.697360, 0.711916, 0.082857,
		35.214500, 36.127396, 31.297091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921719, 35.920246, 31.827250>,  <35.702652, 35.629055, 31.239092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921719, 35.920246, 31.827250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540348, 36.027000, 31.771029>,  <35.311527, 36.091053, 31.737297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540348, 36.027000, 31.771029>,  <35.921719, 35.920246, 31.827250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540348, 36.027000, 31.771029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188867, -0.164895, 0.968059,
		0.235184, 0.949517, 0.207621,
		-0.953424, 0.266885, -0.140551,
		35.254322, 36.107067, 31.728863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895382, 36.387440, 32.252392>,  <35.921719, 35.920246, 31.827250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895382, 36.387440, 32.252392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506382, 36.322170, 32.185909>,  <35.272984, 36.283009, 32.146019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.506382, 36.322170, 32.185909>,  <35.895382, 36.387440, 32.252392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506382, 36.322170, 32.185909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150837, -0.102546, 0.983225,
		-0.177476, 0.981254, 0.075113,
		-0.972497, -0.163169, -0.166209,
		35.214634, 36.273220, 32.136047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499962, 36.941849, 32.681301>,  <35.895382, 36.387440, 32.252392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499962, 36.941849, 32.681301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225880, 36.662495, 32.598583>,  <35.061432, 36.494884, 32.548954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225880, 36.662495, 32.598583>,  <35.499962, 36.941849, 32.681301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225880, 36.662495, 32.598583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322457, 0.036294, 0.945888,
		-0.653085, 0.714806, -0.250066,
		-0.685202, -0.698381, -0.206791,
		35.020321, 36.452980, 32.536545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781067, 37.195656, 33.011608>,  <35.499962, 36.941849, 32.681301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781067, 37.195656, 33.011608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760517, 36.801235, 32.948288>,  <34.748188, 36.564583, 32.910297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760517, 36.801235, 32.948288>,  <34.781067, 37.195656, 33.011608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760517, 36.801235, 32.948288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425739, -0.121759, 0.896617,
		-0.903387, 0.113452, -0.413547,
		-0.051370, -0.986055, -0.158297,
		34.745106, 36.505421, 32.900799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122929, 36.937271, 33.224659>,  <34.781067, 37.195656, 33.011608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122929, 36.937271, 33.224659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386257, 36.637150, 33.248852>,  <34.544254, 36.457077, 33.263367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386257, 36.637150, 33.248852>,  <34.122929, 36.937271, 33.224659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386257, 36.637150, 33.248852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239850, -0.132919, 0.961667,
		-0.713506, -0.647590, -0.267464,
		0.658317, -0.750306, 0.060486,
		34.583752, 36.412060, 33.266998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816525, 36.428177, 33.526672>,  <34.122929, 36.937271, 33.224659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816525, 36.428177, 33.526672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197296, 36.311096, 33.562782>,  <34.425758, 36.240849, 33.584446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.197296, 36.311096, 33.562782>,  <33.816525, 36.428177, 33.526672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197296, 36.311096, 33.562782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172840, -0.269984, 0.947225,
		-0.252882, -0.917297, -0.307597,
		0.951933, -0.292701, 0.090272,
		34.482876, 36.223286, 33.589863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872005, 35.817341, 33.737846>,  <33.816525, 36.428177, 33.526672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872005, 35.817341, 33.737846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250378, 35.908752, 33.829922>,  <34.477402, 35.963600, 33.885166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.250378, 35.908752, 33.829922>,  <33.872005, 35.817341, 33.737846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250378, 35.908752, 33.829922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130680, -0.381013, 0.915288,
		0.296871, -0.895882, -0.330549,
		0.945933, 0.228526, 0.230186,
		34.534157, 35.977310, 33.898979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125515, 35.264687, 34.017239>,  <33.872005, 35.817341, 33.737846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125515, 35.264687, 34.017239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374722, 35.543037, 34.160130>,  <34.524246, 35.710049, 34.245865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374722, 35.543037, 34.160130>,  <34.125515, 35.264687, 34.017239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374722, 35.543037, 34.160130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002709, -0.458611, 0.888633,
		0.782206, -0.552662, -0.287606,
		0.623013, 0.695873, 0.357231,
		34.561626, 35.751801, 34.267300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603134, 34.875404, 34.469505>,  <34.125515, 35.264687, 34.017239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603134, 34.875404, 34.469505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629475, 35.254601, 34.594070>,  <34.645279, 35.482117, 34.668808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.629475, 35.254601, 34.594070>,  <34.603134, 34.875404, 34.469505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629475, 35.254601, 34.594070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045617, -0.308900, 0.950000,
		0.996786, -0.076763, 0.022904,
		0.065849, 0.947992, 0.311409,
		34.649231, 35.538998, 34.687492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226604, 34.862083, 34.932076>,  <34.603134, 34.875404, 34.469505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226604, 34.862083, 34.932076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024338, 35.196583, 35.016914>,  <34.902977, 35.397282, 35.067818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024338, 35.196583, 35.016914>,  <35.226604, 34.862083, 34.932076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024338, 35.196583, 35.016914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135973, -0.165521, 0.976788,
		0.851947, 0.522767, -0.030010,
		-0.505665, 0.836252, 0.212097,
		34.872639, 35.447460, 35.080544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652905, 35.341671, 35.380177>,  <35.226604, 34.862083, 34.932076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652905, 35.341671, 35.380177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266071, 35.432182, 35.426746>,  <35.033974, 35.486488, 35.454689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266071, 35.432182, 35.426746>,  <35.652905, 35.341671, 35.380177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266071, 35.432182, 35.426746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104624, -0.063520, 0.992481,
		0.231970, 0.971990, 0.037756,
		-0.967080, 0.226275, 0.116428,
		34.975948, 35.500065, 35.461674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261337, 35.412292, 35.008347>,  <35.652905, 35.341671, 35.380177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261337, 35.412292, 35.008347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650467, 35.501293, 34.982700>,  <36.883945, 35.554695, 34.967312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650467, 35.501293, 34.982700>,  <36.261337, 35.412292, 35.008347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650467, 35.501293, 34.982700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184817, 0.579264, -0.793912,
		-0.139510, 0.784184, 0.604643,
		0.972821, 0.222506, -0.064118,
		36.942314, 35.568047, 34.963467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.352074, 36.178352, 34.763401>,  <36.261337, 35.412292, 35.008347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.352074, 36.178352, 34.763401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698700, 35.991360, 34.693523>,  <36.906677, 35.879166, 34.651596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698700, 35.991360, 34.693523>,  <36.352074, 36.178352, 34.763401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698700, 35.991360, 34.693523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034698, 0.405634, -0.913376,
		0.497849, 0.785443, 0.367731,
		0.866570, -0.467483, -0.174691,
		36.958672, 35.851116, 34.641117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686634, 36.744259, 34.474873>,  <36.352074, 36.178352, 34.763401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686634, 36.744259, 34.474873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911728, 36.423573, 34.394287>,  <37.046783, 36.231163, 34.345936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911728, 36.423573, 34.394287>,  <36.686634, 36.744259, 34.474873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911728, 36.423573, 34.394287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166471, 0.348630, -0.922358,
		0.809701, 0.485506, 0.329648,
		0.562735, -0.801712, -0.201463,
		37.080547, 36.183060, 34.333847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280769, 37.019264, 34.135151>,  <36.686634, 36.744259, 34.474873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280769, 37.019264, 34.135151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262936, 36.634895, 34.025871>,  <37.252235, 36.404274, 33.960304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262936, 36.634895, 34.025871>,  <37.280769, 37.019264, 34.135151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262936, 36.634895, 34.025871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194444, 0.259897, -0.945857,
		0.979900, -0.095297, 0.175257,
		-0.044589, -0.960923, -0.273203,
		37.249557, 36.346619, 33.943909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859444, 36.884850, 33.896542>,  <37.280769, 37.019264, 34.135151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859444, 36.884850, 33.896542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615734, 36.623165, 33.717300>,  <37.469509, 36.466156, 33.609756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.615734, 36.623165, 33.717300>,  <37.859444, 36.884850, 33.896542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.615734, 36.623165, 33.717300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312786, 0.321001, -0.893937,
		0.728664, -0.684812, 0.009050,
		-0.609273, -0.654210, -0.448101,
		37.432953, 36.426903, 33.582870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244186, 36.652676, 33.385963>,  <37.859444, 36.884850, 33.896542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244186, 36.652676, 33.385963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873352, 36.555725, 33.271584>,  <37.650852, 36.497555, 33.202957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873352, 36.555725, 33.271584>,  <38.244186, 36.652676, 33.385963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873352, 36.555725, 33.271584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270771, 0.094512, -0.957993,
		0.259224, -0.965567, -0.021991,
		-0.927085, -0.242380, -0.285947,
		37.595226, 36.483013, 33.185799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387783, 36.226562, 32.857327>,  <38.244186, 36.652676, 33.385963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387783, 36.226562, 32.857327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000763, 36.315083, 32.808556>,  <37.768551, 36.368195, 32.779293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000763, 36.315083, 32.808556>,  <38.387783, 36.226562, 32.857327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000763, 36.315083, 32.808556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139489, 0.065482, -0.988056,
		-0.210674, -0.973004, -0.094226,
		-0.967553, 0.221302, -0.121928,
		37.710499, 36.381474, 32.771976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229794, 35.909431, 32.226002>,  <38.387783, 36.226562, 32.857327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229794, 35.909431, 32.226002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938595, 36.175800, 32.291214>,  <37.763878, 36.335621, 32.330341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.938595, 36.175800, 32.291214>,  <38.229794, 35.909431, 32.226002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938595, 36.175800, 32.291214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091211, 0.329756, -0.939650,
		-0.679491, -0.669187, -0.300799,
		-0.727992, 0.665920, 0.163029,
		37.720196, 36.375576, 32.340122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812599, 35.780750, 31.646936>,  <38.229794, 35.909431, 32.226002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.812599, 35.780750, 31.646936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725094, 36.146179, 31.784063>,  <37.672592, 36.365437, 31.866339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725094, 36.146179, 31.784063>,  <37.812599, 35.780750, 31.646936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725094, 36.146179, 31.784063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033111, 0.358074, -0.933106,
		-0.975216, -0.192777, -0.108582,
		-0.218761, 0.913576, 0.342816,
		37.659466, 36.420254, 31.886908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207092, 36.123913, 31.300926>,  <37.812599, 35.780750, 31.646936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207092, 36.123913, 31.300926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441963, 36.416931, 31.438681>,  <37.582886, 36.592743, 31.521334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441963, 36.416931, 31.438681>,  <37.207092, 36.123913, 31.300926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441963, 36.416931, 31.438681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038587, 0.450302, -0.892042,
		-0.808537, 0.510499, 0.292674,
		0.587179, 0.732542, 0.344388,
		37.618118, 36.636692, 31.541998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989349, 36.618496, 30.888660>,  <37.207092, 36.123913, 31.300926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989349, 36.618496, 30.888660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336105, 36.757378, 31.031744>,  <37.544159, 36.840706, 31.117594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336105, 36.757378, 31.031744>,  <36.989349, 36.618496, 30.888660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336105, 36.757378, 31.031744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165720, 0.476038, -0.863669,
		-0.470149, 0.807985, 0.355134,
		0.866889, 0.347201, 0.357708,
		37.596172, 36.861538, 31.139057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034027, 37.363708, 30.622852>,  <36.989349, 36.618496, 30.888660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034027, 37.363708, 30.622852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402889, 37.273827, 30.748800>,  <37.624207, 37.219898, 30.824369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402889, 37.273827, 30.748800>,  <37.034027, 37.363708, 30.622852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402889, 37.273827, 30.748800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386793, 0.524429, -0.758529,
		0.005317, 0.821269, 0.570517,
		0.922151, -0.224705, 0.314872,
		37.679535, 37.206413, 30.843262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399471, 37.960148, 30.722874>,  <37.034027, 37.363708, 30.622852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.399471, 37.960148, 30.722874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694824, 37.699169, 30.654631>,  <37.872036, 37.542580, 30.613686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694824, 37.699169, 30.654631>,  <37.399471, 37.960148, 30.722874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694824, 37.699169, 30.654631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310584, 0.553547, -0.772737,
		0.598612, 0.517584, 0.611368,
		0.738378, -0.652450, -0.170607,
		37.916336, 37.503433, 30.603449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985638, 38.394062, 30.563858>,  <37.399471, 37.960148, 30.722874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985638, 38.394062, 30.563858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064899, 38.030750, 30.416471>,  <38.112457, 37.812763, 30.328039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064899, 38.030750, 30.416471>,  <37.985638, 38.394062, 30.563858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064899, 38.030750, 30.416471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361463, 0.417141, -0.833869,
		0.911086, 0.032050, 0.410968,
		0.198157, -0.908277, -0.368466,
		38.124348, 37.758266, 30.305931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690418, 38.420826, 30.280069>,  <37.985638, 38.394062, 30.563858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690418, 38.420826, 30.280069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521561, 38.099575, 30.111883>,  <38.420246, 37.906826, 30.010971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.521561, 38.099575, 30.111883>,  <38.690418, 38.420826, 30.280069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521561, 38.099575, 30.111883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347691, 0.284908, -0.893274,
		0.837203, -0.523279, 0.158967,
		-0.422141, -0.803123, -0.420465,
		38.394917, 37.858639, 29.985744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197048, 38.177921, 29.818428>,  <38.690418, 38.420826, 30.280069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197048, 38.177921, 29.818428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873302, 37.992359, 29.674360>,  <38.679054, 37.881023, 29.587919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.873302, 37.992359, 29.674360>,  <39.197048, 38.177921, 29.818428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873302, 37.992359, 29.674360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251147, 0.280973, -0.926272,
		0.530898, -0.840147, -0.110902,
		-0.809365, -0.463903, -0.360169,
		38.630493, 37.853188, 29.566309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294289, 37.778709, 29.195026>,  <39.197048, 38.177921, 29.818428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294289, 37.778709, 29.195026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906254, 37.871578, 29.166683>,  <38.673431, 37.927299, 29.149677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.906254, 37.871578, 29.166683>,  <39.294289, 37.778709, 29.195026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906254, 37.871578, 29.166683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111966, 0.168963, -0.979242,
		-0.215382, -0.957887, -0.189905,
		-0.970090, 0.232174, -0.070859,
		38.615227, 37.941231, 29.145426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114773, 37.490318, 28.572876>,  <39.294289, 37.778709, 29.195026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114773, 37.490318, 28.572876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805981, 37.730835, 28.655336>,  <38.620705, 37.875145, 28.704813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805981, 37.730835, 28.655336>,  <39.114773, 37.490318, 28.572876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805981, 37.730835, 28.655336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064972, 0.247979, -0.966584,
		-0.632317, -0.759578, -0.152368,
		-0.771980, 0.601288, 0.206153,
		38.574387, 37.911221, 28.717182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474209, 37.280918, 28.192850>,  <39.114773, 37.490318, 28.572876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474209, 37.280918, 28.192850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388836, 37.664364, 28.268215>,  <38.337612, 37.894432, 28.313435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388836, 37.664364, 28.268215>,  <38.474209, 37.280918, 28.192850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388836, 37.664364, 28.268215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209066, 0.143571, -0.967305,
		-0.954326, -0.245843, 0.169772,
		-0.213431, 0.958618, 0.188411,
		38.324806, 37.951950, 28.324739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870609, 37.405418, 27.789881>,  <38.474209, 37.280918, 28.192850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870609, 37.405418, 27.789881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999153, 37.774868, 27.873455>,  <38.076279, 37.996536, 27.923599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.999153, 37.774868, 27.873455>,  <37.870609, 37.405418, 27.789881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.999153, 37.774868, 27.873455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209856, 0.284615, -0.935390,
		-0.923413, 0.256746, 0.285290,
		0.321355, 0.923621, 0.208938,
		38.095558, 38.051956, 27.936136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320133, 37.866096, 27.681805>,  <37.870609, 37.405418, 27.789881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320133, 37.866096, 27.681805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661449, 38.069897, 27.637442>,  <37.866238, 38.192177, 27.610823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.661449, 38.069897, 27.637442>,  <37.320133, 37.866096, 27.681805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661449, 38.069897, 27.637442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167595, 0.066566, -0.983606,
		-0.493766, 0.857891, 0.142190,
		0.853292, 0.509502, -0.110910,
		37.917439, 38.222748, 27.604168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118950, 38.395180, 27.241570>,  <37.320133, 37.866096, 27.681805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118950, 38.395180, 27.241570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516212, 38.349426, 27.232206>,  <37.754570, 38.321972, 27.226587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.516212, 38.349426, 27.232206>,  <37.118950, 38.395180, 27.241570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.516212, 38.349426, 27.232206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015841, 0.066629, -0.997652,
		0.115677, 0.991199, 0.064361,
		0.993161, -0.114386, -0.023409,
		37.814159, 38.315109, 27.225183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278282, 38.854416, 26.817316>,  <37.118950, 38.395180, 27.241570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278282, 38.854416, 26.817316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596672, 38.612427, 26.809015>,  <37.787704, 38.467232, 26.804035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596672, 38.612427, 26.809015>,  <37.278282, 38.854416, 26.817316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596672, 38.612427, 26.809015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020851, 0.061661, -0.997879,
		0.604970, 0.793855, 0.061695,
		0.795975, -0.604973, -0.020750,
		37.835464, 38.430935, 26.802790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565403, 39.103111, 26.217646>,  <37.278282, 38.854416, 26.817316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565403, 39.103111, 26.217646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737740, 38.751102, 26.297577>,  <37.841141, 38.539898, 26.345535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737740, 38.751102, 26.297577>,  <37.565403, 39.103111, 26.217646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737740, 38.751102, 26.297577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146910, -0.150084, -0.977697,
		0.890387, 0.450594, 0.064621,
		0.430846, -0.880023, 0.199830,
		37.866993, 38.487095, 26.357525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348473, 38.983555, 25.870239>,  <37.565403, 39.103111, 26.217646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348473, 38.983555, 25.870239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204681, 38.617050, 25.940933>,  <38.118404, 38.397148, 25.983351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204681, 38.617050, 25.940933>,  <38.348473, 38.983555, 25.870239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204681, 38.617050, 25.940933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173099, -0.251586, -0.952230,
		0.916957, -0.311715, 0.249045,
		-0.359481, -0.916263, 0.176736,
		38.096836, 38.342171, 25.993954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.698936, 38.534760, 25.477560>,  <38.348473, 38.983555, 25.870239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.698936, 38.534760, 25.477560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352623, 38.350201, 25.555054>,  <38.144836, 38.239468, 25.601551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.352623, 38.350201, 25.555054>,  <38.698936, 38.534760, 25.477560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352623, 38.350201, 25.555054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016176, -0.361141, -0.932371,
		0.500158, -0.810365, 0.305207,
		-0.865783, -0.461396, 0.193736,
		38.092888, 38.211781, 25.613174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917164, 37.920712, 25.214392>,  <38.698936, 38.534760, 25.477560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917164, 37.920712, 25.214392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520367, 37.892578, 25.256359>,  <38.282288, 37.875698, 25.281540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520367, 37.892578, 25.256359>,  <38.917164, 37.920712, 25.214392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520367, 37.892578, 25.256359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039229, -0.618036, -0.785171,
		0.120065, -0.782998, 0.610327,
		-0.991991, -0.070330, 0.104921,
		38.222771, 37.871479, 25.287836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789082, 37.237335, 25.238480>,  <38.917164, 37.920712, 25.214392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789082, 37.237335, 25.238480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451462, 37.420620, 25.127039>,  <38.248890, 37.530590, 25.060175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451462, 37.420620, 25.127039>,  <38.789082, 37.237335, 25.238480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451462, 37.420620, 25.127039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116821, -0.664159, -0.738408,
		-0.523383, -0.590707, 0.614113,
		-0.844052, 0.458211, -0.278603,
		38.198246, 37.558083, 25.043459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390865, 36.620571, 24.956161>,  <38.789082, 37.237335, 25.238480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390865, 36.620571, 24.956161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252163, 36.958080, 24.792301>,  <38.168941, 37.160583, 24.693985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252163, 36.958080, 24.792301>,  <38.390865, 36.620571, 24.956161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252163, 36.958080, 24.792301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196537, -0.492415, -0.847880,
		-0.917132, -0.213499, 0.336581,
		-0.346759, 0.843769, -0.409649,
		38.148136, 37.211212, 24.669407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838501, 36.420998, 24.611889>,  <38.390865, 36.620571, 24.956161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838501, 36.420998, 24.611889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918213, 36.775688, 24.445032>,  <37.966042, 36.988503, 24.344917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918213, 36.775688, 24.445032>,  <37.838501, 36.420998, 24.611889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918213, 36.775688, 24.445032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272974, -0.358600, -0.892687,
		-0.941155, 0.291765, 0.170590,
		0.199282, 0.886723, -0.417143,
		37.977997, 37.041706, 24.319889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255039, 36.651131, 24.184614>,  <37.838501, 36.420998, 24.611889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255039, 36.651131, 24.184614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565113, 36.871655, 24.061230>,  <37.751156, 37.003967, 23.987198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565113, 36.871655, 24.061230>,  <37.255039, 36.651131, 24.184614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565113, 36.871655, 24.061230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176863, -0.279359, -0.943757,
		-0.606474, 0.786140, -0.119049,
		0.775183, 0.551308, -0.308463,
		37.797668, 37.037048, 23.968691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029442, 37.164413, 23.798559>,  <37.255039, 36.651131, 24.184614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029442, 37.164413, 23.798559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415554, 37.131069, 23.699533>,  <37.647221, 37.111061, 23.640118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415554, 37.131069, 23.699533>,  <37.029442, 37.164413, 23.798559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415554, 37.131069, 23.699533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254100, -0.079833, -0.963878,
		0.060585, 0.993317, -0.098243,
		0.965278, -0.083360, -0.247566,
		37.705139, 37.106060, 23.625263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124336, 37.600479, 23.260662>,  <37.029442, 37.164413, 23.798559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124336, 37.600479, 23.260662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445690, 37.362743, 23.246071>,  <37.638504, 37.220104, 23.237316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445690, 37.362743, 23.246071>,  <37.124336, 37.600479, 23.260662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445690, 37.362743, 23.246071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046622, -0.001711, -0.998911,
		0.593627, 0.804215, -0.029084,
		0.803389, -0.594337, -0.036478,
		37.686707, 37.184441, 23.235128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343006, 37.813904, 22.607073>,  <37.124336, 37.600479, 23.260662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343006, 37.813904, 22.607073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522812, 37.467255, 22.693707>,  <37.630695, 37.259266, 22.745686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.522812, 37.467255, 22.693707>,  <37.343006, 37.813904, 22.607073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522812, 37.467255, 22.693707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080450, -0.202198, -0.976035,
		0.889643, 0.456165, -0.021171,
		0.449514, -0.866619, 0.216582,
		37.657665, 37.207268, 22.758680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764938, 37.826164, 22.040630>,  <37.343006, 37.813904, 22.607073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764938, 37.826164, 22.040630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787010, 37.456921, 22.192850>,  <37.800255, 37.235374, 22.284182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.787010, 37.456921, 22.192850>,  <37.764938, 37.826164, 22.040630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787010, 37.456921, 22.192850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094724, -0.374573, -0.922346,
		0.993973, 0.086943, 0.066771,
		0.055181, -0.923112, 0.380551,
		37.803566, 37.179989, 22.307016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269958, 37.459667, 21.668818>,  <37.764938, 37.826164, 22.040630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269958, 37.459667, 21.668818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025944, 37.171246, 21.800236>,  <37.879536, 36.998192, 21.879086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025944, 37.171246, 21.800236>,  <38.269958, 37.459667, 21.668818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025944, 37.171246, 21.800236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192945, -0.266978, -0.944190,
		0.768524, -0.639380, 0.023742,
		-0.610035, -0.721052, 0.328544,
		37.842934, 36.954929, 21.898800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371647, 36.935246, 21.226034>,  <38.269958, 37.459667, 21.668818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371647, 36.935246, 21.226034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027683, 36.825996, 21.398529>,  <37.821304, 36.760445, 21.502026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.027683, 36.825996, 21.398529>,  <38.371647, 36.935246, 21.226034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027683, 36.825996, 21.398529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368639, -0.252081, -0.894741,
		0.353082, -0.928363, 0.116082,
		-0.859906, -0.273125, 0.431236,
		37.769711, 36.744061, 21.527901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602356, 36.363487, 20.649736>,  <38.371647, 36.935246, 21.226034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602356, 36.363487, 20.649736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748856, 35.993023, 20.613764>,  <38.836758, 35.770744, 20.592180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.748856, 35.993023, 20.613764>,  <38.602356, 36.363487, 20.649736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748856, 35.993023, 20.613764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444474, 0.089217, 0.891338,
		-0.817497, -0.366428, 0.444329,
		0.366253, -0.926159, -0.089933,
		38.858730, 35.715176, 20.586784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430607, 36.009914, 21.265305>,  <38.602356, 36.363487, 20.649736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430607, 36.009914, 21.265305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755669, 35.818756, 21.131910>,  <38.950706, 35.704060, 21.051874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755669, 35.818756, 21.131910>,  <38.430607, 36.009914, 21.265305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755669, 35.818756, 21.131910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366468, -0.025849, 0.930072,
		-0.453098, -0.878036, 0.154127,
		0.812652, -0.477896, -0.333484,
		38.999466, 35.675388, 21.031864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546185, 35.440239, 21.699427>,  <38.430607, 36.009914, 21.265305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546185, 35.440239, 21.699427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899876, 35.499187, 21.522152>,  <39.112091, 35.534557, 21.415787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899876, 35.499187, 21.522152>,  <38.546185, 35.440239, 21.699427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899876, 35.499187, 21.522152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465612, -0.203801, 0.861203,
		0.036596, -0.967857, -0.248826,
		0.884232, 0.147373, -0.443188,
		39.165146, 35.543400, 21.389196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947170, 34.840549, 21.898808>,  <38.546185, 35.440239, 21.699427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947170, 34.840549, 21.898808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201572, 35.133106, 21.800373>,  <39.354214, 35.308640, 21.741312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.201572, 35.133106, 21.800373>,  <38.947170, 34.840549, 21.898808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201572, 35.133106, 21.800373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497541, -0.144894, 0.855254,
		0.589872, -0.666384, -0.456052,
		0.636006, 0.731395, -0.246084,
		39.392376, 35.352524, 21.726547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577763, 34.507111, 21.964193>,  <38.947170, 34.840549, 21.898808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577763, 34.507111, 21.964193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643078, 34.901512, 21.977650>,  <39.682266, 35.138153, 21.985723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643078, 34.901512, 21.977650>,  <39.577763, 34.507111, 21.964193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643078, 34.901512, 21.977650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499653, -0.112055, 0.858947,
		0.850695, -0.123450, -0.510958,
		0.163293, 0.986004, 0.033642,
		39.692066, 35.197315, 21.987741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.250778, 34.589848, 22.092714>,  <39.577763, 34.507111, 21.964193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.250778, 34.589848, 22.092714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125847, 34.959370, 22.181297>,  <40.050888, 35.181084, 22.234447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.125847, 34.959370, 22.181297>,  <40.250778, 34.589848, 22.092714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.125847, 34.959370, 22.181297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670420, 0.049182, 0.740350,
		0.673045, 0.379699, -0.634696,
		-0.312325, 0.923802, 0.221456,
		40.032150, 35.236511, 22.247734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816471, 34.903805, 22.441740>,  <40.250778, 34.589848, 22.092714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816471, 34.903805, 22.441740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492905, 35.108715, 22.557146>,  <40.298767, 35.231659, 22.626389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.492905, 35.108715, 22.557146>,  <40.816471, 34.903805, 22.441740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492905, 35.108715, 22.557146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410105, 0.140010, 0.901228,
		0.421278, 0.847334, -0.323340,
		-0.808912, 0.512271, 0.288513,
		40.250233, 35.262398, 22.643700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112358, 35.467617, 22.777637>,  <40.816471, 34.903805, 22.441740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112358, 35.467617, 22.777637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734432, 35.448364, 22.907263>,  <40.507679, 35.436813, 22.985039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734432, 35.448364, 22.907263>,  <41.112358, 35.467617, 22.777637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734432, 35.448364, 22.907263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310669, 0.182409, 0.932851,
		-0.104008, 0.982044, -0.157390,
		-0.944810, -0.048127, 0.324063,
		40.450989, 35.433926, 23.004482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965538, 36.076618, 23.178818>,  <41.112358, 35.467617, 22.777637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965538, 36.076618, 23.178818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710651, 35.788399, 23.288185>,  <40.557720, 35.615467, 23.353806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710651, 35.788399, 23.288185>,  <40.965538, 36.076618, 23.178818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710651, 35.788399, 23.288185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178964, 0.206728, 0.961891,
		-0.749616, 0.661867, -0.002778,
		-0.637219, -0.720552, 0.273418,
		40.519485, 35.572231, 23.370211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569584, 36.455212, 23.608030>,  <40.965538, 36.076618, 23.178818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569584, 36.455212, 23.608030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486008, 36.077148, 23.708441>,  <40.435863, 35.850311, 23.768686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.486008, 36.077148, 23.708441>,  <40.569584, 36.455212, 23.608030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.486008, 36.077148, 23.708441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053060, 0.245357, 0.967980,
		-0.976488, 0.215569, -0.001115,
		-0.208940, -0.945162, 0.251026,
		40.423325, 35.793598, 23.783749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185463, 36.580132, 24.248688>,  <40.569584, 36.455212, 23.608030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185463, 36.580132, 24.248688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269012, 36.189098, 24.238148>,  <40.319141, 35.954479, 24.231823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.269012, 36.189098, 24.238148>,  <40.185463, 36.580132, 24.248688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269012, 36.189098, 24.238148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221551, 0.021058, 0.974921,
		-0.952516, -0.209475, 0.220984,
		0.208875, -0.977587, -0.026351,
		40.331676, 35.895821, 24.230242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826363, 36.399368, 24.794455>,  <40.185463, 36.580132, 24.248688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826363, 36.399368, 24.794455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086552, 36.098896, 24.749531>,  <40.242664, 35.918613, 24.722576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086552, 36.098896, 24.749531>,  <39.826363, 36.399368, 24.794455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086552, 36.098896, 24.749531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178618, 0.007573, 0.983889,
		-0.738227, -0.660054, 0.139100,
		0.650474, -0.751180, -0.112307,
		40.281693, 35.873543, 24.715839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560768, 35.738777, 25.121313>,  <39.826363, 36.399368, 24.794455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560768, 35.738777, 25.121313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959480, 35.762478, 25.099737>,  <40.198708, 35.776699, 25.086792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959480, 35.762478, 25.099737>,  <39.560768, 35.738777, 25.121313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959480, 35.762478, 25.099737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057607, -0.062027, 0.996410,
		0.055691, -0.996314, -0.065241,
		0.996785, 0.059249, -0.053940,
		40.258514, 35.780251, 25.083555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851456, 35.170017, 25.424606>,  <39.560768, 35.738777, 25.121313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851456, 35.170017, 25.424606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159149, 35.425297, 25.412079>,  <40.343765, 35.578465, 25.404562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159149, 35.425297, 25.412079>,  <39.851456, 35.170017, 25.424606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159149, 35.425297, 25.412079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196265, -0.189348, 0.962095,
		0.608081, -0.746221, -0.270909,
		0.769232, 0.638202, -0.031318,
		40.389919, 35.616756, 25.402683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470390, 34.858055, 25.627258>,  <39.851456, 35.170017, 25.424606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470390, 34.858055, 25.627258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587395, 35.236282, 25.684303>,  <40.657597, 35.463219, 25.718531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587395, 35.236282, 25.684303>,  <40.470390, 34.858055, 25.627258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587395, 35.236282, 25.684303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243987, -0.217998, 0.944959,
		0.924612, -0.241615, -0.294473,
		0.292511, 0.945568, 0.142612,
		40.675148, 35.519955, 25.727087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.069981, 34.772503, 26.056124>,  <40.470390, 34.858055, 25.627258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.069981, 34.772503, 26.056124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965153, 35.154789, 26.109686>,  <40.902256, 35.384159, 26.141823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965153, 35.154789, 26.109686>,  <41.069981, 34.772503, 26.056124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965153, 35.154789, 26.109686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177836, -0.088555, 0.980068,
		0.948523, 0.280656, -0.146753,
		-0.262066, 0.955715, 0.133907,
		40.886532, 35.441502, 26.149858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490475, 34.970333, 26.590456>,  <41.069981, 34.772503, 26.056124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490475, 34.970333, 26.590456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221973, 35.266823, 26.589207>,  <41.060875, 35.444717, 26.588457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.221973, 35.266823, 26.589207>,  <41.490475, 34.970333, 26.590456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221973, 35.266823, 26.589207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055665, 0.054612, 0.996955,
		0.739137, 0.669033, -0.077918,
		-0.671251, 0.741224, -0.003124,
		41.020599, 35.489189, 26.588270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.678837, 35.462223, 27.120024>,  <41.490475, 34.970333, 26.590456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.678837, 35.462223, 27.120024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290733, 35.555668, 27.094643>,  <41.057873, 35.611736, 27.079414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.290733, 35.555668, 27.094643>,  <41.678837, 35.462223, 27.120024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.290733, 35.555668, 27.094643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032233, 0.135113, 0.990306,
		0.239923, 0.962896, -0.123564,
		-0.970257, 0.233614, -0.063454,
		40.999657, 35.625751, 27.075607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556072, 35.862835, 27.743349>,  <41.678837, 35.462223, 27.120024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556072, 35.862835, 27.743349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198029, 35.750057, 27.605202>,  <40.983200, 35.682392, 27.522314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.198029, 35.750057, 27.605202>,  <41.556072, 35.862835, 27.743349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.198029, 35.750057, 27.605202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364881, 0.018142, 0.930878,
		-0.256191, 0.959259, -0.119115,
		-0.895114, -0.281945, -0.345367,
		40.929493, 35.665474, 27.501591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089924, 36.428001, 28.026106>,  <41.556072, 35.862835, 27.743349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089924, 36.428001, 28.026106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923126, 36.071560, 27.954508>,  <40.823048, 35.857693, 27.911549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.923126, 36.071560, 27.954508>,  <41.089924, 36.428001, 28.026106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923126, 36.071560, 27.954508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466487, 0.040809, 0.883586,
		-0.780065, 0.451954, -0.432708,
		-0.416999, -0.891107, -0.178997,
		40.798027, 35.804226, 27.900808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319069, 36.423954, 28.162022>,  <41.089924, 36.428001, 28.026106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319069, 36.423954, 28.162022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426300, 36.040783, 28.203045>,  <40.490639, 35.810883, 28.227659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426300, 36.040783, 28.203045>,  <40.319069, 36.423954, 28.162022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426300, 36.040783, 28.203045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417321, -0.019515, 0.908549,
		-0.868319, -0.286361, -0.404993,
		0.268076, -0.957923, 0.102559,
		40.506721, 35.753407, 28.233812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720821, 36.262272, 28.434561>,  <40.319069, 36.423954, 28.162022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720821, 36.262272, 28.434561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984356, 35.968872, 28.501387>,  <40.142475, 35.792831, 28.541483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.984356, 35.968872, 28.501387>,  <39.720821, 36.262272, 28.434561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984356, 35.968872, 28.501387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408341, -0.162174, 0.898308,
		-0.631816, -0.660058, -0.406365,
		0.658837, -0.733501, 0.167064,
		40.182007, 35.748821, 28.551506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315826, 35.665447, 28.567894>,  <39.720821, 36.262272, 28.434561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315826, 35.665447, 28.567894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674480, 35.599350, 28.732206>,  <39.889671, 35.559692, 28.830793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674480, 35.599350, 28.732206>,  <39.315826, 35.665447, 28.567894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674480, 35.599350, 28.732206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434823, -0.153651, 0.887311,
		-0.083494, -0.974213, -0.209615,
		0.896637, -0.165230, 0.410781,
		39.943470, 35.549778, 28.855440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167767, 35.293297, 29.081942>,  <39.315826, 35.665447, 28.567894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167767, 35.293297, 29.081942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539024, 35.391754, 29.193630>,  <39.761780, 35.450829, 29.260643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.539024, 35.391754, 29.193630>,  <39.167767, 35.293297, 29.081942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539024, 35.391754, 29.193630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281911, -0.024993, 0.959115,
		0.243055, -0.968912, 0.046193,
		0.928144, 0.246140, 0.279221,
		39.817467, 35.465595, 29.277397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322891, 34.845718, 29.645277>,  <39.167767, 35.293297, 29.081942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322891, 34.845718, 29.645277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589394, 35.143074, 29.668854>,  <39.749294, 35.321487, 29.683001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.589394, 35.143074, 29.668854>,  <39.322891, 34.845718, 29.645277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589394, 35.143074, 29.668854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139734, 0.046814, 0.989082,
		0.732512, -0.667220, 0.135067,
		0.666258, 0.743387, 0.058942,
		39.789272, 35.366089, 29.686537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.697289, 34.585522, 30.151829>,  <39.322891, 34.845718, 29.645277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.697289, 34.585522, 30.151829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765633, 34.979614, 30.147360>,  <39.806641, 35.216068, 30.144678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765633, 34.979614, 30.147360>,  <39.697289, 34.585522, 30.151829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765633, 34.979614, 30.147360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139355, -0.012940, 0.990158,
		0.975390, -0.170740, -0.139508,
		0.170865, 0.985231, -0.011172,
		39.816891, 35.275185, 30.144009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244804, 34.637108, 30.580679>,  <39.697289, 34.585522, 30.151829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244804, 34.637108, 30.580679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086811, 35.004402, 30.569214>,  <39.992016, 35.224781, 30.562334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086811, 35.004402, 30.569214>,  <40.244804, 34.637108, 30.580679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086811, 35.004402, 30.569214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081620, 0.066151, 0.994466,
		0.915054, 0.390462, -0.101075,
		-0.394987, 0.918239, -0.028662,
		39.968315, 35.279873, 30.560616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669903, 35.179932, 30.796190>,  <40.244804, 34.637108, 30.580679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669903, 35.179932, 30.796190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302353, 35.308937, 30.887093>,  <40.081821, 35.386341, 30.941633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302353, 35.308937, 30.887093>,  <40.669903, 35.179932, 30.796190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302353, 35.308937, 30.887093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232062, -0.024024, 0.972404,
		0.319077, 0.946259, -0.052769,
		-0.918878, 0.322517, 0.227256,
		40.026688, 35.405693, 30.955269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811829, 35.492344, 31.439135>,  <40.669903, 35.179932, 30.796190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811829, 35.492344, 31.439135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412933, 35.494579, 31.409498>,  <40.173595, 35.495918, 31.391716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412933, 35.494579, 31.409498>,  <40.811829, 35.492344, 31.439135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412933, 35.494579, 31.409498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074266, -0.044868, 0.996229,
		0.002241, 0.998977, 0.045158,
		-0.997236, 0.005587, -0.074089,
		40.113762, 35.496254, 31.387272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.536495, 35.984879, 31.881727>,  <40.811829, 35.492344, 31.439135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.536495, 35.984879, 31.881727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229614, 35.734489, 31.825781>,  <40.045486, 35.584255, 31.792213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.229614, 35.734489, 31.825781>,  <40.536495, 35.984879, 31.881727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229614, 35.734489, 31.825781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219108, 0.050831, 0.974376,
		-0.602826, 0.778184, -0.176153,
		-0.767198, -0.625976, -0.139864,
		39.999454, 35.546696, 31.783821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916920, 36.252003, 32.300888>,  <40.536495, 35.984879, 31.881727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916920, 36.252003, 32.300888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824234, 35.869011, 32.232128>,  <39.768623, 35.639217, 32.190872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824234, 35.869011, 32.232128>,  <39.916920, 36.252003, 32.300888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824234, 35.869011, 32.232128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190276, -0.128687, 0.973260,
		-0.953993, 0.258227, -0.152365,
		-0.231715, -0.957475, -0.171900,
		39.754719, 35.581768, 32.180557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314098, 36.133892, 32.715370>,  <39.916920, 36.252003, 32.300888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314098, 36.133892, 32.715370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456371, 35.766621, 32.645588>,  <39.541737, 35.546257, 32.603718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456371, 35.766621, 32.645588>,  <39.314098, 36.133892, 32.715370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456371, 35.766621, 32.645588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129597, -0.233309, 0.963728,
		-0.925578, -0.320172, -0.201978,
		0.355682, -0.918181, -0.174453,
		39.563076, 35.491165, 32.593250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905609, 35.599648, 33.116417>,  <39.314098, 36.133892, 32.715370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905609, 35.599648, 33.116417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268734, 35.446491, 33.047981>,  <39.486610, 35.354595, 33.006920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268734, 35.446491, 33.047981>,  <38.905609, 35.599648, 33.116417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268734, 35.446491, 33.047981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021324, -0.449571, 0.892990,
		-0.418830, -0.807020, -0.416292,
		0.907814, -0.382888, -0.171085,
		39.541077, 35.331623, 32.996655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.864986, 35.098812, 33.533699>,  <38.905609, 35.599648, 33.116417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.864986, 35.098812, 33.533699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254597, 35.117634, 33.445107>,  <39.488365, 35.128925, 33.391953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.254597, 35.117634, 33.445107>,  <38.864986, 35.098812, 33.533699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254597, 35.117634, 33.445107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221629, -0.398357, 0.890052,
		-0.046351, -0.916023, -0.398439,
		0.974029, 0.047051, -0.221482,
		39.546806, 35.131748, 33.378662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.079247, 34.414101, 33.710934>,  <38.864986, 35.098812, 33.533699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.079247, 34.414101, 33.710934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377560, 34.679722, 33.689636>,  <39.556549, 34.839096, 33.676857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377560, 34.679722, 33.689636>,  <39.079247, 34.414101, 33.710934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377560, 34.679722, 33.689636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300031, -0.263442, 0.916831,
		0.594799, -0.699734, -0.395709,
		0.745785, 0.664056, -0.053247,
		39.601295, 34.878937, 33.673660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610638, 34.038883, 33.980793>,  <39.079247, 34.414101, 33.710934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610638, 34.038883, 33.980793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726795, 34.421646, 33.980415>,  <39.796490, 34.651302, 33.980190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726795, 34.421646, 33.980415>,  <39.610638, 34.038883, 33.980793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726795, 34.421646, 33.980415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300014, -0.090111, 0.949669,
		0.908660, -0.276061, -0.313253,
		0.290394, 0.956907, -0.000942,
		39.813915, 34.708717, 33.980133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323978, 34.045357, 34.164524>,  <39.610638, 34.038883, 33.980793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323978, 34.045357, 34.164524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150364, 34.391224, 34.265690>,  <40.046196, 34.598743, 34.326389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150364, 34.391224, 34.265690>,  <40.323978, 34.045357, 34.164524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150364, 34.391224, 34.265690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279844, -0.137450, 0.950155,
		0.856328, 0.483182, -0.182312,
		-0.434039, 0.864663, 0.252918,
		40.020153, 34.650623, 34.341564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780842, 34.318584, 34.638618>,  <40.323978, 34.045357, 34.164524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780842, 34.318584, 34.638618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429634, 34.504745, 34.683300>,  <40.218910, 34.616444, 34.710110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429634, 34.504745, 34.683300>,  <40.780842, 34.318584, 34.638618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429634, 34.504745, 34.683300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152116, 0.050066, 0.987094,
		0.453804, 0.883682, -0.114754,
		-0.878022, 0.465403, 0.111702,
		40.166229, 34.644367, 34.716812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940552, 34.974575, 35.015102>,  <40.780842, 34.318584, 34.638618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.940552, 34.974575, 35.015102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568607, 34.843998, 35.082981>,  <40.345440, 34.765652, 35.123711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568607, 34.843998, 35.082981>,  <40.940552, 34.974575, 35.015102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568607, 34.843998, 35.082981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177115, 0.007113, 0.984165,
		-0.322479, 0.945191, 0.051203,
		-0.929859, -0.326441, 0.169701,
		40.289650, 34.746067, 35.133892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642078, 35.361176, 35.622917>,  <40.940552, 34.974575, 35.015102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642078, 35.361176, 35.622917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431595, 35.022087, 35.596195>,  <40.305305, 34.818634, 35.580162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431595, 35.022087, 35.596195>,  <40.642078, 35.361176, 35.622917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431595, 35.022087, 35.596195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110402, -0.146008, 0.983104,
		-0.843157, 0.509944, 0.170422,
		-0.526211, -0.847726, -0.066809,
		40.273731, 34.767769, 35.576153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.325630, 35.322079, 36.318401>,  <40.642078, 35.361176, 35.622917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.325630, 35.322079, 36.318401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274910, 34.966415, 36.142529>,  <40.244476, 34.753017, 36.037006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.274910, 34.966415, 36.142529>,  <40.325630, 35.322079, 36.318401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.274910, 34.966415, 36.142529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074827, -0.450568, 0.889601,
		-0.989102, 0.079904, 0.123666,
		-0.126803, -0.889159, -0.439679,
		40.236870, 34.699669, 36.010624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764614, 35.006344, 36.647831>,  <40.325630, 35.322079, 36.318401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764614, 35.006344, 36.647831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994160, 34.709373, 36.509563>,  <40.131886, 34.531189, 36.426605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.994160, 34.709373, 36.509563>,  <39.764614, 35.006344, 36.647831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994160, 34.709373, 36.509563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045123, -0.392776, 0.918527,
		-0.817708, -0.542704, -0.191898,
		0.573862, -0.742428, -0.345665,
		40.166317, 34.486645, 36.405865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402325, 34.424076, 36.838474>,  <39.764614, 35.006344, 36.647831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402325, 34.424076, 36.838474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786709, 34.325287, 36.788567>,  <40.017338, 34.266014, 36.758621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786709, 34.325287, 36.788567>,  <39.402325, 34.424076, 36.838474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786709, 34.325287, 36.788567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001098, -0.454322, 0.890837,
		-0.276699, -0.855918, -0.436855,
		0.960956, -0.246974, -0.124771,
		40.074997, 34.251194, 36.751137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457165, 33.702965, 36.994179>,  <39.402325, 34.424076, 36.838474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457165, 33.702965, 36.994179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816280, 33.870003, 37.050163>,  <40.031750, 33.970226, 37.083752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816280, 33.870003, 37.050163>,  <39.457165, 33.702965, 36.994179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816280, 33.870003, 37.050163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027286, -0.369903, 0.928670,
		0.439580, -0.829931, -0.343489,
		0.897789, 0.417597, 0.139957,
		40.085617, 33.995281, 37.092152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948708, 33.187916, 37.197395>,  <39.457165, 33.702965, 36.994179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948708, 33.187916, 37.197395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104500, 33.531227, 37.331066>,  <40.197975, 33.737213, 37.411270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104500, 33.531227, 37.331066>,  <39.948708, 33.187916, 37.197395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104500, 33.531227, 37.331066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129108, -0.410119, 0.902847,
		0.911943, -0.308492, -0.270542,
		0.389476, 0.858274, 0.334176,
		40.221344, 33.788708, 37.431320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499649, 32.968864, 37.591827>,  <39.948708, 33.187916, 37.197395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499649, 32.968864, 37.591827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458462, 33.344261, 37.723667>,  <40.433750, 33.569500, 37.802773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458462, 33.344261, 37.723667>,  <40.499649, 32.968864, 37.591827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458462, 33.344261, 37.723667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270507, -0.292453, 0.917222,
		0.957196, 0.183600, -0.223756,
		-0.102963, 0.938489, 0.329600,
		40.427574, 33.625809, 37.822548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143818, 33.110550, 37.878834>,  <40.499649, 32.968864, 37.591827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143818, 33.110550, 37.878834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838955, 33.299026, 38.056416>,  <40.656036, 33.412113, 38.162964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838955, 33.299026, 38.056416>,  <41.143818, 33.110550, 37.878834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838955, 33.299026, 38.056416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255844, -0.410722, 0.875130,
		0.594695, 0.780569, 0.192483,
		-0.762156, 0.471190, 0.443958,
		40.610310, 33.440384, 38.189602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.203445, 32.907391, 38.549931>,  <41.143818, 33.110550, 37.878834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.203445, 32.907391, 38.549931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894382, 33.152771, 38.615273>,  <40.708946, 33.299999, 38.654476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894382, 33.152771, 38.615273>,  <41.203445, 32.907391, 38.549931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894382, 33.152771, 38.615273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092517, -0.363387, 0.927033,
		0.628049, 0.701163, 0.337527,
		-0.772654, 0.613449, 0.163355,
		40.662586, 33.336807, 38.664280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352337, 33.022755, 39.119743>,  <41.203445, 32.907391, 38.549931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352337, 33.022755, 39.119743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980289, 33.168533, 39.101582>,  <40.757061, 33.256001, 39.090683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980289, 33.168533, 39.101582>,  <41.352337, 33.022755, 39.119743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980289, 33.168533, 39.101582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176178, -0.334270, 0.925864,
		0.322252, 0.869160, 0.375118,
		-0.930115, 0.364449, -0.045408,
		40.701256, 33.277866, 39.087959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199684, 33.587727, 39.547039>,  <41.352337, 33.022755, 39.119743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199684, 33.587727, 39.547039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893543, 33.330284, 39.546398>,  <40.709858, 33.175819, 39.546013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.893543, 33.330284, 39.546398>,  <41.199684, 33.587727, 39.547039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893543, 33.330284, 39.546398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286215, -0.342589, 0.894826,
		-0.576466, 0.684400, 0.446412,
		-0.765355, -0.643607, -0.001605,
		40.663937, 33.137203, 39.545918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048409, 33.545143, 40.185108>,  <41.199684, 33.587727, 39.547039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048409, 33.545143, 40.185108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881359, 33.209755, 40.045078>,  <40.781132, 33.008522, 39.961060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.881359, 33.209755, 40.045078>,  <41.048409, 33.545143, 40.185108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.881359, 33.209755, 40.045078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054868, -0.407853, 0.911398,
		-0.906964, 0.361409, 0.216332,
		-0.417619, -0.838474, -0.350078,
		40.756073, 32.958214, 39.940056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612652, 33.272228, 40.626381>,  <41.048409, 33.545143, 40.185108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612652, 33.272228, 40.626381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732197, 32.945080, 40.429699>,  <40.803925, 32.748791, 40.311687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732197, 32.945080, 40.429699>,  <40.612652, 33.272228, 40.626381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732197, 32.945080, 40.429699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081111, -0.491623, 0.867023,
		-0.950844, -0.299000, -0.080588,
		0.298859, -0.817867, -0.491708,
		40.821854, 32.699718, 40.282185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.071564, 32.696190, 40.831120>,  <40.612652, 33.272228, 40.626381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.071564, 32.696190, 40.831120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443031, 32.592453, 40.725044>,  <40.665913, 32.530212, 40.661400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443031, 32.592453, 40.725044>,  <40.071564, 32.696190, 40.831120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443031, 32.592453, 40.725044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130565, -0.440641, 0.888137,
		-0.347181, -0.859407, -0.375347,
		0.928665, -0.259337, -0.265191,
		40.721630, 32.514652, 40.645489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271187, 32.015533, 41.128765>,  <40.071564, 32.696190, 40.831120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271187, 32.015533, 41.128765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629536, 32.163158, 41.029804>,  <40.844543, 32.251736, 40.970428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629536, 32.163158, 41.029804>,  <40.271187, 32.015533, 41.128765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629536, 32.163158, 41.029804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347288, -0.234309, 0.908015,
		0.277148, -0.899383, -0.338082,
		0.895868, 0.369066, -0.247407,
		40.898296, 32.273880, 40.955582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678097, 31.764938, 41.526955>,  <40.271187, 32.015533, 41.128765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678097, 31.764938, 41.526955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952557, 32.034775, 41.418053>,  <41.117233, 32.196678, 41.352711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.952557, 32.034775, 41.418053>,  <40.678097, 31.764938, 41.526955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.952557, 32.034775, 41.418053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481281, -0.140318, 0.865262,
		0.545494, -0.724734, -0.420947,
		0.686152, 0.674590, -0.272258,
		41.158401, 32.237152, 41.336376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.306465, 31.478514, 41.620705>,  <40.678097, 31.764938, 41.526955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.306465, 31.478514, 41.620705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411148, 31.862505, 41.580814>,  <41.473957, 32.092899, 41.556881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.411148, 31.862505, 41.580814>,  <41.306465, 31.478514, 41.620705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.411148, 31.862505, 41.580814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607517, -0.083560, 0.789899,
		0.749954, -0.267311, -0.605073,
		0.261709, 0.959981, -0.099730,
		41.489662, 32.150497, 41.550896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072548, 31.458447, 41.494328>,  <41.306465, 31.478514, 41.620705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072548, 31.458447, 41.494328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937874, 31.792841, 41.667660>,  <41.857071, 31.993477, 41.771660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.937874, 31.792841, 41.667660>,  <42.072548, 31.458447, 41.494328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.937874, 31.792841, 41.667660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610497, -0.156566, 0.776390,
		0.716894, 0.525944, -0.457652,
		-0.336685, 0.835984, 0.433329,
		41.836868, 32.043636, 41.797657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744392, 31.730612, 41.700089>,  <42.072548, 31.458447, 41.494328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744392, 31.730612, 41.700089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464684, 31.925728, 41.909115>,  <42.296860, 32.042797, 42.034531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464684, 31.925728, 41.909115>,  <42.744392, 31.730612, 41.700089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464684, 31.925728, 41.909115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539030, -0.120354, 0.833644,
		0.469538, 0.864623, -0.178774,
		-0.699272, 0.487792, 0.522568,
		42.254902, 32.072067, 42.065884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.126289, 32.217930, 42.138474>,  <42.744392, 31.730612, 41.700089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.126289, 32.217930, 42.138474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.775204, 32.160030, 42.321190>,  <42.564552, 32.125290, 42.430820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.775204, 32.160030, 42.321190>,  <43.126289, 32.217930, 42.138474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.775204, 32.160030, 42.321190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469803, -0.072320, 0.879804,
		-0.094313, 0.986822, 0.131479,
		-0.877719, -0.144746, 0.456792,
		42.511887, 32.116608, 42.458229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.056477, 32.699810, 42.666950>,  <43.126289, 32.217930, 42.138474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.056477, 32.699810, 42.666950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805275, 32.409355, 42.778900>,  <42.654552, 32.235081, 42.846069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805275, 32.409355, 42.778900>,  <43.056477, 32.699810, 42.666950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805275, 32.409355, 42.778900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469204, -0.066386, 0.880591,
		-0.620853, 0.684333, 0.382399,
		-0.628004, -0.726141, 0.279876,
		42.616875, 32.191513, 42.862862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951145, 32.866169, 43.361465>,  <43.056477, 32.699810, 42.666950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951145, 32.866169, 43.361465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873329, 32.476128, 43.318901>,  <42.826641, 32.242104, 43.293362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873329, 32.476128, 43.318901>,  <42.951145, 32.866169, 43.361465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873329, 32.476128, 43.318901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421171, -0.181011, 0.888735,
		-0.885872, 0.128078, 0.445900,
		-0.194540, -0.975106, -0.106410,
		42.814968, 32.183598, 43.286980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.274719, 32.711792, 43.608353>,  <42.951145, 32.866169, 43.361465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.274719, 32.711792, 43.608353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611309, 32.495754, 43.602375>,  <42.813263, 32.366131, 43.598789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611309, 32.495754, 43.602375>,  <42.274719, 32.711792, 43.608353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611309, 32.495754, 43.602375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169540, 0.237674, 0.956435,
		-0.513012, -0.807347, 0.291564,
		0.841472, -0.540094, -0.014948,
		42.863750, 32.333725, 43.597889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.290680, 32.247314, 44.274445>,  <42.274719, 32.711792, 43.608353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.290680, 32.247314, 44.274445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657291, 32.304932, 44.125191>,  <42.877258, 32.339500, 44.035641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.657291, 32.304932, 44.125191>,  <42.290680, 32.247314, 44.274445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657291, 32.304932, 44.125191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340036, 0.210595, 0.916529,
		0.210595, -0.966904, 0.144038,
		-0.916529, -0.144038, 0.373133,
		42.932251, 32.348145, 44.013252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926395, 31.910839, 44.492378>,  <42.290680, 32.247314, 44.274445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926395, 31.910839, 44.492378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.152721, 32.233963, 44.426292>,  <43.288517, 32.427837, 44.386642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.152721, 32.233963, 44.426292>,  <42.926395, 31.910839, 44.492378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.152721, 32.233963, 44.426292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411164, -0.102749, 0.905752,
		0.714699, -0.580420, -0.390278,
		0.565818, 0.807808, -0.165214,
		43.322468, 32.476307, 44.376728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.373837, 31.616287, 43.763908>,  <42.926395, 31.910839, 44.492378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.373837, 31.616287, 43.763908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036827, 31.788792, 43.893005>,  <42.834621, 31.892296, 43.970463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036827, 31.788792, 43.893005>,  <43.373837, 31.616287, 43.763908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036827, 31.788792, 43.893005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463353, -0.274694, -0.842525,
		-0.274694, -0.859392, 0.431263,
		0.842525, -0.431263, -0.322745,
		42.784069, 31.918171, 43.989830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891060, 31.043739, 43.551228>,  <43.373837, 31.616287, 43.763908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891060, 31.043739, 43.551228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734596, 31.406898, 43.611515>,  <42.640720, 31.624794, 43.647690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.734596, 31.406898, 43.611515>,  <42.891060, 31.043739, 43.551228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.734596, 31.406898, 43.611515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333994, 0.012570, -0.942492,
		-0.857581, -0.419002, 0.298316,
		-0.391156, 0.907898, 0.150723,
		42.617249, 31.679268, 43.656731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.380054, 31.077736, 43.084934>,  <42.891060, 31.043739, 43.551228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.380054, 31.077736, 43.084934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374905, 31.446714, 43.239300>,  <42.371815, 31.668100, 43.331921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374905, 31.446714, 43.239300>,  <42.380054, 31.077736, 43.084934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374905, 31.446714, 43.239300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413211, 0.346543, -0.842119,
		-0.910544, -0.170306, 0.376703,
		-0.012874, 0.922444, 0.385915,
		42.371044, 31.723448, 43.355076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730228, 31.333807, 43.127884>,  <42.380054, 31.077736, 43.084934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730228, 31.333807, 43.127884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001682, 31.619356, 43.058784>,  <42.164555, 31.790686, 43.017326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.001682, 31.619356, 43.058784>,  <41.730228, 31.333807, 43.127884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001682, 31.619356, 43.058784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448949, 0.217032, -0.866799,
		-0.581295, 0.665792, 0.467779,
		0.678632, 0.713875, -0.172747,
		42.205273, 31.833519, 43.006962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.395157, 31.973047, 43.024467>,  <41.730228, 31.333807, 43.127884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.395157, 31.973047, 43.024467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744965, 32.028999, 42.838715>,  <41.954849, 32.062572, 42.727264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.744965, 32.028999, 42.838715>,  <41.395157, 31.973047, 43.024467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.744965, 32.028999, 42.838715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458558, 0.550275, -0.697798,
		0.157928, 0.823183, 0.545370,
		0.874519, 0.139882, -0.464381,
		42.007320, 32.070965, 42.699402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.403027, 32.646339, 42.807400>,  <41.395157, 31.973047, 43.024467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.403027, 32.646339, 42.807400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670815, 32.479881, 42.561268>,  <41.831490, 32.380005, 42.413589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670815, 32.479881, 42.561268>,  <41.403027, 32.646339, 42.807400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670815, 32.479881, 42.561268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453966, 0.426466, -0.782331,
		0.587979, 0.803088, 0.096593,
		0.669474, -0.416144, -0.615328,
		41.871658, 32.355038, 42.376671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.571014, 33.218758, 42.353928>,  <41.403027, 32.646339, 42.807400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.571014, 33.218758, 42.353928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683201, 32.888176, 42.158657>,  <41.750511, 32.689827, 42.041492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683201, 32.888176, 42.158657>,  <41.571014, 33.218758, 42.353928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683201, 32.888176, 42.158657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410320, 0.356555, -0.839349,
		0.867743, 0.435716, -0.239109,
		0.280463, -0.826450, -0.488181,
		41.767338, 32.640240, 42.012203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907505, 33.308998, 41.721333>,  <41.571014, 33.218758, 42.353928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.907505, 33.308998, 41.721333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767059, 32.938278, 41.668011>,  <41.682793, 32.715847, 41.636017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.767059, 32.938278, 41.668011>,  <41.907505, 33.308998, 41.721333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.767059, 32.938278, 41.668011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372392, 0.268843, -0.888283,
		0.859095, -0.262245, -0.439525,
		-0.351112, -0.926796, -0.133304,
		41.661724, 32.660240, 41.628021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089844, 33.077988, 40.949154>,  <41.907505, 33.308998, 41.721333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089844, 33.077988, 40.949154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784496, 32.846470, 41.063877>,  <41.601288, 32.707558, 41.132710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.784496, 32.846470, 41.063877>,  <42.089844, 33.077988, 40.949154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.784496, 32.846470, 41.063877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369481, 0.027046, -0.928845,
		0.529854, -0.815024, -0.234500,
		-0.763373, -0.578795, 0.286805,
		41.555485, 32.672832, 41.149918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.003853, 32.452606, 40.493149>,  <42.089844, 33.077988, 40.949154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.003853, 32.452606, 40.493149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683414, 32.655781, 40.619801>,  <41.491154, 32.777687, 40.695789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.683414, 32.655781, 40.619801>,  <42.003853, 32.452606, 40.493149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.683414, 32.655781, 40.619801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136604, 0.359877, -0.922945,
		-0.582744, -0.782616, -0.218908,
		-0.801092, 0.507937, 0.316625,
		41.443089, 32.808163, 40.714787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328983, 32.164936, 40.199574>,  <42.003853, 32.452606, 40.493149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328983, 32.164936, 40.199574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946220, 32.138397, 40.312664>,  <40.716564, 32.122475, 40.380520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.946220, 32.138397, 40.312664>,  <41.328983, 32.164936, 40.199574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946220, 32.138397, 40.312664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288395, 0.331509, -0.898293,
		-0.034130, -0.941116, -0.336355,
		-0.956903, -0.066344, 0.282728,
		40.659149, 32.118492, 40.397484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901505, 31.809109, 39.596817>,  <41.328983, 32.164936, 40.199574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901505, 31.809109, 39.596817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741943, 32.072929, 39.851650>,  <40.646206, 32.231220, 40.004551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.741943, 32.072929, 39.851650>,  <40.901505, 31.809109, 39.596817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741943, 32.072929, 39.851650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261039, 0.584328, -0.768388,
		-0.879053, -0.472815, -0.060922,
		-0.398903, 0.659551, 0.637079,
		40.622272, 32.270794, 40.042774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.375446, 31.894852, 39.358101>,  <40.901505, 31.809109, 39.596817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.375446, 31.894852, 39.358101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439957, 32.227837, 39.570141>,  <40.478661, 32.427628, 39.697365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439957, 32.227837, 39.570141>,  <40.375446, 31.894852, 39.358101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439957, 32.227837, 39.570141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227983, 0.554023, -0.800676,
		-0.960216, 0.008274, 0.279136,
		0.161273, 0.832460, 0.530096,
		40.488338, 32.477573, 39.729168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682983, 32.349289, 39.426281>,  <40.375446, 31.894852, 39.358101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682983, 32.349289, 39.426281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004486, 32.583591, 39.467960>,  <40.197388, 32.724174, 39.492970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004486, 32.583591, 39.467960>,  <39.682983, 32.349289, 39.426281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004486, 32.583591, 39.467960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314739, 0.567253, -0.761028,
		-0.504888, 0.578887, 0.640295,
		0.803758, 0.585760, 0.104201,
		40.245613, 32.759319, 39.499222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476147, 33.081448, 39.519215>,  <39.682983, 32.349289, 39.426281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476147, 33.081448, 39.519215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861980, 33.115189, 39.419250>,  <40.093483, 33.135433, 39.359272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861980, 33.115189, 39.419250>,  <39.476147, 33.081448, 39.519215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861980, 33.115189, 39.419250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219172, 0.783457, -0.581513,
		0.146743, 0.615694, 0.774201,
		0.964588, 0.084350, -0.249910,
		40.151356, 33.140495, 39.344276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427391, 33.633698, 39.084118>,  <39.476147, 33.081448, 39.519215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427391, 33.633698, 39.084118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819031, 33.552551, 39.078415>,  <40.054016, 33.503864, 39.074993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819031, 33.552551, 39.078415>,  <39.427391, 33.633698, 39.084118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819031, 33.552551, 39.078415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147910, 0.758491, -0.634677,
		0.139569, 0.619305, 0.772646,
		0.979103, -0.202863, -0.014261,
		40.112762, 33.491692, 39.074135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761333, 34.219799, 38.958412>,  <39.427391, 33.633698, 39.084118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761333, 34.219799, 38.958412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020996, 33.934875, 38.851673>,  <40.176796, 33.763920, 38.787632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020996, 33.934875, 38.851673>,  <39.761333, 34.219799, 38.958412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020996, 33.934875, 38.851673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224814, 0.514806, -0.827305,
		0.726672, 0.477062, 0.494328,
		0.649159, -0.712311, -0.266845,
		40.215744, 33.721184, 38.771618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287933, 34.620914, 38.781773>,  <39.761333, 34.219799, 38.958412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287933, 34.620914, 38.781773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314892, 34.258778, 38.614056>,  <40.331066, 34.041496, 38.513424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314892, 34.258778, 38.614056>,  <40.287933, 34.620914, 38.781773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314892, 34.258778, 38.614056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129430, 0.424634, -0.896066,
		0.989295, 0.006125, 0.145799,
		0.067399, -0.905344, -0.419295,
		40.335110, 33.987175, 38.488266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.366554, 34.866570, 38.160198>,  <40.287933, 34.620914, 38.781773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.366554, 34.866570, 38.160198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368637, 34.479424, 38.059624>,  <40.369884, 34.247135, 37.999279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.368637, 34.479424, 38.059624>,  <40.366554, 34.866570, 38.160198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.368637, 34.479424, 38.059624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120834, 0.250202, -0.960624,
		0.992659, -0.025382, 0.118253,
		0.005205, -0.967861, -0.251432,
		40.370197, 34.189064, 37.984196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.909039, 34.848171, 37.645554>,  <40.366554, 34.866570, 38.160198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.909039, 34.848171, 37.645554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679337, 34.526039, 37.586674>,  <40.541515, 34.332760, 37.551346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.679337, 34.526039, 37.586674>,  <40.909039, 34.848171, 37.645554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.679337, 34.526039, 37.586674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071707, 0.129638, -0.988965,
		0.815531, -0.578473, -0.016697,
		-0.574254, -0.805334, -0.147204,
		40.507061, 34.284439, 37.542511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245495, 34.518463, 37.114326>,  <40.909039, 34.848171, 37.645554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245495, 34.518463, 37.114326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900913, 34.315414, 37.120251>,  <40.694164, 34.193584, 37.123806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900913, 34.315414, 37.120251>,  <41.245495, 34.518463, 37.114326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900913, 34.315414, 37.120251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013280, -0.006634, -0.999890,
		0.507660, -0.861557, -0.001026,
		-0.861455, -0.507617, 0.014810,
		40.642475, 34.163128, 37.124695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310299, 33.891308, 36.556469>,  <41.245495, 34.518463, 37.114326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310299, 33.891308, 36.556469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926731, 33.992805, 36.607197>,  <40.696590, 34.053703, 36.637634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926731, 33.992805, 36.607197>,  <41.310299, 33.891308, 36.556469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926731, 33.992805, 36.607197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077949, 0.194146, -0.977871,
		-0.272748, -0.947588, -0.166392,
		-0.958922, 0.253742, 0.126817,
		40.639053, 34.068928, 36.645241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025192, 33.606705, 35.992733>,  <41.310299, 33.891308, 36.556469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025192, 33.606705, 35.992733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762558, 33.877270, 36.126217>,  <40.604977, 34.039608, 36.206306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762558, 33.877270, 36.126217>,  <41.025192, 33.606705, 35.992733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762558, 33.877270, 36.126217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140163, 0.325307, -0.935163,
		-0.741114, -0.660788, -0.118784,
		-0.656585, 0.676413, 0.333707,
		40.565582, 34.080193, 36.226330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.371857, 33.048504, 35.517761>,  <41.025192, 33.606705, 35.992733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.371857, 33.048504, 35.517761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665142, 32.968750, 35.777805>,  <41.841114, 32.920898, 35.933834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.665142, 32.968750, 35.777805>,  <41.371857, 33.048504, 35.517761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.665142, 32.968750, 35.777805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677104, 0.302207, -0.670971,
		-0.062688, 0.932157, 0.356585,
		0.733213, -0.199384, 0.650112,
		41.885105, 32.908936, 35.972839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897213, 33.583702, 35.241966>,  <41.371857, 33.048504, 35.517761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897213, 33.583702, 35.241966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032631, 33.286823, 35.473324>,  <42.113884, 33.108696, 35.612137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032631, 33.286823, 35.473324>,  <41.897213, 33.583702, 35.241966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032631, 33.286823, 35.473324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827602, -0.057615, -0.558350,
		0.447728, 0.667705, 0.594735,
		0.338548, -0.742193, 0.578390,
		42.134193, 33.064167, 35.646839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202980, 34.312859, 35.112194>,  <41.897213, 33.583702, 35.241966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202980, 34.312859, 35.112194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296402, 34.155781, 35.468002>,  <42.352455, 34.061535, 35.681488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296402, 34.155781, 35.468002>,  <42.202980, 34.312859, 35.112194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296402, 34.155781, 35.468002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805375, -0.434456, -0.403261,
		0.544815, 0.810580, 0.214796,
		0.233556, -0.392694, 0.889518,
		42.366470, 34.037971, 35.734859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894703, 34.397236, 35.305752>,  <42.202980, 34.312859, 35.112194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894703, 34.397236, 35.305752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783699, 34.064774, 35.498486>,  <42.717098, 33.865295, 35.614124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.783699, 34.064774, 35.498486>,  <42.894703, 34.397236, 35.305752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.783699, 34.064774, 35.498486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834539, -0.457017, -0.307702,
		0.475956, 0.316720, 0.820460,
		-0.277509, -0.831158, 0.481834,
		42.700447, 33.815426, 35.643036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.408844, 34.203724, 35.776173>,  <42.894703, 34.397236, 35.305752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.408844, 34.203724, 35.776173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196087, 33.875542, 35.692326>,  <43.068432, 33.678631, 35.642017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.196087, 33.875542, 35.692326>,  <43.408844, 34.203724, 35.776173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.196087, 33.875542, 35.692326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844163, -0.494180, -0.207785,
		0.066891, -0.287470, 0.955451,
		-0.531897, -0.820456, -0.209616,
		43.036518, 33.629406, 35.629440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.660404, 33.604347, 36.138115>,  <43.408844, 34.203724, 35.776173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.660404, 33.604347, 36.138115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538811, 33.500511, 35.771461>,  <43.465855, 33.438210, 35.551472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538811, 33.500511, 35.771461>,  <43.660404, 33.604347, 36.138115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538811, 33.500511, 35.771461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895290, -0.406736, -0.181718,
		-0.325654, -0.875888, 0.356047,
		-0.303982, -0.259588, -0.916629,
		43.447617, 33.422634, 35.496471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.609020, 32.896980, 35.963707>,  <43.660404, 33.604347, 36.138115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.609020, 32.896980, 35.963707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719360, 33.082336, 35.626858>,  <43.785564, 33.193550, 35.424747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719360, 33.082336, 35.626858>,  <43.609020, 32.896980, 35.963707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.719360, 33.082336, 35.626858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814566, -0.577814, -0.051125,
		-0.510282, -0.671863, -0.536855,
		0.275853, 0.463392, -0.842124,
		43.802116, 33.221355, 35.374222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.649738, 32.431747, 35.462727>,  <43.609020, 32.896980, 35.963707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.649738, 32.431747, 35.462727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.894516, 32.738197, 35.384159>,  <44.041382, 32.922066, 35.337021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.894516, 32.738197, 35.384159>,  <43.649738, 32.431747, 35.462727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.894516, 32.738197, 35.384159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754230, -0.640032, -0.146617,
		-0.238038, -0.058420, -0.969497,
		0.611944, 0.766124, -0.196414,
		44.078098, 32.968033, 35.325233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046436, 32.339455, 34.768730>,  <43.649738, 32.431747, 35.462727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046436, 32.339455, 34.768730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259975, 32.539486, 35.041473>,  <44.388100, 32.659504, 35.205120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.259975, 32.539486, 35.041473>,  <44.046436, 32.339455, 34.768730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.259975, 32.539486, 35.041473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767725, -0.624625, -0.142978,
		0.354403, 0.599805, -0.717379,
		0.533851, 0.500078, 0.681854,
		44.420132, 32.689510, 35.246029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700596, 32.268417, 34.346874>,  <44.046436, 32.339455, 34.768730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700596, 32.268417, 34.346874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734974, 32.339233, 34.739052>,  <44.755600, 32.381721, 34.974358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.734974, 32.339233, 34.739052>,  <44.700596, 32.268417, 34.346874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.734974, 32.339233, 34.739052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736311, -0.674221, 0.057199,
		0.671163, 0.716996, -0.188302,
		0.085946, 0.177038, 0.980444,
		44.760757, 32.392345, 35.033184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.393951, 32.382706, 34.514217>,  <44.700596, 32.268417, 34.346874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.393951, 32.382706, 34.514217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.188316, 32.214531, 34.813267>,  <45.064934, 32.113625, 34.992699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.188316, 32.214531, 34.813267>,  <45.393951, 32.382706, 34.514217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.188316, 32.214531, 34.813267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759604, -0.628002, 0.169158,
		0.398391, 0.654863, 0.642215,
		-0.514088, -0.420438, 0.747627,
		45.034088, 32.088398, 35.037556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.710499, 32.452736, 35.187950>,  <45.393951, 32.382706, 34.514217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.710499, 32.452736, 35.187950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.510708, 32.106228, 35.191860>,  <45.390831, 31.898323, 35.194206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.510708, 32.106228, 35.191860>,  <45.710499, 32.452736, 35.187950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.510708, 32.106228, 35.191860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848651, -0.486990, 0.206477,
		-0.174103, 0.111430, 0.978403,
		-0.499480, -0.866270, 0.009779,
		45.360863, 31.846348, 35.194794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.252769, 32.812347, 35.625458>,  <45.710499, 32.452736, 35.187950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.252769, 32.812347, 35.625458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.262661, 33.148197, 35.842495>,  <45.268597, 33.349709, 35.972717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.262661, 33.148197, 35.842495>,  <45.252769, 32.812347, 35.625458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.262661, 33.148197, 35.842495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330841, 0.505306, -0.797001,
		-0.943362, 0.199222, -0.265289,
		0.024728, 0.839629, 0.542597,
		45.270081, 33.400085, 36.005276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.880951, 33.332172, 35.227642>,  <45.252769, 32.812347, 35.625458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.880951, 33.332172, 35.227642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.150299, 33.453030, 35.497540>,  <45.311909, 33.525543, 35.659477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.150299, 33.453030, 35.497540>,  <44.880951, 33.332172, 35.227642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.150299, 33.453030, 35.497540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460067, 0.543176, -0.702352,
		-0.578717, 0.783371, 0.226752,
		0.673368, 0.302142, 0.674748,
		45.352310, 33.543671, 35.699963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.920650, 34.097881, 35.279762>,  <44.880951, 33.332172, 35.227642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.920650, 34.097881, 35.279762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.274265, 33.946396, 35.389351>,  <45.486435, 33.855503, 35.455105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.274265, 33.946396, 35.389351>,  <44.920650, 34.097881, 35.279762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.274265, 33.946396, 35.389351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457371, 0.579944, -0.674149,
		0.096419, 0.721278, 0.685902,
		0.884034, -0.378712, 0.273974,
		45.539474, 33.832783, 35.471542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.260731, 34.645138, 35.480438>,  <44.920650, 34.097881, 35.279762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.260731, 34.645138, 35.480438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.498363, 34.351025, 35.349945>,  <45.640942, 34.174557, 35.271648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.498363, 34.351025, 35.349945>,  <45.260731, 34.645138, 35.480438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.498363, 34.351025, 35.349945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470297, 0.646503, -0.600712,
		0.652605, 0.203443, 0.729875,
		0.594077, -0.735285, -0.326233,
		45.676586, 34.130440, 35.252075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.013248, 34.945850, 35.556561>,  <45.260731, 34.645138, 35.480438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.013248, 34.945850, 35.556561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.945358, 34.664104, 35.280861>,  <45.904625, 34.495056, 35.115440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.945358, 34.664104, 35.280861>,  <46.013248, 34.945850, 35.556561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.945358, 34.664104, 35.280861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440724, 0.571309, -0.692365,
		0.881451, -0.421279, 0.213466,
		-0.169723, -0.704366, -0.689248,
		45.894440, 34.452793, 35.074085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.648937, 34.728191, 35.249786>,  <46.013248, 34.945850, 35.556561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.648937, 34.728191, 35.249786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.323204, 34.749634, 35.018620>,  <46.127766, 34.762501, 34.879921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.323204, 34.749634, 35.018620>,  <46.648937, 34.728191, 35.249786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.323204, 34.749634, 35.018620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523436, 0.498018, -0.691370,
		0.250751, -0.865508, -0.433612,
		-0.814333, 0.053607, -0.577917,
		46.078903, 34.765717, 34.845245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.947178, 34.526833, 34.578468>,  <46.648937, 34.728191, 35.249786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.947178, 34.526833, 34.578468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.621952, 34.756104, 34.537682>,  <46.426819, 34.893665, 34.513210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.621952, 34.756104, 34.537682>,  <46.947178, 34.526833, 34.578468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.621952, 34.756104, 34.537682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465778, 0.535369, -0.704578,
		-0.349257, -0.620361, -0.702262,
		-0.813062, 0.573177, -0.101969,
		46.378033, 34.928055, 34.507092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.081463, 35.232029, 34.808414>,  <46.947178, 34.526833, 34.578468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.081463, 35.232029, 34.808414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.237995, 34.866077, 34.848129>,  <47.331913, 34.646507, 34.871960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.237995, 34.866077, 34.848129>,  <47.081463, 35.232029, 34.808414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.237995, 34.866077, 34.848129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824236, 0.396434, 0.404321,
		-0.409266, -0.076385, 0.909212,
		0.391326, -0.914880, 0.099287,
		47.355392, 34.591614, 34.877914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.266220, 35.115715, 35.499016>,  <47.081463, 35.232029, 34.808414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.266220, 35.115715, 35.499016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.497063, 34.884075, 35.268681>,  <47.635567, 34.745090, 35.130478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.497063, 34.884075, 35.268681>,  <47.266220, 35.115715, 35.499016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.497063, 34.884075, 35.268681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805398, 0.286829, 0.518714,
		-0.135222, -0.763131, 0.631939,
		0.577104, -0.579104, -0.575838,
		47.670193, 34.710342, 35.095928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.361301, 31.844389, 26.518785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.967365, 31.791008, 26.563107>,  <36.731003, 31.758980, 26.589699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.967365, 31.791008, 26.563107>,  <37.361301, 31.844389, 26.518785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967365, 31.791008, 26.563107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098829, 0.093259, 0.990725,
		-0.142546, 0.986658, -0.078656,
		-0.984842, -0.133450, 0.110804,
		36.671913, 31.750973, 26.596348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088428, 32.284515, 27.006422>,  <37.361301, 31.844389, 26.518785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088428, 32.284515, 27.006422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.810493, 31.997417, 26.988333>,  <36.643730, 31.825159, 26.977480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.810493, 31.997417, 26.988333>,  <37.088428, 32.284515, 27.006422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810493, 31.997417, 26.988333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131376, 0.064858, 0.989209,
		-0.707062, 0.693283, -0.139360,
		-0.694840, -0.717741, -0.045222,
		36.602043, 31.782095, 26.974766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533463, 32.450485, 27.545263>,  <37.088428, 32.284515, 27.006422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533463, 32.450485, 27.545263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.479240, 32.067860, 27.442028>,  <36.446709, 31.838284, 27.380087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.479240, 32.067860, 27.442028>,  <36.533463, 32.450485, 27.545263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479240, 32.067860, 27.442028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152648, -0.237216, 0.959389,
		-0.978940, 0.169445, -0.113862,
		-0.135554, -0.956565, -0.258086,
		36.438576, 31.780890, 27.364603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929554, 32.173771, 27.921921>,  <36.533463, 32.450485, 27.545263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929554, 32.173771, 27.921921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.147930, 31.851801, 27.828926>,  <36.278957, 31.658619, 27.773130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.147930, 31.851801, 27.828926>,  <35.929554, 32.173771, 27.921921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147930, 31.851801, 27.828926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026927, -0.260487, 0.965102,
		-0.837390, -0.533149, -0.120537,
		0.545941, -0.804921, -0.232485,
		36.311714, 31.610325, 27.759180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526875, 31.582758, 28.124063>,  <35.929554, 32.173771, 27.921921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526875, 31.582758, 28.124063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911709, 31.479048, 28.090197>,  <36.142609, 31.416822, 28.069876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911709, 31.479048, 28.090197>,  <35.526875, 31.582758, 28.124063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911709, 31.479048, 28.090197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027064, -0.399638, 0.916274,
		-0.271402, -0.879242, -0.391503,
		0.962086, -0.259274, -0.084667,
		36.200333, 31.401266, 28.064796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626842, 30.895567, 28.335461>,  <35.526875, 31.582758, 28.124063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626842, 30.895567, 28.335461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.996910, 31.037012, 28.390633>,  <36.218948, 31.121880, 28.423737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.996910, 31.037012, 28.390633>,  <35.626842, 30.895567, 28.335461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996910, 31.037012, 28.390633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019159, -0.406444, 0.913475,
		0.379076, -0.842474, -0.382803,
		0.925167, 0.353611, 0.137932,
		36.274460, 31.143095, 28.432013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968861, 30.303053, 28.647903>,  <35.626842, 30.895567, 28.335461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968861, 30.303053, 28.647903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.198391, 30.620024, 28.730646>,  <36.336109, 30.810205, 28.780293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.198391, 30.620024, 28.730646>,  <35.968861, 30.303053, 28.647903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198391, 30.620024, 28.730646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012831, -0.261246, 0.965187,
		0.818879, -0.551192, -0.160077,
		0.573822, 0.792426, 0.206857,
		36.370537, 30.857752, 28.792704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278458, 30.094299, 29.235981>,  <35.968861, 30.303053, 28.647903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278458, 30.094299, 29.235981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.371250, 30.483360, 29.231348>,  <36.426926, 30.716797, 29.228569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.371250, 30.483360, 29.231348>,  <36.278458, 30.094299, 29.235981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371250, 30.483360, 29.231348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048447, 0.000338, 0.998826,
		0.971514, -0.232265, -0.047044,
		0.231977, 0.972652, -0.011581,
		36.440842, 30.775156, 29.227873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890289, 30.198772, 29.789307>,  <36.278458, 30.094299, 29.235981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890289, 30.198772, 29.789307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.707901, 30.549175, 29.726439>,  <36.598469, 30.759417, 29.688717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.707901, 30.549175, 29.726439>,  <36.890289, 30.198772, 29.789307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707901, 30.549175, 29.726439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046756, 0.199932, 0.978694,
		0.888764, 0.438910, -0.132122,
		-0.455973, 0.876005, -0.157171,
		36.571110, 30.811977, 29.679287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282257, 30.693060, 30.201637>,  <36.890289, 30.198772, 29.789307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282257, 30.693060, 30.201637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.932323, 30.882025, 30.158741>,  <36.722363, 30.995403, 30.133003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.932323, 30.882025, 30.158741>,  <37.282257, 30.693060, 30.201637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932323, 30.882025, 30.158741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103823, 0.399074, 0.911022,
		0.473174, 0.785855, -0.398169,
		-0.874830, 0.472411, -0.107242,
		36.669876, 31.023748, 30.126568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411263, 31.393000, 30.344423>,  <37.282257, 30.693060, 30.201637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411263, 31.393000, 30.344423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.018913, 31.331390, 30.392033>,  <36.783504, 31.294424, 30.420597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.018913, 31.331390, 30.392033>,  <37.411263, 31.393000, 30.344423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018913, 31.331390, 30.392033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044825, 0.416297, 0.908123,
		-0.189420, 0.896088, -0.401430,
		-0.980872, -0.154023, 0.119022,
		36.724651, 31.285183, 30.427738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191715, 32.043911, 30.663597>,  <37.411263, 31.393000, 30.344423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191715, 32.043911, 30.663597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.914326, 31.767839, 30.746296>,  <36.747890, 31.602196, 30.795916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.914326, 31.767839, 30.746296>,  <37.191715, 32.043911, 30.663597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.914326, 31.767839, 30.746296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080824, 0.210620, 0.974221,
		-0.715934, 0.692307, -0.090276,
		-0.693473, -0.690182, 0.206746,
		36.706284, 31.560785, 30.808319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841820, 32.275192, 31.266903>,  <37.191715, 32.043911, 30.663597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841820, 32.275192, 31.266903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.747658, 31.887115, 31.289913>,  <36.691162, 31.654268, 31.303719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.747658, 31.887115, 31.289913>,  <36.841820, 32.275192, 31.266903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747658, 31.887115, 31.289913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008099, 0.057229, 0.998328,
		-0.971864, 0.235474, -0.005615,
		-0.235402, -0.970194, 0.057526,
		36.677036, 31.596058, 31.307171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292637, 32.176098, 31.723242>,  <36.841820, 32.275192, 31.266903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292637, 32.176098, 31.723242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.487419, 31.827080, 31.707529>,  <36.604290, 31.617670, 31.698101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.487419, 31.827080, 31.707529>,  <36.292637, 32.176098, 31.723242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.487419, 31.827080, 31.707529> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100941, 0.011546, 0.994826,
		-0.867572, -0.488405, 0.093697,
		0.486959, -0.872541, -0.039283,
		36.633507, 31.565317, 31.695744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033737, 31.824148, 32.311935>,  <36.292637, 32.176098, 31.723242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033737, 31.824148, 32.311935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.369335, 31.636358, 32.201900>,  <36.570694, 31.523684, 32.135880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.369335, 31.636358, 32.201900>,  <36.033737, 31.824148, 32.311935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369335, 31.636358, 32.201900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277143, -0.066370, 0.958534,
		-0.468267, -0.880447, 0.074427,
		0.838998, -0.469476, -0.275088,
		36.621037, 31.495516, 32.119373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.125473, 31.268993, 32.833424>,  <36.033737, 31.824148, 32.311935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.125473, 31.268993, 32.833424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.494156, 31.311310, 32.684151>,  <36.715366, 31.336700, 32.594585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.494156, 31.311310, 32.684151>,  <36.125473, 31.268993, 32.833424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494156, 31.311310, 32.684151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384195, -0.116513, 0.915870,
		0.053410, -0.987539, -0.148035,
		0.921706, 0.105791, -0.373185,
		36.770668, 31.343046, 32.572197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587067, 30.798149, 33.288979>,  <36.125473, 31.268993, 32.833424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587067, 30.798149, 33.288979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.833050, 31.042650, 33.089703>,  <36.980640, 31.189352, 32.970135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.833050, 31.042650, 33.089703>,  <36.587067, 30.798149, 33.288979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.833050, 31.042650, 33.089703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641407, -0.020214, 0.766934,
		0.458722, -0.791176, -0.404494,
		0.614956, 0.611255, -0.498193,
		37.017536, 31.226027, 32.940247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244461, 30.546078, 33.376049>,  <36.587067, 30.798149, 33.288979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244461, 30.546078, 33.376049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.307209, 30.926657, 33.270111>,  <37.344860, 31.155005, 33.206551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.307209, 30.926657, 33.270111>,  <37.244461, 30.546078, 33.376049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307209, 30.926657, 33.270111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739736, 0.064479, 0.669800,
		0.654356, -0.300987, -0.693704,
		0.156872, 0.951446, -0.264843,
		37.354271, 31.212091, 33.190659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940987, 30.602669, 33.240665>,  <37.244461, 30.546078, 33.376049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940987, 30.602669, 33.240665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.805065, 30.967611, 33.332005>,  <37.723511, 31.186577, 33.386806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.805065, 30.967611, 33.332005>,  <37.940987, 30.602669, 33.240665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805065, 30.967611, 33.332005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838633, 0.184036, 0.512665,
		0.425709, 0.365702, -0.827668,
		-0.339804, 0.912355, 0.228344,
		37.703125, 31.241318, 33.400509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516251, 31.066124, 33.070900>,  <37.940987, 30.602669, 33.240665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516251, 31.066124, 33.070900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.269867, 31.250463, 33.326466>,  <38.122036, 31.361067, 33.479805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.269867, 31.250463, 33.326466>,  <38.516251, 31.066124, 33.070900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269867, 31.250463, 33.326466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779360, 0.238251, 0.579513,
		0.114846, 0.854900, -0.505920,
		-0.615961, 0.460849, 0.638913,
		38.085079, 31.388718, 33.518139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803238, 31.687756, 33.208282>,  <38.516251, 31.066124, 33.070900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803238, 31.687756, 33.208282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.558617, 31.635426, 33.520409>,  <38.411842, 31.604027, 33.707684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.558617, 31.635426, 33.520409>,  <38.803238, 31.687756, 33.208282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558617, 31.635426, 33.520409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766394, 0.147077, 0.625306,
		-0.196573, 0.980435, 0.010319,
		-0.611554, -0.130827, 0.780311,
		38.375149, 31.596178, 33.754501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946945, 32.219856, 33.604031>,  <38.803238, 31.687756, 33.208282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946945, 32.219856, 33.604031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.791412, 31.930365, 33.832077>,  <38.698093, 31.756670, 33.968903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.791412, 31.930365, 33.832077>,  <38.946945, 32.219856, 33.604031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791412, 31.930365, 33.832077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835498, -0.016211, 0.549255,
		-0.388268, 0.689896, 0.610976,
		-0.388833, -0.723727, 0.570112,
		38.674763, 31.713247, 34.003109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106415, 32.434429, 34.255306>,  <38.946945, 32.219856, 33.604031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106415, 32.434429, 34.255306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.484161, 32.318340, 34.317200>,  <39.710808, 32.248688, 34.354336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.484161, 32.318340, 34.317200>,  <39.106415, 32.434429, 34.255306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484161, 32.318340, 34.317200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200066, 0.133512, -0.970643,
		0.261046, 0.947599, 0.184149,
		0.944367, -0.290225, 0.154730,
		39.767471, 32.231274, 34.363617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561043, 33.015953, 34.061161>,  <39.106415, 32.434429, 34.255306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561043, 33.015953, 34.061161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.774979, 32.679737, 34.026665>,  <39.903339, 32.478008, 34.005966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.774979, 32.679737, 34.026665>,  <39.561043, 33.015953, 34.061161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774979, 32.679737, 34.026665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153371, 0.196943, -0.968344,
		0.830918, 0.504681, 0.234247,
		0.534838, -0.840542, -0.086240,
		39.935429, 32.427574, 34.000793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132298, 33.192600, 33.483612>,  <39.561043, 33.015953, 34.061161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132298, 33.192600, 33.483612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.189472, 32.797497, 33.508606>,  <40.223778, 32.560436, 33.523602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.189472, 32.797497, 33.508606>,  <40.132298, 33.192600, 33.483612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.189472, 32.797497, 33.508606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391490, -0.001563, -0.920181,
		0.909014, 0.155987, 0.386474,
		0.142932, -0.987758, 0.062489,
		40.232353, 32.501171, 33.527351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965408, 32.991306, 33.465347>,  <40.132298, 33.192600, 33.483612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965408, 32.991306, 33.465347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.731483, 32.692966, 33.337780>,  <40.591129, 32.513962, 33.261242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.731483, 32.692966, 33.337780>,  <40.965408, 32.991306, 33.465347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731483, 32.692966, 33.337780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328178, 0.141994, -0.933883,
		0.741816, -0.650809, 0.161730,
		-0.584814, -0.745845, -0.318915,
		40.556038, 32.469212, 33.242107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393661, 32.552750, 33.085045>,  <40.965408, 32.991306, 33.465347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393661, 32.552750, 33.085045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.022121, 32.478828, 32.956615>,  <40.799198, 32.434475, 32.879559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.022121, 32.478828, 32.956615>,  <41.393661, 32.552750, 33.085045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022121, 32.478828, 32.956615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329274, -0.014711, -0.944120,
		0.169750, -0.982666, 0.074514,
		-0.928851, -0.184800, -0.321069,
		40.743465, 32.423389, 32.860294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555256, 32.183773, 32.524696>,  <41.393661, 32.552750, 33.085045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555256, 32.183773, 32.524696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.177299, 32.283764, 32.440128>,  <40.950527, 32.343758, 32.389385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.177299, 32.283764, 32.440128>,  <41.555256, 32.183773, 32.524696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177299, 32.283764, 32.440128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219045, 0.002743, -0.975711,
		-0.243325, -0.968248, -0.057348,
		-0.944888, 0.249976, -0.211423,
		40.893833, 32.358757, 32.376701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.346657, 31.778933, 31.938345>,  <41.555256, 32.183773, 32.524696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.346657, 31.778933, 31.938345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.065250, 32.063065, 31.947313>,  <40.896408, 32.233543, 31.952694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.065250, 32.063065, 31.947313>,  <41.346657, 31.778933, 31.938345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065250, 32.063065, 31.947313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027363, 0.004452, -0.999616,
		-0.710157, -0.703855, 0.016305,
		-0.703512, 0.710330, 0.022421,
		40.854198, 32.276165, 31.954041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.780231, 31.478748, 31.390354>,  <41.346657, 31.778933, 31.938345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.780231, 31.478748, 31.390354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.756695, 31.872229, 31.458323>,  <40.742573, 32.108315, 31.499104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.756695, 31.872229, 31.458323>,  <40.780231, 31.478748, 31.390354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756695, 31.872229, 31.458323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402083, 0.132445, -0.905973,
		-0.913710, -0.121634, 0.387735,
		-0.058844, 0.983699, 0.169923,
		40.739040, 32.167339, 31.509300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230019, 31.678581, 31.000423>,  <40.780231, 31.478748, 31.390354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230019, 31.678581, 31.000423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.424549, 32.019192, 31.078794>,  <40.541267, 32.223557, 31.125816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.424549, 32.019192, 31.078794>,  <40.230019, 31.678581, 31.000423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424549, 32.019192, 31.078794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365987, 0.402128, -0.839253,
		-0.793434, 0.336446, 0.507214,
		0.486329, 0.851526, 0.195927,
		40.570446, 32.274651, 31.137573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709881, 32.256050, 30.972773>,  <40.230019, 31.678581, 31.000423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709881, 32.256050, 30.972773> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.076080, 32.387486, 30.879913>,  <40.295799, 32.466347, 30.824198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.076080, 32.387486, 30.879913>,  <39.709881, 32.256050, 30.972773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.076080, 32.387486, 30.879913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357067, 0.397729, -0.845171,
		-0.185380, 0.856646, 0.481448,
		0.915498, 0.328587, -0.232148,
		40.350731, 32.486061, 30.810268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542530, 32.826244, 30.636917>,  <39.709881, 32.256050, 30.972773>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542530, 32.826244, 30.636917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.913116, 32.740841, 30.512934>,  <40.135468, 32.689598, 30.438543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.913116, 32.740841, 30.512934>,  <39.542530, 32.826244, 30.636917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.913116, 32.740841, 30.512934> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258435, 0.237833, -0.936295,
		0.273629, 0.947548, 0.165164,
		0.926466, -0.213513, -0.309957,
		40.191055, 32.676788, 30.419947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678993, 33.325062, 30.068594>,  <39.542530, 32.826244, 30.636917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678993, 33.325062, 30.068594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.994789, 33.086105, 30.012257>,  <40.184265, 32.942734, 29.978455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.994789, 33.086105, 30.012257>,  <39.678993, 33.325062, 30.068594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994789, 33.086105, 30.012257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088202, 0.116664, -0.989247,
		0.607394, 0.793422, 0.039415,
		0.789489, -0.597386, -0.140842,
		40.231636, 32.906891, 29.970003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111607, 33.593422, 29.530993>,  <39.678993, 33.325062, 30.068594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111607, 33.593422, 29.530993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.239246, 33.214382, 29.536995>,  <40.315830, 32.986958, 29.540596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.239246, 33.214382, 29.536995>,  <40.111607, 33.593422, 29.530993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.239246, 33.214382, 29.536995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060111, 0.004437, -0.998182,
		0.945814, 0.319417, 0.058377,
		0.319096, -0.947604, 0.015004,
		40.334976, 32.930099, 29.541496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743031, 33.505169, 29.068020>,  <40.111607, 33.593422, 29.530993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.743031, 33.505169, 29.068020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.571331, 33.146797, 29.113726>,  <40.468311, 32.931774, 29.141150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.571331, 33.146797, 29.113726>,  <40.743031, 33.505169, 29.068020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.571331, 33.146797, 29.113726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092116, -0.082423, -0.992331,
		0.898476, -0.436484, -0.047149,
		-0.429250, -0.895929, 0.114262,
		40.442554, 32.878017, 29.148005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015846, 33.073311, 28.541246>,  <40.743031, 33.505169, 29.068020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015846, 33.073311, 28.541246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.678104, 32.873688, 28.619226>,  <40.475460, 32.753914, 28.666014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.678104, 32.873688, 28.619226>,  <41.015846, 33.073311, 28.541246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678104, 32.873688, 28.619226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123293, -0.173111, -0.977155,
		0.521403, -0.849103, 0.084637,
		-0.844357, -0.499056, 0.194949,
		40.424797, 32.723972, 28.677711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100811, 32.518719, 28.168781>,  <41.015846, 33.073311, 28.541246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100811, 32.518719, 28.168781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.714138, 32.552017, 28.265614>,  <40.482136, 32.571995, 28.323713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.714138, 32.552017, 28.265614>,  <41.100811, 32.518719, 28.168781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714138, 32.552017, 28.265614> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254334, -0.204763, -0.945191,
		-0.029112, -0.975265, 0.219112,
		-0.966678, 0.083244, 0.242082,
		40.424133, 32.576992, 28.338238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785454, 31.928051, 27.893187>,  <41.100811, 32.518719, 28.168781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785454, 31.928051, 27.893187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.460770, 32.161316, 27.906160>,  <40.265961, 32.301277, 27.913944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.460770, 32.161316, 27.906160>,  <40.785454, 31.928051, 27.893187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460770, 32.161316, 27.906160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269118, -0.324143, -0.906921,
		-0.518371, -0.744882, 0.420049,
		-0.811706, 0.583165, 0.032435,
		40.217258, 32.336266, 27.915892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.228222, 31.545271, 27.585316>,  <40.785454, 31.928051, 27.893187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.228222, 31.545271, 27.585316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.092579, 31.921564, 27.587446>,  <40.011192, 32.147339, 27.588724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.092579, 31.921564, 27.587446>,  <40.228222, 31.545271, 27.585316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092579, 31.921564, 27.587446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468003, -0.163787, -0.868416,
		-0.816075, -0.296978, 0.495807,
		-0.339108, 0.940733, 0.005324,
		39.990845, 32.203785, 27.589043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.858379, 31.766481, 27.726660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.088070, 32.068298, 27.599583>,  <39.225883, 32.249390, 27.523336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.088070, 32.068298, 27.599583>,  <38.858379, 31.766481, 27.726660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088070, 32.068298, 27.599583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467913, -0.015949, -0.883631,
		-0.671805, 0.656056, 0.343903,
		0.574226, 0.754544, -0.317691,
		39.260338, 32.294662, 27.504274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.410919, 32.245014, 27.402031>,  <38.858379, 31.766481, 27.726660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.410919, 32.245014, 27.402031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.770245, 32.314434, 27.240583>,  <38.985840, 32.356087, 27.143715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.770245, 32.314434, 27.240583>,  <38.410919, 32.245014, 27.402031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770245, 32.314434, 27.240583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402717, -0.041992, -0.914361,
		-0.175635, 0.983930, 0.032169,
		0.898316, 0.173549, -0.403621,
		39.039738, 32.366497, 27.119497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304760, 32.835720, 26.903162>,  <38.410919, 32.245014, 27.402031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304760, 32.835720, 26.903162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.635654, 32.647308, 26.780647>,  <38.834190, 32.534260, 26.707138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.635654, 32.647308, 26.780647>,  <38.304760, 32.835720, 26.903162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635654, 32.647308, 26.780647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363308, -0.032609, -0.931098,
		0.428590, 0.881513, -0.198106,
		0.827235, -0.471033, -0.306285,
		38.883823, 32.505997, 26.688763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396328, 33.115227, 26.326746>,  <38.304760, 32.835720, 26.903162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396328, 33.115227, 26.326746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.637508, 32.796379, 26.313808>,  <38.782219, 32.605072, 26.306046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.637508, 32.796379, 26.313808>,  <38.396328, 33.115227, 26.326746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637508, 32.796379, 26.313808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184797, -0.100116, -0.977664,
		0.776078, 0.595463, -0.207671,
		0.602953, -0.797120, -0.032342,
		38.818394, 32.557243, 26.304106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.006626, 33.287506, 25.764214>,  <38.396328, 33.115227, 26.326746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.006626, 33.287506, 25.764214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.934967, 32.897930, 25.819847>,  <38.891972, 32.664185, 25.853228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.934967, 32.897930, 25.819847>,  <39.006626, 33.287506, 25.764214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.934967, 32.897930, 25.819847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163494, -0.109931, -0.980400,
		0.970143, -0.198374, -0.139540,
		-0.179146, -0.973942, 0.139082,
		38.881222, 32.605747, 25.861572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342319, 32.903969, 25.238199>,  <39.006626, 33.287506, 25.764214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342319, 32.903969, 25.238199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.060314, 32.654194, 25.372684>,  <38.891109, 32.504330, 25.453377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.060314, 32.654194, 25.372684>,  <39.342319, 32.903969, 25.238199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060314, 32.654194, 25.372684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372708, -0.077105, -0.924740,
		0.603362, -0.777263, -0.178372,
		-0.705012, -0.624434, 0.336214,
		38.848812, 32.466866, 25.473549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369850, 32.450661, 24.804464>,  <39.342319, 32.903969, 25.238199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369850, 32.450661, 24.804464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.016262, 32.373028, 24.974606>,  <38.804108, 32.326447, 25.076691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.016262, 32.373028, 24.974606>,  <39.369850, 32.450661, 24.804464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016262, 32.373028, 24.974606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380214, -0.231032, -0.895579,
		0.272090, -0.953391, 0.130431,
		-0.883971, -0.194087, 0.425354,
		38.751072, 32.314800, 25.102211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055607, 31.726919, 24.476156>,  <39.369850, 32.450661, 24.804464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055607, 31.726919, 24.476156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.739677, 31.905754, 24.644106>,  <38.550121, 32.013054, 24.744875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.739677, 31.905754, 24.644106>,  <39.055607, 31.726919, 24.476156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739677, 31.905754, 24.644106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571359, -0.287433, -0.768721,
		-0.222999, -0.847051, 0.482468,
		-0.789823, 0.447087, 0.419873,
		38.502731, 32.039879, 24.770067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591537, 31.236469, 24.421928>,  <39.055607, 31.726919, 24.476156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591537, 31.236469, 24.421928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.393528, 31.580338, 24.472393>,  <38.274723, 31.786659, 24.502672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.393528, 31.580338, 24.472393>,  <38.591537, 31.236469, 24.421928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393528, 31.580338, 24.472393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578454, -0.217721, -0.786122,
		-0.648340, -0.462126, 0.605058,
		-0.495021, 0.859672, 0.126162,
		38.245022, 31.838240, 24.510242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942642, 31.061726, 24.151400>,  <38.591537, 31.236469, 24.421928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942642, 31.061726, 24.151400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.923103, 31.461136, 24.141949>,  <37.911381, 31.700783, 24.136278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.923103, 31.461136, 24.141949>,  <37.942642, 31.061726, 24.151400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923103, 31.461136, 24.141949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472726, -0.043950, -0.880113,
		-0.879854, -0.031825, 0.474177,
		-0.048850, 0.998527, -0.023625,
		37.908447, 31.760695, 24.134861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454910, 31.119047, 23.637098>,  <37.942642, 31.061726, 24.151400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.454910, 31.119047, 23.637098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.567024, 31.502413, 23.658585>,  <37.634293, 31.732431, 23.671476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.567024, 31.502413, 23.658585>,  <37.454910, 31.119047, 23.637098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567024, 31.502413, 23.658585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359862, 0.156790, -0.919737,
		-0.889909, 0.238460, 0.388842,
		0.280287, 0.958412, 0.053716,
		37.651112, 31.789936, 23.674700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933296, 31.561821, 23.456175>,  <37.454910, 31.119047, 23.637098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933296, 31.561821, 23.456175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.267952, 31.766186, 23.377182>,  <37.468746, 31.888805, 23.329786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.267952, 31.766186, 23.377182>,  <36.933296, 31.561821, 23.456175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267952, 31.766186, 23.377182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290922, 0.108990, -0.950519,
		-0.464110, 0.852695, 0.239821,
		0.836640, 0.510914, -0.197484,
		37.518944, 31.919460, 23.317936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720055, 32.142113, 23.008532>,  <36.933296, 31.561821, 23.456175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720055, 32.142113, 23.008532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.115154, 32.138508, 22.946218>,  <37.352215, 32.136345, 22.908831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.115154, 32.138508, 22.946218>,  <36.720055, 32.142113, 23.008532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115154, 32.138508, 22.946218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148606, 0.250216, -0.956717,
		0.047597, 0.968148, 0.245812,
		0.987750, -0.009008, -0.155783,
		37.411480, 32.135807, 22.899485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911045, 32.795692, 22.668592>,  <36.720055, 32.142113, 23.008532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911045, 32.795692, 22.668592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.193165, 32.521786, 22.595224>,  <37.362438, 32.357441, 22.551203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.193165, 32.521786, 22.595224>,  <36.911045, 32.795692, 22.668592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193165, 32.521786, 22.595224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020341, 0.239081, -0.970787,
		0.708613, 0.688430, 0.154696,
		0.705304, -0.684766, -0.183419,
		37.404755, 32.316357, 22.540199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461136, 33.098614, 22.429152>,  <36.911045, 32.795692, 22.668592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461136, 33.098614, 22.429152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.500626, 32.726913, 22.286741>,  <37.524319, 32.503895, 22.201296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.500626, 32.726913, 22.286741>,  <37.461136, 33.098614, 22.429152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500626, 32.726913, 22.286741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231535, 0.369403, -0.899962,
		0.967804, 0.006418, 0.251623,
		0.098727, -0.929247, -0.356024,
		37.530243, 32.448139, 22.179934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006405, 33.259327, 22.016985>,  <37.461136, 33.098614, 22.429152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006405, 33.259327, 22.016985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.839764, 32.912369, 21.908129>,  <37.739780, 32.704193, 21.842815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.839764, 32.912369, 21.908129>,  <38.006405, 33.259327, 22.016985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839764, 32.912369, 21.908129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053256, 0.275554, -0.959809,
		0.907527, -0.414353, -0.068602,
		-0.416603, -0.867399, -0.272139,
		37.714783, 32.652149, 21.826487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502762, 32.969440, 21.594624>,  <38.006405, 33.259327, 22.016985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502762, 32.969440, 21.594624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163609, 32.778122, 21.503119>,  <37.960117, 32.663330, 21.448215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.163609, 32.778122, 21.503119>,  <38.502762, 32.969440, 21.594624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163609, 32.778122, 21.503119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155048, 0.188925, -0.969674,
		0.507006, -0.857639, -0.086028,
		-0.847883, -0.478292, -0.228761,
		37.909245, 32.634636, 21.434490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702950, 32.673813, 20.898701>,  <38.502762, 32.969440, 21.594624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702950, 32.673813, 20.898701> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.305534, 32.699184, 20.936348>,  <38.067085, 32.714405, 20.958937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.305534, 32.699184, 20.936348>,  <38.702950, 32.673813, 20.898701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305534, 32.699184, 20.936348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063817, 0.373572, -0.925403,
		-0.093855, -0.925430, -0.367110,
		-0.993538, 0.063426, 0.094120,
		38.007473, 32.718212, 20.964584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513783, 32.469826, 20.225540>,  <38.702950, 32.673813, 20.898701>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513783, 32.469826, 20.225540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.201782, 32.653507, 20.395590>,  <38.014580, 32.763714, 20.497620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.201782, 32.653507, 20.395590>,  <38.513783, 32.469826, 20.225540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201782, 32.653507, 20.395590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150158, 0.522163, -0.839523,
		-0.607493, -0.718666, -0.338336,
		-0.780003, 0.459201, 0.425124,
		37.967781, 32.791267, 20.523127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973053, 32.381214, 19.717981>,  <38.513783, 32.469826, 20.225540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973053, 32.381214, 19.717981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.853977, 32.694664, 19.936085>,  <37.782532, 32.882736, 20.066946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.853977, 32.694664, 19.936085>,  <37.973053, 32.381214, 19.717981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.853977, 32.694664, 19.936085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229581, 0.495626, -0.837644,
		-0.926646, -0.374540, 0.032362,
		-0.297692, 0.783629, 0.545257,
		37.764671, 32.929752, 20.099663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371059, 32.582790, 19.449366>,  <37.973053, 32.381214, 19.717981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371059, 32.582790, 19.449366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.474056, 32.918060, 19.641684>,  <37.535854, 33.119221, 19.757074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.474056, 32.918060, 19.641684>,  <37.371059, 32.582790, 19.449366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474056, 32.918060, 19.641684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324923, 0.543705, -0.773828,
		-0.910013, 0.043032, 0.412341,
		0.257491, 0.838173, 0.480796,
		37.551304, 33.169514, 19.785923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753128, 33.112175, 19.377724>,  <37.371059, 32.582790, 19.449366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753128, 33.112175, 19.377724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.073524, 33.339260, 19.453739>,  <37.265762, 33.475510, 19.499348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.073524, 33.339260, 19.453739>,  <36.753128, 33.112175, 19.377724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073524, 33.339260, 19.453739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301478, 0.656744, -0.691230,
		-0.517226, 0.496377, 0.697199,
		0.800992, 0.567712, 0.190038,
		37.313824, 33.509575, 19.510750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493896, 33.185429, 18.656088>,  <36.753128, 33.112175, 19.377724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493896, 33.185429, 18.656088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.177940, 33.418911, 18.580868>,  <35.988365, 33.558998, 18.535736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.177940, 33.418911, 18.580868>,  <36.493896, 33.185429, 18.656088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177940, 33.418911, 18.580868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249495, -0.025756, 0.968034,
		0.560200, 0.811559, 0.165975,
		-0.789891, 0.583703, -0.188052,
		35.940971, 33.594021, 18.524452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498039, 33.746189, 19.006308>,  <36.493896, 33.185429, 18.656088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498039, 33.746189, 19.006308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.112408, 33.682617, 18.921177>,  <35.881027, 33.644474, 18.870098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.112408, 33.682617, 18.921177>,  <36.498039, 33.746189, 19.006308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112408, 33.682617, 18.921177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234311, 0.131459, 0.963233,
		-0.125111, 0.978498, -0.163976,
		-0.964078, -0.158932, -0.212826,
		35.823185, 33.634937, 18.857328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135799, 34.211338, 19.254143>,  <36.498039, 33.746189, 19.006308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135799, 34.211338, 19.254143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.875809, 33.907951, 19.235086>,  <35.719814, 33.725922, 19.223652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.875809, 33.907951, 19.235086>,  <36.135799, 34.211338, 19.254143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875809, 33.907951, 19.235086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222681, 0.130141, 0.966166,
		-0.726600, 0.638590, -0.253483,
		-0.649973, -0.758462, -0.047642,
		35.680817, 33.680412, 19.220795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541294, 34.454662, 19.459751>,  <36.135799, 34.211338, 19.254143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541294, 34.454662, 19.459751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.490334, 34.063313, 19.524937>,  <35.459759, 33.828503, 19.564049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.490334, 34.063313, 19.524937>,  <35.541294, 34.454662, 19.459751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490334, 34.063313, 19.524937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238883, 0.189732, 0.952332,
		-0.962655, 0.082397, -0.257888,
		-0.127399, -0.978372, 0.162963,
		35.452114, 33.769802, 19.573826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.995052, 34.439198, 19.928909>,  <35.541294, 34.454662, 19.459751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.995052, 34.439198, 19.928909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.096912, 34.052547, 19.940201>,  <35.158028, 33.820557, 19.946976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.096912, 34.052547, 19.940201>,  <34.995052, 34.439198, 19.928909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096912, 34.052547, 19.940201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368432, -0.069987, 0.927017,
		-0.894099, -0.246464, -0.373956,
		0.254648, -0.966622, 0.028230,
		35.173306, 33.762562, 19.948669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.441605, 34.021290, 20.075665>,  <34.995052, 34.439198, 19.928909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.441605, 34.021290, 20.075665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.757317, 33.810291, 20.201387>,  <34.946743, 33.683693, 20.276821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.757317, 33.810291, 20.201387>,  <34.441605, 34.021290, 20.075665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.757317, 33.810291, 20.201387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293988, 0.124755, 0.947632,
		-0.539084, -0.840347, -0.056611,
		0.789278, -0.527496, 0.314306,
		34.994099, 33.652042, 20.295679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081932, 33.543957, 20.461582>,  <34.441605, 34.021290, 20.075665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081932, 33.543957, 20.461582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.471886, 33.558640, 20.549440>,  <34.705860, 33.567448, 20.602156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.471886, 33.558640, 20.549440>,  <34.081932, 33.543957, 20.461582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471886, 33.558640, 20.549440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211243, -0.159778, 0.964286,
		0.070489, -0.986470, -0.148012,
		0.974889, 0.036705, 0.219647,
		34.764351, 33.569649, 20.615334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077435, 33.184208, 21.110802>,  <34.081932, 33.543957, 20.461582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077435, 33.184208, 21.110802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.452076, 33.320965, 21.080126>,  <34.676861, 33.403019, 21.061720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.452076, 33.320965, 21.080126>,  <34.077435, 33.184208, 21.110802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452076, 33.320965, 21.080126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178042, -0.275865, 0.944563,
		0.301783, -0.898336, -0.319248,
		0.936604, 0.341893, -0.076690,
		34.733059, 33.423534, 21.057119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619648, 32.655571, 21.342131>,  <34.077435, 33.184208, 21.110802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619648, 32.655571, 21.342131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774773, 33.020611, 21.393911>,  <34.867847, 33.239635, 21.424980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774773, 33.020611, 21.393911>,  <34.619648, 32.655571, 21.342131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774773, 33.020611, 21.393911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225385, -0.230067, 0.946716,
		0.893760, -0.337968, -0.294909,
		0.387808, 0.912604, 0.129452,
		34.891117, 33.294392, 21.432747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188564, 32.522675, 21.601254>,  <34.619648, 32.655571, 21.342131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188564, 32.522675, 21.601254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.150452, 32.905540, 21.710619>,  <35.127583, 33.135262, 21.776237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.150452, 32.905540, 21.710619>,  <35.188564, 32.522675, 21.601254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150452, 32.905540, 21.710619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347505, -0.225399, 0.910184,
		0.932824, 0.181738, -0.311143,
		-0.095284, 0.957166, 0.273413,
		35.121868, 33.192692, 21.792643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618996, 32.539005, 22.081528>,  <35.188564, 32.522675, 21.601254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618996, 32.539005, 22.081528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.411346, 32.873924, 22.150167>,  <35.286755, 33.074875, 22.191351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.411346, 32.873924, 22.150167>,  <35.618996, 32.539005, 22.081528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411346, 32.873924, 22.150167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265087, -0.033140, 0.963655,
		0.812550, 0.545746, -0.204752,
		-0.519125, 0.837295, 0.171598,
		35.255608, 33.125114, 22.201647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091843, 32.931259, 22.497898>,  <35.618996, 32.539005, 22.081528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091843, 32.931259, 22.497898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.716244, 33.059605, 22.547426>,  <35.490883, 33.136612, 22.577143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.716244, 33.059605, 22.547426>,  <36.091843, 32.931259, 22.497898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716244, 33.059605, 22.547426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155249, 0.074185, 0.985086,
		0.306895, 0.944215, -0.119474,
		-0.938996, 0.320866, 0.123821,
		35.434544, 33.155865, 22.584572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226982, 33.466442, 22.905441>,  <36.091843, 32.931259, 22.497898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226982, 33.466442, 22.905441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.850773, 33.337879, 22.949451>,  <35.625046, 33.260742, 22.975859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.850773, 33.337879, 22.949451>,  <36.226982, 33.466442, 22.905441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850773, 33.337879, 22.949451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155956, -0.120766, 0.980354,
		-0.301808, 0.939208, 0.163709,
		-0.940527, -0.321410, 0.110027,
		35.568615, 33.241455, 22.982460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957817, 33.875828, 23.491293>,  <36.226982, 33.466442, 22.905441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957817, 33.875828, 23.491293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.725342, 33.553249, 23.447720>,  <35.585857, 33.359703, 23.421576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.725342, 33.553249, 23.447720>,  <35.957817, 33.875828, 23.491293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725342, 33.553249, 23.447720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045366, -0.165762, 0.985122,
		-0.812507, 0.567595, 0.132923,
		-0.581184, -0.806449, -0.108933,
		35.550987, 33.311314, 23.415039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623753, 33.797310, 24.169268>,  <35.957817, 33.875828, 23.491293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623753, 33.797310, 24.169268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.591599, 33.439510, 23.993353>,  <35.572308, 33.224831, 23.887804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.591599, 33.439510, 23.993353>,  <35.623753, 33.797310, 24.169268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591599, 33.439510, 23.993353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239805, -0.445611, 0.862511,
		-0.967487, -0.036129, 0.250326,
		-0.080386, -0.894497, -0.439787,
		35.567482, 33.171162, 23.861418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066723, 33.389297, 24.585051>,  <35.623753, 33.797310, 24.169268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066723, 33.389297, 24.585051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.282234, 33.113235, 24.391802>,  <35.411541, 32.947598, 24.275852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.282234, 33.113235, 24.391802>,  <35.066723, 33.389297, 24.585051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282234, 33.113235, 24.391802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212976, -0.443263, 0.870723,
		-0.815085, -0.572016, -0.091832,
		0.538774, -0.690155, -0.483123,
		35.443867, 32.906189, 24.246864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.822987, 32.725235, 24.822351>,  <35.066723, 33.389297, 24.585051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.822987, 32.725235, 24.822351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.191635, 32.647938, 24.687729>,  <35.412823, 32.601559, 24.606955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.191635, 32.647938, 24.687729>,  <34.822987, 32.725235, 24.822351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191635, 32.647938, 24.687729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161567, -0.597435, 0.785473,
		-0.352860, -0.778285, -0.519387,
		0.921622, -0.193246, -0.336556,
		35.468121, 32.589962, 24.586761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965355, 32.122253, 25.162521>,  <34.822987, 32.725235, 24.822351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965355, 32.122253, 25.162521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.329533, 32.191044, 25.012043>,  <35.548038, 32.232319, 24.921757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.329533, 32.191044, 25.012043>,  <34.965355, 32.122253, 25.162521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329533, 32.191044, 25.012043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401911, -0.582841, 0.706232,
		-0.097806, -0.794179, -0.599762,
		0.910440, 0.171977, -0.376194,
		35.602665, 32.242638, 24.899185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355003, 31.453781, 25.128828>,  <34.965355, 32.122253, 25.162521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355003, 31.453781, 25.128828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.640961, 31.733383, 25.136030>,  <35.812534, 31.901144, 25.140352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.640961, 31.733383, 25.136030>,  <35.355003, 31.453781, 25.128828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640961, 31.733383, 25.136030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422470, -0.452308, 0.785453,
		0.557180, -0.553906, -0.618659,
		0.714892, 0.699003, 0.018008,
		35.855427, 31.943085, 25.141432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899441, 31.123764, 25.362728>,  <35.355003, 31.453781, 25.128828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899441, 31.123764, 25.362728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.036217, 31.493860, 25.428463>,  <36.118282, 31.715918, 25.467905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.036217, 31.493860, 25.428463>,  <35.899441, 31.123764, 25.362728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036217, 31.493860, 25.428463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316010, -0.277910, 0.907140,
		0.884995, -0.258254, -0.387413,
		0.341938, 0.925241, 0.164338,
		36.138798, 31.771433, 25.477764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640984, 31.057627, 25.570654>,  <35.899441, 31.123764, 25.362728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640984, 31.057627, 25.570654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.495808, 31.399761, 25.718533>,  <36.408703, 31.605042, 25.807261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.495808, 31.399761, 25.718533>,  <36.640984, 31.057627, 25.570654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495808, 31.399761, 25.718533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413500, -0.207707, 0.886496,
		0.835039, 0.474617, -0.278295,
		-0.362942, 0.855334, 0.369698,
		36.386925, 31.656361, 25.829441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221859, 31.388187, 25.939455>,  <36.640984, 31.057627, 25.570654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221859, 31.388187, 25.939455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.868687, 31.516005, 26.077051>,  <36.656784, 31.592695, 26.159609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.868687, 31.516005, 26.077051>,  <37.221859, 31.388187, 25.939455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868687, 31.516005, 26.077051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332743, -0.091025, 0.938614,
		0.331241, 0.943189, -0.025958,
		-0.882928, 0.319544, 0.343990,
		36.603809, 31.611868, 26.180248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.089653, 31.970585, 29.797295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.840023, 32.279125, 29.847170>,  <40.690243, 32.464249, 29.877094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.840023, 32.279125, 29.847170>,  <41.089653, 31.970585, 29.797295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.840023, 32.279125, 29.847170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308365, 0.096510, 0.946360,
		0.717941, 0.629051, -0.298087,
		-0.624077, 0.771350, 0.124689,
		40.652802, 32.510529, 29.884577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.446484, 32.505367, 30.142839>,  <41.089653, 31.970585, 29.797295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.446484, 32.505367, 30.142839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.066151, 32.598747, 30.224253>,  <40.837952, 32.654774, 30.273102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.066151, 32.598747, 30.224253>,  <41.446484, 32.505367, 30.142839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066151, 32.598747, 30.224253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230777, 0.095739, 0.968285,
		0.206559, 0.967644, -0.144906,
		-0.950829, 0.233448, 0.203534,
		40.780903, 32.668781, 30.285313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.504547, 33.004787, 30.729591>,  <41.446484, 32.505367, 30.142839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.504547, 33.004787, 30.729591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.139862, 32.840919, 30.741890>,  <40.921051, 32.742599, 30.749269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.139862, 32.840919, 30.741890>,  <41.504547, 33.004787, 30.729591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.139862, 32.840919, 30.741890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135118, -0.228342, 0.964159,
		-0.387970, 0.883192, 0.263537,
		-0.911714, -0.409673, 0.030746,
		40.866348, 32.718018, 30.751114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218815, 33.364017, 31.238817>,  <41.504547, 33.004787, 30.729591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218815, 33.364017, 31.238817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.001419, 33.030201, 31.202684>,  <40.870983, 32.829910, 31.181005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.001419, 33.030201, 31.202684>,  <41.218815, 33.364017, 31.238817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.001419, 33.030201, 31.202684> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014430, -0.116885, 0.993041,
		-0.839292, 0.538404, 0.075568,
		-0.543490, -0.834541, -0.090332,
		40.838371, 32.779839, 31.175585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605869, 33.496616, 31.559681>,  <41.218815, 33.364017, 31.238817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605869, 33.496616, 31.559681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.628029, 33.097385, 31.570814>,  <40.641323, 32.857845, 31.577494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.628029, 33.097385, 31.570814>,  <40.605869, 33.496616, 31.559681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628029, 33.097385, 31.570814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076520, 0.023548, 0.996790,
		-0.995528, -0.057350, -0.075069,
		0.055398, -0.998076, 0.027831,
		40.644650, 32.797962, 31.579163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130424, 33.352440, 32.072456>,  <40.605869, 33.496616, 31.559681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130424, 33.352440, 32.072456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.339497, 33.014473, 32.026993>,  <40.464939, 32.811691, 31.999714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.339497, 33.014473, 32.026993>,  <40.130424, 33.352440, 32.072456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.339497, 33.014473, 32.026993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111174, -0.199732, 0.973523,
		-0.845249, -0.496205, -0.198329,
		0.522680, -0.844919, -0.113658,
		40.496300, 32.760998, 31.992895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709648, 32.836174, 32.236588>,  <40.130424, 33.352440, 32.072456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709648, 32.836174, 32.236588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.075932, 32.680748, 32.277573>,  <40.295700, 32.587494, 32.302162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.075932, 32.680748, 32.277573>,  <39.709648, 32.836174, 32.236588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075932, 32.680748, 32.277573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207755, -0.239518, 0.948403,
		-0.343976, -0.889746, -0.300055,
		0.915707, -0.388566, 0.102461,
		40.350643, 32.564178, 32.308311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.560955, 32.079453, 32.493992>,  <39.709648, 32.836174, 32.236588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.560955, 32.079453, 32.493992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.929474, 32.187771, 32.605621>,  <40.150585, 32.252762, 32.672600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.929474, 32.187771, 32.605621>,  <39.560955, 32.079453, 32.493992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929474, 32.187771, 32.605621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228405, -0.203974, 0.951959,
		0.314712, -0.940778, -0.126069,
		0.921297, 0.270798, 0.279072,
		40.205864, 32.269009, 32.689342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891087, 31.471001, 32.821384>,  <39.560955, 32.079453, 32.493992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891087, 31.471001, 32.821384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.097885, 31.780312, 32.968224>,  <40.221966, 31.965899, 33.056328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.097885, 31.780312, 32.968224>,  <39.891087, 31.471001, 32.821384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097885, 31.780312, 32.968224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317377, -0.225127, 0.921189,
		0.794977, -0.592759, 0.129031,
		0.516995, 0.773276, 0.367099,
		40.252983, 32.012295, 33.078354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276970, 31.210249, 33.522774>,  <39.891087, 31.471001, 32.821384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276970, 31.210249, 33.522774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.280033, 31.609819, 33.541061>,  <40.281872, 31.849562, 33.552032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.280033, 31.609819, 33.541061>,  <40.276970, 31.210249, 33.522774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280033, 31.609819, 33.541061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192295, -0.043397, 0.980377,
		0.981307, -0.016302, 0.191756,
		0.007660, 0.998925, 0.045721,
		40.282330, 31.909496, 33.554779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708187, 31.352238, 34.067425>,  <40.276970, 31.210249, 33.522774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708187, 31.352238, 34.067425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.474720, 31.674881, 34.030090>,  <40.334641, 31.868467, 34.007690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.474720, 31.674881, 34.030090>,  <40.708187, 31.352238, 34.067425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474720, 31.674881, 34.030090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078225, 0.058560, 0.995214,
		0.808213, 0.588180, 0.028917,
		-0.583672, 0.806607, -0.093339,
		40.299618, 31.916862, 34.002090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019253, 31.917582, 34.542065>,  <40.708187, 31.352238, 34.067425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019253, 31.917582, 34.542065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.628231, 31.989019, 34.497372>,  <40.393616, 32.031883, 34.470554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.628231, 31.989019, 34.497372>,  <41.019253, 31.917582, 34.542065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628231, 31.989019, 34.497372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121011, -0.041874, 0.991768,
		0.172444, 0.983032, 0.062545,
		-0.977558, 0.178593, -0.111736,
		40.334965, 32.042599, 34.463852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.813774, 32.491890, 34.934814>,  <41.019253, 31.917582, 34.542065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.813774, 32.491890, 34.934814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.484428, 32.265617, 34.916588>,  <40.286819, 32.129852, 34.905651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.484428, 32.265617, 34.916588>,  <40.813774, 32.491890, 34.934814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484428, 32.265617, 34.916588> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139959, 0.124586, 0.982288,
		-0.549984, 0.815159, -0.181751,
		-0.823364, -0.565681, -0.045569,
		40.237419, 32.095913, 34.902916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278362, 32.863388, 35.207848>,  <40.813774, 32.491890, 34.934814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278362, 32.863388, 35.207848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.143021, 32.487358, 35.224751>,  <40.061817, 32.261742, 35.234894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.143021, 32.487358, 35.224751>,  <40.278362, 32.863388, 35.207848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.143021, 32.487358, 35.224751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577706, 0.242959, 0.779248,
		-0.742815, 0.239244, -0.625290,
		-0.338350, -0.940071, 0.042260,
		40.041515, 32.205338, 35.237427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.951462, 33.570042, 35.365551>,  <40.278362, 32.863388, 35.207848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.951462, 33.570042, 35.365551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.006481, 33.902573, 35.580948>,  <40.039494, 34.102089, 35.710186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.006481, 33.902573, 35.580948>,  <39.951462, 33.570042, 35.365551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.006481, 33.902573, 35.580948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336443, 0.550553, -0.764001,
		-0.931604, -0.076085, 0.355422,
		0.137550, 0.831326, 0.538496,
		40.047745, 34.151970, 35.742496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275005, 33.954239, 35.474308>,  <39.951462, 33.570042, 35.365551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275005, 33.954239, 35.474308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.571190, 34.221687, 35.501621>,  <39.748901, 34.382156, 35.518009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.571190, 34.221687, 35.501621>,  <39.275005, 33.954239, 35.474308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571190, 34.221687, 35.501621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270053, 0.389021, -0.880758,
		-0.615453, 0.633731, 0.468619,
		0.740466, 0.668617, 0.068283,
		39.793331, 34.422272, 35.522106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.992947, 34.553024, 35.287655>,  <39.275005, 33.954239, 35.474308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.992947, 34.553024, 35.287655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.384201, 34.616310, 35.233662>,  <39.618954, 34.654282, 35.201267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.384201, 34.616310, 35.233662>,  <38.992947, 34.553024, 35.287655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384201, 34.616310, 35.233662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191500, 0.432021, -0.881298,
		-0.081123, 0.887877, 0.452873,
		0.978134, 0.158219, -0.134981,
		39.677643, 34.663776, 35.193169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162453, 35.336239, 35.050594>,  <38.992947, 34.553024, 35.287655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162453, 35.336239, 35.050594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.464787, 35.100697, 34.936085>,  <39.646187, 34.959370, 34.867378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.464787, 35.100697, 34.936085>,  <39.162453, 35.336239, 35.050594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464787, 35.100697, 34.936085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011074, 0.448661, -0.893633,
		0.654666, 0.672271, 0.345636,
		0.755837, -0.588859, -0.286278,
		39.691536, 34.924038, 34.850201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502979, 35.797455, 34.614815>,  <39.162453, 35.336239, 35.050594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502979, 35.797455, 34.614815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.660160, 35.438332, 34.535290>,  <39.754467, 35.222858, 34.487576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.660160, 35.438332, 34.535290>,  <39.502979, 35.797455, 34.614815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660160, 35.438332, 34.535290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042081, 0.233538, -0.971437,
		0.918596, 0.373360, 0.129550,
		0.392951, -0.897810, -0.198816,
		39.778046, 35.168987, 34.475647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.172810, 35.948467, 34.270603>,  <39.502979, 35.797455, 34.614815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.172810, 35.948467, 34.270603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.057537, 35.581947, 34.159363>,  <39.988373, 35.362034, 34.092621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.057537, 35.581947, 34.159363>,  <40.172810, 35.948467, 34.270603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057537, 35.581947, 34.159363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108150, 0.257416, -0.960230,
		0.951448, -0.306799, 0.024915,
		-0.288184, -0.916303, -0.278098,
		39.971081, 35.307056, 34.075932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.676243, 35.577374, 33.732796>,  <40.172810, 35.948467, 34.270603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.676243, 35.577374, 33.732796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.327763, 35.382042, 33.712585>,  <40.118675, 35.264843, 33.700459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.327763, 35.382042, 33.712585>,  <40.676243, 35.577374, 33.732796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327763, 35.382042, 33.712585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025634, 0.148016, -0.988653,
		0.490263, -0.860017, -0.141469,
		-0.871197, -0.488326, -0.050521,
		40.066402, 35.235542, 33.697430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815121, 35.302864, 33.165073>,  <40.676243, 35.577374, 33.732796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815121, 35.302864, 33.165073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.421413, 35.251072, 33.213169>,  <40.185188, 35.219997, 33.242027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.421413, 35.251072, 33.213169>,  <40.815121, 35.302864, 33.165073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421413, 35.251072, 33.213169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126310, 0.039688, -0.991197,
		0.123575, -0.990787, -0.055419,
		-0.984264, -0.129487, 0.120242,
		40.126133, 35.212227, 33.249241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.679855, 34.867115, 32.687141>,  <40.815121, 35.302864, 33.165073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.679855, 34.867115, 32.687141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.318958, 34.999969, 32.797161>,  <40.102421, 35.079681, 32.863171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.318958, 34.999969, 32.797161>,  <40.679855, 34.867115, 32.687141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318958, 34.999969, 32.797161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265926, 0.073585, -0.961181,
		-0.339481, -0.940357, 0.021932,
		-0.902239, 0.332135, 0.275046,
		40.048286, 35.099609, 32.879673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245811, 34.428322, 32.345154>,  <40.679855, 34.867115, 32.687141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245811, 34.428322, 32.345154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.046165, 34.763874, 32.432018>,  <39.926376, 34.965206, 32.484138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.046165, 34.763874, 32.432018>,  <40.245811, 34.428322, 32.345154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046165, 34.763874, 32.432018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397233, 0.001229, -0.917717,
		-0.770123, -0.544313, 0.332618,
		-0.499116, 0.838882, 0.217165,
		39.896431, 35.015537, 32.497169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525524, 34.318298, 32.075226>,  <40.245811, 34.428322, 32.345154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525524, 34.318298, 32.075226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.578480, 34.714096, 32.098484>,  <39.610252, 34.951572, 32.112438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.578480, 34.714096, 32.098484>,  <39.525524, 34.318298, 32.075226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578480, 34.714096, 32.098484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181783, 0.081902, -0.979922,
		-0.974387, 0.119158, 0.190715,
		0.132385, 0.989492, 0.058144,
		39.618195, 35.010944, 32.115929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040512, 34.691196, 31.549065>,  <39.525524, 34.318298, 32.075226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040512, 34.691196, 31.549065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.307758, 34.979836, 31.621643>,  <39.468105, 35.153019, 31.665190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.307758, 34.979836, 31.621643>,  <39.040512, 34.691196, 31.549065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307758, 34.979836, 31.621643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115536, 0.341513, -0.932749,
		-0.735034, 0.602220, 0.311540,
		0.668115, 0.721596, 0.181445,
		39.508194, 35.196316, 31.676077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756851, 35.452309, 31.551336>,  <39.040512, 34.691196, 31.549065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.756851, 35.452309, 31.551336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.146656, 35.428333, 31.464872>,  <39.380539, 35.413948, 31.412994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.146656, 35.428333, 31.464872>,  <38.756851, 35.452309, 31.551336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146656, 35.428333, 31.464872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176644, 0.388873, -0.904198,
		0.138259, 0.919339, 0.368375,
		0.974516, -0.059942, -0.216161,
		39.439011, 35.410351, 31.400024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865921, 35.963261, 31.139730>,  <38.756851, 35.452309, 31.551336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.865921, 35.963261, 31.139730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.198200, 35.756165, 31.057867>,  <39.397568, 35.631908, 31.008749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.198200, 35.756165, 31.057867>,  <38.865921, 35.963261, 31.139730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198200, 35.756165, 31.057867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050325, 0.296274, -0.953776,
		0.554442, 0.802601, 0.220059,
		0.830699, -0.517739, -0.204657,
		39.447411, 35.600842, 30.996469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924316, 36.828175, 31.068754>,  <38.865921, 35.963261, 31.139730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924316, 36.828175, 31.068754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.542797, 36.936169, 31.016037>,  <38.313885, 37.000965, 30.984406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.542797, 36.936169, 31.016037>,  <38.924316, 36.828175, 31.068754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542797, 36.936169, 31.016037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189187, -0.198966, 0.961572,
		0.233386, 0.942084, 0.240852,
		-0.953803, 0.269983, -0.131794,
		38.256657, 37.017162, 30.976500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711285, 37.221043, 31.638559>,  <38.924316, 36.828175, 31.068754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711285, 37.221043, 31.638559> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.353718, 37.146515, 31.475492>,  <38.139175, 37.101799, 31.377653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.353718, 37.146515, 31.475492>,  <38.711285, 37.221043, 31.638559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353718, 37.146515, 31.475492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392754, -0.112664, 0.912716,
		-0.215986, 0.976008, 0.027535,
		-0.893921, -0.186319, -0.407665,
		38.085541, 37.090618, 31.353193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358189, 37.475956, 32.190380>,  <38.711285, 37.221043, 31.638559>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358189, 37.475956, 32.190380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.109131, 37.248394, 31.975471>,  <37.959694, 37.111858, 31.846527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.109131, 37.248394, 31.975471>,  <38.358189, 37.475956, 32.190380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109131, 37.248394, 31.975471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472210, -0.274313, 0.837717,
		-0.623961, 0.775306, -0.097842,
		-0.622648, -0.568905, -0.537268,
		37.922337, 37.077721, 31.814291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668365, 37.626720, 32.400909>,  <38.358189, 37.475956, 32.190380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668365, 37.626720, 32.400909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.634068, 37.262474, 32.239204>,  <37.613491, 37.043926, 32.142181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.634068, 37.262474, 32.239204>,  <37.668365, 37.626720, 32.400909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.634068, 37.262474, 32.239204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627484, -0.265817, 0.731851,
		-0.773894, 0.316419, -0.548604,
		-0.085743, -0.910616, -0.404262,
		37.608345, 36.989288, 32.117928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851883, 37.341740, 32.407436>,  <37.668365, 37.626720, 32.400909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851883, 37.341740, 32.407436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.112297, 37.038330, 32.396118>,  <37.268547, 36.856285, 32.389328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.112297, 37.038330, 32.396118>,  <36.851883, 37.341740, 32.407436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112297, 37.038330, 32.396118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490140, -0.448563, 0.747365,
		-0.579583, -0.472693, -0.663811,
		0.651035, -0.758520, -0.028294,
		37.307610, 36.810776, 32.387630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445370, 36.714413, 32.653927>,  <36.851883, 37.341740, 32.407436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.445370, 36.714413, 32.653927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.826553, 36.597931, 32.687557>,  <37.055264, 36.528042, 32.707737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.826553, 36.597931, 32.687557>,  <36.445370, 36.714413, 32.653927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.826553, 36.597931, 32.687557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174719, -0.301097, 0.937451,
		-0.247674, -0.908042, -0.337812,
		0.952959, -0.291204, 0.084078,
		37.112442, 36.510567, 32.712780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393581, 35.969189, 32.932140>,  <36.445370, 36.714413, 32.653927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393581, 35.969189, 32.932140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.758034, 36.117752, 33.003578>,  <36.976704, 36.206890, 33.046440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.758034, 36.117752, 33.003578>,  <36.393581, 35.969189, 32.932140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758034, 36.117752, 33.003578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017196, -0.467250, 0.883958,
		0.411757, -0.802331, -0.432112,
		0.911131, 0.371407, 0.178596,
		37.031372, 36.229176, 33.057156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808609, 35.416222, 33.137310>,  <36.393581, 35.969189, 32.932140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808609, 35.416222, 33.137310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.009270, 35.734898, 33.272141>,  <37.129665, 35.926105, 33.353039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.009270, 35.734898, 33.272141>,  <36.808609, 35.416222, 33.137310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009270, 35.734898, 33.272141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090844, -0.436015, 0.895342,
		0.860284, -0.418532, -0.291105,
		0.501656, 0.796694, 0.337076,
		37.159767, 35.973907, 33.373264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203671, 35.080570, 33.603134>,  <36.808609, 35.416222, 33.137310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203671, 35.080570, 33.603134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.253780, 35.467014, 33.693417>,  <37.283848, 35.698879, 33.747585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.253780, 35.467014, 33.693417>,  <37.203671, 35.080570, 33.603134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253780, 35.467014, 33.693417> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148442, -0.243189, 0.958553,
		0.980954, -0.086578, -0.173877,
		0.125274, 0.966107, 0.225705,
		37.291363, 35.756847, 33.761127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866226, 35.129681, 34.000954>,  <37.203671, 35.080570, 33.603134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866226, 35.129681, 34.000954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.635235, 35.441658, 34.097458>,  <37.496639, 35.628845, 34.155361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.635235, 35.441658, 34.097458>,  <37.866226, 35.129681, 34.000954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635235, 35.441658, 34.097458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182967, -0.164362, 0.969282,
		0.795642, 0.603879, -0.047789,
		-0.577474, 0.779946, 0.241263,
		37.461994, 35.675640, 34.169838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153358, 35.353485, 34.573811>,  <37.866226, 35.129681, 34.000954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153358, 35.353485, 34.573811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.803898, 35.547562, 34.588383>,  <37.594223, 35.664009, 34.597126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.803898, 35.547562, 34.588383>,  <38.153358, 35.353485, 34.573811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803898, 35.547562, 34.588383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026705, -0.122577, 0.992100,
		0.485827, 0.865772, 0.120046,
		-0.873647, 0.485195, 0.036430,
		37.541805, 35.693119, 34.599312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252365, 35.894707, 35.026894>,  <38.153358, 35.353485, 34.573811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252365, 35.894707, 35.026894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.858158, 35.830818, 35.004086>,  <37.621635, 35.792484, 34.990402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.858158, 35.830818, 35.004086>,  <38.252365, 35.894707, 35.026894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858158, 35.830818, 35.004086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077936, 0.127937, 0.988715,
		-0.150628, 0.978836, -0.138532,
		-0.985514, -0.159725, -0.057016,
		37.562504, 35.782902, 34.986980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.947369, 38.992489, 27.562237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625534, 38.755493, 27.578211>,  <38.432434, 38.613297, 27.587795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625534, 38.755493, 27.578211>,  <38.947369, 38.992489, 27.562237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625534, 38.755493, 27.578211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061440, -0.016166, 0.997980,
		-0.590648, 0.805415, 0.049409,
		-0.804587, -0.592491, 0.039936,
		38.384159, 38.577747, 27.590191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466610, 39.312923, 28.041628>,  <38.947369, 38.992489, 27.562237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466610, 39.312923, 28.041628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372318, 38.924984, 28.016918>,  <38.315742, 38.692219, 28.002092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.372318, 38.924984, 28.016918>,  <38.466610, 39.312923, 28.041628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372318, 38.924984, 28.016918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009175, -0.065786, 0.997792,
		-0.971775, 0.234646, 0.024406,
		-0.235733, -0.969852, -0.061776,
		38.301598, 38.634029, 27.998384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005146, 39.161617, 28.635326>,  <38.466610, 39.312923, 28.041628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005146, 39.161617, 28.635326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113289, 38.790836, 28.531273>,  <38.178173, 38.568367, 28.468842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113289, 38.790836, 28.531273>,  <38.005146, 39.161617, 28.635326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113289, 38.790836, 28.531273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046541, -0.282461, 0.958149,
		-0.961635, -0.246933, -0.119506,
		0.270354, -0.926952, -0.260132,
		38.194397, 38.512753, 28.453234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589462, 38.755215, 29.039465>,  <38.005146, 39.161617, 28.635326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589462, 38.755215, 29.039465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891308, 38.518681, 28.925713>,  <38.072414, 38.376759, 28.857462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891308, 38.518681, 28.925713>,  <37.589462, 38.755215, 29.039465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891308, 38.518681, 28.925713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073967, -0.507296, 0.858592,
		-0.651984, -0.626873, -0.426553,
		0.754616, -0.591339, -0.284381,
		38.117695, 38.341278, 28.840399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321293, 38.099609, 28.954956>,  <37.589462, 38.755215, 29.039465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321293, 38.099609, 28.954956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712746, 38.060535, 29.027325>,  <37.947617, 38.037090, 29.070745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712746, 38.060535, 29.027325>,  <37.321293, 38.099609, 28.954956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712746, 38.060535, 29.027325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203126, -0.595661, 0.777128,
		0.031855, -0.797274, -0.602776,
		0.978634, -0.097684, 0.180922,
		38.006336, 38.031231, 29.081602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538586, 37.325645, 29.102158>,  <37.321293, 38.099609, 28.954956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538586, 37.325645, 29.102158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842060, 37.527744, 29.266657>,  <38.024143, 37.649002, 29.365356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842060, 37.527744, 29.266657>,  <37.538586, 37.325645, 29.102158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.842060, 37.527744, 29.266657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057501, -0.576872, 0.814808,
		0.648915, -0.641830, -0.408612,
		0.758685, 0.505246, 0.411247,
		38.069664, 37.679317, 29.390032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008438, 36.856789, 29.308422>,  <37.538586, 37.325645, 29.102158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008438, 36.856789, 29.308422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136814, 37.164364, 29.529596>,  <38.213840, 37.348907, 29.662302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136814, 37.164364, 29.529596>,  <38.008438, 36.856789, 29.308422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136814, 37.164364, 29.529596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157521, -0.619026, 0.769412,
		0.933909, -0.159833, -0.319792,
		0.320937, 0.768935, 0.552937,
		38.233093, 37.395042, 29.695477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460438, 36.525669, 29.860245>,  <38.008438, 36.856789, 29.308422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460438, 36.525669, 29.860245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370197, 36.888706, 30.001886>,  <38.316055, 37.106529, 30.086872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370197, 36.888706, 30.001886>,  <38.460438, 36.525669, 29.860245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370197, 36.888706, 30.001886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164977, -0.393814, 0.904264,
		0.960150, 0.145581, 0.238575,
		-0.225598, 0.907588, 0.354103,
		38.302517, 37.160984, 30.108118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758495, 36.578304, 30.389046>,  <38.460438, 36.525669, 29.860245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758495, 36.578304, 30.389046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483295, 36.863968, 30.440632>,  <38.318176, 37.035366, 30.471584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483295, 36.863968, 30.440632>,  <38.758495, 36.578304, 30.389046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483295, 36.863968, 30.440632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218383, -0.373213, 0.901677,
		0.692070, 0.592192, 0.412731,
		-0.688003, 0.714157, 0.128965,
		38.276894, 37.078217, 30.479322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451931, 36.501839, 30.666313>,  <38.758495, 36.578304, 30.389046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451931, 36.501839, 30.666313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571938, 36.122494, 30.625145>,  <39.643940, 35.894886, 30.600445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571938, 36.122494, 30.625145>,  <39.451931, 36.501839, 30.666313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571938, 36.122494, 30.625145> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202831, 0.168841, -0.964548,
		0.932121, 0.268504, 0.243013,
		0.300016, -0.948366, -0.102919,
		39.661942, 35.837982, 30.594269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956272, 36.570789, 30.112978>,  <39.451931, 36.501839, 30.666313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956272, 36.570789, 30.112978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923653, 36.173058, 30.140263>,  <39.904083, 35.934418, 30.156633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923653, 36.173058, 30.140263>,  <39.956272, 36.570789, 30.112978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923653, 36.173058, 30.140263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326252, -0.091297, -0.940864,
		0.941759, -0.054468, 0.331847,
		-0.081544, -0.994333, 0.068210,
		39.899189, 35.874756, 30.160725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568554, 36.399326, 29.784105>,  <39.956272, 36.570789, 30.112978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568554, 36.399326, 29.784105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343731, 36.068501, 29.781157>,  <40.208839, 35.870003, 29.779387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343731, 36.068501, 29.781157>,  <40.568554, 36.399326, 29.784105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343731, 36.068501, 29.781157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478629, -0.317969, -0.818419,
		0.674543, -0.463526, 0.574574,
		-0.562055, -0.827067, -0.007373,
		40.175114, 35.820381, 29.778944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981606, 35.884846, 29.631224>,  <40.568554, 36.399326, 29.784105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981606, 35.884846, 29.631224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628040, 35.726730, 29.531263>,  <40.415901, 35.631863, 29.471287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628040, 35.726730, 29.531263>,  <40.981606, 35.884846, 29.631224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.628040, 35.726730, 29.531263> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359559, -0.232736, -0.903632,
		0.299036, -0.888583, 0.347847,
		-0.883909, -0.395290, -0.249902,
		40.362869, 35.608143, 29.456293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106857, 35.128506, 29.288973>,  <40.981606, 35.884846, 29.631224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106857, 35.128506, 29.288973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748528, 35.256855, 29.165985>,  <40.533531, 35.333866, 29.092192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748528, 35.256855, 29.165985>,  <41.106857, 35.128506, 29.288973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748528, 35.256855, 29.165985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248250, -0.212540, -0.945092,
		-0.368606, -0.922966, 0.110742,
		-0.895824, 0.320875, -0.307470,
		40.479778, 35.353119, 29.073744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913982, 34.652523, 28.802258>,  <41.106857, 35.128506, 29.288973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913982, 34.652523, 28.802258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672150, 34.962700, 28.729408>,  <40.527050, 35.148808, 28.685698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672150, 34.962700, 28.729408>,  <40.913982, 34.652523, 28.802258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.672150, 34.962700, 28.729408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233084, -0.046409, -0.971349,
		-0.761675, -0.629712, -0.152685,
		-0.604584, 0.775441, -0.182124,
		40.490776, 35.195332, 28.674770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516483, 34.478439, 28.212297>,  <40.913982, 34.652523, 28.802258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516483, 34.478439, 28.212297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533390, 34.877811, 28.226963>,  <40.543533, 35.117435, 28.235762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533390, 34.877811, 28.226963>,  <40.516483, 34.478439, 28.212297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533390, 34.877811, 28.226963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116054, 0.031543, -0.992742,
		-0.992343, 0.046210, -0.114539,
		0.042262, 0.998433, 0.036664,
		40.546070, 35.177341, 28.237963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270145, 34.583275, 27.652580>,  <40.516483, 34.478439, 28.212297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270145, 34.583275, 27.652580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396442, 34.954369, 27.732187>,  <40.472221, 35.177025, 27.779951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.396442, 34.954369, 27.732187>,  <40.270145, 34.583275, 27.652580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396442, 34.954369, 27.732187> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164906, 0.152900, -0.974386,
		-0.934405, 0.340474, -0.104713,
		0.315743, 0.927738, 0.199017,
		40.491165, 35.232689, 27.791893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840424, 35.013142, 27.127176>,  <40.270145, 34.583275, 27.652580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840424, 35.013142, 27.127176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168758, 35.196636, 27.263288>,  <40.365757, 35.306732, 27.344955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168758, 35.196636, 27.263288>,  <39.840424, 35.013142, 27.127176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168758, 35.196636, 27.263288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203931, 0.321110, -0.924825,
		-0.533519, 0.828522, 0.170027,
		0.820835, 0.458738, 0.340279,
		40.415009, 35.334259, 27.365372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.735874, 35.795551, 27.073774>,  <39.840424, 35.013142, 27.127176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.735874, 35.795551, 27.073774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134171, 35.759468, 27.066147>,  <40.373150, 35.737820, 27.061571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134171, 35.759468, 27.066147>,  <39.735874, 35.795551, 27.073774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134171, 35.759468, 27.066147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001965, 0.185987, -0.982550,
		0.092179, 0.978402, 0.185018,
		0.995740, -0.090207, -0.019066,
		40.432892, 35.732407, 27.060427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.089081, 36.385708, 26.719078>,  <39.735874, 35.795551, 27.073774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.089081, 36.385708, 26.719078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380043, 36.113480, 26.683962>,  <40.554619, 35.950142, 26.662891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380043, 36.113480, 26.683962>,  <40.089081, 36.385708, 26.719078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380043, 36.113480, 26.683962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101235, 0.232967, -0.967201,
		0.678700, 0.694660, 0.238358,
		0.727405, -0.680569, -0.087791,
		40.598263, 35.909309, 26.657625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.433617, 36.656574, 26.130085>,  <40.089081, 36.385708, 26.719078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.433617, 36.656574, 26.130085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591778, 36.289722, 26.150198>,  <40.686676, 36.069611, 26.162266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591778, 36.289722, 26.150198>,  <40.433617, 36.656574, 26.130085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591778, 36.289722, 26.150198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159774, 0.014768, -0.987043,
		0.904505, 0.398312, 0.152373,
		0.395402, -0.917131, 0.050282,
		40.710400, 36.014584, 26.165283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.153038, 36.685654, 25.828373>,  <40.433617, 36.656574, 26.130085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.153038, 36.685654, 25.828373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956841, 36.337948, 25.803694>,  <40.839123, 36.129326, 25.788885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956841, 36.337948, 25.803694>,  <41.153038, 36.685654, 25.828373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956841, 36.337948, 25.803694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192971, -0.039296, -0.980417,
		0.849813, -0.492790, 0.187017,
		-0.490489, -0.869260, -0.061700,
		40.809692, 36.077171, 25.785183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440746, 36.451118, 25.359358>,  <41.153038, 36.685654, 25.828373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440746, 36.451118, 25.359358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125591, 36.205009, 25.369747>,  <40.936497, 36.057343, 25.375980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125591, 36.205009, 25.369747>,  <41.440746, 36.451118, 25.359358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.125591, 36.205009, 25.369747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152886, -0.236288, -0.959580,
		0.596540, -0.752070, 0.280235,
		-0.787887, -0.615272, 0.025974,
		40.889225, 36.020428, 25.377539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.134426, 33.177963, 25.679424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.490223, 33.360733, 25.681454>,  <32.703701, 33.470394, 25.682671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.490223, 33.360733, 25.681454>,  <32.134426, 33.177963, 25.679424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490223, 33.360733, 25.681454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128983, -0.261709, 0.956489,
		0.438367, -0.850136, -0.291723,
		0.889493, 0.456921, 0.005072,
		32.757072, 33.497810, 25.682976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629345, 32.752747, 25.830248>,  <32.134426, 33.177963, 25.679424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629345, 32.752747, 25.830248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.805916, 33.098015, 25.928295>,  <32.911858, 33.305176, 25.987123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.805916, 33.098015, 25.928295>,  <32.629345, 32.752747, 25.830248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805916, 33.098015, 25.928295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119432, -0.327261, 0.937356,
		0.889314, -0.384498, -0.247551,
		0.441425, 0.863170, 0.245117,
		32.938343, 33.356964, 26.001829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285706, 32.585670, 26.288101>,  <32.629345, 32.752747, 25.830248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285706, 32.585670, 26.288101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.205269, 32.971340, 26.357313>,  <33.157009, 33.202740, 26.398840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.205269, 32.971340, 26.357313>,  <33.285706, 32.585670, 26.288101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205269, 32.971340, 26.357313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294552, -0.108946, 0.949405,
		0.934239, 0.241882, -0.262091,
		-0.201090, 0.964170, 0.173028,
		33.144943, 33.260590, 26.409222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880722, 32.765305, 26.571556>,  <33.285706, 32.585670, 26.288101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880722, 32.765305, 26.571556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.612316, 33.035103, 26.694712>,  <33.451271, 33.196980, 26.768606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.612316, 33.035103, 26.694712>,  <33.880722, 32.765305, 26.571556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612316, 33.035103, 26.694712> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459330, 0.052190, 0.886731,
		0.582025, 0.736434, -0.344835,
		-0.671016, 0.674493, 0.307890,
		33.411011, 33.237450, 26.787079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184566, 33.247166, 26.893665>,  <33.880722, 32.765305, 26.571556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184566, 33.247166, 26.893665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.817287, 33.294613, 27.044847>,  <33.596920, 33.323082, 27.135557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.817287, 33.294613, 27.044847>,  <34.184566, 33.247166, 26.893665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817287, 33.294613, 27.044847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384156, 0.033819, 0.922649,
		0.096665, 0.992363, -0.076622,
		-0.918194, 0.118623, 0.377953,
		33.541828, 33.330200, 27.158234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318848, 33.762363, 27.389082>,  <34.184566, 33.247166, 26.893665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318848, 33.762363, 27.389082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.962799, 33.605362, 27.481720>,  <33.749172, 33.511162, 27.537302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.962799, 33.605362, 27.481720>,  <34.318848, 33.762363, 27.389082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962799, 33.605362, 27.481720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264398, -0.030848, 0.963920,
		-0.371194, 0.919235, 0.131234,
		-0.890117, -0.392499, 0.231593,
		33.695763, 33.487614, 27.551197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173782, 34.001976, 28.032358>,  <34.318848, 33.762363, 27.389082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173782, 34.001976, 28.032358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.911385, 33.700565, 28.015118>,  <33.753944, 33.519718, 28.004772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.911385, 33.700565, 28.015118>,  <34.173782, 34.001976, 28.032358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911385, 33.700565, 28.015118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211795, -0.238592, 0.947743,
		-0.724438, 0.612588, 0.316110,
		-0.655997, -0.753531, -0.043102,
		33.714584, 33.474506, 28.002188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688610, 34.175591, 28.557465>,  <34.173782, 34.001976, 28.032358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688610, 34.175591, 28.557465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.648617, 33.782440, 28.495548>,  <33.624622, 33.546551, 28.458399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.648617, 33.782440, 28.495548>,  <33.688610, 34.175591, 28.557465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648617, 33.782440, 28.495548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309225, -0.178560, 0.934075,
		-0.945718, 0.045527, 0.321783,
		-0.099983, -0.982875, -0.154789,
		33.618622, 33.487579, 28.449112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390877, 33.919960, 29.175323>,  <33.688610, 34.175591, 28.557465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390877, 33.919960, 29.175323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.550667, 33.600559, 28.995188>,  <33.646542, 33.408916, 28.887106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.550667, 33.600559, 28.995188>,  <33.390877, 33.919960, 29.175323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550667, 33.600559, 28.995188> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361529, -0.314207, 0.877822,
		-0.842445, -0.513481, 0.163164,
		0.399478, -0.798505, -0.450341,
		33.670509, 33.361008, 28.860086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014969, 33.284416, 29.415108>,  <33.390877, 33.919960, 29.175323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014969, 33.284416, 29.415108> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.384964, 33.194004, 29.292929>,  <33.606960, 33.139755, 29.219622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.384964, 33.194004, 29.292929>,  <33.014969, 33.284416, 29.415108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384964, 33.194004, 29.292929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239316, -0.277858, 0.930335,
		-0.295160, -0.933651, -0.202923,
		0.924991, -0.226034, -0.305450,
		33.662460, 33.126194, 29.201294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081257, 32.703957, 29.702324>,  <33.014969, 33.284416, 29.415108>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081257, 32.703957, 29.702324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.459538, 32.766243, 29.588196>,  <33.686504, 32.803616, 29.519718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.459538, 32.766243, 29.588196>,  <33.081257, 32.703957, 29.702324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459538, 32.766243, 29.588196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325037, -0.459524, 0.826552,
		-0.002409, -0.874409, -0.485183,
		0.945698, 0.155712, -0.285322,
		33.743248, 32.812958, 29.502600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365692, 32.002514, 29.755951>,  <33.081257, 32.703957, 29.702324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365692, 32.002514, 29.755951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.651237, 32.282452, 29.765882>,  <33.822563, 32.450413, 29.771841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.651237, 32.282452, 29.765882>,  <33.365692, 32.002514, 29.755951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651237, 32.282452, 29.765882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434591, -0.470543, 0.767932,
		0.549116, -0.537408, -0.640050,
		0.713864, 0.699844, 0.024830,
		33.865398, 32.492405, 29.773331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121593, 31.652542, 29.722799>,  <33.365692, 32.002514, 29.755951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121593, 31.652542, 29.722799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.181286, 32.019596, 29.870136>,  <34.217102, 32.239830, 29.958538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.181286, 32.019596, 29.870136>,  <34.121593, 31.652542, 29.722799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181286, 32.019596, 29.870136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435028, -0.395454, 0.808930,
		0.887964, 0.039520, -0.458211,
		0.149233, 0.917635, 0.368341,
		34.226055, 32.294888, 29.980639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806290, 31.636917, 30.170605>,  <34.121593, 31.652542, 29.722799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806290, 31.636917, 30.170605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.600399, 31.946281, 30.318600>,  <34.476864, 32.131901, 30.407396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.600399, 31.946281, 30.318600>,  <34.806290, 31.636917, 30.170605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600399, 31.946281, 30.318600> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404015, -0.161816, 0.900326,
		0.756192, 0.612904, -0.229178,
		-0.514729, 0.773411, 0.369986,
		34.445980, 32.178307, 30.429596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535728, 31.656591, 29.904335>,  <34.806290, 31.636917, 30.170605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535728, 31.656591, 29.904335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.877590, 31.462223, 29.977488>,  <36.082706, 31.345602, 30.021379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.877590, 31.462223, 29.977488>,  <35.535728, 31.656591, 29.904335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877590, 31.462223, 29.977488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151401, -0.103677, -0.983020,
		0.496631, 0.867831, -0.015039,
		0.854655, -0.485921, 0.182879,
		36.133987, 31.316446, 30.032351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.961964, 31.932436, 29.417475>,  <35.535728, 31.656591, 29.904335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.961964, 31.932436, 29.417475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.155025, 31.596170, 29.515720>,  <36.270863, 31.394411, 29.574669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.155025, 31.596170, 29.515720>,  <35.961964, 31.932436, 29.417475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155025, 31.596170, 29.515720> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345917, -0.074659, -0.935290,
		0.804602, 0.536386, 0.254766,
		0.482656, -0.840664, 0.245616,
		36.299824, 31.343971, 29.589405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689072, 32.042511, 29.327740>,  <35.961964, 31.932436, 29.417475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689072, 32.042511, 29.327740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.600384, 31.654480, 29.288177>,  <36.547169, 31.421661, 29.264441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.600384, 31.654480, 29.288177>,  <36.689072, 32.042511, 29.327740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600384, 31.654480, 29.288177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129638, 0.071205, -0.989001,
		0.966454, -0.232105, 0.109972,
		-0.221721, -0.970081, -0.098906,
		36.533867, 31.363455, 29.258505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177540, 31.912455, 28.890652>,  <36.689072, 32.042511, 29.327740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177540, 31.912455, 28.890652> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.934315, 31.595074, 28.880171>,  <36.788380, 31.404644, 28.873882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.934315, 31.595074, 28.880171>,  <37.177540, 31.912455, 28.890652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934315, 31.595074, 28.880171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051028, -0.006124, -0.998678,
		0.792245, -0.608599, 0.044212,
		-0.608065, -0.793454, -0.026204,
		36.751896, 31.357037, 28.872309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509327, 31.392162, 28.476379>,  <37.177540, 31.912455, 28.890652>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509327, 31.392162, 28.476379> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.114887, 31.326414, 28.466713>,  <36.878223, 31.286964, 28.460913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.114887, 31.326414, 28.466713>,  <37.509327, 31.392162, 28.476379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114887, 31.326414, 28.466713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041538, -0.103073, -0.993806,
		0.160863, -0.980998, 0.108468,
		-0.986102, -0.164373, -0.024168,
		36.819057, 31.277103, 28.459463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397945, 30.969425, 27.932482>,  <37.509327, 31.392162, 28.476379>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397945, 30.969425, 27.932482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.017635, 31.080456, 27.987579>,  <36.789448, 31.147074, 28.020638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.017635, 31.080456, 27.987579>,  <37.397945, 30.969425, 27.932482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017635, 31.080456, 27.987579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150655, -0.025636, -0.988254,
		-0.270787, -0.960361, 0.066193,
		-0.950778, 0.277578, 0.137742,
		36.732403, 31.163729, 28.028902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032047, 30.671181, 27.317797>,  <37.397945, 30.969425, 27.932482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032047, 30.671181, 27.317797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.778759, 30.944891, 27.462463>,  <36.626785, 31.109118, 27.549263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.778759, 30.944891, 27.462463>,  <37.032047, 30.671181, 27.317797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778759, 30.944891, 27.462463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415951, 0.093201, -0.904598,
		-0.652701, -0.723245, 0.225607,
		-0.633219, 0.684274, 0.361667,
		36.588795, 31.150173, 27.570963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452396, 30.499331, 27.109203>,  <37.032047, 30.671181, 27.317797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452396, 30.499331, 27.109203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.428303, 30.890514, 27.189175>,  <36.413845, 31.125225, 27.237158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.428303, 30.890514, 27.189175>,  <36.452396, 30.499331, 27.109203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428303, 30.890514, 27.189175> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324847, 0.170183, -0.930329,
		-0.943847, -0.120983, 0.307436,
		-0.060233, 0.977958, 0.199927,
		36.410233, 31.183901, 27.249153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862114, 30.676546, 26.873447>,  <36.452396, 30.499331, 27.109203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862114, 30.676546, 26.873447> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.042461, 31.031950, 26.907553>,  <36.150669, 31.245192, 26.928015>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.042461, 31.031950, 26.907553>,  <35.862114, 30.676546, 26.873447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042461, 31.031950, 26.907553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266073, 0.224965, -0.937335,
		-0.852010, 0.399931, 0.337838,
		0.450871, 0.888508, 0.085262,
		36.177723, 31.298502, 26.933132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.442867, 31.290993, 26.572382>,  <35.862114, 30.676546, 26.873447>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.442867, 31.290993, 26.572382> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.813694, 31.437361, 26.604988>,  <36.036190, 31.525183, 26.624552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.813694, 31.437361, 26.604988>,  <35.442867, 31.290993, 26.572382>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813694, 31.437361, 26.604988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116839, 0.488622, -0.864637,
		-0.356218, 0.792054, 0.495740,
		0.927069, 0.365922, 0.081513,
		36.091816, 31.547138, 26.629442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441936, 32.052670, 26.534512>,  <35.442867, 31.290993, 26.572382>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441936, 32.052670, 26.534512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.806606, 31.921854, 26.434998>,  <36.025410, 31.843363, 26.375290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.806606, 31.921854, 26.434998>,  <35.441936, 32.052670, 26.534512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806606, 31.921854, 26.434998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075963, 0.460867, -0.884212,
		0.403832, 0.825012, 0.395317,
		0.911674, -0.327043, -0.248783,
		36.080109, 31.823742, 26.360363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831051, 32.720955, 26.286329>,  <35.441936, 32.052670, 26.534512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831051, 32.720955, 26.286329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.011364, 32.387386, 26.158978>,  <36.119553, 32.187244, 26.082565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.011364, 32.387386, 26.158978>,  <35.831051, 32.720955, 26.286329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011364, 32.387386, 26.158978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029733, 0.342451, -0.939065,
		0.892138, 0.432781, 0.129576,
		0.450783, -0.833923, -0.318381,
		36.146599, 32.137211, 26.063463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385040, 32.972443, 25.905203>,  <35.831051, 32.720955, 26.286329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385040, 32.972443, 25.905203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.312935, 32.605282, 25.763809>,  <36.269672, 32.384983, 25.678972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.312935, 32.605282, 25.763809>,  <36.385040, 32.972443, 25.905203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312935, 32.605282, 25.763809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029263, 0.364219, -0.930853,
		0.983183, -0.157455, -0.092516,
		-0.180263, -0.917907, -0.353486,
		36.258858, 32.329910, 25.657763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702908, 32.889885, 25.298935>,  <36.385040, 32.972443, 25.905203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702908, 32.889885, 25.298935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.439781, 32.594852, 25.237940>,  <36.281906, 32.417835, 25.201344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.439781, 32.594852, 25.237940>,  <36.702908, 32.889885, 25.298935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439781, 32.594852, 25.237940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154883, 0.330602, -0.930974,
		0.737078, -0.588797, -0.331715,
		-0.657820, -0.737578, -0.152486,
		36.242435, 32.373581, 25.192194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452026, 32.600571, 25.289896>,  <36.702908, 32.889885, 25.298935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452026, 32.600571, 25.289896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.768929, 32.413300, 25.133368>,  <37.959072, 32.300938, 25.039452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.768929, 32.413300, 25.133368>,  <37.452026, 32.600571, 25.289896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768929, 32.413300, 25.133368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415331, -0.056059, 0.907941,
		-0.447018, -0.881853, 0.150037,
		0.792260, -0.468181, -0.391320,
		38.006607, 32.272846, 25.015972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598621, 32.053593, 25.749348>,  <37.452026, 32.600571, 25.289896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598621, 32.053593, 25.749348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.929195, 32.132076, 25.538256>,  <38.127541, 32.179169, 25.411600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.929195, 32.132076, 25.538256>,  <37.598621, 32.053593, 25.749348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929195, 32.132076, 25.538256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558723, -0.170128, 0.811717,
		0.069488, -0.965690, -0.250229,
		0.826438, 0.196213, -0.527732,
		38.177128, 32.190941, 25.379936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077385, 31.482286, 25.900915>,  <37.598621, 32.053593, 25.749348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077385, 31.482286, 25.900915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.294174, 31.794971, 25.777506>,  <38.424248, 31.982582, 25.703461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.294174, 31.794971, 25.777506>,  <38.077385, 31.482286, 25.900915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294174, 31.794971, 25.777506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542466, -0.045018, 0.838871,
		0.641867, -0.622012, -0.448452,
		0.541976, 0.781713, -0.308524,
		38.456768, 32.029484, 25.684948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691486, 31.251419, 26.007273>,  <38.077385, 31.482286, 25.900915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691486, 31.251419, 26.007273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.749805, 31.645193, 25.968021>,  <38.784798, 31.881458, 25.944471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.749805, 31.645193, 25.968021>,  <38.691486, 31.251419, 26.007273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749805, 31.645193, 25.968021> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719402, -0.037410, 0.693586,
		0.679120, -0.171717, -0.713659,
		0.145799, 0.984436, -0.098128,
		38.793545, 31.940523, 25.938583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402805, 31.335308, 26.293053>,  <38.691486, 31.251419, 26.007273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402805, 31.335308, 26.293053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.254623, 31.706570, 26.278629>,  <39.165714, 31.929327, 26.269976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.254623, 31.706570, 26.278629>,  <39.402805, 31.335308, 26.293053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254623, 31.706570, 26.278629> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593294, 0.266311, 0.759659,
		0.714681, 0.260024, -0.649322,
		-0.370451, 0.928152, -0.036056,
		39.143490, 31.985016, 26.267813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917439, 31.857067, 26.385807>,  <39.402805, 31.335308, 26.293053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917439, 31.857067, 26.385807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.598663, 32.083717, 26.469543>,  <39.407398, 32.219707, 26.519785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.598663, 32.083717, 26.469543>,  <39.917439, 31.857067, 26.385807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598663, 32.083717, 26.469543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474831, 0.373399, 0.796937,
		0.373399, 0.734511, -0.566628,
		-0.796937, 0.566628, 0.209342,
		39.359581, 32.253704, 26.532347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.105770, 32.658062, 26.511473>,  <39.917439, 31.857067, 26.385807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.105770, 32.658062, 26.511473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.794231, 32.529697, 26.727034>,  <39.607307, 32.452679, 26.856371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.794231, 32.529697, 26.727034>,  <40.105770, 32.658062, 26.511473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794231, 32.529697, 26.727034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459747, 0.292361, 0.838545,
		-0.426656, 0.900854, -0.080164,
		-0.778844, -0.320915, 0.538902,
		39.560577, 32.433422, 26.888704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818283, 33.279556, 26.874138>,  <40.105770, 32.658062, 26.511473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818283, 33.279556, 26.874138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.713223, 32.937916, 27.053705>,  <39.650185, 32.732933, 27.161446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.713223, 32.937916, 27.053705>,  <39.818283, 33.279556, 26.874138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713223, 32.937916, 27.053705> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421373, 0.317010, 0.849676,
		-0.868019, 0.412333, 0.276630,
		-0.262656, -0.854100, 0.448916,
		39.634426, 32.681686, 27.188379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473782, 33.344559, 27.558725>,  <39.818283, 33.279556, 26.874138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473782, 33.344559, 27.558725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.622875, 32.973549, 27.569815>,  <39.712330, 32.750942, 27.576469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.622875, 32.973549, 27.569815>,  <39.473782, 33.344559, 27.558725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622875, 32.973549, 27.569815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228410, 0.120665, 0.966058,
		-0.899389, -0.353746, 0.256832,
		0.372730, -0.927525, 0.027726,
		39.734695, 32.695290, 27.578133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293621, 33.156582, 28.183651>,  <39.473782, 33.344559, 27.558725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293621, 33.156582, 28.183651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.569843, 32.878490, 28.103857>,  <39.735577, 32.711636, 28.055981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.569843, 32.878490, 28.103857>,  <39.293621, 33.156582, 28.183651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.569843, 32.878490, 28.103857> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240467, -0.039432, 0.969856,
		-0.682136, -0.717707, 0.139950,
		0.690554, -0.695227, -0.199483,
		39.777008, 32.669922, 28.044012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155560, 32.613243, 28.574665>,  <39.293621, 33.156582, 28.183651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155560, 32.613243, 28.574665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.547581, 32.593792, 28.497583>,  <39.782791, 32.582123, 28.451334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.547581, 32.593792, 28.497583>,  <39.155560, 32.613243, 28.574665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547581, 32.593792, 28.497583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192810, -0.002574, 0.981233,
		-0.048215, -0.998813, 0.006855,
		0.980051, -0.048632, -0.192706,
		39.841595, 32.579205, 28.439772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361000, 32.184322, 29.074907>,  <39.155560, 32.613243, 28.574665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361000, 32.184322, 29.074907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.697651, 32.355145, 28.942669>,  <39.899639, 32.457638, 28.863327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.697651, 32.355145, 28.942669>,  <39.361000, 32.184322, 29.074907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.697651, 32.355145, 28.942669> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382209, -0.038513, 0.923273,
		0.381556, -0.903405, -0.195637,
		0.841625, 0.427055, -0.330595,
		39.950138, 32.483261, 28.843491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967163, 31.696838, 29.139677>,  <39.361000, 32.184322, 29.074907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967163, 31.696838, 29.139677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.089100, 32.077053, 29.163517>,  <40.162262, 32.305183, 29.177820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.089100, 32.077053, 29.163517>,  <39.967163, 31.696838, 29.139677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.089100, 32.077053, 29.163517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371914, -0.176417, 0.911349,
		0.876786, -0.255649, -0.407296,
		0.304840, 0.950537, 0.059600,
		40.180553, 32.362213, 29.181396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525917, 31.662544, 29.434155>,  <39.967163, 31.696838, 29.139677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525917, 31.662544, 29.434155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.466259, 32.054852, 29.484516>,  <40.430466, 32.290237, 29.514734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.466259, 32.054852, 29.484516>,  <40.525917, 31.662544, 29.434155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466259, 32.054852, 29.484516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307827, -0.074950, 0.948486,
		0.939680, 0.180219, -0.290728,
		-0.149145, 0.980767, 0.125905,
		40.421516, 32.349083, 29.522287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<41.513451, 35.791046, 24.817598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.131439, 35.747318, 24.927847>,  <40.902233, 35.721081, 24.993996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.131439, 35.747318, 24.927847>,  <41.513451, 35.791046, 24.817598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131439, 35.747318, 24.927847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202579, -0.438219, -0.875743,
		0.216520, -0.892196, 0.396366,
		-0.955029, -0.109320, 0.275623,
		40.844929, 35.714523, 25.010534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281719, 35.062450, 24.696718>,  <41.513451, 35.791046, 24.817598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281719, 35.062450, 24.696718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.960804, 35.301083, 24.688448>,  <40.768253, 35.444263, 24.683485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.960804, 35.301083, 24.688448>,  <41.281719, 35.062450, 24.696718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960804, 35.301083, 24.688448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190601, -0.288839, -0.938213,
		-0.565692, -0.748774, 0.345441,
		-0.802286, 0.596581, -0.020677,
		40.720119, 35.480057, 24.682245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.758789, 34.674438, 24.338583>,  <41.281719, 35.062450, 24.696718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.758789, 34.674438, 24.338583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.630096, 35.052189, 24.311327>,  <40.552879, 35.278839, 24.294973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.630096, 35.052189, 24.311327>,  <40.758789, 34.674438, 24.338583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630096, 35.052189, 24.311327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268228, -0.159927, -0.949988,
		-0.908042, -0.287368, 0.304762,
		-0.321736, 0.944375, -0.068140,
		40.533577, 35.335503, 24.290884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090954, 34.596386, 24.108444>,  <40.758789, 34.674438, 24.338583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090954, 34.596386, 24.108444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.197094, 34.969730, 24.011751>,  <40.260777, 35.193737, 23.953735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.197094, 34.969730, 24.011751>,  <40.090954, 34.596386, 24.108444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.197094, 34.969730, 24.011751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336854, -0.145173, -0.930298,
		-0.903394, 0.328278, 0.275884,
		0.265346, 0.933358, -0.241731,
		40.276699, 35.249737, 23.939232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590527, 34.803818, 23.789106>,  <40.090954, 34.596386, 24.108444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590527, 34.803818, 23.789106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.862507, 35.062809, 23.651445>,  <40.025696, 35.218204, 23.568850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.862507, 35.062809, 23.651445>,  <39.590527, 34.803818, 23.789106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862507, 35.062809, 23.651445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381350, -0.088619, -0.920173,
		-0.626288, 0.756916, 0.186658,
		0.679953, 0.647475, -0.344152,
		40.066494, 35.257053, 23.548201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234406, 35.336697, 23.420259>,  <39.590527, 34.803818, 23.789106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234406, 35.336697, 23.420259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.606968, 35.394428, 23.286598>,  <39.830505, 35.429066, 23.206402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.606968, 35.394428, 23.286598>,  <39.234406, 35.336697, 23.420259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606968, 35.394428, 23.286598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348245, 0.086255, -0.933427,
		-0.105895, 0.985764, 0.130599,
		0.931403, 0.144326, -0.334154,
		39.886391, 35.437725, 23.186352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214874, 35.897507, 23.110546>,  <39.234406, 35.336697, 23.420259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214874, 35.897507, 23.110546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.537033, 35.715775, 22.958269>,  <39.730328, 35.606735, 22.866903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.537033, 35.715775, 22.958269>,  <39.214874, 35.897507, 23.110546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537033, 35.715775, 22.958269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339403, 0.173066, -0.924583,
		0.485948, 0.873862, -0.014814,
		0.805395, -0.454327, -0.380693,
		39.778652, 35.579475, 22.844061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562363, 36.409573, 22.590569>,  <39.214874, 35.897507, 23.110546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562363, 36.409573, 22.590569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.680244, 36.041294, 22.488220>,  <39.750973, 35.820328, 22.426811>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.680244, 36.041294, 22.488220>,  <39.562363, 36.409573, 22.590569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680244, 36.041294, 22.488220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356627, 0.142448, -0.923324,
		0.886547, 0.363361, -0.286364,
		0.294708, -0.920694, -0.255871,
		39.768658, 35.765087, 22.411459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051361, 36.471912, 22.008198>,  <39.562363, 36.409573, 22.590569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051361, 36.471912, 22.008198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.930801, 36.090733, 22.021072>,  <39.858463, 35.862022, 22.028797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.930801, 36.090733, 22.021072>,  <40.051361, 36.471912, 22.008198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930801, 36.090733, 22.021072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245920, 0.045079, -0.968241,
		0.921238, -0.299746, -0.247938,
		-0.301404, -0.952953, 0.032185,
		39.840382, 35.804848, 22.030727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165020, 36.259583, 21.275017>,  <40.051361, 36.471912, 22.008198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165020, 36.259583, 21.275017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.922764, 35.974159, 21.415890>,  <39.777409, 35.802906, 21.500414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.922764, 35.974159, 21.415890>,  <40.165020, 36.259583, 21.275017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.922764, 35.974159, 21.415890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437093, -0.071519, -0.896568,
		0.664944, -0.696933, -0.268578,
		-0.605639, -0.713562, 0.352181,
		39.741074, 35.760090, 21.521544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.292000, 35.690331, 20.828884>,  <40.165020, 36.259583, 21.275017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.292000, 35.690331, 20.828884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.935616, 35.628685, 20.999737>,  <39.721786, 35.591698, 21.102247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.935616, 35.628685, 20.999737>,  <40.292000, 35.690331, 20.828884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935616, 35.628685, 20.999737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401019, -0.174211, -0.899352,
		0.213013, -0.972574, 0.093413,
		-0.890960, -0.154114, 0.427130,
		39.668327, 35.582451, 21.127876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061741, 35.059334, 20.564264>,  <40.292000, 35.690331, 20.828884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061741, 35.059334, 20.564264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.725285, 35.227406, 20.700462>,  <39.523411, 35.328247, 20.782181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.725285, 35.227406, 20.700462>,  <40.061741, 35.059334, 20.564264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725285, 35.227406, 20.700462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448962, -0.191478, -0.872794,
		-0.301535, -0.887008, 0.349705,
		-0.841136, 0.420183, 0.340495,
		39.472942, 35.353458, 20.802610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553467, 34.596386, 20.503864>,  <40.061741, 35.059334, 20.564264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553467, 34.596386, 20.503864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.357113, 34.944836, 20.509127>,  <39.239300, 35.153904, 20.512285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.357113, 34.944836, 20.509127>,  <39.553467, 34.596386, 20.503864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357113, 34.944836, 20.509127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337549, -0.176245, -0.924661,
		-0.803177, -0.458343, 0.380563,
		-0.490885, 0.871125, 0.013158,
		39.209846, 35.206173, 20.513075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777138, 34.631962, 20.345324>,  <39.553467, 34.596386, 20.503864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777138, 34.631962, 20.345324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.949223, 34.977058, 20.239044>,  <39.052475, 35.184116, 20.175276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.949223, 34.977058, 20.239044>,  <38.777138, 34.631962, 20.345324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949223, 34.977058, 20.239044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458159, -0.044930, -0.887734,
		-0.777821, 0.503650, 0.375942,
		0.430216, 0.862739, -0.265699,
		39.078289, 35.235882, 20.159334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367188, 34.212917, 19.794521>,  <38.777138, 34.631962, 20.345324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367188, 34.212917, 19.794521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.024517, 34.030136, 19.698776>,  <37.818913, 33.920467, 19.641329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.024517, 34.030136, 19.698776>,  <38.367188, 34.212917, 19.794521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024517, 34.030136, 19.698776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019370, -0.435192, 0.900129,
		-0.515488, 0.775757, 0.363968,
		-0.856678, -0.456956, -0.239362,
		37.767513, 33.893051, 19.626968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033474, 34.145817, 20.488445>,  <38.367188, 34.212917, 19.794521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033474, 34.145817, 20.488445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.851120, 33.859314, 20.277111>,  <37.741707, 33.687412, 20.150311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.851120, 33.859314, 20.277111>,  <38.033474, 34.145817, 20.488445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851120, 33.859314, 20.277111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053064, -0.614427, 0.787187,
		-0.888455, 0.330831, 0.318116,
		-0.455885, -0.716261, -0.528336,
		37.714355, 33.644436, 20.118610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392830, 33.908821, 20.802290>,  <38.033474, 34.145817, 20.488445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392830, 33.908821, 20.802290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.509487, 33.606361, 20.567961>,  <37.579483, 33.424885, 20.427364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.509487, 33.606361, 20.567961>,  <37.392830, 33.908821, 20.802290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509487, 33.606361, 20.567961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051487, -0.623968, 0.779752,
		-0.955141, -0.197246, -0.220907,
		0.291642, -0.756147, -0.585822,
		37.596981, 33.379517, 20.392214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917912, 33.365047, 21.023705>,  <37.392830, 33.908821, 20.802290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917912, 33.365047, 21.023705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.233631, 33.191742, 20.849674>,  <37.423061, 33.087757, 20.745256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.233631, 33.191742, 20.849674>,  <36.917912, 33.365047, 21.023705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233631, 33.191742, 20.849674> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025235, -0.730871, 0.682049,
		-0.613494, -0.527360, -0.587807,
		0.789296, -0.433266, -0.435076,
		37.470421, 33.061760, 20.719151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701897, 32.678505, 21.023184>,  <36.917912, 33.365047, 21.023705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701897, 32.678505, 21.023184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.100845, 32.685814, 20.995117>,  <37.340214, 32.690197, 20.978277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.100845, 32.685814, 20.995117>,  <36.701897, 32.678505, 21.023184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100845, 32.685814, 20.995117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067489, -0.587622, 0.806316,
		-0.026499, -0.808929, -0.587308,
		0.997368, 0.018270, -0.070165,
		37.400055, 32.691296, 20.974068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979187, 31.888268, 20.999718>,  <36.701897, 32.678505, 21.023184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979187, 31.888268, 20.999718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.267796, 32.119209, 21.152590>,  <37.440960, 32.257774, 21.244314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.267796, 32.119209, 21.152590>,  <36.979187, 31.888268, 20.999718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267796, 32.119209, 21.152590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064692, -0.605776, 0.793001,
		0.689360, -0.547445, -0.474433,
		0.721525, 0.577355, 0.382182,
		37.484253, 32.292416, 21.267244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255150, 31.483473, 21.513834>,  <36.979187, 31.888268, 20.999718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255150, 31.483473, 21.513834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.396408, 31.845972, 21.606789>,  <37.481163, 32.063473, 21.662561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.396408, 31.845972, 21.606789>,  <37.255150, 31.483473, 21.513834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396408, 31.845972, 21.606789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277514, -0.338683, 0.899044,
		0.893461, -0.253005, -0.371101,
		0.353148, 0.906246, 0.232387,
		37.502354, 32.117847, 21.676504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848919, 31.277914, 21.815989>,  <37.255150, 31.483473, 21.513834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848919, 31.277914, 21.815989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.750725, 31.647993, 21.931744>,  <37.691807, 31.870041, 22.001198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.750725, 31.647993, 21.931744>,  <37.848919, 31.277914, 21.815989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750725, 31.647993, 21.931744> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198121, -0.244339, 0.949235,
		0.948939, 0.290358, -0.123319,
		-0.245486, 0.925198, 0.289389,
		37.677078, 31.925552, 22.018560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332207, 31.431311, 22.347189>,  <37.848919, 31.277914, 21.815989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332207, 31.431311, 22.347189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.073212, 31.732166, 22.396250>,  <37.917816, 31.912680, 22.425686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.073212, 31.732166, 22.396250>,  <38.332207, 31.431311, 22.347189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073212, 31.732166, 22.396250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045074, -0.122869, 0.991399,
		0.760742, 0.647447, 0.045654,
		-0.647487, 0.752141, 0.122654,
		37.878967, 31.957809, 22.433046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661572, 31.996317, 22.685030>,  <38.332207, 31.431311, 22.347189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661572, 31.996317, 22.685030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.268505, 32.022251, 22.754490>,  <38.032665, 32.037811, 22.796165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.268505, 32.022251, 22.754490>,  <38.661572, 31.996317, 22.685030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268505, 32.022251, 22.754490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175128, 0.017773, 0.984385,
		0.060736, 0.997738, -0.028819,
		-0.982671, 0.064835, 0.173652,
		37.973705, 32.041702, 22.806585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664883, 32.495605, 23.132343>,  <38.661572, 31.996317, 22.685030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664883, 32.495605, 23.132343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.310177, 32.317745, 23.182850>,  <38.097355, 32.211029, 23.213154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.310177, 32.317745, 23.182850>,  <38.664883, 32.495605, 23.132343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310177, 32.317745, 23.182850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051731, 0.175986, 0.983032,
		-0.459326, 0.878246, -0.133055,
		-0.886760, -0.444650, 0.126267,
		38.044147, 32.184349, 23.220730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364025, 32.885284, 23.624063>,  <38.664883, 32.495605, 23.132343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364025, 32.885284, 23.624063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.127724, 32.563053, 23.642191>,  <37.985943, 32.369713, 23.653067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.127724, 32.563053, 23.642191>,  <38.364025, 32.885284, 23.624063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127724, 32.563053, 23.642191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071739, 0.003502, 0.997417,
		-0.803656, 0.592479, 0.055722,
		-0.590754, -0.805578, 0.045319,
		37.950497, 32.321381, 23.655787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789722, 33.058014, 23.990677>,  <38.364025, 32.885284, 23.624063>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789722, 33.058014, 23.990677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.844860, 32.664268, 24.034544>,  <37.877941, 32.428020, 24.060863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.844860, 32.664268, 24.034544>,  <37.789722, 33.058014, 23.990677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.844860, 32.664268, 24.034544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003872, 0.110187, 0.993903,
		-0.990446, -0.137428, 0.011377,
		0.137844, -0.984364, 0.109666,
		37.886215, 32.368958, 24.067444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400761, 32.830811, 24.589981>,  <37.789722, 33.058014, 23.990677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400761, 32.830811, 24.589981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.667885, 32.533463, 24.574823>,  <37.828159, 32.355053, 24.565729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.667885, 32.533463, 24.574823>,  <37.400761, 32.830811, 24.589981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667885, 32.533463, 24.574823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167225, 0.100231, 0.980811,
		-0.725307, -0.661328, 0.191245,
		0.667807, -0.743370, -0.037893,
		37.868225, 32.310452, 24.563456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766914, 32.697399, 24.540115>,  <37.400761, 32.830811, 24.589981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766914, 32.697399, 24.540115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.419281, 32.525307, 24.637764>,  <36.210701, 32.422050, 24.696354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.419281, 32.525307, 24.637764>,  <36.766914, 32.697399, 24.540115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419281, 32.525307, 24.637764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371486, 0.241776, -0.896405,
		0.326639, -0.869738, -0.369948,
		-0.869083, -0.430232, 0.244122,
		36.158554, 32.396236, 24.711000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579941, 32.239616, 23.920103>,  <36.766914, 32.697399, 24.540115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579941, 32.239616, 23.920103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.254364, 32.340870, 24.129263>,  <36.059017, 32.401623, 24.254759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.254364, 32.340870, 24.129263>,  <36.579941, 32.239616, 23.920103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254364, 32.340870, 24.129263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483077, 0.205066, -0.851225,
		-0.322705, -0.945447, -0.044627,
		-0.813940, 0.253136, 0.522900,
		36.010181, 32.416809, 24.286133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103397, 32.097260, 23.464138>,  <36.579941, 32.239616, 23.920103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103397, 32.097260, 23.464138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.900856, 32.326199, 23.722137>,  <35.779331, 32.463562, 23.876938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.900856, 32.326199, 23.722137>,  <36.103397, 32.097260, 23.464138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900856, 32.326199, 23.722137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449756, 0.462896, -0.763837,
		-0.735748, -0.676863, 0.023029,
		-0.506354, 0.572349, 0.644998,
		35.748951, 32.497902, 23.915636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375443, 31.956560, 23.347088>,  <36.103397, 32.097260, 23.464138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375443, 31.956560, 23.347088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.433331, 32.325123, 23.491344>,  <35.468063, 32.546261, 23.577898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.433331, 32.325123, 23.491344>,  <35.375443, 31.956560, 23.347088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433331, 32.325123, 23.491344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617646, 0.368873, -0.694583,
		-0.773026, -0.122229, 0.622488,
		0.144721, 0.921408, 0.360643,
		35.476746, 32.601543, 23.599537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781300, 32.302559, 23.246393>,  <35.375443, 31.956560, 23.347088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781300, 32.302559, 23.246393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.007164, 32.627209, 23.306297>,  <35.142681, 32.821999, 23.342239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.007164, 32.627209, 23.306297>,  <34.781300, 32.302559, 23.246393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007164, 32.627209, 23.306297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533268, 0.497282, -0.684351,
		-0.629908, 0.306564, 0.713607,
		0.564661, 0.811621, 0.149761,
		35.176563, 32.870697, 23.351225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338146, 32.792797, 23.127798>,  <34.781300, 32.302559, 23.246393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338146, 32.792797, 23.127798> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.709103, 32.936920, 23.087568>,  <34.931679, 33.023396, 23.063431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.709103, 32.936920, 23.087568>,  <34.338146, 32.792797, 23.127798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709103, 32.936920, 23.087568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248230, 0.391596, -0.886022,
		-0.279858, 0.846658, 0.452604,
		0.927395, 0.360310, -0.100575,
		34.987320, 33.045013, 23.057396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208366, 33.466461, 22.923330>,  <34.338146, 32.792797, 23.127798>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208366, 33.466461, 22.923330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.582569, 33.373154, 22.817196>,  <34.807091, 33.317169, 22.753515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.582569, 33.373154, 22.817196>,  <34.208366, 33.466461, 22.923330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582569, 33.373154, 22.817196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202807, 0.260375, -0.943967,
		0.289289, 0.936904, 0.196275,
		0.935511, -0.233273, -0.265334,
		34.863224, 33.303173, 22.737597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029453, 34.234406, 22.937244>,  <34.208366, 33.466461, 22.923330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029453, 34.234406, 22.937244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.649189, 34.357048, 22.956125>,  <33.421028, 34.430634, 22.967453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.649189, 34.357048, 22.956125>,  <34.029453, 34.234406, 22.937244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649189, 34.357048, 22.956125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003131, -0.142664, 0.989766,
		0.310206, 0.941083, 0.134665,
		-0.950664, 0.306610, 0.047202,
		33.363991, 34.449032, 22.970285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068130, 34.714951, 23.479176>,  <34.029453, 34.234406, 22.937244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068130, 34.714951, 23.479176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.678638, 34.627277, 23.454477>,  <33.444942, 34.574673, 23.439657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.678638, 34.627277, 23.454477>,  <34.068130, 34.714951, 23.479176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.678638, 34.627277, 23.454477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015692, -0.205927, 0.978442,
		-0.227173, 0.953705, 0.197077,
		-0.973728, -0.219183, -0.061747,
		33.386520, 34.561523, 23.435953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744003, 35.066444, 24.001013>,  <34.068130, 34.714951, 23.479176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744003, 35.066444, 24.001013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.473309, 34.778774, 23.938015>,  <33.310890, 34.606171, 23.900217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.473309, 34.778774, 23.938015>,  <33.744003, 35.066444, 24.001013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473309, 34.778774, 23.938015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116260, -0.106842, 0.987455,
		-0.726985, 0.686560, -0.011307,
		-0.676740, -0.719180, -0.157492,
		33.270287, 34.563019, 23.890768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464596, 35.022476, 24.634869>,  <33.744003, 35.066444, 24.001013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464596, 35.022476, 24.634869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.266422, 34.721272, 24.461653>,  <33.147518, 34.540550, 24.357723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.266422, 34.721272, 24.461653>,  <33.464596, 35.022476, 24.634869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266422, 34.721272, 24.461653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347683, -0.284944, 0.893265,
		-0.796027, 0.593117, -0.120637,
		-0.495436, -0.753007, -0.433040,
		33.117790, 34.495369, 24.331741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766068, 35.046368, 24.817175>,  <33.464596, 35.022476, 24.634869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766068, 35.046368, 24.817175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.874519, 34.674267, 24.718290>,  <32.939590, 34.451004, 24.658958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.874519, 34.674267, 24.718290>,  <32.766068, 35.046368, 24.817175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874519, 34.674267, 24.718290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139002, -0.291982, 0.946269,
		-0.952453, -0.222199, -0.208472,
		0.271130, -0.930255, -0.247213,
		32.955860, 34.395191, 24.644127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279480, 34.621384, 25.261093>,  <32.766068, 35.046368, 24.817175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279480, 34.621384, 25.261093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.550591, 34.358822, 25.128574>,  <32.713257, 34.201286, 25.049063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.550591, 34.358822, 25.128574>,  <32.279480, 34.621384, 25.261093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550591, 34.358822, 25.128574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084170, -0.516882, 0.851909,
		-0.730434, -0.549518, -0.405580,
		0.677776, -0.656401, -0.331295,
		32.753925, 34.161903, 25.029186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004410, 33.934956, 25.414629>,  <32.279480, 34.621384, 25.261093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004410, 33.934956, 25.414629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.394226, 33.846851, 25.397877>,  <32.628117, 33.793987, 25.387825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.394226, 33.846851, 25.397877>,  <32.004410, 33.934956, 25.414629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394226, 33.846851, 25.397877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096982, -0.582536, 0.806998,
		-0.202145, -0.782392, -0.589067,
		0.974542, -0.220260, -0.041879,
		32.686588, 33.780773, 25.385313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.447510, 36.817078, 21.446302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.778111, 36.596725, 21.399950>,  <36.976471, 36.464516, 21.372139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.778111, 36.596725, 21.399950>,  <36.447510, 36.817078, 21.446302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778111, 36.596725, 21.399950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330445, 0.308116, 0.892116,
		-0.455744, -0.775626, 0.436694,
		0.826501, -0.550880, -0.115879,
		37.026062, 36.431461, 21.365187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613792, 36.371887, 22.000597>,  <36.447510, 36.817078, 21.446302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613792, 36.371887, 22.000597> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.980629, 36.456837, 21.865639>,  <37.200733, 36.507805, 21.784664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.980629, 36.456837, 21.865639>,  <36.613792, 36.371887, 22.000597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980629, 36.456837, 21.865639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281492, 0.254348, 0.925240,
		0.282315, -0.943506, 0.173479,
		0.917094, 0.212376, -0.337396,
		37.255756, 36.520546, 21.764420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085598, 36.111500, 22.479279>,  <36.613792, 36.371887, 22.000597>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085598, 36.111500, 22.479279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.279308, 36.406559, 22.291086>,  <37.395535, 36.583595, 22.178171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.279308, 36.406559, 22.291086>,  <37.085598, 36.111500, 22.479279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279308, 36.406559, 22.291086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342837, 0.334746, 0.877729,
		0.804948, -0.586359, -0.090785,
		0.484274, 0.737651, -0.470479,
		37.424591, 36.627853, 22.149942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715210, 35.948467, 22.730453>,  <37.085598, 36.111500, 22.479279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715210, 35.948467, 22.730453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.720104, 36.327522, 22.602810>,  <37.723042, 36.554955, 22.526224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.720104, 36.327522, 22.602810>,  <37.715210, 35.948467, 22.730453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720104, 36.327522, 22.602810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442751, 0.281009, 0.851472,
		0.896561, -0.151701, -0.416131,
		0.012233, 0.947639, -0.319107,
		37.723774, 36.611813, 22.507078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335224, 36.079891, 22.882557>,  <37.715210, 35.948467, 22.730453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335224, 36.079891, 22.882557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.141651, 36.425716, 22.828392>,  <38.025505, 36.633213, 22.795893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.141651, 36.425716, 22.828392>,  <38.335224, 36.079891, 22.882557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141651, 36.425716, 22.828392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317065, 0.317449, 0.893698,
		0.815644, 0.389559, -0.427748,
		-0.483936, 0.864563, -0.135410,
		37.996471, 36.685085, 22.787769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771889, 36.567154, 23.057604>,  <38.335224, 36.079891, 22.882557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771889, 36.567154, 23.057604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.414433, 36.735069, 23.121069>,  <38.199959, 36.835819, 23.159147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.414433, 36.735069, 23.121069>,  <38.771889, 36.567154, 23.057604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414433, 36.735069, 23.121069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351470, 0.434849, 0.829081,
		0.279047, 0.796669, -0.536145,
		-0.893645, 0.419792, 0.158662,
		38.146339, 36.861008, 23.168667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.955429, 37.186573, 23.341421>,  <38.771889, 36.567154, 23.057604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.955429, 37.186573, 23.341421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.568172, 37.142834, 23.431532>,  <38.335819, 37.116589, 23.485598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.568172, 37.142834, 23.431532>,  <38.955429, 37.186573, 23.341421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568172, 37.142834, 23.431532> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168321, 0.381898, 0.908748,
		-0.185405, 0.917713, -0.351324,
		-0.968139, -0.109352, 0.225276,
		38.277729, 37.110027, 23.499115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.675240, 37.848095, 23.477976>,  <38.955429, 37.186573, 23.341421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.675240, 37.848095, 23.477976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.409218, 37.594002, 23.635042>,  <38.249603, 37.441547, 23.729282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.409218, 37.594002, 23.635042>,  <38.675240, 37.848095, 23.477976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409218, 37.594002, 23.635042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047208, 0.488990, 0.871011,
		-0.745302, 0.597806, -0.295217,
		-0.665053, -0.635230, 0.392666,
		38.209702, 37.403431, 23.752842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304867, 38.274132, 23.885550>,  <38.675240, 37.848095, 23.477976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304867, 38.274132, 23.885550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.183201, 37.909218, 23.995258>,  <38.110199, 37.690269, 24.061083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.183201, 37.909218, 23.995258>,  <38.304867, 38.274132, 23.885550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.183201, 37.909218, 23.995258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329464, 0.370888, 0.868271,
		-0.893832, 0.173738, -0.413376,
		-0.304168, -0.912281, 0.274271,
		38.091949, 37.635532, 24.077539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606457, 38.319771, 24.210642>,  <38.304867, 38.274132, 23.885550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606457, 38.319771, 24.210642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.803326, 37.996380, 24.339720>,  <37.921448, 37.802345, 24.417168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.803326, 37.996380, 24.339720>,  <37.606457, 38.319771, 24.210642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803326, 37.996380, 24.339720> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123490, 0.302108, 0.945241,
		-0.861692, -0.505075, 0.048852,
		0.492176, -0.808474, 0.322696,
		37.950977, 37.753838, 24.436529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049633, 38.078239, 24.682344>,  <37.606457, 38.319771, 24.210642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049633, 38.078239, 24.682344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.393261, 37.912434, 24.802462>,  <37.599438, 37.812950, 24.874531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.393261, 37.912434, 24.802462>,  <37.049633, 38.078239, 24.682344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393261, 37.912434, 24.802462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125494, 0.398196, 0.908676,
		-0.496238, -0.818300, 0.290058,
		0.859069, -0.414519, 0.300292,
		37.650982, 37.788078, 24.892550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914589, 37.871796, 25.278034>,  <37.049633, 38.078239, 24.682344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914589, 37.871796, 25.278034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.314426, 37.860672, 25.275663>,  <37.554329, 37.853996, 25.274240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.314426, 37.860672, 25.275663>,  <36.914589, 37.871796, 25.278034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314426, 37.860672, 25.275663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010103, 0.152577, 0.988240,
		-0.026583, -0.987900, 0.152796,
		0.999596, -0.027814, -0.005925,
		37.614304, 37.852329, 25.273886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342381, 37.308628, 25.344807>,  <36.914589, 37.871796, 25.278034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342381, 37.308628, 25.344807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.997856, 37.481941, 25.450943>,  <35.791142, 37.585930, 25.514626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.997856, 37.481941, 25.450943>,  <36.342381, 37.308628, 25.344807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997856, 37.481941, 25.450943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283460, 0.023622, -0.958693,
		-0.421657, -0.900947, 0.102474,
		-0.861311, 0.433286, 0.265342,
		35.739464, 37.611927, 25.530546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827015, 36.915958, 24.946821>,  <36.342381, 37.308628, 25.344807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827015, 36.915958, 24.946821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.631691, 37.247349, 25.056501>,  <35.514496, 37.446182, 25.122311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.631691, 37.247349, 25.056501>,  <35.827015, 36.915958, 24.946821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631691, 37.247349, 25.056501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525086, -0.027969, -0.850589,
		-0.697022, -0.559330, 0.448677,
		-0.488309, 0.828473, 0.274202,
		35.485199, 37.495892, 25.138762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055752, 36.775818, 24.948421>,  <35.827015, 36.915958, 24.946821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055752, 36.775818, 24.948421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.096157, 37.173340, 24.929884>,  <35.120399, 37.411854, 24.918762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.096157, 37.173340, 24.929884>,  <35.055752, 36.775818, 24.948421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096157, 37.173340, 24.929884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510518, 0.011799, -0.859786,
		-0.853913, 0.110511, 0.508547,
		0.101016, 0.993805, -0.046343,
		35.126461, 37.471481, 24.915981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372757, 37.020042, 24.866537>,  <35.055752, 36.775818, 24.948421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372757, 37.020042, 24.866537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.629730, 37.289967, 24.721262>,  <34.783916, 37.451923, 24.634098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.629730, 37.289967, 24.721262>,  <34.372757, 37.020042, 24.866537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629730, 37.289967, 24.721262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472033, -0.024896, -0.881230,
		-0.603707, 0.737569, 0.302540,
		0.642436, 0.674813, -0.363186,
		34.822460, 37.492409, 24.612307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952877, 37.586174, 24.531965>,  <34.372757, 37.020042, 24.866537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952877, 37.586174, 24.531965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.313080, 37.586887, 24.358034>,  <34.529202, 37.587315, 24.253675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.313080, 37.586887, 24.358034>,  <33.952877, 37.586174, 24.531965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313080, 37.586887, 24.358034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430890, 0.138008, -0.891789,
		0.058417, 0.990429, 0.125047,
		0.900512, 0.001786, -0.434828,
		34.583233, 37.587421, 24.227585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946163, 38.083614, 23.903246>,  <33.952877, 37.586174, 24.531965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946163, 38.083614, 23.903246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.297951, 37.918846, 23.807865>,  <34.509022, 37.819984, 23.750637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.297951, 37.918846, 23.807865>,  <33.946163, 38.083614, 23.903246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297951, 37.918846, 23.807865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150822, 0.233988, -0.960470,
		0.451432, 0.880665, 0.143658,
		0.879467, -0.411921, -0.238453,
		34.561790, 37.795269, 23.736330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333191, 38.578369, 23.483408>,  <33.946163, 38.083614, 23.903246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333191, 38.578369, 23.483408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.472038, 38.209908, 23.413004>,  <34.555347, 37.988831, 23.370762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.472038, 38.209908, 23.413004>,  <34.333191, 38.578369, 23.483408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472038, 38.209908, 23.413004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009248, 0.191032, -0.981540,
		0.937775, 0.339084, 0.074830,
		0.347119, -0.921156, -0.176009,
		34.576176, 37.933559, 23.360201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827538, 38.721527, 22.994390>,  <34.333191, 38.578369, 23.483408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827538, 38.721527, 22.994390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.733273, 38.335804, 22.946095>,  <34.676712, 38.104370, 22.917118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.733273, 38.335804, 22.946095>,  <34.827538, 38.721527, 22.994390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733273, 38.335804, 22.946095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065547, 0.139727, -0.988018,
		0.969621, -0.224929, -0.096136,
		-0.235667, -0.964304, -0.120739,
		34.662571, 38.046513, 22.909872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199997, 38.567024, 22.266895>,  <34.827538, 38.721527, 22.994390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199997, 38.567024, 22.266895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.929958, 38.281719, 22.342264>,  <34.767937, 38.110535, 22.387486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.929958, 38.281719, 22.342264>,  <35.199997, 38.567024, 22.266895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929958, 38.281719, 22.342264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175017, -0.093268, -0.980138,
		0.716669, -0.694663, -0.061868,
		-0.675095, -0.713263, 0.188420,
		34.727428, 38.067741, 22.398790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059509, 38.146259, 21.681948>,  <35.199997, 38.567024, 22.266895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059509, 38.146259, 21.681948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.704575, 38.069195, 21.849525>,  <34.491615, 38.022957, 21.950071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.704575, 38.069195, 21.849525>,  <35.059509, 38.146259, 21.681948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704575, 38.069195, 21.849525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444155, 0.112924, -0.888805,
		0.123928, -0.974746, -0.185772,
		-0.887338, -0.192660, 0.418945,
		34.438374, 38.011395, 21.975208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771816, 37.557961, 21.368923>,  <35.059509, 38.146259, 21.681948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771816, 37.557961, 21.368923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.443157, 37.739014, 21.507496>,  <34.245960, 37.847645, 21.590639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.443157, 37.739014, 21.507496>,  <34.771816, 37.557961, 21.368923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443157, 37.739014, 21.507496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498592, -0.276215, -0.821652,
		-0.276215, -0.847839, 0.452630,
		0.821652, -0.452630, -0.346431,
		34.196663, 37.874802, 21.611425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275524, 37.177101, 21.025599>,  <34.771816, 37.557961, 21.368923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275524, 37.177101, 21.025599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.085064, 37.504261, 21.154799>,  <33.970787, 37.700558, 21.232319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.085064, 37.504261, 21.154799>,  <34.275524, 37.177101, 21.025599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085064, 37.504261, 21.154799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608349, -0.041147, -0.792602,
		-0.634975, -0.573894, 0.517158,
		-0.476149, 0.817895, 0.323001,
		33.942219, 37.749630, 21.251699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586651, 37.145309, 20.782293>,  <34.275524, 37.177101, 21.025599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586651, 37.145309, 20.782293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.575497, 37.531261, 20.886782>,  <33.568806, 37.762833, 20.949474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.575497, 37.531261, 20.886782>,  <33.586651, 37.145309, 20.782293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575497, 37.531261, 20.886782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520596, 0.209066, -0.827811,
		-0.853348, -0.159073, 0.496481,
		-0.027885, 0.964877, 0.261219,
		33.567131, 37.820724, 20.965147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133522, 36.931629, 20.378185>,  <33.586651, 37.145309, 20.782293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133522, 36.931629, 20.378185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.073547, 36.541336, 20.314344>,  <33.037563, 36.307159, 20.276041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.073547, 36.541336, 20.314344>,  <33.133522, 36.931629, 20.378185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073547, 36.541336, 20.314344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182790, -0.186000, 0.965397,
		-0.971651, 0.115577, 0.206242,
		-0.149939, -0.975728, -0.159601,
		33.028564, 36.248619, 20.266464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704769, 36.770660, 20.923422>,  <33.133522, 36.931629, 20.378185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704769, 36.770660, 20.923422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.806877, 36.409344, 20.785494>,  <32.868141, 36.192554, 20.702738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.806877, 36.409344, 20.785494>,  <32.704769, 36.770660, 20.923422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806877, 36.409344, 20.785494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122645, -0.323502, 0.938245,
		-0.959061, -0.281793, 0.028206,
		0.255266, -0.903294, -0.344818,
		32.883457, 36.138355, 20.682049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197895, 36.298721, 21.217506>,  <32.704769, 36.770660, 20.923422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197895, 36.298721, 21.217506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.515732, 36.076492, 21.119566>,  <32.706436, 35.943153, 21.060802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.515732, 36.076492, 21.119566>,  <32.197895, 36.298721, 21.217506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515732, 36.076492, 21.119566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033401, -0.442676, 0.896060,
		-0.606219, -0.703827, -0.370305,
		0.794596, -0.555577, -0.244850,
		32.754112, 35.909821, 21.046112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988466, 35.690655, 21.527128>,  <32.197895, 36.298721, 21.217506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988466, 35.690655, 21.527128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.380539, 35.641346, 21.465097>,  <32.615784, 35.611763, 21.427879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.380539, 35.641346, 21.465097>,  <31.988466, 35.690655, 21.527128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380539, 35.641346, 21.465097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060582, -0.558795, 0.827090,
		-0.188610, -0.820094, -0.540253,
		0.980182, -0.123268, -0.155077,
		32.674595, 35.604366, 21.418573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111614, 34.987530, 21.548225>,  <31.988466, 35.690655, 21.527128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111614, 34.987530, 21.548225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.475620, 35.146904, 21.594038>,  <32.694023, 35.242527, 21.621525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.475620, 35.146904, 21.594038>,  <32.111614, 34.987530, 21.548225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475620, 35.146904, 21.594038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156569, -0.586118, 0.794954,
		0.383865, -0.705491, -0.595760,
		0.910019, 0.398432, 0.114532,
		32.748627, 35.266434, 21.628397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404232, 34.354088, 21.802189>,  <32.111614, 34.987530, 21.548225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404232, 34.354088, 21.802189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.645046, 34.670563, 21.845230>,  <32.789536, 34.860447, 21.871054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.645046, 34.670563, 21.845230>,  <32.404232, 34.354088, 21.802189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645046, 34.670563, 21.845230> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383360, -0.404621, 0.830251,
		0.700423, -0.458587, -0.546905,
		0.602032, 0.791188, 0.107602,
		32.825657, 34.907921, 21.877510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093666, 34.091080, 21.868973>,  <32.404232, 34.354088, 21.802189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093666, 34.091080, 21.868973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.101368, 34.447269, 22.050819>,  <33.105991, 34.660984, 22.159927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.101368, 34.447269, 22.050819>,  <33.093666, 34.091080, 21.868973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101368, 34.447269, 22.050819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411338, -0.421495, 0.808173,
		0.911279, 0.171440, -0.374404,
		0.019256, 0.890478, 0.454619,
		33.107143, 34.714413, 22.187204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609879, 33.944862, 22.314260>,  <33.093666, 34.091080, 21.868973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609879, 33.944862, 22.314260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.383198, 34.245617, 22.449032>,  <33.247189, 34.426067, 22.529894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.383198, 34.245617, 22.449032>,  <33.609879, 33.944862, 22.314260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383198, 34.245617, 22.449032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136342, -0.317715, 0.938333,
		0.812564, 0.577692, 0.077537,
		-0.566702, 0.751883, 0.336927,
		33.213188, 34.471184, 22.550110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323196, 33.977539, 22.251760>,  <33.609879, 33.944862, 22.314260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323196, 33.977539, 22.251760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.652592, 33.750607, 22.250734>,  <34.850227, 33.614449, 22.250118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.652592, 33.750607, 22.250734>,  <34.323196, 33.977539, 22.251760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652592, 33.750607, 22.250734> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136341, 0.202289, -0.969789,
		0.550706, 0.798260, 0.243932,
		0.823489, -0.567327, -0.002566,
		34.899639, 33.580410, 22.249964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804836, 34.426544, 22.062065>,  <34.323196, 33.977539, 22.251760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804836, 34.426544, 22.062065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.921818, 34.052700, 21.981108>,  <34.992008, 33.828392, 21.932533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.921818, 34.052700, 21.981108>,  <34.804836, 34.426544, 22.062065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921818, 34.052700, 21.981108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193416, 0.265086, -0.944627,
		0.936514, 0.237116, 0.258296,
		0.292457, -0.934615, -0.202395,
		35.009556, 33.772316, 21.920389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455963, 34.493282, 21.656384>,  <34.804836, 34.426544, 22.062065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455963, 34.493282, 21.656384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.288731, 34.136814, 21.585939>,  <35.188389, 33.922932, 21.543673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.288731, 34.136814, 21.585939>,  <35.455963, 34.493282, 21.656384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288731, 34.136814, 21.585939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141060, 0.127827, -0.981714,
		0.897389, -0.435282, 0.072266,
		-0.418085, -0.891173, -0.176111,
		35.163303, 33.869461, 21.533106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891361, 34.023407, 21.278362>,  <35.455963, 34.493282, 21.656384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891361, 34.023407, 21.278362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.539108, 33.853626, 21.194145>,  <35.327759, 33.751759, 21.143616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.539108, 33.853626, 21.194145>,  <35.891361, 34.023407, 21.278362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539108, 33.853626, 21.194145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296400, -0.146840, -0.943708,
		0.369647, -0.893462, 0.255120,
		-0.880629, -0.424456, -0.210543,
		35.274918, 33.726288, 21.130981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058754, 33.507561, 20.964554>,  <35.891361, 34.023407, 21.278362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058754, 33.507561, 20.964554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.671017, 33.522629, 20.867434>,  <35.438374, 33.531670, 20.809162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.671017, 33.522629, 20.867434>,  <36.058754, 33.507561, 20.964554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671017, 33.522629, 20.867434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226590, -0.245076, -0.942653,
		-0.095017, -0.968772, 0.229026,
		-0.969344, 0.037673, -0.242800,
		35.380215, 33.533932, 20.794594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990955, 32.925549, 20.627760>,  <36.058754, 33.507561, 20.964554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990955, 32.925549, 20.627760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.692146, 33.168457, 20.519554>,  <35.512859, 33.314201, 20.454630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.692146, 33.168457, 20.519554>,  <35.990955, 32.925549, 20.627760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692146, 33.168457, 20.519554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108456, -0.290137, -0.950819,
		-0.655894, -0.739621, 0.150876,
		-0.747021, 0.607273, -0.270516,
		35.468040, 33.350639, 20.438400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672932, 32.590549, 20.049986>,  <35.990955, 32.925549, 20.627760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672932, 32.590549, 20.049986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.509296, 32.954327, 20.020172>,  <35.411114, 33.172592, 20.002283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.509296, 32.954327, 20.020172>,  <35.672932, 32.590549, 20.049986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509296, 32.954327, 20.020172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114320, -0.029957, -0.992992,
		-0.905304, -0.414745, -0.091713,
		-0.409091, 0.909445, -0.074534,
		35.386570, 33.227161, 19.997812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218208, 32.452782, 19.584328>,  <35.672932, 32.590549, 20.049986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218208, 32.452782, 19.584328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.277889, 32.848244, 19.591320>,  <35.313698, 33.085522, 19.595516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.277889, 32.848244, 19.591320>,  <35.218208, 32.452782, 19.584328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277889, 32.848244, 19.591320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042107, 0.011311, -0.999049,
		-0.987910, 0.149795, -0.039941,
		0.149200, 0.988652, 0.017481,
		35.322651, 33.144840, 19.596565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770073, 32.710148, 19.039898>,  <35.218208, 32.452782, 19.584328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770073, 32.710148, 19.039898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.046261, 32.991089, 19.109119>,  <35.211975, 33.159653, 19.150652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.046261, 32.991089, 19.109119>,  <34.770073, 32.710148, 19.039898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046261, 32.991089, 19.109119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280833, -0.039808, -0.958931,
		-0.666618, 0.710716, -0.224730,
		0.690473, 0.702352, 0.173056,
		35.253403, 33.201794, 19.161036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.960670, 30.975130, 34.770489> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.178825, 31.227636, 34.549923>,  <38.309719, 31.379139, 34.417583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.178825, 31.227636, 34.549923>,  <37.960670, 30.975130, 34.770489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178825, 31.227636, 34.549923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733842, 0.041738, -0.678037,
		-0.405005, 0.774444, 0.486011,
		0.545387, 0.631264, -0.551416,
		38.342442, 31.417015, 34.384499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559563, 31.558949, 34.767315>,  <37.960670, 30.975130, 34.770489>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559563, 31.558949, 34.767315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.798946, 31.546154, 34.447109>,  <37.942577, 31.538477, 34.254986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.798946, 31.546154, 34.447109>,  <37.559563, 31.558949, 34.767315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798946, 31.546154, 34.447109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799617, 0.038048, -0.599304,
		0.049626, 0.998764, -0.002805,
		0.598457, -0.031984, -0.800517,
		37.978485, 31.536558, 34.206955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328514, 32.114216, 34.329689>,  <37.559563, 31.558949, 34.767315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328514, 32.114216, 34.329689> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.550827, 31.895031, 34.079617>,  <37.684216, 31.763521, 33.929573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.550827, 31.895031, 34.079617>,  <37.328514, 32.114216, 34.329689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550827, 31.895031, 34.079617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671045, 0.148203, -0.726453,
		0.490719, 0.823273, -0.285336,
		0.555781, -0.547958, -0.625179,
		37.717560, 31.730644, 33.892063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259171, 32.452702, 33.624794>,  <37.328514, 32.114216, 34.329689>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259171, 32.452702, 33.624794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.396347, 32.082954, 33.557949>,  <37.478653, 31.861105, 33.517841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.396347, 32.082954, 33.557949>,  <37.259171, 32.452702, 33.624794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396347, 32.082954, 33.557949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617389, -0.087723, -0.781752,
		0.707969, 0.371271, -0.600780,
		0.342944, -0.924372, -0.167114,
		37.499229, 31.805643, 33.507816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378342, 32.440338, 32.927094>,  <37.259171, 32.452702, 33.624794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378342, 32.440338, 32.927094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.350544, 32.056183, 33.035030>,  <37.333866, 31.825689, 33.099792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.350544, 32.056183, 33.035030>,  <37.378342, 32.440338, 32.927094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350544, 32.056183, 33.035030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503408, -0.199768, -0.840639,
		0.861249, -0.194264, -0.469586,
		-0.069498, -0.960393, 0.269844,
		37.329693, 31.768064, 33.115982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776581, 32.104446, 32.427174>,  <37.378342, 32.440338, 32.927094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776581, 32.104446, 32.427174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.518551, 31.841639, 32.583229>,  <37.363735, 31.683954, 32.676861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.518551, 31.841639, 32.583229>,  <37.776581, 32.104446, 32.427174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518551, 31.841639, 32.583229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340139, -0.210294, -0.916560,
		0.684242, -0.723948, -0.087823,
		-0.645073, -0.657020, 0.390135,
		37.325027, 31.644533, 32.700268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961071, 31.415089, 32.103943>,  <37.776581, 32.104446, 32.427174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961071, 31.415089, 32.103943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.589275, 31.408085, 32.251320>,  <37.366199, 31.403883, 32.339745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.589275, 31.408085, 32.251320>,  <37.961071, 31.415089, 32.103943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589275, 31.408085, 32.251320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364343, -0.112239, -0.924476,
		0.057543, -0.993527, 0.097945,
		-0.929485, -0.017512, 0.368443,
		37.310429, 31.402832, 32.361855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624142, 30.819773, 31.718107>,  <37.961071, 31.415089, 32.103943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624142, 30.819773, 31.718107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.306240, 31.007042, 31.872606>,  <37.115501, 31.119404, 31.965305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.306240, 31.007042, 31.872606>,  <37.624142, 30.819773, 31.718107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306240, 31.007042, 31.872606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504555, -0.155923, -0.849183,
		-0.337340, -0.869771, 0.360139,
		-0.794749, 0.468173, 0.386249,
		37.067814, 31.147493, 31.988482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996941, 30.358570, 31.582970>,  <37.624142, 30.819773, 31.718107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996941, 30.358570, 31.582970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.900410, 30.744900, 31.620796>,  <36.842491, 30.976698, 31.643492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.900410, 30.744900, 31.620796>,  <36.996941, 30.358570, 31.582970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900410, 30.744900, 31.620796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471635, -0.031564, -0.881229,
		-0.848129, -0.257263, 0.463134,
		-0.241326, 0.965826, 0.094564,
		36.828011, 31.034647, 31.649166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406422, 30.360620, 31.294531>,  <36.996941, 30.358570, 31.582970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406422, 30.360620, 31.294531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.481117, 30.753443, 31.305124>,  <36.525932, 30.989136, 31.311480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.481117, 30.753443, 31.305124>,  <36.406422, 30.360620, 31.294531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481117, 30.753443, 31.305124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369721, 0.095227, -0.924250,
		-0.910185, 0.162798, 0.380868,
		0.186735, 0.982053, 0.026484,
		36.537136, 31.048059, 31.313070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766533, 30.667002, 30.960550>,  <36.406422, 30.360620, 31.294531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766533, 30.667002, 30.960550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.055473, 30.941929, 30.930079>,  <36.228836, 31.106886, 30.911795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.055473, 30.941929, 30.930079>,  <35.766533, 30.667002, 30.960550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055473, 30.941929, 30.930079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168718, 0.068331, -0.983293,
		-0.670629, 0.723136, 0.165322,
		0.722351, 0.687317, -0.076181,
		36.272179, 31.148125, 30.907225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459297, 31.273014, 30.593403>,  <35.766533, 30.667002, 30.960550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459297, 31.273014, 30.593403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.854584, 31.261427, 30.533278>,  <36.091755, 31.254475, 30.497202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.854584, 31.261427, 30.533278>,  <35.459297, 31.273014, 30.593403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854584, 31.261427, 30.533278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150209, 0.005736, -0.988638,
		0.029500, 0.999564, 0.001317,
		0.988214, -0.028967, -0.150312,
		36.151047, 31.252737, 30.488184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292229, 31.884150, 30.875231>,  <35.459297, 31.273014, 30.593403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292229, 31.884150, 30.875231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.944931, 32.079266, 30.911474>,  <34.736553, 32.196335, 30.933220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.944931, 32.079266, 30.911474>,  <35.292229, 31.884150, 30.875231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944931, 32.079266, 30.911474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158334, 0.099349, 0.982375,
		0.470191, 0.867289, -0.163493,
		-0.868246, 0.487790, 0.090609,
		34.684456, 32.225601, 30.938658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500103, 32.425125, 31.291433>,  <35.292229, 31.884150, 30.875231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500103, 32.425125, 31.291433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.106178, 32.383228, 31.346811>,  <34.869823, 32.358089, 31.380037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.106178, 32.383228, 31.346811>,  <35.500103, 32.425125, 31.291433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106178, 32.383228, 31.346811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126754, 0.111074, 0.985696,
		-0.118625, 0.988277, -0.096111,
		-0.984815, -0.104746, 0.138444,
		34.810734, 32.351803, 31.388344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146873, 33.080906, 31.690609>,  <35.500103, 32.425125, 31.291433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146873, 33.080906, 31.690609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.903496, 32.771622, 31.762093>,  <34.757469, 32.586052, 31.804983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.903496, 32.771622, 31.762093>,  <35.146873, 33.080906, 31.690609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903496, 32.771622, 31.762093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060222, 0.269523, 0.961109,
		-0.791308, 0.574019, -0.210554,
		-0.608445, -0.773213, 0.178707,
		34.720963, 32.539658, 31.815704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558521, 33.387985, 32.102997>,  <35.146873, 33.080906, 31.690609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558521, 33.387985, 32.102997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.553631, 32.991020, 32.151936>,  <34.550697, 32.752842, 32.181297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.553631, 32.991020, 32.151936>,  <34.558521, 33.387985, 32.102997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553631, 32.991020, 32.151936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114628, 0.122939, 0.985772,
		-0.993333, -0.001975, -0.115261,
		-0.012223, -0.992412, 0.122346,
		34.549965, 32.693298, 32.188641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953377, 33.302399, 32.383991>,  <34.558521, 33.387985, 32.102997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953377, 33.302399, 32.383991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.184578, 32.993767, 32.490253>,  <34.323299, 32.808586, 32.554012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.184578, 32.993767, 32.490253>,  <33.953377, 33.302399, 32.383991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184578, 32.993767, 32.490253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142711, 0.224950, 0.963863,
		-0.803460, -0.595026, 0.019907,
		0.578001, -0.771584, 0.265655,
		34.357979, 32.762291, 32.569950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584053, 33.044041, 32.921444>,  <33.953377, 33.302399, 32.383991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584053, 33.044041, 32.921444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.963406, 32.917656, 32.932346>,  <34.191017, 32.841827, 32.938889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.963406, 32.917656, 32.932346>,  <33.584053, 33.044041, 32.921444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963406, 32.917656, 32.932346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041044, 0.207517, 0.977370,
		-0.314464, -0.925801, 0.209773,
		0.948381, -0.315958, 0.027258,
		34.247921, 32.822868, 32.940525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588993, 32.689167, 33.505978>,  <33.584053, 33.044041, 32.921444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588993, 32.689167, 33.505978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.976505, 32.735931, 33.418533>,  <34.209015, 32.763988, 33.366066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.976505, 32.735931, 33.418533>,  <33.588993, 32.689167, 33.505978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976505, 32.735931, 33.418533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196112, 0.178014, 0.964288,
		0.151642, -0.977060, 0.149531,
		0.968785, 0.116901, -0.218608,
		34.267139, 32.771004, 33.352951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833469, 32.220207, 33.872406>,  <33.588993, 32.689167, 33.505978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833469, 32.220207, 33.872406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.131287, 32.483635, 33.828705>,  <34.309978, 32.641693, 33.802483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.131287, 32.483635, 33.828705>,  <33.833469, 32.220207, 33.872406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131287, 32.483635, 33.828705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149601, -0.005098, 0.988733,
		0.650597, -0.752499, -0.102319,
		0.744542, 0.658574, -0.109258,
		34.354649, 32.681206, 33.795929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300968, 32.109039, 34.480991>,  <33.833469, 32.220207, 33.872406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300968, 32.109039, 34.480991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.362446, 32.472984, 34.326832>,  <34.399334, 32.691349, 34.234337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.362446, 32.472984, 34.326832>,  <34.300968, 32.109039, 34.480991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362446, 32.472984, 34.326832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000771, 0.390146, 0.920753,
		0.988118, -0.141219, 0.060665,
		0.153696, 0.909859, -0.385401,
		34.408554, 32.745941, 34.211212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617775, 32.274609, 35.003460>,  <34.300968, 32.109039, 34.480991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617775, 32.274609, 35.003460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.610012, 32.622974, 34.807041>,  <34.605354, 32.831993, 34.689190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.610012, 32.622974, 34.807041>,  <34.617775, 32.274609, 35.003460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610012, 32.622974, 34.807041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166879, 0.487068, 0.857273,
		0.985786, -0.065310, -0.154790,
		-0.019405, 0.870919, -0.491044,
		34.604191, 32.884251, 34.659729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133762, 32.666405, 35.290161>,  <34.617775, 32.274609, 35.003460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133762, 32.666405, 35.290161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.878109, 32.918930, 35.114456>,  <34.724716, 33.070446, 35.009033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.878109, 32.918930, 35.114456>,  <35.133762, 32.666405, 35.290161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878109, 32.918930, 35.114456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034514, 0.547026, 0.836404,
		0.768322, 0.549733, -0.327833,
		-0.639132, 0.631313, -0.439266,
		34.686371, 33.108322, 34.982677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325550, 33.364151, 35.355526>,  <35.133762, 32.666405, 35.290161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325550, 33.364151, 35.355526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.927456, 33.360397, 35.316719>,  <34.688599, 33.358147, 35.293434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.927456, 33.360397, 35.316719>,  <35.325550, 33.364151, 35.355526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927456, 33.360397, 35.316719> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086099, 0.551195, 0.829922,
		0.045689, 0.834324, -0.549378,
		-0.995238, -0.009383, -0.097018,
		34.628883, 33.357582, 35.287613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142353, 34.010452, 35.674580>,  <35.325550, 33.364151, 35.355526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142353, 34.010452, 35.674580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799129, 33.806671, 35.648693>,  <34.593197, 33.684402, 35.633160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799129, 33.806671, 35.648693>,  <35.142353, 34.010452, 35.674580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799129, 33.806671, 35.648693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261798, 0.325516, 0.908571,
		-0.441808, 0.796552, -0.412687,
		-0.858060, -0.509455, -0.064720,
		34.541710, 33.653835, 35.629276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740170, 34.528435, 35.986923>,  <35.142353, 34.010452, 35.674580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740170, 34.528435, 35.986923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.500782, 34.208366, 35.971119>,  <34.357151, 34.016327, 35.961636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.500782, 34.208366, 35.971119>,  <34.740170, 34.528435, 35.986923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500782, 34.208366, 35.971119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459921, 0.302772, 0.834747,
		-0.655977, 0.517742, -0.549215,
		-0.598470, -0.800171, -0.039509,
		34.321239, 33.968315, 35.959267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062210, 34.676567, 35.980225>,  <34.740170, 34.528435, 35.986923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062210, 34.676567, 35.980225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.125286, 34.319550, 36.149220>,  <34.163132, 34.105339, 36.250614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.125286, 34.319550, 36.149220>,  <34.062210, 34.676567, 35.980225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125286, 34.319550, 36.149220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431194, 0.322658, 0.842593,
		-0.888373, -0.315037, -0.333983,
		0.157686, -0.892549, 0.422483,
		34.172592, 34.051785, 36.275963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832123, 35.527855, 36.165966>,  <34.062210, 34.676567, 35.980225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832123, 35.527855, 36.165966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.027142, 35.371098, 35.853882>,  <34.144154, 35.277042, 35.666634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.027142, 35.371098, 35.853882>,  <33.832123, 35.527855, 36.165966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027142, 35.371098, 35.853882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515412, -0.850472, 0.105106,
		-0.704734, 0.350883, -0.616629,
		0.487546, -0.391890, -0.780206,
		34.173405, 35.253532, 35.619820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718227, 35.958973, 35.566513>,  <33.832123, 35.527855, 36.165966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718227, 35.958973, 35.566513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.099308, 35.838150, 35.553082>,  <34.327957, 35.765656, 35.545025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.099308, 35.838150, 35.553082>,  <33.718227, 35.958973, 35.566513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099308, 35.838150, 35.553082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079496, 0.354306, -0.931744,
		0.293332, 0.885004, 0.361559,
		0.952700, -0.302053, -0.033575,
		34.385117, 35.747536, 35.543011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165009, 36.520584, 35.313896>,  <33.718227, 35.958973, 35.566513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165009, 36.520584, 35.313896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.371746, 36.185684, 35.242477>,  <34.495789, 35.984745, 35.199627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.371746, 36.185684, 35.242477>,  <34.165009, 36.520584, 35.313896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371746, 36.185684, 35.242477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210479, 0.326436, -0.921487,
		0.829800, 0.438687, 0.344941,
		0.516846, -0.837253, -0.178543,
		34.526798, 35.934509, 35.188915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835499, 36.786407, 34.976662>,  <34.165009, 36.520584, 35.313896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835499, 36.786407, 34.976662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754490, 36.406219, 34.882347>,  <34.705883, 36.178108, 34.825756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.754490, 36.406219, 34.882347>,  <34.835499, 36.786407, 34.976662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754490, 36.406219, 34.882347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201257, 0.195242, -0.959883,
		0.958373, -0.241856, 0.151747,
		-0.202527, -0.950466, -0.235790,
		34.693733, 36.121078, 34.811611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396690, 36.660389, 34.582756>,  <34.835499, 36.786407, 34.976662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396690, 36.660389, 34.582756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.116333, 36.382744, 34.517086>,  <34.948116, 36.216156, 34.477684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.116333, 36.382744, 34.517086>,  <35.396690, 36.660389, 34.582756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116333, 36.382744, 34.517086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304677, -0.083233, -0.948812,
		0.644916, -0.715040, 0.269818,
		-0.700896, -0.694111, -0.164178,
		34.906063, 36.174511, 34.467834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764000, 36.211411, 34.062572>,  <35.396690, 36.660389, 34.582756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764000, 36.211411, 34.062572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.372314, 36.140144, 34.023796>,  <35.137302, 36.097385, 34.000530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.372314, 36.140144, 34.023796>,  <35.764000, 36.211411, 34.062572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372314, 36.140144, 34.023796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084561, 0.075824, -0.993529,
		0.184359, -0.981075, -0.059183,
		-0.979214, -0.178162, -0.096939,
		35.078548, 36.086697, 33.994713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.694660, 35.799129, 33.585842>,  <35.764000, 36.211411, 34.062572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.694660, 35.799129, 33.585842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.310848, 35.909458, 33.608536>,  <35.080559, 35.975655, 33.622154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.310848, 35.909458, 33.608536>,  <35.694660, 35.799129, 33.585842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310848, 35.909458, 33.608536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046952, 0.041961, -0.998015,
		-0.277658, -0.960292, -0.027312,
		-0.959532, 0.275825, 0.056738,
		35.022987, 35.992207, 33.625557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306759, 35.350780, 33.288406>,  <35.694660, 35.799129, 33.585842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306759, 35.350780, 33.288406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.082829, 35.682121, 33.280136>,  <34.948471, 35.880924, 33.275173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.082829, 35.682121, 33.280136>,  <35.306759, 35.350780, 33.288406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082829, 35.682121, 33.280136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007710, -0.019741, -0.999775,
		-0.828573, -0.559861, 0.004665,
		-0.559827, 0.828351, -0.020673,
		34.914879, 35.930626, 33.273933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773952, 35.153370, 32.877815>,  <35.306759, 35.350780, 33.288406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773952, 35.153370, 32.877815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783955, 35.553169, 32.870037>,  <34.789955, 35.793049, 32.865368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.783955, 35.553169, 32.870037>,  <34.773952, 35.153370, 32.877815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783955, 35.553169, 32.870037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021579, -0.019990, -0.999567,
		-0.999454, 0.024579, -0.022068,
		0.025009, 0.999498, -0.019448,
		34.791458, 35.853020, 32.864204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356339, 35.340691, 32.331253>,  <34.773952, 35.153370, 32.877815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356339, 35.340691, 32.331253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.544064, 35.689293, 32.388145>,  <34.656696, 35.898453, 32.422279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.544064, 35.689293, 32.388145>,  <34.356339, 35.340691, 32.331253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544064, 35.689293, 32.388145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134384, 0.088704, -0.986951,
		-0.872748, 0.482300, -0.075487,
		0.469310, 0.871504, 0.142230,
		34.684856, 35.950745, 32.430813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971375, 35.893734, 31.892494>,  <34.356339, 35.340691, 32.331253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971375, 35.893734, 31.892494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.344959, 36.019890, 31.959723>,  <34.569111, 36.095585, 32.000061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.344959, 36.019890, 31.959723>,  <33.971375, 35.893734, 31.892494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344959, 36.019890, 31.959723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097794, 0.226795, -0.969020,
		-0.343740, 0.921462, 0.180973,
		0.933959, 0.315393, 0.168072,
		34.625149, 36.114510, 32.010143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991550, 36.465004, 31.565857>,  <33.971375, 35.893734, 31.892494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991550, 36.465004, 31.565857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.376579, 36.365047, 31.607830>,  <34.607597, 36.305073, 31.633015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.376579, 36.365047, 31.607830>,  <33.991550, 36.465004, 31.565857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376579, 36.365047, 31.607830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184043, 0.318433, -0.929908,
		0.198965, 0.914414, 0.352505,
		0.962570, -0.249895, 0.104935,
		34.665352, 36.290077, 31.639311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394749, 37.062340, 31.373232>,  <33.991550, 36.465004, 31.565857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394749, 37.062340, 31.373232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.679443, 36.781738, 31.358685>,  <34.850262, 36.613377, 31.349957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.679443, 36.781738, 31.358685>,  <34.394749, 37.062340, 31.373232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679443, 36.781738, 31.358685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313331, 0.363387, -0.877367,
		0.628690, 0.613062, 0.478439,
		0.711739, -0.701502, -0.036366,
		34.892963, 36.571289, 31.347775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944965, 37.391048, 31.154224>,  <34.394749, 37.062340, 31.373232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944965, 37.391048, 31.154224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.023384, 37.005516, 31.082014>,  <35.070435, 36.774197, 31.038689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.023384, 37.005516, 31.082014>,  <34.944965, 37.391048, 31.154224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023384, 37.005516, 31.082014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322234, 0.237196, -0.916462,
		0.926137, 0.121502, 0.357082,
		0.196050, -0.963834, -0.180524,
		35.082199, 36.716366, 31.027857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659657, 37.356533, 30.931190>,  <34.944965, 37.391048, 31.154224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659657, 37.356533, 30.931190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489399, 37.017967, 30.803185>,  <35.387245, 36.814827, 30.726381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489399, 37.017967, 30.803185>,  <35.659657, 37.356533, 30.931190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489399, 37.017967, 30.803185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105904, 0.304624, -0.946567,
		0.898671, -0.436794, -0.040023,
		-0.425646, -0.846413, -0.320015,
		35.361706, 36.764042, 30.707180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.022614, 37.146275, 30.430141>,  <35.659657, 37.356533, 30.931190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.022614, 37.146275, 30.430141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.678650, 36.953232, 30.363630>,  <35.472271, 36.837406, 30.323725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.678650, 36.953232, 30.363630>,  <36.022614, 37.146275, 30.430141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678650, 36.953232, 30.363630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046249, 0.250743, -0.966948,
		0.508350, -0.839176, -0.193296,
		-0.859908, -0.482609, -0.166276,
		35.420677, 36.808449, 30.313747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166004, 36.764000, 29.797674>,  <36.022614, 37.146275, 30.430141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166004, 36.764000, 29.797674> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.767605, 36.752132, 29.831404>,  <35.528564, 36.745010, 29.851641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.767605, 36.752132, 29.831404>,  <36.166004, 36.764000, 29.797674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.767605, 36.752132, 29.831404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081973, -0.073048, -0.993954,
		0.035653, -0.996887, 0.070323,
		-0.995997, -0.029672, 0.084322,
		35.468807, 36.743233, 29.856701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997459, 36.272579, 29.247343>,  <36.166004, 36.764000, 29.797674>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997459, 36.272579, 29.247343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.663544, 36.481083, 29.318228>,  <35.463192, 36.606186, 29.360760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.663544, 36.481083, 29.318228>,  <35.997459, 36.272579, 29.247343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663544, 36.481083, 29.318228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118599, 0.144064, -0.982436,
		-0.537637, -0.841148, -0.058442,
		-0.834793, 0.521263, 0.177214,
		35.413105, 36.637463, 29.371391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391258, 35.972427, 28.815670>,  <35.997459, 36.272579, 29.247343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391258, 35.972427, 28.815670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.306210, 36.351421, 28.911217>,  <35.255180, 36.578819, 28.968544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.306210, 36.351421, 28.911217>,  <35.391258, 35.972427, 28.815670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306210, 36.351421, 28.911217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223835, 0.190726, -0.955783,
		-0.951152, -0.256685, 0.171529,
		-0.212620, 0.947489, 0.238865,
		35.242424, 36.635670, 28.982876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976505, 36.098137, 28.353521>,  <35.391258, 35.972427, 28.815670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976505, 36.098137, 28.353521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.082005, 36.462658, 28.479986>,  <35.145306, 36.681370, 28.555864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.082005, 36.462658, 28.479986>,  <34.976505, 36.098137, 28.353521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.082005, 36.462658, 28.479986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089401, 0.349450, -0.932680,
		-0.960439, 0.217730, 0.173639,
		0.263751, 0.911306, 0.316160,
		35.161129, 36.736050, 28.574835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620468, 36.531483, 27.913002>,  <34.976505, 36.098137, 28.353521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620468, 36.531483, 27.913002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.919193, 36.747040, 28.068886>,  <35.098427, 36.876373, 28.162416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.919193, 36.747040, 28.068886>,  <34.620468, 36.531483, 27.913002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919193, 36.747040, 28.068886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117439, 0.469921, -0.874862,
		-0.654584, 0.699123, 0.287655,
		0.746811, 0.538889, 0.389707,
		35.143238, 36.908707, 28.185799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517471, 37.331898, 27.676228>,  <34.620468, 36.531483, 27.913002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517471, 37.331898, 27.676228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.897827, 37.263119, 27.779173>,  <35.126041, 37.221851, 27.840940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.897827, 37.263119, 27.779173>,  <34.517471, 37.331898, 27.676228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897827, 37.263119, 27.779173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308692, 0.466071, -0.829149,
		0.022619, 0.867878, 0.496262,
		0.950893, -0.171947, 0.257365,
		35.183094, 37.211536, 27.856382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688160, 37.906284, 27.415417>,  <34.517471, 37.331898, 27.676228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688160, 37.906284, 27.415417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.018307, 37.687820, 27.472651>,  <35.216396, 37.556744, 27.506990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.018307, 37.687820, 27.472651>,  <34.688160, 37.906284, 27.415417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018307, 37.687820, 27.472651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325478, 0.253201, -0.911018,
		0.461332, 0.798498, 0.386748,
		0.825371, -0.546160, 0.143083,
		35.265919, 37.523972, 27.515575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176746, 38.401581, 27.219219>,  <34.688160, 37.906284, 27.415417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176746, 38.401581, 27.219219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.341808, 38.039822, 27.175802>,  <35.440845, 37.822765, 27.149752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.341808, 38.039822, 27.175802>,  <35.176746, 38.401581, 27.219219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341808, 38.039822, 27.175802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143703, 0.182307, -0.972684,
		0.899480, 0.385785, 0.205194,
		0.412656, -0.904397, -0.108544,
		35.465607, 37.768501, 27.143240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846485, 38.520329, 26.863472>,  <35.176746, 38.401581, 27.219219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846485, 38.520329, 26.863472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.788658, 38.128120, 26.810291>,  <35.753960, 37.892796, 26.778383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.788658, 38.128120, 26.810291>,  <35.846485, 38.520329, 26.863472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788658, 38.128120, 26.810291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070533, 0.123808, -0.989796,
		0.986977, -0.152474, 0.051260,
		-0.144572, -0.980522, -0.132950,
		35.745285, 37.833965, 26.770407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310997, 38.327274, 26.294538>,  <35.846485, 38.520329, 26.863472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310997, 38.327274, 26.294538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.068451, 38.010952, 26.327892>,  <35.922924, 37.821159, 26.347904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.068451, 38.010952, 26.327892>,  <36.310997, 38.327274, 26.294538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068451, 38.010952, 26.327892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033734, -0.079184, -0.996289,
		0.794471, -0.606928, 0.021338,
		-0.606365, -0.790803, 0.083383,
		35.886543, 37.773712, 26.352907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488792, 37.813427, 25.841696>,  <36.310997, 38.327274, 26.294538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488792, 37.813427, 25.841696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.105492, 37.724018, 25.913023>,  <35.875511, 37.670372, 25.955820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.105492, 37.724018, 25.913023>,  <36.488792, 37.813427, 25.841696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105492, 37.724018, 25.913023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182256, -0.003062, -0.983246,
		0.220323, -0.974694, -0.037804,
		-0.958249, -0.223521, 0.178318,
		35.818016, 37.656963, 25.966518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120163, 37.443348, 25.812025>,  <36.488792, 37.813427, 25.841696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120163, 37.443348, 25.812025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.407444, 37.716637, 25.759264>,  <37.579811, 37.880611, 25.727608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.407444, 37.716637, 25.759264>,  <37.120163, 37.443348, 25.812025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407444, 37.716637, 25.759264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272340, -0.101559, 0.956826,
		0.640330, -0.723113, -0.259009,
		0.718198, 0.683223, -0.131902,
		37.622902, 37.921604, 25.719694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586803, 37.193253, 26.286966>,  <37.120163, 37.443348, 25.812025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586803, 37.193253, 26.286966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.722233, 37.557133, 26.190796>,  <37.803490, 37.775463, 26.133093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.722233, 37.557133, 26.190796>,  <37.586803, 37.193253, 26.286966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722233, 37.557133, 26.190796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145605, 0.201786, 0.968546,
		0.929605, -0.362934, -0.064138,
		0.338576, 0.909704, -0.240426,
		37.823807, 37.830044, 26.118668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.310371, 37.213387, 26.551119>,  <37.586803, 37.193253, 26.286966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.310371, 37.213387, 26.551119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.177322, 37.587334, 26.501509>,  <38.097492, 37.811703, 26.471743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.177322, 37.587334, 26.501509>,  <38.310371, 37.213387, 26.551119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177322, 37.587334, 26.501509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252831, 0.215098, 0.943297,
		0.908536, 0.282408, -0.307911,
		-0.332625, 0.934868, -0.124023,
		38.077534, 37.867794, 26.464302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845673, 37.592331, 26.800201>,  <38.310371, 37.213387, 26.551119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845673, 37.592331, 26.800201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.545658, 37.856831, 26.794621>,  <38.365650, 38.015530, 26.791273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.545658, 37.856831, 26.794621>,  <38.845673, 37.592331, 26.800201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545658, 37.856831, 26.794621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267547, 0.322629, 0.907926,
		0.604863, 0.677247, -0.418899,
		-0.750039, 0.661246, -0.013951,
		38.320648, 38.055206, 26.790436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105042, 38.158627, 27.064682>,  <38.845673, 37.592331, 26.800201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105042, 38.158627, 27.064682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.713211, 38.199574, 27.133911>,  <38.478115, 38.224144, 27.175449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.713211, 38.199574, 27.133911>,  <39.105042, 38.158627, 27.064682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713211, 38.199574, 27.133911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195310, 0.279619, 0.940036,
		0.047837, 0.954638, -0.293901,
		-0.979574, 0.102370, 0.173075,
		38.419338, 38.230286, 27.185833>
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
