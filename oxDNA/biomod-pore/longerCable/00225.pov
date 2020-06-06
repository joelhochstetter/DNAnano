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
	<23.965578, 35.464630, 34.636547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.109795, 35.132767, 34.807045>,  <24.196325, 34.933651, 34.909344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.109795, 35.132767, 34.807045>,  <23.965578, 35.464630, 34.636547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.109795, 35.132767, 34.807045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769239, 0.006029, -0.638933,
		0.527524, 0.558244, 0.640377,
		0.360541, -0.829655, 0.426243,
		24.217957, 34.883869, 34.934917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.630758, 35.412182, 35.030476>,  <23.965578, 35.464630, 34.636547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.630758, 35.412182, 35.030476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.560259, 35.064754, 34.845207>,  <24.517960, 34.856297, 34.734047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.560259, 35.064754, 34.845207>,  <24.630758, 35.412182, 35.030476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.560259, 35.064754, 34.845207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651088, 0.250035, -0.716636,
		0.738256, -0.427870, 0.521446,
		-0.176247, -0.868567, -0.463171,
		24.507385, 34.804184, 34.706257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.174789, 35.010834, 35.217480>,  <24.630758, 35.412182, 35.030476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.174789, 35.010834, 35.217480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.535292, 34.844444, 35.265976>,  <25.751593, 34.744610, 35.295074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.535292, 34.844444, 35.265976>,  <25.174789, 35.010834, 35.217480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.535292, 34.844444, 35.265976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425699, 0.797982, -0.426620,
		0.080714, 0.436107, 0.896268,
		0.901258, -0.415974, 0.121242,
		25.805670, 34.719650, 35.302349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.632448, 35.562317, 35.399956>,  <25.174789, 35.010834, 35.217480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.632448, 35.562317, 35.399956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.918819, 35.297756, 35.310520>,  <26.090643, 35.139019, 35.256859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.918819, 35.297756, 35.310520>,  <25.632448, 35.562317, 35.399956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.918819, 35.297756, 35.310520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561386, 0.735739, -0.378858,
		0.415080, 0.145717, 0.898040,
		0.715929, -0.661404, -0.223587,
		26.133598, 35.099335, 35.243443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170689, 35.941948, 35.635307>,  <25.632448, 35.562317, 35.399956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.170689, 35.941948, 35.635307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306398, 35.666729, 35.378716>,  <26.387823, 35.501598, 35.224762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.306398, 35.666729, 35.378716>,  <26.170689, 35.941948, 35.635307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.306398, 35.666729, 35.378716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361236, 0.724930, -0.586502,
		0.868563, -0.032740, 0.494496,
		0.339273, -0.688044, -0.641475,
		26.408180, 35.460316, 35.186272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.879841, 36.144836, 35.494492>,  <26.170689, 35.941948, 35.635307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.879841, 36.144836, 35.494492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718973, 35.925716, 35.201050>,  <26.622452, 35.794243, 35.024986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.718973, 35.925716, 35.201050>,  <26.879841, 36.144836, 35.494492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.718973, 35.925716, 35.201050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156029, 0.748527, -0.644486,
		0.902172, -0.373656, -0.215562,
		-0.402170, -0.547803, -0.733602,
		26.598322, 35.761375, 34.980968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.315882, 36.296429, 34.932487>,  <26.879841, 36.144836, 35.494492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.315882, 36.296429, 34.932487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.997135, 36.140915, 34.747509>,  <26.805887, 36.047607, 34.636520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.997135, 36.140915, 34.747509>,  <27.315882, 36.296429, 34.932487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.997135, 36.140915, 34.747509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075789, 0.695065, -0.714941,
		0.599386, -0.604759, -0.524406,
		-0.796864, -0.388781, -0.462446,
		26.758076, 36.024281, 34.608776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453245, 36.177731, 34.268242>,  <27.315882, 36.296429, 34.932487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453245, 36.177731, 34.268242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065201, 36.270798, 34.295822>,  <26.832375, 36.326637, 34.312370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065201, 36.270798, 34.295822>,  <27.453245, 36.177731, 34.268242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065201, 36.270798, 34.295822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092451, 0.617051, -0.781474,
		-0.224367, -0.751741, -0.620117,
		-0.970109, 0.232667, 0.068946,
		26.774168, 36.340599, 34.316505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.152893, 36.199047, 33.548405>,  <27.453245, 36.177731, 34.268242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.152893, 36.199047, 33.548405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.971191, 36.422585, 33.825920>,  <26.862169, 36.556705, 33.992432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.971191, 36.422585, 33.825920>,  <27.152893, 36.199047, 33.548405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.971191, 36.422585, 33.825920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275593, 0.828728, -0.487091,
		-0.847172, -0.030060, -0.530468,
		-0.454255, 0.558843, 0.693791,
		26.834915, 36.590237, 34.034058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.687012, 36.596703, 33.085316>,  <27.152893, 36.199047, 33.548405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.687012, 36.596703, 33.085316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689560, 36.792419, 33.434155>,  <26.691090, 36.909851, 33.643459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689560, 36.792419, 33.434155>,  <26.687012, 36.596703, 33.085316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689560, 36.792419, 33.434155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091363, 0.868183, -0.487762,
		-0.995797, 0.082785, -0.039172,
		0.006371, 0.489291, 0.872098,
		26.691471, 36.939205, 33.695786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184011, 37.103886, 33.015575>,  <26.687012, 36.596703, 33.085316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184011, 37.103886, 33.015575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435951, 37.228420, 33.300213>,  <26.587116, 37.303139, 33.470993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435951, 37.228420, 33.300213>,  <26.184011, 37.103886, 33.015575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.435951, 37.228420, 33.300213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051812, 0.930952, -0.361446,
		-0.774986, 0.190788, 0.602492,
		0.629851, 0.311332, 0.711589,
		26.624907, 37.321819, 33.513691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.890179, 37.674706, 33.409229>,  <26.184011, 37.103886, 33.015575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.890179, 37.674706, 33.409229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289621, 37.691723, 33.421745>,  <26.529287, 37.701935, 33.429256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289621, 37.691723, 33.421745>,  <25.890179, 37.674706, 33.409229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289621, 37.691723, 33.421745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028219, 0.930676, -0.364755,
		-0.044644, 0.363363, 0.930577,
		0.998604, 0.042544, 0.031295,
		26.589203, 37.704487, 33.431133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.878904, 38.257893, 33.067837>,  <25.890179, 37.674706, 33.409229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.878904, 38.257893, 33.067837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.252434, 38.178844, 33.187111>,  <26.476551, 38.131416, 33.258675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.252434, 38.178844, 33.187111>,  <25.878904, 38.257893, 33.067837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.252434, 38.178844, 33.187111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318999, 0.837257, -0.444118,
		-0.161892, 0.509850, 0.844892,
		0.933826, -0.197620, 0.298187,
		26.532581, 38.119560, 33.276566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596886, 38.010273, 32.782658>,  <25.878904, 38.257893, 33.067837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.596886, 38.010273, 32.782658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.868742, 38.246677, 32.956455>,  <27.031857, 38.388519, 33.060734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.868742, 38.246677, 32.956455>,  <26.596886, 38.010273, 32.782658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.868742, 38.246677, 32.956455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242367, -0.378137, 0.893460,
		0.692348, -0.712541, -0.113756,
		0.679642, 0.591014, 0.434498,
		27.072634, 38.423981, 33.086803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.167768, 37.575680, 33.181107>,  <26.596886, 38.010273, 32.782658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.167768, 37.575680, 33.181107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082888, 37.938137, 33.327457>,  <27.031960, 38.155613, 33.415268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.082888, 37.938137, 33.327457>,  <27.167768, 37.575680, 33.181107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082888, 37.938137, 33.327457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267914, -0.414007, 0.869954,
		0.939783, 0.086584, 0.330624,
		-0.212204, 0.906147, 0.365879,
		27.019226, 38.209980, 33.437222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659687, 37.865139, 33.795029>,  <27.167768, 37.575680, 33.181107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659687, 37.865139, 33.795029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265697, 37.929993, 33.771233>,  <27.029305, 37.968903, 33.756954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.265697, 37.929993, 33.771233>,  <27.659687, 37.865139, 33.795029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.265697, 37.929993, 33.771233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156530, -0.692603, 0.704131,
		0.072960, 0.702863, 0.707574,
		-0.984975, 0.162130, -0.059487,
		26.970205, 37.978630, 33.753387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314941, 37.855370, 34.504360>,  <27.659687, 37.865139, 33.795029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.314941, 37.855370, 34.504360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100111, 37.677799, 34.217449>,  <26.971212, 37.571259, 34.045303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100111, 37.677799, 34.217449>,  <27.314941, 37.855370, 34.504360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100111, 37.677799, 34.217449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258591, -0.722733, 0.640927,
		-0.802919, 0.529708, 0.273369,
		-0.537077, -0.443921, -0.717274,
		26.938988, 37.544624, 34.002266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.724871, 37.609600, 34.852940>,  <27.314941, 37.855370, 34.504360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.724871, 37.609600, 34.852940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705412, 37.408195, 34.507893>,  <26.693737, 37.287354, 34.300865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705412, 37.408195, 34.507893>,  <26.724871, 37.609600, 34.852940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705412, 37.408195, 34.507893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424168, -0.771483, 0.474232,
		-0.904276, 0.388964, -0.176044,
		-0.048645, -0.503509, -0.862619,
		26.690819, 37.257141, 34.249107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074867, 37.337231, 34.767090>,  <26.724871, 37.609600, 34.852940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.074867, 37.337231, 34.767090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.312817, 37.105328, 34.544376>,  <26.455585, 36.966187, 34.410748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.312817, 37.105328, 34.544376>,  <26.074867, 37.337231, 34.767090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.312817, 37.105328, 34.544376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447310, -0.814273, 0.369965,
		-0.667862, 0.028971, -0.743721,
		0.594873, -0.579759, -0.556781,
		26.491278, 36.931400, 34.377342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.630203, 36.896965, 34.534302>,  <26.074867, 37.337231, 34.767090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.630203, 36.896965, 34.534302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986017, 36.718338, 34.495705>,  <26.199505, 36.611164, 34.472546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.986017, 36.718338, 34.495705>,  <25.630203, 36.896965, 34.534302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.986017, 36.718338, 34.495705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405362, -0.868864, 0.284177,
		-0.210739, -0.213671, -0.953904,
		0.889534, -0.446564, -0.096489,
		26.252878, 36.584370, 34.466759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.611252, 36.324394, 34.174274>,  <25.630203, 36.896965, 34.534302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.611252, 36.324394, 34.174274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994827, 36.219971, 34.129940>,  <26.224972, 36.157318, 34.103340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994827, 36.219971, 34.129940>,  <25.611252, 36.324394, 34.174274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994827, 36.219971, 34.129940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094324, -0.662132, 0.743427,
		-0.267466, -0.702446, -0.659568,
		0.958939, -0.261055, -0.110840,
		26.282509, 36.141655, 34.096687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.645378, 35.660244, 34.132492>,  <25.611252, 36.324394, 34.174274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.645378, 35.660244, 34.132492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015236, 35.745426, 34.258781>,  <26.237150, 35.796535, 34.334557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.015236, 35.745426, 34.258781>,  <25.645378, 35.660244, 34.132492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.015236, 35.745426, 34.258781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070391, -0.719188, 0.691241,
		0.374268, -0.661376, -0.650004,
		0.924645, 0.212955, 0.315724,
		26.292629, 35.809311, 34.353500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.999741, 35.002895, 34.060665>,  <25.645378, 35.660244, 34.132492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.999741, 35.002895, 34.060665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161949, 35.240112, 34.338902>,  <26.259275, 35.382442, 34.505844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.161949, 35.240112, 34.338902>,  <25.999741, 35.002895, 34.060665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161949, 35.240112, 34.338902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024026, -0.767627, 0.640447,
		0.913769, -0.243004, -0.325539,
		0.405524, 0.593041, 0.695595,
		26.283606, 35.418026, 34.547581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606428, 35.227814, 33.895817>,  <25.999741, 35.002895, 34.060665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606428, 35.227814, 33.895817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656744, 35.336666, 34.277420>,  <26.686934, 35.401978, 34.506382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.656744, 35.336666, 34.277420>,  <26.606428, 35.227814, 33.895817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.656744, 35.336666, 34.277420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455515, -0.838434, 0.299224,
		0.881296, -0.472202, 0.018494,
		0.125788, 0.272129, 0.954004,
		26.694481, 35.418304, 34.563622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824551, 34.632565, 34.284058>,  <26.606428, 35.227814, 33.895817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824551, 34.632565, 34.284058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669964, 34.868366, 34.567783>,  <26.577211, 35.009846, 34.738018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669964, 34.868366, 34.567783>,  <26.824551, 34.632565, 34.284058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669964, 34.868366, 34.567783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336875, -0.806157, 0.486442,
		0.858578, -0.050956, 0.510144,
		-0.386469, 0.589503, 0.709315,
		26.554024, 35.045216, 34.780579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.892567, 34.150715, 34.801609>,  <26.824551, 34.632565, 34.284058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.892567, 34.150715, 34.801609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.691044, 34.458427, 34.958775>,  <26.570131, 34.643055, 35.053074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.691044, 34.458427, 34.958775>,  <26.892567, 34.150715, 34.801609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.691044, 34.458427, 34.958775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508286, -0.631788, 0.585226,
		0.698444, 0.095125, 0.709314,
		-0.503806, 0.769282, 0.392918,
		26.539902, 34.689213, 35.076649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935099, 34.118275, 35.582790>,  <26.892567, 34.150715, 34.801609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935099, 34.118275, 35.582790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.594820, 34.307247, 35.490597>,  <26.390654, 34.420631, 35.435280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.594820, 34.307247, 35.490597>,  <26.935099, 34.118275, 35.582790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594820, 34.307247, 35.490597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506910, -0.621237, 0.597584,
		0.139131, 0.625198, 0.767964,
		-0.850697, 0.472431, -0.230486,
		26.339611, 34.448978, 35.421452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442945, 34.579945, 35.277588>,  <26.935099, 34.118275, 35.582790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.442945, 34.579945, 35.277588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498854, 34.264717, 35.517391>,  <27.532398, 34.075581, 35.661274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498854, 34.264717, 35.517391>,  <27.442945, 34.579945, 35.277588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498854, 34.264717, 35.517391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080615, -0.594389, -0.800127,
		0.986897, 0.160164, -0.019547,
		0.139770, -0.788067, 0.599512,
		27.540785, 34.028297, 35.697247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.044039, 34.174450, 34.949730>,  <27.442945, 34.579945, 35.277588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.044039, 34.174450, 34.949730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774319, 33.985783, 35.177010>,  <27.612488, 33.872581, 35.313377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.774319, 33.985783, 35.177010>,  <28.044039, 34.174450, 34.949730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.774319, 33.985783, 35.177010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132961, -0.679315, -0.721701,
		0.726390, -0.562190, 0.395348,
		-0.674299, -0.471671, 0.568197,
		27.572029, 33.844280, 35.347469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199471, 33.434792, 34.732204>,  <28.044039, 34.174450, 34.949730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199471, 33.434792, 34.732204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104799, 33.073261, 34.874798>,  <28.047997, 32.856342, 34.960354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.104799, 33.073261, 34.874798>,  <28.199471, 33.434792, 34.732204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.104799, 33.073261, 34.874798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951431, -0.141255, 0.273544,
		-0.196881, 0.403915, 0.893359,
		-0.236680, -0.903825, 0.356486,
		28.033794, 32.802113, 34.981743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490625, 33.334507, 35.401123>,  <28.199471, 33.434792, 34.732204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490625, 33.334507, 35.401123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455683, 32.968845, 35.242783>,  <28.434717, 32.749451, 35.147778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.455683, 32.968845, 35.242783>,  <28.490625, 33.334507, 35.401123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455683, 32.968845, 35.242783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981402, -0.147159, 0.123265,
		-0.170936, -0.377721, 0.910004,
		-0.087356, -0.914151, -0.395850,
		28.429476, 32.694599, 35.124027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.870487, 32.964287, 35.839355>,  <28.490625, 33.334507, 35.401123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.870487, 32.964287, 35.839355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855576, 32.780151, 35.484570>,  <28.846628, 32.669670, 35.271698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855576, 32.780151, 35.484570>,  <28.870487, 32.964287, 35.839355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855576, 32.780151, 35.484570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987705, -0.151816, 0.037279,
		-0.151816, -0.874666, 0.460337,
		-0.037279, -0.460337, -0.886961,
		28.844391, 32.642052, 35.218483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.366066, 32.430073, 35.919682>,  <28.870487, 32.964287, 35.839355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.366066, 32.430073, 35.919682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314749, 32.504665, 35.530064>,  <29.283958, 32.549419, 35.296291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.314749, 32.504665, 35.530064>,  <29.366066, 32.430073, 35.919682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314749, 32.504665, 35.530064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988505, 0.103270, -0.110425,
		0.079998, -0.977016, -0.197583,
		-0.128292, 0.186478, -0.974047,
		29.276260, 32.560608, 35.237850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689840, 32.771061, 36.518967>,  <29.366066, 32.430073, 35.919682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689840, 32.771061, 36.518967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702934, 33.165325, 36.585190>,  <29.710791, 33.401882, 36.624924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702934, 33.165325, 36.585190>,  <29.689840, 32.771061, 36.518967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702934, 33.165325, 36.585190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885592, 0.105392, -0.452349,
		-0.463309, -0.131813, 0.876339,
		0.032733, 0.985656, 0.165562,
		29.712753, 33.461021, 36.634857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752562, 32.356892, 37.161617>,  <29.689840, 32.771061, 36.518967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752562, 32.356892, 37.161617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989349, 32.049896, 37.260033>,  <30.131422, 31.865700, 37.319080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989349, 32.049896, 37.260033>,  <29.752562, 32.356892, 37.161617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989349, 32.049896, 37.260033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799136, -0.598581, 0.055527,
		0.104656, -0.229486, -0.967669,
		0.591971, -0.767488, 0.246035,
		30.166941, 31.819651, 37.333843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570602, 31.687414, 36.918827>,  <29.752562, 32.356892, 37.161617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570602, 31.687414, 36.918827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778549, 31.589209, 37.246109>,  <29.903316, 31.530285, 37.442478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.778549, 31.589209, 37.246109>,  <29.570602, 31.687414, 36.918827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778549, 31.589209, 37.246109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692213, -0.682336, 0.235071,
		0.500579, -0.688579, -0.524670,
		0.519866, -0.245512, 0.818207,
		29.934509, 31.515554, 37.491570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511478, 30.917030, 37.033646>,  <29.570602, 31.687414, 36.918827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511478, 30.917030, 37.033646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644249, 31.051395, 37.386234>,  <29.723911, 31.132015, 37.597786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.644249, 31.051395, 37.386234>,  <29.511478, 30.917030, 37.033646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644249, 31.051395, 37.386234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612470, -0.633947, 0.472221,
		0.717429, -0.696616, -0.004689,
		0.331929, 0.335913, 0.881468,
		29.743828, 31.152170, 37.650673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827486, 30.320408, 37.421555>,  <29.511478, 30.917030, 37.033646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827486, 30.320408, 37.421555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727472, 30.600426, 37.689114>,  <29.667465, 30.768436, 37.849648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727472, 30.600426, 37.689114>,  <29.827486, 30.320408, 37.421555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727472, 30.600426, 37.689114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540071, -0.674220, 0.503736,
		0.803621, -0.235302, 0.546650,
		-0.250032, 0.700043, 0.668898,
		29.652462, 30.810438, 37.889782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.067492, 30.109964, 38.024418>,  <29.827486, 30.320408, 37.421555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.067492, 30.109964, 38.024418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756727, 30.346643, 38.110489>,  <29.570269, 30.488651, 38.162132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.756727, 30.346643, 38.110489>,  <30.067492, 30.109964, 38.024418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.756727, 30.346643, 38.110489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374065, -0.708691, 0.598191,
		0.506440, 0.384253, 0.771925,
		-0.776913, 0.591698, 0.215174,
		29.523653, 30.524153, 38.175041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930460, 30.108343, 38.844498>,  <30.067492, 30.109964, 38.024418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930460, 30.108343, 38.844498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582672, 30.246265, 38.702999>,  <29.374001, 30.329020, 38.618099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.582672, 30.246265, 38.702999>,  <29.930460, 30.108343, 38.844498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582672, 30.246265, 38.702999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493830, -0.588510, 0.640146,
		0.012546, 0.731275, 0.681967,
		-0.869468, 0.344808, -0.353742,
		29.321833, 30.349709, 38.596878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166784, 29.819330, 38.746838>,  <29.930460, 30.108343, 38.844498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.166784, 29.819330, 38.746838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867847, 30.031616, 38.906746>,  <28.688484, 30.158989, 39.002689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867847, 30.031616, 38.906746>,  <29.166784, 29.819330, 38.746838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867847, 30.031616, 38.906746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430473, 0.845061, -0.317121,
		-0.506132, -0.064908, -0.860010,
		-0.747344, 0.530716, 0.399771,
		28.643644, 30.190830, 39.026676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.710434, 30.094372, 38.313190>,  <29.166784, 29.819330, 38.746838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.710434, 30.094372, 38.313190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802156, 30.304741, 38.640804>,  <28.857191, 30.430962, 38.837372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802156, 30.304741, 38.640804>,  <28.710434, 30.094372, 38.313190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802156, 30.304741, 38.640804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386944, 0.722856, -0.572497,
		-0.893136, 0.448200, -0.037746,
		0.229309, 0.525923, 0.819037,
		28.870949, 30.462519, 38.886517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382006, 30.888748, 38.363888>,  <28.710434, 30.094372, 38.313190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382006, 30.888748, 38.363888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739395, 30.808348, 38.524536>,  <28.953829, 30.760107, 38.620926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739395, 30.808348, 38.524536>,  <28.382006, 30.888748, 38.363888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739395, 30.808348, 38.524536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438621, 0.582717, -0.684144,
		-0.096519, 0.787426, 0.608806,
		0.893474, -0.201002, 0.401625,
		29.007437, 30.748047, 38.645023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.795002, 31.527143, 38.623955>,  <28.382006, 30.888748, 38.363888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.795002, 31.527143, 38.623955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037239, 31.221098, 38.536449>,  <29.182581, 31.037472, 38.483948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037239, 31.221098, 38.536449>,  <28.795002, 31.527143, 38.623955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037239, 31.221098, 38.536449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634576, 0.630195, -0.447402,
		0.480176, 0.132123, 0.867165,
		0.605595, -0.765113, -0.218763,
		29.218918, 30.991564, 38.470821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414341, 31.640059, 38.848442>,  <28.795002, 31.527143, 38.623955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414341, 31.640059, 38.848442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496946, 31.378904, 38.556938>,  <29.546509, 31.222212, 38.382034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496946, 31.378904, 38.556938>,  <29.414341, 31.640059, 38.848442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496946, 31.378904, 38.556938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635383, 0.655892, -0.407548,
		0.744071, -0.378880, 0.550280,
		0.206512, -0.652883, -0.728763,
		29.558901, 31.183039, 38.338310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.106936, 31.681198, 38.813099>,  <29.414341, 31.640059, 38.848442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.106936, 31.681198, 38.813099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976593, 31.541355, 38.461739>,  <29.898388, 31.457449, 38.250923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976593, 31.541355, 38.461739>,  <30.106936, 31.681198, 38.813099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976593, 31.541355, 38.461739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721613, 0.508307, -0.469998,
		0.610814, -0.787019, 0.086647,
		-0.325854, -0.349607, -0.878404,
		29.878838, 31.436474, 38.198215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667952, 31.236446, 38.361847>,  <30.106936, 31.681198, 38.813099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667952, 31.236446, 38.361847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407955, 31.436699, 38.133152>,  <30.251957, 31.556850, 37.995934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407955, 31.436699, 38.133152>,  <30.667952, 31.236446, 38.361847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407955, 31.436699, 38.133152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756109, 0.501510, -0.420461,
		0.076236, -0.705590, -0.704507,
		-0.649990, 0.500630, -0.571737,
		30.212957, 31.586887, 37.961632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.083141, 31.308403, 37.825073>,  <30.667952, 31.236446, 38.361847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.083141, 31.308403, 37.825073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768166, 31.551018, 37.781158>,  <30.579180, 31.696587, 37.754810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768166, 31.551018, 37.781158>,  <31.083141, 31.308403, 37.825073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768166, 31.551018, 37.781158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612762, 0.750986, -0.246054,
		-0.066794, -0.261025, -0.963018,
		-0.787440, 0.606536, -0.109784,
		30.531933, 31.732979, 37.748222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307560, 31.648685, 37.187008>,  <31.083141, 31.308403, 37.825073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307560, 31.648685, 37.187008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036419, 31.853476, 37.398060>,  <30.873734, 31.976349, 37.524693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036419, 31.853476, 37.398060>,  <31.307560, 31.648685, 37.187008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036419, 31.853476, 37.398060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491535, 0.849291, -0.192611,
		-0.546724, 0.128787, -0.827349,
		-0.677854, 0.511976, 0.527631,
		30.833063, 32.007069, 37.556351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249504, 32.290325, 37.028667>,  <31.307560, 31.648685, 37.187008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249504, 32.290325, 37.028667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016899, 32.347549, 37.349010>,  <30.877337, 32.381882, 37.541218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.016899, 32.347549, 37.349010>,  <31.249504, 32.290325, 37.028667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.016899, 32.347549, 37.349010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013608, 0.982570, -0.185395,
		-0.813424, -0.118708, -0.569430,
		-0.581512, 0.143056, 0.800861,
		30.842445, 32.390465, 37.589268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709518, 32.672157, 36.757607>,  <31.249504, 32.290325, 37.028667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709518, 32.672157, 36.757607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796186, 32.731030, 37.143642>,  <30.848188, 32.766354, 37.375263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796186, 32.731030, 37.143642>,  <30.709518, 32.672157, 36.757607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796186, 32.731030, 37.143642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048508, 0.985726, -0.161219,
		-0.975039, 0.081746, 0.206440,
		0.216672, 0.147180, 0.965086,
		30.861189, 32.775185, 37.433167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320419, 33.344879, 36.977760>,  <30.709518, 32.672157, 36.757607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320419, 33.344879, 36.977760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647297, 33.248161, 37.187035>,  <30.843424, 33.190128, 37.312599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.647297, 33.248161, 37.187035>,  <30.320419, 33.344879, 36.977760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647297, 33.248161, 37.187035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394012, 0.896874, -0.200928,
		-0.420651, 0.370340, 0.828192,
		0.817195, -0.241797, 0.523189,
		30.892456, 33.175621, 37.343990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553188, 34.014866, 37.237453>,  <30.320419, 33.344879, 36.977760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553188, 34.014866, 37.237453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830820, 33.731392, 37.186829>,  <30.997400, 33.561306, 37.156452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830820, 33.731392, 37.186829>,  <30.553188, 34.014866, 37.237453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830820, 33.731392, 37.186829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598619, 0.665817, -0.445356,
		0.399884, 0.233351, 0.886363,
		0.694081, -0.708685, -0.126561,
		31.039043, 33.518787, 37.148861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267752, 34.148884, 37.368729>,  <30.553188, 34.014866, 37.237453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267752, 34.148884, 37.368729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268023, 33.892170, 37.061974>,  <31.268185, 33.738144, 36.877922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268023, 33.892170, 37.061974>,  <31.267752, 34.148884, 37.368729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268023, 33.892170, 37.061974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485589, 0.670614, -0.560784,
		0.874187, -0.372011, 0.312098,
		0.000679, -0.641782, -0.766887,
		31.268227, 33.699635, 36.831909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.369511, 34.913372, 37.491535>,  <31.267752, 34.148884, 37.368729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.369511, 34.913372, 37.491535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718426, 35.096336, 37.422382>,  <31.927774, 35.206116, 37.380890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.718426, 35.096336, 37.422382>,  <31.369511, 34.913372, 37.491535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718426, 35.096336, 37.422382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000925, 0.352007, 0.935997,
		0.488994, -0.816618, 0.306628,
		0.872287, 0.457413, -0.172884,
		31.980112, 35.233559, 37.370518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752283, 34.754738, 37.976105>,  <31.369511, 34.913372, 37.491535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752283, 34.754738, 37.976105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919163, 35.092384, 37.841400>,  <32.019291, 35.294971, 37.760578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919163, 35.092384, 37.841400>,  <31.752283, 34.754738, 37.976105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919163, 35.092384, 37.841400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306583, 0.479548, 0.822217,
		0.855542, -0.239782, 0.458859,
		0.417198, 0.844120, -0.336760,
		32.044323, 35.345619, 37.740372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.234676, 34.907871, 38.468204>,  <31.752283, 34.754738, 37.976105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.234676, 34.907871, 38.468204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139309, 35.245117, 38.275410>,  <32.082088, 35.447464, 38.159733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139309, 35.245117, 38.275410>,  <32.234676, 34.907871, 38.468204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139309, 35.245117, 38.275410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299297, 0.408356, 0.862361,
		0.923892, 0.349865, 0.154980,
		-0.238423, 0.843113, -0.481991,
		32.067783, 35.498051, 38.130814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404854, 35.407375, 38.950809>,  <32.234676, 34.907871, 38.468204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404854, 35.407375, 38.950809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085846, 35.500797, 38.728306>,  <31.894442, 35.556850, 38.594803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.085846, 35.500797, 38.728306>,  <32.404854, 35.407375, 38.950809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085846, 35.500797, 38.728306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498378, 0.264544, 0.825612,
		0.339979, 0.935665, -0.094580,
		-0.797517, 0.233554, -0.556255,
		31.846590, 35.570862, 38.561428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.142960, 36.044022, 39.281677>,  <32.404854, 35.407375, 38.950809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.142960, 36.044022, 39.281677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834270, 35.876877, 39.089916>,  <31.649055, 35.776588, 38.974857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834270, 35.876877, 39.089916>,  <32.142960, 36.044022, 39.281677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834270, 35.876877, 39.089916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600934, 0.232444, 0.764753,
		-0.208126, 0.878272, -0.430491,
		-0.771726, -0.417862, -0.479406,
		31.602753, 35.751518, 38.946095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558851, 35.825432, 39.688896>,  <32.142960, 36.044022, 39.281677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558851, 35.825432, 39.688896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669079, 36.197426, 39.591576>,  <31.735216, 36.420620, 39.533184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.669079, 36.197426, 39.591576>,  <31.558851, 35.825432, 39.688896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.669079, 36.197426, 39.591576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455610, -0.096507, -0.884933,
		-0.846452, 0.354710, 0.397115,
		0.275569, 0.929982, -0.243298,
		31.751749, 36.476421, 39.518585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065643, 36.030025, 39.139881>,  <31.558851, 35.825432, 39.688896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065643, 36.030025, 39.139881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427248, 36.193077, 39.088341>,  <31.644211, 36.290909, 39.057415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427248, 36.193077, 39.088341>,  <31.065643, 36.030025, 39.139881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427248, 36.193077, 39.088341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112116, -0.064795, -0.991580,
		-0.412549, 0.910845, -0.012874,
		0.904010, 0.407632, -0.128851,
		31.698450, 36.315365, 39.049686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066898, 36.395119, 38.546242>,  <31.065643, 36.030025, 39.139881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066898, 36.395119, 38.546242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460087, 36.357086, 38.609146>,  <31.695999, 36.334267, 38.646889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460087, 36.357086, 38.609146>,  <31.066898, 36.395119, 38.546242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460087, 36.357086, 38.609146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152081, -0.059517, -0.986574,
		0.103167, 0.993688, -0.044043,
		0.982969, -0.095084, 0.157262,
		31.754978, 36.328560, 38.656326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.374777, 36.621090, 37.987679>,  <31.066898, 36.395119, 38.546242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.374777, 36.621090, 37.987679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633343, 36.357311, 38.141186>,  <31.788483, 36.199043, 38.233288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.633343, 36.357311, 38.141186>,  <31.374777, 36.621090, 37.987679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.633343, 36.357311, 38.141186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270253, -0.272476, -0.923429,
		0.713521, 0.700630, 0.002086,
		0.646414, -0.659450, 0.383765,
		31.827267, 36.159477, 38.256313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875898, 36.642124, 37.571701>,  <31.374777, 36.621090, 37.987679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875898, 36.642124, 37.571701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930828, 36.285057, 37.743416>,  <31.963785, 36.070816, 37.846443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930828, 36.285057, 37.743416>,  <31.875898, 36.642124, 37.571701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930828, 36.285057, 37.743416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262238, -0.385162, -0.884806,
		0.955182, 0.234079, 0.181200,
		0.137323, -0.892668, 0.429285,
		31.972025, 36.017258, 37.872200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653728, 36.400284, 37.356865>,  <31.875898, 36.642124, 37.571701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653728, 36.400284, 37.356865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446056, 36.078796, 37.473137>,  <32.321453, 35.885906, 37.542900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446056, 36.078796, 37.473137>,  <32.653728, 36.400284, 37.356865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446056, 36.078796, 37.473137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249177, -0.467678, -0.848050,
		0.817535, -0.367859, 0.443076,
		-0.519179, -0.803715, 0.290681,
		32.290302, 35.837681, 37.560341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125351, 35.812649, 37.214794>,  <32.653728, 36.400284, 37.356865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125351, 35.812649, 37.214794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766960, 35.641979, 37.264065>,  <32.551926, 35.539577, 37.293629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766960, 35.641979, 37.264065>,  <33.125351, 35.812649, 37.214794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766960, 35.641979, 37.264065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208419, -0.648912, -0.731761,
		0.392154, -0.629970, 0.670338,
		-0.895978, -0.426674, 0.123176,
		32.498165, 35.513977, 37.301018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203651, 35.113285, 37.284321>,  <33.125351, 35.812649, 37.214794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203651, 35.113285, 37.284321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824322, 35.158993, 37.165913>,  <32.596725, 35.186417, 37.094868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824322, 35.158993, 37.165913>,  <33.203651, 35.113285, 37.284321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824322, 35.158993, 37.165913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085350, -0.806665, -0.584813,
		-0.305611, -0.579857, 0.755227,
		-0.948323, 0.114267, -0.296017,
		32.539825, 35.193272, 37.077106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804199, 34.480549, 37.384159>,  <33.203651, 35.113285, 37.284321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804199, 34.480549, 37.384159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646835, 34.692135, 37.083378>,  <32.552418, 34.819084, 36.902908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646835, 34.692135, 37.083378>,  <32.804199, 34.480549, 37.384159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646835, 34.692135, 37.083378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006980, -0.819599, -0.572895,
		-0.919338, -0.220132, 0.326127,
		-0.393406, 0.528961, -0.751952,
		32.528812, 34.850822, 36.857792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077065, 34.151180, 37.183517>,  <32.804199, 34.480549, 37.384159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077065, 34.151180, 37.183517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293076, 34.334576, 36.901196>,  <32.422684, 34.444614, 36.731804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293076, 34.334576, 36.901196>,  <32.077065, 34.151180, 37.183517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293076, 34.334576, 36.901196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129504, -0.783345, -0.607947,
		-0.831624, 0.419713, -0.363652,
		0.540028, 0.458489, -0.705803,
		32.455086, 34.472122, 36.689453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741224, 33.989315, 36.589451>,  <32.077065, 34.151180, 37.183517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741224, 33.989315, 36.589451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098961, 34.126766, 36.474857>,  <32.313602, 34.209236, 36.406101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098961, 34.126766, 36.474857>,  <31.741224, 33.989315, 36.589451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098961, 34.126766, 36.474857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049295, -0.712138, -0.700306,
		-0.444663, 0.612190, -0.653833,
		0.894340, 0.343631, -0.286483,
		32.367264, 34.229855, 36.388912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698099, 34.004917, 35.876041>,  <31.741224, 33.989315, 36.589451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698099, 34.004917, 35.876041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096291, 34.004044, 35.914021>,  <32.335205, 34.003517, 35.936810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.096291, 34.004044, 35.914021>,  <31.698099, 34.004917, 35.876041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096291, 34.004044, 35.914021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082988, -0.466168, -0.880795,
		0.046190, 0.884693, -0.463880,
		0.995479, -0.002187, 0.094952,
		32.394936, 34.003387, 35.942505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872971, 34.297955, 35.280800>,  <31.698099, 34.004917, 35.876041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872971, 34.297955, 35.280800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191635, 34.083359, 35.392166>,  <32.382835, 33.954601, 35.458988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191635, 34.083359, 35.392166>,  <31.872971, 34.297955, 35.280800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191635, 34.083359, 35.392166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129584, -0.298322, -0.945628,
		0.590374, 0.789422, -0.168141,
		0.796660, -0.536485, 0.278418,
		32.430634, 33.922413, 35.475693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448380, 34.486328, 34.864769>,  <31.872971, 34.297955, 35.280800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448380, 34.486328, 34.864769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526627, 34.122509, 35.011448>,  <32.573574, 33.904217, 35.099453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526627, 34.122509, 35.011448>,  <32.448380, 34.486328, 34.864769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526627, 34.122509, 35.011448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291091, -0.303213, -0.907374,
		0.936483, 0.284237, 0.205447,
		0.195615, -0.909545, 0.366693,
		32.585312, 33.849648, 35.121456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.061314, 34.258175, 34.510750>,  <32.448380, 34.486328, 34.864769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.061314, 34.258175, 34.510750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911865, 33.923325, 34.670563>,  <32.822197, 33.722416, 34.766449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911865, 33.923325, 34.670563>,  <33.061314, 34.258175, 34.510750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911865, 33.923325, 34.670563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197514, -0.492645, -0.847519,
		0.906308, -0.237738, 0.349408,
		-0.373622, -0.837127, 0.399531,
		32.799778, 33.672188, 34.790421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574650, 33.687355, 34.482780>,  <33.061314, 34.258175, 34.510750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574650, 33.687355, 34.482780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204777, 33.535786, 34.497635>,  <32.982853, 33.444843, 34.506546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.204777, 33.535786, 34.497635>,  <33.574650, 33.687355, 34.482780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204777, 33.535786, 34.497635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186280, -0.535319, -0.823853,
		0.332055, -0.754885, 0.565586,
		-0.924683, -0.378922, 0.037135,
		32.927372, 33.422108, 34.508774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628712, 33.198902, 34.080116>,  <33.574650, 33.687355, 34.482780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628712, 33.198902, 34.080116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233593, 33.174664, 34.137505>,  <32.996521, 33.160118, 34.171936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233593, 33.174664, 34.137505>,  <33.628712, 33.198902, 34.080116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233593, 33.174664, 34.137505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100084, -0.458824, -0.882872,
		0.119331, -0.886458, 0.447160,
		-0.987797, -0.060601, 0.143472,
		32.937252, 33.156483, 34.180546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427788, 32.471668, 33.879242>,  <33.628712, 33.198902, 34.080116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427788, 32.471668, 33.879242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114670, 32.719574, 33.856888>,  <32.926800, 32.868317, 33.843475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114670, 32.719574, 33.856888>,  <33.427788, 32.471668, 33.879242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114670, 32.719574, 33.856888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262150, -0.409889, -0.873652,
		-0.564365, -0.669241, 0.483331,
		-0.782796, 0.619764, -0.055885,
		32.879829, 32.905502, 33.840122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857159, 32.056641, 33.574169>,  <33.427788, 32.471668, 33.879242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857159, 32.056641, 33.574169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765606, 32.440899, 33.511200>,  <32.710674, 32.671452, 33.473419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765606, 32.440899, 33.511200>,  <32.857159, 32.056641, 33.574169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765606, 32.440899, 33.511200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307205, -0.224730, -0.924728,
		-0.923710, -0.163289, 0.346550,
		-0.228878, 0.960642, -0.157422,
		32.696941, 32.729092, 33.463974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200401, 31.986963, 33.132549>,  <32.857159, 32.056641, 33.574169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200401, 31.986963, 33.132549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305027, 32.368046, 33.070667>,  <32.367802, 32.596695, 33.033539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305027, 32.368046, 33.070667>,  <32.200401, 31.986963, 33.132549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305027, 32.368046, 33.070667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376828, -0.046767, -0.925102,
		-0.888586, 0.300270, 0.346775,
		0.261562, 0.952707, -0.154707,
		32.383495, 32.653858, 33.024254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647451, 32.460850, 32.931160>,  <32.200401, 31.986963, 33.132549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647451, 32.460850, 32.931160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969755, 32.653732, 32.793621>,  <32.163139, 32.769463, 32.711098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.969755, 32.653732, 32.793621>,  <31.647451, 32.460850, 32.931160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969755, 32.653732, 32.793621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426965, 0.070624, -0.901506,
		-0.410426, 0.873208, 0.262790,
		0.805762, 0.482204, -0.343843,
		32.211483, 32.798393, 32.690468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515995, 33.059269, 32.414593>,  <31.647451, 32.460850, 32.931160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515995, 33.059269, 32.414593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891140, 32.935368, 32.352032>,  <32.116226, 32.861027, 32.314495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.891140, 32.935368, 32.352032>,  <31.515995, 33.059269, 32.414593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891140, 32.935368, 32.352032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154091, 0.032067, -0.987536,
		0.310912, 0.950275, -0.017656,
		0.937865, -0.309757, -0.156399,
		32.172501, 32.842442, 32.305111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818020, 33.476234, 32.036263>,  <31.515995, 33.059269, 32.414593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818020, 33.476234, 32.036263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047771, 33.159771, 31.952206>,  <32.185623, 32.969894, 31.901772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047771, 33.159771, 31.952206>,  <31.818020, 33.476234, 32.036263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047771, 33.159771, 31.952206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201680, 0.112033, -0.973023,
		0.793355, 0.601268, -0.095210,
		0.574381, -0.791154, -0.210146,
		32.220085, 32.922424, 31.889162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254475, 33.646851, 31.353645>,  <31.818020, 33.476234, 32.036263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254475, 33.646851, 31.353645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266777, 33.251259, 31.411577>,  <32.274158, 33.013905, 31.446337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266777, 33.251259, 31.411577>,  <32.254475, 33.646851, 31.353645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266777, 33.251259, 31.411577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325224, -0.146915, -0.934155,
		0.945137, -0.018372, -0.326158,
		0.030755, -0.988978, 0.144829,
		32.276005, 32.954567, 31.455027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682396, 33.341728, 30.837547>,  <32.254475, 33.646851, 31.353645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682396, 33.341728, 30.837547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457550, 33.034367, 30.959919>,  <32.322643, 32.849949, 31.033342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.457550, 33.034367, 30.959919>,  <32.682396, 33.341728, 30.837547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.457550, 33.034367, 30.959919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011468, -0.362620, -0.931867,
		0.826983, -0.527320, 0.195020,
		-0.562110, -0.768402, 0.305928,
		32.288918, 32.803844, 31.051697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942833, 32.932049, 30.459572>,  <32.682396, 33.341728, 30.837547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942833, 32.932049, 30.459572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586296, 32.797604, 30.581253>,  <32.372375, 32.716938, 30.654261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586296, 32.797604, 30.581253>,  <32.942833, 32.932049, 30.459572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586296, 32.797604, 30.581253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255079, -0.182877, -0.949469,
		0.374761, -0.923896, 0.077270,
		-0.891341, -0.336113, 0.304201,
		32.318893, 32.696770, 30.672514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816746, 32.373333, 30.130356>,  <32.942833, 32.932049, 30.459572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816746, 32.373333, 30.130356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442581, 32.439224, 30.255493>,  <32.218082, 32.478760, 30.330576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.442581, 32.439224, 30.255493>,  <32.816746, 32.373333, 30.130356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442581, 32.439224, 30.255493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313619, 0.021971, -0.949295,
		-0.163248, -0.986094, 0.031110,
		-0.935411, 0.164727, 0.312844,
		32.161957, 32.488644, 30.349346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.386120, 31.969793, 29.622540>,  <32.816746, 32.373333, 30.130356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.386120, 31.969793, 29.622540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110260, 32.177532, 29.824394>,  <31.944744, 32.302177, 29.945507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110260, 32.177532, 29.824394>,  <32.386120, 31.969793, 29.622540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110260, 32.177532, 29.824394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683899, -0.238043, -0.689651,
		-0.238043, -0.820740, 0.519347,
		0.689651, -0.519347, -0.504638,
		31.903364, 32.333336, 29.975786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765347, 31.551565, 29.629807>,  <32.386120, 31.969793, 29.622540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765347, 31.551565, 29.629807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687080, 31.942030, 29.667381>,  <31.640121, 32.176308, 29.689926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687080, 31.942030, 29.667381>,  <31.765347, 31.551565, 29.629807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687080, 31.942030, 29.667381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661515, -0.060665, -0.747475,
		-0.723957, -0.208395, 0.657615,
		-0.195664, 0.976161, 0.093937,
		31.628382, 32.234879, 29.695562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.084785, 31.649389, 29.836988>,  <31.765347, 31.551565, 29.629807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.084785, 31.649389, 29.836988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187559, 31.983147, 29.641939>,  <31.249224, 32.183399, 29.524910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187559, 31.983147, 29.641939>,  <31.084785, 31.649389, 29.836988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187559, 31.983147, 29.641939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690320, -0.194659, -0.696826,
		-0.676346, 0.515654, 0.525982,
		0.256933, 0.834391, -0.487623,
		31.264639, 32.233463, 29.495653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480436, 31.929731, 29.627750>,  <31.084785, 31.649389, 29.836988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480436, 31.929731, 29.627750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738142, 32.147808, 29.413202>,  <30.892765, 32.278652, 29.284473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738142, 32.147808, 29.413202>,  <30.480436, 31.929731, 29.627750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738142, 32.147808, 29.413202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530358, -0.186820, -0.826933,
		-0.551040, 0.817231, 0.168785,
		0.644263, 0.545190, -0.536370,
		30.931421, 32.311367, 29.252291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.032600, 32.350296, 29.230011>,  <30.480436, 31.929731, 29.627750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.032600, 32.350296, 29.230011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381655, 32.368469, 29.035511>,  <30.591087, 32.379372, 28.918810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.381655, 32.368469, 29.035511>,  <30.032600, 32.350296, 29.230011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381655, 32.368469, 29.035511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480325, -0.100137, -0.871356,
		-0.088278, 0.993936, -0.065561,
		0.872637, 0.045431, -0.486252,
		30.643446, 32.382099, 28.889635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771112, 32.545906, 28.547966>,  <30.032600, 32.350296, 29.230011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771112, 32.545906, 28.547966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153070, 32.437595, 28.499220>,  <30.382246, 32.372608, 28.469973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153070, 32.437595, 28.499220>,  <29.771112, 32.545906, 28.547966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153070, 32.437595, 28.499220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177382, -0.191045, -0.965421,
		0.238133, 0.943494, -0.230459,
		0.954897, -0.270778, -0.121865,
		30.439539, 32.356361, 28.462660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125172, 32.948811, 27.968637>,  <29.771112, 32.545906, 28.547966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125172, 32.948811, 27.968637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320784, 32.602627, 28.012140>,  <30.438150, 32.394917, 28.038242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320784, 32.602627, 28.012140>,  <30.125172, 32.948811, 27.968637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320784, 32.602627, 28.012140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002637, -0.123215, -0.992376,
		0.872264, 0.485587, -0.057974,
		0.489028, -0.865462, 0.108756,
		30.467491, 32.342987, 28.044767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842480, 32.938419, 27.607954>,  <30.125172, 32.948811, 27.968637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842480, 32.938419, 27.607954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674398, 32.577320, 27.644762>,  <30.573549, 32.360661, 27.666847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.674398, 32.577320, 27.644762>,  <30.842480, 32.938419, 27.607954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.674398, 32.577320, 27.644762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065077, -0.071165, -0.995339,
		0.905093, -0.424235, -0.028845,
		-0.420205, -0.902751, 0.092019,
		30.548336, 32.306496, 27.672367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975424, 32.718945, 26.893389>,  <30.842480, 32.938419, 27.607954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975424, 32.718945, 26.893389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737158, 32.425922, 27.025173>,  <30.594198, 32.250111, 27.104244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.737158, 32.425922, 27.025173>,  <30.975424, 32.718945, 26.893389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.737158, 32.425922, 27.025173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221805, -0.244209, -0.944015,
		0.772000, -0.635394, -0.017017,
		-0.595666, -0.732555, 0.329463,
		30.558458, 32.206158, 27.124012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.113878, 32.048176, 26.483110>,  <30.975424, 32.718945, 26.893389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.113878, 32.048176, 26.483110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751198, 32.025593, 26.650299>,  <30.533588, 32.012043, 26.750612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.751198, 32.025593, 26.650299>,  <31.113878, 32.048176, 26.483110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751198, 32.025593, 26.650299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374028, -0.350348, -0.858696,
		0.194918, -0.934916, 0.296545,
		-0.906703, -0.056459, 0.417974,
		30.479187, 32.008656, 26.775692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027351, 31.298334, 26.339991>,  <31.113878, 32.048176, 26.483110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027351, 31.298334, 26.339991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700264, 31.518633, 26.406946>,  <30.504011, 31.650812, 26.447121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700264, 31.518633, 26.406946>,  <31.027351, 31.298334, 26.339991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700264, 31.518633, 26.406946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411181, -0.355369, -0.839430,
		-0.402831, -0.755241, 0.517048,
		-0.817715, 0.550749, 0.167387,
		30.454948, 31.683857, 26.457163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470833, 30.746080, 26.244814>,  <31.027351, 31.298334, 26.339991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470833, 30.746080, 26.244814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296963, 31.104757, 26.211336>,  <30.192640, 31.319963, 26.191250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296963, 31.104757, 26.211336>,  <30.470833, 30.746080, 26.244814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296963, 31.104757, 26.211336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270376, -0.218581, -0.937613,
		-0.859044, -0.384926, 0.337455,
		-0.434673, 0.896690, -0.083696,
		30.166561, 31.373764, 26.186228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849009, 30.583414, 25.953953>,  <30.470833, 30.746080, 26.244814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849009, 30.583414, 25.953953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927011, 30.968166, 25.877260>,  <29.973814, 31.199017, 25.831245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927011, 30.968166, 25.877260>,  <29.849009, 30.583414, 25.953953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927011, 30.968166, 25.877260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392883, -0.102508, -0.913857,
		-0.898674, 0.253537, 0.357916,
		0.195007, 0.961879, -0.191731,
		29.985514, 31.256729, 25.819740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188856, 30.829844, 25.805298>,  <29.849009, 30.583414, 25.953953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188856, 30.829844, 25.805298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468466, 31.062923, 25.639490>,  <29.636230, 31.202772, 25.540005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.468466, 31.062923, 25.639490>,  <29.188856, 30.829844, 25.805298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468466, 31.062923, 25.639490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466044, -0.068437, -0.882110,
		-0.542375, 0.809800, 0.223725,
		0.699023, 0.582700, -0.414521,
		29.678173, 31.237734, 25.515133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.905470, 31.165098, 25.203812>,  <29.188856, 30.829844, 25.805298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.905470, 31.165098, 25.203812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291195, 31.251410, 25.142445>,  <29.522631, 31.303196, 25.105623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291195, 31.251410, 25.142445>,  <28.905470, 31.165098, 25.203812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291195, 31.251410, 25.142445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139787, -0.077172, -0.987170,
		-0.224850, 0.973388, -0.044255,
		0.964314, 0.215779, -0.153419,
		29.580490, 31.316143, 25.096418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895239, 31.611874, 24.742746>,  <28.905470, 31.165098, 25.203812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895239, 31.611874, 24.742746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271429, 31.489782, 24.682961>,  <29.497143, 31.416527, 24.647089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.271429, 31.489782, 24.682961>,  <28.895239, 31.611874, 24.742746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271429, 31.489782, 24.682961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197488, -0.132892, -0.971256,
		0.276591, 0.942961, -0.185261,
		0.940476, -0.305228, -0.149466,
		29.553572, 31.398214, 24.638121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092026, 32.016663, 24.218857>,  <28.895239, 31.611874, 24.742746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092026, 32.016663, 24.218857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370216, 31.729319, 24.212227>,  <29.537130, 31.556913, 24.208248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370216, 31.729319, 24.212227>,  <29.092026, 32.016663, 24.218857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370216, 31.729319, 24.212227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055311, -0.030523, -0.998002,
		0.716416, 0.695005, -0.060961,
		0.695478, -0.718357, -0.016574,
		29.578859, 31.513811, 24.207254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677860, 32.192669, 23.702372>,  <29.092026, 32.016663, 24.218857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677860, 32.192669, 23.702372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633842, 31.798822, 23.756651>,  <29.607431, 31.562513, 23.789219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633842, 31.798822, 23.756651>,  <29.677860, 32.192669, 23.702372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633842, 31.798822, 23.756651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283771, -0.099722, -0.953693,
		0.952557, -0.143455, -0.268432,
		-0.110044, -0.984620, 0.135700,
		29.600830, 31.503437, 23.797361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.000122, 31.938482, 23.207657>,  <29.677860, 32.192669, 23.702372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.000122, 31.938482, 23.207657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771965, 31.632441, 23.327169>,  <29.635071, 31.448816, 23.398876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771965, 31.632441, 23.327169>,  <30.000122, 31.938482, 23.207657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771965, 31.632441, 23.327169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079433, -0.310669, -0.947193,
		0.817522, -0.564006, 0.116429,
		-0.570393, -0.765102, 0.298779,
		29.600847, 31.402910, 23.416803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087406, 31.554346, 22.655590>,  <30.000122, 31.938482, 23.207657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087406, 31.554346, 22.655590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764305, 31.398077, 22.832186>,  <29.570444, 31.304316, 22.938143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764305, 31.398077, 22.832186>,  <30.087406, 31.554346, 22.655590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764305, 31.398077, 22.832186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296996, -0.377239, -0.877202,
		0.509244, -0.839683, 0.188688,
		-0.807752, -0.390670, 0.441489,
		29.521980, 31.280876, 22.964632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993294, 30.948204, 22.322371>,  <30.087406, 31.554346, 22.655590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993294, 30.948204, 22.322371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626614, 31.013577, 22.468220>,  <29.406605, 31.052801, 22.555729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.626614, 31.013577, 22.468220>,  <29.993294, 30.948204, 22.322371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.626614, 31.013577, 22.468220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398461, -0.305864, -0.864683,
		-0.029794, -0.937943, 0.345508,
		-0.916701, 0.163434, 0.364621,
		29.351603, 31.062607, 22.577606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633062, 30.384562, 22.115564>,  <29.993294, 30.948204, 22.322371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633062, 30.384562, 22.115564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337822, 30.644167, 22.189304>,  <29.160677, 30.799931, 22.233549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.337822, 30.644167, 22.189304>,  <29.633062, 30.384562, 22.115564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.337822, 30.644167, 22.189304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557616, -0.432985, -0.708229,
		-0.379826, -0.625545, 0.681487,
		-0.738103, 0.649012, 0.184355,
		29.116392, 30.838871, 22.244610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.999033, 30.079647, 22.259392>,  <29.633062, 30.384562, 22.115564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.999033, 30.079647, 22.259392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877295, 30.443356, 22.145830>,  <28.804253, 30.661581, 22.077692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877295, 30.443356, 22.145830>,  <28.999033, 30.079647, 22.259392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877295, 30.443356, 22.145830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677782, -0.416131, -0.606174,
		-0.669318, 0.007941, 0.742933,
		-0.304344, 0.909270, -0.283906,
		28.785992, 30.716137, 22.060658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.197790, 30.169506, 22.255692>,  <28.999033, 30.079647, 22.259392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.197790, 30.169506, 22.255692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349882, 30.415674, 21.979523>,  <28.441137, 30.563375, 21.813822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349882, 30.415674, 21.979523>,  <28.197790, 30.169506, 22.255692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349882, 30.415674, 21.979523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465255, -0.517893, -0.717861,
		-0.799351, 0.594175, 0.089410,
		0.380230, 0.615422, -0.690421,
		28.463951, 30.600300, 21.772396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750502, 30.700596, 21.999638>,  <28.197790, 30.169506, 22.255692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750502, 30.700596, 21.999638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.023413, 30.680315, 21.707905>,  <28.187159, 30.668146, 21.532866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.023413, 30.680315, 21.707905>,  <27.750502, 30.700596, 21.999638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023413, 30.680315, 21.707905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730905, -0.069991, -0.678881,
		-0.016626, 0.996258, -0.084812,
		0.682277, -0.050702, -0.729334,
		28.228096, 30.665104, 21.489105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827875, 31.282932, 21.455973>,  <27.750502, 30.700596, 21.999638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827875, 31.282932, 21.455973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917503, 30.921879, 21.308977>,  <27.971279, 30.705246, 21.220779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.917503, 30.921879, 21.308977>,  <27.827875, 31.282932, 21.455973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.917503, 30.921879, 21.308977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823991, 0.025893, -0.566011,
		0.520415, 0.429632, -0.737960,
		0.224069, -0.902633, -0.367488,
		27.984724, 30.651089, 21.198730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602112, 31.244816, 20.699924>,  <27.827875, 31.282932, 21.455973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602112, 31.244816, 20.699924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608910, 30.863119, 20.819349>,  <27.612988, 30.634102, 20.891005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608910, 30.863119, 20.819349>,  <27.602112, 31.244816, 20.699924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608910, 30.863119, 20.819349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814130, -0.186550, -0.549900,
		0.580433, -0.233721, -0.780046,
		0.016994, -0.954239, 0.298560,
		27.614008, 30.576847, 20.908916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.135193, 31.406517, 20.236786>,  <27.602112, 31.244816, 20.699924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.135193, 31.406517, 20.236786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826546, 31.612965, 20.088070>,  <27.641357, 31.736834, 19.998840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826546, 31.612965, 20.088070>,  <28.135193, 31.406517, 20.236786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826546, 31.612965, 20.088070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520492, 0.848297, 0.097368,
		0.365642, -0.118383, -0.923196,
		-0.771618, 0.516118, -0.371791,
		27.595060, 31.767799, 19.976532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432077, 30.782484, 20.221161>,  <28.135193, 31.406517, 20.236786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.432077, 30.782484, 20.221161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.777306, 30.580713, 20.210850>,  <28.984442, 30.459650, 20.204662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.777306, 30.580713, 20.210850>,  <28.432077, 30.782484, 20.221161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.777306, 30.580713, 20.210850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457032, -0.758207, -0.465020,
		0.215023, 0.413126, -0.884925,
		0.863068, -0.504429, -0.025779,
		29.036226, 30.429384, 20.203115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774092, 30.564934, 19.560280>,  <28.432077, 30.782484, 20.221161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774092, 30.564934, 19.560280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.811487, 30.298727, 19.856483>,  <28.833923, 30.139004, 20.034204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.811487, 30.298727, 19.856483>,  <28.774092, 30.564934, 19.560280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811487, 30.298727, 19.856483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618071, -0.621888, -0.480878,
		0.780543, -0.412730, -0.469474,
		0.093487, -0.665515, 0.740507,
		28.839533, 30.099073, 20.078636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.104536, 30.954372, 19.374418>,  <28.774092, 30.564934, 19.560280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.104536, 30.954372, 19.374418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075848, 31.353014, 19.358232>,  <28.058636, 31.592199, 19.348522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075848, 31.353014, 19.358232>,  <28.104536, 30.954372, 19.374418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.075848, 31.353014, 19.358232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841832, 0.082240, 0.533438,
		0.534954, 0.004195, -0.844871,
		-0.071719, 0.996604, -0.040463,
		28.054333, 31.651995, 19.346094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767595, 31.268555, 19.372478>,  <28.104536, 30.954372, 19.374418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767595, 31.268555, 19.372478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547392, 31.567593, 19.521097>,  <28.415270, 31.747015, 19.610270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547392, 31.567593, 19.521097>,  <28.767595, 31.268555, 19.372478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547392, 31.567593, 19.521097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713681, 0.190532, 0.674061,
		0.433131, 0.636241, -0.638431,
		-0.550507, 0.747593, 0.371548,
		28.382240, 31.791870, 19.632561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258583, 31.771372, 19.496527>,  <28.767595, 31.268555, 19.372478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258583, 31.771372, 19.496527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936871, 31.917637, 19.683897>,  <28.743843, 32.005394, 19.796318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936871, 31.917637, 19.683897>,  <29.258583, 31.771372, 19.496527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936871, 31.917637, 19.683897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581392, 0.321134, 0.747567,
		0.122929, 0.873594, -0.470875,
		-0.804283, 0.365660, 0.468424,
		28.695585, 32.027336, 19.824425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098019, 32.511410, 19.405306>,  <29.258583, 31.771372, 19.496527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098019, 32.511410, 19.405306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978613, 32.352486, 19.752415>,  <28.906969, 32.257130, 19.960680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978613, 32.352486, 19.752415>,  <29.098019, 32.511410, 19.405306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978613, 32.352486, 19.752415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755262, 0.457536, 0.469297,
		-0.583496, 0.795489, 0.163494,
		-0.298516, -0.397314, 0.867773,
		28.889057, 32.233292, 20.012747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.915350, 33.033180, 19.943558>,  <29.098019, 32.511410, 19.405306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.915350, 33.033180, 19.943558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008274, 32.698776, 20.142405>,  <29.064028, 32.498135, 20.261713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008274, 32.698776, 20.142405>,  <28.915350, 33.033180, 19.943558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008274, 32.698776, 20.142405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597469, 0.525960, 0.605307,
		-0.767504, 0.156393, 0.621674,
		0.232310, -0.836007, 0.497116,
		29.077967, 32.447975, 20.291540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561420, 33.047199, 20.677271>,  <28.915350, 33.033180, 19.943558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.561420, 33.047199, 20.677271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881975, 32.808575, 20.659863>,  <29.074308, 32.665401, 20.649418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881975, 32.808575, 20.659863>,  <28.561420, 33.047199, 20.677271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881975, 32.808575, 20.659863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483042, 0.602551, 0.635298,
		-0.352769, -0.530142, 0.771040,
		0.801389, -0.596558, -0.043520,
		29.122393, 32.629608, 20.646807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.785500, 33.075394, 21.299133>,  <28.561420, 33.047199, 20.677271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.785500, 33.075394, 21.299133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099621, 32.897278, 21.127081>,  <29.288094, 32.790409, 21.023849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099621, 32.897278, 21.127081>,  <28.785500, 33.075394, 21.299133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099621, 32.897278, 21.127081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610049, 0.438124, 0.660218,
		-0.105537, -0.780873, 0.615710,
		0.785304, -0.445291, -0.430133,
		29.335213, 32.763691, 20.998041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075457, 32.779518, 21.853670>,  <28.785500, 33.075394, 21.299133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075457, 32.779518, 21.853670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371578, 32.804184, 21.585894>,  <29.549252, 32.818985, 21.425228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371578, 32.804184, 21.585894>,  <29.075457, 32.779518, 21.853670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371578, 32.804184, 21.585894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627253, 0.294919, 0.720816,
		0.241875, -0.953531, 0.179654,
		0.740304, 0.061659, -0.669439,
		29.593670, 32.822681, 21.385061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661606, 32.400238, 22.130962>,  <29.075457, 32.779518, 21.853670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661606, 32.400238, 22.130962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844032, 32.609203, 21.842772>,  <29.953487, 32.734585, 21.669857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844032, 32.609203, 21.842772>,  <29.661606, 32.400238, 22.130962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844032, 32.609203, 21.842772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781428, 0.152345, 0.605112,
		0.425882, -0.838970, -0.338753,
		0.456064, 0.522418, -0.720476,
		29.980852, 32.765930, 21.626629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279106, 32.087811, 22.013494>,  <29.661606, 32.400238, 22.130962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279106, 32.087811, 22.013494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273842, 32.474503, 21.911312>,  <30.270683, 32.706516, 21.850002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273842, 32.474503, 21.911312>,  <30.279106, 32.087811, 22.013494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273842, 32.474503, 21.911312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675604, 0.196938, 0.710474,
		0.737147, -0.163234, -0.655720,
		-0.013163, 0.966732, -0.255454,
		30.269894, 32.764523, 21.834677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940237, 32.351795, 22.168470>,  <30.279106, 32.087811, 22.013494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940237, 32.351795, 22.168470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739309, 32.695137, 22.126703>,  <30.618753, 32.901142, 22.101643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739309, 32.695137, 22.126703>,  <30.940237, 32.351795, 22.168470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739309, 32.695137, 22.126703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632163, 0.446946, 0.632937,
		0.589953, 0.251929, -0.767129,
		-0.502320, 0.858354, -0.104417,
		30.588614, 32.952644, 22.095379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398928, 32.915035, 22.189598>,  <30.940237, 32.351795, 22.168470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398928, 32.915035, 22.189598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067785, 33.121185, 22.278181>,  <30.869101, 33.244877, 22.331331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067785, 33.121185, 22.278181>,  <31.398928, 32.915035, 22.189598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067785, 33.121185, 22.278181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489927, 0.472054, 0.732896,
		0.273177, 0.715229, -0.643289,
		-0.827856, 0.515375, 0.221456,
		30.819429, 33.275799, 22.344618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622099, 33.678608, 22.301975>,  <31.398928, 32.915035, 22.189598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622099, 33.678608, 22.301975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272093, 33.610855, 22.483376>,  <31.062090, 33.570206, 22.592216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.272093, 33.610855, 22.483376>,  <31.622099, 33.678608, 22.301975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272093, 33.610855, 22.483376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273684, 0.599632, 0.752023,
		-0.399310, 0.782146, -0.478329,
		-0.875013, -0.169380, 0.453500,
		31.009588, 33.560040, 22.619425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336174, 34.271305, 22.476812>,  <31.622099, 33.678608, 22.301975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336174, 34.271305, 22.476812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177061, 34.010525, 22.735033>,  <31.081594, 33.854057, 22.889965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177061, 34.010525, 22.735033>,  <31.336174, 34.271305, 22.476812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177061, 34.010525, 22.735033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220433, 0.615091, 0.757015,
		-0.890606, 0.443427, -0.100961,
		-0.397781, -0.651947, 0.645550,
		31.057726, 33.814941, 22.928698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452436, 34.612999, 23.142271>,  <31.336174, 34.271305, 22.476812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452436, 34.612999, 23.142271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277237, 34.283428, 23.286106>,  <31.172117, 34.085686, 23.372408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.277237, 34.283428, 23.286106>,  <31.452436, 34.612999, 23.142271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.277237, 34.283428, 23.286106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169644, 0.317059, 0.933110,
		-0.882825, 0.469701, 0.000903,
		-0.437997, -0.823926, 0.359589,
		31.145838, 34.036251, 23.393984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.891539, 34.838539, 23.642139>,  <31.452436, 34.612999, 23.142271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.891539, 34.838539, 23.642139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009071, 34.462624, 23.711960>,  <31.079590, 34.237076, 23.753851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009071, 34.462624, 23.711960>,  <30.891539, 34.838539, 23.642139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009071, 34.462624, 23.711960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254582, 0.252957, 0.933381,
		-0.921332, -0.229818, 0.313579,
		0.293830, -0.939785, 0.174550,
		31.097219, 34.180687, 23.764324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544250, 34.645771, 24.251226>,  <30.891539, 34.838539, 23.642139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544250, 34.645771, 24.251226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869833, 34.420689, 24.193478>,  <31.065182, 34.285641, 24.158829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.869833, 34.420689, 24.193478>,  <30.544250, 34.645771, 24.251226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869833, 34.420689, 24.193478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266566, 0.140966, 0.953452,
		-0.516158, -0.814552, 0.264737,
		0.813955, -0.562702, -0.144371,
		31.114019, 34.251877, 24.150166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502415, 34.199936, 24.762756>,  <30.544250, 34.645771, 24.251226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502415, 34.199936, 24.762756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882069, 34.185432, 24.637648>,  <31.109861, 34.176731, 24.562582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.882069, 34.185432, 24.637648>,  <30.502415, 34.199936, 24.762756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882069, 34.185432, 24.637648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312605, -0.010295, 0.949827,
		-0.037667, -0.999289, 0.001566,
		0.949136, -0.036267, -0.312770,
		31.166809, 34.174557, 24.543816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739147, 33.759151, 25.220619>,  <30.502415, 34.199936, 24.762756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739147, 33.759151, 25.220619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054911, 33.950649, 25.066923>,  <31.244370, 34.065548, 24.974707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.054911, 33.950649, 25.066923>,  <30.739147, 33.759151, 25.220619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.054911, 33.950649, 25.066923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469081, -0.066682, 0.880634,
		0.395974, -0.875420, -0.277208,
		0.789410, 0.478742, -0.384238,
		31.291733, 34.094273, 24.951653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409937, 33.432541, 25.474737>,  <30.739147, 33.759151, 25.220619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409937, 33.432541, 25.474737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479401, 33.812412, 25.370470>,  <31.521078, 34.040337, 25.307909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.479401, 33.812412, 25.370470>,  <31.409937, 33.432541, 25.474737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.479401, 33.812412, 25.370470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437321, 0.162796, 0.884448,
		0.882379, -0.267588, -0.387045,
		0.173658, 0.949681, -0.260669,
		31.531498, 34.097317, 25.292269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172714, 33.571453, 25.694000>,  <31.409937, 33.432541, 25.474737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172714, 33.571453, 25.694000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935558, 33.893539, 25.689795>,  <31.793264, 34.086792, 25.687271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.935558, 33.893539, 25.689795>,  <32.172714, 33.571453, 25.694000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.935558, 33.893539, 25.689795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339290, 0.261626, 0.903568,
		0.730315, 0.532151, -0.428316,
		-0.592893, 0.805212, -0.010516,
		31.757690, 34.135101, 25.686640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532822, 34.024002, 26.000065>,  <32.172714, 33.571453, 25.694000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532822, 34.024002, 26.000065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172745, 34.198097, 26.006083>,  <31.956699, 34.302555, 26.009693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172745, 34.198097, 26.006083>,  <32.532822, 34.024002, 26.000065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172745, 34.198097, 26.006083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242607, 0.472485, 0.847290,
		0.361667, 0.766370, -0.530918,
		-0.900188, 0.435241, 0.015045,
		31.902689, 34.328671, 26.010595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728321, 34.654095, 26.091133>,  <32.532822, 34.024002, 26.000065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728321, 34.654095, 26.091133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344761, 34.633503, 26.202745>,  <32.114624, 34.621147, 26.269712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344761, 34.633503, 26.202745>,  <32.728321, 34.654095, 26.091133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344761, 34.633503, 26.202745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212740, 0.520272, 0.827078,
		-0.187753, 0.852447, -0.487937,
		-0.958901, -0.051483, 0.279033,
		32.057091, 34.618057, 26.286455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.598488, 35.347321, 26.179937>,  <32.728321, 34.654095, 26.091133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.598488, 35.347321, 26.179937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324257, 35.141586, 26.386023>,  <32.159718, 35.018147, 26.509674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324257, 35.141586, 26.386023>,  <32.598488, 35.347321, 26.179937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324257, 35.141586, 26.386023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187081, 0.559475, 0.807458,
		-0.703551, 0.649962, -0.287342,
		-0.685577, -0.514332, 0.515215,
		32.118584, 34.987286, 26.540586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295383, 35.843830, 26.766674>,  <32.598488, 35.347321, 26.179937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295383, 35.843830, 26.766674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182388, 35.475552, 26.874388>,  <32.114590, 35.254585, 26.939016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.182388, 35.475552, 26.874388>,  <32.295383, 35.843830, 26.766674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.182388, 35.475552, 26.874388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117304, 0.245456, 0.962284,
		-0.952072, 0.303422, 0.038663,
		-0.282488, -0.920699, 0.269284,
		32.097641, 35.199341, 26.955173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691080, 35.924805, 27.231567>,  <32.295383, 35.843830, 26.766674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691080, 35.924805, 27.231567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884092, 35.581326, 27.300625>,  <31.999899, 35.375240, 27.342060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.884092, 35.581326, 27.300625>,  <31.691080, 35.924805, 27.231567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.884092, 35.581326, 27.300625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007217, 0.200999, 0.979565,
		-0.875849, -0.471425, 0.103185,
		0.482531, -0.858695, 0.172643,
		32.028851, 35.323715, 27.352417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431143, 35.697296, 27.939783>,  <31.691080, 35.924805, 27.231567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431143, 35.697296, 27.939783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766077, 35.484192, 27.890738>,  <31.967037, 35.356331, 27.861309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766077, 35.484192, 27.890738>,  <31.431143, 35.697296, 27.939783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766077, 35.484192, 27.890738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256859, 0.185407, 0.948497,
		-0.482587, -0.825707, 0.292093,
		0.837337, -0.532759, -0.122615,
		32.017277, 35.324364, 27.853952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.387585, 35.282070, 28.394146>,  <31.431143, 35.697296, 27.939783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.387585, 35.282070, 28.394146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777397, 35.266266, 28.305851>,  <32.011284, 35.256783, 28.252874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.777397, 35.266266, 28.305851>,  <31.387585, 35.282070, 28.394146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.777397, 35.266266, 28.305851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223968, 0.220628, 0.949295,
		0.011194, -0.974558, 0.223858,
		0.974533, -0.039510, -0.220739,
		32.069756, 35.254414, 28.239630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653458, 34.681110, 28.723722>,  <31.387585, 35.282070, 28.394146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653458, 34.681110, 28.723722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937994, 34.957600, 28.672806>,  <32.108715, 35.123493, 28.642256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.937994, 34.957600, 28.672806>,  <31.653458, 34.681110, 28.723722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.937994, 34.957600, 28.672806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093518, 0.086413, 0.991860,
		0.696599, -0.717454, -0.003173,
		0.711340, 0.691226, -0.127290,
		32.151398, 35.164967, 28.634619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120777, 34.619583, 29.291874>,  <31.653458, 34.681110, 28.723722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120777, 34.619583, 29.291874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181599, 34.993076, 29.162241>,  <32.218090, 35.217171, 29.084461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181599, 34.993076, 29.162241>,  <32.120777, 34.619583, 29.291874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181599, 34.993076, 29.162241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113832, 0.309167, 0.944170,
		0.981796, -0.180452, -0.059280,
		0.152050, 0.933730, -0.324080,
		32.227215, 35.273197, 29.065018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.448120, 34.869236, 29.791931>,  <32.120777, 34.619583, 29.291874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.448120, 34.869236, 29.791931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412315, 35.212696, 29.590055>,  <32.390835, 35.418770, 29.468929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.412315, 35.212696, 29.590055>,  <32.448120, 34.869236, 29.791931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.412315, 35.212696, 29.590055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117248, 0.512286, 0.850774,
		0.989061, 0.016978, -0.146529,
		-0.089509, 0.858647, -0.504691,
		32.385464, 35.470291, 29.438648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098965, 35.219296, 29.919270>,  <32.448120, 34.869236, 29.791931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098965, 35.219296, 29.919270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814056, 35.475426, 29.804266>,  <32.643112, 35.629105, 29.735264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814056, 35.475426, 29.804266>,  <33.098965, 35.219296, 29.919270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814056, 35.475426, 29.804266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200491, 0.578144, 0.790919,
		0.672666, 0.505703, -0.540172,
		-0.712267, 0.640324, -0.287508,
		32.600376, 35.667522, 29.718014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334202, 35.856949, 30.074862>,  <33.098965, 35.219296, 29.919270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334202, 35.856949, 30.074862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937531, 35.903934, 30.053780>,  <32.699528, 35.932125, 30.041130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.937531, 35.903934, 30.053780>,  <33.334202, 35.856949, 30.074862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937531, 35.903934, 30.053780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018412, 0.534540, 0.844943,
		0.127426, 0.836940, -0.532254,
		-0.991677, 0.117468, -0.052705,
		32.640026, 35.939175, 30.037968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304306, 36.549507, 30.073576>,  <33.334202, 35.856949, 30.074862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304306, 36.549507, 30.073576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945293, 36.411167, 30.182993>,  <32.729885, 36.328163, 30.248644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.945293, 36.411167, 30.182993>,  <33.304306, 36.549507, 30.073576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945293, 36.411167, 30.182993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049027, 0.538229, 0.841371,
		-0.438217, 0.768568, -0.466122,
		-0.897531, -0.345850, 0.273542,
		32.676033, 36.307411, 30.265055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979446, 37.149090, 30.351675>,  <33.304306, 36.549507, 30.073576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979446, 37.149090, 30.351675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813080, 36.817715, 30.501715>,  <32.713257, 36.618889, 30.591740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813080, 36.817715, 30.501715>,  <32.979446, 37.149090, 30.351675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813080, 36.817715, 30.501715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109447, 0.363871, 0.924997,
		-0.902791, 0.425779, -0.060671,
		-0.415921, -0.828438, 0.375100,
		32.688305, 36.569183, 30.614244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468510, 37.397064, 30.859461>,  <32.979446, 37.149090, 30.351675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468510, 37.397064, 30.859461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501381, 37.010441, 30.956636>,  <32.521103, 36.778469, 31.014942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501381, 37.010441, 30.956636>,  <32.468510, 37.397064, 30.859461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501381, 37.010441, 30.956636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052676, 0.247637, 0.967420,
		-0.995225, -0.066700, 0.071264,
		0.082175, -0.966554, 0.242941,
		32.526031, 36.720474, 31.029518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992876, 37.240028, 31.367893>,  <32.468510, 37.397064, 30.859461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992876, 37.240028, 31.367893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280327, 36.963203, 31.395092>,  <32.452797, 36.797108, 31.411411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.280327, 36.963203, 31.395092>,  <31.992876, 37.240028, 31.367893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280327, 36.963203, 31.395092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004442, 0.093213, 0.995636,
		-0.695384, -0.715791, 0.063911,
		0.718625, -0.692065, 0.067999,
		32.495914, 36.755585, 31.415491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865534, 36.815239, 31.958334>,  <31.992876, 37.240028, 31.367893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865534, 36.815239, 31.958334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251869, 36.728233, 31.901983>,  <32.483669, 36.676029, 31.868174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251869, 36.728233, 31.901983>,  <31.865534, 36.815239, 31.958334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251869, 36.728233, 31.901983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111703, -0.141089, 0.983675,
		-0.233836, -0.965807, -0.111973,
		0.965838, -0.217511, -0.140876,
		32.541622, 36.662979, 31.859720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937784, 36.288338, 32.524170>,  <31.865534, 36.815239, 31.958334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937784, 36.288338, 32.524170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302624, 36.392967, 32.397896>,  <32.521526, 36.455746, 32.322132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.302624, 36.392967, 32.397896>,  <31.937784, 36.288338, 32.524170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302624, 36.392967, 32.397896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389108, -0.309803, 0.867535,
		0.129121, -0.914113, -0.384350,
		0.912098, 0.261571, -0.315687,
		32.576252, 36.471439, 32.303188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.329666, 35.741234, 32.598873>,  <31.937784, 36.288338, 32.524170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.329666, 35.741234, 32.598873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580593, 36.052387, 32.613682>,  <32.731148, 36.239079, 32.622566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.580593, 36.052387, 32.613682>,  <32.329666, 35.741234, 32.598873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580593, 36.052387, 32.613682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344691, -0.319968, 0.882501,
		0.698329, -0.540846, -0.468851,
		0.627315, 0.777885, 0.037018,
		32.768787, 36.285751, 32.624786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053974, 35.595623, 32.663399>,  <32.329666, 35.741234, 32.598873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053974, 35.595623, 32.663399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028294, 35.962875, 32.819817>,  <33.012886, 36.183228, 32.913666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028294, 35.962875, 32.819817>,  <33.053974, 35.595623, 32.663399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028294, 35.962875, 32.819817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328373, -0.350591, 0.877073,
		0.942364, 0.184716, -0.278982,
		-0.064200, 0.918132, 0.391040,
		33.009033, 36.238316, 32.937130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744953, 35.690418, 32.955971>,  <33.053974, 35.595623, 32.663399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744953, 35.690418, 32.955971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498878, 35.953007, 33.130600>,  <33.351234, 36.110561, 33.235378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498878, 35.953007, 33.130600>,  <33.744953, 35.690418, 32.955971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498878, 35.953007, 33.130600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518336, -0.080454, 0.851384,
		0.594036, 0.750046, -0.290780,
		-0.615183, 0.656474, 0.436568,
		33.314323, 36.149948, 33.261570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130188, 36.218452, 33.226807>,  <33.744953, 35.690418, 32.955971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130188, 36.218452, 33.226807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793514, 36.242813, 33.441414>,  <33.591511, 36.257431, 33.570179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793514, 36.242813, 33.441414>,  <34.130188, 36.218452, 33.226807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793514, 36.242813, 33.441414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533480, 0.247340, 0.808840,
		-0.083440, 0.967013, -0.240675,
		-0.841687, 0.060906, 0.536520,
		33.541008, 36.261086, 33.602371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836449, 36.240250, 33.576046>,  <34.130188, 36.218452, 33.226807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836449, 36.240250, 33.576046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214283, 36.315975, 33.468781>,  <35.440983, 36.361412, 33.404423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214283, 36.315975, 33.468781>,  <34.836449, 36.240250, 33.576046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214283, 36.315975, 33.468781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180818, -0.381733, -0.906413,
		-0.273967, 0.904676, -0.326349,
		0.944588, 0.189318, -0.268164,
		35.497658, 36.372772, 33.388332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875599, 36.650623, 32.933674>,  <34.836449, 36.240250, 33.576046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875599, 36.650623, 32.933674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219593, 36.451866, 32.980171>,  <35.425991, 36.332611, 33.008068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.219593, 36.451866, 32.980171>,  <34.875599, 36.650623, 32.933674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219593, 36.451866, 32.980171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002270, -0.231504, -0.972831,
		0.510307, 0.836361, -0.200219,
		0.859989, -0.496897, 0.116239,
		35.477589, 36.302795, 33.015041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.306885, 36.860302, 32.364246>,  <34.875599, 36.650623, 32.933674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.306885, 36.860302, 32.364246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462139, 36.519974, 32.505924>,  <35.555290, 36.315777, 32.590931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462139, 36.519974, 32.505924>,  <35.306885, 36.860302, 32.364246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462139, 36.519974, 32.505924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041748, -0.367696, -0.929008,
		0.920657, 0.375365, -0.107195,
		0.388133, -0.850823, 0.354193,
		35.578579, 36.264729, 32.612183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914787, 36.718601, 32.028381>,  <35.306885, 36.860302, 32.364246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914787, 36.718601, 32.028381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821743, 36.351944, 32.158405>,  <35.765915, 36.131950, 32.236420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821743, 36.351944, 32.158405>,  <35.914787, 36.718601, 32.028381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821743, 36.351944, 32.158405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163714, -0.366360, -0.915957,
		0.958691, -0.159848, 0.235287,
		-0.232614, -0.916640, 0.325057,
		35.751957, 36.076954, 32.255924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214146, 36.248543, 31.531944>,  <35.914787, 36.718601, 32.028381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214146, 36.248543, 31.531944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962448, 36.013603, 31.735542>,  <35.811432, 35.872639, 31.857702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.962448, 36.013603, 31.735542>,  <36.214146, 36.248543, 31.531944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962448, 36.013603, 31.735542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082219, -0.600923, -0.795067,
		0.772849, -0.542138, 0.329834,
		-0.629241, -0.587348, 0.508996,
		35.773674, 35.837399, 31.888241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478687, 35.552849, 31.639549>,  <36.214146, 36.248543, 31.531944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478687, 35.552849, 31.639549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078873, 35.564671, 31.636541>,  <35.838985, 35.571766, 31.634737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078873, 35.564671, 31.636541>,  <36.478687, 35.552849, 31.639549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078873, 35.564671, 31.636541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005974, -0.431490, -0.902098,
		-0.029908, -0.901634, 0.431466,
		-0.999535, 0.029558, -0.007519,
		35.779011, 35.573540, 31.634285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311749, 34.811569, 31.474882>,  <36.478687, 35.552849, 31.639549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311749, 34.811569, 31.474882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980495, 35.030869, 31.428205>,  <35.781742, 35.162449, 31.400200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.980495, 35.030869, 31.428205>,  <36.311749, 34.811569, 31.474882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980495, 35.030869, 31.428205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133342, -0.394891, -0.909000,
		-0.544438, -0.737215, 0.400127,
		-0.828135, 0.548248, -0.116692,
		35.732056, 35.195343, 31.393198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806747, 34.348846, 31.238657>,  <36.311749, 34.811569, 31.474882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806747, 34.348846, 31.238657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670609, 34.707546, 31.125521>,  <35.588924, 34.922768, 31.057638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670609, 34.707546, 31.125521>,  <35.806747, 34.348846, 31.238657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670609, 34.707546, 31.125521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102070, -0.334257, -0.936939,
		-0.934743, -0.290017, 0.205295,
		-0.340349, 0.896751, -0.282842,
		35.568504, 34.976570, 31.040668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287464, 34.205227, 30.732586>,  <35.806747, 34.348846, 31.238657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287464, 34.205227, 30.732586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336838, 34.594986, 30.657421>,  <35.366463, 34.828842, 30.612322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.336838, 34.594986, 30.657421>,  <35.287464, 34.205227, 30.732586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336838, 34.594986, 30.657421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239650, -0.154483, -0.958490,
		-0.962980, 0.163347, 0.214445,
		0.123439, 0.974398, -0.187910,
		35.373871, 34.887306, 30.601048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617165, 34.478016, 30.456800>,  <35.287464, 34.205227, 30.732586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617165, 34.478016, 30.456800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917351, 34.713638, 30.336926>,  <35.097462, 34.855011, 30.264999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.917351, 34.713638, 30.336926>,  <34.617165, 34.478016, 30.456800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917351, 34.713638, 30.336926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291643, -0.111754, -0.949977,
		-0.593079, 0.800329, 0.087926,
		0.750468, 0.589054, -0.299689,
		35.142490, 34.890354, 30.247019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275322, 34.825321, 29.875401>,  <34.617165, 34.478016, 30.456800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275322, 34.825321, 29.875401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673874, 34.847488, 29.849628>,  <34.913006, 34.860790, 29.834166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673874, 34.847488, 29.849628>,  <34.275322, 34.825321, 29.875401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673874, 34.847488, 29.849628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067075, 0.047288, -0.996627,
		-0.052185, 0.997343, 0.050834,
		0.996382, 0.055419, -0.064429,
		34.972790, 34.864113, 29.830299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348644, 35.225193, 29.334574>,  <34.275322, 34.825321, 29.875401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348644, 35.225193, 29.334574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712460, 35.066818, 29.385120>,  <34.930748, 34.971794, 29.415449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.712460, 35.066818, 29.385120>,  <34.348644, 35.225193, 29.334574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712460, 35.066818, 29.385120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107163, -0.070355, -0.991749,
		0.401560, 0.915579, -0.021561,
		0.909542, -0.395936, 0.126367,
		34.985321, 34.948036, 29.423031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843616, 35.547657, 28.814919>,  <34.348644, 35.225193, 29.334574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843616, 35.547657, 28.814919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010098, 35.198166, 28.915625>,  <35.109985, 34.988472, 28.976048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010098, 35.198166, 28.915625>,  <34.843616, 35.547657, 28.814919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010098, 35.198166, 28.915625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114550, -0.325062, -0.938729,
		0.902030, 0.361857, -0.235375,
		0.416198, -0.873724, 0.251765,
		35.134956, 34.936050, 28.991154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475906, 35.453026, 28.432898>,  <34.843616, 35.547657, 28.814919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475906, 35.453026, 28.432898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372925, 35.082394, 28.542564>,  <35.311134, 34.860016, 28.608364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.372925, 35.082394, 28.542564>,  <35.475906, 35.453026, 28.432898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372925, 35.082394, 28.542564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020815, -0.278348, -0.960255,
		0.966066, -0.252928, 0.052375,
		-0.257454, -0.926580, 0.274167,
		35.295689, 34.804420, 28.624815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785343, 35.108566, 27.918938>,  <35.475906, 35.453026, 28.432898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785343, 35.108566, 27.918938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513439, 34.857700, 28.071035>,  <35.350296, 34.707180, 28.162294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513439, 34.857700, 28.071035>,  <35.785343, 35.108566, 27.918938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513439, 34.857700, 28.071035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137839, -0.399966, -0.906106,
		0.720362, -0.668351, 0.185434,
		-0.679764, -0.627164, 0.380245,
		35.309509, 34.669552, 28.185108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881817, 34.417690, 27.427729>,  <35.785343, 35.108566, 27.918938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881817, 34.417690, 27.427729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530190, 34.416691, 27.618404>,  <35.319214, 34.416092, 27.732811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530190, 34.416691, 27.618404>,  <35.881817, 34.417690, 27.427729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530190, 34.416691, 27.618404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449940, -0.325953, -0.831450,
		0.157460, -0.945383, 0.285408,
		-0.879068, -0.002504, 0.476690,
		35.266468, 34.415939, 27.761412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563221, 33.780994, 27.189072>,  <35.881817, 34.417690, 27.427729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563221, 33.780994, 27.189072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276993, 34.031147, 27.313557>,  <35.105255, 34.181240, 27.388247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276993, 34.031147, 27.313557>,  <35.563221, 33.780994, 27.189072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276993, 34.031147, 27.313557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474577, -0.108324, -0.873523,
		-0.512577, -0.772760, 0.374307,
		-0.715570, 0.625386, 0.311210,
		35.062321, 34.218761, 27.406919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975483, 33.436123, 27.006752>,  <35.563221, 33.780994, 27.189072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975483, 33.436123, 27.006752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880474, 33.821117, 27.059221>,  <34.823467, 34.052113, 27.090702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880474, 33.821117, 27.059221>,  <34.975483, 33.436123, 27.006752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880474, 33.821117, 27.059221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543927, -0.019903, -0.838896,
		-0.804814, -0.270607, 0.528249,
		-0.237525, 0.962484, 0.131172,
		34.809216, 34.109863, 27.098574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350746, 33.381855, 27.004463>,  <34.975483, 33.436123, 27.006752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350746, 33.381855, 27.004463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403683, 33.772346, 26.935801>,  <34.435444, 34.006641, 26.894602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.403683, 33.772346, 26.935801>,  <34.350746, 33.381855, 27.004463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403683, 33.772346, 26.935801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359836, -0.114048, -0.926019,
		-0.923582, 0.184320, 0.336188,
		0.132342, 0.976227, -0.171657,
		34.443386, 34.065216, 26.884304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799805, 33.541344, 26.513092>,  <34.350746, 33.381855, 27.004463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799805, 33.541344, 26.513092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067284, 33.838421, 26.498915>,  <34.227772, 34.016666, 26.490408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.067284, 33.838421, 26.498915>,  <33.799805, 33.541344, 26.513092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067284, 33.838421, 26.498915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266559, 0.194958, -0.943895,
		-0.694111, 0.640627, 0.328339,
		0.668697, 0.742690, -0.035442,
		34.267891, 34.061226, 26.488281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495922, 33.924225, 26.078671>,  <33.799805, 33.541344, 26.513092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495922, 33.924225, 26.078671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881565, 34.019821, 26.032419>,  <34.112953, 34.077179, 26.004669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881565, 34.019821, 26.032419>,  <33.495922, 33.924225, 26.078671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881565, 34.019821, 26.032419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108130, -0.044298, -0.993149,
		-0.242478, 0.970010, -0.016866,
		0.964112, 0.238993, -0.115628,
		34.170799, 34.091518, 25.997730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635235, 34.552277, 25.602152>,  <33.495922, 33.924225, 26.078671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635235, 34.552277, 25.602152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941399, 34.295017, 25.611263>,  <34.125095, 34.140663, 25.616730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941399, 34.295017, 25.611263>,  <33.635235, 34.552277, 25.602152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941399, 34.295017, 25.611263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067322, -0.115223, -0.991056,
		0.640017, 0.757026, -0.131490,
		0.765406, -0.643144, 0.022780,
		34.171021, 34.102074, 25.618097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065689, 34.736031, 25.010101>,  <33.635235, 34.552277, 25.602152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065689, 34.736031, 25.010101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179218, 34.358315, 25.076748>,  <34.247337, 34.131687, 25.116735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.179218, 34.358315, 25.076748>,  <34.065689, 34.736031, 25.010101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179218, 34.358315, 25.076748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204379, -0.229346, -0.951646,
		0.936841, 0.236051, -0.258087,
		0.283828, -0.944288, 0.166617,
		34.264366, 34.075027, 25.126734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351231, 34.520550, 24.358662>,  <34.065689, 34.736031, 25.010101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351231, 34.520550, 24.358662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305595, 34.160000, 24.525755>,  <34.278214, 33.943668, 24.626011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305595, 34.160000, 24.525755>,  <34.351231, 34.520550, 24.358662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305595, 34.160000, 24.525755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346413, -0.357995, -0.867085,
		0.931118, -0.243633, -0.271406,
		-0.114089, -0.901378, 0.417734,
		34.271370, 33.889587, 24.651075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715076, 34.092243, 23.841805>,  <34.351231, 34.520550, 24.358662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715076, 34.092243, 23.841805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449013, 33.891197, 24.062689>,  <34.289375, 33.770569, 24.195219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.449013, 33.891197, 24.062689>,  <34.715076, 34.092243, 23.841805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449013, 33.891197, 24.062689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273408, -0.524237, -0.806488,
		0.694845, -0.687423, 0.211282,
		-0.665160, -0.502618, 0.552210,
		34.249466, 33.740414, 24.228352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741470, 33.383492, 23.689367>,  <34.715076, 34.092243, 23.841805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741470, 33.383492, 23.689367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375820, 33.369656, 23.850950>,  <34.156429, 33.361355, 23.947901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375820, 33.369656, 23.850950>,  <34.741470, 33.383492, 23.689367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375820, 33.369656, 23.850950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312503, -0.574671, -0.756370,
		0.258305, -0.817653, 0.514511,
		-0.914123, -0.034588, 0.403960,
		34.101582, 33.359280, 23.972137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592369, 32.668907, 23.788832>,  <34.741470, 33.383492, 23.689367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592369, 32.668907, 23.788832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261284, 32.889885, 23.749426>,  <34.062634, 33.022472, 23.725782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261284, 32.889885, 23.749426>,  <34.592369, 32.668907, 23.788832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261284, 32.889885, 23.749426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355723, -0.652325, -0.669278,
		-0.433999, -0.518925, 0.736452,
		-0.827711, 0.552439, -0.098515,
		34.012970, 33.055618, 23.719872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007469, 32.178867, 23.908012>,  <34.592369, 32.668907, 23.788832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007469, 32.178867, 23.908012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833931, 32.488354, 23.723345>,  <33.729809, 32.674046, 23.612543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833931, 32.488354, 23.723345>,  <34.007469, 32.178867, 23.908012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833931, 32.488354, 23.723345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494546, -0.632810, -0.595798,
		-0.753131, -0.030165, 0.657179,
		-0.433842, 0.773719, -0.461671,
		33.703777, 32.720470, 23.584845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228699, 32.164761, 23.932875>,  <34.007469, 32.178867, 23.908012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228699, 32.164761, 23.932875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307373, 32.372547, 23.600256>,  <33.354576, 32.497219, 23.400684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307373, 32.372547, 23.600256>,  <33.228699, 32.164761, 23.932875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307373, 32.372547, 23.600256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551527, -0.642591, -0.531878,
		-0.810638, 0.563232, 0.160112,
		0.196684, 0.519467, -0.831547,
		33.366379, 32.528389, 23.350792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668839, 31.999207, 23.406330>,  <33.228699, 32.164761, 23.932875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668839, 31.999207, 23.406330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971897, 32.143860, 23.189001>,  <33.153732, 32.230652, 23.058603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971897, 32.143860, 23.189001>,  <32.668839, 31.999207, 23.406330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971897, 32.143860, 23.189001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364100, -0.456697, -0.811701,
		-0.541671, 0.812803, -0.214343,
		0.757643, 0.361633, -0.543322,
		33.199188, 32.252350, 23.026005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321045, 32.181461, 22.772985>,  <32.668839, 31.999207, 23.406330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321045, 32.181461, 22.772985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716064, 32.163673, 22.712633>,  <32.953075, 32.153000, 22.676422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.716064, 32.163673, 22.712633>,  <32.321045, 32.181461, 22.772985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716064, 32.163673, 22.712633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151344, -0.530049, -0.834352,
		-0.042868, 0.846800, -0.530181,
		0.987551, -0.044472, -0.150880,
		33.012329, 32.150333, 22.667370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324921, 32.376083, 22.108803>,  <32.321045, 32.181461, 22.772985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324921, 32.376083, 22.108803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663502, 32.182602, 22.197836>,  <32.866650, 32.066513, 22.251255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.663502, 32.182602, 22.197836>,  <32.324921, 32.376083, 22.108803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663502, 32.182602, 22.197836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186954, -0.661403, -0.726357,
		0.498558, 0.573217, -0.650278,
		0.846456, -0.483703, 0.222582,
		32.917439, 32.037491, 22.264610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587467, 32.117184, 21.411289>,  <32.324921, 32.376083, 22.108803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587467, 32.117184, 21.411289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786633, 31.900995, 21.682575>,  <32.906132, 31.771282, 21.845346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786633, 31.900995, 21.682575>,  <32.587467, 32.117184, 21.411289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786633, 31.900995, 21.682575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043146, -0.765642, -0.641818,
		0.866155, 0.348830, -0.357902,
		0.497910, -0.540471, 0.678216,
		32.936005, 31.738853, 21.886040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238247, 31.832455, 21.110682>,  <32.587467, 32.117184, 21.411289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238247, 31.832455, 21.110682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116684, 31.591089, 21.405581>,  <33.043747, 31.446270, 21.582520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116684, 31.591089, 21.405581>,  <33.238247, 31.832455, 21.110682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116684, 31.591089, 21.405581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048960, -0.762933, -0.644621,
		0.951442, -0.232002, 0.202320,
		-0.303910, -0.603414, 0.737245,
		33.025513, 31.410065, 21.626755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460964, 31.159950, 20.972462>,  <33.238247, 31.832455, 21.110682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460964, 31.159950, 20.972462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175453, 31.055101, 21.232248>,  <33.004147, 30.992191, 21.388121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175453, 31.055101, 21.232248>,  <33.460964, 31.159950, 20.972462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175453, 31.055101, 21.232248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002639, -0.928321, -0.371769,
		0.700365, -0.263648, 0.663309,
		-0.713780, -0.262125, 0.649469,
		32.961319, 30.976463, 21.427090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583637, 30.444046, 21.113094>,  <33.460964, 31.159950, 20.972462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583637, 30.444046, 21.113094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210735, 30.473537, 21.254774>,  <32.986992, 30.491232, 21.339783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.210735, 30.473537, 21.254774>,  <33.583637, 30.444046, 21.113094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.210735, 30.473537, 21.254774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158516, -0.963281, -0.216707,
		0.325217, -0.258173, 0.909715,
		-0.932259, 0.073727, 0.354200,
		32.931057, 30.495655, 21.361034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550346, 29.865589, 21.476461>,  <33.583637, 30.444046, 21.113094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550346, 29.865589, 21.476461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167809, 29.975924, 21.437834>,  <32.938286, 30.042124, 21.414658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.167809, 29.975924, 21.437834>,  <33.550346, 29.865589, 21.476461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167809, 29.975924, 21.437834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228836, -0.912296, -0.339633,
		-0.181782, -0.302707, 0.935588,
		-0.956342, 0.275835, -0.096568,
		32.880905, 30.058674, 21.408863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202137, 29.251362, 21.667883>,  <33.550346, 29.865589, 21.476461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202137, 29.251362, 21.667883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911457, 29.457235, 21.485893>,  <32.737049, 29.580759, 21.376699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911457, 29.457235, 21.485893>,  <33.202137, 29.251362, 21.667883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911457, 29.457235, 21.485893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263873, -0.820643, -0.506869,
		-0.634249, -0.248288, 0.732176,
		-0.726704, 0.514683, -0.454975,
		32.693447, 29.611641, 21.349400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.040234, 28.474594, 21.591639>,  <33.202137, 29.251362, 21.667883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.040234, 28.474594, 21.591639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256840, 28.190149, 21.771009>,  <33.386803, 28.019482, 21.878632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.256840, 28.190149, 21.771009>,  <33.040234, 28.474594, 21.591639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256840, 28.190149, 21.771009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175734, 0.617363, 0.766799,
		-0.822121, -0.336426, 0.459275,
		0.541511, -0.711112, 0.448426,
		33.419292, 27.976816, 21.905537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896523, 28.319693, 22.337671>,  <33.040234, 28.474594, 21.591639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896523, 28.319693, 22.337671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266975, 28.169794, 22.320473>,  <33.489246, 28.079855, 22.310154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266975, 28.169794, 22.320473>,  <32.896523, 28.319693, 22.337671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266975, 28.169794, 22.320473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222080, 0.449571, 0.865197,
		-0.304901, -0.810833, 0.499585,
		0.926129, -0.374748, -0.042995,
		33.544815, 28.057369, 22.307573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966358, 28.067984, 22.967417>,  <32.896523, 28.319693, 22.337671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966358, 28.067984, 22.967417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343060, 28.096546, 22.835960>,  <33.569080, 28.113684, 22.757086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.343060, 28.096546, 22.835960>,  <32.966358, 28.067984, 22.967417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343060, 28.096546, 22.835960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287158, 0.337914, 0.896300,
		0.175054, -0.938464, 0.297726,
		0.941752, 0.071406, -0.328641,
		33.625584, 28.117968, 22.737368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.412155, 27.777269, 23.516132>,  <32.966358, 28.067984, 22.967417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.412155, 27.777269, 23.516132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644604, 28.015562, 23.294355>,  <33.784073, 28.158537, 23.161289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644604, 28.015562, 23.294355>,  <33.412155, 27.777269, 23.516132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644604, 28.015562, 23.294355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285622, 0.488648, 0.824405,
		0.762049, -0.637439, 0.113810,
		0.581121, 0.595730, -0.554440,
		33.818939, 28.194281, 23.128023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.954227, 27.898607, 24.024448>,  <33.412155, 27.777269, 23.516132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.954227, 27.898607, 24.024448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994427, 28.189295, 23.752630>,  <34.018547, 28.363707, 23.589540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.994427, 28.189295, 23.752630>,  <33.954227, 27.898607, 24.024448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994427, 28.189295, 23.752630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302501, 0.628348, 0.716709,
		0.947836, -0.277594, -0.156683,
		0.100502, 0.726719, -0.679543,
		34.024578, 28.407310, 23.548767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621941, 28.133207, 24.218056>,  <33.954227, 27.898607, 24.024448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621941, 28.133207, 24.218056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438183, 28.424562, 24.014721>,  <34.327927, 28.599377, 23.892721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.438183, 28.424562, 24.014721>,  <34.621941, 28.133207, 24.218056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.438183, 28.424562, 24.014721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344020, 0.673542, 0.654211,
		0.818905, 0.125665, -0.560003,
		-0.459397, 0.728389, -0.508335,
		34.300365, 28.643080, 23.862221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144287, 28.595970, 24.080254>,  <34.621941, 28.133207, 24.218056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144287, 28.595970, 24.080254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801491, 28.800272, 24.052834>,  <34.595814, 28.922853, 24.036381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.801491, 28.800272, 24.052834>,  <35.144287, 28.595970, 24.080254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801491, 28.800272, 24.052834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375450, 0.709934, 0.595845,
		0.352998, 0.484894, -0.800168,
		-0.856988, 0.510756, -0.068552,
		34.544395, 28.953499, 24.032269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.354416, 29.347198, 24.100615>,  <35.144287, 28.595970, 24.080254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.354416, 29.347198, 24.100615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962971, 29.328199, 24.180681>,  <34.728104, 29.316799, 24.228722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962971, 29.328199, 24.180681>,  <35.354416, 29.347198, 24.100615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962971, 29.328199, 24.180681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110780, 0.698189, 0.707290,
		-0.173349, 0.714335, -0.677993,
		-0.978610, -0.047500, 0.200165,
		34.669388, 29.313950, 24.240730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146381, 30.004751, 24.139677>,  <35.354416, 29.347198, 24.100615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146381, 30.004751, 24.139677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858349, 29.814360, 24.341637>,  <34.685528, 29.700125, 24.462812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858349, 29.814360, 24.341637>,  <35.146381, 30.004751, 24.139677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858349, 29.814360, 24.341637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019937, 0.713148, 0.700730,
		-0.693602, 0.514650, -0.504036,
		-0.720083, -0.475978, 0.504901,
		34.642323, 29.671566, 24.493107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767284, 30.522947, 24.401707>,  <35.146381, 30.004751, 24.139677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767284, 30.522947, 24.401707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677547, 30.202911, 24.624247>,  <34.623707, 30.010889, 24.757771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677547, 30.202911, 24.624247>,  <34.767284, 30.522947, 24.401707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677547, 30.202911, 24.624247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326771, 0.476089, 0.816432,
		-0.918092, 0.364956, 0.154642,
		-0.224338, -0.800092, 0.556350,
		34.610245, 29.962883, 24.791151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411789, 30.845684, 24.992958>,  <34.767284, 30.522947, 24.401707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411789, 30.845684, 24.992958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524887, 30.475540, 25.093967>,  <34.592747, 30.253454, 25.154573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524887, 30.475540, 25.093967>,  <34.411789, 30.845684, 24.992958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524887, 30.475540, 25.093967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370287, 0.348158, 0.861205,
		-0.884840, -0.149996, 0.441089,
		0.282746, -0.925358, 0.252523,
		34.609711, 30.197933, 25.169724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.167656, 30.690901, 25.620928>,  <34.411789, 30.845684, 24.992958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.167656, 30.690901, 25.620928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479759, 30.445114, 25.574230>,  <34.667023, 30.297642, 25.546211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479759, 30.445114, 25.574230>,  <34.167656, 30.690901, 25.620928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479759, 30.445114, 25.574230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375664, 0.311169, 0.872955,
		-0.500074, -0.724987, 0.473624,
		0.780258, -0.614465, -0.116744,
		34.713837, 30.260775, 25.539207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208572, 30.550390, 26.298788>,  <34.167656, 30.690901, 25.620928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208572, 30.550390, 26.298788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550873, 30.440586, 26.123360>,  <34.756252, 30.374704, 26.018103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550873, 30.440586, 26.123360>,  <34.208572, 30.550390, 26.298788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550873, 30.440586, 26.123360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505213, 0.260481, 0.822745,
		-0.111612, -0.925632, 0.361591,
		0.855747, -0.274509, -0.438569,
		34.807598, 30.358232, 25.991789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516834, 30.053988, 26.699812>,  <34.208572, 30.550390, 26.298788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516834, 30.053988, 26.699812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798538, 30.261333, 26.505775>,  <34.967560, 30.385740, 26.389353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798538, 30.261333, 26.505775>,  <34.516834, 30.053988, 26.699812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798538, 30.261333, 26.505775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334517, 0.360383, 0.870760,
		0.626190, -0.775514, 0.080401,
		0.704262, 0.518365, -0.485091,
		35.009815, 30.416843, 26.360249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087006, 29.989012, 27.175917>,  <34.516834, 30.053988, 26.699812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087006, 29.989012, 27.175917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214161, 30.276823, 26.928942>,  <35.290455, 30.449509, 26.780758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214161, 30.276823, 26.928942>,  <35.087006, 29.989012, 27.175917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214161, 30.276823, 26.928942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442513, 0.463343, 0.767786,
		0.838527, -0.517296, -0.171108,
		0.317891, 0.719527, -0.617436,
		35.309528, 30.492682, 26.743711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763855, 30.063385, 27.305464>,  <35.087006, 29.989012, 27.175917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763855, 30.063385, 27.305464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649303, 30.404957, 27.131662>,  <35.580570, 30.609900, 27.027382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649303, 30.404957, 27.131662>,  <35.763855, 30.063385, 27.305464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649303, 30.404957, 27.131662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400198, 0.518653, 0.755540,
		0.870533, 0.042486, -0.490273,
		-0.286382, 0.853928, -0.434502,
		35.563389, 30.661135, 27.001312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406349, 30.418852, 27.120617>,  <35.763855, 30.063385, 27.305464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406349, 30.418852, 27.120617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104847, 30.680117, 27.149538>,  <35.923946, 30.836876, 27.166891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104847, 30.680117, 27.149538>,  <36.406349, 30.418852, 27.120617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104847, 30.680117, 27.149538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454316, 0.438439, 0.775479,
		0.474814, 0.617372, -0.627219,
		-0.753756, 0.653164, 0.072305,
		35.878719, 30.876066, 27.171230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690220, 31.090334, 27.083937>,  <36.406349, 30.418852, 27.120617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690220, 31.090334, 27.083937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330734, 31.185385, 27.231367>,  <36.115044, 31.242416, 27.319826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330734, 31.185385, 27.231367>,  <36.690220, 31.090334, 27.083937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330734, 31.185385, 27.231367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436747, 0.560906, 0.703304,
		-0.039613, 0.793043, -0.607877,
		-0.898712, 0.237628, 0.368578,
		36.061119, 31.256674, 27.341940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662441, 31.809195, 27.174812>,  <36.690220, 31.090334, 27.083937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662441, 31.809195, 27.174812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381821, 31.687019, 27.432350>,  <36.213448, 31.613714, 27.586874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.381821, 31.687019, 27.432350>,  <36.662441, 31.809195, 27.174812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381821, 31.687019, 27.432350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363702, 0.623495, 0.692080,
		-0.612823, 0.719696, -0.326323,
		-0.701548, -0.305438, 0.643847,
		36.171356, 31.595388, 27.625504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451920, 32.417515, 27.536839>,  <36.662441, 31.809195, 27.174812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451920, 32.417515, 27.536839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294277, 32.121086, 27.754274>,  <36.199692, 31.943228, 27.884735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294277, 32.121086, 27.754274>,  <36.451920, 32.417515, 27.536839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294277, 32.121086, 27.754274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046030, 0.574801, 0.816998,
		-0.917912, 0.347005, -0.192421,
		-0.394106, -0.741075, 0.543589,
		36.176044, 31.898764, 27.917351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098190, 32.760151, 27.965628>,  <36.451920, 32.417515, 27.536839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098190, 32.760151, 27.965628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124172, 32.397060, 28.131426>,  <36.139763, 32.179207, 28.230906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124172, 32.397060, 28.131426>,  <36.098190, 32.760151, 27.965628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124172, 32.397060, 28.131426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180262, 0.419214, 0.889812,
		-0.981472, 0.016921, 0.190859,
		0.064954, -0.907730, 0.414497,
		36.143658, 32.124741, 28.255775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590137, 32.738209, 28.441931>,  <36.098190, 32.760151, 27.965628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590137, 32.738209, 28.441931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850246, 32.459255, 28.562468>,  <36.006310, 32.291882, 28.634790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850246, 32.459255, 28.562468>,  <35.590137, 32.738209, 28.441931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850246, 32.459255, 28.562468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010151, 0.404599, 0.914438,
		-0.759637, -0.591571, 0.270177,
		0.650268, -0.697384, 0.301343,
		36.045326, 32.250042, 28.652870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381680, 32.525318, 29.072111>,  <35.590137, 32.738209, 28.441931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381680, 32.525318, 29.072111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762943, 32.405766, 29.053535>,  <35.991703, 32.334034, 29.042391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762943, 32.405766, 29.053535>,  <35.381680, 32.525318, 29.072111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762943, 32.405766, 29.053535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145444, 0.318284, 0.936772,
		-0.265208, -0.899646, 0.346846,
		0.953158, -0.298886, -0.046437,
		36.048889, 32.316101, 29.039604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624462, 32.104126, 29.729271>,  <35.381680, 32.525318, 29.072111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624462, 32.104126, 29.729271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955673, 32.246136, 29.555689>,  <36.154400, 32.331341, 29.451540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955673, 32.246136, 29.555689>,  <35.624462, 32.104126, 29.729271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955673, 32.246136, 29.555689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307659, 0.359345, 0.881032,
		0.468733, -0.863033, 0.188321,
		0.828031, 0.355030, -0.433957,
		36.204082, 32.352646, 29.425503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157337, 32.001255, 30.127983>,  <35.624462, 32.104126, 29.729271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157337, 32.001255, 30.127983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343353, 32.279510, 29.908955>,  <36.454964, 32.446465, 29.777538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343353, 32.279510, 29.908955>,  <36.157337, 32.001255, 30.127983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343353, 32.279510, 29.908955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348374, 0.424822, 0.835561,
		0.813866, -0.579325, -0.044785,
		0.465036, 0.695636, -0.547570,
		36.482864, 32.488201, 29.744684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850925, 31.963110, 30.309481>,  <36.157337, 32.001255, 30.127983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850925, 31.963110, 30.309481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788742, 32.334110, 30.173492>,  <36.751434, 32.556709, 30.091900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788742, 32.334110, 30.173492>,  <36.850925, 31.963110, 30.309481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788742, 32.334110, 30.173492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433664, 0.373292, 0.820114,
		0.887564, -0.019942, -0.460253,
		-0.155454, 0.927499, -0.339969,
		36.742107, 32.612362, 30.071501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370937, 32.339832, 30.562202>,  <36.850925, 31.963110, 30.309481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370937, 32.339832, 30.562202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107002, 32.622978, 30.461372>,  <36.948639, 32.792866, 30.400875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107002, 32.622978, 30.461372>,  <37.370937, 32.339832, 30.562202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107002, 32.622978, 30.461372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405977, 0.618140, 0.673117,
		0.632290, 0.341814, -0.695250,
		-0.659842, 0.707860, -0.252076,
		36.909050, 32.835335, 30.385750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806374, 32.862137, 30.360806>,  <37.370937, 32.339832, 30.562202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806374, 32.862137, 30.360806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449085, 33.010853, 30.461946>,  <37.234715, 33.100082, 30.522631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.449085, 33.010853, 30.461946>,  <37.806374, 32.862137, 30.360806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449085, 33.010853, 30.461946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449393, 0.720224, 0.528511,
		0.014382, 0.585707, -0.810396,
		-0.893219, 0.371787, 0.252854,
		37.181118, 33.122391, 30.537804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999084, 33.455311, 30.403503>,  <37.806374, 32.862137, 30.360806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999084, 33.455311, 30.403503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638454, 33.447815, 30.576389>,  <37.422077, 33.443317, 30.680120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638454, 33.447815, 30.576389>,  <37.999084, 33.455311, 30.403503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638454, 33.447815, 30.576389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351356, 0.551176, 0.756805,
		-0.252410, 0.834179, -0.490342,
		-0.901575, -0.018741, 0.432216,
		37.367981, 33.442192, 30.706055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852322, 34.183594, 30.578974>,  <37.999084, 33.455311, 30.403503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852322, 34.183594, 30.578974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638844, 33.934338, 30.807661>,  <37.510757, 33.784782, 30.944874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638844, 33.934338, 30.807661>,  <37.852322, 34.183594, 30.578974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638844, 33.934338, 30.807661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374321, 0.432147, 0.820446,
		-0.758322, 0.651875, 0.002620,
		-0.533697, -0.623143, 0.571717,
		37.478733, 33.747395, 30.979176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777866, 34.553638, 31.146549>,  <37.852322, 34.183594, 30.578974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777866, 34.553638, 31.146549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713684, 34.176960, 31.264843>,  <37.675175, 33.950954, 31.335819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.713684, 34.176960, 31.264843>,  <37.777866, 34.553638, 31.146549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713684, 34.176960, 31.264843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347156, 0.226632, 0.910012,
		-0.923978, 0.248686, 0.290550,
		-0.160459, -0.941697, 0.295735,
		37.665546, 33.894451, 31.353563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477619, 34.523376, 31.877443>,  <37.777866, 34.553638, 31.146549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477619, 34.523376, 31.877443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616634, 34.149361, 31.849401>,  <37.700043, 33.924950, 31.832577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616634, 34.149361, 31.849401>,  <37.477619, 34.523376, 31.877443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616634, 34.149361, 31.849401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315677, 0.046275, 0.947738,
		-0.882931, -0.351502, 0.311253,
		0.347535, -0.935043, -0.070104,
		37.720894, 33.868847, 31.828371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307396, 34.275631, 32.539639>,  <37.477619, 34.523376, 31.877443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307396, 34.275631, 32.539639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575386, 34.023048, 32.383484>,  <37.736179, 33.871498, 32.289791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575386, 34.023048, 32.383484>,  <37.307396, 34.275631, 32.539639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575386, 34.023048, 32.383484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375917, -0.164895, 0.911864,
		-0.640176, -0.757675, 0.126900,
		0.669971, -0.631457, -0.390385,
		37.776379, 33.833611, 32.266369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253189, 33.808426, 32.992912>,  <37.307396, 34.275631, 32.539639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253189, 33.808426, 32.992912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613235, 33.760784, 32.825291>,  <37.829262, 33.732201, 32.724720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613235, 33.760784, 32.825291>,  <37.253189, 33.808426, 32.992912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613235, 33.760784, 32.825291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394631, -0.184540, 0.900117,
		-0.184540, -0.975581, -0.119105,
		-0.900117, 0.119105, 0.419050,
		37.883270, 33.725052, 32.699577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619709, 33.416454, 33.446957>,  <37.253189, 33.808426, 32.992912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619709, 33.416454, 33.446957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917099, 33.550137, 33.215248>,  <38.095531, 33.630348, 33.076221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917099, 33.550137, 33.215248>,  <37.619709, 33.416454, 33.446957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917099, 33.550137, 33.215248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646610, -0.138110, 0.750214,
		0.170726, -0.932324, -0.318784,
		0.743470, 0.334210, -0.579271,
		38.140141, 33.650398, 33.041466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282928, 32.913189, 33.484402>,  <37.619709, 33.416454, 33.446957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282928, 32.913189, 33.484402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433353, 33.258835, 33.350613>,  <38.523609, 33.466225, 33.270340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.433353, 33.258835, 33.350613>,  <38.282928, 32.913189, 33.484402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433353, 33.258835, 33.350613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877661, -0.216438, 0.427628,
		0.297129, -0.454371, -0.839799,
		0.376066, 0.864119, -0.334474,
		38.546173, 33.518070, 33.250271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909821, 32.749073, 33.089649>,  <38.282928, 32.913189, 33.484402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909821, 32.749073, 33.089649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935295, 33.130138, 33.208557>,  <38.950581, 33.358780, 33.279903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935295, 33.130138, 33.208557>,  <38.909821, 32.749073, 33.089649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935295, 33.130138, 33.208557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875059, -0.196520, 0.442325,
		0.479809, 0.231963, -0.846154,
		0.063683, 0.952666, 0.297273,
		38.954399, 33.415939, 33.297741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625217, 32.855610, 33.033470>,  <38.909821, 32.749073, 33.089649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625217, 32.855610, 33.033470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483337, 33.146111, 33.269009>,  <39.398209, 33.320412, 33.410332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.483337, 33.146111, 33.269009>,  <39.625217, 32.855610, 33.033470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483337, 33.146111, 33.269009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792483, -0.100675, 0.601527,
		0.496144, 0.680013, -0.539836,
		-0.354699, 0.726255, 0.588848,
		39.376926, 33.363987, 33.445663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143215, 33.282703, 33.200459>,  <39.625217, 32.855610, 33.033470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143215, 33.282703, 33.200459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874420, 33.366928, 33.484455>,  <39.713142, 33.417465, 33.654854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.874420, 33.366928, 33.484455>,  <40.143215, 33.282703, 33.200459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.874420, 33.366928, 33.484455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703331, -0.118692, 0.700883,
		0.231853, 0.970347, -0.068338,
		-0.671989, 0.210566, 0.709995,
		39.672825, 33.430099, 33.697453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577610, 33.614235, 33.815887>,  <40.143215, 33.282703, 33.200459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577610, 33.614235, 33.815887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232117, 33.489037, 33.973873>,  <40.024822, 33.413918, 34.068665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.232117, 33.489037, 33.973873>,  <40.577610, 33.614235, 33.815887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232117, 33.489037, 33.973873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442557, -0.096209, 0.891564,
		-0.241058, 0.944869, 0.221618,
		-0.863733, -0.312997, 0.394966,
		39.972996, 33.395138, 34.092361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214256, 33.282150, 33.796913>,  <40.577610, 33.614235, 33.815887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214256, 33.282150, 33.796913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350410, 33.593414, 34.008045>,  <41.432102, 33.780174, 34.134724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350410, 33.593414, 34.008045>,  <41.214256, 33.282150, 33.796913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350410, 33.593414, 34.008045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614414, -0.240870, 0.751317,
		0.711784, -0.580042, 0.396125,
		0.340381, 0.778160, 0.527833,
		41.452526, 33.826862, 34.166393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.466507, 33.068531, 34.433193>,  <41.214256, 33.282150, 33.796913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.466507, 33.068531, 34.433193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347538, 33.449562, 34.458923>,  <41.276157, 33.678181, 34.474361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347538, 33.449562, 34.458923>,  <41.466507, 33.068531, 34.433193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347538, 33.449562, 34.458923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513290, -0.216348, 0.830498,
		0.805029, 0.213995, 0.553295,
		-0.297426, 0.952576, 0.064325,
		41.258308, 33.735336, 34.478222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449524, 33.210659, 35.227615>,  <41.466507, 33.068531, 34.433193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449524, 33.210659, 35.227615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224495, 33.477097, 35.031727>,  <41.089478, 33.636959, 34.914192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224495, 33.477097, 35.031727>,  <41.449524, 33.210659, 35.227615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224495, 33.477097, 35.031727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621760, 0.049546, 0.781640,
		0.544907, 0.744223, 0.386275,
		-0.562576, 0.666092, -0.489725,
		41.055721, 33.676926, 34.884808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364342, 33.775238, 35.599823>,  <41.449524, 33.210659, 35.227615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364342, 33.775238, 35.599823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035847, 33.780529, 35.371651>,  <40.838749, 33.783703, 35.234749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.035847, 33.780529, 35.371651>,  <41.364342, 33.775238, 35.599823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.035847, 33.780529, 35.371651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551099, 0.240652, 0.798984,
		0.147842, 0.970521, -0.190344,
		-0.821238, 0.013225, -0.570432,
		40.789474, 33.784496, 35.200520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837978, 34.059296, 36.111778>,  <41.364342, 33.775238, 35.599823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837978, 34.059296, 36.111778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587074, 33.998314, 35.806282>,  <40.436531, 33.961723, 35.622986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.587074, 33.998314, 35.806282>,  <40.837978, 34.059296, 36.111778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587074, 33.998314, 35.806282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778699, 0.106483, 0.618295,
		-0.012936, 0.982557, -0.185509,
		-0.627264, -0.152454, -0.763739,
		40.398895, 33.952579, 35.577160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373280, 34.683716, 35.934464>,  <40.837978, 34.059296, 36.111778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373280, 34.683716, 35.934464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222118, 34.328087, 35.831123>,  <40.131420, 34.114712, 35.769119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.222118, 34.328087, 35.831123>,  <40.373280, 34.683716, 35.934464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.222118, 34.328087, 35.831123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804722, 0.177432, 0.566516,
		-0.457834, 0.421986, -0.782507,
		-0.377903, -0.889070, -0.258347,
		40.108746, 34.061367, 35.753620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685165, 34.837227, 35.966244>,  <40.373280, 34.683716, 35.934464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685165, 34.837227, 35.966244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654339, 34.440018, 35.930538>,  <39.635845, 34.201691, 35.909115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.654339, 34.440018, 35.930538>,  <39.685165, 34.837227, 35.966244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.654339, 34.440018, 35.930538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812019, 0.010562, 0.583535,
		-0.578520, 0.117454, -0.807167,
		-0.077064, -0.993022, -0.089265,
		39.631218, 34.142113, 35.903759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018059, 34.658127, 35.661362>,  <39.685165, 34.837227, 35.966244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018059, 34.658127, 35.661362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126053, 34.342373, 35.881901>,  <39.190849, 34.152920, 36.014225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.126053, 34.342373, 35.881901>,  <39.018059, 34.658127, 35.661362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126053, 34.342373, 35.881901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807946, 0.125750, 0.575682,
		-0.523766, -0.600884, -0.603828,
		0.269986, -0.789383, 0.551345,
		39.207050, 34.105556, 36.047306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.379948, 34.253769, 35.734619>,  <39.018059, 34.658127, 35.661362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.379948, 34.253769, 35.734619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644802, 34.229481, 36.033386>,  <38.803715, 34.214909, 36.212646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.644802, 34.229481, 36.033386>,  <38.379948, 34.253769, 35.734619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644802, 34.229481, 36.033386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712825, 0.256478, 0.652763,
		-0.231201, -0.964641, 0.126544,
		0.662138, -0.060716, 0.746918,
		38.843445, 34.211266, 36.257462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060799, 33.839436, 36.280472>,  <38.379948, 34.253769, 35.734619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060799, 33.839436, 36.280472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331333, 34.086872, 36.440426>,  <38.493652, 34.235336, 36.536396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.331333, 34.086872, 36.440426>,  <38.060799, 33.839436, 36.280472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331333, 34.086872, 36.440426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642495, 0.229937, 0.730978,
		0.360234, -0.751309, 0.552961,
		0.676337, 0.618598, 0.399881,
		38.534233, 34.272449, 36.560390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341522, 33.612408, 36.993668>,  <38.060799, 33.839436, 36.280472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341522, 33.612408, 36.993668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386353, 34.009819, 37.000996>,  <38.413250, 34.248268, 37.005394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386353, 34.009819, 37.000996>,  <38.341522, 33.612408, 36.993668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386353, 34.009819, 37.000996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602152, 0.053237, 0.796604,
		0.790476, -0.100310, 0.604223,
		0.112075, 0.993531, 0.018320,
		38.419975, 34.307877, 37.006493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550598, 33.723564, 37.655060>,  <38.341522, 33.612408, 36.993668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550598, 33.723564, 37.655060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389717, 34.065517, 37.523964>,  <38.293186, 34.270687, 37.445309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389717, 34.065517, 37.523964>,  <38.550598, 33.723564, 37.655060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389717, 34.065517, 37.523964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458328, 0.121881, 0.880386,
		0.792569, 0.504307, 0.342795,
		-0.402205, 0.854880, -0.327737,
		38.269054, 34.321980, 37.425644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757561, 34.319092, 38.123135>,  <38.550598, 33.723564, 37.655060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757561, 34.319092, 38.123135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409824, 34.400150, 37.942833>,  <38.201183, 34.448784, 37.834652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409824, 34.400150, 37.942833>,  <38.757561, 34.319092, 38.123135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409824, 34.400150, 37.942833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372688, 0.330192, 0.867223,
		0.324573, 0.921905, -0.211527,
		-0.869342, 0.202644, -0.450755,
		38.149021, 34.460945, 37.807606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505905, 34.816429, 38.511547>,  <38.757561, 34.319092, 38.123135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505905, 34.816429, 38.511547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191410, 34.693916, 38.296875>,  <38.002712, 34.620407, 38.168072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.191410, 34.693916, 38.296875>,  <38.505905, 34.816429, 38.511547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191410, 34.693916, 38.296875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603519, 0.194163, 0.773346,
		-0.132663, 0.931927, -0.337508,
		-0.786234, -0.306287, -0.536678,
		37.955540, 34.602032, 38.135872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.026039, 35.338581, 38.592098>,  <38.505905, 34.816429, 38.511547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.026039, 35.338581, 38.592098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823013, 35.018944, 38.463211>,  <37.701199, 34.827160, 38.385880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.823013, 35.018944, 38.463211>,  <38.026039, 35.338581, 38.592098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823013, 35.018944, 38.463211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682812, 0.144963, 0.716069,
		-0.525499, 0.583463, -0.619211,
		-0.507562, -0.799098, -0.322217,
		37.670746, 34.779213, 38.366547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450546, 35.512218, 38.832954>,  <38.026039, 35.338581, 38.592098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450546, 35.512218, 38.832954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382572, 35.127377, 38.747650>,  <37.341789, 34.896473, 38.696468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382572, 35.127377, 38.747650>,  <37.450546, 35.512218, 38.832954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382572, 35.127377, 38.747650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683430, -0.040850, 0.728872,
		-0.709963, 0.269605, -0.650589,
		-0.169931, -0.962104, -0.213258,
		37.331593, 34.838745, 38.683674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763638, 35.477356, 38.635769>,  <37.450546, 35.512218, 38.832954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763638, 35.477356, 38.635769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856728, 35.100094, 38.730679>,  <36.912582, 34.873737, 38.787624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856728, 35.100094, 38.730679>,  <36.763638, 35.477356, 38.635769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856728, 35.100094, 38.730679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919452, -0.133871, 0.369713,
		-0.316933, -0.304201, -0.898341,
		0.232728, -0.943155, 0.237270,
		36.926548, 34.817146, 38.801861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208992, 35.089539, 38.572636>,  <36.763638, 35.477356, 38.635769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208992, 35.089539, 38.572636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409733, 34.832039, 38.803711>,  <36.530178, 34.677540, 38.942356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409733, 34.832039, 38.803711>,  <36.208992, 35.089539, 38.572636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409733, 34.832039, 38.803711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815260, -0.128938, 0.564559,
		-0.288950, -0.754292, -0.589534,
		0.501856, -0.643753, 0.577688,
		36.560291, 34.638912, 38.977016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769817, 34.461246, 38.627899>,  <36.208992, 35.089539, 38.572636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769817, 34.461246, 38.627899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026123, 34.486664, 38.933941>,  <36.179905, 34.501915, 39.117565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026123, 34.486664, 38.933941>,  <35.769817, 34.461246, 38.627899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026123, 34.486664, 38.933941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732022, -0.249874, 0.633804,
		0.231454, -0.966191, -0.113594,
		0.640760, 0.063543, 0.765107,
		36.218349, 34.505726, 39.163471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.916451, 33.753582, 39.087120>,  <35.769817, 34.461246, 38.627899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.916451, 33.753582, 39.087120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927158, 34.110291, 39.267799>,  <35.933582, 34.324314, 39.376205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.927158, 34.110291, 39.267799>,  <35.916451, 33.753582, 39.087120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927158, 34.110291, 39.267799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776045, -0.266282, 0.571707,
		0.630110, -0.365839, 0.684926,
		0.026769, 0.891772, 0.451694,
		35.935188, 34.377823, 39.403309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897198, 33.632957, 39.824974>,  <35.916451, 33.753582, 39.087120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897198, 33.632957, 39.824974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773762, 34.006130, 39.750782>,  <35.699699, 34.230034, 39.706268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773762, 34.006130, 39.750782>,  <35.897198, 33.632957, 39.824974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773762, 34.006130, 39.750782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802471, -0.150650, 0.577361,
		0.510698, 0.327012, 0.795142,
		-0.308592, 0.932935, -0.185481,
		35.681183, 34.286011, 39.695137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633572, 33.902077, 40.509888>,  <35.897198, 33.632957, 39.824974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633572, 33.902077, 40.509888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463261, 34.049122, 40.179173>,  <35.361073, 34.137348, 39.980743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463261, 34.049122, 40.179173>,  <35.633572, 33.902077, 40.509888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463261, 34.049122, 40.179173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886402, 0.014003, 0.462704,
		0.181673, 0.929873, 0.319891,
		-0.425777, 0.367613, -0.826786,
		35.335529, 34.159405, 39.931137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284763, 34.512920, 40.741417>,  <35.633572, 33.902077, 40.509888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284763, 34.512920, 40.741417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144642, 34.372185, 40.394199>,  <35.060570, 34.287743, 40.185871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144642, 34.372185, 40.394199>,  <35.284763, 34.512920, 40.741417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144642, 34.372185, 40.394199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931650, 0.035395, 0.361629,
		-0.096512, 0.935390, -0.340194,
		-0.350305, -0.351843, -0.868040,
		35.039551, 34.266632, 40.133789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951435, 34.826130, 40.622902>,  <35.284763, 34.512920, 40.741417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951435, 34.826130, 40.622902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101433, 34.861305, 40.992039>,  <36.191433, 34.882412, 41.213520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101433, 34.861305, 40.992039>,  <35.951435, 34.826130, 40.622902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101433, 34.861305, 40.992039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429143, -0.865932, 0.256898,
		0.821714, -0.492369, -0.286981,
		0.374995, 0.087941, 0.922846,
		36.213932, 34.887688, 41.268894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078373, 35.268417, 39.951939>,  <35.951435, 34.826130, 40.622902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078373, 35.268417, 39.951939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055138, 34.871109, 39.992004>,  <36.041195, 34.632725, 40.016045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.055138, 34.871109, 39.992004>,  <36.078373, 35.268417, 39.951939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055138, 34.871109, 39.992004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875763, -0.098865, -0.472510,
		0.479234, 0.060268, 0.875615,
		-0.058090, -0.993274, 0.100160,
		36.037712, 34.573128, 40.022053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762604, 35.116924, 40.140495>,  <36.078373, 35.268417, 39.951939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762604, 35.116924, 40.140495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565395, 34.801155, 39.994217>,  <36.447071, 34.611694, 39.906448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565395, 34.801155, 39.994217>,  <36.762604, 35.116924, 40.140495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565395, 34.801155, 39.994217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742936, -0.163278, -0.649143,
		0.452740, -0.591731, 0.666994,
		-0.493023, -0.789427, -0.365696,
		36.417488, 34.564327, 39.884510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120041, 34.444538, 40.099686>,  <36.762604, 35.116924, 40.140495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120041, 34.444538, 40.099686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837891, 34.409840, 39.818283>,  <36.668598, 34.389019, 39.649441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.837891, 34.409840, 39.818283>,  <37.120041, 34.444538, 40.099686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837891, 34.409840, 39.818283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707357, -0.150107, -0.690734,
		-0.045681, -0.984857, 0.167243,
		-0.705379, -0.086747, -0.703503,
		36.626278, 34.383816, 39.607231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304165, 33.881844, 39.679138>,  <37.120041, 34.444538, 40.099686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304165, 33.881844, 39.679138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062614, 34.121410, 39.468758>,  <36.917683, 34.265152, 39.342529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062614, 34.121410, 39.468758>,  <37.304165, 33.881844, 39.679138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062614, 34.121410, 39.468758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604367, -0.086169, -0.792032,
		-0.519682, -0.796162, -0.309930,
		-0.603880, 0.598916, -0.525955,
		36.881451, 34.301086, 39.310970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231552, 33.560555, 39.074898>,  <37.304165, 33.881844, 39.679138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231552, 33.560555, 39.074898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147182, 33.942547, 38.991444>,  <37.096561, 34.171741, 38.941372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147182, 33.942547, 38.991444>,  <37.231552, 33.560555, 39.074898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147182, 33.942547, 38.991444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408191, -0.107888, -0.906499,
		-0.888195, -0.276366, -0.367057,
		-0.210925, 0.954977, -0.208636,
		37.083904, 34.229038, 38.928852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090435, 33.560116, 38.390560>,  <37.231552, 33.560555, 39.074898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090435, 33.560116, 38.390560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139767, 33.953625, 38.442696>,  <37.169365, 34.189728, 38.473976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139767, 33.953625, 38.442696>,  <37.090435, 33.560116, 38.390560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139767, 33.953625, 38.442696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543872, 0.042854, -0.838073,
		-0.830057, 0.174243, -0.529760,
		0.123326, 0.983770, 0.130337,
		37.176765, 34.248756, 38.481796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008080, 33.877762, 37.698132>,  <37.090435, 33.560116, 38.390560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008080, 33.877762, 37.698132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211693, 34.143391, 37.917179>,  <37.333858, 34.302769, 38.048607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.211693, 34.143391, 37.917179>,  <37.008080, 33.877762, 37.698132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211693, 34.143391, 37.917179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703956, 0.044922, -0.708821,
		-0.495311, 0.746315, -0.444613,
		0.509031, 0.664075, 0.547623,
		37.364403, 34.342613, 38.081467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221798, 34.332844, 37.168190>,  <37.008080, 33.877762, 37.698132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221798, 34.332844, 37.168190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424885, 34.436642, 37.496796>,  <37.546738, 34.498920, 37.693958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.424885, 34.436642, 37.496796>,  <37.221798, 34.332844, 37.168190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424885, 34.436642, 37.496796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765131, 0.302458, -0.568414,
		-0.395975, 0.917159, -0.044986,
		0.507720, 0.259497, 0.821512,
		37.577202, 34.514492, 37.743248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507351, 34.999798, 36.995693>,  <37.221798, 34.332844, 37.168190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507351, 34.999798, 36.995693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740921, 34.883469, 37.298862>,  <37.881062, 34.813671, 37.480766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740921, 34.883469, 37.298862>,  <37.507351, 34.999798, 36.995693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740921, 34.883469, 37.298862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810815, 0.255083, -0.526794,
		-0.040127, 0.922145, 0.384756,
		0.583925, -0.290828, 0.757925,
		37.916100, 34.796219, 37.526241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958248, 35.518970, 37.138302>,  <37.507351, 34.999798, 36.995693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958248, 35.518970, 37.138302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087650, 35.153992, 37.238522>,  <38.165291, 34.935005, 37.298653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.087650, 35.153992, 37.238522>,  <37.958248, 35.518970, 37.138302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.087650, 35.153992, 37.238522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608821, -0.001975, -0.793305,
		0.724347, 0.409182, 0.554880,
		0.323510, -0.912451, 0.250549,
		38.184704, 34.880257, 37.313686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744045, 35.437412, 37.205990>,  <37.958248, 35.518970, 37.138302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744045, 35.437412, 37.205990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585739, 35.088226, 37.091938>,  <38.490757, 34.878716, 37.023506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585739, 35.088226, 37.091938>,  <38.744045, 35.437412, 37.205990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585739, 35.088226, 37.091938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724320, -0.105852, -0.681290,
		0.564563, -0.476156, 0.674200,
		-0.395765, -0.872967, -0.285129,
		38.467010, 34.826336, 37.006401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406216, 35.034382, 37.182301>,  <38.744045, 35.437412, 37.205990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406216, 35.034382, 37.182301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150166, 34.784843, 37.002945>,  <38.996536, 34.635120, 36.895332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150166, 34.784843, 37.002945>,  <39.406216, 35.034382, 37.182301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150166, 34.784843, 37.002945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751736, -0.388181, -0.533112,
		0.158523, -0.678330, 0.717453,
		-0.640127, -0.623846, -0.448390,
		38.958126, 34.597691, 36.868427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699898, 34.309238, 37.263931>,  <39.406216, 35.034382, 37.182301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699898, 34.309238, 37.263931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469471, 34.315434, 36.937031>,  <39.331215, 34.319153, 36.740891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.469471, 34.315434, 36.937031>,  <39.699898, 34.309238, 37.263931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469471, 34.315434, 36.937031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687531, -0.531572, -0.494705,
		-0.442093, -0.846871, 0.295571,
		-0.576069, 0.015492, -0.817254,
		39.296650, 34.320080, 36.691856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553768, 33.517586, 37.164577>,  <39.699898, 34.309238, 37.263931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553768, 33.517586, 37.164577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293102, 33.599007, 36.872303>,  <39.136703, 33.647861, 36.696938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293102, 33.599007, 36.872303>,  <39.553768, 33.517586, 37.164577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293102, 33.599007, 36.872303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750468, 0.033139, -0.660075,
		-0.110148, -0.978503, -0.174357,
		-0.651663, 0.203555, -0.730685,
		39.097603, 33.660072, 36.653099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659641, 33.057571, 36.611668>,  <39.553768, 33.517586, 37.164577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659641, 33.057571, 36.611668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479874, 33.375889, 36.449318>,  <39.372013, 33.566879, 36.351910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479874, 33.375889, 36.449318>,  <39.659641, 33.057571, 36.611668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479874, 33.375889, 36.449318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637992, -0.032100, -0.769373,
		-0.625293, -0.604712, -0.493286,
		-0.449415, 0.795797, -0.405874,
		39.345051, 33.614628, 36.327557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691109, 32.840736, 35.883820>,  <39.659641, 33.057571, 36.611668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691109, 32.840736, 35.883820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672127, 33.240021, 35.898396>,  <39.660736, 33.479591, 35.907143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.672127, 33.240021, 35.898396>,  <39.691109, 32.840736, 35.883820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672127, 33.240021, 35.898396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463172, 0.054312, -0.884603,
		-0.884997, -0.025099, -0.464920,
		-0.047453, 0.998209, 0.036440,
		39.657890, 33.539482, 35.909328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397209, 33.186756, 35.285942>,  <39.691109, 32.840736, 35.883820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397209, 33.186756, 35.285942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659012, 33.442638, 35.447136>,  <39.816093, 33.596169, 35.543850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.659012, 33.442638, 35.447136>,  <39.397209, 33.186756, 35.285942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.659012, 33.442638, 35.447136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470760, 0.072258, -0.879297,
		-0.591609, 0.765217, -0.253853,
		0.654510, 0.639704, 0.402982,
		39.855366, 33.634548, 35.568031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.520256, 33.678146, 34.699081>,  <39.397209, 33.186756, 35.285942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.520256, 33.678146, 34.699081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798069, 33.770084, 34.971783>,  <39.964756, 33.825249, 35.135403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798069, 33.770084, 34.971783>,  <39.520256, 33.678146, 34.699081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798069, 33.770084, 34.971783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679813, 0.100560, -0.726459,
		-0.235531, 0.968018, -0.086409,
		0.694536, 0.229846, 0.681756,
		40.006432, 33.839039, 35.176308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808304, 34.369854, 34.632526>,  <39.520256, 33.678146, 34.699081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808304, 34.369854, 34.632526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086384, 34.144741, 34.811401>,  <40.253231, 34.009674, 34.918724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.086384, 34.144741, 34.811401>,  <39.808304, 34.369854, 34.632526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086384, 34.144741, 34.811401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646926, 0.218666, -0.730529,
		0.313347, 0.797156, 0.516096,
		0.695198, -0.562785, 0.447183,
		40.294945, 33.975906, 34.945557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389515, 34.708092, 34.487850>,  <39.808304, 34.369854, 34.632526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389515, 34.708092, 34.487850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595478, 34.380608, 34.589500>,  <40.719055, 34.184116, 34.650490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595478, 34.380608, 34.589500>,  <40.389515, 34.708092, 34.487850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595478, 34.380608, 34.589500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800551, 0.353218, -0.484103,
		0.306580, 0.452708, 0.837296,
		0.514905, -0.818714, 0.254126,
		40.749950, 34.134995, 34.665737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007408, 34.997578, 34.561710>,  <40.389515, 34.708092, 34.487850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007408, 34.997578, 34.561710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090919, 34.607376, 34.533993>,  <41.141026, 34.373257, 34.517361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090919, 34.607376, 34.533993>,  <41.007408, 34.997578, 34.561710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.090919, 34.607376, 34.533993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807464, 0.211926, -0.550535,
		0.551735, 0.058988, 0.831931,
		0.208782, -0.975504, -0.069296,
		41.153553, 34.314724, 34.513203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654987, 34.909351, 34.794319>,  <41.007408, 34.997578, 34.561710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654987, 34.909351, 34.794319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612354, 34.564186, 34.596725>,  <41.586773, 34.357086, 34.478168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612354, 34.564186, 34.596725>,  <41.654987, 34.909351, 34.794319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612354, 34.564186, 34.596725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763194, 0.247444, -0.596915,
		0.637319, -0.440624, 0.632198,
		-0.106581, -0.862915, -0.493982,
		41.580379, 34.305313, 34.448532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.242287, 34.452801, 34.956470>,  <41.654987, 34.909351, 34.794319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.242287, 34.452801, 34.956470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.048035, 34.406273, 34.609913>,  <41.931484, 34.378357, 34.401978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.048035, 34.406273, 34.609913>,  <42.242287, 34.452801, 34.956470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.048035, 34.406273, 34.609913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845524, 0.189112, -0.499326,
		0.221924, -0.975042, 0.006508,
		-0.485633, -0.116315, -0.866390,
		41.902344, 34.371380, 34.349995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582729, 33.914566, 34.518238>,  <42.242287, 34.452801, 34.956470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582729, 33.914566, 34.518238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387527, 34.187782, 34.300873>,  <42.270405, 34.351711, 34.170452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387527, 34.187782, 34.300873>,  <42.582729, 33.914566, 34.518238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387527, 34.187782, 34.300873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853955, 0.244810, -0.459162,
		-0.180594, -0.688125, -0.702758,
		-0.488003, 0.683046, -0.543417,
		42.241127, 34.392696, 34.137848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571098, 33.761284, 33.833981>,  <42.582729, 33.914566, 34.518238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571098, 33.761284, 33.833981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607044, 34.141140, 33.954052>,  <42.628613, 34.369053, 34.026096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607044, 34.141140, 33.954052>,  <42.571098, 33.761284, 33.833981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607044, 34.141140, 33.954052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923521, 0.033386, -0.382092,
		-0.372872, 0.311557, -0.874013,
		0.089864, 0.949641, 0.300178,
		42.634003, 34.426033, 34.044106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875427, 34.247589, 33.341560>,  <42.571098, 33.761284, 33.833981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875427, 34.247589, 33.341560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938805, 34.401760, 33.705173>,  <42.976833, 34.494263, 33.923340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.938805, 34.401760, 33.705173>,  <42.875427, 34.247589, 33.341560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.938805, 34.401760, 33.705173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944611, 0.208821, -0.253186,
		-0.287410, 0.898799, -0.330992,
		0.158446, 0.385427, 0.909033,
		42.986340, 34.517387, 33.977882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213451, 34.934624, 33.175888>,  <42.875427, 34.247589, 33.341560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213451, 34.934624, 33.175888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288910, 34.775379, 33.534981>,  <43.334187, 34.679832, 33.750435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.288910, 34.775379, 33.534981>,  <43.213451, 34.934624, 33.175888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288910, 34.775379, 33.534981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969123, 0.223277, -0.104633,
		-0.158788, 0.889750, 0.427938,
		0.188646, -0.398110, 0.897731,
		43.345505, 34.655945, 33.804298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.938171, 35.298416, 33.770565>,  <43.213451, 34.934624, 33.175888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.938171, 35.298416, 33.770565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.915253, 35.122898, 34.129269>,  <42.901501, 35.017590, 34.344490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.915253, 35.122898, 34.129269>,  <42.938171, 35.298416, 33.770565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.915253, 35.122898, 34.129269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613789, 0.692941, 0.378280,
		-0.787388, 0.572096, 0.229622,
		-0.057298, -0.438792, 0.896760,
		42.898064, 34.991261, 34.398296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.733887, 35.883404, 34.164337>,  <42.938171, 35.298416, 33.770565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.733887, 35.883404, 34.164337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924770, 35.614937, 34.391251>,  <43.039299, 35.453857, 34.527401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924770, 35.614937, 34.391251>,  <42.733887, 35.883404, 34.164337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924770, 35.614937, 34.391251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642430, 0.706902, 0.295927,
		-0.599632, 0.223224, 0.768514,
		0.477206, -0.671164, 0.567287,
		43.067932, 35.413589, 34.561436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.611286, 35.995907, 34.928001>,  <42.733887, 35.883404, 34.164337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.611286, 35.995907, 34.928001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966717, 35.849483, 34.817421>,  <43.179977, 35.761631, 34.751072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.966717, 35.849483, 34.817421>,  <42.611286, 35.995907, 34.928001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966717, 35.849483, 34.817421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453001, 0.795124, 0.403196,
		0.072222, -0.483507, 0.872356,
		0.888580, -0.366059, -0.276455,
		43.233292, 35.739666, 34.734486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.794552, 35.543365, 35.581390>,  <42.611286, 35.995907, 34.928001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.794552, 35.543365, 35.581390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.736938, 35.938820, 35.598633>,  <42.702370, 36.176090, 35.608978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.736938, 35.938820, 35.598633>,  <42.794552, 35.543365, 35.581390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.736938, 35.938820, 35.598633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935205, 0.121753, 0.332518,
		0.323491, 0.088204, -0.942111,
		-0.144035, 0.988634, 0.043102,
		42.693729, 36.235409, 35.611565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.274254, 35.976826, 35.274681>,  <42.794552, 35.543365, 35.581390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.274254, 35.976826, 35.274681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109207, 36.176105, 35.579716>,  <43.010178, 36.295673, 35.762737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.109207, 36.176105, 35.579716>,  <43.274254, 35.976826, 35.274681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109207, 36.176105, 35.579716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887434, 0.031040, 0.459888,
		0.205446, 0.866505, -0.454930,
		-0.412616, 0.498203, 0.762589,
		42.985424, 36.325565, 35.808491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604679, 36.655342, 35.288296>,  <43.274254, 35.976826, 35.274681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604679, 36.655342, 35.288296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.495045, 36.476986, 35.629131>,  <43.429264, 36.369972, 35.833633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.495045, 36.476986, 35.629131>,  <43.604679, 36.655342, 35.288296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.495045, 36.476986, 35.629131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959439, -0.065986, 0.274087,
		-0.065986, 0.892654, 0.445886,
		-0.274087, -0.445886, 0.852093,
		43.412819, 36.343220, 35.884758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.151012, 36.857391, 35.648003>,  <43.604679, 36.655342, 35.288296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.151012, 36.857391, 35.648003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985355, 36.529346, 35.805939>,  <43.885960, 36.332520, 35.900700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.985355, 36.529346, 35.805939>,  <44.151012, 36.857391, 35.648003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.985355, 36.529346, 35.805939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883496, -0.257870, 0.391074,
		-0.218906, 0.510804, 0.831360,
		-0.414145, -0.820112, 0.394843,
		43.861111, 36.283314, 35.924393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.225761, 36.847485, 36.335228>,  <44.151012, 36.857391, 35.648003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.225761, 36.847485, 36.335228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.203785, 36.461624, 36.232128>,  <44.190598, 36.230110, 36.170269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.203785, 36.461624, 36.232128>,  <44.225761, 36.847485, 36.335228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.203785, 36.461624, 36.232128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883381, -0.167284, 0.437783,
		-0.465424, -0.203638, 0.861343,
		-0.054940, -0.964649, -0.257748,
		44.187302, 36.172230, 36.154804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.299557, 36.300507, 36.928570>,  <44.225761, 36.847485, 36.335228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.299557, 36.300507, 36.928570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.412918, 36.197838, 36.558964>,  <44.480934, 36.136238, 36.337200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.412918, 36.197838, 36.558964>,  <44.299557, 36.300507, 36.928570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.412918, 36.197838, 36.558964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952130, -0.039816, 0.303088,
		-0.114584, -0.965679, 0.233097,
		0.283405, -0.256668, -0.924015,
		44.497940, 36.120838, 36.281761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.714966, 35.668095, 36.883888>,  <44.299557, 36.300507, 36.928570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.714966, 35.668095, 36.883888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806835, 35.937019, 36.602394>,  <44.861958, 36.098373, 36.433498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.806835, 35.937019, 36.602394>,  <44.714966, 35.668095, 36.883888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.806835, 35.937019, 36.602394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966032, -0.069458, 0.248916,
		0.118469, -0.737000, -0.665429,
		0.229670, 0.672314, -0.703737,
		44.875736, 36.138714, 36.391273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186718, 35.397057, 36.254879>,  <44.714966, 35.668095, 36.883888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186718, 35.397057, 36.254879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.251251, 35.787113, 36.315643>,  <45.289970, 36.021145, 36.352104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.251251, 35.787113, 36.315643>,  <45.186718, 35.397057, 36.254879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.251251, 35.787113, 36.315643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966100, -0.187491, 0.177480,
		0.201550, 0.118131, -0.972329,
		0.161337, 0.975137, 0.151915,
		45.299652, 36.079655, 36.361217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.220505, 35.607792, 35.587845>,  <45.186718, 35.397057, 36.254879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.220505, 35.607792, 35.587845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.246574, 35.993206, 35.691658>,  <45.262215, 36.224453, 35.753944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.246574, 35.993206, 35.691658>,  <45.220505, 35.607792, 35.587845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.246574, 35.993206, 35.691658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954192, -0.136282, 0.266354,
		0.292010, 0.230285, -0.928277,
		0.065171, 0.963533, 0.259532,
		45.266125, 36.282265, 35.769516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.922115, 35.534760, 35.277973>,  <45.220505, 35.607792, 35.587845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.922115, 35.534760, 35.277973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836086, 35.745995, 34.949371>,  <45.784470, 35.872734, 34.752209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836086, 35.745995, 34.949371>,  <45.922115, 35.534760, 35.277973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.836086, 35.745995, 34.949371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975795, 0.150310, -0.158840,
		0.039598, -0.835781, -0.547633,
		-0.215070, 0.528088, -0.821503,
		45.771564, 35.904423, 34.702919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.334000, 35.375599, 34.780788>,  <45.922115, 35.534760, 35.277973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.334000, 35.375599, 34.780788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.208637, 35.741470, 34.678699>,  <46.133419, 35.960995, 34.617447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.208637, 35.741470, 34.678699>,  <46.334000, 35.375599, 34.780788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.208637, 35.741470, 34.678699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948470, 0.314729, -0.036751,
		0.046712, -0.253591, -0.966183,
		-0.313406, 0.914679, -0.255225,
		46.114616, 36.015873, 34.602131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.998859, 35.729729, 34.511101>,  <46.334000, 35.375599, 34.780788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.998859, 35.729729, 34.511101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.734985, 36.024094, 34.572090>,  <46.576660, 36.200714, 34.608685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.734985, 36.024094, 34.572090>,  <46.998859, 35.729729, 34.511101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.734985, 36.024094, 34.572090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751337, 0.650523, 0.110962,
		-0.017527, 0.187757, -0.982059,
		-0.659686, 0.735912, 0.152470,
		46.537079, 36.244865, 34.617832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.492420, 35.376762, 34.838245>,  <46.998859, 35.729729, 34.511101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.492420, 35.376762, 34.838245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.786945, 35.113194, 34.899796>,  <47.963661, 34.955051, 34.936726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.786945, 35.113194, 34.899796>,  <47.492420, 35.376762, 34.838245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.786945, 35.113194, 34.899796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673566, 0.692082, -0.259481,
		0.064486, 0.294700, 0.953411,
		0.736308, -0.658919, 0.153871,
		48.007839, 34.915520, 34.945957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.939426, 29.157068, 29.040936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.675117, 29.445181, 28.956476>,  <32.516533, 29.618048, 28.905800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.675117, 29.445181, 28.956476>,  <32.939426, 29.157068, 29.040936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675117, 29.445181, 28.956476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239043, 0.468601, 0.850454,
		0.711509, 0.511479, -0.481814,
		-0.660768, 0.720279, -0.211148,
		32.476887, 29.661264, 28.893131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362759, 29.684183, 29.125677>,  <32.939426, 29.157068, 29.040936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362759, 29.684183, 29.125677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.994820, 29.835493, 29.167240>,  <32.774055, 29.926279, 29.192179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.994820, 29.835493, 29.167240>,  <33.362759, 29.684183, 29.125677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994820, 29.835493, 29.167240> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280039, 0.447693, 0.849205,
		0.274713, 0.810234, -0.517739,
		-0.919843, 0.378274, 0.103910,
		32.718868, 29.948975, 29.198414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415878, 30.373718, 29.310396>,  <33.362759, 29.684183, 29.125677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415878, 30.373718, 29.310396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.045959, 30.292297, 29.438974>,  <32.824009, 30.243444, 29.516121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.045959, 30.292297, 29.438974>,  <33.415878, 30.373718, 29.310396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045959, 30.292297, 29.438974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226715, 0.383664, 0.895211,
		-0.305548, 0.900760, -0.308662,
		-0.924792, -0.203552, 0.321443,
		32.768520, 30.231232, 29.535408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132839, 30.977140, 29.587566>,  <33.415878, 30.373718, 29.310396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132839, 30.977140, 29.587566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.946541, 30.674471, 29.771099>,  <32.834763, 30.492868, 29.881220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.946541, 30.674471, 29.771099>,  <33.132839, 30.977140, 29.587566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946541, 30.674471, 29.771099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169032, 0.432885, 0.885460,
		-0.868627, 0.489953, -0.073710,
		-0.465742, -0.756675, 0.458833,
		32.806820, 30.447468, 29.908749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854530, 31.286892, 30.152216>,  <33.132839, 30.977140, 29.587566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854530, 31.286892, 30.152216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.853336, 30.895195, 30.233282>,  <32.852619, 30.660177, 30.281921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.853336, 30.895195, 30.233282>,  <32.854530, 31.286892, 30.152216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853336, 30.895195, 30.233282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115830, 0.200963, 0.972727,
		-0.993265, 0.026378, 0.112826,
		-0.002984, -0.979244, 0.202665,
		32.852440, 30.601421, 30.294081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316414, 31.230251, 30.711336>,  <32.854530, 31.286892, 30.152216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316414, 31.230251, 30.711336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.578876, 30.928400, 30.711344>,  <32.736355, 30.747290, 30.711348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.578876, 30.928400, 30.711344>,  <32.316414, 31.230251, 30.711336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578876, 30.928400, 30.711344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234310, 0.203759, 0.950569,
		-0.717328, -0.623716, 0.310513,
		0.656155, -0.754626, 0.000019,
		32.775723, 30.702013, 30.711349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262527, 30.967772, 31.468725>,  <32.316414, 31.230251, 30.711336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262527, 30.967772, 31.468725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.599812, 30.788179, 31.350468>,  <32.802181, 30.680424, 31.279512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.599812, 30.788179, 31.350468>,  <32.262527, 30.967772, 31.468725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599812, 30.788179, 31.350468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377221, 0.102349, 0.920450,
		-0.383007, -0.887660, 0.255667,
		0.843214, -0.448982, -0.295644,
		32.852776, 30.653484, 31.261774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482456, 30.521690, 31.943966>,  <32.262527, 30.967772, 31.468725>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482456, 30.521690, 31.943966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.832359, 30.592823, 31.763664>,  <33.042301, 30.635504, 31.655483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.832359, 30.592823, 31.763664>,  <32.482456, 30.521690, 31.943966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832359, 30.592823, 31.763664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428725, 0.149481, 0.890983,
		0.225825, -0.972641, 0.054518,
		0.874756, 0.177833, -0.450752,
		33.094788, 30.646173, 31.628439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935154, 30.330919, 32.372124>,  <32.482456, 30.521690, 31.943966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935154, 30.330919, 32.372124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.173622, 30.526999, 32.117786>,  <33.316704, 30.644646, 31.965185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.173622, 30.526999, 32.117786>,  <32.935154, 30.330919, 32.372124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173622, 30.526999, 32.117786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593129, 0.264841, 0.760301,
		0.541094, -0.830400, -0.132862,
		0.596166, 0.490198, -0.635838,
		33.352470, 30.674059, 31.927034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609856, 30.232330, 32.533627>,  <32.935154, 30.330919, 32.372124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609856, 30.232330, 32.533627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.648525, 30.575302, 32.331451>,  <33.671726, 30.781086, 32.210144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.648525, 30.575302, 32.331451>,  <33.609856, 30.232330, 32.533627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648525, 30.575302, 32.331451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731659, 0.283061, 0.620122,
		0.674781, -0.429758, -0.599983,
		0.096670, 0.857429, -0.505440,
		33.677525, 30.832531, 32.179821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303753, 30.283171, 32.518745>,  <33.609856, 30.232330, 32.533627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303753, 30.283171, 32.518745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.154190, 30.643248, 32.429440>,  <34.064453, 30.859293, 32.375854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.154190, 30.643248, 32.429440>,  <34.303753, 30.283171, 32.518745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154190, 30.643248, 32.429440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608735, 0.419817, 0.673198,
		0.699739, 0.115803, -0.704950,
		-0.373909, 0.900191, -0.223269,
		34.042019, 30.913305, 32.362457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938969, 30.675133, 32.435787>,  <34.303753, 30.283171, 32.518745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938969, 30.675133, 32.435787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.612190, 30.881599, 32.538681>,  <34.416122, 31.005480, 32.600418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.612190, 30.881599, 32.538681>,  <34.938969, 30.675133, 32.435787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612190, 30.881599, 32.538681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537429, 0.519579, 0.664235,
		0.209201, 0.680891, -0.701871,
		-0.816948, 0.516164, 0.257235,
		34.367107, 31.036449, 32.615852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010536, 31.413363, 32.397682>,  <34.938969, 30.675133, 32.435787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010536, 31.413363, 32.397682> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732349, 31.355648, 32.679253>,  <34.565437, 31.321018, 32.848194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.732349, 31.355648, 32.679253>,  <35.010536, 31.413363, 32.397682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732349, 31.355648, 32.679253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586439, 0.452126, 0.672065,
		-0.415234, 0.880206, -0.229821,
		-0.695464, -0.144288, 0.703926,
		34.523712, 31.312361, 32.890430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072792, 31.964998, 32.752293>,  <35.010536, 31.413363, 32.397682>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072792, 31.964998, 32.752293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.840103, 31.752953, 32.999058>,  <34.700489, 31.625725, 33.147118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.840103, 31.752953, 32.999058>,  <35.072792, 31.964998, 32.752293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840103, 31.752953, 32.999058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375600, 0.497667, 0.781826,
		-0.721472, 0.686518, -0.090394,
		-0.581724, -0.530113, 0.616910,
		34.665585, 31.593918, 33.184132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840431, 32.427437, 33.203678>,  <35.072792, 31.964998, 32.752293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840431, 32.427437, 33.203678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.822140, 32.071251, 33.384781>,  <34.811165, 31.857540, 33.493443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.822140, 32.071251, 33.384781>,  <34.840431, 32.427437, 33.203678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822140, 32.071251, 33.384781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571269, 0.348493, 0.743105,
		-0.819488, 0.292623, 0.492758,
		-0.045727, -0.890463, 0.452753,
		34.808422, 31.804111, 33.520607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672806, 32.577507, 33.870121>,  <34.840431, 32.427437, 33.203678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672806, 32.577507, 33.870121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.831303, 32.212238, 33.908298>,  <34.926399, 31.993076, 33.931206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.831303, 32.212238, 33.908298>,  <34.672806, 32.577507, 33.870121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831303, 32.212238, 33.908298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619848, 0.342746, 0.705913,
		-0.677333, -0.220551, 0.701838,
		0.396243, -0.913171, 0.095445,
		34.950176, 31.938288, 33.936932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814156, 32.587234, 34.527287>,  <34.672806, 32.577507, 33.870121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814156, 32.587234, 34.527287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.001266, 32.256298, 34.402897>,  <35.113533, 32.057735, 34.328262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.001266, 32.256298, 34.402897>,  <34.814156, 32.587234, 34.527287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001266, 32.256298, 34.402897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724404, 0.157295, 0.671191,
		-0.506387, -0.539233, 0.672904,
		0.467773, -0.827337, -0.310970,
		35.141598, 32.008099, 34.309605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716988, 32.004902, 35.045975>,  <34.814156, 32.587234, 34.527287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716988, 32.004902, 35.045975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.043472, 31.960911, 34.819099>,  <35.239361, 31.934515, 34.682972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.043472, 31.960911, 34.819099>,  <34.716988, 32.004902, 35.045975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043472, 31.960911, 34.819099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576423, 0.221684, 0.786507,
		0.039235, -0.968896, 0.244336,
		0.816209, -0.109982, -0.567192,
		35.288334, 31.927917, 34.648941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199394, 31.585682, 35.484608>,  <34.716988, 32.004902, 35.045975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199394, 31.585682, 35.484608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.428162, 31.757994, 35.205368>,  <35.565422, 31.861380, 35.037823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.428162, 31.757994, 35.205368>,  <35.199394, 31.585682, 35.484608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428162, 31.757994, 35.205368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670117, 0.245499, 0.700481,
		0.473134, -0.868424, -0.148267,
		0.571916, 0.430778, -0.698100,
		35.599735, 31.887226, 34.995937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911209, 31.396988, 35.603897>,  <35.199394, 31.585682, 35.484608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911209, 31.396988, 35.603897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.944901, 31.726139, 35.379120>,  <35.965115, 31.923630, 35.244255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.944901, 31.726139, 35.379120>,  <35.911209, 31.396988, 35.603897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944901, 31.726139, 35.379120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677598, 0.366183, 0.637786,
		0.730594, -0.434489, -0.526737,
		0.084229, 0.822878, -0.561940,
		35.970169, 31.973003, 35.210537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626240, 31.505327, 35.469753>,  <35.911209, 31.396988, 35.603897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626240, 31.505327, 35.469753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451118, 31.863247, 35.434738>,  <36.346046, 32.077999, 35.413727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451118, 31.863247, 35.434738>,  <36.626240, 31.505327, 35.469753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451118, 31.863247, 35.434738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770973, 0.423733, 0.475448,
		0.462524, 0.140661, -0.875378,
		-0.437803, 0.894799, -0.087541,
		36.319778, 32.131687, 35.408474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377583, 31.453413, 35.401627>,  <36.626240, 31.505327, 35.469753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377583, 31.453413, 35.401627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.739258, 31.536158, 35.252144>,  <37.956261, 31.585804, 35.162453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.739258, 31.536158, 35.252144>,  <37.377583, 31.453413, 35.401627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739258, 31.536158, 35.252144> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332120, -0.209699, -0.919632,
		-0.268602, 0.955633, -0.120904,
		0.904184, 0.206860, -0.373711,
		38.010513, 31.598215, 35.140030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260059, 31.835772, 34.813633>,  <37.377583, 31.453413, 35.401627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260059, 31.835772, 34.813633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.624420, 31.677908, 34.765472>,  <37.843037, 31.583189, 34.736576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.624420, 31.677908, 34.765472>,  <37.260059, 31.835772, 34.813633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624420, 31.677908, 34.765472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179081, -0.115242, -0.977062,
		0.371730, 0.911572, -0.175651,
		0.910904, -0.394659, -0.120406,
		37.897690, 31.559511, 34.729351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.362206, 32.090603, 34.224426>,  <37.260059, 31.835772, 34.813633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.362206, 32.090603, 34.224426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.646503, 31.811621, 34.261097>,  <37.817081, 31.644232, 34.283100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.646503, 31.811621, 34.261097>,  <37.362206, 32.090603, 34.224426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646503, 31.811621, 34.261097> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073484, -0.203223, -0.976371,
		0.699605, 0.687210, -0.195690,
		0.710741, -0.697455, 0.091676,
		37.859726, 31.602385, 34.288601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759811, 32.215309, 33.650459>,  <37.362206, 32.090603, 34.224426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759811, 32.215309, 33.650459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.867668, 31.841616, 33.743847>,  <37.932381, 31.617401, 33.799881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.867668, 31.841616, 33.743847>,  <37.759811, 32.215309, 33.650459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867668, 31.841616, 33.743847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315467, -0.314769, -0.895210,
		0.909822, 0.167731, -0.379593,
		0.269638, -0.934230, 0.233470,
		37.948559, 31.561346, 33.813889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.217113, 31.911331, 33.197388>,  <37.759811, 32.215309, 33.650459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.217113, 31.911331, 33.197388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.042374, 31.584030, 33.346851>,  <37.937531, 31.387650, 33.436531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.042374, 31.584030, 33.346851>,  <38.217113, 31.911331, 33.197388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042374, 31.584030, 33.346851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211133, -0.310521, -0.926822,
		0.874406, -0.483773, -0.037110,
		-0.436848, -0.818254, 0.373663,
		37.911320, 31.338554, 33.458950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446548, 31.290468, 32.845863>,  <38.217113, 31.911331, 33.197388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446548, 31.290468, 32.845863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.093952, 31.163504, 32.985706>,  <37.882393, 31.087324, 33.069611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.093952, 31.163504, 32.985706>,  <38.446548, 31.290468, 32.845863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093952, 31.163504, 32.985706> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245729, -0.323884, -0.913628,
		0.403229, -0.891262, 0.207503,
		-0.881489, -0.317412, 0.349609,
		37.829506, 31.068279, 33.090588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329880, 30.649586, 32.515755>,  <38.446548, 31.290468, 32.845863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329880, 30.649586, 32.515755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.963688, 30.773825, 32.618069>,  <37.743973, 30.848368, 32.679459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.963688, 30.773825, 32.618069>,  <38.329880, 30.649586, 32.515755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963688, 30.773825, 32.618069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373277, -0.418277, -0.828075,
		-0.150208, -0.853565, 0.498863,
		-0.915479, 0.310597, 0.255788,
		37.689045, 30.867004, 32.694805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949070, 30.019159, 32.429577>,  <38.329880, 30.649586, 32.515755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949070, 30.019159, 32.429577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.662491, 30.293394, 32.481224>,  <37.490543, 30.457935, 32.512211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.662491, 30.293394, 32.481224>,  <37.949070, 30.019159, 32.429577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662491, 30.293394, 32.481224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598174, -0.508444, -0.619413,
		-0.359013, -0.521012, 0.774375,
		-0.716448, 0.685588, 0.129118,
		37.447556, 30.499071, 32.519958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.290047, 29.595825, 32.531960>,  <37.949070, 30.019159, 32.429577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.290047, 29.595825, 32.531960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.214535, 29.972349, 32.420033>,  <37.169228, 30.198263, 32.352875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.214535, 29.972349, 32.420033>,  <37.290047, 29.595825, 32.531960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214535, 29.972349, 32.420033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572827, -0.337002, -0.747195,
		-0.797641, 0.019231, 0.602826,
		-0.188784, 0.941308, -0.279822,
		37.157898, 30.254742, 32.336086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540688, 29.588654, 32.454411>,  <37.290047, 29.595825, 32.531960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540688, 29.588654, 32.454411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684517, 29.896381, 32.243183>,  <36.770813, 30.081018, 32.116447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684517, 29.896381, 32.243183>,  <36.540688, 29.588654, 32.454411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684517, 29.896381, 32.243183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510201, -0.311743, -0.801568,
		-0.781284, 0.557640, 0.280415,
		0.359569, 0.769321, -0.528068,
		36.792389, 30.127178, 32.084763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972672, 29.904264, 32.122681>,  <36.540688, 29.588654, 32.454411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.972672, 29.904264, 32.122681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.277119, 30.043449, 31.903730>,  <36.459789, 30.126961, 31.772362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.277119, 30.043449, 31.903730>,  <35.972672, 29.904264, 32.122681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277119, 30.043449, 31.903730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488657, -0.247312, -0.836691,
		-0.426509, 0.904301, -0.018200,
		0.761121, 0.347962, -0.547373,
		36.505455, 30.147839, 31.739519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653828, 30.268278, 31.613686>,  <35.972672, 29.904264, 32.122681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653828, 30.268278, 31.613686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024681, 30.185081, 31.489000>,  <36.247192, 30.135164, 31.414190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.024681, 30.185081, 31.489000>,  <35.653828, 30.268278, 31.613686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024681, 30.185081, 31.489000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349016, -0.176445, -0.920356,
		0.136425, 0.962085, -0.236180,
		0.927133, -0.207991, -0.311711,
		36.302822, 30.122684, 31.395487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756153, 30.688370, 31.050198>,  <35.653828, 30.268278, 31.613686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756153, 30.688370, 31.050198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.988262, 30.365076, 31.010111>,  <36.127525, 30.171099, 30.986059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.988262, 30.365076, 31.010111>,  <35.756153, 30.688370, 31.050198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988262, 30.365076, 31.010111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457238, -0.221474, -0.861326,
		0.673959, 0.545623, -0.498071,
		0.580269, -0.808236, -0.100215,
		36.162342, 30.122604, 30.980047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868427, 30.758776, 30.373840>,  <35.756153, 30.688370, 31.050198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868427, 30.758776, 30.373840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.970638, 30.384420, 30.470856>,  <36.031963, 30.159807, 30.529064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.970638, 30.384420, 30.470856>,  <35.868427, 30.758776, 30.373840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970638, 30.384420, 30.470856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418558, -0.333223, -0.844850,
		0.871502, 0.114365, -0.476869,
		0.255525, -0.935886, 0.242536,
		36.047295, 30.103655, 30.543617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272484, 30.553120, 29.807064>,  <35.868427, 30.758776, 30.373840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272484, 30.553120, 29.807064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.120327, 30.233566, 29.993433>,  <36.029034, 30.041834, 30.105255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.120327, 30.233566, 29.993433>,  <36.272484, 30.553120, 29.807064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120327, 30.233566, 29.993433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313945, -0.362335, -0.877583,
		0.869909, -0.480098, -0.112977,
		-0.380391, -0.798886, 0.465923,
		36.006210, 29.993900, 30.133209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314240, 30.037918, 29.266504>,  <36.272484, 30.553120, 29.807064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314240, 30.037918, 29.266504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055016, 29.883068, 29.528849>,  <35.899483, 29.790157, 29.686255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055016, 29.883068, 29.528849>,  <36.314240, 30.037918, 29.266504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055016, 29.883068, 29.528849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508522, -0.421116, -0.751043,
		0.566941, -0.820240, 0.076046,
		-0.648060, -0.387127, 0.655859,
		35.860596, 29.766930, 29.725607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242065, 29.340746, 29.061604>,  <36.314240, 30.037918, 29.266504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242065, 29.340746, 29.061604> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911674, 29.397694, 29.279778>,  <35.713440, 29.431862, 29.410681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.911674, 29.397694, 29.279778>,  <36.242065, 29.340746, 29.061604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911674, 29.397694, 29.279778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543572, -0.457454, -0.703751,
		0.149319, -0.877763, 0.455233,
		-0.825974, 0.142368, 0.545434,
		35.663883, 29.440405, 29.443407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831978, 28.717976, 29.150387>,  <36.242065, 29.340746, 29.061604>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831978, 28.717976, 29.150387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.545033, 28.987156, 29.222534>,  <35.372868, 29.148664, 29.265821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.545033, 28.987156, 29.222534>,  <35.831978, 28.717976, 29.150387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545033, 28.987156, 29.222534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549760, -0.387738, -0.739880,
		-0.427970, -0.629917, 0.648110,
		-0.717359, 0.672952, 0.180363,
		35.329823, 29.189041, 29.276644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202198, 28.316229, 29.221809>,  <35.831978, 28.717976, 29.150387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202198, 28.316229, 29.221809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078220, 28.685875, 29.132410>,  <35.003834, 28.907661, 29.078772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078220, 28.685875, 29.132410>,  <35.202198, 28.316229, 29.221809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078220, 28.685875, 29.132410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523350, -0.362083, -0.771363,
		-0.793751, -0.122110, 0.595859,
		-0.309941, 0.924113, -0.223497,
		34.985237, 28.963108, 29.065361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.345600, 28.319677, 29.104937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.479843, 28.651968, 28.927277>,  <34.560387, 28.851341, 28.820681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.479843, 28.651968, 28.927277>,  <34.345600, 28.319677, 29.104937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479843, 28.651968, 28.927277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563758, -0.200614, -0.801206,
		-0.754683, 0.519279, 0.401001,
		0.335603, 0.830725, -0.444148,
		34.580524, 28.901186, 28.794033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707375, 28.763245, 28.868258>,  <34.345600, 28.319677, 29.104937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707375, 28.763245, 28.868258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.028763, 28.830736, 28.639885>,  <34.221596, 28.871231, 28.502861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.028763, 28.830736, 28.639885>,  <33.707375, 28.763245, 28.868258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028763, 28.830736, 28.639885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530693, -0.231626, -0.815300,
		-0.269809, 0.958060, -0.096561,
		0.803473, 0.168731, -0.570930,
		34.269806, 28.881355, 28.468605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453625, 29.218290, 28.301350>,  <33.707375, 28.763245, 28.868258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453625, 29.218290, 28.301350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.789108, 29.039379, 28.177080>,  <33.990398, 28.932034, 28.102518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.789108, 29.039379, 28.177080>,  <33.453625, 29.218290, 28.301350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789108, 29.039379, 28.177080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436400, -0.210735, -0.874726,
		0.325775, 0.869215, -0.371936,
		0.838705, -0.447276, -0.310674,
		34.040718, 28.905197, 28.083878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338223, 29.257189, 27.634155>,  <33.453625, 29.218290, 28.301350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338223, 29.257189, 27.634155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.655357, 29.014101, 27.652391>,  <33.845638, 28.868248, 27.663334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.655357, 29.014101, 27.652391>,  <33.338223, 29.257189, 27.634155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655357, 29.014101, 27.652391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373789, -0.544006, -0.751225,
		0.481336, 0.578561, -0.658470,
		0.792841, -0.607721, 0.045590,
		33.893211, 28.831785, 27.666069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676559, 29.174715, 27.000065>,  <33.338223, 29.257189, 27.634155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676559, 29.174715, 27.000065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.791054, 28.850559, 27.204550>,  <33.859749, 28.656065, 27.327240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.791054, 28.850559, 27.204550>,  <33.676559, 29.174715, 27.000065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791054, 28.850559, 27.204550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215169, -0.574273, -0.789881,
		0.933687, 0.116097, -0.338749,
		0.286237, -0.810390, 0.511211,
		33.876926, 28.607443, 27.357914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070362, 28.834990, 26.443033>,  <33.676559, 29.174715, 27.000065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070362, 28.834990, 26.443033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.943069, 28.595514, 26.737055>,  <33.866695, 28.451830, 26.913467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.943069, 28.595514, 26.737055>,  <34.070362, 28.834990, 26.443033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943069, 28.595514, 26.737055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285329, -0.678924, -0.676498,
		0.904057, -0.425012, 0.045229,
		-0.318227, -0.598687, 0.735054,
		33.847603, 28.415909, 26.957571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260914, 28.112930, 26.281624>,  <34.070362, 28.834990, 26.443033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260914, 28.112930, 26.281624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.964218, 28.069443, 26.546352>,  <33.786201, 28.043350, 26.705189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.964218, 28.069443, 26.546352>,  <34.260914, 28.112930, 26.281624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964218, 28.069443, 26.546352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445539, -0.657710, -0.607382,
		0.501318, -0.745385, 0.439411,
		-0.741738, -0.108716, 0.661819,
		33.741695, 28.036827, 26.744898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211800, 27.498034, 26.242161>,  <34.260914, 28.112930, 26.281624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211800, 27.498034, 26.242161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.866676, 27.626434, 26.398373>,  <33.659603, 27.703476, 26.492100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.866676, 27.626434, 26.398373>,  <34.211800, 27.498034, 26.242161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866676, 27.626434, 26.398373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501267, -0.643317, -0.578683,
		0.065474, -0.695054, 0.715971,
		-0.862812, 0.321004, 0.390528,
		33.607834, 27.722736, 26.515532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843597, 26.904100, 26.509453>,  <34.211800, 27.498034, 26.242161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843597, 26.904100, 26.509453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.550995, 27.173777, 26.468721>,  <33.375435, 27.335583, 26.444283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.550995, 27.173777, 26.468721>,  <33.843597, 26.904100, 26.509453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550995, 27.173777, 26.468721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447666, -0.587538, -0.674088,
		-0.514293, -0.447512, 0.731599,
		-0.731504, 0.674190, -0.101830,
		33.331543, 27.376034, 26.438171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203194, 26.527386, 26.363300>,  <33.843597, 26.904100, 26.509453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203194, 26.527386, 26.363300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.066891, 26.894007, 26.279566>,  <32.985111, 27.113979, 26.229324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.066891, 26.894007, 26.279566>,  <33.203194, 26.527386, 26.363300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066891, 26.894007, 26.279566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567075, -0.377972, -0.731822,
		-0.749875, -0.130663, 0.648548,
		-0.340755, 0.916550, -0.209336,
		32.964664, 27.168972, 26.216764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423676, 26.571249, 26.288542>,  <33.203194, 26.527386, 26.363300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423676, 26.571249, 26.288542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.585083, 26.866163, 26.071808>,  <32.681927, 27.043112, 25.941769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.585083, 26.866163, 26.071808>,  <32.423676, 26.571249, 26.288542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585083, 26.866163, 26.071808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554195, -0.274255, -0.785909,
		-0.728041, 0.617407, 0.297935,
		0.403515, 0.737288, -0.541833,
		32.706139, 27.087349, 25.909258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863857, 26.835716, 25.923283>,  <32.423676, 26.571249, 26.288542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863857, 26.835716, 25.923283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183239, 26.979603, 25.730173>,  <32.374870, 27.065935, 25.614307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.183239, 26.979603, 25.730173>,  <31.863857, 26.835716, 25.923283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.183239, 26.979603, 25.730173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483891, -0.093676, -0.870100,
		-0.358215, 0.928347, 0.099267,
		0.798456, 0.359717, -0.482775,
		32.422775, 27.087519, 25.585340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616995, 27.251650, 25.343838>,  <31.863857, 26.835716, 25.923283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616995, 27.251650, 25.343838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.998804, 27.191105, 25.241098>,  <32.227890, 27.154778, 25.179455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.998804, 27.191105, 25.241098>,  <31.616995, 27.251650, 25.343838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998804, 27.191105, 25.241098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265286, -0.038112, -0.963416,
		0.136035, 0.987743, -0.076533,
		0.954525, -0.151362, -0.256849,
		32.285160, 27.145697, 25.164043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705996, 27.573149, 24.716652>,  <31.616995, 27.251650, 25.343838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705996, 27.573149, 24.716652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.997725, 27.299524, 24.711819>,  <32.172764, 27.135349, 24.708920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.997725, 27.299524, 24.711819>,  <31.705996, 27.573149, 24.716652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997725, 27.299524, 24.711819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171147, -0.165314, -0.971278,
		0.662418, 0.710443, -0.237643,
		0.729323, -0.684063, -0.012084,
		32.216522, 27.094305, 24.708193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128689, 27.694201, 24.181053>,  <31.705996, 27.573149, 24.716652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128689, 27.694201, 24.181053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.195820, 27.305117, 24.245144>,  <32.236099, 27.071667, 24.283598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.195820, 27.305117, 24.245144>,  <32.128689, 27.694201, 24.181053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195820, 27.305117, 24.245144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214185, -0.194627, -0.957207,
		0.962268, 0.126324, -0.241003,
		0.167824, -0.972709, 0.160227,
		32.246166, 27.013304, 24.293211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505428, 27.468929, 23.667770>,  <32.128689, 27.694201, 24.181053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505428, 27.468929, 23.667770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.380413, 27.112940, 23.800594>,  <32.305405, 26.899345, 23.880289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.380413, 27.112940, 23.800594>,  <32.505428, 27.468929, 23.667770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380413, 27.112940, 23.800594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249666, -0.260317, -0.932685,
		0.916508, -0.374404, -0.140837,
		-0.312539, -0.889976, 0.332058,
		32.286652, 26.845947, 23.900211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810505, 26.964708, 23.138811>,  <32.505428, 27.468929, 23.667770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810505, 26.964708, 23.138811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.510490, 26.781895, 23.330048>,  <32.330482, 26.672207, 23.444790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.510490, 26.781895, 23.330048>,  <32.810505, 26.964708, 23.138811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510490, 26.781895, 23.330048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329608, -0.368406, -0.869273,
		0.573417, -0.809567, 0.125675,
		-0.750034, -0.457033, 0.478090,
		32.285480, 26.644785, 23.473475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799953, 26.288908, 22.856138>,  <32.810505, 26.964708, 23.138811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799953, 26.288908, 22.856138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.436131, 26.332237, 23.016621>,  <32.217834, 26.358234, 23.112911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.436131, 26.332237, 23.016621>,  <32.799953, 26.288908, 22.856138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436131, 26.332237, 23.016621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409222, -0.401626, -0.819289,
		0.072387, -0.909375, 0.409631,
		-0.909559, 0.108324, 0.401209,
		32.163261, 26.364735, 23.136984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462414, 25.573425, 22.894804>,  <32.799953, 26.288908, 22.856138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462414, 25.573425, 22.894804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.156700, 25.830626, 22.914490>,  <31.973272, 25.984945, 22.926302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.156700, 25.830626, 22.914490>,  <32.462414, 25.573425, 22.894804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156700, 25.830626, 22.914490> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480848, -0.517360, -0.707900,
		-0.429719, -0.564701, 0.704596,
		-0.764281, 0.643002, 0.049216,
		31.927416, 26.023525, 22.929255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865480, 25.130562, 22.859493>,  <32.462414, 25.573425, 22.894804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865480, 25.130562, 22.859493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.738689, 25.497137, 22.761786>,  <31.662615, 25.717083, 22.703161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.738689, 25.497137, 22.761786>,  <31.865480, 25.130562, 22.859493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738689, 25.497137, 22.761786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369460, -0.356518, -0.858134,
		-0.873513, -0.181760, 0.451595,
		-0.316977, 0.916438, -0.244270,
		31.643597, 25.772068, 22.688505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.105511, 25.160980, 22.663910>,  <31.865480, 25.130562, 22.859493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.105511, 25.160980, 22.663910> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.282038, 25.471773, 22.484339>,  <31.387955, 25.658249, 22.376596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.282038, 25.471773, 22.484339>,  <31.105511, 25.160980, 22.663910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282038, 25.471773, 22.484339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364892, -0.301669, -0.880824,
		-0.819812, 0.552533, 0.150383,
		0.441318, 0.776983, -0.448926,
		31.414433, 25.704868, 22.349661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660200, 25.535521, 22.164373>,  <31.105511, 25.160980, 22.663910>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660200, 25.535521, 22.164373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.041586, 25.561460, 22.046595>,  <31.270418, 25.577024, 21.975927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.041586, 25.561460, 22.046595>,  <30.660200, 25.535521, 22.164373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041586, 25.561460, 22.046595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271373, -0.240968, -0.931822,
		-0.131379, 0.968364, -0.212157,
		0.953466, 0.064848, -0.294446,
		31.327625, 25.580915, 21.958261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622349, 26.105423, 21.861359>,  <30.660200, 25.535521, 22.164373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622349, 26.105423, 21.861359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.858850, 25.805052, 21.743698>,  <31.000751, 25.624828, 21.673101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.858850, 25.805052, 21.743698>,  <30.622349, 26.105423, 21.861359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858850, 25.805052, 21.743698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472712, -0.027169, -0.880798,
		0.653425, 0.659824, -0.371037,
		0.591252, -0.750929, -0.294153,
		31.036226, 25.579773, 21.655453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615831, 26.889532, 21.999086>,  <30.622349, 26.105423, 21.861359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615831, 26.889532, 21.999086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.935320, 26.772564, 21.788742>,  <31.127014, 26.702383, 21.662535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.935320, 26.772564, 21.788742>,  <30.615831, 26.889532, 21.999086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935320, 26.772564, 21.788742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601278, 0.355199, 0.715750,
		-0.022515, -0.887875, 0.459532,
		0.798723, -0.292422, -0.525863,
		31.174936, 26.684837, 21.630983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.161106, 27.470497, 22.071218>,  <30.615831, 26.889532, 21.999086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.161106, 27.470497, 22.071218> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.859198, 27.678593, 21.911383>,  <29.678053, 27.803450, 21.815481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.859198, 27.678593, 21.911383>,  <30.161106, 27.470497, 22.071218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859198, 27.678593, 21.911383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057098, 0.658929, 0.750035,
		0.653499, 0.543289, -0.527044,
		-0.754771, 0.520240, -0.399589,
		29.632767, 27.834665, 21.791506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327843, 28.106386, 21.884258>,  <30.161106, 27.470497, 22.071218>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327843, 28.106386, 21.884258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.941366, 28.187044, 21.948521>,  <29.709480, 28.235439, 21.987078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.941366, 28.187044, 21.948521>,  <30.327843, 28.106386, 21.884258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941366, 28.187044, 21.948521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255575, 0.667056, 0.699799,
		0.033943, 0.717201, -0.696040,
		-0.966193, 0.201644, 0.160656,
		29.651508, 28.247538, 21.996717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226692, 28.832281, 22.090414>,  <30.327843, 28.106386, 21.884258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226692, 28.832281, 22.090414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.890860, 28.652550, 22.212532>,  <29.689360, 28.544710, 22.285803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.890860, 28.652550, 22.212532>,  <30.226692, 28.832281, 22.090414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890860, 28.652550, 22.212532> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122582, 0.390799, 0.912277,
		-0.529222, 0.803355, -0.273028,
		-0.839582, -0.449329, 0.305296,
		29.638985, 28.517752, 22.304121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.880400, 29.358912, 22.486353>,  <30.226692, 28.832281, 22.090414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.880400, 29.358912, 22.486353> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.743509, 29.002735, 22.606350>,  <29.661375, 28.789028, 22.678349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.743509, 29.002735, 22.606350>,  <29.880400, 29.358912, 22.486353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.743509, 29.002735, 22.606350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063744, 0.296531, 0.952893,
		-0.937454, 0.345226, -0.044720,
		-0.342225, -0.890443, 0.299991,
		29.640842, 28.735601, 22.696346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374762, 29.528341, 22.988766>,  <29.880400, 29.358912, 22.486353>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374762, 29.528341, 22.988766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.525396, 29.160067, 23.029789>,  <29.615776, 28.939102, 23.054403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.525396, 29.160067, 23.029789>,  <29.374762, 29.528341, 22.988766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525396, 29.160067, 23.029789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252035, 0.208357, 0.945022,
		-0.891438, -0.330033, 0.310510,
		0.376585, -0.920688, 0.102557,
		29.638372, 28.883860, 23.060556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051359, 29.271042, 23.614969>,  <29.374762, 29.528341, 22.988766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051359, 29.271042, 23.614969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.393656, 29.066820, 23.581409>,  <29.599033, 28.944288, 23.561274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.393656, 29.066820, 23.581409>,  <29.051359, 29.271042, 23.614969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393656, 29.066820, 23.581409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227809, 0.226202, 0.947067,
		-0.464551, -0.829558, 0.309879,
		0.855743, -0.510554, -0.083898,
		29.650379, 28.913654, 23.556240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243364, 29.388077, 24.260527>,  <29.051359, 29.271042, 23.614969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243364, 29.388077, 24.260527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.544680, 29.183081, 24.095644>,  <29.725468, 29.060083, 23.996714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.544680, 29.183081, 24.095644>,  <29.243364, 29.388077, 24.260527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544680, 29.183081, 24.095644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526864, 0.095069, 0.844616,
		-0.393667, -0.853415, 0.341626,
		0.753286, -0.512488, -0.412208,
		29.770666, 29.029335, 23.971981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381983, 28.800999, 24.706596>,  <29.243364, 29.388077, 24.260527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381983, 28.800999, 24.706596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.702806, 28.926327, 24.503212>,  <29.895300, 29.001524, 24.381182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.702806, 28.926327, 24.503212>,  <29.381983, 28.800999, 24.706596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702806, 28.926327, 24.503212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491752, 0.136703, 0.859937,
		0.338943, -0.939757, -0.044432,
		0.802058, 0.313320, -0.508462,
		29.943424, 29.020323, 24.350674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981129, 28.365393, 25.016645>,  <29.381983, 28.800999, 24.706596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981129, 28.365393, 25.016645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.151514, 28.672394, 24.825022>,  <30.253746, 28.856594, 24.710049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.151514, 28.672394, 24.825022>,  <29.981129, 28.365393, 25.016645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151514, 28.672394, 24.825022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516819, 0.228187, 0.825123,
		0.742598, -0.599060, -0.299459,
		0.425966, 0.767501, -0.479057,
		30.279305, 28.902643, 24.681305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656120, 28.252632, 24.985580>,  <29.981129, 28.365393, 25.016645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656120, 28.252632, 24.985580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.591230, 28.647238, 24.976908>,  <30.552296, 28.884001, 24.971704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.591230, 28.647238, 24.976908>,  <30.656120, 28.252632, 24.985580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.591230, 28.647238, 24.976908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518541, 0.103923, 0.848714,
		0.839522, 0.126442, -0.528408,
		-0.162227, 0.986515, -0.021680,
		30.542562, 28.943192, 24.970404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203941, 28.390087, 25.288361>,  <30.656120, 28.252632, 24.985580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203941, 28.390087, 25.288361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.005423, 28.737186, 25.298986>,  <30.886312, 28.945446, 25.305363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.005423, 28.737186, 25.298986>,  <31.203941, 28.390087, 25.288361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005423, 28.737186, 25.298986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428981, 0.218515, 0.876485,
		0.754762, 0.446393, -0.480695,
		-0.496296, 0.867747, 0.026567,
		30.856533, 28.997511, 25.306957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664934, 28.935642, 25.388859>,  <31.203941, 28.390087, 25.288361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664934, 28.935642, 25.388859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.318783, 29.094576, 25.511002>,  <31.111092, 29.189936, 25.584288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.318783, 29.094576, 25.511002>,  <31.664934, 28.935642, 25.388859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318783, 29.094576, 25.511002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340046, 0.018019, 0.940236,
		0.368087, 0.917497, -0.150705,
		-0.865379, 0.397336, 0.305359,
		31.059170, 29.213776, 25.602610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.754513, 29.598469, 25.682091>,  <31.664934, 28.935642, 25.388859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.754513, 29.598469, 25.682091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.419172, 29.458616, 25.849388>,  <31.217968, 29.374704, 25.949766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.419172, 29.458616, 25.849388>,  <31.754513, 29.598469, 25.682091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419172, 29.458616, 25.849388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379801, 0.175754, 0.908219,
		-0.391050, 0.920254, -0.014553,
		-0.838350, -0.349632, 0.418242,
		31.167667, 29.353727, 25.974861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.536451, 30.149725, 26.108519>,  <31.754513, 29.598469, 25.682091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.536451, 30.149725, 26.108519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.363115, 29.812643, 26.236307>,  <31.259113, 29.610394, 26.312981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.363115, 29.812643, 26.236307>,  <31.536451, 30.149725, 26.108519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363115, 29.812643, 26.236307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303517, 0.197314, 0.932172,
		-0.848584, 0.500912, 0.170272,
		-0.433339, -0.842706, 0.319473,
		31.233114, 29.559832, 26.332150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427261, 30.253929, 26.811537>,  <31.536451, 30.149725, 26.108519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427261, 30.253929, 26.811537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.340946, 29.863451, 26.820286>,  <31.289158, 29.629164, 26.825535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.340946, 29.863451, 26.820286>,  <31.427261, 30.253929, 26.811537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340946, 29.863451, 26.820286> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313159, -0.047972, 0.948488,
		-0.924861, 0.211521, 0.316056,
		-0.215787, -0.976195, 0.021872,
		31.276211, 29.570593, 26.826847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097315, 30.265179, 27.371494>,  <31.427261, 30.253929, 26.811537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097315, 30.265179, 27.371494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.192131, 29.883566, 27.298134>,  <31.249020, 29.654598, 27.254118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.192131, 29.883566, 27.298134>,  <31.097315, 30.265179, 27.371494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.192131, 29.883566, 27.298134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325916, -0.099749, 0.940122,
		-0.915200, -0.282619, 0.287290,
		0.237040, -0.954032, -0.183401,
		31.263243, 29.597357, 27.243114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822340, 29.866571, 27.825323>,  <31.097315, 30.265179, 27.371494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822340, 29.866571, 27.825323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.149748, 29.674498, 27.699181>,  <31.346193, 29.559254, 27.623495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.149748, 29.674498, 27.699181>,  <30.822340, 29.866571, 27.825323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149748, 29.674498, 27.699181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319830, -0.075108, 0.944493,
		-0.477216, -0.873947, 0.092100,
		0.818519, -0.480183, -0.315357,
		31.395304, 29.530443, 27.604574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974899, 29.393219, 28.436913>,  <30.822340, 29.866571, 27.825323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974899, 29.393219, 28.436913> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.299711, 29.419304, 28.204929>,  <31.494598, 29.434954, 28.065739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.299711, 29.419304, 28.204929>,  <30.974899, 29.393219, 28.436913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299711, 29.419304, 28.204929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582666, -0.033993, 0.812000,
		0.033239, -0.997292, -0.065601,
		0.812032, 0.065214, -0.579959,
		31.543322, 29.438868, 28.030941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491583, 28.887526, 28.713285>,  <30.974899, 29.393219, 28.436913>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491583, 28.887526, 28.713285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.681475, 29.166082, 28.498001>,  <31.795410, 29.333216, 28.368832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.681475, 29.166082, 28.498001>,  <31.491583, 28.887526, 28.713285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681475, 29.166082, 28.498001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623502, 0.165501, 0.764104,
		0.621190, -0.698317, -0.355634,
		0.474729, 0.696393, -0.538210,
		31.823893, 29.375000, 28.336538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155731, 28.803898, 28.920973>,  <31.491583, 28.887526, 28.713285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155731, 28.803898, 28.920973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.147785, 29.175323, 28.772718>,  <32.143017, 29.398180, 28.683765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.147785, 29.175323, 28.772718>,  <32.155731, 28.803898, 28.920973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.147785, 29.175323, 28.772718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570456, 0.314974, 0.758533,
		0.821088, -0.196362, -0.535963,
		-0.019868, 0.928565, -0.370637,
		32.141827, 29.453894, 28.661528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.054993, 29.236931, 30.662428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.780449, 29.515614, 30.745871>,  <36.615723, 29.682823, 30.795937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.780449, 29.515614, 30.745871>,  <37.054993, 29.236931, 30.662428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780449, 29.515614, 30.745871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599998, 0.380356, 0.703798,
		0.410995, 0.608220, -0.679081,
		-0.686357, 0.696705, 0.208606,
		36.574543, 29.724625, 30.808453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499798, 29.795708, 30.852751>,  <37.054993, 29.236931, 30.662428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.499798, 29.795708, 30.852751> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.144848, 29.883379, 31.014997>,  <36.931877, 29.935982, 31.112345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.144848, 29.883379, 31.014997>,  <37.499798, 29.795708, 30.852751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144848, 29.883379, 31.014997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460902, 0.399663, 0.792362,
		0.011559, 0.890073, -0.455671,
		-0.887376, 0.219179, 0.405617,
		36.878635, 29.949133, 31.136683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561878, 30.515078, 31.075731>,  <37.499798, 29.795708, 30.852751>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561878, 30.515078, 31.075731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.241459, 30.406771, 31.289276>,  <37.049210, 30.341787, 31.417404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.241459, 30.406771, 31.289276>,  <37.561878, 30.515078, 31.075731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241459, 30.406771, 31.289276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380799, 0.457622, 0.803476,
		-0.461863, 0.846916, -0.263468,
		-0.801046, -0.270768, 0.533863,
		37.001144, 30.325541, 31.449434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153614, 31.128672, 31.350384>,  <37.561878, 30.515078, 31.075731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153614, 31.128672, 31.350384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.069496, 30.822376, 31.593504>,  <37.019024, 30.638599, 31.739376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.069496, 30.822376, 31.593504>,  <37.153614, 31.128672, 31.350384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069496, 30.822376, 31.593504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187131, 0.578680, 0.793796,
		-0.959560, 0.280673, 0.021598,
		-0.210299, -0.765737, 0.607801,
		37.006405, 30.592655, 31.775845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911640, 31.458807, 31.891905>,  <37.153614, 31.128672, 31.350384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911640, 31.458807, 31.891905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.988312, 31.085682, 32.013966>,  <37.034317, 30.861807, 32.087204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.988312, 31.085682, 32.013966>,  <36.911640, 31.458807, 31.891905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988312, 31.085682, 32.013966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261821, 0.348251, 0.900095,
		-0.945890, -0.092638, 0.310984,
		0.191683, -0.932813, 0.305152,
		37.045818, 30.805838, 32.105511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.588287, 31.432327, 32.504795>,  <36.911640, 31.458807, 31.891905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.588287, 31.432327, 32.504795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.857250, 31.136580, 32.518654>,  <37.018627, 30.959131, 32.526970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.857250, 31.136580, 32.518654>,  <36.588287, 31.432327, 32.504795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857250, 31.136580, 32.518654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273977, 0.292101, 0.916304,
		-0.687609, -0.606636, 0.398981,
		0.672406, -0.739371, 0.034647,
		37.058971, 30.914768, 32.529049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516376, 31.150515, 33.112209>,  <36.588287, 31.432327, 32.504795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516376, 31.150515, 33.112209> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.885914, 31.050303, 32.996456>,  <37.107635, 30.990175, 32.927002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.885914, 31.050303, 32.996456>,  <36.516376, 31.150515, 33.112209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885914, 31.050303, 32.996456> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295808, -0.012496, 0.955166,
		-0.242917, -0.968027, 0.062565,
		0.923845, -0.250533, -0.289386,
		37.163067, 30.975143, 32.909641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707088, 30.727518, 33.617771>,  <36.516376, 31.150515, 33.112209>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707088, 30.727518, 33.617771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.052475, 30.820488, 33.438709>,  <37.259708, 30.876270, 33.331272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.052475, 30.820488, 33.438709>,  <36.707088, 30.727518, 33.617771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052475, 30.820488, 33.438709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444383, 0.069334, 0.893150,
		0.238630, -0.970140, -0.043419,
		0.863469, 0.232427, -0.447659,
		37.311516, 30.890215, 33.304413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293087, 30.384687, 34.005890>,  <36.707088, 30.727518, 33.617771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293087, 30.384687, 34.005890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.495838, 30.688190, 33.842247>,  <37.617489, 30.870293, 33.744061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.495838, 30.688190, 33.842247>,  <37.293087, 30.384687, 34.005890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495838, 30.688190, 33.842247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419967, 0.197093, 0.885879,
		0.752799, -0.620839, -0.218752,
		0.506874, 0.758758, -0.409103,
		37.647900, 30.915817, 33.719517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008785, 30.373549, 34.313602>,  <37.293087, 30.384687, 34.005890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008785, 30.373549, 34.313602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.969017, 30.739059, 34.156059>,  <37.945156, 30.958366, 34.061535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.969017, 30.739059, 34.156059>,  <38.008785, 30.373549, 34.313602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969017, 30.739059, 34.156059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544320, 0.381290, 0.747217,
		0.832965, -0.140092, -0.535298,
		-0.099424, 0.913779, -0.393856,
		37.939190, 31.013193, 34.037903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719978, 30.644794, 34.348927>,  <38.008785, 30.373549, 34.313602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719978, 30.644794, 34.348927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.465950, 30.953117, 34.328770>,  <38.313534, 31.138111, 34.316673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.465950, 30.953117, 34.328770>,  <38.719978, 30.644794, 34.348927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465950, 30.953117, 34.328770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459706, 0.429571, 0.777264,
		0.620768, 0.470452, -0.627153,
		-0.635072, 0.770807, -0.050394,
		38.275429, 31.184359, 34.313652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107521, 31.291323, 34.317551>,  <38.719978, 30.644794, 34.348927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107521, 31.291323, 34.317551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.744183, 31.348759, 34.474674>,  <38.526180, 31.383221, 34.568947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.744183, 31.348759, 34.474674>,  <39.107521, 31.291323, 34.317551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744183, 31.348759, 34.474674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415054, 0.424963, 0.804448,
		-0.051418, 0.893750, -0.445609,
		-0.908343, 0.143589, 0.392805,
		38.471680, 31.391836, 34.592514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159313, 31.892763, 34.608406>,  <39.107521, 31.291323, 34.317551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159313, 31.892763, 34.608406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.845592, 31.731585, 34.797085>,  <38.657360, 31.634876, 34.910294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.845592, 31.731585, 34.797085>,  <39.159313, 31.892763, 34.608406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845592, 31.731585, 34.797085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222639, 0.526871, 0.820268,
		-0.579048, 0.748359, -0.323516,
		-0.784306, -0.402947, 0.471697,
		38.610302, 31.610701, 34.938595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462200, 32.504757, 34.178841>,  <39.159313, 31.892763, 34.608406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462200, 32.504757, 34.178841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.616142, 32.803043, 34.396389>,  <39.708508, 32.982018, 34.526917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.616142, 32.803043, 34.396389>,  <39.462200, 32.504757, 34.178841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616142, 32.803043, 34.396389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603208, 0.649213, -0.463317,
		-0.698590, -0.149755, 0.699676,
		0.384855, 0.745718, 0.543867,
		39.731598, 33.026760, 34.559547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820488, 32.941940, 34.614891>,  <39.462200, 32.504757, 34.178841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820488, 32.941940, 34.614891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.156166, 33.099533, 34.464947>,  <39.357574, 33.194088, 34.374981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.156166, 33.099533, 34.464947>,  <38.820488, 32.941940, 34.614891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156166, 33.099533, 34.464947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543815, 0.612620, -0.573553,
		0.003677, 0.685180, 0.728364,
		0.839197, 0.393986, -0.374864,
		39.407925, 33.217728, 34.352486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662914, 33.626842, 34.515114>,  <38.820488, 32.941940, 34.614891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662914, 33.626842, 34.515114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.988258, 33.585754, 34.286068>,  <39.183464, 33.561100, 34.148640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.988258, 33.585754, 34.286068>,  <38.662914, 33.626842, 34.515114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988258, 33.585754, 34.286068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464744, 0.477333, -0.745766,
		0.349933, 0.872698, 0.340507,
		0.813363, -0.102720, -0.572616,
		39.232265, 33.554939, 34.114285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778702, 34.226761, 34.217026>,  <38.662914, 33.626842, 34.515114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778702, 34.226761, 34.217026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.975269, 33.972565, 33.978809>,  <39.093208, 33.820049, 33.835880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.975269, 33.972565, 33.978809>,  <38.778702, 34.226761, 34.217026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975269, 33.972565, 33.978809> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553767, 0.299778, -0.776837,
		0.672199, 0.711541, -0.204595,
		0.491418, -0.635486, -0.595538,
		39.122696, 33.781918, 33.800148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980610, 34.639359, 33.704407>,  <38.778702, 34.226761, 34.217026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980610, 34.639359, 33.704407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.977985, 34.258568, 33.581970>,  <38.976410, 34.030094, 33.508511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.977985, 34.258568, 33.581970>,  <38.980610, 34.639359, 33.704407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977985, 34.258568, 33.581970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557388, 0.257616, -0.789273,
		0.830226, 0.165427, -0.532314,
		-0.006566, -0.951981, -0.306087,
		38.976017, 33.972973, 33.490143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152111, 34.616268, 33.003742>,  <38.980610, 34.639359, 33.704407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152111, 34.616268, 33.003742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.946991, 34.285870, 33.097343>,  <38.823917, 34.087631, 33.153503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.946991, 34.285870, 33.097343>,  <39.152111, 34.616268, 33.003742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946991, 34.285870, 33.097343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585711, 0.137323, -0.798802,
		0.627677, -0.546686, -0.554217,
		-0.512800, -0.826001, 0.234006,
		38.793152, 34.038071, 33.167545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132988, 34.179298, 32.402473>,  <39.152111, 34.616268, 33.003742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132988, 34.179298, 32.402473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.816322, 34.047363, 32.608181>,  <38.626324, 33.968201, 32.731606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.816322, 34.047363, 32.608181>,  <39.132988, 34.179298, 32.402473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816322, 34.047363, 32.608181> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521602, -0.073392, -0.850026,
		0.318115, -0.941180, -0.113943,
		-0.791666, -0.329839, 0.514269,
		38.578823, 33.948414, 32.762463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.025234, 33.637760, 32.065971>,  <39.132988, 34.179298, 32.402473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.025234, 33.637760, 32.065971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.675835, 33.650108, 32.260307>,  <38.466194, 33.657516, 32.376907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.675835, 33.650108, 32.260307>,  <39.025234, 33.637760, 32.065971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675835, 33.650108, 32.260307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477455, -0.249125, -0.842599,
		0.095027, -0.967979, 0.232348,
		-0.873502, 0.030866, 0.485840,
		38.413784, 33.659367, 32.406059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708775, 33.028706, 31.805809>,  <39.025234, 33.637760, 32.065971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708775, 33.028706, 31.805809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.429974, 33.276737, 31.949862>,  <38.262695, 33.425556, 32.036293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.429974, 33.276737, 31.949862>,  <38.708775, 33.028706, 31.805809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429974, 33.276737, 31.949862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528622, -0.104980, -0.842341,
		-0.484511, -0.777484, 0.400958,
		-0.696999, 0.620079, 0.360132,
		38.220875, 33.462761, 32.057899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142597, 32.687401, 31.707510>,  <38.708775, 33.028706, 31.805809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142597, 32.687401, 31.707510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.998569, 33.057289, 31.756882>,  <37.912151, 33.279224, 31.786505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.998569, 33.057289, 31.756882>,  <38.142597, 32.687401, 31.707510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998569, 33.057289, 31.756882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685464, -0.172489, -0.707380,
		-0.632842, -0.339312, 0.695973,
		-0.360070, 0.924725, 0.123428,
		37.890549, 33.334705, 31.793911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413486, 32.645950, 31.734341>,  <38.142597, 32.687401, 31.707510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413486, 32.645950, 31.734341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.489666, 33.022224, 31.622021>,  <37.535374, 33.247990, 31.554628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.489666, 33.022224, 31.622021>,  <37.413486, 32.645950, 31.734341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489666, 33.022224, 31.622021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682649, -0.078657, -0.726501,
		-0.705493, 0.330047, 0.627175,
		0.190448, 0.940682, -0.280798,
		37.546799, 33.304428, 31.537781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718670, 33.047539, 31.811888>,  <37.413486, 32.645950, 31.734341>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718670, 33.047539, 31.811888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.964951, 33.240253, 31.562475>,  <37.112720, 33.355881, 31.412827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.964951, 33.240253, 31.562475>,  <36.718670, 33.047539, 31.811888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964951, 33.240253, 31.562475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591376, -0.240427, -0.769720,
		-0.520754, 0.842661, 0.136885,
		0.615703, 0.481785, -0.623533,
		37.149662, 33.384789, 31.375416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229946, 33.334808, 31.373184>,  <36.718670, 33.047539, 31.811888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229946, 33.334808, 31.373184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.584641, 33.324696, 31.188551>,  <36.797459, 33.318630, 31.077770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.584641, 33.324696, 31.188551>,  <36.229946, 33.334808, 31.373184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584641, 33.324696, 31.188551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454539, -0.229593, -0.860628,
		-0.084220, 0.972958, -0.215079,
		0.886736, -0.025280, -0.461584,
		36.850662, 33.317112, 31.050076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986343, 33.592312, 30.724230>,  <36.229946, 33.334808, 31.373184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986343, 33.592312, 30.724230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.363094, 33.472195, 30.663979>,  <36.589146, 33.400124, 30.627829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.363094, 33.472195, 30.663979>,  <35.986343, 33.592312, 30.724230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363094, 33.472195, 30.663979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221114, -0.216561, -0.950900,
		0.252929, 0.928938, -0.270373,
		0.941879, -0.300293, -0.150626,
		36.645657, 33.382107, 30.618792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186440, 33.898144, 30.136410>,  <35.986343, 33.592312, 30.724230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186440, 33.898144, 30.136410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.403263, 33.567318, 30.195923>,  <36.533356, 33.368824, 30.231630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.403263, 33.567318, 30.195923>,  <36.186440, 33.898144, 30.136410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.403263, 33.567318, 30.195923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186813, -0.291220, -0.938239,
		0.819314, 0.480785, -0.312364,
		0.542058, -0.827065, 0.148784,
		36.565880, 33.319199, 30.240559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163128, 34.387115, 29.581659>,  <36.186440, 33.898144, 30.136410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163128, 34.387115, 29.581659> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.812046, 34.568680, 29.520197>,  <35.601398, 34.677616, 29.483318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.812046, 34.568680, 29.520197>,  <36.163128, 34.387115, 29.581659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812046, 34.568680, 29.520197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118330, 0.516003, 0.848374,
		0.464371, 0.726436, -0.506607,
		-0.877700, 0.453907, -0.153658,
		35.548737, 34.704853, 29.474100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325108, 35.086563, 29.515932>,  <36.163128, 34.387115, 29.581659>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325108, 35.086563, 29.515932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.950237, 35.017872, 29.637403>,  <35.725315, 34.976658, 29.710287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.950237, 35.017872, 29.637403>,  <36.325108, 35.086563, 29.515932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950237, 35.017872, 29.637403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199749, 0.449534, 0.870643,
		-0.286025, 0.876601, -0.386988,
		-0.937171, -0.171725, 0.303679,
		35.669086, 34.966354, 29.728508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108871, 35.699574, 29.886456>,  <36.325108, 35.086563, 29.515932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108871, 35.699574, 29.886456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.838055, 35.425636, 29.994240>,  <35.675564, 35.261272, 30.058910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.838055, 35.425636, 29.994240>,  <36.108871, 35.699574, 29.886456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838055, 35.425636, 29.994240> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015437, 0.352849, 0.935553,
		-0.735785, 0.637565, -0.228320,
		-0.677039, -0.684842, 0.269463,
		35.634945, 35.220184, 30.075079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623905, 36.114521, 30.357780>,  <36.108871, 35.699574, 29.886456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623905, 36.114521, 30.357780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.528030, 35.732285, 30.426353>,  <35.470505, 35.502941, 30.467497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.528030, 35.732285, 30.426353>,  <35.623905, 36.114521, 30.357780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528030, 35.732285, 30.426353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169291, 0.215015, 0.961826,
		-0.955977, 0.201513, -0.213309,
		-0.239685, -0.955595, 0.171435,
		35.456123, 35.445606, 30.477783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993069, 36.082378, 30.751108>,  <35.623905, 36.114521, 30.357780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993069, 36.082378, 30.751108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.185646, 35.739529, 30.824381>,  <35.301193, 35.533821, 30.868343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.185646, 35.739529, 30.824381>,  <34.993069, 36.082378, 30.751108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185646, 35.739529, 30.824381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151883, 0.124248, 0.980558,
		-0.863217, -0.499906, -0.070363,
		0.481444, -0.857121, 0.183180,
		35.330078, 35.482391, 30.879335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540001, 35.723934, 31.182858>,  <34.993069, 36.082378, 30.751108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540001, 35.723934, 31.182858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.912544, 35.588657, 31.236830>,  <35.136070, 35.507492, 31.269213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.912544, 35.588657, 31.236830>,  <34.540001, 35.723934, 31.182858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912544, 35.588657, 31.236830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082428, 0.165118, 0.982823,
		-0.354659, -0.926479, 0.125908,
		0.931355, -0.338189, 0.134929,
		35.191952, 35.487202, 31.277308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503773, 35.572372, 31.847345>,  <34.540001, 35.723934, 31.182858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503773, 35.572372, 31.847345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.897034, 35.553848, 31.776621>,  <35.132992, 35.542736, 31.734186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.897034, 35.553848, 31.776621>,  <34.503773, 35.572372, 31.847345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897034, 35.553848, 31.776621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181428, 0.130092, 0.974762,
		-0.022138, -0.990420, 0.136302,
		0.983155, -0.046308, -0.176810,
		35.191978, 35.539955, 31.723577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785313, 35.066208, 32.349545>,  <34.503773, 35.572372, 31.847345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785313, 35.066208, 32.349545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.097454, 35.277554, 32.215748>,  <35.284740, 35.404362, 32.135471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.097454, 35.277554, 32.215748>,  <34.785313, 35.066208, 32.349545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097454, 35.277554, 32.215748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335016, 0.098422, 0.937058,
		0.528028, -0.843294, -0.100206,
		0.780352, 0.528364, -0.334487,
		35.331558, 35.436062, 32.115402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375805, 34.955189, 32.750687>,  <34.785313, 35.066208, 32.349545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375805, 34.955189, 32.750687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.510185, 35.292957, 32.583786>,  <35.590813, 35.495617, 32.483646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.510185, 35.292957, 32.583786>,  <35.375805, 34.955189, 32.750687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510185, 35.292957, 32.583786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434991, 0.253826, 0.863919,
		0.835418, -0.471729, -0.282043,
		0.335946, 0.844419, -0.417248,
		35.610970, 35.546284, 32.458611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055717, 35.157360, 33.054142>,  <35.375805, 34.955189, 32.750687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055717, 35.157360, 33.054142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.934383, 35.507050, 32.902500>,  <35.861584, 35.716866, 32.811516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.934383, 35.507050, 32.902500>,  <36.055717, 35.157360, 33.054142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934383, 35.507050, 32.902500> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241848, 0.455454, 0.856780,
		0.921683, 0.168202, -0.349583,
		-0.303331, 0.874225, -0.379105,
		35.843384, 35.769318, 32.788769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616875, 35.677235, 33.073212>,  <36.055717, 35.157360, 33.054142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616875, 35.677235, 33.073212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.264381, 35.865829, 33.086617>,  <36.052883, 35.978985, 33.094662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.264381, 35.865829, 33.086617>,  <36.616875, 35.677235, 33.073212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264381, 35.865829, 33.086617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310298, 0.523563, 0.793472,
		0.356561, 0.709637, -0.607683,
		-0.881238, 0.471484, 0.033517,
		36.000011, 36.007275, 33.096672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.750362, 36.338451, 33.198429>,  <36.616875, 35.677235, 33.073212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.750362, 36.338451, 33.198429> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.364273, 36.308578, 33.298641>,  <36.132618, 36.290653, 33.358768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.364273, 36.308578, 33.298641>,  <36.750362, 36.338451, 33.198429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364273, 36.308578, 33.298641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171017, 0.544446, 0.821177,
		-0.197730, 0.835465, -0.512739,
		-0.965223, -0.074684, 0.250532,
		36.074707, 36.286175, 33.373802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.429909, 34.333271, 26.031490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033470, 34.284607, 26.009855>,  <34.795609, 34.255409, 25.996874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033470, 34.284607, 26.009855>,  <35.429909, 34.333271, 26.031490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033470, 34.284607, 26.009855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086600, 0.280507, 0.955937,
		-0.101125, 0.952111, -0.288545,
		-0.991097, -0.121657, -0.054087,
		34.736141, 34.248112, 25.993629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142063, 34.980236, 26.151735>,  <35.429909, 34.333271, 26.031490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142063, 34.980236, 26.151735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895920, 34.681419, 26.252344>,  <34.748234, 34.502129, 26.312710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895920, 34.681419, 26.252344>,  <35.142063, 34.980236, 26.151735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895920, 34.681419, 26.252344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005721, 0.314848, 0.949125,
		-0.788224, 0.585494, -0.189472,
		-0.615362, -0.747039, 0.251520,
		34.711311, 34.457306, 26.327801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616657, 35.290226, 26.565140>,  <35.142063, 34.980236, 26.151735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616657, 35.290226, 26.565140> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592815, 34.903652, 26.665102>,  <34.578510, 34.671707, 26.725079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592815, 34.903652, 26.665102>,  <34.616657, 35.290226, 26.565140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592815, 34.903652, 26.665102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095630, 0.243670, 0.965132,
		-0.993631, 0.081421, 0.077897,
		-0.059601, -0.966435, 0.249904,
		34.574936, 34.613720, 26.740074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375896, 35.325386, 27.238033>,  <34.616657, 35.290226, 26.565140>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375896, 35.325386, 27.238033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507504, 34.949509, 27.200674>,  <34.586468, 34.723984, 27.178259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507504, 34.949509, 27.200674>,  <34.375896, 35.325386, 27.238033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507504, 34.949509, 27.200674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253854, -0.007251, 0.967215,
		-0.909564, -0.341939, 0.236160,
		0.329017, -0.939694, -0.093398,
		34.606209, 34.667599, 27.172655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144348, 35.015778, 27.868263>,  <34.375896, 35.325386, 27.238033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144348, 35.015778, 27.868263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418327, 34.761967, 27.725033>,  <34.582714, 34.609680, 27.639093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.418327, 34.761967, 27.725033>,  <34.144348, 35.015778, 27.868263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418327, 34.761967, 27.725033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327249, -0.171175, 0.929305,
		-0.650966, -0.753704, 0.090404,
		0.684946, -0.634530, -0.358078,
		34.623810, 34.571609, 27.617609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093849, 34.548378, 28.350945>,  <34.144348, 35.015778, 27.868263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093849, 34.548378, 28.350945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448982, 34.512306, 28.170444>,  <34.662060, 34.490665, 28.062145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448982, 34.512306, 28.170444>,  <34.093849, 34.548378, 28.350945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448982, 34.512306, 28.170444> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430669, -0.182636, 0.883837,
		-0.162118, -0.979036, -0.123313,
		0.887830, -0.090179, -0.451249,
		34.715332, 34.485252, 28.035070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399616, 33.908237, 28.692112>,  <34.093849, 34.548378, 28.350945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399616, 33.908237, 28.692112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687622, 34.136261, 28.533815>,  <34.860424, 34.273075, 28.438837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687622, 34.136261, 28.533815>,  <34.399616, 33.908237, 28.692112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687622, 34.136261, 28.533815> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529246, -0.082222, 0.844475,
		0.448860, -0.817480, -0.360902,
		0.720016, 0.570057, -0.395742,
		34.903625, 34.307278, 28.415092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976944, 33.513165, 28.894747>,  <34.399616, 33.908237, 28.692112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976944, 33.513165, 28.894747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063015, 33.897270, 28.823658>,  <35.114658, 34.127735, 28.781004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063015, 33.897270, 28.823658>,  <34.976944, 33.513165, 28.894747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063015, 33.897270, 28.823658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347430, 0.094806, 0.932901,
		0.912684, -0.262482, -0.313227,
		0.215174, 0.960268, -0.177722,
		35.127567, 34.185352, 28.770342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718315, 33.776970, 29.315460>,  <34.976944, 33.513165, 28.894747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718315, 33.776970, 29.315460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512535, 34.106575, 29.220520>,  <35.389065, 34.304340, 29.163557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512535, 34.106575, 29.220520>,  <35.718315, 33.776970, 29.315460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512535, 34.106575, 29.220520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094335, 0.329490, 0.939435,
		0.852313, 0.460907, -0.247241,
		-0.514455, 0.824016, -0.237349,
		35.358200, 34.353779, 29.149315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450893, 33.724308, 29.430618>,  <35.718315, 33.776970, 29.315460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450893, 33.724308, 29.430618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560505, 33.401188, 29.639374>,  <36.626270, 33.207317, 29.764627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560505, 33.401188, 29.639374>,  <36.450893, 33.724308, 29.430618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560505, 33.401188, 29.639374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155169, -0.572690, -0.804953,
		0.949121, 0.139599, -0.282280,
		0.274030, -0.807798, 0.521890,
		36.642715, 33.158848, 29.795940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022236, 33.431557, 29.089664>,  <36.450893, 33.724308, 29.430618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022236, 33.431557, 29.089664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847816, 33.132626, 29.290211>,  <36.743164, 32.953266, 29.410538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847816, 33.132626, 29.290211>,  <37.022236, 33.431557, 29.089664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847816, 33.132626, 29.290211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012369, -0.562043, -0.827016,
		0.899840, -0.354415, 0.254320,
		-0.436045, -0.747327, 0.501365,
		36.717003, 32.908428, 29.440620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375462, 32.754288, 28.945513>,  <37.022236, 33.431557, 29.089664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375462, 32.754288, 28.945513> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010574, 32.649445, 29.071466>,  <36.791641, 32.586540, 29.147038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010574, 32.649445, 29.071466>,  <37.375462, 32.754288, 28.945513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010574, 32.649445, 29.071466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024555, -0.732220, -0.680625,
		0.408958, -0.628613, 0.661512,
		-0.912223, -0.262104, 0.314883,
		36.736908, 32.570812, 29.165932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295303, 32.000240, 28.766327>,  <37.375462, 32.754288, 28.945513>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295303, 32.000240, 28.766327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920956, 32.082993, 28.880409>,  <36.696346, 32.132645, 28.948858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920956, 32.082993, 28.880409>,  <37.295303, 32.000240, 28.766327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920956, 32.082993, 28.880409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346752, -0.684371, -0.641404,
		0.062495, -0.699169, 0.712220,
		-0.935872, 0.206879, 0.285208,
		36.640194, 32.145058, 28.965971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005638, 31.343582, 28.937143>,  <37.295303, 32.000240, 28.766327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005638, 31.343582, 28.937143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716118, 31.607315, 28.855764>,  <36.542404, 31.765554, 28.806936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716118, 31.607315, 28.855764>,  <37.005638, 31.343582, 28.937143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716118, 31.607315, 28.855764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406896, -0.645980, -0.645868,
		-0.557264, -0.384699, 0.735842,
		-0.723804, 0.659330, -0.203448,
		36.498978, 31.805115, 28.794729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429592, 31.009403, 28.854771>,  <37.005638, 31.343582, 28.937143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429592, 31.009403, 28.854771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338467, 31.346874, 28.660324>,  <36.283791, 31.549356, 28.543655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338467, 31.346874, 28.660324>,  <36.429592, 31.009403, 28.854771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338467, 31.346874, 28.660324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411639, -0.535888, -0.737141,
		-0.882413, 0.032173, 0.469374,
		-0.227816, 0.843676, -0.486118,
		36.270123, 31.599977, 28.514488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.706436, 31.053984, 28.798481>,  <36.429592, 31.009403, 28.854771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.706436, 31.053984, 28.798481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877064, 31.265211, 28.504765>,  <35.979439, 31.391949, 28.328535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877064, 31.265211, 28.504765>,  <35.706436, 31.053984, 28.798481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877064, 31.265211, 28.504765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654752, -0.379798, -0.653493,
		-0.623972, 0.759537, 0.183746,
		0.426566, 0.528070, -0.734291,
		36.005035, 31.423632, 28.284477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235031, 31.201311, 28.405788>,  <35.706436, 31.053984, 28.798481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235031, 31.201311, 28.405788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519794, 31.316477, 28.149570>,  <35.690651, 31.385576, 27.995840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519794, 31.316477, 28.149570>,  <35.235031, 31.201311, 28.405788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519794, 31.316477, 28.149570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548378, -0.341889, -0.763147,
		-0.438715, 0.894549, -0.085507,
		0.711906, 0.287914, -0.640543,
		35.733368, 31.402851, 27.957407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886738, 31.467400, 27.839167>,  <35.235031, 31.201311, 28.405788>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886738, 31.467400, 27.839167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250111, 31.391041, 27.690409>,  <35.468136, 31.345224, 27.601154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250111, 31.391041, 27.690409>,  <34.886738, 31.467400, 27.839167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250111, 31.391041, 27.690409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417941, -0.432819, -0.798745,
		-0.008484, 0.881037, -0.472972,
		0.908435, -0.190898, -0.371893,
		35.522640, 31.333771, 27.578840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862339, 31.659269, 27.183636>,  <34.886738, 31.467400, 27.839167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862339, 31.659269, 27.183636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176216, 31.411480, 27.174627>,  <35.364544, 31.262806, 27.169222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176216, 31.411480, 27.174627>,  <34.862339, 31.659269, 27.183636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176216, 31.411480, 27.174627> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361701, -0.428066, -0.828210,
		0.503412, 0.658039, -0.559965,
		0.784696, -0.619471, -0.022519,
		35.411625, 31.225639, 27.167871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188004, 31.811304, 26.557880>,  <34.862339, 31.659269, 27.183636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188004, 31.811304, 26.557880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288788, 31.451120, 26.699690>,  <35.349258, 31.235010, 26.784775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288788, 31.451120, 26.699690>,  <35.188004, 31.811304, 26.557880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288788, 31.451120, 26.699690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255257, -0.415208, -0.873181,
		0.933467, 0.129512, -0.334465,
		0.251960, -0.900460, 0.354524,
		35.364376, 31.180983, 26.806047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590061, 31.491327, 25.981285>,  <35.188004, 31.811304, 26.557880>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590061, 31.491327, 25.981285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496746, 31.191999, 26.229670>,  <35.440758, 31.012402, 26.378700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.496746, 31.191999, 26.229670>,  <35.590061, 31.491327, 25.981285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496746, 31.191999, 26.229670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123897, -0.610501, -0.782265,
		0.964482, -0.259429, 0.049708,
		-0.233289, -0.748322, 0.620959,
		35.426758, 30.967503, 26.415956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829704, 30.909788, 25.535431>,  <35.590061, 31.491327, 25.981285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829704, 30.909788, 25.535431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569572, 30.763290, 25.801645>,  <35.413494, 30.675392, 25.961374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569572, 30.763290, 25.801645>,  <35.829704, 30.909788, 25.535431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569572, 30.763290, 25.801645> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281569, -0.697486, -0.658963,
		0.705544, -0.615936, 0.350471,
		-0.650327, -0.366246, 0.665536,
		35.374474, 30.653416, 26.001307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903137, 30.141142, 25.493795>,  <35.829704, 30.909788, 25.535431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903137, 30.141142, 25.493795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529346, 30.220074, 25.612335>,  <35.305073, 30.267433, 25.683458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529346, 30.220074, 25.612335>,  <35.903137, 30.141142, 25.493795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529346, 30.220074, 25.612335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352246, -0.633534, -0.688881,
		0.051810, -0.748128, 0.661529,
		-0.934473, 0.197330, 0.296349,
		35.249004, 30.279272, 25.701241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<29.767101, 31.298500, 27.643606> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.001650, 31.586700, 27.495527>,  <30.142380, 31.759621, 27.406679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.001650, 31.586700, 27.495527>,  <29.767101, 31.298500, 27.643606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001650, 31.586700, 27.495527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355083, 0.182140, 0.916919,
		0.728070, -0.669106, -0.149037,
		0.586371, 0.720502, -0.370199,
		30.177561, 31.802851, 27.384468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.413330, 31.051773, 27.743055>,  <29.767101, 31.298500, 27.643606>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.413330, 31.051773, 27.743055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.433411, 31.450996, 27.728287>,  <30.445459, 31.690531, 27.719425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.433411, 31.450996, 27.728287>,  <30.413330, 31.051773, 27.743055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433411, 31.450996, 27.728287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492862, 0.007399, 0.870076,
		0.868658, -0.061876, -0.491532,
		0.050200, 0.998056, -0.036924,
		30.448471, 31.750414, 27.717209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079969, 31.229750, 28.113255>,  <30.413330, 31.051773, 27.743055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079969, 31.229750, 28.113255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.876490, 31.573975, 28.103010>,  <30.754402, 31.780510, 28.096863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.876490, 31.573975, 28.103010>,  <31.079969, 31.229750, 28.113255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876490, 31.573975, 28.103010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415747, 0.271590, 0.867982,
		0.753910, 0.430893, -0.495934,
		-0.508698, 0.860564, -0.025612,
		30.723881, 31.832144, 28.095327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564152, 31.793091, 28.279362>,  <31.079969, 31.229750, 28.113255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564152, 31.793091, 28.279362> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.210264, 31.971178, 28.334581>,  <30.997932, 32.078030, 28.367714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.210264, 31.971178, 28.334581>,  <31.564152, 31.793091, 28.279362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210264, 31.971178, 28.334581> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339798, 0.413273, 0.844833,
		0.319082, 0.794347, -0.516914,
		-0.884717, 0.445217, 0.138049,
		30.944849, 32.104744, 28.375996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732206, 32.536133, 28.203676>,  <31.564152, 31.793091, 28.279362>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732206, 32.536133, 28.203676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.402115, 32.479774, 28.422453>,  <31.204060, 32.445957, 28.553719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.402115, 32.479774, 28.422453>,  <31.732206, 32.536133, 28.203676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402115, 32.479774, 28.422453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430506, 0.469922, 0.770609,
		-0.365598, 0.871390, -0.327134,
		-0.825229, -0.140900, 0.546941,
		31.154547, 32.437504, 28.586535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647625, 33.127350, 28.545277>,  <31.732206, 32.536133, 28.203676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647625, 33.127350, 28.545277> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.443277, 32.860786, 28.762501>,  <31.320669, 32.700848, 28.892836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.443277, 32.860786, 28.762501>,  <31.647625, 33.127350, 28.545277>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443277, 32.860786, 28.762501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424428, 0.353831, 0.833466,
		-0.747580, 0.656281, 0.102081,
		-0.510868, -0.666408, 0.543060,
		31.290016, 32.660866, 28.925419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641619, 33.408573, 29.064323>,  <31.647625, 33.127350, 28.545277>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641619, 33.408573, 29.064323> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.517620, 33.051205, 29.194374>,  <31.443220, 32.836784, 29.272404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.517620, 33.051205, 29.194374>,  <31.641619, 33.408573, 29.064323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517620, 33.051205, 29.194374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396365, 0.189388, 0.898347,
		-0.864174, 0.407353, 0.295409,
		-0.309997, -0.893418, 0.325125,
		31.424622, 32.783180, 29.291912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463915, 33.574394, 29.759897>,  <31.641619, 33.408573, 29.064323>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463915, 33.574394, 29.759897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.506224, 33.177025, 29.742395>,  <31.531609, 32.938602, 29.731894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.506224, 33.177025, 29.742395>,  <31.463915, 33.574394, 29.759897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506224, 33.177025, 29.742395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349284, -0.004082, 0.937008,
		-0.931028, -0.114391, 0.346557,
		0.105770, -0.993427, -0.043755,
		31.537954, 32.878998, 29.729269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101646, 33.303368, 30.332590>,  <31.463915, 33.574394, 29.759897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101646, 33.303368, 30.332590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.350216, 32.999645, 30.255354>,  <31.499357, 32.817410, 30.209011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.350216, 32.999645, 30.255354>,  <31.101646, 33.303368, 30.332590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350216, 32.999645, 30.255354> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241819, -0.048539, 0.969107,
		-0.745223, -0.648918, 0.153452,
		0.621422, -0.759308, -0.193093,
		31.536642, 32.771854, 30.197426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959305, 32.739655, 30.845345>,  <31.101646, 33.303368, 30.332590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959305, 32.739655, 30.845345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.320919, 32.655186, 30.696682>,  <31.537888, 32.604504, 30.607485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.320919, 32.655186, 30.696682>,  <30.959305, 32.739655, 30.845345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320919, 32.655186, 30.696682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341752, -0.165201, 0.925156,
		-0.256763, -0.963388, -0.077180,
		0.904034, -0.211170, -0.371657,
		31.592129, 32.591835, 30.585184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112226, 32.104984, 31.057674>,  <30.959305, 32.739655, 30.845345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112226, 32.104984, 31.057674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.457464, 32.283234, 30.962606>,  <31.664608, 32.390182, 30.905565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.457464, 32.283234, 30.962606>,  <31.112226, 32.104984, 31.057674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457464, 32.283234, 30.962606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375676, -0.251962, 0.891842,
		0.337539, -0.859033, -0.384876,
		0.863096, 0.445620, -0.237671,
		31.716393, 32.416920, 30.891306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665421, 31.786535, 31.439083>,  <31.112226, 32.104984, 31.057674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665421, 31.786535, 31.439083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.857841, 32.112999, 31.311037>,  <31.973295, 32.308876, 31.234209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.857841, 32.112999, 31.311037>,  <31.665421, 31.786535, 31.439083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857841, 32.112999, 31.311037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630806, -0.068659, 0.772897,
		0.608827, -0.573736, -0.547866,
		0.481054, 0.816158, -0.320115,
		32.002159, 32.357845, 31.215002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401070, 31.682528, 31.566967>,  <31.665421, 31.786535, 31.439083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401070, 31.682528, 31.566967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.386520, 32.080326, 31.527670>,  <32.377792, 32.319004, 31.504091>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.386520, 32.080326, 31.527670>,  <32.401070, 31.682528, 31.566967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386520, 32.080326, 31.527670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412573, 0.104482, 0.904913,
		0.910198, -0.007620, -0.414103,
		-0.036370, 0.994497, -0.098243,
		32.375610, 32.378674, 31.498198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052517, 31.964512, 31.767336>,  <32.401070, 31.682528, 31.566967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.052517, 31.964512, 31.767336> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.790478, 32.265434, 31.795288>,  <32.633255, 32.445988, 31.812059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.790478, 32.265434, 31.795288>,  <33.052517, 31.964512, 31.767336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790478, 32.265434, 31.795288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341526, 0.212352, 0.915569,
		0.673950, 0.623652, -0.396043,
		-0.655097, 0.752306, 0.069878,
		32.593948, 32.491127, 31.816252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726547, 31.956066, 31.632996>,  <33.052517, 31.964512, 31.767336>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726547, 31.956066, 31.632996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.731438, 31.592066, 31.798767>,  <33.734371, 31.373667, 31.898230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.731438, 31.592066, 31.798767>,  <33.726547, 31.956066, 31.632996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731438, 31.592066, 31.798767> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340200, -0.393522, -0.854052,
		0.940274, -0.130546, -0.314394,
		0.012228, -0.909999, 0.414430,
		33.735107, 31.319065, 31.923096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999340, 31.437283, 31.116207>,  <33.726547, 31.956066, 31.632996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999340, 31.437283, 31.116207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.788769, 31.215816, 31.374302>,  <33.662426, 31.082937, 31.529160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.788769, 31.215816, 31.374302>,  <33.999340, 31.437283, 31.116207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788769, 31.215816, 31.374302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225460, -0.640832, -0.733827,
		0.819784, -0.531779, 0.212520,
		-0.526424, -0.553665, 0.645239,
		33.630840, 31.049717, 31.567873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.173393, 30.784031, 30.940329>,  <33.999340, 31.437283, 31.116207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.173393, 30.784031, 30.940329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.841599, 30.719704, 31.154276>,  <33.642521, 30.681107, 31.282644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.841599, 30.719704, 31.154276>,  <34.173393, 30.784031, 30.940329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841599, 30.719704, 31.154276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354445, -0.588529, -0.726638,
		0.431642, -0.792320, 0.431177,
		-0.829490, -0.160819, 0.534868,
		33.592751, 30.671457, 31.314735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964001, 30.140688, 30.732389>,  <34.173393, 30.784031, 30.940329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964001, 30.140688, 30.732389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.639534, 30.311546, 30.892168>,  <33.444855, 30.414062, 30.988035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.639534, 30.311546, 30.892168>,  <33.964001, 30.140688, 30.732389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639534, 30.311546, 30.892168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569768, -0.423268, -0.704421,
		-0.131818, -0.798993, 0.586715,
		-0.811165, 0.427147, 0.399446,
		33.396183, 30.439690, 31.012001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.421234, 29.561527, 30.837877>,  <33.964001, 30.140688, 30.732389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.421234, 29.561527, 30.837877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.226357, 29.908136, 30.794470>,  <33.109428, 30.116102, 30.768425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.226357, 29.908136, 30.794470>,  <33.421234, 29.561527, 30.837877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.226357, 29.908136, 30.794470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503882, -0.380421, -0.775489,
		-0.713263, -0.323133, 0.621965,
		-0.487195, 0.866525, -0.108519,
		33.080196, 30.168093, 30.761913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.677383, 29.406040, 30.684696>,  <33.421234, 29.561527, 30.837877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.677383, 29.406040, 30.684696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.731270, 29.781378, 30.557344>,  <32.763603, 30.006580, 30.480934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.731270, 29.781378, 30.557344>,  <32.677383, 29.406040, 30.684696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731270, 29.781378, 30.557344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471843, -0.221791, -0.853330,
		-0.871329, 0.265185, 0.412871,
		0.134719, 0.938342, -0.318379,
		32.771687, 30.062880, 30.461830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021847, 29.597485, 30.464033>,  <32.677383, 29.406040, 30.684696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021847, 29.597485, 30.464033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.278896, 29.842569, 30.280025>,  <32.433128, 29.989620, 30.169621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.278896, 29.842569, 30.280025>,  <32.021847, 29.597485, 30.464033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278896, 29.842569, 30.280025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388623, -0.256773, -0.884895,
		-0.660305, 0.747431, 0.073105,
		0.642627, 0.612711, -0.460017,
		32.471684, 30.026382, 30.142021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621334, 29.854572, 29.922501>,  <32.021847, 29.597485, 30.464033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621334, 29.854572, 29.922501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.980652, 29.983225, 29.802753>,  <32.196243, 30.060417, 29.730906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.980652, 29.983225, 29.802753>,  <31.621334, 29.854572, 29.922501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980652, 29.983225, 29.802753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286609, -0.087525, -0.954041,
		-0.333053, 0.942811, 0.013560,
		0.898293, 0.321633, -0.299368,
		32.250141, 30.079714, 29.712942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519405, 30.365730, 29.390163>,  <31.621334, 29.854572, 29.922501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519405, 30.365730, 29.390163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.893444, 30.249208, 29.309435>,  <32.117867, 30.179296, 29.260998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.893444, 30.249208, 29.309435>,  <31.519405, 30.365730, 29.390163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893444, 30.249208, 29.309435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256969, -0.165178, -0.952199,
		0.244042, 0.942263, -0.229313,
		0.935099, -0.291303, -0.201822,
		32.173973, 30.161818, 29.248888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786951, 30.727800, 28.734861>,  <31.519405, 30.365730, 29.390163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786951, 30.727800, 28.734861> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.991884, 30.389708, 28.795656>,  <32.114845, 30.186852, 28.832134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.991884, 30.389708, 28.795656>,  <31.786951, 30.727800, 28.734861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991884, 30.389708, 28.795656> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215822, -0.298023, -0.929840,
		0.831226, 0.443585, -0.335106,
		0.512333, -0.845230, 0.151989,
		32.145584, 30.136139, 28.841253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.124809, 30.593393, 28.135639>,  <31.786951, 30.727800, 28.734861>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.124809, 30.593393, 28.135639> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.128086, 30.231142, 28.305235>,  <32.130051, 30.013790, 28.406992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.128086, 30.231142, 28.305235>,  <32.124809, 30.593393, 28.135639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.128086, 30.231142, 28.305235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437428, -0.384528, -0.812893,
		0.899216, -0.178809, -0.399296,
		0.008188, -0.905630, 0.423990,
		32.130543, 29.959454, 28.432432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.491589, 30.186903, 27.622290>,  <32.124809, 30.593393, 28.135639>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.491589, 30.186903, 27.622290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.281483, 29.944077, 27.860807>,  <32.155418, 29.798380, 28.003918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.281483, 29.944077, 27.860807>,  <32.491589, 30.186903, 27.622290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281483, 29.944077, 27.860807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280751, -0.537877, -0.794901,
		0.803292, -0.584942, 0.112093,
		-0.525263, -0.607067, 0.596295,
		32.123905, 29.761957, 28.039696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647018, 29.511965, 27.387033>,  <32.491589, 30.186903, 27.622290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647018, 29.511965, 27.387033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.291630, 29.524797, 27.570158>,  <32.078396, 29.532497, 27.680033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.291630, 29.524797, 27.570158>,  <32.647018, 29.511965, 27.387033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291630, 29.524797, 27.570158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436229, -0.368921, -0.820732,
		0.142568, -0.928907, 0.341770,
		-0.888470, 0.032080, 0.457812,
		32.025089, 29.534422, 27.707502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455639, 28.914509, 27.237896>,  <32.647018, 29.511965, 27.387033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455639, 28.914509, 27.237896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.111164, 29.090288, 27.340069>,  <31.904480, 29.195757, 27.401373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.111164, 29.090288, 27.340069>,  <32.455639, 28.914509, 27.237896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.111164, 29.090288, 27.340069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446484, -0.413827, -0.793347,
		-0.242930, -0.797265, 0.552588,
		-0.861184, 0.439450, 0.255435,
		31.852810, 29.222124, 27.416698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.527893, 28.147905, 27.169043>,  <32.455639, 28.914509, 27.237896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.527893, 28.147905, 27.169043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.836388, 27.974585, 26.982519>,  <33.021484, 27.870592, 26.870605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.836388, 27.974585, 26.982519>,  <32.527893, 28.147905, 27.169043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836388, 27.974585, 26.982519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631994, 0.433748, 0.642220,
		-0.076016, -0.790008, 0.608366,
		0.771236, -0.433302, -0.466308,
		33.067760, 27.844593, 26.842627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900284, 27.768349, 27.684633>,  <32.527893, 28.147905, 27.169043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900284, 27.768349, 27.684633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.144691, 27.862991, 27.382462>,  <33.291336, 27.919777, 27.201159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.144691, 27.862991, 27.382462>,  <32.900284, 27.768349, 27.684633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144691, 27.862991, 27.382462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634617, 0.424032, 0.646110,
		0.473200, -0.874194, 0.108937,
		0.611018, 0.236606, -0.755430,
		33.327995, 27.933973, 27.155832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537647, 27.611364, 27.967388>,  <32.900284, 27.768349, 27.684633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537647, 27.611364, 27.967388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.632370, 27.818224, 27.638395>,  <33.689205, 27.942341, 27.441000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.632370, 27.818224, 27.638395>,  <33.537647, 27.611364, 27.967388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632370, 27.818224, 27.638395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778920, 0.404927, 0.478872,
		0.580694, -0.754049, -0.306928,
		0.236809, 0.517150, -0.822482,
		33.703411, 27.973370, 27.391651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253735, 27.523727, 27.955498>,  <33.537647, 27.611364, 27.967388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253735, 27.523727, 27.955498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.135471, 27.864183, 27.781996>,  <34.064514, 28.068457, 27.677895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.135471, 27.864183, 27.781996>,  <34.253735, 27.523727, 27.955498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135471, 27.864183, 27.781996> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716224, 0.497962, 0.488934,
		0.632145, -0.166106, -0.756836,
		-0.295661, 0.851142, -0.433754,
		34.046772, 28.119526, 27.651869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835030, 27.950350, 27.836748>,  <34.253735, 27.523727, 27.955498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835030, 27.950350, 27.836748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.539043, 28.219156, 27.825140>,  <34.361450, 28.380440, 27.818174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.539043, 28.219156, 27.825140>,  <34.835030, 27.950350, 27.836748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539043, 28.219156, 27.825140> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603989, 0.682814, 0.411049,
		0.296046, 0.286636, -0.911151,
		-0.739968, 0.672015, -0.029020,
		34.317055, 28.420761, 27.816435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203331, 28.567146, 27.670132>,  <34.835030, 27.950350, 27.836748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203331, 28.567146, 27.670132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.846821, 28.688309, 27.805111>,  <34.632915, 28.761005, 27.886099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.846821, 28.688309, 27.805111>,  <35.203331, 28.567146, 27.670132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846821, 28.688309, 27.805111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448879, 0.483899, 0.751232,
		0.064262, 0.821030, -0.567257,
		-0.891279, 0.302906, 0.337447,
		34.579437, 28.779181, 27.906345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317963, 29.340183, 27.827522>,  <35.203331, 28.567146, 27.670132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317963, 29.340183, 27.827522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.996513, 29.180925, 28.004459>,  <34.803642, 29.085371, 28.110622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.996513, 29.180925, 28.004459>,  <35.317963, 29.340183, 27.827522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996513, 29.180925, 28.004459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249841, 0.448900, 0.857944,
		-0.540152, 0.799982, -0.261275,
		-0.803626, -0.398143, 0.442343,
		34.755424, 29.061481, 28.137161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040051, 29.906126, 28.177977>,  <35.317963, 29.340183, 27.827522>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040051, 29.906126, 28.177977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.909565, 29.595455, 28.393515>,  <34.831272, 29.409052, 28.522837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.909565, 29.595455, 28.393515>,  <35.040051, 29.906126, 28.177977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909565, 29.595455, 28.393515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162695, 0.515392, 0.841369,
		-0.931190, 0.362134, -0.041766,
		-0.326214, -0.776679, 0.538845,
		34.811699, 29.362452, 28.555168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551365, 30.127235, 28.736677>,  <35.040051, 29.906126, 28.177977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551365, 30.127235, 28.736677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.711933, 29.779634, 28.852396>,  <34.808273, 29.571074, 28.921827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.711933, 29.779634, 28.852396>,  <34.551365, 30.127235, 28.736677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711933, 29.779634, 28.852396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289733, 0.420129, 0.859969,
		-0.868858, -0.261393, 0.420428,
		0.401424, -0.869002, 0.289298,
		34.832359, 29.518934, 28.939186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564960, 30.203739, 29.490215>,  <34.551365, 30.127235, 28.736677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564960, 30.203739, 29.490215> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.772755, 29.865509, 29.441004>,  <34.897430, 29.662571, 29.411476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.772755, 29.865509, 29.441004>,  <34.564960, 30.203739, 29.490215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772755, 29.865509, 29.441004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464934, 0.158914, 0.870966,
		-0.716915, -0.509658, 0.475690,
		0.519489, -0.845574, -0.123030,
		34.928600, 29.611837, 29.404095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590885, 29.730719, 30.177799>,  <34.564960, 30.203739, 29.490215>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590885, 29.730719, 30.177799> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.899067, 29.630404, 29.943361>,  <35.083977, 29.570215, 29.802698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.899067, 29.630404, 29.943361>,  <34.590885, 29.730719, 30.177799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899067, 29.630404, 29.943361> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622512, 0.097824, 0.776472,
		-0.137396, -0.963087, 0.231487,
		0.770455, -0.250788, -0.586093,
		35.130203, 29.555166, 29.767534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045162, 29.339474, 30.635651>,  <34.590885, 29.730719, 30.177799>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045162, 29.339474, 30.635651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.292824, 29.468643, 30.349333>,  <35.441422, 29.546144, 30.177542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.292824, 29.468643, 30.349333>,  <35.045162, 29.339474, 30.635651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292824, 29.468643, 30.349333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740385, 0.063688, 0.669159,
		0.261675, -0.944280, -0.199654,
		0.619158, 0.322923, -0.715797,
		35.478573, 29.565519, 30.134594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606701, 28.912016, 30.798161>,  <35.045162, 29.339474, 30.635651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606701, 28.912016, 30.798161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.725338, 29.237003, 30.597389>,  <35.796520, 29.431995, 30.476927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.725338, 29.237003, 30.597389>,  <35.606701, 28.912016, 30.798161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725338, 29.237003, 30.597389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697840, 0.174424, 0.694691,
		0.651962, -0.556304, -0.515240,
		0.296589, 0.812467, -0.501929,
		35.814316, 29.480743, 30.446810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358318, 28.867273, 30.838629>,  <35.606701, 28.912016, 30.798161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358318, 28.867273, 30.838629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.257267, 29.243402, 30.747440>,  <36.196636, 29.469080, 30.692728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.257267, 29.243402, 30.747440>,  <36.358318, 28.867273, 30.838629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257267, 29.243402, 30.747440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645057, 0.339292, 0.684677,
		0.721167, 0.025913, -0.692276,
		-0.252626, 0.940324, -0.227971,
		36.181480, 29.525499, 30.679049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.631435, 29.372742, 25.543236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.354427, 29.661215, 25.536121>,  <35.188225, 29.834299, 25.531853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.354427, 29.661215, 25.536121>,  <35.631435, 29.372742, 25.543236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354427, 29.661215, 25.536121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449564, -0.450715, -0.771199,
		-0.564192, -0.526072, 0.636346,
		-0.692517, 0.721182, -0.017787,
		35.146671, 29.877569, 25.530787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020782, 29.086176, 25.717865>,  <35.631435, 29.372742, 25.543236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020782, 29.086176, 25.717865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.908737, 29.419224, 25.526749>,  <34.841511, 29.619053, 25.412079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.908737, 29.419224, 25.526749>,  <35.020782, 29.086176, 25.717865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908737, 29.419224, 25.526749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622388, -0.536452, -0.569958,
		-0.730869, 0.137719, 0.668478,
		-0.280113, 0.832618, -0.477791,
		34.824703, 29.669010, 25.383411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321220, 28.975777, 25.554354>,  <35.020782, 29.086176, 25.717865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321220, 28.975777, 25.554354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.432911, 29.268175, 25.305300>,  <34.499928, 29.443615, 25.155867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.432911, 29.268175, 25.305300>,  <34.321220, 28.975777, 25.554354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432911, 29.268175, 25.305300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524482, -0.427046, -0.736580,
		-0.804332, 0.532235, 0.264151,
		0.279229, 0.730998, -0.622634,
		34.516678, 29.487474, 25.118509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735275, 29.142065, 25.166742>,  <34.321220, 28.975777, 25.554354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735275, 29.142065, 25.166742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.053532, 29.265049, 24.957964>,  <34.244484, 29.338839, 24.832697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.053532, 29.265049, 24.957964>,  <33.735275, 29.142065, 25.166742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053532, 29.265049, 24.957964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447759, -0.281837, -0.848575,
		-0.408005, 0.908866, -0.086574,
		0.795640, 0.307459, -0.521944,
		34.292225, 29.357286, 24.801380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468468, 28.977360, 24.516088>,  <33.735275, 29.142065, 25.166742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468468, 28.977360, 24.516088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.817665, 29.146410, 24.418713>,  <34.027184, 29.247841, 24.360287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.817665, 29.146410, 24.418713>,  <33.468468, 28.977360, 24.516088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817665, 29.146410, 24.418713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132266, -0.275277, -0.952223,
		-0.469449, 0.863486, -0.184417,
		0.872997, 0.422627, -0.243438,
		34.079563, 29.273199, 24.345680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387817, 29.520855, 24.011374>,  <33.468468, 28.977360, 24.516088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387817, 29.520855, 24.011374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.755024, 29.362265, 24.008579>,  <33.975349, 29.267111, 24.006903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.755024, 29.362265, 24.008579>,  <33.387817, 29.520855, 24.011374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755024, 29.362265, 24.008579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198874, -0.445100, -0.873118,
		0.343059, 0.802929, -0.487459,
		0.918019, -0.396474, -0.006986,
		34.030430, 29.243322, 24.006483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478237, 29.411146, 23.181778>,  <33.387817, 29.520855, 24.011374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478237, 29.411146, 23.181778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.730156, 29.194189, 23.404188>,  <33.881310, 29.064014, 23.537634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.730156, 29.194189, 23.404188>,  <33.478237, 29.411146, 23.181778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730156, 29.194189, 23.404188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073330, -0.754148, -0.652598,
		0.773288, 0.370232, -0.514736,
		0.629800, -0.542392, 0.556025,
		33.919094, 29.031471, 23.570995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048359, 29.348516, 22.680775>,  <33.478237, 29.411146, 23.181778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048359, 29.348516, 22.680775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.067547, 29.057028, 22.954025>,  <34.079060, 28.882133, 23.117975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.067547, 29.057028, 22.954025>,  <34.048359, 29.348516, 22.680775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067547, 29.057028, 22.954025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043448, -0.684788, -0.727446,
		0.997903, 0.005217, -0.064512,
		0.047972, -0.728724, 0.683125,
		34.081940, 28.838411, 23.158962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.568657, 28.987101, 22.464058>,  <34.048359, 29.348516, 22.680775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.568657, 28.987101, 22.464058> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.360100, 28.714687, 22.669716>,  <34.234966, 28.551239, 22.793110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.360100, 28.714687, 22.669716>,  <34.568657, 28.987101, 22.464058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360100, 28.714687, 22.669716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056072, -0.573879, -0.817018,
		0.851471, -0.454818, 0.261031,
		-0.521395, -0.681031, 0.514144,
		34.203682, 28.510378, 22.823959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809769, 28.274164, 22.268953>,  <34.568657, 28.987101, 22.464058>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809769, 28.274164, 22.268953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.457153, 28.193348, 22.439632>,  <34.245583, 28.144857, 22.542040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.457153, 28.193348, 22.439632>,  <34.809769, 28.274164, 22.268953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457153, 28.193348, 22.439632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235190, -0.595737, -0.767974,
		0.409362, -0.777352, 0.477646,
		-0.881538, -0.202041, 0.426697,
		34.192692, 28.132736, 22.567642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763363, 27.577719, 22.330860>,  <34.809769, 28.274164, 22.268953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763363, 27.577719, 22.330860> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.389122, 27.718309, 22.317551>,  <34.164577, 27.802664, 22.309565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.389122, 27.718309, 22.317551>,  <34.763363, 27.577719, 22.330860>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389122, 27.718309, 22.317551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201201, -0.608266, -0.767809,
		-0.290106, -0.711672, 0.639814,
		-0.935605, 0.351477, -0.033272,
		34.108440, 27.823753, 22.307570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243038, 27.069946, 22.431042>,  <34.763363, 27.577719, 22.330860>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243038, 27.069946, 22.431042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.015038, 27.342360, 22.247177>,  <33.878235, 27.505808, 22.136858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.015038, 27.342360, 22.247177>,  <34.243038, 27.069946, 22.431042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015038, 27.342360, 22.247177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534083, -0.732236, -0.422594,
		-0.624381, 0.004617, 0.781106,
		-0.570003, 0.681035, -0.459660,
		33.844036, 27.546671, 22.109280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.500408, 26.900673, 22.490404>,  <34.243038, 27.069946, 22.431042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.500408, 26.900673, 22.490404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.502190, 27.101597, 22.144533>,  <33.503258, 27.222151, 21.937012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.502190, 27.101597, 22.144533>,  <33.500408, 26.900673, 22.490404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502190, 27.101597, 22.144533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521781, -0.736475, -0.430522,
		-0.853067, 0.453088, 0.258819,
		0.004451, 0.502311, -0.864675,
		33.503525, 27.252291, 21.885130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258816, 26.330444, 21.975716>,  <33.500408, 26.900673, 22.490404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258816, 26.330444, 21.975716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.257423, 26.700993, 21.825075>,  <33.256588, 26.923321, 21.734692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.257423, 26.700993, 21.825075>,  <33.258816, 26.330444, 21.975716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257423, 26.700993, 21.825075> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427522, -0.341828, -0.836886,
		-0.903998, 0.158095, 0.397231,
		-0.003477, 0.926369, -0.376601,
		33.256382, 26.978903, 21.712095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616673, 26.537960, 21.828575>,  <33.258816, 26.330444, 21.975716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616673, 26.537960, 21.828575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.841705, 26.761793, 21.585142>,  <32.976723, 26.896093, 21.439083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.841705, 26.761793, 21.585142>,  <32.616673, 26.537960, 21.828575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841705, 26.761793, 21.585142> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473440, -0.385410, -0.792031,
		-0.677759, 0.733709, 0.048104,
		0.562580, 0.559581, -0.608582,
		33.010479, 26.929667, 21.402567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927408, 26.832071, 21.900625>,  <32.616673, 26.537960, 21.828575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927408, 26.832071, 21.900625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.752916, 26.495081, 22.027079>,  <31.648222, 26.292887, 22.102951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.752916, 26.495081, 22.027079>,  <31.927408, 26.832071, 21.900625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752916, 26.495081, 22.027079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051780, 0.327240, 0.943521,
		-0.898345, 0.427960, -0.099128,
		-0.436228, -0.842475, 0.316134,
		31.622047, 26.242338, 22.121920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281467, 27.022381, 22.264103>,  <31.927408, 26.832071, 21.900625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281467, 27.022381, 22.264103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422686, 26.669271, 22.388083>,  <31.507416, 26.457405, 22.462471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422686, 26.669271, 22.388083>,  <31.281467, 27.022381, 22.264103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422686, 26.669271, 22.388083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106131, 0.291356, 0.950709,
		-0.929567, -0.368538, 0.009172,
		0.353044, -0.882775, 0.309948,
		31.528599, 26.404438, 22.481068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.010334, 26.977175, 22.948303>,  <31.281467, 27.022381, 22.264103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.010334, 26.977175, 22.948303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.296400, 26.697634, 22.943462>,  <31.468040, 26.529909, 22.940557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.296400, 26.697634, 22.943462>,  <31.010334, 26.977175, 22.948303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.296400, 26.697634, 22.943462> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242335, 0.231677, 0.942125,
		-0.655602, -0.676707, 0.335043,
		0.715165, -0.698852, -0.012102,
		31.510950, 26.487978, 22.939831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994680, 26.640854, 23.620632>,  <31.010334, 26.977175, 22.948303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994680, 26.640854, 23.620632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.355335, 26.534481, 23.484201>,  <31.571728, 26.470657, 23.402344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.355335, 26.534481, 23.484201>,  <30.994680, 26.640854, 23.620632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355335, 26.534481, 23.484201> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380782, 0.114155, 0.917591,
		-0.205081, -0.957209, 0.204189,
		0.901636, -0.265932, -0.341077,
		31.625826, 26.454702, 23.381878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.308512, 26.056345, 24.081964>,  <30.994680, 26.640854, 23.620632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.308512, 26.056345, 24.081964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.615002, 26.227079, 23.889833>,  <31.798895, 26.329519, 23.774555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.615002, 26.227079, 23.889833>,  <31.308512, 26.056345, 24.081964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615002, 26.227079, 23.889833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447305, 0.182358, 0.875593,
		0.461325, -0.885752, -0.051198,
		0.766222, 0.426835, -0.480328,
		31.844868, 26.355129, 23.745735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888699, 25.721191, 24.333462>,  <31.308512, 26.056345, 24.081964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888699, 25.721191, 24.333462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.023098, 26.072500, 24.197378>,  <32.103737, 26.283285, 24.115728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.023098, 26.072500, 24.197378>,  <31.888699, 25.721191, 24.333462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023098, 26.072500, 24.197378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405588, 0.191082, 0.893860,
		0.850061, -0.438321, -0.292013,
		0.336000, 0.878272, -0.340209,
		32.123898, 26.335981, 24.095316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581631, 25.762112, 24.467241>,  <31.888699, 25.721191, 24.333462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581631, 25.762112, 24.467241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.480358, 26.147436, 24.431620>,  <32.419594, 26.378632, 24.410246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.480358, 26.147436, 24.431620>,  <32.581631, 25.762112, 24.467241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480358, 26.147436, 24.431620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443271, 0.197339, 0.874396,
		0.859889, 0.181908, -0.476971,
		-0.253184, 0.963310, -0.089055,
		32.404404, 26.436430, 24.404903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.208004, 26.181051, 24.723061>,  <32.581631, 25.762112, 24.467241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.208004, 26.181051, 24.723061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.926804, 26.465033, 24.739840>,  <32.758083, 26.635422, 24.749907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.926804, 26.465033, 24.739840>,  <33.208004, 26.181051, 24.723061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926804, 26.465033, 24.739840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450236, 0.398613, 0.798997,
		0.550530, 0.580579, -0.599870,
		-0.702996, 0.709955, 0.041949,
		32.715904, 26.678019, 24.752424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518093, 26.896519, 24.832642>,  <33.208004, 26.181051, 24.723061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518093, 26.896519, 24.832642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.140068, 26.960106, 24.946899>,  <32.913254, 26.998259, 25.015455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.140068, 26.960106, 24.946899>,  <33.518093, 26.896519, 24.832642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140068, 26.960106, 24.946899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326849, 0.443629, 0.834484,
		0.005936, 0.881999, -0.471214,
		-0.945058, 0.158970, 0.285647,
		32.856552, 27.007797, 25.032593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493065, 27.557295, 24.932285>,  <33.518093, 26.896519, 24.832642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493065, 27.557295, 24.932285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.176975, 27.408791, 25.127308>,  <32.987320, 27.319689, 25.244322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.176975, 27.408791, 25.127308>,  <33.493065, 27.557295, 24.932285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176975, 27.408791, 25.127308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206849, 0.587313, 0.782481,
		-0.576851, 0.719187, -0.387315,
		-0.790225, -0.371260, 0.487555,
		32.939907, 27.297413, 25.273575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234146, 28.055298, 25.269070>,  <33.493065, 27.557295, 24.932285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234146, 28.055298, 25.269070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.074242, 27.757305, 25.482683>,  <32.978298, 27.578510, 25.610851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.074242, 27.757305, 25.482683>,  <33.234146, 28.055298, 25.269070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074242, 27.757305, 25.482683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151100, 0.521084, 0.840024,
		-0.904078, 0.416504, -0.095744,
		-0.399764, -0.744980, 0.534035,
		32.954311, 27.533812, 25.642893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.746109, 28.348757, 25.736185>,  <33.234146, 28.055298, 25.269070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.746109, 28.348757, 25.736185> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.830288, 27.988796, 25.888969>,  <32.880795, 27.772820, 25.980640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.830288, 27.988796, 25.888969>,  <32.746109, 28.348757, 25.736185>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830288, 27.988796, 25.888969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159329, 0.417057, 0.894806,
		-0.964535, -0.127451, 0.231148,
		0.210446, -0.899900, 0.381960,
		32.893421, 27.718826, 26.003557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281197, 28.166079, 26.395212>,  <32.746109, 28.348757, 25.736185>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281197, 28.166079, 26.395212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.621181, 27.955637, 26.383995>,  <32.825172, 27.829372, 26.377264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.621181, 27.955637, 26.383995>,  <32.281197, 28.166079, 26.395212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.621181, 27.955637, 26.383995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306099, 0.449801, 0.839036,
		-0.428807, -0.721729, 0.543352,
		0.849957, -0.526105, -0.028043,
		32.876167, 27.797806, 26.375582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875000, 28.454748, 26.990688>,  <32.281197, 28.166079, 26.395212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875000, 28.454748, 26.990688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.677944, 28.793344, 27.071447>,  <31.559711, 28.996502, 27.119904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.677944, 28.793344, 27.071447>,  <31.875000, 28.454748, 26.990688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677944, 28.793344, 27.071447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592957, -0.156704, -0.789839,
		-0.636952, -0.508822, 0.579131,
		-0.492640, 0.846489, 0.201897,
		31.530151, 29.047291, 27.132017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170616, 28.304684, 26.809851>,  <31.875000, 28.454748, 26.990688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170616, 28.304684, 26.809851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.197197, 28.703798, 26.809320>,  <31.213144, 28.943268, 26.809002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.197197, 28.703798, 26.809320>,  <31.170616, 28.304684, 26.809851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197197, 28.703798, 26.809320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532770, 0.034359, -0.845562,
		-0.843647, 0.056894, 0.533875,
		0.066451, 0.997789, -0.001324,
		31.217133, 29.003136, 26.808924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.392536, 28.504852, 26.709772>,  <31.170616, 28.304684, 26.809851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.392536, 28.504852, 26.709772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.655363, 28.798275, 26.640312>,  <30.813059, 28.974329, 26.598637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.655363, 28.798275, 26.640312>,  <30.392536, 28.504852, 26.709772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.655363, 28.798275, 26.640312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510418, 0.263420, -0.818586,
		-0.554739, 0.626500, 0.547506,
		0.657068, 0.733559, -0.173648,
		30.852484, 29.018343, 26.588219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008936, 29.029148, 26.414293>,  <30.392536, 28.504852, 26.709772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008936, 29.029148, 26.414293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.381998, 29.105783, 26.292019>,  <30.605835, 29.151764, 26.218655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.381998, 29.105783, 26.292019>,  <30.008936, 29.029148, 26.414293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.381998, 29.105783, 26.292019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317297, 0.032406, -0.947772,
		-0.171675, 0.980940, 0.091014,
		0.932658, 0.191587, -0.305686,
		30.661795, 29.163260, 26.200314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.817509, 29.377802, 25.843979>,  <30.008936, 29.029148, 26.414293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.817509, 29.377802, 25.843979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.212254, 29.335762, 25.794895>,  <30.449100, 29.310537, 25.765446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.212254, 29.335762, 25.794895>,  <29.817509, 29.377802, 25.843979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212254, 29.335762, 25.794895> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109213, 0.125761, -0.986031,
		0.119063, 0.986478, 0.112631,
		0.986862, -0.105099, -0.122710,
		30.508312, 29.304232, 25.758081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152779, 30.057816, 25.402382>,  <29.817509, 29.377802, 25.843979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152779, 30.057816, 25.402382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.375862, 29.729134, 25.355448>,  <30.509712, 29.531925, 25.327288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.375862, 29.729134, 25.355448>,  <30.152779, 30.057816, 25.402382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375862, 29.729134, 25.355448> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130509, 0.052794, -0.990040,
		0.819714, 0.567466, -0.077796,
		0.557707, -0.821703, -0.117336,
		30.543175, 29.482622, 25.320248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.600397, 30.233707, 24.837189>,  <30.152779, 30.057816, 25.402382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.600397, 30.233707, 24.837189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.556622, 29.837025, 24.864130>,  <30.530357, 29.599014, 24.880295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.556622, 29.837025, 24.864130>,  <30.600397, 30.233707, 24.837189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556622, 29.837025, 24.864130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325572, -0.028261, -0.945095,
		0.939162, -0.125358, -0.319780,
		-0.109438, -0.991709, 0.067355,
		30.523790, 29.539513, 24.884336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715357, 30.831951, 24.615585>,  <30.600397, 30.233707, 24.837189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715357, 30.831951, 24.615585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.379642, 31.049417, 24.613739>,  <30.178213, 31.179897, 24.612631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.379642, 31.049417, 24.613739>,  <30.715357, 30.831951, 24.615585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379642, 31.049417, 24.613739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250085, 0.393581, 0.884620,
		0.482757, 0.741296, -0.466291,
		-0.839288, 0.543668, -0.004617,
		30.127855, 31.212519, 24.612354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846720, 31.467920, 24.851410>,  <30.715357, 30.831951, 24.615585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846720, 31.467920, 24.851410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.460613, 31.419567, 24.944063>,  <30.228951, 31.390554, 24.999655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.460613, 31.419567, 24.944063>,  <30.846720, 31.467920, 24.851410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.460613, 31.419567, 24.944063> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194142, 0.261461, 0.945488,
		-0.174856, 0.957614, -0.228911,
		-0.965264, -0.120883, 0.231631,
		30.171034, 31.383303, 25.013552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642076, 32.093761, 25.183250>,  <30.846720, 31.467920, 24.851410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642076, 32.093761, 25.183250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.357555, 31.824564, 25.264366>,  <30.186842, 31.663044, 25.313036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.357555, 31.824564, 25.264366>,  <30.642076, 32.093761, 25.183250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.357555, 31.824564, 25.264366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027639, 0.261503, 0.964807,
		-0.702341, 0.691876, -0.167408,
		-0.711304, -0.672996, 0.202787,
		30.144165, 31.622665, 25.325203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151335, 32.526806, 25.527821>,  <30.642076, 32.093761, 25.183250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151335, 32.526806, 25.527821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.104465, 32.142063, 25.626699>,  <30.076344, 31.911219, 25.686028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.104465, 32.142063, 25.626699>,  <30.151335, 32.526806, 25.527821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.104465, 32.142063, 25.626699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039746, 0.244171, 0.968917,
		-0.992316, 0.123357, 0.009619,
		-0.117174, -0.961854, 0.247197,
		30.069313, 31.853506, 25.700859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507164, 32.470158, 26.113333>,  <30.151335, 32.526806, 25.527821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507164, 32.470158, 26.113333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.726248, 32.136684, 26.141590>,  <29.857698, 31.936602, 26.158545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.726248, 32.136684, 26.141590>,  <29.507164, 32.470158, 26.113333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.726248, 32.136684, 26.141590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063131, 0.125373, 0.990099,
		-0.834284, -0.537825, 0.121299,
		0.547708, -0.833682, 0.070644,
		29.890560, 31.886580, 26.162783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.255428, 32.105217, 26.712980>,  <29.507164, 32.470158, 26.113333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.255428, 32.105217, 26.712980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.629366, 31.982025, 26.642302>,  <29.853727, 31.908112, 26.599894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.629366, 31.982025, 26.642302>,  <29.255428, 32.105217, 26.712980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.629366, 31.982025, 26.642302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248044, 0.210384, 0.945628,
		-0.254057, -0.927841, 0.273067,
		0.934842, -0.307976, -0.176696,
		29.909819, 31.889633, 26.589293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313026, 31.699144, 27.182491>,  <29.255428, 32.105217, 26.712980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313026, 31.699144, 27.182491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.675230, 31.829926, 27.074305>,  <29.892553, 31.908394, 27.009392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.675230, 31.829926, 27.074305>,  <29.313026, 31.699144, 27.182491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675230, 31.829926, 27.074305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197576, 0.239218, 0.950652,
		0.375522, -0.914262, 0.152015,
		0.905509, 0.326956, -0.270467,
		29.946882, 31.928011, 26.993164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.753376, 30.223049, 20.707310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.060642, 30.054296, 20.899950>,  <32.245003, 29.953045, 21.015533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.060642, 30.054296, 20.899950>,  <31.753376, 30.223049, 20.707310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060642, 30.054296, 20.899950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138988, 0.844146, 0.517784,
		-0.624986, -0.330806, 0.707079,
		0.768163, -0.421883, 0.481601,
		32.291092, 29.927731, 21.044430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590618, 30.211744, 21.375763>,  <31.753376, 30.223049, 20.707310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590618, 30.211744, 21.375763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.989523, 30.182198, 21.374401>,  <32.228867, 30.164469, 21.373583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.989523, 30.182198, 21.374401>,  <31.590618, 30.211744, 21.375763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989523, 30.182198, 21.374401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067487, 0.890361, 0.450225,
		-0.030224, -0.449222, 0.892909,
		0.997262, -0.073867, -0.003406,
		32.288700, 30.160038, 21.373379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684555, 30.433254, 22.003216>,  <31.590618, 30.211744, 21.375763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684555, 30.433254, 22.003216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.023163, 30.466146, 21.792830>,  <32.226326, 30.485882, 21.666597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.023163, 30.466146, 21.792830>,  <31.684555, 30.433254, 22.003216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023163, 30.466146, 21.792830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224708, 0.840476, 0.493058,
		0.482606, -0.535573, 0.693002,
		0.846521, 0.082230, -0.525966,
		32.277119, 30.490816, 21.635040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115517, 30.702217, 22.445158>,  <31.684555, 30.433254, 22.003216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115517, 30.702217, 22.445158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.357368, 30.757687, 22.131422>,  <32.502480, 30.790968, 21.943180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.357368, 30.757687, 22.131422>,  <32.115517, 30.702217, 22.445158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357368, 30.757687, 22.131422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359719, 0.831042, 0.424231,
		0.710651, -0.538645, 0.452589,
		0.604630, 0.138675, -0.784342,
		32.538757, 30.799290, 21.896120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.807659, 30.550638, 22.535393>,  <32.115517, 30.702217, 22.445158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.807659, 30.550638, 22.535393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.851887, 30.830647, 22.253187>,  <32.878422, 30.998652, 22.083864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.851887, 30.830647, 22.253187>,  <32.807659, 30.550638, 22.535393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851887, 30.830647, 22.253187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278388, 0.659634, 0.698128,
		0.954083, -0.273597, -0.121943,
		0.110568, 0.700020, -0.705512,
		32.885056, 31.040653, 22.041534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587841, 30.897346, 22.652111>,  <32.807659, 30.550638, 22.535393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587841, 30.897346, 22.652111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.388351, 31.161823, 22.427931>,  <33.268658, 31.320509, 22.293423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.388351, 31.161823, 22.427931>,  <33.587841, 30.897346, 22.652111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388351, 31.161823, 22.427931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338086, 0.743778, 0.576622,
		0.798107, 0.098093, -0.594477,
		-0.498721, 0.661191, -0.560450,
		33.238735, 31.360180, 22.259796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002579, 31.407627, 22.496273>,  <33.587841, 30.897346, 22.652111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002579, 31.407627, 22.496273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.655437, 31.595028, 22.430134>,  <33.447155, 31.707468, 22.390450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.655437, 31.595028, 22.430134>,  <34.002579, 31.407627, 22.496273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655437, 31.595028, 22.430134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298480, 0.757716, 0.580324,
		0.397170, 0.454282, -0.797424,
		-0.867851, 0.468502, -0.165348,
		33.395081, 31.735579, 22.380529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239937, 32.004265, 22.316074>,  <34.002579, 31.407627, 22.496273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239937, 32.004265, 22.316074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.866028, 32.065777, 22.444172>,  <33.641682, 32.102684, 22.521030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.866028, 32.065777, 22.444172>,  <34.239937, 32.004265, 22.316074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866028, 32.065777, 22.444172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314392, 0.777837, 0.544176,
		-0.165414, 0.609362, -0.775446,
		-0.934771, 0.153780, 0.320243,
		33.585598, 32.111912, 22.540245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176243, 32.836796, 22.428457>,  <34.239937, 32.004265, 22.316074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176243, 32.836796, 22.428457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.846985, 32.672459, 22.585247>,  <33.649429, 32.573856, 22.679321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.846985, 32.672459, 22.585247>,  <34.176243, 32.836796, 22.428457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846985, 32.672459, 22.585247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020795, 0.711641, 0.702236,
		-0.567456, 0.569888, -0.594324,
		-0.823141, -0.410847, 0.391974,
		33.600044, 32.549206, 22.702839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692188, 33.464870, 22.600187>,  <34.176243, 32.836796, 22.428457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692188, 33.464870, 22.600187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.561813, 33.150707, 22.810669>,  <33.483589, 32.962208, 22.936958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.561813, 33.150707, 22.810669>,  <33.692188, 33.464870, 22.600187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561813, 33.150707, 22.810669> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059585, 0.538428, 0.840562,
		-0.943510, 0.305329, -0.128697,
		-0.325942, -0.785411, 0.526205,
		33.464031, 32.915085, 22.968531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053066, 33.686260, 23.015781>,  <33.692188, 33.464870, 22.600187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053066, 33.686260, 23.015781> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.248344, 33.385601, 23.193180>,  <33.365513, 33.205204, 23.299620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.248344, 33.385601, 23.193180>,  <33.053066, 33.686260, 23.015781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248344, 33.385601, 23.193180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058971, 0.535420, 0.842525,
		-0.870738, -0.385166, 0.305716,
		0.488198, -0.751647, 0.443497,
		33.394802, 33.160107, 23.326229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827820, 33.585266, 23.672506>,  <33.053066, 33.686260, 23.015781>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827820, 33.585266, 23.672506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.205715, 33.455544, 23.691647>,  <33.432453, 33.377712, 23.703131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.205715, 33.455544, 23.691647>,  <32.827820, 33.585266, 23.672506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205715, 33.455544, 23.691647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139822, 0.530670, 0.835966,
		-0.296499, -0.783082, 0.546691,
		0.944742, -0.324302, 0.047851,
		33.489140, 33.358253, 23.706001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158424, 33.488972, 23.906132>,  <32.827820, 33.585266, 23.672506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158424, 33.488972, 23.906132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.844402, 33.723511, 23.986019>,  <31.655991, 33.864235, 24.033951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.844402, 33.723511, 23.986019>,  <32.158424, 33.488972, 23.906132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844402, 33.723511, 23.986019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542119, -0.494395, -0.679471,
		-0.299669, -0.641691, 0.705997,
		-0.785051, 0.586350, 0.199718,
		31.608887, 33.899418, 24.045935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594511, 33.031864, 23.970636>,  <32.158424, 33.488972, 23.906132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.594511, 33.031864, 23.970636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.444607, 33.396332, 23.902143>,  <31.354664, 33.615013, 23.861048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.444607, 33.396332, 23.902143>,  <31.594511, 33.031864, 23.970636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444607, 33.396332, 23.902143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534251, -0.363183, -0.763331,
		-0.757715, -0.194583, 0.622901,
		-0.374759, 0.911172, -0.171233,
		31.332180, 33.669685, 23.850773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.884052, 32.874653, 23.827431>,  <31.594511, 33.031864, 23.970636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.884052, 32.874653, 23.827431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.948090, 33.241959, 23.682562>,  <30.986513, 33.462341, 23.595640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.948090, 33.241959, 23.682562>,  <30.884052, 32.874653, 23.827431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948090, 33.241959, 23.682562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637956, -0.183729, -0.747835,
		-0.753248, 0.350774, 0.556395,
		0.160095, 0.918260, -0.362172,
		30.996119, 33.517437, 23.573910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248539, 33.182693, 23.697475>,  <30.884052, 32.874653, 23.827431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248539, 33.182693, 23.697475> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.515993, 33.371269, 23.467459>,  <30.676466, 33.484413, 23.329449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.515993, 33.371269, 23.467459>,  <30.248539, 33.182693, 23.697475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515993, 33.371269, 23.467459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545757, -0.214119, -0.810125,
		-0.505054, 0.855509, 0.114124,
		0.668633, 0.471441, -0.575042,
		30.716583, 33.512703, 23.294947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812178, 33.408718, 23.192450>,  <30.248539, 33.182693, 23.697475>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812178, 33.408718, 23.192450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.166922, 33.457161, 23.014093>,  <30.379768, 33.486225, 22.907080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.166922, 33.457161, 23.014093>,  <29.812178, 33.408718, 23.192450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166922, 33.457161, 23.014093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398487, -0.287970, -0.870793,
		-0.233862, 0.949951, -0.207129,
		0.886858, 0.121107, -0.445888,
		30.432980, 33.493492, 22.880327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714153, 33.762794, 22.647224>,  <29.812178, 33.408718, 23.192450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714153, 33.762794, 22.647224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.078363, 33.615303, 22.572407>,  <30.296888, 33.526810, 22.527517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.078363, 33.615303, 22.572407>,  <29.714153, 33.762794, 22.647224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078363, 33.615303, 22.572407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253350, -0.140072, -0.957180,
		0.326742, 0.918922, -0.220957,
		0.910524, -0.368730, -0.187042,
		30.351521, 33.504684, 22.516294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.969006, 34.053268, 22.020807>,  <29.714153, 33.762794, 22.647224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.969006, 34.053268, 22.020807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.161253, 33.703804, 22.051048>,  <30.276602, 33.494125, 22.069193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.161253, 33.703804, 22.051048>,  <29.969006, 34.053268, 22.020807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161253, 33.703804, 22.051048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353237, -0.271784, -0.895186,
		0.802640, 0.403537, -0.439235,
		0.480617, -0.873665, 0.075601,
		30.305439, 33.441704, 22.073729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358545, 33.993107, 21.452311>,  <29.969006, 34.053268, 22.020807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358545, 33.993107, 21.452311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.309214, 33.617794, 21.581570>,  <30.279613, 33.392609, 21.659126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.309214, 33.617794, 21.581570>,  <30.358545, 33.993107, 21.452311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309214, 33.617794, 21.581570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355389, -0.262276, -0.897168,
		0.926546, -0.225492, -0.301107,
		-0.123331, -0.938277, 0.323148,
		30.272215, 33.336311, 21.678514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553015, 33.609241, 20.848391>,  <30.358545, 33.993107, 21.452311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553015, 33.609241, 20.848391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.373642, 33.347343, 21.091774>,  <30.266018, 33.190205, 21.237804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.373642, 33.347343, 21.091774>,  <30.553015, 33.609241, 20.848391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373642, 33.347343, 21.091774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507004, -0.374300, -0.776432,
		0.736109, -0.656667, -0.164109,
		-0.448431, -0.654743, 0.608458,
		30.239113, 33.150921, 21.274311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567308, 33.006153, 20.531895>,  <30.553015, 33.609241, 20.848391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567308, 33.006153, 20.531895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.270369, 32.938107, 20.791119>,  <30.092205, 32.897278, 20.946653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.270369, 32.938107, 20.791119>,  <30.567308, 33.006153, 20.531895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270369, 32.938107, 20.791119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579240, -0.323183, -0.748354,
		0.336747, -0.930921, 0.141378,
		-0.742349, -0.170114, 0.648058,
		30.047665, 32.887074, 20.985537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.416723, 32.310707, 20.453596>,  <30.567308, 33.006153, 20.531895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.416723, 32.310707, 20.453596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.087309, 32.481674, 20.602781>,  <29.889660, 32.584255, 20.692291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.087309, 32.481674, 20.602781>,  <30.416723, 32.310707, 20.453596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087309, 32.481674, 20.602781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566635, -0.650729, -0.505448,
		0.026660, -0.627588, 0.778089,
		-0.823538, 0.427417, 0.372962,
		29.840248, 32.609898, 20.714670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051731, 31.702253, 20.660183>,  <30.416723, 32.310707, 20.453596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051731, 31.702253, 20.660183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.790342, 32.004307, 20.639223>,  <29.633509, 32.185539, 20.626648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.790342, 32.004307, 20.639223>,  <30.051731, 31.702253, 20.660183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790342, 32.004307, 20.639223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690279, -0.622894, -0.368128,
		-0.310624, -0.204393, 0.928297,
		-0.653473, 0.755134, -0.052397,
		29.594299, 32.230846, 20.623505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.417381, 31.458364, 21.068489>,  <30.051731, 31.702253, 20.660183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.417381, 31.458364, 21.068489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.315878, 31.743240, 20.806683>,  <29.254976, 31.914165, 20.649599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.315878, 31.743240, 20.806683>,  <29.417381, 31.458364, 21.068489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315878, 31.743240, 20.806683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772138, -0.556706, -0.306401,
		-0.582590, 0.427627, 0.691176,
		-0.253756, 0.712190, -0.654518,
		29.239750, 31.956898, 20.610329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.697704, 31.630020, 21.067766>,  <29.417381, 31.458364, 21.068489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.697704, 31.630020, 21.067766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.601284, 31.312098, 21.290541>,  <28.543432, 31.121344, 21.424206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.601284, 31.312098, 21.290541>,  <28.697704, 31.630020, 21.067766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601284, 31.312098, 21.290541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570426, 0.348244, 0.743868,
		-0.785181, 0.497001, 0.369434,
		-0.241050, -0.794806, 0.556937,
		28.528969, 31.073656, 21.457623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495012, 31.916723, 21.740498>,  <28.697704, 31.630020, 21.067766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495012, 31.916723, 21.740498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.580215, 31.535101, 21.824787>,  <28.631336, 31.306128, 21.875360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.580215, 31.535101, 21.824787>,  <28.495012, 31.916723, 21.740498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580215, 31.535101, 21.824787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411084, 0.283165, 0.866503,
		-0.886362, -0.097945, 0.452514,
		0.213006, -0.954057, 0.210723,
		28.644117, 31.248884, 21.888004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166122, 31.750315, 22.524220>,  <28.495012, 31.916723, 21.740498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166122, 31.750315, 22.524220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.445543, 31.477051, 22.439074>,  <28.613195, 31.313091, 22.387985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.445543, 31.477051, 22.439074>,  <28.166122, 31.750315, 22.524220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445543, 31.477051, 22.439074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419232, 0.149661, 0.895459,
		-0.579885, -0.714767, 0.390949,
		0.698554, -0.683161, -0.212867,
		28.655109, 31.272102, 22.375214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.222580, 31.469076, 23.130102>,  <28.166122, 31.750315, 22.524220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.222580, 31.469076, 23.130102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.563400, 31.344378, 22.961901>,  <28.767893, 31.269558, 22.860979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.563400, 31.344378, 22.961901>,  <28.222580, 31.469076, 23.130102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563400, 31.344378, 22.961901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427088, -0.050459, 0.902801,
		-0.302663, -0.948825, 0.090149,
		0.852052, -0.311746, -0.420503,
		28.819016, 31.250854, 22.835751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.387684, 30.837835, 23.425745>,  <28.222580, 31.469076, 23.130102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.387684, 30.837835, 23.425745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.730558, 31.000389, 23.299200>,  <28.936283, 31.097921, 23.223272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.730558, 31.000389, 23.299200>,  <28.387684, 30.837835, 23.425745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730558, 31.000389, 23.299200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404238, -0.150295, 0.902221,
		0.319102, -0.901256, -0.293107,
		0.857185, 0.406385, -0.316362,
		28.987715, 31.122305, 23.204290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.836594, 30.396883, 23.658199>,  <28.387684, 30.837835, 23.425745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.836594, 30.396883, 23.658199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.096624, 30.695822, 23.603245>,  <29.252644, 30.875185, 23.570272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.096624, 30.695822, 23.603245>,  <28.836594, 30.396883, 23.658199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096624, 30.695822, 23.603245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313969, -0.099528, 0.944202,
		0.691971, -0.656939, -0.299344,
		0.650077, 0.747345, -0.137388,
		29.291647, 30.920025, 23.562029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483837, 30.187994, 23.930571>,  <28.836594, 30.396883, 23.658199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483837, 30.187994, 23.930571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.510681, 30.586960, 23.920277>,  <29.526789, 30.826340, 23.914101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.510681, 30.586960, 23.920277>,  <29.483837, 30.187994, 23.930571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510681, 30.586960, 23.920277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676826, -0.026559, 0.735664,
		0.733078, -0.066789, -0.676858,
		0.067111, 0.997414, -0.025735,
		29.530815, 30.886185, 23.912556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262018, 30.472542, 24.076756>,  <29.483837, 30.187994, 23.930571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262018, 30.472542, 24.076756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.048168, 30.800970, 24.156771>,  <29.919859, 30.998028, 24.204781>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.048168, 30.800970, 24.156771>,  <30.262018, 30.472542, 24.076756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048168, 30.800970, 24.156771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543574, 0.152863, 0.825324,
		0.647073, 0.549975, -0.528038,
		-0.534626, 0.821073, 0.200038,
		29.887781, 31.047293, 24.216782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773773, 29.927486, 24.122982>,  <30.262018, 30.472542, 24.076756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773773, 29.927486, 24.122982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.622683, 29.599556, 24.295126>,  <30.532028, 29.402798, 24.398413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.622683, 29.599556, 24.295126>,  <30.773773, 29.927486, 24.122982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622683, 29.599556, 24.295126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242469, -0.360990, -0.900497,
		0.893607, -0.444488, -0.062428,
		-0.377724, -0.819827, 0.430358,
		30.509365, 29.353607, 24.424232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951920, 29.351170, 23.591133>,  <30.773773, 29.927486, 24.122982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951920, 29.351170, 23.591133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.659193, 29.231047, 23.835840>,  <30.483557, 29.158974, 23.982664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.659193, 29.231047, 23.835840>,  <30.951920, 29.351170, 23.591133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659193, 29.231047, 23.835840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462950, -0.439699, -0.769638,
		0.500121, -0.846452, 0.182752,
		-0.731817, -0.300307, 0.611768,
		30.439648, 29.140955, 24.019371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874371, 28.711241, 23.349640>,  <30.951920, 29.351170, 23.591133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874371, 28.711241, 23.349640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.528477, 28.773630, 23.540598>,  <30.320940, 28.811064, 23.655172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.528477, 28.773630, 23.540598>,  <30.874371, 28.711241, 23.349640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528477, 28.773630, 23.540598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489328, -0.475719, -0.730924,
		0.113103, -0.865658, 0.487692,
		-0.864735, 0.155971, 0.477396,
		30.269056, 28.820421, 23.683817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633028, 28.074993, 23.374121>,  <30.874371, 28.711241, 23.349640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633028, 28.074993, 23.374121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.336994, 28.342361, 23.403753>,  <30.159374, 28.502783, 23.421534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.336994, 28.342361, 23.403753>,  <30.633028, 28.074993, 23.374121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336994, 28.342361, 23.403753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472852, -0.438866, -0.764073,
		-0.478212, -0.600507, 0.640863,
		-0.740084, 0.668422, 0.074080,
		30.114967, 28.542887, 23.425978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144234, 27.676441, 23.183437>,  <30.633028, 28.074993, 23.374121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144234, 27.676441, 23.183437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.986115, 28.042343, 23.150072>,  <29.891243, 28.261885, 23.130053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.986115, 28.042343, 23.150072>,  <30.144234, 27.676441, 23.183437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986115, 28.042343, 23.150072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522583, -0.298646, -0.798572,
		-0.755410, -0.272085, 0.596092,
		-0.395300, 0.914757, -0.083414,
		29.867525, 28.316771, 23.125048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420494, 27.511412, 23.051359>,  <30.144234, 27.676441, 23.183437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420494, 27.511412, 23.051359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.449066, 27.898712, 22.955538>,  <29.466209, 28.131092, 22.898045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.449066, 27.898712, 22.955538>,  <29.420494, 27.511412, 23.051359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449066, 27.898712, 22.955538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413821, -0.189756, -0.890362,
		-0.907551, 0.162732, 0.387129,
		0.071431, 0.968252, -0.239555,
		29.470495, 28.189188, 22.883671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673281, 27.746136, 22.671253>,  <29.420494, 27.511412, 23.051359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673281, 27.746136, 22.671253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.987186, 27.969486, 22.563654>,  <29.175529, 28.103497, 22.499094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.987186, 27.969486, 22.563654>,  <28.673281, 27.746136, 22.671253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987186, 27.969486, 22.563654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250836, -0.110750, -0.961673,
		-0.566766, 0.822163, 0.053147,
		0.784766, 0.558375, -0.268997,
		29.222616, 28.136999, 22.482954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.343386, 28.245249, 22.189842>,  <28.673281, 27.746136, 22.671253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.343386, 28.245249, 22.189842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.741961, 28.235958, 22.157406>,  <28.981106, 28.230383, 22.137943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.741961, 28.235958, 22.157406>,  <28.343386, 28.245249, 22.189842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741961, 28.235958, 22.157406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083289, -0.118744, -0.989425,
		0.013353, 0.992653, -0.120255,
		0.996436, -0.023228, -0.081091,
		29.040892, 28.228991, 22.133078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575352, 28.606699, 21.498892>,  <28.343386, 28.245249, 22.189842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575352, 28.606699, 21.498892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.868937, 28.362967, 21.618904>,  <29.045088, 28.216728, 21.690910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.868937, 28.362967, 21.618904>,  <28.575352, 28.606699, 21.498892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868937, 28.362967, 21.618904> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204077, -0.223481, -0.953105,
		0.647806, 0.760772, -0.039676,
		0.733962, -0.609330, 0.300029,
		29.089125, 28.180168, 21.708912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.811153, 33.228535, 35.894680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.086647, 32.968384, 35.766521>,  <36.251942, 32.812294, 35.689625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.086647, 32.968384, 35.766521>,  <35.811153, 33.228535, 35.894680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086647, 32.968384, 35.766521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616781, -0.293309, -0.730445,
		0.381093, 0.700695, -0.603154,
		0.688730, -0.650381, -0.320397,
		36.293266, 32.773270, 35.670403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751556, 33.223644, 35.141964>,  <35.811153, 33.228535, 35.894680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751556, 33.223644, 35.141964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.936489, 32.883713, 35.243191>,  <36.047451, 32.679756, 35.303928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.936489, 32.883713, 35.243191>,  <35.751556, 33.223644, 35.141964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936489, 32.883713, 35.243191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391487, -0.451714, -0.801681,
		0.795604, 0.271571, -0.541538,
		0.462334, -0.849826, 0.253069,
		36.075188, 32.628765, 35.319111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.034267, 33.009274, 34.485104>,  <35.751556, 33.223644, 35.141964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.034267, 33.009274, 34.485104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.029575, 32.691624, 34.728157>,  <36.026760, 32.501034, 34.873989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.029575, 32.691624, 34.728157>,  <36.034267, 33.009274, 34.485104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029575, 32.691624, 34.728157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377178, -0.559275, -0.738205,
		0.926066, -0.237846, -0.292968,
		-0.011729, -0.794129, 0.607636,
		36.026058, 32.453384, 34.910446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394855, 32.473011, 34.128403>,  <36.034267, 33.009274, 34.485104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394855, 32.473011, 34.128403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.148487, 32.280655, 34.378006>,  <36.000664, 32.165241, 34.527767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.148487, 32.280655, 34.378006>,  <36.394855, 32.473011, 34.128403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148487, 32.280655, 34.378006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394962, -0.496855, -0.772749,
		0.681647, -0.722413, 0.116091,
		-0.615924, -0.480890, 0.624005,
		35.963711, 32.136387, 34.565208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379002, 31.816216, 33.901852>,  <36.394855, 32.473011, 34.128403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379002, 31.816216, 33.901852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.056263, 31.819977, 34.138126>,  <35.862621, 31.822233, 34.279892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.056263, 31.819977, 34.138126>,  <36.379002, 31.816216, 33.901852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056263, 31.819977, 34.138126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511188, -0.512303, -0.690096,
		0.296123, -0.858753, 0.418156,
		-0.806844, 0.009403, 0.590689,
		35.814209, 31.822798, 34.315334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029118, 31.107668, 33.911304>,  <36.379002, 31.816216, 33.901852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029118, 31.107668, 33.911304> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.743095, 31.364546, 34.021778>,  <35.571480, 31.518673, 34.088062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.743095, 31.364546, 34.021778>,  <36.029118, 31.107668, 33.911304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743095, 31.364546, 34.021778> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656657, -0.481527, -0.580459,
		-0.239774, -0.596424, 0.766021,
		-0.715059, 0.642192, 0.276188,
		35.528576, 31.557203, 34.104633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491783, 30.759766, 34.035381>,  <36.029118, 31.107668, 33.911304>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491783, 30.759766, 34.035381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.327091, 31.121935, 33.994034>,  <35.228275, 31.339237, 33.969223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.327091, 31.121935, 33.994034>,  <35.491783, 30.759766, 34.035381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327091, 31.121935, 33.994034> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774062, -0.407330, -0.484676,
		-0.480944, -0.119539, 0.868564,
		-0.411729, 0.905424, -0.103372,
		35.203571, 31.393562, 33.963024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763504, 30.663509, 34.168781>,  <35.491783, 30.759766, 34.035381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763504, 30.663509, 34.168781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.791309, 31.010725, 33.972141>,  <34.807991, 31.219055, 33.854156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.791309, 31.010725, 33.972141>,  <34.763504, 30.663509, 34.168781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791309, 31.010725, 33.972141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735874, -0.288104, -0.612768,
		-0.673541, 0.404355, 0.618741,
		0.069514, 0.868040, -0.491604,
		34.812164, 31.271137, 33.824661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997707, 30.884268, 34.041904>,  <34.763504, 30.663509, 34.168781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997707, 30.884268, 34.041904> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.216595, 31.079256, 33.769749>,  <34.347927, 31.196249, 33.606457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.216595, 31.079256, 33.769749>,  <33.997707, 30.884268, 34.041904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216595, 31.079256, 33.769749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670490, -0.231267, -0.704953,
		-0.500996, 0.841954, 0.200292,
		0.547217, 0.487472, -0.680386,
		34.380760, 31.225498, 33.565632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502151, 31.306465, 33.683949>,  <33.997707, 30.884268, 34.041904>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502151, 31.306465, 33.683949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.827229, 31.283159, 33.452038>,  <34.022274, 31.269176, 33.312893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.827229, 31.283159, 33.452038>,  <33.502151, 31.306465, 33.683949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827229, 31.283159, 33.452038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576782, -0.221820, -0.786205,
		-0.082798, 0.973345, -0.213878,
		0.812691, -0.058265, -0.579774,
		34.071037, 31.265680, 33.278107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303528, 31.709568, 32.972401>,  <33.502151, 31.306465, 33.683949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303528, 31.709568, 32.972401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.619286, 31.484715, 32.873718>,  <33.808739, 31.349802, 32.814507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.619286, 31.484715, 32.873718>,  <33.303528, 31.709568, 32.972401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619286, 31.484715, 32.873718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390875, -0.150356, -0.908080,
		0.473369, 0.813264, -0.338414,
		0.789392, -0.562134, -0.246710,
		33.856102, 31.316074, 32.799706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.584839, 32.101868, 32.320656>,  <33.303528, 31.709568, 32.972401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.584839, 32.101868, 32.320656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705276, 31.720715, 32.335453>,  <33.777538, 31.492023, 32.344330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.705276, 31.720715, 32.335453>,  <33.584839, 32.101868, 32.320656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705276, 31.720715, 32.335453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227694, -0.109505, -0.967556,
		0.926013, 0.282900, -0.249936,
		0.301090, -0.952878, 0.036989,
		33.795605, 31.434851, 32.346550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429173, 32.764645, 31.934755>,  <33.584839, 32.101868, 32.320656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429173, 32.764645, 31.934755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.048046, 32.785046, 32.054447>,  <32.819370, 32.797287, 32.126263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.048046, 32.785046, 32.054447>,  <33.429173, 32.764645, 31.934755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048046, 32.785046, 32.054447> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288367, 0.459895, 0.839846,
		-0.094782, 0.886508, -0.452902,
		-0.952817, 0.051000, 0.299229,
		32.762199, 32.800346, 32.144215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229664, 33.531288, 32.201397>,  <33.429173, 32.764645, 31.934755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229664, 33.531288, 32.201397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.947708, 33.294125, 32.357140>,  <32.778534, 33.151829, 32.450584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.947708, 33.294125, 32.357140>,  <33.229664, 33.531288, 32.201397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947708, 33.294125, 32.357140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185949, 0.375258, 0.908077,
		-0.684513, 0.712492, -0.154264,
		-0.704886, -0.592906, 0.389356,
		32.736240, 33.116253, 32.473946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870831, 33.873871, 32.762077>,  <33.229664, 33.531288, 32.201397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870831, 33.873871, 32.762077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.728642, 33.514034, 32.863560>,  <32.643330, 33.298130, 32.924450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.728642, 33.514034, 32.863560>,  <32.870831, 33.873871, 32.762077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728642, 33.514034, 32.863560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129727, 0.221319, 0.966534,
		-0.925640, 0.376490, 0.038029,
		-0.355474, -0.899596, 0.253703,
		32.621998, 33.244156, 32.939671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408897, 33.962341, 33.353249>,  <32.870831, 33.873871, 32.762077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408897, 33.962341, 33.353249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.475838, 33.569050, 33.382263>,  <32.516003, 33.333076, 33.399670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.475838, 33.569050, 33.382263>,  <32.408897, 33.962341, 33.353249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475838, 33.569050, 33.382263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030916, 0.078769, 0.996413,
		-0.985412, -0.164512, 0.043580,
		0.167355, -0.983225, 0.072534,
		32.526043, 33.274082, 33.404022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865328, 33.700436, 33.791943>,  <32.408897, 33.962341, 33.353249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865328, 33.700436, 33.791943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.176132, 33.448772, 33.800037>,  <32.362614, 33.297775, 33.804893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.176132, 33.448772, 33.800037>,  <31.865328, 33.700436, 33.791943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176132, 33.448772, 33.800037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003015, 0.028432, 0.999591,
		-0.629478, -0.776755, 0.020195,
		0.777012, -0.629160, 0.020240,
		32.409237, 33.260025, 33.806110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676624, 33.158077, 34.281796>,  <31.865328, 33.700436, 33.791943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676624, 33.158077, 34.281796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.075455, 33.143188, 34.255108>,  <32.314754, 33.134254, 34.239094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.075455, 33.143188, 34.255108>,  <31.676624, 33.158077, 34.281796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075455, 33.143188, 34.255108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067222, 0.012342, 0.997662,
		-0.036318, -0.999231, 0.014808,
		0.997077, -0.037228, -0.066722,
		32.374577, 33.132023, 34.235092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939474, 32.641533, 34.818611>,  <31.676624, 33.158077, 34.281796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939474, 32.641533, 34.818611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.215183, 32.912010, 34.714558>,  <32.380608, 33.074295, 34.652126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.215183, 32.912010, 34.714558>,  <31.939474, 32.641533, 34.818611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215183, 32.912010, 34.714558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143374, 0.224649, 0.963834,
		0.710175, -0.701641, 0.057897,
		0.689272, 0.676190, -0.260137,
		32.421967, 33.114868, 34.636517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.326763, 32.608501, 35.374229>,  <31.939474, 32.641533, 34.818611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.326763, 32.608501, 35.374229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.485233, 32.930668, 35.197887>,  <32.580315, 33.123966, 35.092083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.485233, 32.930668, 35.197887>,  <32.326763, 32.608501, 35.374229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485233, 32.930668, 35.197887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258722, 0.362767, 0.895245,
		0.880972, -0.468730, -0.064660,
		0.396171, 0.805415, -0.440859,
		32.604084, 33.172291, 35.065628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080154, 32.810390, 35.686325>,  <32.326763, 32.608501, 35.374229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080154, 32.810390, 35.686325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.923157, 33.128109, 35.500832>,  <32.828960, 33.318741, 35.389534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.923157, 33.128109, 35.500832>,  <33.080154, 32.810390, 35.686325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.923157, 33.128109, 35.500832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275258, 0.582525, 0.764786,
		0.877602, 0.172523, -0.447271,
		-0.392490, 0.794292, -0.463737,
		32.805408, 33.366398, 35.361710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458958, 33.306564, 35.910072>,  <33.080154, 32.810390, 35.686325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458958, 33.306564, 35.910072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.137253, 33.495140, 35.765350>,  <32.944229, 33.608288, 35.678516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.137253, 33.495140, 35.765350>,  <33.458958, 33.306564, 35.910072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137253, 33.495140, 35.765350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019843, 0.629784, 0.776517,
		0.593940, 0.617345, -0.515868,
		-0.804264, 0.471441, -0.361805,
		32.895973, 33.636574, 35.656811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654758, 33.938076, 36.031345>,  <33.458958, 33.306564, 35.910072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654758, 33.938076, 36.031345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.257278, 33.970016, 35.999908>,  <33.018791, 33.989182, 35.981045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.257278, 33.970016, 35.999908>,  <33.654758, 33.938076, 36.031345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257278, 33.970016, 35.999908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013103, 0.779497, 0.626269,
		0.111272, 0.621296, -0.775635,
		-0.993704, 0.079850, -0.078595,
		32.959167, 33.993973, 35.976330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481037, 34.575001, 35.804276>,  <33.654758, 33.938076, 36.031345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481037, 34.575001, 35.804276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.152649, 34.470337, 36.007271>,  <32.955616, 34.407539, 36.129066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.152649, 34.470337, 36.007271>,  <33.481037, 34.575001, 35.804276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152649, 34.470337, 36.007271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047509, 0.917037, 0.395961,
		-0.568988, 0.300963, -0.765293,
		-0.820972, -0.261655, 0.507485,
		32.906357, 34.391842, 36.159515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948128, 35.166046, 35.718590>,  <33.481037, 34.575001, 35.804276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948128, 35.166046, 35.718590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.827522, 34.950005, 36.032883>,  <32.755157, 34.820377, 36.221458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.827522, 34.950005, 36.032883>,  <32.948128, 35.166046, 35.718590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827522, 34.950005, 36.032883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170506, 0.841342, 0.512905,
		-0.938091, 0.020678, -0.345770,
		-0.301517, -0.540107, 0.785730,
		32.737068, 34.787971, 36.268600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281796, 35.309357, 35.750278>,  <32.948128, 35.166046, 35.718590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281796, 35.309357, 35.750278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.418060, 35.177422, 36.102451>,  <32.499821, 35.098263, 36.313755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.418060, 35.177422, 36.102451>,  <32.281796, 35.309357, 35.750278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418060, 35.177422, 36.102451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408004, 0.791808, 0.454502,
		-0.847043, -0.514051, 0.135165,
		0.340662, -0.329835, 0.880431,
		32.520260, 35.078472, 36.366581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374020, 35.483856, 35.004684>,  <32.281796, 35.309357, 35.750278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374020, 35.483856, 35.004684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.018768, 35.300610, 34.989979>,  <31.805616, 35.190662, 34.981155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.018768, 35.300610, 34.989979>,  <32.374020, 35.483856, 35.004684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018768, 35.300610, 34.989979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438112, 0.868077, -0.233455,
		0.138868, -0.191230, -0.971672,
		-0.888130, -0.458120, -0.036768,
		31.752329, 35.163174, 34.978947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.992182, 35.771091, 34.381832>,  <32.374020, 35.483856, 35.004684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.992182, 35.771091, 34.381832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.752436, 35.619991, 34.664127>,  <31.608587, 35.529331, 34.833504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.752436, 35.619991, 34.664127>,  <31.992182, 35.771091, 34.381832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.752436, 35.619991, 34.664127> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583829, 0.809463, -0.062564,
		-0.547635, -0.449528, -0.705706,
		-0.599367, -0.377749, 0.705737,
		31.572626, 35.506668, 34.875847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345383, 36.437622, 34.173035>,  <31.992182, 35.771091, 34.381832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345383, 36.437622, 34.173035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.710148, 36.398098, 34.013710>,  <32.929008, 36.374382, 33.918114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.710148, 36.398098, 34.013710>,  <32.345383, 36.437622, 34.173035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710148, 36.398098, 34.013710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385667, 0.125408, -0.914075,
		0.140275, 0.987172, 0.076252,
		0.911912, -0.098814, -0.398312,
		32.983723, 36.368454, 33.894218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383141, 36.957306, 33.762535>,  <32.345383, 36.437622, 34.173035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383141, 36.957306, 33.762535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.676132, 36.718761, 33.631180>,  <32.851925, 36.575634, 33.552368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.676132, 36.718761, 33.631180>,  <32.383141, 36.957306, 33.762535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676132, 36.718761, 33.631180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258446, 0.202672, -0.944526,
		0.629830, 0.776712, -0.005674,
		0.732475, -0.596357, -0.328387,
		32.895874, 36.539856, 33.532665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909473, 37.464523, 33.324120>,  <32.383141, 36.957306, 33.762535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909473, 37.464523, 33.324120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.949436, 37.079662, 33.222702>,  <32.973412, 36.848747, 33.161850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.949436, 37.079662, 33.222702>,  <32.909473, 37.464523, 33.324120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.949436, 37.079662, 33.222702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002197, 0.254606, -0.967042,
		0.994995, 0.097168, 0.023322,
		0.099903, -0.962151, -0.253545,
		32.979408, 36.791016, 33.146637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444813, 37.327675, 32.814144>,  <32.909473, 37.464523, 33.324120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444813, 37.327675, 32.814144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.225204, 36.997208, 32.763527>,  <33.093437, 36.798927, 32.733158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.225204, 36.997208, 32.763527>,  <33.444813, 37.327675, 32.814144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225204, 36.997208, 32.763527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056149, 0.114599, -0.991824,
		0.833919, -0.551639, -0.016529,
		-0.549023, -0.826173, -0.126540,
		33.060497, 36.749355, 32.725563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799004, 36.931995, 32.226189>,  <33.444813, 37.327675, 32.814144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799004, 36.931995, 32.226189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435276, 36.766827, 32.246727>,  <33.217041, 36.667725, 32.259048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.435276, 36.766827, 32.246727>,  <33.799004, 36.931995, 32.226189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435276, 36.766827, 32.246727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025069, -0.068799, -0.997315,
		0.415348, -0.908163, 0.052208,
		-0.909317, -0.412924, 0.051342,
		33.162479, 36.642948, 32.262131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831425, 36.436596, 31.694653>,  <33.799004, 36.931995, 32.226189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831425, 36.436596, 31.694653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.439533, 36.500542, 31.742943>,  <33.204399, 36.538910, 31.771917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.439533, 36.500542, 31.742943>,  <33.831425, 36.436596, 31.694653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439533, 36.500542, 31.742943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140110, -0.116095, -0.983306,
		-0.143177, -0.980289, 0.136140,
		-0.979729, 0.159862, 0.120726,
		33.145615, 36.548500, 31.779161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411247, 35.840050, 31.451336>,  <33.831425, 36.436596, 31.694653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411247, 35.840050, 31.451336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.124535, 36.118950, 31.448221>,  <32.952507, 36.286289, 31.446352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.124535, 36.118950, 31.448221>,  <33.411247, 35.840050, 31.451336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124535, 36.118950, 31.448221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270106, -0.287931, -0.918770,
		-0.642856, -0.656457, 0.394716,
		-0.716784, 0.697252, -0.007785,
		32.909500, 36.328125, 31.445887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.788052, 35.461212, 31.250380>,  <33.411247, 35.840050, 31.451336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.788052, 35.461212, 31.250380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.728058, 35.851208, 31.184763>,  <32.692062, 36.085205, 31.145393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.728058, 35.851208, 31.184763>,  <32.788052, 35.461212, 31.250380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728058, 35.851208, 31.184763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385555, -0.210461, -0.898362,
		-0.910413, -0.071496, 0.407476,
		-0.149987, 0.974984, -0.164041,
		32.683060, 36.143703, 31.135551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078243, 35.538700, 31.092152>,  <32.788052, 35.461212, 31.250380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078243, 35.538700, 31.092152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.272408, 35.853523, 30.939878>,  <32.388905, 36.042416, 30.848515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.272408, 35.853523, 30.939878>,  <32.078243, 35.538700, 31.092152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.272408, 35.853523, 30.939878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368661, -0.210557, -0.905403,
		-0.792758, 0.579836, 0.187950,
		0.485411, 0.787055, -0.380683,
		32.418030, 36.089642, 30.825674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.553560, 35.957199, 30.790327>,  <32.078243, 35.538700, 31.092152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.553560, 35.957199, 30.790327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.893188, 36.071579, 30.612648>,  <32.096966, 36.140209, 30.506041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.893188, 36.071579, 30.612648>,  <31.553560, 35.957199, 30.790327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893188, 36.071579, 30.612648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357176, -0.308789, -0.881518,
		-0.389234, 0.907128, -0.160048,
		0.849071, 0.285952, -0.444195,
		32.147911, 36.157364, 30.479389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333729, 36.184288, 30.162315>,  <31.553560, 35.957199, 30.790327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333729, 36.184288, 30.162315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.723804, 36.115517, 30.106529>,  <31.957850, 36.074253, 30.073057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.723804, 36.115517, 30.106529>,  <31.333729, 36.184288, 30.162315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723804, 36.115517, 30.106529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207964, -0.495447, -0.843376,
		0.075902, 0.851454, -0.518908,
		0.975187, -0.171928, -0.139466,
		32.016361, 36.063938, 30.064690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584831, 36.409073, 29.450518>,  <31.333729, 36.184288, 30.162315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584831, 36.409073, 29.450518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.887465, 36.157406, 29.521770>,  <32.069046, 36.006405, 29.564522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.887465, 36.157406, 29.521770>,  <31.584831, 36.409073, 29.450518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887465, 36.157406, 29.521770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127115, -0.125702, -0.983891,
		0.641423, 0.767039, -0.015127,
		0.756584, -0.629167, 0.178131,
		32.114441, 35.968655, 29.575211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.032906, 36.612324, 28.914469>,  <31.584831, 36.409073, 29.450518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.032906, 36.612324, 28.914469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.142292, 36.256584, 29.061039>,  <32.207924, 36.043140, 29.148981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.142292, 36.256584, 29.061039>,  <32.032906, 36.612324, 28.914469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142292, 36.256584, 29.061039> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241778, -0.305161, -0.921097,
		0.931000, 0.340481, 0.131575,
		0.273465, -0.889353, 0.366425,
		32.224331, 35.989777, 29.170967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689926, 36.427422, 28.561094>,  <32.032906, 36.612324, 28.914469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689926, 36.427422, 28.561094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.542351, 36.073669, 28.675465>,  <32.453804, 35.861420, 28.744087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.542351, 36.073669, 28.675465>,  <32.689926, 36.427422, 28.561094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542351, 36.073669, 28.675465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293015, -0.402609, -0.867207,
		0.882058, -0.236166, 0.407675,
		-0.368939, -0.884382, 0.285925,
		32.431667, 35.808353, 28.761242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189590, 35.975739, 28.335369>,  <32.689926, 36.427422, 28.561094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189590, 35.975739, 28.335369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.881088, 35.743114, 28.438866>,  <32.695988, 35.603539, 28.500963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.881088, 35.743114, 28.438866>,  <33.189590, 35.975739, 28.335369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881088, 35.743114, 28.438866> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008561, -0.415936, -0.909354,
		0.636464, -0.699132, 0.325772,
		-0.771259, -0.581560, 0.258743,
		32.649712, 35.568645, 28.516489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346722, 35.313652, 28.043903>,  <33.189590, 35.975739, 28.335369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346722, 35.313652, 28.043903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.953323, 35.283630, 28.109756>,  <32.717285, 35.265617, 28.149269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.953323, 35.283630, 28.109756>,  <33.346722, 35.313652, 28.043903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953323, 35.283630, 28.109756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127893, -0.355284, -0.925968,
		0.127989, -0.931741, 0.339821,
		-0.983495, -0.075053, 0.164635,
		32.658276, 35.261116, 28.159147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072403, 34.610905, 27.601952>,  <33.346722, 35.313652, 28.043903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072403, 34.610905, 27.601952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.753101, 34.835121, 27.690115>,  <32.561520, 34.969650, 27.743013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.753101, 34.835121, 27.690115>,  <33.072403, 34.610905, 27.601952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753101, 34.835121, 27.690115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446387, -0.304890, -0.841297,
		-0.404386, -0.769955, 0.493600,
		-0.798254, 0.560546, 0.220405,
		32.513626, 35.003284, 27.756237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499313, 34.131382, 27.505886>,  <33.072403, 34.610905, 27.601952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499313, 34.131382, 27.505886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366974, 34.507790, 27.477528>,  <32.287571, 34.733635, 27.460512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366974, 34.507790, 27.477528>,  <32.499313, 34.131382, 27.505886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366974, 34.507790, 27.477528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418598, -0.213671, -0.882678,
		-0.845764, -0.262354, 0.464600,
		-0.330846, 0.941018, -0.070894,
		32.267719, 34.790096, 27.456259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735813, 34.032108, 27.370626>,  <32.499313, 34.131382, 27.505886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735813, 34.032108, 27.370626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.856306, 34.388008, 27.233456>,  <31.928602, 34.601547, 27.151154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.856306, 34.388008, 27.233456>,  <31.735813, 34.032108, 27.370626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856306, 34.388008, 27.233456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499409, -0.159152, -0.851623,
		-0.812311, 0.427799, 0.396408,
		0.301234, 0.889752, -0.342928,
		31.946676, 34.654934, 27.130577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183268, 34.302231, 27.134516>,  <31.735813, 34.032108, 27.370626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183268, 34.302231, 27.134516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.478703, 34.507778, 26.959963>,  <31.655964, 34.631107, 26.855230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.478703, 34.507778, 26.959963>,  <31.183268, 34.302231, 27.134516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478703, 34.507778, 26.959963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366069, -0.237863, -0.899675,
		-0.566111, 0.824235, 0.012427,
		0.738588, 0.513865, -0.436384,
		31.700279, 34.661938, 26.829048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819923, 34.515568, 26.566309>,  <31.183268, 34.302231, 27.134516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819923, 34.515568, 26.566309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.209450, 34.560677, 26.487349>,  <31.443165, 34.587742, 26.439972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.209450, 34.560677, 26.487349>,  <30.819923, 34.515568, 26.566309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209450, 34.560677, 26.487349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187808, -0.090247, -0.978051,
		-0.128115, 0.989513, -0.066704,
		0.973814, 0.112775, -0.197401,
		31.501595, 34.594509, 26.428129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.872799, 35.074383, 26.090162>,  <30.819923, 34.515568, 26.566309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.872799, 35.074383, 26.090162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.203817, 34.853775, 26.048206>,  <31.402428, 34.721413, 26.023033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.203817, 34.853775, 26.048206>,  <30.872799, 35.074383, 26.090162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203817, 34.853775, 26.048206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189158, -0.098013, -0.977043,
		0.528574, 0.828386, -0.185434,
		0.827544, -0.551516, -0.104888,
		31.452080, 34.688320, 26.016741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270912, 35.361530, 25.459892>,  <30.872799, 35.074383, 26.090162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270912, 35.361530, 25.459892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.432550, 35.000687, 25.520435>,  <31.529533, 34.784180, 25.556761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.432550, 35.000687, 25.520435>,  <31.270912, 35.361530, 25.459892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432550, 35.000687, 25.520435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068023, -0.194650, -0.978511,
		0.912185, 0.385115, -0.140021,
		0.404094, -0.902108, 0.151360,
		31.553780, 34.730053, 25.565844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.837360, 35.285618, 24.948860>,  <31.270912, 35.361530, 25.459892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.837360, 35.285618, 24.948860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.738972, 34.912273, 25.053427>,  <31.679937, 34.688267, 25.116167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.738972, 34.912273, 25.053427>,  <31.837360, 35.285618, 24.948860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738972, 34.912273, 25.053427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116097, -0.239390, -0.963958,
		0.962299, -0.267458, -0.049476,
		-0.245974, -0.933359, 0.261415,
		31.665180, 34.632267, 25.131851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225422, 34.827568, 24.482965>,  <31.837360, 35.285618, 24.948860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225422, 34.827568, 24.482965> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.956116, 34.566956, 24.622808>,  <31.794533, 34.410587, 24.706715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.956116, 34.566956, 24.622808>,  <32.225422, 34.827568, 24.482965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956116, 34.566956, 24.622808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134425, -0.357090, -0.924346,
		0.727081, -0.669324, 0.152833,
		-0.673262, -0.651531, 0.349608,
		31.754137, 34.371498, 24.727692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423199, 34.175880, 24.225401>,  <32.225422, 34.827568, 24.482965>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423199, 34.175880, 24.225401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033302, 34.147335, 24.310045>,  <31.799364, 34.130207, 24.360832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.033302, 34.147335, 24.310045>,  <32.423199, 34.175880, 24.225401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033302, 34.147335, 24.310045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158230, -0.447980, -0.879930,
		0.157597, -0.891190, 0.425374,
		-0.974744, -0.071368, 0.211613,
		31.740879, 34.125923, 24.373529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922119, 33.655876, 24.420506>,  <32.423199, 34.175880, 24.225401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922119, 33.655876, 24.420506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.286716, 33.530865, 24.313549>,  <33.505474, 33.455856, 24.249374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.286716, 33.530865, 24.313549>,  <32.922119, 33.655876, 24.420506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286716, 33.530865, 24.313549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369650, 0.337369, 0.865760,
		-0.180367, -0.887979, 0.423038,
		0.911497, -0.312531, -0.267391,
		33.560165, 33.437107, 24.233332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331646, 33.156479, 24.943941>,  <32.922119, 33.655876, 24.420506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331646, 33.156479, 24.943941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.605515, 33.344757, 24.721350>,  <33.769836, 33.457726, 24.587795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.605515, 33.344757, 24.721350>,  <33.331646, 33.156479, 24.943941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605515, 33.344757, 24.721350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490560, 0.267069, 0.829473,
		0.539050, -0.840902, -0.048052,
		0.684672, 0.470700, -0.556476,
		33.810917, 33.485966, 24.554407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828648, 32.832043, 25.257517>,  <33.331646, 33.156479, 24.943941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828648, 32.832043, 25.257517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.969879, 33.156960, 25.071821>,  <34.054619, 33.351910, 24.960403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.969879, 33.156960, 25.071821>,  <33.828648, 32.832043, 25.257517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969879, 33.156960, 25.071821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616619, 0.171149, 0.768433,
		0.703646, -0.557575, -0.440446,
		0.353076, 0.812292, -0.464240,
		34.075802, 33.400646, 24.932549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582985, 32.821575, 25.358994>,  <33.828648, 32.832043, 25.257517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582985, 32.821575, 25.358994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.475868, 33.200180, 25.286989>,  <34.411598, 33.427341, 25.243788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.475868, 33.200180, 25.286989>,  <34.582985, 32.821575, 25.358994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475868, 33.200180, 25.286989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584574, 0.308130, 0.750553,
		0.765874, 0.095761, -0.635820,
		-0.267789, 0.946512, -0.180010,
		34.395531, 33.484135, 25.232986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089539, 33.158077, 25.645496>,  <34.582985, 32.821575, 25.358994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089539, 33.158077, 25.645496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.825489, 33.458252, 25.658634>,  <34.667057, 33.638355, 25.666517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.825489, 33.458252, 25.658634>,  <35.089539, 33.158077, 25.645496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825489, 33.458252, 25.658634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401054, 0.315146, 0.860139,
		0.635127, 0.580974, -0.509001,
		-0.660128, 0.750435, 0.032844,
		34.627449, 33.683384, 25.668488>
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
