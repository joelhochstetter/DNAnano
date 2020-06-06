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
	<24.193094, 34.781284, 35.324089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.280706, 34.996975, 34.998817>,  <24.333275, 35.126389, 34.803654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.280706, 34.996975, 34.998817>,  <24.193094, 34.781284, 35.324089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.280706, 34.996975, 34.998817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169620, 0.799684, 0.575963,
		0.960861, -0.264086, 0.083693,
		0.219032, 0.539225, -0.813180,
		24.346416, 35.158741, 34.754864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.965843, 35.056557, 35.410126>,  <24.193094, 34.781284, 35.324089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.965843, 35.056557, 35.410126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.684492, 35.281445, 35.236153>,  <24.515682, 35.416378, 35.131767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.684492, 35.281445, 35.236153>,  <24.965843, 35.056557, 35.410126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.684492, 35.281445, 35.236153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144438, 0.712162, 0.686996,
		0.695988, 0.420395, -0.582124,
		-0.703376, 0.562222, -0.434935,
		24.473478, 35.450111, 35.105671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.287214, 35.646339, 35.204773>,  <24.965843, 35.056557, 35.410126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.287214, 35.646339, 35.204773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.899612, 35.697731, 35.289177>,  <24.667051, 35.728565, 35.339821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.899612, 35.697731, 35.289177>,  <25.287214, 35.646339, 35.204773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.899612, 35.697731, 35.289177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237526, 0.719336, 0.652792,
		-0.067917, 0.682678, -0.727556,
		-0.969004, 0.128478, 0.211009,
		24.608912, 35.736275, 35.352478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.064894, 36.292332, 34.982590>,  <25.287214, 35.646339, 35.204773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.064894, 36.292332, 34.982590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.870102, 36.151161, 35.302162>,  <24.753227, 36.066460, 35.493908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.870102, 36.151161, 35.302162>,  <25.064894, 36.292332, 34.982590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.870102, 36.151161, 35.302162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404023, 0.719951, 0.564301,
		-0.774349, 0.597591, -0.208011,
		-0.486979, -0.352925, 0.798934,
		24.724009, 36.045284, 35.541843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.704268, 36.793491, 35.298546>,  <25.064894, 36.292332, 34.982590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.704268, 36.793491, 35.298546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838438, 36.517036, 35.554611>,  <24.918940, 36.351162, 35.708252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838438, 36.517036, 35.554611>,  <24.704268, 36.793491, 35.298546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.838438, 36.517036, 35.554611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581973, 0.686383, 0.436104,
		-0.740809, 0.226280, 0.632455,
		0.335425, -0.691141, 0.640167,
		24.939066, 36.309692, 35.746662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.616283, 36.981434, 36.079590>,  <24.704268, 36.793491, 35.298546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.616283, 36.981434, 36.079590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.945646, 36.784306, 35.967068>,  <25.143265, 36.666031, 35.899555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.945646, 36.784306, 35.967068>,  <24.616283, 36.981434, 36.079590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.945646, 36.784306, 35.967068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566797, 0.738088, 0.366016,
		0.027250, -0.460823, 0.887074,
		0.823407, -0.492817, -0.281306,
		25.192669, 36.636459, 35.882675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.157640, 36.859993, 36.633736>,  <24.616283, 36.981434, 36.079590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.157640, 36.859993, 36.633736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339563, 36.862164, 36.277508>,  <25.448717, 36.863464, 36.063770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.339563, 36.862164, 36.277508>,  <25.157640, 36.859993, 36.633736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.339563, 36.862164, 36.277508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720368, 0.585742, 0.371451,
		0.523661, -0.810479, 0.262493,
		0.454807, 0.005423, -0.890574,
		25.476006, 36.863792, 36.010334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.832592, 36.761799, 36.870041>,  <25.157640, 36.859993, 36.633736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.832592, 36.761799, 36.870041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817791, 36.931503, 36.508129>,  <25.808910, 37.033325, 36.290981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.817791, 36.931503, 36.508129>,  <25.832592, 36.761799, 36.870041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.817791, 36.931503, 36.508129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441682, 0.819110, 0.366027,
		0.896408, -0.386083, -0.217699,
		-0.037002, 0.424263, -0.904783,
		25.806690, 37.058781, 36.236694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457169, 36.991356, 36.812328>,  <25.832592, 36.761799, 36.870041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457169, 36.991356, 36.812328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257978, 37.189648, 36.527718>,  <26.138464, 37.308624, 36.356949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257978, 37.189648, 36.527718>,  <26.457169, 36.991356, 36.812328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257978, 37.189648, 36.527718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557809, 0.811337, 0.174876,
		0.663982, -0.309814, -0.680546,
		-0.497973, 0.495729, -0.711530,
		26.108587, 37.338367, 36.314259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.947865, 37.441662, 36.588070>,  <26.457169, 36.991356, 36.812328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.947865, 37.441662, 36.588070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622614, 37.631218, 36.452866>,  <26.427464, 37.744953, 36.371742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.622614, 37.631218, 36.452866>,  <26.947865, 37.441662, 36.588070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.622614, 37.631218, 36.452866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422439, 0.879927, 0.217425,
		0.400461, 0.034005, -0.915682,
		-0.813127, 0.473891, -0.338012,
		26.378675, 37.773384, 36.351463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.253368, 37.946270, 36.024296>,  <26.947865, 37.441662, 36.588070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.253368, 37.946270, 36.024296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890566, 38.063477, 36.145279>,  <26.672884, 38.133801, 36.217869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890566, 38.063477, 36.145279>,  <27.253368, 37.946270, 36.024296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890566, 38.063477, 36.145279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273604, 0.956017, -0.105702,
		-0.320129, -0.013117, -0.947283,
		-0.907005, 0.293019, 0.302460,
		26.618464, 38.151382, 36.236015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927279, 38.368732, 35.474274>,  <27.253368, 37.946270, 36.024296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927279, 38.368732, 35.474274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759104, 38.450214, 35.827938>,  <26.658199, 38.499104, 36.040134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.759104, 38.450214, 35.827938>,  <26.927279, 38.368732, 35.474274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.759104, 38.450214, 35.827938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125326, 0.978168, -0.165772,
		-0.898624, 0.041112, -0.436788,
		-0.420437, 0.203708, 0.884158,
		26.632973, 38.511326, 36.093185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.622355, 38.965714, 35.356609>,  <26.927279, 38.368732, 35.474274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.622355, 38.965714, 35.356609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.632605, 38.956097, 35.756363>,  <26.638754, 38.950325, 35.996216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.632605, 38.956097, 35.756363>,  <26.622355, 38.965714, 35.356609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.632605, 38.956097, 35.756363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205031, 0.978585, 0.018286,
		-0.978420, 0.204436, 0.030002,
		0.025621, -0.024043, 0.999383,
		26.640291, 38.948883, 36.056179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.207935, 39.533062, 35.479492>,  <26.622355, 38.965714, 35.356609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.207935, 39.533062, 35.479492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449600, 39.463009, 35.790443>,  <26.594599, 39.420979, 35.977016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449600, 39.463009, 35.790443>,  <26.207935, 39.533062, 35.479492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.449600, 39.463009, 35.790443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417024, 0.900782, -0.121171,
		-0.679030, 0.397393, 0.617250,
		0.604160, -0.175129, 0.777381,
		26.630848, 39.410469, 36.023659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.384756, 40.251049, 35.626789>,  <26.207935, 39.533062, 35.479492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.384756, 40.251049, 35.626789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.641108, 40.053730, 35.862053>,  <26.794918, 39.935341, 36.003212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.641108, 40.053730, 35.862053>,  <26.384756, 40.251049, 35.626789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.641108, 40.053730, 35.862053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518105, 0.843320, 0.142752,
		-0.566427, 0.213243, 0.796045,
		0.640880, -0.493293, 0.588162,
		26.833372, 39.905743, 36.038502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.448326, 40.627380, 36.270927>,  <26.384756, 40.251049, 35.626789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.448326, 40.627380, 36.270927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789501, 40.435047, 36.189632>,  <26.994205, 40.319649, 36.140858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.789501, 40.435047, 36.189632>,  <26.448326, 40.627380, 36.270927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.789501, 40.435047, 36.189632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493037, 0.869939, 0.011006,
		0.171509, -0.109589, 0.979068,
		0.852936, -0.480829, -0.203233,
		27.045382, 40.290798, 36.128662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.869736, 40.920341, 36.680290>,  <26.448326, 40.627380, 36.270927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.869736, 40.920341, 36.680290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107176, 40.761158, 36.400501>,  <27.249640, 40.665649, 36.232628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.107176, 40.761158, 36.400501>,  <26.869736, 40.920341, 36.680290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.107176, 40.761158, 36.400501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470761, 0.876659, -0.099258,
		0.652702, -0.270366, 0.707730,
		0.593603, -0.397958, -0.699475,
		27.285257, 40.641769, 36.190659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534607, 41.187599, 36.870083>,  <26.869736, 40.920341, 36.680290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.534607, 41.187599, 36.870083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601994, 41.058296, 36.497604>,  <27.642426, 40.980717, 36.274117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.601994, 41.058296, 36.497604>,  <27.534607, 41.187599, 36.870083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.601994, 41.058296, 36.497604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522914, 0.830118, -0.193561,
		0.835571, -0.454327, 0.308882,
		0.168468, -0.323253, -0.931196,
		27.652534, 40.961319, 36.218246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266060, 41.254070, 36.643524>,  <27.534607, 41.187599, 36.870083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266060, 41.254070, 36.643524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.077965, 41.223171, 36.291862>,  <27.965109, 41.204632, 36.080864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.077965, 41.223171, 36.291862>,  <28.266060, 41.254070, 36.643524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.077965, 41.223171, 36.291862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402856, 0.867534, -0.291705,
		0.785229, -0.491343, -0.376825,
		-0.470236, -0.077249, -0.879153,
		27.936893, 41.199997, 36.028118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.757479, 41.551949, 36.204891>,  <28.266060, 41.254070, 36.643524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.757479, 41.551949, 36.204891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.413965, 41.563946, 36.000305>,  <28.207857, 41.571144, 35.877556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.413965, 41.563946, 36.000305>,  <28.757479, 41.551949, 36.204891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.413965, 41.563946, 36.000305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342653, 0.775795, -0.529840,
		0.380897, -0.630271, -0.676517,
		-0.858782, 0.029996, -0.511463,
		28.156330, 41.572945, 35.846867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047142, 41.661591, 35.450047>,  <28.757479, 41.551949, 36.204891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047142, 41.661591, 35.450047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659536, 41.757854, 35.472290>,  <28.426973, 41.815613, 35.485638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.659536, 41.757854, 35.472290>,  <29.047142, 41.661591, 35.450047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659536, 41.757854, 35.472290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194197, 0.881431, -0.430542,
		-0.152631, -0.406402, -0.900856,
		-0.969016, 0.240658, 0.055612,
		28.368832, 41.830051, 35.488972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.846031, 41.846889, 34.732346>,  <29.047142, 41.661591, 35.450047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.846031, 41.846889, 34.732346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605206, 42.009354, 35.007317>,  <28.460711, 42.106831, 35.172298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.605206, 42.009354, 35.007317>,  <28.846031, 41.846889, 34.732346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.605206, 42.009354, 35.007317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137547, 0.900840, -0.411787,
		-0.786510, -0.153370, -0.598231,
		-0.602066, 0.406159, 0.687423,
		28.424585, 42.131203, 35.213543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474596, 42.337181, 34.367065>,  <28.846031, 41.846889, 34.732346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474596, 42.337181, 34.367065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398331, 42.458370, 34.740559>,  <28.352571, 42.531082, 34.964653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.398331, 42.458370, 34.740559>,  <28.474596, 42.337181, 34.367065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.398331, 42.458370, 34.740559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126243, 0.950850, -0.282750,
		-0.973504, 0.063967, -0.219542,
		-0.190665, 0.302973, 0.933731,
		28.341131, 42.549263, 35.020679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.042213, 42.915588, 34.333725>,  <28.474596, 42.337181, 34.367065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.042213, 42.915588, 34.333725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192457, 42.957153, 34.702099>,  <28.282604, 42.982094, 34.923122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192457, 42.957153, 34.702099>,  <28.042213, 42.915588, 34.333725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192457, 42.957153, 34.702099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232090, 0.951483, -0.202024,
		-0.897246, 0.289622, 0.333269,
		0.375611, 0.103917, 0.920933,
		28.305140, 42.988327, 34.978378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785828, 43.569683, 34.540630>,  <28.042213, 42.915588, 34.333725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785828, 43.569683, 34.540630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081276, 43.503242, 34.801964>,  <28.258545, 43.463379, 34.958763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.081276, 43.503242, 34.801964>,  <27.785828, 43.569683, 34.540630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.081276, 43.503242, 34.801964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217600, 0.976036, 0.002140,
		-0.638033, 0.140585, 0.757066,
		0.738623, -0.166103, 0.653334,
		28.302862, 43.453411, 34.997963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784872, 44.139294, 34.993500>,  <27.785828, 43.569683, 34.540630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784872, 44.139294, 34.993500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148029, 43.976265, 35.032719>,  <28.365923, 43.878448, 35.056252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148029, 43.976265, 35.032719>,  <27.784872, 44.139294, 34.993500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148029, 43.976265, 35.032719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413960, 0.908545, -0.056406,
		-0.066092, 0.091799, 0.993582,
		0.907892, -0.407576, 0.098049,
		28.420397, 43.853992, 35.062134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205578, 44.480831, 35.528618>,  <27.784872, 44.139294, 34.993500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205578, 44.480831, 35.528618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.418179, 44.326195, 35.227142>,  <28.545740, 44.233414, 35.046257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.418179, 44.326195, 35.227142>,  <28.205578, 44.480831, 35.528618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.418179, 44.326195, 35.227142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411777, 0.895488, -0.168942,
		0.740232, -0.220560, 0.635146,
		0.531503, -0.386595, -0.753690,
		28.577629, 44.210217, 35.001034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279570, 45.209408, 35.329556>,  <28.205578, 44.480831, 35.528618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279570, 45.209408, 35.329556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612597, 45.208843, 35.107986>,  <28.812412, 45.208504, 34.975044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.612597, 45.208843, 35.107986>,  <28.279570, 45.209408, 35.329556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.612597, 45.208843, 35.107986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175714, -0.947679, 0.266515,
		-0.525318, -0.319223, -0.788757,
		0.832566, -0.001409, -0.553924,
		28.862366, 45.208420, 34.941811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320066, 44.724850, 34.757469>,  <28.279570, 45.209408, 35.329556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320066, 44.724850, 34.757469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688463, 44.773758, 34.905426>,  <28.909502, 44.803104, 34.994202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688463, 44.773758, 34.905426>,  <28.320066, 44.724850, 34.757469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688463, 44.773758, 34.905426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077792, -0.988069, 0.132919,
		0.381735, -0.093642, -0.919516,
		0.920992, 0.122271, 0.369896,
		28.964762, 44.810440, 35.016396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946880, 44.428318, 34.424843>,  <28.320066, 44.724850, 34.757469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946880, 44.428318, 34.424843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007835, 44.421005, 34.820103>,  <29.044409, 44.416618, 35.057259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.007835, 44.421005, 34.820103>,  <28.946880, 44.428318, 34.424843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.007835, 44.421005, 34.820103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032892, -0.999369, -0.013419,
		0.987774, -0.030458, -0.152892,
		0.152386, -0.018284, 0.988152,
		29.053551, 44.415520, 35.116547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533998, 43.914986, 34.563862>,  <28.946880, 44.428318, 34.424843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533998, 43.914986, 34.563862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242628, 43.968536, 34.832626>,  <29.067806, 44.000668, 34.993885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.242628, 43.968536, 34.832626>,  <29.533998, 43.914986, 34.563862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.242628, 43.968536, 34.832626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088011, -0.990881, 0.102022,
		0.679446, 0.015180, 0.733569,
		-0.728428, 0.133881, 0.671914,
		29.024099, 44.008701, 35.034199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640060, 43.358616, 35.032215>,  <29.533998, 43.914986, 34.563862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640060, 43.358616, 35.032215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267801, 43.501324, 35.064739>,  <29.044445, 43.586948, 35.084255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267801, 43.501324, 35.064739>,  <29.640060, 43.358616, 35.032215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267801, 43.501324, 35.064739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345829, -0.930181, 0.123149,
		0.119572, 0.086488, 0.989051,
		-0.930648, 0.356768, 0.081313,
		28.988607, 43.608353, 35.089134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240147, 43.284683, 34.602222>,  <29.640060, 43.358616, 35.032215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240147, 43.284683, 34.602222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638464, 43.249809, 34.590977>,  <30.877455, 43.228886, 34.584229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638464, 43.249809, 34.590977>,  <30.240147, 43.284683, 34.602222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638464, 43.249809, 34.590977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087782, -0.995925, -0.020692,
		-0.026195, 0.023073, -0.999391,
		0.995795, -0.087187, -0.028114,
		30.937202, 43.223652, 34.582542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444221, 42.882248, 34.015530>,  <30.240147, 43.284683, 34.602222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444221, 42.882248, 34.015530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712788, 42.862198, 34.311283>,  <30.873928, 42.850170, 34.488735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712788, 42.862198, 34.311283>,  <30.444221, 42.882248, 34.015530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712788, 42.862198, 34.311283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124615, -0.991140, 0.045971,
		0.730527, -0.123004, -0.671715,
		0.671417, -0.050123, 0.739382,
		30.914213, 42.847160, 34.533096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.086069, 42.462509, 33.839985>,  <30.444221, 42.882248, 34.015530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.086069, 42.462509, 33.839985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005810, 42.461624, 34.231850>,  <30.957655, 42.461094, 34.466969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.005810, 42.461624, 34.231850>,  <31.086069, 42.462509, 33.839985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005810, 42.461624, 34.231850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149042, -0.988288, -0.032755,
		0.968260, -0.152583, 0.197969,
		-0.200648, -0.002210, 0.979661,
		30.945616, 42.460960, 34.525749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475670, 42.025738, 34.246128>,  <31.086069, 42.462509, 33.839985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475670, 42.025738, 34.246128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133318, 42.076485, 34.446678>,  <30.927908, 42.106934, 34.567009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.133318, 42.076485, 34.446678>,  <31.475670, 42.025738, 34.246128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.133318, 42.076485, 34.446678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051150, -0.985458, 0.162035,
		0.514643, 0.113037, 0.849921,
		-0.855878, 0.126864, 0.501377,
		30.876554, 42.114544, 34.597092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493155, 41.741734, 34.975296>,  <31.475670, 42.025738, 34.246128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493155, 41.741734, 34.975296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114851, 41.744850, 34.845387>,  <30.887869, 41.746719, 34.767441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114851, 41.744850, 34.845387>,  <31.493155, 41.741734, 34.975296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114851, 41.744850, 34.845387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064100, -0.984534, 0.163044,
		-0.318478, 0.175018, 0.931633,
		-0.945760, 0.007792, -0.324771,
		30.831123, 41.747189, 34.747955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.126593, 41.289238, 35.388332>,  <31.493155, 41.741734, 34.975296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.126593, 41.289238, 35.388332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883341, 41.327110, 35.073063>,  <30.737389, 41.349834, 34.883904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.883341, 41.327110, 35.073063>,  <31.126593, 41.289238, 35.388332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.883341, 41.327110, 35.073063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316497, -0.939456, 0.131351,
		-0.728015, 0.329332, 0.601277,
		-0.608132, 0.094676, -0.788170,
		30.700901, 41.355515, 34.836613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627449, 40.914642, 35.641411>,  <31.126593, 41.289238, 35.388332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627449, 40.914642, 35.641411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514410, 40.937737, 35.258411>,  <30.446587, 40.951591, 35.028610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514410, 40.937737, 35.258411>,  <30.627449, 40.914642, 35.641411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514410, 40.937737, 35.258411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349131, -0.935914, 0.046610,
		-0.893447, 0.347465, 0.284642,
		-0.282596, 0.057734, -0.957500,
		30.429632, 40.955055, 34.971161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944447, 40.829510, 35.611660>,  <30.627449, 40.914642, 35.641411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944447, 40.829510, 35.611660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090117, 40.725170, 35.254036>,  <30.177519, 40.662567, 35.039463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.090117, 40.725170, 35.254036>,  <29.944447, 40.829510, 35.611660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.090117, 40.725170, 35.254036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448007, -0.890675, 0.077376,
		-0.816497, 0.372365, -0.441222,
		0.364174, -0.260848, -0.894056,
		30.199369, 40.646915, 34.985821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.401913, 40.373512, 35.263584>,  <29.944447, 40.829510, 35.611660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.401913, 40.373512, 35.263584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742189, 40.308311, 35.063683>,  <29.946356, 40.269192, 34.943741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742189, 40.308311, 35.063683>,  <29.401913, 40.373512, 35.263584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742189, 40.308311, 35.063683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334084, -0.901659, -0.274589,
		-0.405847, 0.400550, -0.821492,
		0.850692, -0.163007, -0.499753,
		29.997396, 40.259411, 34.913757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269066, 40.282272, 34.492119>,  <29.401913, 40.373512, 35.263584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269066, 40.282272, 34.492119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615145, 40.101662, 34.579346>,  <29.822792, 39.993294, 34.631680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.615145, 40.101662, 34.579346>,  <29.269066, 40.282272, 34.492119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615145, 40.101662, 34.579346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358682, -0.861204, -0.360103,
		0.350395, 0.233345, -0.907068,
		0.865199, -0.451528, 0.218065,
		29.874704, 39.966202, 34.644764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291475, 39.758568, 33.969364>,  <29.269066, 40.282272, 34.492119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.291475, 39.758568, 33.969364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563316, 39.631668, 34.233936>,  <29.726421, 39.555527, 34.392681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.563316, 39.631668, 34.233936>,  <29.291475, 39.758568, 33.969364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563316, 39.631668, 34.233936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168723, -0.945074, -0.279944,
		0.713913, 0.078653, -0.695804,
		0.679604, -0.317254, 0.661429,
		29.767197, 39.536491, 34.432365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.730225, 39.373138, 33.607819>,  <29.291475, 39.758568, 33.969364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.730225, 39.373138, 33.607819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789669, 39.246300, 33.982491>,  <29.825336, 39.170197, 34.207294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789669, 39.246300, 33.982491>,  <29.730225, 39.373138, 33.607819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789669, 39.246300, 33.982491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158870, -0.942548, -0.293876,
		0.976051, -0.105136, -0.190450,
		0.148612, -0.317095, 0.936678,
		29.834253, 39.151173, 34.263493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136482, 38.714573, 33.568104>,  <29.730225, 39.373138, 33.607819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136482, 38.714573, 33.568104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980452, 38.722488, 33.936333>,  <29.886833, 38.727238, 34.157269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980452, 38.722488, 33.936333>,  <30.136482, 38.714573, 33.568104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980452, 38.722488, 33.936333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199045, -0.977942, -0.063324,
		0.899011, -0.207936, 0.385410,
		-0.390076, 0.019785, 0.920570,
		29.863428, 38.728424, 34.212505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370592, 38.161751, 33.750984>,  <30.136482, 38.714573, 33.568104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.370592, 38.161751, 33.750984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080484, 38.236038, 34.016163>,  <29.906420, 38.280609, 34.175270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.080484, 38.236038, 34.016163>,  <30.370592, 38.161751, 33.750984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.080484, 38.236038, 34.016163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312524, -0.946811, -0.076670,
		0.613445, -0.262792, 0.744732,
		-0.725268, 0.185714, 0.662945,
		29.862904, 38.291752, 34.215046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510798, 37.705795, 34.285103>,  <30.370592, 38.161751, 33.750984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510798, 37.705795, 34.285103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124186, 37.807888, 34.295517>,  <29.892218, 37.869144, 34.301765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.124186, 37.807888, 34.295517>,  <30.510798, 37.705795, 34.285103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.124186, 37.807888, 34.295517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252887, -0.964891, 0.070952,
		0.043227, 0.061994, 0.997140,
		-0.966530, 0.255230, 0.026032,
		29.834227, 37.884457, 34.303326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180077, 37.373985, 34.791862>,  <30.510798, 37.705795, 34.285103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180077, 37.373985, 34.791862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843397, 37.467979, 34.597408>,  <29.641390, 37.524376, 34.480736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843397, 37.467979, 34.597408>,  <30.180077, 37.373985, 34.791862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843397, 37.467979, 34.597408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416266, -0.855833, 0.307037,
		-0.343900, 0.460794, 0.818170,
		-0.841698, 0.234986, -0.486134,
		29.590887, 37.538475, 34.451569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.647902, 36.930801, 35.115955>,  <30.180077, 37.373985, 34.791862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.647902, 36.930801, 35.115955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431780, 37.095276, 34.822289>,  <29.302107, 37.193962, 34.646088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431780, 37.095276, 34.822289>,  <29.647902, 36.930801, 35.115955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431780, 37.095276, 34.822289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695549, -0.709274, 0.114639,
		-0.473586, 0.572587, 0.669224,
		-0.540304, 0.411186, -0.734164,
		29.269688, 37.218632, 34.602039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967186, 37.077816, 35.321686>,  <29.647902, 36.930801, 35.115955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967186, 37.077816, 35.321686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.970337, 37.012463, 34.927074>,  <28.972227, 36.973251, 34.690308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.970337, 37.012463, 34.927074>,  <28.967186, 37.077816, 35.321686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.970337, 37.012463, 34.927074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624704, -0.771157, 0.122729,
		-0.780822, 0.615323, -0.108140,
		0.007875, -0.163385, -0.986531,
		28.972700, 36.963448, 34.631115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307959, 37.262691, 34.975445>,  <28.967186, 37.077816, 35.321686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307959, 37.262691, 34.975445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.482367, 37.008316, 34.720737>,  <28.587011, 36.855690, 34.567913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.482367, 37.008316, 34.720737>,  <28.307959, 37.262691, 34.975445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.482367, 37.008316, 34.720737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816575, -0.576986, 0.017092,
		-0.378276, 0.512517, -0.770865,
		0.436019, -0.635934, -0.636769,
		28.613173, 36.817535, 34.529705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.713804, 36.988056, 34.789780>,  <28.307959, 37.262691, 34.975445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.713804, 36.988056, 34.789780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.021097, 36.766529, 34.661339>,  <28.205473, 36.633614, 34.584274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.021097, 36.766529, 34.661339>,  <27.713804, 36.988056, 34.789780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.021097, 36.766529, 34.661339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550910, -0.827413, 0.109015,
		-0.326059, 0.093150, -0.940749,
		0.768233, -0.553814, -0.321103,
		28.251568, 36.600384, 34.565006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388237, 36.489086, 34.390919>,  <27.713804, 36.988056, 34.789780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388237, 36.489086, 34.390919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748133, 36.328682, 34.459805>,  <27.964071, 36.232441, 34.501137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.748133, 36.328682, 34.459805>,  <27.388237, 36.489086, 34.390919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748133, 36.328682, 34.459805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414619, -0.908592, 0.050512,
		0.136220, -0.116852, -0.983763,
		0.899742, -0.401006, 0.172218,
		28.018055, 36.208382, 34.511471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.513498, 36.026909, 33.871162>,  <27.388237, 36.489086, 34.390919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.513498, 36.026909, 33.871162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.689255, 35.930084, 34.217190>,  <27.794708, 35.871990, 34.424805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.689255, 35.930084, 34.217190>,  <27.513498, 36.026909, 33.871162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.689255, 35.930084, 34.217190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661521, -0.738696, 0.129300,
		0.607723, -0.629073, -0.484706,
		0.439389, -0.242064, 0.865068,
		27.821072, 35.857464, 34.476711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.138193, 35.490608, 34.085739>,  <27.513498, 36.026909, 33.871162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.138193, 35.490608, 34.085739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.383011, 35.496113, 34.402020>,  <27.529902, 35.499416, 34.591789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.383011, 35.496113, 34.402020>,  <27.138193, 35.490608, 34.085739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.383011, 35.496113, 34.402020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401938, -0.855666, 0.326009,
		0.681063, -0.517346, -0.518176,
		0.612045, 0.013759, 0.790703,
		27.566624, 35.500240, 34.639229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.528961, 34.830956, 34.199463>,  <27.138193, 35.490608, 34.085739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.528961, 34.830956, 34.199463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501965, 35.021542, 34.550102>,  <27.485765, 35.135891, 34.760487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501965, 35.021542, 34.550102>,  <27.528961, 34.830956, 34.199463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501965, 35.021542, 34.550102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554980, -0.748063, 0.363868,
		0.829121, -0.461937, 0.314916,
		-0.067493, 0.476462, 0.876600,
		27.481716, 35.164482, 34.813084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.782578, 34.367725, 34.660404>,  <27.528961, 34.830956, 34.199463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.782578, 34.367725, 34.660404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533587, 34.624138, 34.840004>,  <27.384192, 34.777985, 34.947762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.533587, 34.624138, 34.840004>,  <27.782578, 34.367725, 34.660404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.533587, 34.624138, 34.840004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543507, -0.766864, 0.341348,
		0.563135, -0.031551, 0.825762,
		-0.622477, 0.641033, 0.448997,
		27.346844, 34.816448, 34.974705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.636879, 34.054840, 35.354057>,  <27.782578, 34.367725, 34.660404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.636879, 34.054840, 35.354057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323364, 34.279121, 35.247250>,  <27.135256, 34.413689, 35.183167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323364, 34.279121, 35.247250>,  <27.636879, 34.054840, 35.354057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323364, 34.279121, 35.247250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620543, -0.724147, 0.300895,
		-0.024648, 0.401532, 0.915513,
		-0.783785, 0.560699, -0.267017,
		27.088228, 34.447330, 35.167145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.308107, 33.660328, 35.135742>,  <27.636879, 34.054840, 35.354057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.308107, 33.660328, 35.135742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481709, 33.946278, 34.916435>,  <28.585869, 34.117847, 34.784851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.481709, 33.946278, 34.916435>,  <28.308107, 33.660328, 35.135742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.481709, 33.946278, 34.916435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890466, -0.247987, 0.381541,
		0.136791, -0.653804, -0.744197,
		0.434004, 0.714873, -0.548267,
		28.611910, 34.160740, 34.751953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742022, 33.421478, 34.558102>,  <28.308107, 33.660328, 35.135742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742022, 33.421478, 34.558102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877354, 33.760067, 34.722546>,  <28.958553, 33.963223, 34.821213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877354, 33.760067, 34.722546>,  <28.742022, 33.421478, 34.558102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877354, 33.760067, 34.722546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798333, -0.489475, 0.350826,
		0.498194, 0.209507, -0.841374,
		0.338330, 0.846476, 0.411110,
		28.978853, 34.014011, 34.845879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518873, 33.402275, 34.227829>,  <28.742022, 33.421478, 34.558102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518873, 33.402275, 34.227829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454620, 33.606236, 34.565868>,  <29.416069, 33.728611, 34.768692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.454620, 33.606236, 34.565868>,  <29.518873, 33.402275, 34.227829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454620, 33.606236, 34.565868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780871, -0.458038, 0.424785,
		0.603687, 0.728149, -0.324593,
		-0.160631, 0.509903, 0.845102,
		29.406431, 33.759205, 34.819401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153563, 33.582439, 34.452389>,  <29.518873, 33.402275, 34.227829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153563, 33.582439, 34.452389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921999, 33.586628, 34.778519>,  <29.783060, 33.589142, 34.974197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.921999, 33.586628, 34.778519>,  <30.153563, 33.582439, 34.452389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.921999, 33.586628, 34.778519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719418, -0.464091, 0.516775,
		0.383798, 0.885725, 0.261131,
		-0.578910, 0.010475, 0.815324,
		29.748325, 33.589771, 35.023117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561079, 33.953045, 34.964588>,  <30.153563, 33.582439, 34.452389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561079, 33.953045, 34.964588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.297100, 33.685562, 35.101582>,  <30.138712, 33.525070, 35.183777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.297100, 33.685562, 35.101582>,  <30.561079, 33.953045, 34.964588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297100, 33.685562, 35.101582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687167, -0.352935, 0.635011,
		-0.303762, 0.654420, 0.692433,
		-0.659947, -0.668709, 0.342487,
		30.099115, 33.484951, 35.204327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553608, 33.900017, 35.664108>,  <30.561079, 33.953045, 34.964588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553608, 33.900017, 35.664108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492844, 33.543087, 35.494080>,  <30.456385, 33.328930, 35.392063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.492844, 33.543087, 35.494080>,  <30.553608, 33.900017, 35.664108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492844, 33.543087, 35.494080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705277, -0.399162, 0.585880,
		-0.692465, -0.210790, 0.689971,
		-0.151913, -0.892321, -0.425071,
		30.447269, 33.275391, 35.366558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317228, 33.444073, 36.113960>,  <30.553608, 33.900017, 35.664108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317228, 33.444073, 36.113960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515265, 33.221085, 35.847393>,  <30.634087, 33.087292, 35.687450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515265, 33.221085, 35.847393>,  <30.317228, 33.444073, 36.113960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515265, 33.221085, 35.847393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636981, -0.288749, 0.714758,
		-0.590883, -0.778367, 0.212139,
		0.495089, -0.557467, -0.666422,
		30.663792, 33.053844, 35.647465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484566, 32.679924, 36.315582>,  <30.317228, 33.444073, 36.113960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484566, 32.679924, 36.315582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775103, 32.795891, 36.066303>,  <30.949425, 32.865471, 35.916737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.775103, 32.795891, 36.066303>,  <30.484566, 32.679924, 36.315582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775103, 32.795891, 36.066303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684098, -0.217050, 0.696346,
		0.066619, -0.932114, -0.355986,
		0.726341, 0.289919, -0.623198,
		30.993006, 32.882866, 35.879345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046730, 32.155903, 36.228706>,  <30.484566, 32.679924, 36.315582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046730, 32.155903, 36.228706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212336, 32.501087, 36.112850>,  <31.311699, 32.708199, 36.043339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212336, 32.501087, 36.112850>,  <31.046730, 32.155903, 36.228706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212336, 32.501087, 36.112850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843616, -0.244238, 0.478185,
		0.341914, -0.442319, -0.829125,
		0.414014, 0.862961, -0.289639,
		31.336540, 32.759975, 36.025959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718063, 31.940086, 36.148399>,  <31.046730, 32.155903, 36.228706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718063, 31.940086, 36.148399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725107, 32.339100, 36.175591>,  <31.729334, 32.578506, 36.191906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725107, 32.339100, 36.175591>,  <31.718063, 31.940086, 36.148399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725107, 32.339100, 36.175591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801851, -0.054704, 0.595015,
		0.597264, 0.044029, -0.800835,
		0.017611, 0.997531, 0.067977,
		31.730391, 32.638359, 36.195984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406841, 32.179028, 36.094151>,  <31.718063, 31.940086, 36.148399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406841, 32.179028, 36.094151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207584, 32.476383, 36.272694>,  <32.088032, 32.654797, 36.379818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207584, 32.476383, 36.272694>,  <32.406841, 32.179028, 36.094151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207584, 32.476383, 36.272694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715080, 0.061041, 0.696372,
		0.490427, 0.666071, -0.561987,
		-0.498138, 0.743386, 0.446359,
		32.058144, 32.699398, 36.406601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941338, 32.631329, 36.208992>,  <32.406841, 32.179028, 36.094151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941338, 32.631329, 36.208992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657173, 32.754597, 36.462086>,  <32.486675, 32.828556, 36.613941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657173, 32.754597, 36.462086>,  <32.941338, 32.631329, 36.208992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657173, 32.754597, 36.462086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698223, 0.195729, 0.688604,
		0.088361, 0.930980, -0.354217,
		-0.710407, 0.308168, 0.632736,
		32.444050, 32.847046, 36.651905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265495, 33.242805, 36.570988>,  <32.941338, 32.631329, 36.208992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265495, 33.242805, 36.570988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958874, 33.143551, 36.807907>,  <32.774899, 33.084000, 36.950058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.958874, 33.143551, 36.807907>,  <33.265495, 33.242805, 36.570988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958874, 33.143551, 36.807907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596674, 0.065801, 0.799782,
		-0.237425, 0.966489, 0.097614,
		-0.766557, -0.248132, 0.592301,
		32.728905, 33.069111, 36.985596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308163, 33.739124, 37.052090>,  <33.265495, 33.242805, 36.570988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308163, 33.739124, 37.052090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079659, 33.458431, 37.222374>,  <32.942554, 33.290016, 37.324543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079659, 33.458431, 37.222374>,  <33.308163, 33.739124, 37.052090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079659, 33.458431, 37.222374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583895, 0.017055, 0.811650,
		-0.576823, 0.712235, 0.399996,
		-0.571264, -0.701734, 0.425708,
		32.908279, 33.247910, 37.350086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080967, 34.072498, 37.704472>,  <33.308163, 33.739124, 37.052090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080967, 34.072498, 37.704472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027531, 33.678123, 37.744621>,  <32.995468, 33.441498, 37.768711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027531, 33.678123, 37.744621>,  <33.080967, 34.072498, 37.704472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027531, 33.678123, 37.744621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314701, 0.053837, 0.947663,
		-0.939743, 0.158187, 0.303084,
		-0.133590, -0.985940, 0.100375,
		32.987453, 33.382339, 37.774734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630005, 33.990486, 38.440392>,  <33.080967, 34.072498, 37.704472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630005, 33.990486, 38.440392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812180, 33.650505, 38.334442>,  <32.921482, 33.446514, 38.270874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812180, 33.650505, 38.334442>,  <32.630005, 33.990486, 38.440392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812180, 33.650505, 38.334442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176094, -0.205633, 0.962656,
		-0.872680, -0.485069, 0.056020,
		0.455435, -0.849955, -0.264870,
		32.948811, 33.395519, 38.254982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446739, 33.423603, 38.925877>,  <32.630005, 33.990486, 38.440392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446739, 33.423603, 38.925877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783806, 33.266788, 38.778244>,  <32.986046, 33.172699, 38.689663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783806, 33.266788, 38.778244>,  <32.446739, 33.423603, 38.925877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783806, 33.266788, 38.778244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198389, -0.411181, 0.889703,
		-0.500556, -0.822944, -0.268713,
		0.842666, -0.392037, -0.369082,
		33.036606, 33.149178, 38.667519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534336, 32.604862, 39.052517>,  <32.446739, 33.423603, 38.925877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534336, 32.604862, 39.052517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888615, 32.786266, 39.012783>,  <33.101181, 32.895111, 38.988945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.888615, 32.786266, 39.012783>,  <32.534336, 32.604862, 39.052517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.888615, 32.786266, 39.012783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320324, -0.442074, 0.837833,
		0.336058, -0.773883, -0.536815,
		0.885696, 0.453515, -0.099331,
		33.154324, 32.922321, 38.982983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029472, 32.018776, 39.173901>,  <32.534336, 32.604862, 39.052517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029472, 32.018776, 39.173901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233559, 32.355671, 39.243538>,  <33.356010, 32.557808, 39.285320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233559, 32.355671, 39.243538>,  <33.029472, 32.018776, 39.173901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233559, 32.355671, 39.243538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426845, -0.423718, 0.798916,
		0.746646, -0.333310, -0.575695,
		0.510219, 0.842239, 0.174096,
		33.386623, 32.608341, 39.295765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687706, 31.867729, 39.341721>,  <33.029472, 32.018776, 39.173901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687706, 31.867729, 39.341721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656006, 32.240902, 39.482208>,  <33.636986, 32.464806, 39.566502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656006, 32.240902, 39.482208>,  <33.687706, 31.867729, 39.341721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656006, 32.240902, 39.482208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410286, -0.290579, 0.864424,
		0.908507, 0.212608, -0.359740,
		-0.079251, 0.932932, 0.351223,
		33.632229, 32.520782, 39.587574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225380, 31.943169, 39.634819>,  <33.687706, 31.867729, 39.341721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225380, 31.943169, 39.634819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039585, 32.262703, 39.787716>,  <33.928108, 32.454426, 39.879456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.039585, 32.262703, 39.787716>,  <34.225380, 31.943169, 39.634819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.039585, 32.262703, 39.787716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359316, -0.224504, 0.905809,
		0.809410, 0.558083, -0.182756,
		-0.464487, 0.798838, 0.382244,
		33.900238, 32.502354, 39.902390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603992, 32.120052, 40.173733>,  <34.225380, 31.943169, 39.634819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603992, 32.120052, 40.173733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248394, 32.288651, 40.245312>,  <34.035034, 32.389809, 40.288261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248394, 32.288651, 40.245312>,  <34.603992, 32.120052, 40.173733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248394, 32.288651, 40.245312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127560, -0.147371, 0.980821,
		0.439785, 0.894775, 0.077246,
		-0.888998, 0.421497, 0.178949,
		33.981693, 32.415100, 40.298996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687534, 32.532990, 40.777111>,  <34.603992, 32.120052, 40.173733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687534, 32.532990, 40.777111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296745, 32.453339, 40.746437>,  <34.062271, 32.405548, 40.728031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296745, 32.453339, 40.746437>,  <34.687534, 32.532990, 40.777111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296745, 32.453339, 40.746437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006480, -0.386918, 0.922091,
		-0.213283, 0.900358, 0.379297,
		-0.976969, -0.199124, -0.076689,
		34.003654, 32.393600, 40.723431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.416115, 32.522823, 41.451199>,  <34.687534, 32.532990, 40.777111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.416115, 32.522823, 41.451199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121033, 32.331242, 41.260876>,  <33.943981, 32.216293, 41.146683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121033, 32.331242, 41.260876>,  <34.416115, 32.522823, 41.451199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121033, 32.331242, 41.260876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268124, -0.438959, 0.857569,
		-0.619593, 0.760211, 0.195406,
		-0.737708, -0.478951, -0.475807,
		33.899719, 32.187557, 41.118134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.931034, 32.521301, 41.952400>,  <34.416115, 32.522823, 41.451199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.931034, 32.521301, 41.952400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829964, 32.225155, 41.703236>,  <33.769321, 32.047466, 41.553738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829964, 32.225155, 41.703236>,  <33.931034, 32.521301, 41.952400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829964, 32.225155, 41.703236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200035, -0.589919, 0.782292,
		-0.946648, 0.322268, 0.000958,
		-0.252673, -0.740364, -0.622911,
		33.754162, 32.003044, 41.516361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250229, 32.316376, 42.145622>,  <33.931034, 32.521301, 41.952400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250229, 32.316376, 42.145622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389690, 32.005768, 41.935684>,  <33.473366, 31.819403, 41.809723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389690, 32.005768, 41.935684>,  <33.250229, 32.316376, 42.145622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389690, 32.005768, 41.935684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172993, -0.603677, 0.778234,
		-0.921150, -0.180535, -0.344803,
		0.348648, -0.776518, -0.524846,
		33.494286, 31.772812, 41.778229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738659, 31.779812, 42.352318>,  <33.250229, 32.316376, 42.145622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738659, 31.779812, 42.352318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065434, 31.603741, 42.203266>,  <33.261497, 31.498098, 42.113834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065434, 31.603741, 42.203266>,  <32.738659, 31.779812, 42.352318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065434, 31.603741, 42.203266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128950, -0.769175, 0.625893,
		-0.562122, -0.463266, -0.685131,
		0.816940, -0.440175, -0.372632,
		33.310516, 31.471687, 42.091476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522926, 31.159760, 42.023685>,  <32.738659, 31.779812, 42.352318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522926, 31.159760, 42.023685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911213, 31.117781, 42.110119>,  <33.144184, 31.092594, 42.161980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.911213, 31.117781, 42.110119>,  <32.522926, 31.159760, 42.023685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.911213, 31.117781, 42.110119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212778, -0.793127, 0.570679,
		0.111487, -0.599946, -0.792234,
		0.970719, -0.104947, 0.216079,
		33.202427, 31.086296, 42.174942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582245, 30.396521, 42.077419>,  <32.522926, 31.159760, 42.023685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582245, 30.396521, 42.077419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910717, 30.555567, 42.241161>,  <33.107800, 30.650995, 42.339405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910717, 30.555567, 42.241161>,  <32.582245, 30.396521, 42.077419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910717, 30.555567, 42.241161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094867, -0.612220, 0.784976,
		0.562733, -0.683438, -0.465020,
		0.821177, 0.397617, 0.409352,
		33.157070, 30.674852, 42.363968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815445, 29.954830, 42.507824>,  <32.582245, 30.396521, 42.077419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815445, 29.954830, 42.507824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024136, 30.245502, 42.686596>,  <33.149349, 30.419905, 42.793858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024136, 30.245502, 42.686596>,  <32.815445, 29.954830, 42.507824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024136, 30.245502, 42.686596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070654, -0.485270, 0.871505,
		0.850184, -0.486261, -0.201834,
		0.521723, 0.726679, 0.446925,
		33.180653, 30.463507, 42.820675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561344, 29.713133, 42.794678>,  <32.815445, 29.954830, 42.507824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561344, 29.713133, 42.794678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440338, 30.023569, 43.016006>,  <33.367737, 30.209831, 43.148804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440338, 30.023569, 43.016006>,  <33.561344, 29.713133, 42.794678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440338, 30.023569, 43.016006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062340, -0.563172, 0.823985,
		0.951105, 0.283759, 0.121984,
		-0.302511, 0.776092, 0.553325,
		33.349586, 30.256397, 43.182003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932980, 29.609098, 43.409313>,  <33.561344, 29.713133, 42.794678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932980, 29.609098, 43.409313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644695, 29.869743, 43.503948>,  <33.471725, 30.026131, 43.560730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644695, 29.869743, 43.503948>,  <33.932980, 29.609098, 43.409313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644695, 29.869743, 43.503948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026102, -0.366547, 0.930033,
		0.692742, 0.664112, 0.281184,
		-0.720713, 0.651612, 0.236588,
		33.428482, 30.065228, 43.574924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196453, 29.884445, 44.015301>,  <33.932980, 29.609098, 43.409313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196453, 29.884445, 44.015301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807770, 29.978514, 44.024082>,  <33.574562, 30.034954, 44.029350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807770, 29.978514, 44.024082>,  <34.196453, 29.884445, 44.015301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807770, 29.978514, 44.024082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041790, -0.262658, 0.963983,
		0.232467, 0.935791, 0.265055,
		-0.971706, 0.235171, 0.021953,
		33.516258, 30.049065, 44.030666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116066, 30.413738, 44.558620>,  <34.196453, 29.884445, 44.015301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116066, 30.413738, 44.558620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762402, 30.237549, 44.496338>,  <33.550201, 30.131836, 44.458969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762402, 30.237549, 44.496338>,  <34.116066, 30.413738, 44.558620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762402, 30.237549, 44.496338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132453, -0.083273, 0.987685,
		-0.448014, 0.893896, 0.015285,
		-0.884161, -0.440472, -0.155706,
		33.497154, 30.105408, 44.449627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737873, 30.602022, 45.156273>,  <34.116066, 30.413738, 44.558620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737873, 30.602022, 45.156273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493698, 30.327934, 44.997360>,  <33.347191, 30.163481, 44.902012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493698, 30.327934, 44.997360>,  <33.737873, 30.602022, 45.156273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493698, 30.327934, 44.997360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254137, -0.305622, 0.917611,
		-0.750184, 0.661112, 0.012424,
		-0.610441, -0.685220, -0.397286,
		33.310566, 30.122368, 44.878174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164600, 30.595678, 45.560215>,  <33.737873, 30.602022, 45.156273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164600, 30.595678, 45.560215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109638, 30.241751, 45.382130>,  <33.076660, 30.029394, 45.275276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109638, 30.241751, 45.382130>,  <33.164600, 30.595678, 45.560215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109638, 30.241751, 45.382130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113125, -0.432521, 0.894499,
		-0.984034, 0.173275, -0.040663,
		-0.137406, -0.884817, -0.445217,
		33.068417, 29.976305, 45.248566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573429, 30.323299, 45.800472>,  <33.164600, 30.595678, 45.560215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573429, 30.323299, 45.800472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812866, 30.023100, 45.688442>,  <32.956528, 29.842979, 45.621223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.812866, 30.023100, 45.688442>,  <32.573429, 30.323299, 45.800472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.812866, 30.023100, 45.688442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026182, -0.331114, 0.943228,
		-0.800629, -0.571938, -0.178551,
		0.598588, -0.750501, -0.280074,
		32.992443, 29.797949, 45.604420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.618179, 30.050714, 46.467224>,  <32.573429, 30.323299, 45.800472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.618179, 30.050714, 46.467224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845699, 29.801405, 46.252563>,  <32.982212, 29.651819, 46.123768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.845699, 29.801405, 46.252563>,  <32.618179, 30.050714, 46.467224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.845699, 29.801405, 46.252563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190392, -0.534980, 0.823133,
		-0.800136, -0.570371, -0.185630,
		0.568799, -0.623276, -0.536651,
		33.016338, 29.614422, 46.091568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371716, 29.343260, 46.425800>,  <32.618179, 30.050714, 46.467224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371716, 29.343260, 46.425800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771202, 29.361307, 46.416618>,  <33.010895, 29.372135, 46.411110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771202, 29.361307, 46.416618>,  <32.371716, 29.343260, 46.425800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771202, 29.361307, 46.416618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042891, -0.513308, 0.857132,
		0.026892, -0.857018, -0.514585,
		0.998718, 0.045121, -0.022954,
		33.070816, 29.374844, 46.409733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581512, 28.806101, 46.869652>,  <32.371716, 29.343260, 46.425800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581512, 28.806101, 46.869652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940189, 28.982523, 46.854584>,  <33.155396, 29.088377, 46.845543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940189, 28.982523, 46.854584>,  <32.581512, 28.806101, 46.869652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940189, 28.982523, 46.854584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166832, -0.257908, 0.951657,
		0.410020, -0.859623, -0.304846,
		0.896688, 0.441057, -0.037666,
		33.209194, 29.114840, 46.843285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972565, 28.343662, 47.052685>,  <32.581512, 28.806101, 46.869652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972565, 28.343662, 47.052685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229912, 28.644096, 47.111938>,  <33.384319, 28.824356, 47.147491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229912, 28.644096, 47.111938>,  <32.972565, 28.343662, 47.052685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229912, 28.644096, 47.111938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247945, -0.387506, 0.887898,
		0.724290, -0.534519, -0.435538,
		0.643372, 0.751085, 0.148135,
		33.422924, 28.869421, 47.156380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576462, 28.030273, 47.339981>,  <32.972565, 28.343662, 47.052685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576462, 28.030273, 47.339981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589951, 28.419359, 47.431793>,  <33.598042, 28.652811, 47.486881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.589951, 28.419359, 47.431793>,  <33.576462, 28.030273, 47.339981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589951, 28.419359, 47.431793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082399, -0.231588, 0.969318,
		0.996029, -0.013771, -0.087960,
		0.033719, 0.972716, 0.229534,
		33.600067, 28.711174, 47.500652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172520, 28.097612, 47.684090>,  <33.576462, 28.030273, 47.339981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172520, 28.097612, 47.684090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957233, 28.414228, 47.799877>,  <33.828060, 28.604198, 47.869350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.957233, 28.414228, 47.799877>,  <34.172520, 28.097612, 47.684090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957233, 28.414228, 47.799877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120510, -0.267650, 0.955950,
		0.834147, 0.549391, 0.048665,
		-0.538216, 0.791538, 0.289467,
		33.795769, 28.651690, 47.886719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575371, 28.418386, 48.098057>,  <34.172520, 28.097612, 47.684090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575371, 28.418386, 48.098057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205849, 28.543621, 48.186203>,  <33.984135, 28.618763, 48.239090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205849, 28.543621, 48.186203>,  <34.575371, 28.418386, 48.098057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205849, 28.543621, 48.186203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169574, -0.181439, 0.968672,
		0.343262, 0.932232, 0.114523,
		-0.923805, 0.313088, 0.220363,
		33.928707, 28.637547, 48.252312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699398, 28.797495, 48.756733>,  <34.575371, 28.418386, 48.098057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699398, 28.797495, 48.756733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302757, 28.745796, 48.758503>,  <34.064774, 28.714777, 48.759567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.302757, 28.745796, 48.758503>,  <34.699398, 28.797495, 48.756733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.302757, 28.745796, 48.758503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022642, -0.139800, 0.989921,
		-0.127325, 0.981708, 0.141552,
		-0.991603, -0.129247, 0.004427,
		34.005276, 28.707022, 48.759830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402374, 29.250957, 49.358921>,  <34.699398, 28.797495, 48.756733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402374, 29.250957, 49.358921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166393, 28.942284, 49.263878>,  <34.024803, 28.757078, 49.206852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166393, 28.942284, 49.263878>,  <34.402374, 29.250957, 49.358921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166393, 28.942284, 49.263878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076610, -0.239450, 0.967882,
		-0.803796, 0.589206, 0.082145,
		-0.589951, -0.771687, -0.237608,
		33.989407, 28.710777, 49.192596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746544, 29.290865, 49.850754>,  <34.402374, 29.250957, 49.358921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746544, 29.290865, 49.850754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812168, 28.916451, 49.726227>,  <33.851543, 28.691801, 49.651512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812168, 28.916451, 49.726227>,  <33.746544, 29.290865, 49.850754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812168, 28.916451, 49.726227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019674, -0.312422, 0.949740,
		-0.986254, -0.161939, -0.032840,
		0.164060, -0.936039, -0.311314,
		33.861385, 28.635639, 49.632832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292397, 28.808741, 50.162464>,  <33.746544, 29.290865, 49.850754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292397, 28.808741, 50.162464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645088, 28.640436, 50.077126>,  <33.856701, 28.539454, 50.025921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645088, 28.640436, 50.077126>,  <33.292397, 28.808741, 50.162464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645088, 28.640436, 50.077126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060489, -0.347670, 0.935664,
		-0.467868, -0.837904, -0.281098,
		0.881726, -0.420764, -0.213347,
		33.909607, 28.514208, 50.013123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407845, 27.932226, 50.151276>,  <33.292397, 28.808741, 50.162464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407845, 27.932226, 50.151276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717827, 28.163187, 50.254078>,  <33.903816, 28.301764, 50.315758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717827, 28.163187, 50.254078>,  <33.407845, 27.932226, 50.151276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717827, 28.163187, 50.254078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068560, -0.481041, 0.874013,
		0.628285, -0.659702, -0.412373,
		0.774957, 0.577401, 0.257002,
		33.950314, 28.336407, 50.331177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659363, 27.229601, 50.078903>,  <33.407845, 27.932226, 50.151276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659363, 27.229601, 50.078903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435299, 26.938547, 50.237278>,  <33.300861, 26.763916, 50.332302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.435299, 26.938547, 50.237278>,  <33.659363, 27.229601, 50.078903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.435299, 26.938547, 50.237278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168902, -0.568247, -0.805337,
		0.810980, -0.384246, 0.441210,
		-0.560164, -0.727633, 0.395937,
		33.267250, 26.720257, 50.356060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089142, 26.696375, 50.062382>,  <33.659363, 27.229601, 50.078903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089142, 26.696375, 50.062382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708954, 26.582413, 50.012695>,  <33.480839, 26.514036, 49.982883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708954, 26.582413, 50.012695>,  <34.089142, 26.696375, 50.062382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708954, 26.582413, 50.012695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291656, -0.679482, -0.673232,
		0.107406, -0.676117, 0.728924,
		-0.950474, -0.284904, -0.124213,
		33.423813, 26.496941, 49.975430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873348, 26.080078, 50.332710>,  <34.089142, 26.696375, 50.062382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873348, 26.080078, 50.332710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663231, 26.158442, 50.001488>,  <33.537159, 26.205460, 49.802753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.663231, 26.158442, 50.001488>,  <33.873348, 26.080078, 50.332710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663231, 26.158442, 50.001488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394625, -0.806070, -0.441046,
		-0.753880, -0.558453, 0.346115,
		-0.525297, 0.195910, -0.828059,
		33.505642, 26.217215, 49.753071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442051, 25.502409, 50.144840>,  <33.873348, 26.080078, 50.332710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442051, 25.502409, 50.144840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546886, 25.716908, 49.823902>,  <33.609787, 25.845606, 49.631340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.546886, 25.716908, 49.823902>,  <33.442051, 25.502409, 50.144840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546886, 25.716908, 49.823902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435764, -0.807578, -0.397400,
		-0.861057, -0.245476, -0.445334,
		0.262090, 0.536245, -0.802341,
		33.625515, 25.877781, 49.583199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.187187, 25.103294, 49.527008>,  <33.442051, 25.502409, 50.144840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.187187, 25.103294, 49.527008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514389, 25.327147, 49.473824>,  <33.710709, 25.461458, 49.441914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514389, 25.327147, 49.473824>,  <33.187187, 25.103294, 49.527008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514389, 25.327147, 49.473824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421461, -0.740438, -0.523567,
		-0.391457, 0.372241, -0.841545,
		0.818005, 0.559632, -0.132965,
		33.759792, 25.495037, 49.433933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265564, 25.181768, 48.766899>,  <33.187187, 25.103294, 49.527008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265564, 25.181768, 48.766899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615334, 25.229902, 48.954899>,  <33.825195, 25.258783, 49.067699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.615334, 25.229902, 48.954899>,  <33.265564, 25.181768, 48.766899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615334, 25.229902, 48.954899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390768, -0.748845, -0.535287,
		0.287545, 0.651729, -0.701831,
		0.874425, 0.120334, 0.470001,
		33.877663, 25.266003, 49.095898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711697, 24.632717, 49.012848>,  <33.265564, 25.181768, 48.766899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711697, 24.632717, 49.012848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831936, 24.363628, 48.742416>,  <33.904079, 24.202175, 48.580158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831936, 24.363628, 48.742416>,  <33.711697, 24.632717, 49.012848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831936, 24.363628, 48.742416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232381, 0.635840, -0.736007,
		0.925007, 0.378353, 0.034808,
		0.300603, -0.672723, -0.676078,
		33.922115, 24.161812, 48.539593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261566, 24.932693, 48.743103>,  <33.711697, 24.632717, 49.012848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261566, 24.932693, 48.743103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097012, 24.675667, 48.484531>,  <33.998280, 24.521450, 48.329388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097012, 24.675667, 48.484531>,  <34.261566, 24.932693, 48.743103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097012, 24.675667, 48.484531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198925, 0.755422, -0.624313,
		0.889488, -0.128244, -0.438594,
		-0.411388, -0.642566, -0.646428,
		33.973595, 24.482897, 48.290604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949100, 25.219290, 48.405716>,  <34.261566, 24.932693, 48.743103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949100, 25.219290, 48.405716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706093, 25.532879, 48.456802>,  <34.560287, 25.721033, 48.487453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706093, 25.532879, 48.456802>,  <34.949100, 25.219290, 48.405716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706093, 25.532879, 48.456802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045925, 0.195184, -0.979691,
		-0.792979, -0.589313, -0.154581,
		-0.607516, 0.783973, 0.127713,
		34.523838, 25.768070, 48.495117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465405, 25.216024, 47.891762>,  <34.949100, 25.219290, 48.405716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465405, 25.216024, 47.891762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454441, 25.595589, 48.017506>,  <34.447865, 25.823326, 48.092953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454441, 25.595589, 48.017506>,  <34.465405, 25.216024, 47.891762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454441, 25.595589, 48.017506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060839, 0.312309, -0.948030,
		-0.997771, -0.045110, 0.049171,
		-0.027409, 0.948909, 0.314357,
		34.446217, 25.880260, 48.111813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901821, 25.529804, 47.602604>,  <34.465405, 25.216024, 47.891762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901821, 25.529804, 47.602604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161919, 25.824268, 47.677700>,  <34.317978, 26.000948, 47.722759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161919, 25.824268, 47.677700>,  <33.901821, 25.529804, 47.602604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161919, 25.824268, 47.677700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157969, 0.372730, -0.914395,
		-0.743121, 0.564922, 0.358656,
		0.650244, 0.736162, 0.187743,
		34.356991, 26.045116, 47.734024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624165, 26.117561, 47.395905>,  <33.901821, 25.529804, 47.602604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624165, 26.117561, 47.395905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019489, 26.177710, 47.385956>,  <34.256683, 26.213799, 47.379986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.019489, 26.177710, 47.385956>,  <33.624165, 26.117561, 47.395905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.019489, 26.177710, 47.385956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079857, 0.371860, -0.924847,
		-0.129821, 0.916028, 0.379524,
		0.988316, 0.150372, -0.024876,
		34.315983, 26.222822, 47.378494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665936, 26.760818, 47.123470>,  <33.624165, 26.117561, 47.395905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665936, 26.760818, 47.123470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021645, 26.591124, 47.055092>,  <34.235069, 26.489305, 47.014065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.021645, 26.591124, 47.055092>,  <33.665936, 26.760818, 47.123470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021645, 26.591124, 47.055092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014318, 0.347741, -0.937481,
		0.457161, 0.836120, 0.303161,
		0.889269, -0.424239, -0.170945,
		34.288425, 26.463852, 47.003807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771851, 27.095924, 46.518578>,  <33.665936, 26.760818, 47.123470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771851, 27.095924, 46.518578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062733, 26.821394, 46.523045>,  <34.237263, 26.656675, 46.525723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062733, 26.821394, 46.523045>,  <33.771851, 27.095924, 46.518578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062733, 26.821394, 46.523045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215937, 0.213299, -0.952825,
		0.651567, 0.695312, 0.303316,
		0.727208, -0.686327, 0.011165,
		34.280895, 26.615496, 46.526394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.313702, 27.418383, 46.266174>,  <33.771851, 27.095924, 46.518578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.313702, 27.418383, 46.266174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366138, 27.022959, 46.236340>,  <34.397602, 26.785704, 46.218437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366138, 27.022959, 46.236340>,  <34.313702, 27.418383, 46.266174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366138, 27.022959, 46.236340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136918, 0.092573, -0.986247,
		0.981869, 0.119081, 0.147488,
		0.131097, -0.988559, -0.074591,
		34.405468, 26.726391, 46.213963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955132, 27.444742, 46.003864>,  <34.313702, 27.418383, 46.266174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955132, 27.444742, 46.003864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762573, 27.109398, 45.901558>,  <34.647038, 26.908192, 45.840176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762573, 27.109398, 45.901558>,  <34.955132, 27.444742, 46.003864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762573, 27.109398, 45.901558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277891, 0.130767, -0.951670,
		0.831287, -0.529201, 0.170023,
		-0.481391, -0.838359, -0.255765,
		34.618156, 26.857889, 45.824829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388828, 27.068075, 45.545639>,  <34.955132, 27.444742, 46.003864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388828, 27.068075, 45.545639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030983, 26.903116, 45.476822>,  <34.816277, 26.804140, 45.435532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030983, 26.903116, 45.476822>,  <35.388828, 27.068075, 45.545639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030983, 26.903116, 45.476822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171779, 0.038039, -0.984401,
		0.412512, -0.910208, 0.036812,
		-0.894609, -0.412400, -0.172046,
		34.762600, 26.779396, 45.425209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441250, 26.518717, 44.962811>,  <35.388828, 27.068075, 45.545639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441250, 26.518717, 44.962811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047333, 26.587507, 44.972633>,  <34.810982, 26.628782, 44.978527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047333, 26.587507, 44.972633>,  <35.441250, 26.518717, 44.962811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047333, 26.587507, 44.972633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031188, 0.314074, -0.948886,
		-0.170900, -0.933692, -0.314662,
		-0.984795, 0.171978, 0.024555,
		34.751896, 26.639101, 44.980000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309269, 26.439466, 44.187653>,  <35.441250, 26.518717, 44.962811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309269, 26.439466, 44.187653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977158, 26.605675, 44.336231>,  <34.777889, 26.705399, 44.425381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977158, 26.605675, 44.336231>,  <35.309269, 26.439466, 44.187653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977158, 26.605675, 44.336231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286413, 0.253632, -0.923926,
		-0.478121, -0.873507, -0.091576,
		-0.830282, 0.415519, 0.371450,
		34.728073, 26.730331, 44.447666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710785, 26.119209, 43.844387>,  <35.309269, 26.439466, 44.187653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710785, 26.119209, 43.844387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607819, 26.475454, 43.994347>,  <34.546040, 26.689201, 44.084324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.607819, 26.475454, 43.994347>,  <34.710785, 26.119209, 43.844387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607819, 26.475454, 43.994347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361809, 0.270922, -0.892018,
		-0.896010, -0.365259, 0.252492,
		-0.257412, 0.890610, 0.374903,
		34.530594, 26.742638, 44.106819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096481, 26.296106, 43.396523>,  <34.710785, 26.119209, 43.844387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096481, 26.296106, 43.396523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196991, 26.634165, 43.585243>,  <34.257298, 26.837000, 43.698475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196991, 26.634165, 43.585243>,  <34.096481, 26.296106, 43.396523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196991, 26.634165, 43.585243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307558, 0.531890, -0.788987,
		-0.917753, 0.053144, 0.393579,
		0.251271, 0.845144, 0.471799,
		34.272373, 26.887709, 43.726784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529106, 26.673296, 43.503044>,  <34.096481, 26.296106, 43.396523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529106, 26.673296, 43.503044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826702, 26.939081, 43.531250>,  <34.005260, 27.098553, 43.548176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826702, 26.939081, 43.531250>,  <33.529106, 26.673296, 43.503044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826702, 26.939081, 43.531250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472448, 0.597728, -0.647700,
		-0.472524, 0.448563, 0.758625,
		0.743985, 0.664464, 0.070518,
		34.049896, 27.138420, 43.552406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222214, 27.414165, 43.562428>,  <33.529106, 26.673296, 43.503044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222214, 27.414165, 43.562428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595051, 27.441738, 43.420181>,  <33.818752, 27.458282, 43.334835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595051, 27.441738, 43.420181>,  <33.222214, 27.414165, 43.562428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595051, 27.441738, 43.420181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325953, 0.587841, -0.740403,
		0.158004, 0.806034, 0.570389,
		0.932089, 0.068933, -0.355611,
		33.874676, 27.462418, 43.313499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273411, 28.047588, 43.335499>,  <33.222214, 27.414165, 43.562428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273411, 28.047588, 43.335499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606140, 27.921097, 43.153042>,  <33.805779, 27.845201, 43.043568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606140, 27.921097, 43.153042>,  <33.273411, 28.047588, 43.335499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606140, 27.921097, 43.153042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144127, 0.670566, -0.727714,
		0.535998, 0.671074, 0.512216,
		0.831825, -0.316230, -0.456142,
		33.855686, 27.826227, 43.016197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516472, 28.632965, 42.952312>,  <33.273411, 28.047588, 43.335499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516472, 28.632965, 42.952312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720726, 28.340187, 42.771866>,  <33.843277, 28.164520, 42.663597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720726, 28.340187, 42.771866>,  <33.516472, 28.632965, 42.952312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720726, 28.340187, 42.771866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045602, 0.500886, -0.864311,
		0.858588, 0.461919, 0.222392,
		0.510635, -0.731945, -0.451119,
		33.873917, 28.120604, 42.636532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215096, 28.763489, 42.686909>,  <33.516472, 28.632965, 42.952312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215096, 28.763489, 42.686909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052803, 28.486555, 42.448227>,  <33.955429, 28.320395, 42.305019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052803, 28.486555, 42.448227>,  <34.215096, 28.763489, 42.686909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052803, 28.486555, 42.448227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009992, 0.649454, -0.760335,
		0.913937, -0.314455, -0.256586,
		-0.405732, -0.692335, -0.596703,
		33.931084, 28.278854, 42.269215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296692, 29.006851, 42.045353>,  <34.215096, 28.763489, 42.686909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296692, 29.006851, 42.045353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091091, 28.689047, 41.916012>,  <33.967731, 28.498363, 41.838406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091091, 28.689047, 41.916012>,  <34.296692, 29.006851, 42.045353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091091, 28.689047, 41.916012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010706, 0.382876, -0.923738,
		0.857724, -0.471338, -0.205304,
		-0.513999, -0.794511, -0.323355,
		33.936890, 28.450693, 41.819004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526726, 28.638483, 41.307953>,  <34.296692, 29.006851, 42.045353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526726, 28.638483, 41.307953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153931, 28.493496, 41.309456>,  <33.930252, 28.406504, 41.310360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153931, 28.493496, 41.309456>,  <34.526726, 28.638483, 41.307953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153931, 28.493496, 41.309456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053192, 0.126491, -0.990541,
		0.358562, -0.923373, -0.137169,
		-0.931990, -0.362466, 0.003761,
		33.874332, 28.384756, 41.310585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465969, 28.049604, 40.743198>,  <34.526726, 28.638483, 41.307953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465969, 28.049604, 40.743198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115528, 28.223213, 40.827175>,  <33.905266, 28.327379, 40.877560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.115528, 28.223213, 40.827175>,  <34.465969, 28.049604, 40.743198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115528, 28.223213, 40.827175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220088, 0.027406, -0.975095,
		-0.428969, -0.900484, 0.071514,
		-0.876098, 0.434025, 0.209942,
		33.852699, 28.353420, 40.890156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001816, 27.667652, 40.341335>,  <34.465969, 28.049604, 40.743198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001816, 27.667652, 40.341335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812531, 28.012457, 40.414005>,  <33.698959, 28.219339, 40.457607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812531, 28.012457, 40.414005>,  <34.001816, 27.667652, 40.341335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812531, 28.012457, 40.414005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147118, 0.126003, -0.981060,
		-0.868579, -0.490974, 0.067192,
		-0.473209, 0.862013, 0.181675,
		33.670567, 28.271061, 40.468510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568752, 27.616314, 39.821671>,  <34.001816, 27.667652, 40.341335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568752, 27.616314, 39.821671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508301, 27.995327, 39.934338>,  <33.472031, 28.222736, 40.001938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.508301, 27.995327, 39.934338>,  <33.568752, 27.616314, 39.821671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.508301, 27.995327, 39.934338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352841, 0.214465, -0.910773,
		-0.923398, -0.237028, 0.301918,
		-0.151128, 0.947535, 0.281669,
		33.462963, 28.279587, 40.018837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929424, 27.739733, 39.603889>,  <33.568752, 27.616314, 39.821671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929424, 27.739733, 39.603889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097095, 28.101233, 39.638592>,  <33.197697, 28.318132, 39.659412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097095, 28.101233, 39.638592>,  <32.929424, 27.739733, 39.603889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097095, 28.101233, 39.638592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365941, 0.255635, -0.894840,
		-0.830890, 0.343346, 0.437875,
		0.419176, 0.903750, 0.086760,
		33.222847, 28.372358, 39.664619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408623, 28.311464, 39.478237>,  <32.929424, 27.739733, 39.603889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408623, 28.311464, 39.478237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760849, 28.478333, 39.388279>,  <32.972183, 28.578453, 39.334305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760849, 28.478333, 39.388279>,  <32.408623, 28.311464, 39.478237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760849, 28.478333, 39.388279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439518, 0.541305, -0.716807,
		-0.177295, 0.730039, 0.660007,
		0.880563, 0.417172, -0.224894,
		33.025017, 28.603483, 39.320812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186111, 29.033634, 39.239437>,  <32.408623, 28.311464, 39.478237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186111, 29.033634, 39.239437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571075, 29.034637, 39.130806>,  <32.802055, 29.035240, 39.065628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.571075, 29.034637, 39.130806>,  <32.186111, 29.033634, 39.239437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571075, 29.034637, 39.130806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245583, 0.435035, -0.866276,
		0.115972, 0.900410, 0.419300,
		0.962413, 0.002510, -0.271578,
		32.859798, 29.035391, 39.049332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366291, 29.735176, 38.954723>,  <32.186111, 29.033634, 39.239437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366291, 29.735176, 38.954723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590553, 29.441959, 38.800678>,  <32.725113, 29.266029, 38.708252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590553, 29.441959, 38.800678>,  <32.366291, 29.735176, 38.954723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590553, 29.441959, 38.800678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285885, 0.265124, -0.920858,
		0.777131, 0.626383, -0.060922,
		0.560658, -0.733044, -0.385110,
		32.758751, 29.222046, 38.685146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636330, 30.128130, 38.465515>,  <32.366291, 29.735176, 38.954723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636330, 30.128130, 38.465515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705517, 29.743055, 38.382267>,  <32.747028, 29.512011, 38.332317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705517, 29.743055, 38.382267>,  <32.636330, 30.128130, 38.465515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705517, 29.743055, 38.382267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037771, 0.217634, -0.975300,
		0.984203, 0.160834, 0.074005,
		0.172967, -0.962688, -0.208121,
		32.757408, 29.454248, 38.319832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225712, 30.195692, 37.947773>,  <32.636330, 30.128130, 38.465515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225712, 30.195692, 37.947773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058254, 29.834229, 37.911701>,  <32.957779, 29.617350, 37.890060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.058254, 29.834229, 37.911701>,  <33.225712, 30.195692, 37.947773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058254, 29.834229, 37.911701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020386, 0.089920, -0.995740,
		0.907920, -0.418703, -0.019223,
		-0.418648, -0.903660, -0.090176,
		32.932659, 29.563131, 37.884647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728966, 29.868704, 37.453667>,  <33.225712, 30.195692, 37.947773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728966, 29.868704, 37.453667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373131, 29.686001, 37.452782>,  <33.159630, 29.576378, 37.452251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.373131, 29.686001, 37.452782>,  <33.728966, 29.868704, 37.453667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373131, 29.686001, 37.452782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083970, 0.168307, -0.982152,
		0.448980, -0.873524, -0.188078,
		-0.889588, -0.456759, -0.002216,
		33.106255, 29.548973, 37.452118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738300, 29.279457, 36.855347>,  <33.728966, 29.868704, 37.453667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738300, 29.279457, 36.855347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372940, 29.420444, 36.936794>,  <33.153725, 29.505037, 36.985661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372940, 29.420444, 36.936794>,  <33.738300, 29.279457, 36.855347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372940, 29.420444, 36.936794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073312, 0.349593, -0.934029,
		-0.400399, -0.868073, -0.293479,
		-0.913404, 0.352468, 0.203617,
		33.098919, 29.526184, 36.997879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.454479, 29.042194, 36.331501>,  <33.738300, 29.279457, 36.855347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.454479, 29.042194, 36.331501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197578, 29.319841, 36.461555>,  <33.043438, 29.486429, 36.539589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.197578, 29.319841, 36.461555>,  <33.454479, 29.042194, 36.331501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197578, 29.319841, 36.461555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190918, 0.265953, -0.944891,
		-0.742335, -0.668933, -0.038290,
		-0.642253, 0.694116, 0.325137,
		33.004902, 29.528076, 36.559097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893322, 29.041779, 35.774628>,  <33.454479, 29.042194, 36.331501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893322, 29.041779, 35.774628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822887, 29.383099, 35.970943>,  <32.780624, 29.587891, 36.088734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.822887, 29.383099, 35.970943>,  <32.893322, 29.041779, 35.774628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822887, 29.383099, 35.970943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229790, 0.449169, -0.863391,
		-0.957178, -0.264812, 0.116985,
		-0.176090, 0.853300, 0.490786,
		32.770061, 29.639090, 36.118179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428257, 29.320063, 35.442059>,  <32.893322, 29.041779, 35.774628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428257, 29.320063, 35.442059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560780, 29.627817, 35.660522>,  <32.640293, 29.812469, 35.791599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.560780, 29.627817, 35.660522>,  <32.428257, 29.320063, 35.442059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560780, 29.627817, 35.660522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062205, 0.595398, -0.801019,
		-0.941472, 0.231406, 0.245117,
		0.331303, 0.769384, 0.546156,
		32.660172, 29.858633, 35.824368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985426, 29.940660, 35.277519>,  <32.428257, 29.320063, 35.442059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985426, 29.940660, 35.277519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346176, 30.028601, 35.426266>,  <32.562626, 30.081364, 35.515514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346176, 30.028601, 35.426266>,  <31.985426, 29.940660, 35.277519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346176, 30.028601, 35.426266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150619, 0.646766, -0.747668,
		-0.404883, 0.730315, 0.550190,
		0.901878, 0.219850, 0.371864,
		32.616741, 30.094555, 35.537827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932657, 30.695366, 35.414635>,  <31.985426, 29.940660, 35.277519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932657, 30.695366, 35.414635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324162, 30.613380, 35.416176>,  <32.559063, 30.564190, 35.417099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324162, 30.613380, 35.416176>,  <31.932657, 30.695366, 35.414635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324162, 30.613380, 35.416176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174080, 0.821075, -0.543629,
		0.108262, 0.532754, 0.839317,
		0.978763, -0.204962, 0.003851,
		32.617790, 30.551891, 35.417332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233555, 31.347771, 35.415287>,  <31.932657, 30.695366, 35.414635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233555, 31.347771, 35.415287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504982, 31.080502, 35.293247>,  <32.667839, 30.920139, 35.220024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504982, 31.080502, 35.293247>,  <32.233555, 31.347771, 35.415287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504982, 31.080502, 35.293247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390888, 0.680150, -0.620164,
		0.621891, 0.301565, 0.722711,
		0.678571, -0.668173, -0.305100,
		32.708553, 30.880049, 35.201717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972637, 31.588139, 35.624886>,  <32.233555, 31.347771, 35.415287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972637, 31.588139, 35.624886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024906, 31.331142, 35.322857>,  <33.056267, 31.176945, 35.141640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024906, 31.331142, 35.322857>,  <32.972637, 31.588139, 35.624886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024906, 31.331142, 35.322857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313931, 0.749223, -0.583191,
		0.940411, -0.160835, 0.299598,
		0.130668, -0.642493, -0.755069,
		33.064106, 31.138395, 35.096336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578392, 31.833586, 35.227329>,  <32.972637, 31.588139, 35.624886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578392, 31.833586, 35.227329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390808, 31.594557, 34.967182>,  <33.278255, 31.451139, 34.811092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.390808, 31.594557, 34.967182>,  <33.578392, 31.833586, 35.227329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390808, 31.594557, 34.967182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130893, 0.681212, -0.720290,
		0.873465, -0.422918, -0.241246,
		-0.468963, -0.597571, -0.650372,
		33.250118, 31.415285, 34.772072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892475, 31.759510, 34.559273>,  <33.578392, 31.833586, 35.227329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892475, 31.759510, 34.559273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498184, 31.735023, 34.496536>,  <33.261612, 31.720331, 34.458893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498184, 31.735023, 34.496536>,  <33.892475, 31.759510, 34.559273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498184, 31.735023, 34.496536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083359, 0.631925, -0.770533,
		0.146283, -0.772608, -0.617801,
		-0.985724, -0.061217, -0.156843,
		33.202465, 31.716658, 34.449482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332596, 31.236671, 34.450825>,  <33.892475, 31.759510, 34.559273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332596, 31.236671, 34.450825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718575, 31.207541, 34.349968>,  <34.950161, 31.190062, 34.289455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.718575, 31.207541, 34.349968>,  <34.332596, 31.236671, 34.450825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718575, 31.207541, 34.349968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196428, -0.436739, 0.877881,
		-0.174050, -0.896636, -0.407125,
		0.964947, -0.072825, -0.252138,
		35.008060, 31.185694, 34.274326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524776, 30.523211, 34.510189>,  <34.332596, 31.236671, 34.450825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524776, 30.523211, 34.510189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862530, 30.735428, 34.539940>,  <35.065182, 30.862759, 34.557793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.862530, 30.735428, 34.539940>,  <34.524776, 30.523211, 34.510189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862530, 30.735428, 34.539940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246246, -0.507661, 0.825617,
		0.475786, -0.678825, -0.559307,
		0.844388, 0.530544, 0.074380,
		35.115845, 30.894590, 34.562252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111485, 30.012207, 34.699734>,  <34.524776, 30.523211, 34.510189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111485, 30.012207, 34.699734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252068, 30.376137, 34.788002>,  <35.336418, 30.594494, 34.840965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252068, 30.376137, 34.788002>,  <35.111485, 30.012207, 34.699734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252068, 30.376137, 34.788002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374951, -0.352774, 0.857299,
		0.857839, -0.218564, -0.465125,
		0.351459, 0.909824, 0.220673,
		35.357506, 30.649084, 34.854202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822495, 29.914631, 35.015953>,  <35.111485, 30.012207, 34.699734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822495, 29.914631, 35.015953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714302, 30.283857, 35.125340>,  <35.649387, 30.505394, 35.190971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.714302, 30.283857, 35.125340>,  <35.822495, 29.914631, 35.015953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714302, 30.283857, 35.125340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428116, -0.139098, 0.892955,
		0.862297, 0.358604, -0.357557,
		-0.270481, 0.923068, 0.273468,
		35.633156, 30.560778, 35.207378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420246, 30.124491, 35.315819>,  <35.822495, 29.914631, 35.015953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420246, 30.124491, 35.315819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119522, 30.341164, 35.466209>,  <35.939087, 30.471169, 35.556442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119522, 30.341164, 35.466209>,  <36.420246, 30.124491, 35.315819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119522, 30.341164, 35.466209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320453, -0.198170, 0.926304,
		0.576270, 0.816889, -0.024598,
		-0.751813, 0.541684, 0.375974,
		35.893978, 30.503668, 35.579002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821877, 30.481655, 35.868736>,  <36.420246, 30.124491, 35.315819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821877, 30.481655, 35.868736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431866, 30.534077, 35.940460>,  <36.197861, 30.565529, 35.983494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431866, 30.534077, 35.940460>,  <36.821877, 30.481655, 35.868736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431866, 30.534077, 35.940460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174553, -0.046987, 0.983526,
		0.137320, 0.990261, 0.022938,
		-0.975025, 0.131054, 0.179305,
		36.139359, 30.573393, 35.994251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768559, 31.011806, 36.368694>,  <36.821877, 30.481655, 35.868736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768559, 31.011806, 36.368694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431698, 30.796970, 36.387966>,  <36.229584, 30.668068, 36.399529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.431698, 30.796970, 36.387966>,  <36.768559, 31.011806, 36.368694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431698, 30.796970, 36.387966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161117, -0.165353, 0.972985,
		-0.514614, 0.827160, 0.225787,
		-0.842148, -0.537090, 0.048177,
		36.179054, 30.635843, 36.402420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.422844, 31.259636, 37.027615>,  <36.768559, 31.011806, 36.368694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.422844, 31.259636, 37.027615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262074, 30.904526, 36.937897>,  <36.165611, 30.691460, 36.884064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262074, 30.904526, 36.937897>,  <36.422844, 31.259636, 37.027615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262074, 30.904526, 36.937897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234091, -0.336435, 0.912147,
		-0.885246, 0.314106, 0.343041,
		-0.401922, -0.887777, -0.224298,
		36.141499, 30.638193, 36.870605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983147, 31.042200, 37.557598>,  <36.422844, 31.259636, 37.027615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983147, 31.042200, 37.557598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064705, 30.691402, 37.383560>,  <36.113640, 30.480923, 37.279137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.064705, 30.691402, 37.383560>,  <35.983147, 31.042200, 37.557598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064705, 30.691402, 37.383560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255726, -0.381289, 0.888382,
		-0.945003, -0.292401, 0.146528,
		0.203894, -0.876995, -0.435094,
		36.125874, 30.428305, 37.253033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611141, 30.573095, 37.957085>,  <35.983147, 31.042200, 37.557598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611141, 30.573095, 37.957085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896393, 30.372566, 37.761074>,  <36.067543, 30.252249, 37.643467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896393, 30.372566, 37.761074>,  <35.611141, 30.573095, 37.957085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896393, 30.372566, 37.761074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251681, -0.469319, 0.846402,
		-0.654298, -0.726923, -0.208512,
		0.713127, -0.501320, -0.490028,
		36.110332, 30.222170, 37.614067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424438, 29.862423, 38.062557>,  <35.611141, 30.573095, 37.957085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424438, 29.862423, 38.062557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808781, 29.853653, 37.952084>,  <36.039387, 29.848391, 37.885799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808781, 29.853653, 37.952084>,  <35.424438, 29.862423, 38.062557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808781, 29.853653, 37.952084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199862, -0.635492, 0.745792,
		-0.191862, -0.771796, -0.606234,
		0.960856, -0.021926, -0.276179,
		36.097038, 29.847075, 37.869228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513577, 29.133478, 38.126633>,  <35.424438, 29.862423, 38.062557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513577, 29.133478, 38.126633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863689, 29.326283, 38.142387>,  <36.073757, 29.441965, 38.151840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.863689, 29.326283, 38.142387>,  <35.513577, 29.133478, 38.126633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863689, 29.326283, 38.142387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268587, -0.552208, 0.789257,
		0.402180, -0.680242, -0.612798,
		0.875278, 0.482013, 0.039383,
		36.126274, 29.470886, 38.154202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973808, 28.558300, 38.284573>,  <35.513577, 29.133478, 38.126633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973808, 28.558300, 38.284573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152466, 28.907433, 38.363235>,  <36.259659, 29.116913, 38.410431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152466, 28.907433, 38.363235>,  <35.973808, 28.558300, 38.284573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152466, 28.907433, 38.363235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342353, -0.369793, 0.863741,
		0.826622, -0.318460, -0.463983,
		0.446644, 0.872833, 0.196653,
		36.286461, 29.169283, 38.422230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570900, 28.339390, 38.499969>,  <35.973808, 28.558300, 38.284573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570900, 28.339390, 38.499969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522438, 28.703726, 38.657803>,  <36.493359, 28.922327, 38.752502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522438, 28.703726, 38.657803>,  <36.570900, 28.339390, 38.499969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522438, 28.703726, 38.657803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327055, -0.338683, 0.882229,
		0.937206, 0.235939, -0.256860,
		-0.121158, 0.910838, 0.394581,
		36.486092, 28.976978, 38.776176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118317, 28.408125, 38.904716>,  <36.570900, 28.339390, 38.499969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118317, 28.408125, 38.904716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861996, 28.690821, 39.024647>,  <36.708202, 28.860437, 39.096607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.861996, 28.690821, 39.024647>,  <37.118317, 28.408125, 38.904716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861996, 28.690821, 39.024647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166451, -0.253359, 0.952945,
		0.749447, 0.660553, 0.044714,
		-0.640799, 0.706739, 0.299829,
		36.669758, 28.902842, 39.114594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489449, 28.751947, 39.400082>,  <37.118317, 28.408125, 38.904716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489449, 28.751947, 39.400082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109814, 28.851145, 39.477783>,  <36.882034, 28.910664, 39.524406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109814, 28.851145, 39.477783>,  <37.489449, 28.751947, 39.400082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109814, 28.851145, 39.477783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161124, -0.147742, 0.975813,
		0.270694, 0.957430, 0.100263,
		-0.949086, 0.247992, 0.194258,
		36.825089, 28.925543, 39.536060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464779, 29.205328, 40.025478>,  <37.489449, 28.751947, 39.400082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464779, 29.205328, 40.025478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090302, 29.066566, 40.002876>,  <36.865616, 28.983311, 39.989315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.090302, 29.066566, 40.002876>,  <37.464779, 29.205328, 40.025478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090302, 29.066566, 40.002876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015851, -0.202285, 0.979198,
		-0.351117, 0.915827, 0.194877,
		-0.936197, -0.346903, -0.056509,
		36.809441, 28.962496, 39.985924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109470, 29.474655, 40.612473>,  <37.464779, 29.205328, 40.025478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109470, 29.474655, 40.612473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893307, 29.163082, 40.485210>,  <36.763611, 28.976137, 40.408852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893307, 29.163082, 40.485210>,  <37.109470, 29.474655, 40.612473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893307, 29.163082, 40.485210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088853, -0.323183, 0.942156,
		-0.836700, 0.537415, 0.105440,
		-0.540405, -0.778934, -0.318158,
		36.731186, 28.929401, 40.389763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503376, 29.381020, 41.103405>,  <37.109470, 29.474655, 40.612473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503376, 29.381020, 41.103405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521046, 29.007744, 40.960739>,  <36.531647, 28.783779, 40.875141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.521046, 29.007744, 40.960739>,  <36.503376, 29.381020, 41.103405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521046, 29.007744, 40.960739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204435, -0.357899, 0.911106,
		-0.977883, 0.032665, -0.206587,
		0.044176, -0.933189, -0.356661,
		36.534298, 28.727787, 40.853741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991360, 29.001904, 41.434174>,  <36.503376, 29.381020, 41.103405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991360, 29.001904, 41.434174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299671, 28.774750, 41.318649>,  <36.484657, 28.638456, 41.249336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299671, 28.774750, 41.318649>,  <35.991360, 29.001904, 41.434174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299671, 28.774750, 41.318649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069674, -0.375464, 0.924214,
		-0.633287, -0.732484, -0.249831,
		0.770774, -0.567886, -0.288812,
		36.530903, 28.604383, 41.232006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731644, 28.292524, 41.595959>,  <35.991360, 29.001904, 41.434174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731644, 28.292524, 41.595959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126587, 28.268265, 41.537388>,  <36.363552, 28.253708, 41.502247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126587, 28.268265, 41.537388>,  <35.731644, 28.292524, 41.595959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126587, 28.268265, 41.537388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119587, -0.321180, 0.939437,
		-0.104004, -0.945074, -0.309868,
		0.987361, -0.060649, -0.146422,
		36.422794, 28.250071, 41.493462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983887, 27.596031, 41.700424>,  <35.731644, 28.292524, 41.595959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983887, 27.596031, 41.700424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288673, 27.844873, 41.772423>,  <36.471546, 27.994179, 41.815620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288673, 27.844873, 41.772423>,  <35.983887, 27.596031, 41.700424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288673, 27.844873, 41.772423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140270, -0.112801, 0.983667,
		0.632247, -0.774766, 0.001312,
		0.761964, 0.622104, 0.179994,
		36.517262, 28.031506, 41.826420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302197, 27.282341, 42.290569>,  <35.983887, 27.596031, 41.700424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302197, 27.282341, 42.290569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542301, 27.601719, 42.309212>,  <36.686363, 27.793346, 42.320396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542301, 27.601719, 42.309212>,  <36.302197, 27.282341, 42.290569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542301, 27.601719, 42.309212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044344, -0.024958, 0.998705,
		0.798575, -0.601548, 0.020425,
		0.600259, 0.798446, 0.046606,
		36.722378, 27.841253, 42.323193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839359, 27.046501, 42.690079>,  <36.302197, 27.282341, 42.290569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839359, 27.046501, 42.690079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824028, 27.445620, 42.711746>,  <36.814827, 27.685091, 42.724747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.824028, 27.445620, 42.711746>,  <36.839359, 27.046501, 42.690079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824028, 27.445620, 42.711746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110690, -0.049640, 0.992615,
		0.993116, 0.044043, -0.108543,
		-0.038330, 0.997796, 0.054173,
		36.812531, 27.744959, 42.727997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349480, 27.155674, 43.121784>,  <36.839359, 27.046501, 42.690079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349480, 27.155674, 43.121784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109226, 27.475342, 43.131287>,  <36.965073, 27.667143, 43.136986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109226, 27.475342, 43.131287>,  <37.349480, 27.155674, 43.121784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109226, 27.475342, 43.131287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091704, 0.039347, 0.995009,
		0.794246, 0.599817, -0.096920,
		-0.600636, 0.799170, 0.023754,
		36.929035, 27.715092, 43.138412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.674816, 27.529598, 43.702854>,  <37.349480, 27.155674, 43.121784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.674816, 27.529598, 43.702854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316998, 27.700588, 43.650620>,  <37.102306, 27.803183, 43.619278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.316998, 27.700588, 43.650620>,  <37.674816, 27.529598, 43.702854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.316998, 27.700588, 43.650620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107445, 0.077935, 0.991152,
		0.433871, 0.900661, -0.023786,
		-0.894545, 0.427476, -0.130585,
		37.048634, 27.828831, 43.611443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653519, 28.156450, 44.068356>,  <37.674816, 27.529598, 43.702854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653519, 28.156450, 44.068356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273449, 28.039022, 44.026443>,  <37.045406, 27.968567, 44.001297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273449, 28.039022, 44.026443>,  <37.653519, 28.156450, 44.068356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273449, 28.039022, 44.026443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169694, 0.205200, 0.963897,
		-0.261467, 0.933655, -0.244793,
		-0.950178, -0.293567, -0.104783,
		36.988396, 27.950953, 43.995010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224716, 28.703068, 44.309887>,  <37.653519, 28.156450, 44.068356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224716, 28.703068, 44.309887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016937, 28.361658, 44.326233>,  <36.892269, 28.156813, 44.336040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.016937, 28.361658, 44.326233>,  <37.224716, 28.703068, 44.309887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016937, 28.361658, 44.326233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269079, 0.208779, 0.940217,
		-0.811032, 0.477394, -0.338115,
		-0.519445, -0.853526, 0.040870,
		36.861103, 28.105600, 44.338493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747261, 28.954403, 44.803822>,  <37.224716, 28.703068, 44.309887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747261, 28.954403, 44.803822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766392, 28.554861, 44.804005>,  <36.777870, 28.315136, 44.804115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766392, 28.554861, 44.804005>,  <36.747261, 28.954403, 44.803822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766392, 28.554861, 44.804005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092278, 0.004876, 0.995721,
		-0.994584, -0.047577, 0.092406,
		0.047824, -0.998856, 0.000460,
		36.780739, 28.255205, 44.804142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345177, 28.764444, 45.455002>,  <36.747261, 28.954403, 44.803822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345177, 28.764444, 45.455002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548962, 28.436926, 45.349155>,  <36.671234, 28.240416, 45.285648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548962, 28.436926, 45.349155>,  <36.345177, 28.764444, 45.455002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548962, 28.436926, 45.349155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097600, -0.250545, 0.963173,
		-0.854939, -0.516527, -0.047729,
		0.509463, -0.818796, -0.264614,
		36.701801, 28.191288, 45.269772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154236, 28.127150, 45.969593>,  <36.345177, 28.764444, 45.455002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154236, 28.127150, 45.969593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503582, 28.042530, 45.794098>,  <36.713188, 27.991758, 45.688801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503582, 28.042530, 45.794098>,  <36.154236, 28.127150, 45.969593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503582, 28.042530, 45.794098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393360, -0.224861, 0.891463,
		-0.287242, -0.951149, -0.113171,
		0.873362, -0.211548, -0.438733,
		36.765591, 27.979065, 45.662479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408504, 27.407911, 46.236267>,  <36.154236, 28.127150, 45.969593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408504, 27.407911, 46.236267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729977, 27.614786, 46.118549>,  <36.922859, 27.738911, 46.047920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.729977, 27.614786, 46.118549>,  <36.408504, 27.407911, 46.236267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729977, 27.614786, 46.118549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389943, -0.084168, 0.916984,
		0.449485, -0.851722, -0.269319,
		0.803684, 0.517189, -0.294291,
		36.971081, 27.769943, 46.030262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935780, 26.901354, 46.365475>,  <36.408504, 27.407911, 46.236267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935780, 26.901354, 46.365475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091328, 27.269398, 46.346802>,  <37.184658, 27.490223, 46.335598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091328, 27.269398, 46.346802>,  <36.935780, 26.901354, 46.365475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091328, 27.269398, 46.346802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606039, -0.217318, 0.765173,
		0.693897, -0.325845, -0.642131,
		0.388874, 0.920108, -0.046679,
		37.207989, 27.545429, 46.332798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596844, 26.784727, 46.368130>,  <36.935780, 26.901354, 46.365475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596844, 26.784727, 46.368130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566830, 27.167978, 46.478661>,  <37.548820, 27.397930, 46.544979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566830, 27.167978, 46.478661>,  <37.596844, 26.784727, 46.368130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566830, 27.167978, 46.478661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566395, -0.187116, 0.802611,
		0.820710, 0.216738, -0.528639,
		-0.075040, 0.958130, 0.276327,
		37.544319, 27.455418, 46.561558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221729, 26.846790, 46.696365>,  <37.596844, 26.784727, 46.368130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221729, 26.846790, 46.696365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985516, 27.140532, 46.830223>,  <37.843788, 27.316776, 46.910538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985516, 27.140532, 46.830223>,  <38.221729, 26.846790, 46.696365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985516, 27.140532, 46.830223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404080, -0.089881, 0.910297,
		0.698560, 0.672788, -0.243660,
		-0.590537, 0.734356, 0.334647,
		37.808353, 27.360838, 46.930618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642998, 27.248049, 47.166126>,  <38.221729, 26.846790, 46.696365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642998, 27.248049, 47.166126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278412, 27.388916, 47.251179>,  <38.059662, 27.473436, 47.302212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278412, 27.388916, 47.251179>,  <38.642998, 27.248049, 47.166126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278412, 27.388916, 47.251179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242113, 0.041349, 0.969366,
		0.332586, 0.935024, -0.122952,
		-0.911464, 0.352166, 0.212630,
		38.004974, 27.494566, 47.314968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726139, 27.876200, 47.605370>,  <38.642998, 27.248049, 47.166126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726139, 27.876200, 47.605370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376698, 27.692389, 47.669441>,  <38.167034, 27.582102, 47.707886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376698, 27.692389, 47.669441>,  <38.726139, 27.876200, 47.605370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376698, 27.692389, 47.669441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177221, 0.006148, 0.984152,
		-0.453228, 0.888143, 0.076067,
		-0.873600, -0.459526, 0.160184,
		38.114616, 27.554531, 47.717495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455936, 28.233984, 48.116367>,  <38.726139, 27.876200, 47.605370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455936, 28.233984, 48.116367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261444, 27.884632, 48.127571>,  <38.144749, 27.675020, 48.134293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261444, 27.884632, 48.127571>,  <38.455936, 28.233984, 48.116367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261444, 27.884632, 48.127571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226443, -0.094982, 0.969382,
		-0.843980, 0.477686, 0.243954,
		-0.486231, -0.873381, 0.028006,
		38.115574, 27.622618, 48.135971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575264, 28.890097, 48.545555>,  <38.455936, 28.233984, 48.116367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575264, 28.890097, 48.545555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727364, 29.259317, 48.568829>,  <38.818623, 29.480850, 48.582794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.727364, 29.259317, 48.568829>,  <38.575264, 28.890097, 48.545555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727364, 29.259317, 48.568829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091402, 0.025097, -0.995498,
		-0.920356, 0.383857, -0.074825,
		0.380251, 0.923052, 0.058183,
		38.841438, 29.536232, 48.586285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241196, 29.315256, 48.035477>,  <38.575264, 28.890097, 48.545555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241196, 29.315256, 48.035477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593262, 29.499451, 48.081551>,  <38.804501, 29.609968, 48.109196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593262, 29.499451, 48.081551>,  <38.241196, 29.315256, 48.035477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593262, 29.499451, 48.081551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049532, 0.330432, -0.942529,
		-0.472084, 0.823872, 0.313642,
		0.880161, 0.460488, 0.115184,
		38.857311, 29.637596, 48.116104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158840, 29.940628, 47.698940>,  <38.241196, 29.315256, 48.035477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158840, 29.940628, 47.698940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557652, 29.939083, 47.729725>,  <38.796936, 29.938156, 47.748196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557652, 29.939083, 47.729725>,  <38.158840, 29.940628, 47.698940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557652, 29.939083, 47.729725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072850, 0.372774, -0.925058,
		-0.025116, 0.927914, 0.371947,
		0.997027, -0.003863, 0.076961,
		38.856758, 29.937923, 47.752811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434563, 30.619617, 47.383602>,  <38.158840, 29.940628, 47.698940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434563, 30.619617, 47.383602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753578, 30.378309, 47.384274>,  <38.944988, 30.233524, 47.384678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753578, 30.378309, 47.384274>,  <38.434563, 30.619617, 47.383602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753578, 30.378309, 47.384274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208930, 0.273593, -0.938880,
		0.565938, 0.749141, 0.344241,
		0.797535, -0.603270, 0.001682,
		38.992840, 30.197329, 47.384777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077473, 30.992411, 47.100643>,  <38.434563, 30.619617, 47.383602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077473, 30.992411, 47.100643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156994, 30.603188, 47.053932>,  <39.204708, 30.369654, 47.025906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156994, 30.603188, 47.053932>,  <39.077473, 30.992411, 47.100643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156994, 30.603188, 47.053932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253594, 0.166170, -0.952931,
		0.946661, 0.159834, 0.279797,
		0.198804, -0.973057, -0.116774,
		39.216637, 30.311270, 47.018902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748093, 30.999277, 46.808250>,  <39.077473, 30.992411, 47.100643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748093, 30.999277, 46.808250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572212, 30.649784, 46.725063>,  <39.466682, 30.440088, 46.675152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572212, 30.649784, 46.725063>,  <39.748093, 30.999277, 46.808250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572212, 30.649784, 46.725063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157625, 0.152886, -0.975593,
		0.884202, -0.461754, 0.070497,
		-0.439705, -0.873733, -0.207966,
		39.440300, 30.387665, 46.662674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168636, 30.757643, 46.253643>,  <39.748093, 30.999277, 46.808250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168636, 30.757643, 46.253643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812366, 30.576948, 46.233109>,  <39.598606, 30.468531, 46.220787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.812366, 30.576948, 46.233109>,  <40.168636, 30.757643, 46.253643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812366, 30.576948, 46.233109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032210, 0.049941, -0.998233,
		0.453503, -0.890752, -0.029930,
		-0.890673, -0.451737, -0.051340,
		39.545166, 30.441427, 46.217705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137177, 30.369938, 45.535942>,  <40.168636, 30.757643, 46.253643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137177, 30.369938, 45.535942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766003, 30.420414, 45.676239>,  <39.543301, 30.450701, 45.760418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766003, 30.420414, 45.676239>,  <40.137177, 30.369938, 45.535942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766003, 30.420414, 45.676239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357730, -0.037034, -0.933091,
		-0.104763, -0.991314, 0.079509,
		-0.927930, 0.126196, 0.350743,
		39.487625, 30.458271, 45.781464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820995, 29.893354, 45.172207>,  <40.137177, 30.369938, 45.535942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820995, 29.893354, 45.172207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532497, 30.148657, 45.279861>,  <39.359398, 30.301838, 45.344456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.532497, 30.148657, 45.279861>,  <39.820995, 29.893354, 45.172207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.532497, 30.148657, 45.279861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371004, -0.027838, -0.928214,
		-0.584945, -0.769321, 0.256874,
		-0.721245, 0.638255, 0.269137,
		39.316124, 30.340134, 45.360603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.311954, 29.681385, 44.697243>,  <39.820995, 29.893354, 45.172207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.311954, 29.681385, 44.697243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213505, 30.036125, 44.853664>,  <39.154434, 30.248968, 44.947517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213505, 30.036125, 44.853664>,  <39.311954, 29.681385, 44.697243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213505, 30.036125, 44.853664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455456, 0.250320, -0.854342,
		-0.855561, -0.388379, 0.342312,
		-0.246120, 0.886849, 0.391053,
		39.139668, 30.302179, 44.970982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566982, 29.766811, 44.606674>,  <39.311954, 29.681385, 44.697243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566982, 29.766811, 44.606674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692577, 30.142742, 44.660542>,  <38.767933, 30.368301, 44.692863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.692577, 30.142742, 44.660542>,  <38.566982, 29.766811, 44.606674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692577, 30.142742, 44.660542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494900, 0.283062, -0.821554,
		-0.810238, 0.191312, 0.553999,
		0.313989, 0.939828, 0.134667,
		38.786774, 30.424690, 44.700943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.044483, 30.357473, 44.700607>,  <38.566982, 29.766811, 44.606674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.044483, 30.357473, 44.700607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386581, 30.480547, 44.533810>,  <38.591839, 30.554392, 44.433731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386581, 30.480547, 44.533810>,  <38.044483, 30.357473, 44.700607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386581, 30.480547, 44.533810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491154, 0.224595, -0.841620,
		-0.165299, 0.924601, 0.343205,
		0.855245, 0.307686, -0.416996,
		38.643154, 30.572853, 44.408710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834923, 30.922113, 44.321991>,  <38.044483, 30.357473, 44.700607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834923, 30.922113, 44.321991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202507, 30.869022, 44.173454>,  <38.423058, 30.837168, 44.084332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202507, 30.869022, 44.173454>,  <37.834923, 30.922113, 44.321991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202507, 30.869022, 44.173454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376132, -0.012116, -0.926487,
		0.118472, 0.991078, -0.061057,
		0.918961, -0.132728, -0.371341,
		38.478195, 30.829205, 44.062054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793007, 31.213881, 43.670979>,  <37.834923, 30.922113, 44.321991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793007, 31.213881, 43.670979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147518, 31.032890, 43.631432>,  <38.360226, 30.924295, 43.607704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.147518, 31.032890, 43.631432>,  <37.793007, 31.213881, 43.670979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.147518, 31.032890, 43.631432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165037, -0.109083, -0.980237,
		0.432750, 0.885079, -0.171353,
		0.886279, -0.452477, -0.098865,
		38.413403, 30.897148, 43.601772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223026, 31.615166, 43.275646>,  <37.793007, 31.213881, 43.670979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223026, 31.615166, 43.275646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321400, 31.228456, 43.247738>,  <38.380424, 30.996431, 43.230995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321400, 31.228456, 43.247738>,  <38.223026, 31.615166, 43.275646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321400, 31.228456, 43.247738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083815, 0.050498, -0.995201,
		0.965657, 0.250597, -0.068612,
		0.245930, -0.966774, -0.069768,
		38.395180, 30.938425, 43.226807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799656, 31.620785, 42.879822>,  <38.223026, 31.615166, 43.275646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799656, 31.620785, 42.879822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696217, 31.236685, 42.837780>,  <38.634151, 31.006226, 42.812553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.696217, 31.236685, 42.837780>,  <38.799656, 31.620785, 42.879822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696217, 31.236685, 42.837780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213506, 0.162933, -0.963259,
		0.942094, -0.226658, -0.247154,
		-0.258600, -0.960249, -0.105106,
		38.618637, 30.948610, 42.806248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084122, 31.386690, 42.231133>,  <38.799656, 31.620785, 42.879822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084122, 31.386690, 42.231133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792519, 31.126583, 42.316650>,  <38.617558, 30.970520, 42.367962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792519, 31.126583, 42.316650>,  <39.084122, 31.386690, 42.231133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792519, 31.126583, 42.316650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289535, 0.009915, -0.957116,
		0.620261, -0.759641, -0.195503,
		-0.729003, -0.650267, 0.213792,
		38.573818, 30.931503, 42.380787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157101, 30.802366, 41.698254>,  <39.084122, 31.386690, 42.231133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157101, 30.802366, 41.698254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781158, 30.791832, 41.834476>,  <38.555592, 30.785511, 41.916210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781158, 30.791832, 41.834476>,  <39.157101, 30.802366, 41.698254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781158, 30.791832, 41.834476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340933, 0.011452, -0.940018,
		0.020860, -0.999588, -0.019743,
		-0.939856, -0.026340, 0.340554,
		38.499203, 30.783930, 41.936642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840858, 30.285820, 41.311855>,  <39.157101, 30.802366, 41.698254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840858, 30.285820, 41.311855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535164, 30.505045, 41.447838>,  <38.351746, 30.636580, 41.529427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.535164, 30.505045, 41.447838>,  <38.840858, 30.285820, 41.311855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535164, 30.505045, 41.447838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455677, -0.085837, -0.885997,
		-0.456401, -0.832021, 0.315340,
		-0.764236, 0.548063, 0.339957,
		38.305893, 30.669464, 41.549824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313515, 30.035936, 40.962013>,  <38.840858, 30.285820, 41.311855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313515, 30.035936, 40.962013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167751, 30.391502, 41.073036>,  <38.080296, 30.604843, 41.139648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167751, 30.391502, 41.073036>,  <38.313515, 30.035936, 40.962013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167751, 30.391502, 41.073036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450190, 0.092748, -0.888103,
		-0.815192, -0.448581, 0.366383,
		-0.364405, 0.888917, 0.277554,
		38.058430, 30.658178, 41.156303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639183, 30.024284, 40.903545>,  <38.313515, 30.035936, 40.962013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639183, 30.024284, 40.903545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728416, 30.411928, 40.861473>,  <37.781956, 30.644514, 40.836231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728416, 30.411928, 40.861473>,  <37.639183, 30.024284, 40.903545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728416, 30.411928, 40.861473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624236, 0.059147, -0.778993,
		-0.748708, 0.239437, 0.618147,
		0.223081, 0.969109, -0.105181,
		37.795341, 30.702662, 40.829918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066288, 30.393066, 40.814156>,  <37.639183, 30.024284, 40.903545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066288, 30.393066, 40.814156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347733, 30.634525, 40.664200>,  <37.516598, 30.779400, 40.574226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347733, 30.634525, 40.664200>,  <37.066288, 30.393066, 40.814156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347733, 30.634525, 40.664200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546406, 0.122331, -0.828538,
		-0.454284, 0.787811, 0.415910,
		0.703610, 0.603647, -0.374892,
		37.558815, 30.815619, 40.551731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704819, 30.845091, 40.304516>,  <37.066288, 30.393066, 40.814156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704819, 30.845091, 40.304516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087875, 30.952667, 40.263355>,  <37.317711, 31.017212, 40.238659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087875, 30.952667, 40.263355>,  <36.704819, 30.845091, 40.304516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087875, 30.952667, 40.263355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209669, 0.406291, -0.889363,
		-0.197376, 0.873269, 0.445470,
		0.957644, 0.268940, -0.102905,
		37.375168, 31.033350, 40.232483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714710, 31.459934, 40.001694>,  <36.704819, 30.845091, 40.304516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714710, 31.459934, 40.001694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080921, 31.328331, 39.909119>,  <37.300648, 31.249369, 39.853573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.080921, 31.328331, 39.909119>,  <36.714710, 31.459934, 40.001694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080921, 31.328331, 39.909119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121769, 0.321683, -0.938985,
		0.383386, 0.887847, 0.254446,
		0.915526, -0.329010, -0.231441,
		37.355579, 31.229628, 39.839687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034355, 31.984989, 39.561066>,  <36.714710, 31.459934, 40.001694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034355, 31.984989, 39.561066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217693, 31.634655, 39.500633>,  <37.327698, 31.424454, 39.464375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217693, 31.634655, 39.500633>,  <37.034355, 31.984989, 39.561066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217693, 31.634655, 39.500633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119817, 0.229333, -0.965945,
		0.880659, 0.424637, 0.210055,
		0.458349, -0.875837, -0.151086,
		37.355198, 31.371904, 39.455307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676495, 32.188438, 39.409973>,  <37.034355, 31.984989, 39.561066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676495, 32.188438, 39.409973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656712, 31.820196, 39.255039>,  <37.644840, 31.599251, 39.162079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656712, 31.820196, 39.255039>,  <37.676495, 32.188438, 39.409973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656712, 31.820196, 39.255039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362038, 0.344914, -0.866004,
		0.930850, -0.183065, 0.316236,
		-0.049461, -0.920609, -0.387340,
		37.641872, 31.544014, 39.138836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328789, 32.050663, 39.116001>,  <37.676495, 32.188438, 39.409973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328789, 32.050663, 39.116001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067764, 31.797134, 38.949902>,  <37.911148, 31.645018, 38.850243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.067764, 31.797134, 38.949902>,  <38.328789, 32.050663, 39.116001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.067764, 31.797134, 38.949902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286723, 0.300718, -0.909593,
		0.701392, -0.712628, -0.014506,
		-0.652563, -0.633822, -0.415248,
		37.871994, 31.606987, 38.825329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735252, 31.484909, 38.712177>,  <38.328789, 32.050663, 39.116001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735252, 31.484909, 38.712177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366127, 31.531090, 38.565159>,  <38.144653, 31.558798, 38.476948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.366127, 31.531090, 38.565159>,  <38.735252, 31.484909, 38.712177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366127, 31.531090, 38.565159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385026, 0.244023, -0.890060,
		-0.013073, -0.962873, -0.269641,
		-0.922813, 0.115454, -0.367541,
		38.089283, 31.565725, 38.454895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899349, 31.493328, 38.042782>,  <38.735252, 31.484909, 38.712177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899349, 31.493328, 38.042782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511822, 31.583687, 38.002048>,  <38.279305, 31.637901, 37.977608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511822, 31.583687, 38.002048>,  <38.899349, 31.493328, 38.042782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511822, 31.583687, 38.002048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172977, 0.322300, -0.930699,
		-0.177421, -0.919289, -0.351324,
		-0.968814, 0.225897, -0.101833,
		38.221176, 31.651455, 37.971497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639439, 31.173729, 37.450844>,  <38.899349, 31.493328, 38.042782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639439, 31.173729, 37.450844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399391, 31.482611, 37.534317>,  <38.255363, 31.667940, 37.584400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.399391, 31.482611, 37.534317>,  <38.639439, 31.173729, 37.450844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.399391, 31.482611, 37.534317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158320, 0.370393, -0.915284,
		-0.784084, -0.516244, -0.344537,
		-0.600123, 0.772206, 0.208687,
		38.219353, 31.714272, 37.596924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203571, 31.297880, 36.744225>,  <38.639439, 31.173729, 37.450844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203571, 31.297880, 36.744225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189747, 31.635029, 36.959026>,  <38.181450, 31.837318, 37.087906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189747, 31.635029, 36.959026>,  <38.203571, 31.297880, 36.744225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189747, 31.635029, 36.959026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245622, 0.528005, -0.812945,
		-0.968749, 0.103800, -0.225279,
		-0.034564, 0.842874, 0.537000,
		38.179379, 31.887892, 37.120125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800152, 31.726433, 36.306976>,  <38.203571, 31.297880, 36.744225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800152, 31.726433, 36.306976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989536, 31.972351, 36.559280>,  <38.103168, 32.119904, 36.710663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989536, 31.972351, 36.559280>,  <37.800152, 31.726433, 36.306976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989536, 31.972351, 36.559280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198936, 0.622969, -0.756528,
		-0.858055, 0.483668, 0.172647,
		0.473463, 0.614797, 0.630760,
		38.131577, 32.156792, 36.748508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647797, 32.477451, 36.057106>,  <37.800152, 31.726433, 36.306976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647797, 32.477451, 36.057106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973652, 32.524471, 36.284279>,  <38.169163, 32.552685, 36.420586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973652, 32.524471, 36.284279>,  <37.647797, 32.477451, 36.057106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973652, 32.524471, 36.284279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340841, 0.695263, -0.632801,
		-0.469253, 0.709077, 0.526319,
		0.814634, 0.117553, 0.567937,
		38.218040, 32.559738, 36.454659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.704212, 33.192482, 36.232159>,  <37.647797, 32.477451, 36.057106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.704212, 33.192482, 36.232159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077110, 33.077198, 36.319664>,  <38.300850, 33.008026, 36.372166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077110, 33.077198, 36.319664>,  <37.704212, 33.192482, 36.232159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077110, 33.077198, 36.319664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360404, 0.793309, -0.490684,
		-0.032125, 0.536279, 0.843429,
		0.932243, -0.288211, 0.218762,
		38.356785, 32.990734, 36.385292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039680, 33.760841, 36.190342>,  <37.704212, 33.192482, 36.232159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039680, 33.760841, 36.190342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325920, 33.483948, 36.152969>,  <38.497665, 33.317810, 36.130547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325920, 33.483948, 36.152969>,  <38.039680, 33.760841, 36.190342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325920, 33.483948, 36.152969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566155, 0.653138, -0.502872,
		0.409127, 0.306960, 0.859297,
		0.715600, -0.692233, -0.093430,
		38.540600, 33.276279, 36.124939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685200, 34.051563, 36.434700>,  <38.039680, 33.760841, 36.190342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685200, 34.051563, 36.434700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784489, 33.745510, 36.197060>,  <38.844063, 33.561878, 36.054474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.784489, 33.745510, 36.197060>,  <38.685200, 34.051563, 36.434700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784489, 33.745510, 36.197060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548346, 0.616558, -0.564954,
		0.798563, -0.185539, 0.572602,
		0.248221, -0.765135, -0.594100,
		38.858955, 33.515968, 36.018829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427391, 34.169052, 36.390144>,  <38.685200, 34.051563, 36.434700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427391, 34.169052, 36.390144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376907, 33.931759, 36.072113>,  <39.346615, 33.789383, 35.881294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376907, 33.931759, 36.072113>,  <39.427391, 34.169052, 36.390144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376907, 33.931759, 36.072113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678833, 0.532791, -0.505291,
		0.723365, -0.603498, 0.335461,
		-0.126211, -0.593231, -0.795077,
		39.339043, 33.753788, 35.833591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112598, 33.936794, 36.160160>,  <39.427391, 34.169052, 36.390144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112598, 33.936794, 36.160160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845287, 33.896587, 35.865326>,  <39.684898, 33.872463, 35.688423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845287, 33.896587, 35.865326>,  <40.112598, 33.936794, 36.160160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845287, 33.896587, 35.865326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593032, 0.526214, -0.609436,
		0.449125, -0.844391, -0.292047,
		-0.668281, -0.100520, -0.737087,
		39.644802, 33.866432, 35.644199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.521301, 33.846832, 35.569489>,  <40.112598, 33.936794, 36.160160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.521301, 33.846832, 35.569489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162292, 33.951347, 35.427399>,  <39.946888, 34.014057, 35.342144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162292, 33.951347, 35.427399>,  <40.521301, 33.846832, 35.569489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162292, 33.951347, 35.427399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433744, 0.668324, -0.604326,
		0.079504, -0.696472, -0.713166,
		-0.897521, 0.261285, -0.355225,
		39.893036, 34.029732, 35.320831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600655, 33.881824, 34.858364>,  <40.521301, 33.846832, 35.569489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600655, 33.881824, 34.858364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279167, 34.107029, 34.935360>,  <40.086273, 34.242149, 34.981556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279167, 34.107029, 34.935360>,  <40.600655, 33.881824, 34.858364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279167, 34.107029, 34.935360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454567, 0.789745, -0.411911,
		-0.383925, -0.243565, -0.890662,
		-0.803723, 0.563008, 0.192486,
		40.038052, 34.275932, 34.993107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413136, 34.222313, 34.239868>,  <40.600655, 33.881824, 34.858364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413136, 34.222313, 34.239868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262459, 34.446381, 34.534977>,  <40.172050, 34.580822, 34.712044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.262459, 34.446381, 34.534977>,  <40.413136, 34.222313, 34.239868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.262459, 34.446381, 34.534977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476599, 0.800142, -0.364177,
		-0.794326, 0.214440, -0.568384,
		-0.376694, 0.560167, 0.737776,
		40.149452, 34.614429, 34.756310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.737041, 34.853508, 34.642754>,  <40.413136, 34.222313, 34.239868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.737041, 34.853508, 34.642754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833714, 34.538170, 34.869064>,  <40.891716, 34.348969, 35.004852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833714, 34.538170, 34.869064>,  <40.737041, 34.853508, 34.642754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833714, 34.538170, 34.869064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807000, -0.160477, -0.568330,
		0.538833, 0.593938, 0.597409,
		0.241682, -0.788343, 0.565778,
		40.906219, 34.301666, 35.038799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484108, 34.899059, 34.812370>,  <40.737041, 34.853508, 34.642754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484108, 34.899059, 34.812370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348240, 34.522842, 34.813019>,  <41.266720, 34.297112, 34.813408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.348240, 34.522842, 34.813019>,  <41.484108, 34.899059, 34.812370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348240, 34.522842, 34.813019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838135, -0.303470, -0.453249,
		0.426791, -0.152601, 0.891382,
		-0.339674, -0.940542, 0.001618,
		41.246338, 34.240681, 34.813503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907204, 34.588318, 35.261017>,  <41.484108, 34.899059, 34.812370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.907204, 34.588318, 35.261017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763569, 34.323689, 34.997692>,  <41.677387, 34.164909, 34.839699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.763569, 34.323689, 34.997692>,  <41.907204, 34.588318, 35.261017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763569, 34.323689, 34.997692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867739, 0.023053, -0.496485,
		0.343638, -0.749524, 0.565797,
		-0.359084, -0.661576, -0.658313,
		41.655842, 34.125217, 34.800198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.460907, 34.076038, 35.074547>,  <41.907204, 34.588318, 35.261017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.460907, 34.076038, 35.074547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194973, 34.152069, 34.785587>,  <42.035412, 34.197689, 34.612213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194973, 34.152069, 34.785587>,  <42.460907, 34.076038, 35.074547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194973, 34.152069, 34.785587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725571, 0.394237, -0.564025,
		0.177588, -0.899137, -0.400019,
		-0.664837, 0.190078, -0.722400,
		41.995522, 34.209091, 34.568867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306293, 33.423889, 34.924000>,  <42.460907, 34.076038, 35.074547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306293, 33.423889, 34.924000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570900, 33.147816, 35.041332>,  <42.729664, 32.982170, 35.111732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570900, 33.147816, 35.041332>,  <42.306293, 33.423889, 34.924000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.570900, 33.147816, 35.041332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697173, -0.421859, 0.579641,
		-0.276316, -0.587943, -0.760245,
		0.661512, -0.690187, 0.293331,
		42.769352, 32.940758, 35.129330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848743, 33.094166, 34.539249>,  <42.306293, 33.423889, 34.924000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848743, 33.094166, 34.539249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511330, 33.216007, 34.716187>,  <41.308884, 33.289112, 34.822350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.511330, 33.216007, 34.716187>,  <41.848743, 33.094166, 34.539249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.511330, 33.216007, 34.716187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424572, 0.126219, -0.896553,
		-0.328930, -0.944077, 0.022859,
		-0.843530, 0.304609, 0.442346,
		41.258270, 33.307388, 34.848892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.431290, 33.355354, 34.097523>,  <41.848743, 33.094166, 34.539249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.431290, 33.355354, 34.097523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796219, 33.192684, 34.116615>,  <43.015179, 33.095081, 34.128071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.796219, 33.192684, 34.116615>,  <42.431290, 33.355354, 34.097523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796219, 33.192684, 34.116615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051337, -0.229247, -0.972014,
		0.406235, 0.884342, -0.230026,
		0.912325, -0.406675, 0.047729,
		43.069916, 33.070683, 34.130936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.867672, 33.563503, 33.425041>,  <42.431290, 33.355354, 34.097523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.867672, 33.563503, 33.425041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009190, 33.227062, 33.588684>,  <43.094101, 33.025196, 33.686871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009190, 33.227062, 33.588684>,  <42.867672, 33.563503, 33.425041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009190, 33.227062, 33.588684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055009, -0.417927, -0.906814,
		0.933703, 0.343334, -0.101593,
		0.353799, -0.841106, 0.409106,
		43.115330, 32.974731, 33.711414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419956, 33.284374, 32.961639>,  <42.867672, 33.563503, 33.425041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419956, 33.284374, 32.961639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345985, 32.954453, 33.175369>,  <43.301601, 32.756500, 33.303608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345985, 32.954453, 33.175369>,  <43.419956, 33.284374, 32.961639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345985, 32.954453, 33.175369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187057, -0.563299, -0.804800,
		0.964786, -0.048880, 0.258454,
		-0.184925, -0.824806, 0.534320,
		43.290508, 32.707012, 33.335667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.972450, 32.708138, 32.875481>,  <43.419956, 33.284374, 32.961639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.972450, 32.708138, 32.875481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.646797, 32.518578, 33.009705>,  <43.451405, 32.404842, 33.090240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.646797, 32.518578, 33.009705>,  <43.972450, 32.708138, 32.875481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.646797, 32.518578, 33.009705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047311, -0.521825, -0.851739,
		0.578742, -0.709308, 0.402417,
		-0.814137, -0.473899, 0.335561,
		43.402557, 32.376408, 33.110374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.192932, 32.043472, 32.733402>,  <43.972450, 32.708138, 32.875481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.192932, 32.043472, 32.733402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.797180, 32.080982, 32.777840>,  <43.559731, 32.103489, 32.804501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.797180, 32.080982, 32.777840>,  <44.192932, 32.043472, 32.733402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.797180, 32.080982, 32.777840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138551, -0.376688, -0.915920,
		-0.044045, -0.921581, 0.385679,
		-0.989375, 0.093778, 0.111094,
		43.500366, 32.109116, 32.811169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.982826, 31.331741, 32.611458>,  <44.192932, 32.043472, 32.733402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.982826, 31.331741, 32.611458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.663536, 31.571978, 32.592987>,  <43.471962, 31.716120, 32.581905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.663536, 31.571978, 32.592987>,  <43.982826, 31.331741, 32.611458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.663536, 31.571978, 32.592987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305252, -0.469406, -0.828541,
		-0.519295, -0.647260, 0.558021,
		-0.798219, 0.600594, -0.046183,
		43.424068, 31.752155, 32.579132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.411575, 30.907879, 32.415867>,  <43.982826, 31.331741, 32.611458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.411575, 30.907879, 32.415867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333294, 31.283659, 32.303341>,  <43.286324, 31.509127, 32.235825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.333294, 31.283659, 32.303341>,  <43.411575, 30.907879, 32.415867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.333294, 31.283659, 32.303341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172534, -0.315367, -0.933154,
		-0.965366, -0.134088, 0.223806,
		-0.195706, 0.939449, -0.281310,
		43.274582, 31.565495, 32.218948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.003513, 30.891109, 31.918913>,  <43.411575, 30.907879, 32.415867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.003513, 30.891109, 31.918913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111389, 31.272930, 31.868160>,  <43.176113, 31.502022, 31.837708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.111389, 31.272930, 31.868160>,  <43.003513, 30.891109, 31.918913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.111389, 31.272930, 31.868160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131791, -0.093938, -0.986816,
		-0.953886, 0.282857, 0.100467,
		0.269690, 0.954551, -0.126884,
		43.192295, 31.559296, 31.830095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573009, 31.142578, 31.418074>,  <43.003513, 30.891109, 31.918913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573009, 31.142578, 31.418074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890305, 31.386021, 31.410376>,  <43.080681, 31.532087, 31.405756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890305, 31.386021, 31.410376>,  <42.573009, 31.142578, 31.418074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890305, 31.386021, 31.410376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021311, -0.059338, -0.998010,
		-0.608539, 0.791249, -0.060039,
		0.793238, 0.608608, -0.019247,
		43.128277, 31.568604, 31.404602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.429352, 31.654531, 30.902311>,  <42.573009, 31.142578, 31.418074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.429352, 31.654531, 30.902311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818542, 31.585739, 30.963932>,  <43.052059, 31.544464, 31.000904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818542, 31.585739, 30.963932>,  <42.429352, 31.654531, 30.902311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818542, 31.585739, 30.963932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146921, -0.053526, -0.987699,
		0.178112, 0.983645, -0.026812,
		0.972980, -0.171981, 0.154052,
		43.110435, 31.534145, 31.010147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.790108, 32.120472, 30.342903>,  <42.429352, 31.654531, 30.902311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.790108, 32.120472, 30.342903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.077618, 31.875128, 30.473843>,  <43.250122, 31.727922, 30.552406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.077618, 31.875128, 30.473843>,  <42.790108, 32.120472, 30.342903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077618, 31.875128, 30.473843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312158, -0.136004, -0.940245,
		0.621226, 0.778008, 0.093708,
		0.718774, -0.613356, 0.327351,
		43.293251, 31.691120, 30.572048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.388729, 32.340462, 30.038460>,  <42.790108, 32.120472, 30.342903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.388729, 32.340462, 30.038460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480194, 31.963301, 30.135323>,  <43.535072, 31.737003, 30.193441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.480194, 31.963301, 30.135323>,  <43.388729, 32.340462, 30.038460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.480194, 31.963301, 30.135323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557113, -0.077245, -0.826837,
		0.798335, 0.323975, 0.507643,
		0.228662, -0.942907, 0.242158,
		43.548794, 31.680429, 30.207970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117107, 32.251057, 29.886274>,  <43.388729, 32.340462, 30.038460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117107, 32.251057, 29.886274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959782, 31.883463, 29.897438>,  <43.865387, 31.662907, 29.904137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959782, 31.883463, 29.897438>,  <44.117107, 32.251057, 29.886274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.959782, 31.883463, 29.897438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443715, -0.216317, -0.869669,
		0.805246, -0.329668, 0.492846,
		-0.393313, -0.918981, 0.027910,
		43.841789, 31.607769, 29.905811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.664085, 31.769514, 29.532627>,  <44.117107, 32.251057, 29.886274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.664085, 31.769514, 29.532627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336372, 31.540266, 29.539640>,  <44.139744, 31.402718, 29.543848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336372, 31.540266, 29.539640>,  <44.664085, 31.769514, 29.532627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.336372, 31.540266, 29.539640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285160, -0.433788, -0.854700,
		0.497450, -0.695243, 0.518826,
		-0.819284, -0.573119, 0.017532,
		44.090588, 31.368330, 29.544901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.962666, 31.092888, 29.524828>,  <44.664085, 31.769514, 29.532627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.962666, 31.092888, 29.524828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.581764, 31.015167, 29.430622>,  <44.353226, 30.968534, 29.374098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.581764, 31.015167, 29.430622>,  <44.962666, 31.092888, 29.524828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.581764, 31.015167, 29.430622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304951, -0.643181, -0.702370,
		-0.015006, -0.740651, 0.671722,
		-0.952250, -0.194302, -0.235514,
		44.296089, 30.956877, 29.359968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.817390, 30.374456, 29.545683>,  <44.962666, 31.092888, 29.524828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.817390, 30.374456, 29.545683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532787, 30.531109, 29.312315>,  <44.362026, 30.625101, 29.172295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.532787, 30.531109, 29.312315>,  <44.817390, 30.374456, 29.545683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.532787, 30.531109, 29.312315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143374, -0.731901, -0.666157,
		-0.687894, -0.557624, 0.464605,
		-0.711510, 0.391633, -0.583419,
		44.319336, 30.648600, 29.137289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.260048, 29.867311, 29.435152>,  <44.817390, 30.374456, 29.545683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.260048, 29.867311, 29.435152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.237091, 30.122469, 29.127958>,  <44.223316, 30.275564, 28.943642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.237091, 30.122469, 29.127958>,  <44.260048, 29.867311, 29.435152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237091, 30.122469, 29.127958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231615, -0.739757, -0.631755,
		-0.971114, -0.214131, -0.105293,
		-0.057387, 0.637893, -0.767984,
		44.219875, 30.313837, 28.897564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.055153, 29.467535, 28.887609>,  <44.260048, 29.867311, 29.435152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.055153, 29.467535, 28.887609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.150486, 29.801411, 28.689020>,  <44.207687, 30.001736, 28.569866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.150486, 29.801411, 28.689020>,  <44.055153, 29.467535, 28.887609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.150486, 29.801411, 28.689020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180653, -0.540387, -0.821794,
		-0.954234, 0.106171, -0.279582,
		0.238333, 0.834691, -0.496476,
		44.221985, 30.051819, 28.540077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748379, 29.382536, 28.235155>,  <44.055153, 29.467535, 28.887609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748379, 29.382536, 28.235155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020710, 29.665304, 28.158489>,  <44.184109, 29.834965, 28.112490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.020710, 29.665304, 28.158489>,  <43.748379, 29.382536, 28.235155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.020710, 29.665304, 28.158489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278674, -0.492007, -0.824785,
		-0.677359, 0.508124, -0.531973,
		0.680828, 0.706922, -0.191664,
		44.224957, 29.877380, 28.100990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.597477, 29.544872, 27.459976>,  <43.748379, 29.382536, 28.235155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.597477, 29.544872, 27.459976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965782, 29.654097, 27.571428>,  <44.186764, 29.719631, 27.638300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.965782, 29.654097, 27.571428>,  <43.597477, 29.544872, 27.459976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.965782, 29.654097, 27.571428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373494, -0.410702, -0.831761,
		-0.112686, 0.869921, -0.480145,
		0.920763, 0.273059, 0.278629,
		44.242012, 29.736013, 27.655018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.863163, 29.717047, 26.809433>,  <43.597477, 29.544872, 27.459976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.863163, 29.717047, 26.809433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171898, 29.673246, 27.059963>,  <44.357140, 29.646967, 27.210281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.171898, 29.673246, 27.059963>,  <43.863163, 29.717047, 26.809433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.171898, 29.673246, 27.059963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505644, -0.491507, -0.709045,
		0.385483, 0.863962, -0.323994,
		0.771834, -0.109499, 0.626325,
		44.403446, 29.640396, 27.247860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.451012, 29.992935, 26.494558>,  <43.863163, 29.717047, 26.809433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.451012, 29.992935, 26.494558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555885, 29.712608, 26.759922>,  <44.618809, 29.544413, 26.919140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.555885, 29.712608, 26.759922>,  <44.451012, 29.992935, 26.494558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.555885, 29.712608, 26.759922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356347, -0.568561, -0.741455,
		0.896813, 0.430804, 0.100665,
		0.262188, -0.700818, 0.663409,
		44.634541, 29.502363, 26.958944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.030807, 29.718493, 26.300583>,  <44.451012, 29.992935, 26.494558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.030807, 29.718493, 26.300583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.916775, 29.424158, 26.546274>,  <44.848354, 29.247559, 26.693689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.916775, 29.424158, 26.546274>,  <45.030807, 29.718493, 26.300583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.916775, 29.424158, 26.546274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353762, -0.676352, -0.646066,
		0.890831, 0.033108, 0.453126,
		-0.285083, -0.735834, 0.614228,
		44.831249, 29.203407, 26.730543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.508175, 29.208099, 26.249922>,  <45.030807, 29.718493, 26.300583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.508175, 29.208099, 26.249922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141468, 29.071110, 26.332134>,  <44.921444, 28.988916, 26.381462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.141468, 29.071110, 26.332134>,  <45.508175, 29.208099, 26.249922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.141468, 29.071110, 26.332134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097653, -0.691154, -0.716079,
		0.387293, -0.636409, 0.667073,
		-0.916770, -0.342475, 0.205532,
		44.866436, 28.968367, 26.393793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.227478, 28.524540, 26.210611>,  <45.508175, 29.208099, 26.249922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.227478, 28.524540, 26.210611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.461960, 28.228889, 26.077908>,  <45.602646, 28.051500, 25.998285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.461960, 28.228889, 26.077908>,  <45.227478, 28.524540, 26.210611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.461960, 28.228889, 26.077908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794280, -0.605005, -0.055562,
		-0.159650, 0.296082, -0.941726,
		0.586200, -0.739124, -0.331761,
		45.637821, 28.007153, 25.978378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.724957, 28.021177, 26.053051>,  <45.227478, 28.524540, 26.210611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.724957, 28.021177, 26.053051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808857, 27.659548, 26.201996>,  <44.859196, 27.442570, 26.291363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.808857, 27.659548, 26.201996>,  <44.724957, 28.021177, 26.053051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.808857, 27.659548, 26.201996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227730, 0.415533, 0.880608,
		-0.950865, -0.099908, 0.293043,
		0.209749, -0.904074, 0.372364,
		44.871780, 27.388325, 26.313705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.376251, 28.040899, 26.613846>,  <44.724957, 28.021177, 26.053051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.376251, 28.040899, 26.613846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.632881, 27.745455, 26.696638>,  <44.786858, 27.568188, 26.746313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.632881, 27.745455, 26.696638>,  <44.376251, 28.040899, 26.613846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.632881, 27.745455, 26.696638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058129, 0.315878, 0.947017,
		-0.764858, -0.595547, 0.245593,
		0.641570, -0.738610, 0.206983,
		44.825352, 27.523872, 26.758734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.222153, 27.706287, 27.250299>,  <44.376251, 28.040899, 26.613846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.222153, 27.706287, 27.250299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.611912, 27.664509, 27.170652>,  <44.845768, 27.639441, 27.122864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.611912, 27.664509, 27.170652>,  <44.222153, 27.706287, 27.250299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.611912, 27.664509, 27.170652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218050, 0.222828, 0.950159,
		-0.054873, -0.969246, 0.239897,
		0.974394, -0.104448, -0.199116,
		44.904228, 27.633175, 27.110918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.519566, 27.237976, 27.734692>,  <44.222153, 27.706287, 27.250299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.519566, 27.237976, 27.734692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.767380, 27.524841, 27.607037>,  <44.916069, 27.696960, 27.530443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.767380, 27.524841, 27.607037>,  <44.519566, 27.237976, 27.734692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.767380, 27.524841, 27.607037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152867, 0.288546, 0.945184,
		0.769939, -0.634362, 0.069134,
		0.619537, 0.717166, -0.319136,
		44.953239, 27.739990, 27.511295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.047649, 27.194212, 28.154964>,  <44.519566, 27.237976, 27.734692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.047649, 27.194212, 28.154964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.121914, 27.562037, 28.016438>,  <45.166473, 27.782732, 27.933321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.121914, 27.562037, 28.016438>,  <45.047649, 27.194212, 28.154964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.121914, 27.562037, 28.016438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355155, 0.265817, 0.896217,
		0.916184, -0.289391, -0.277235,
		0.185664, 0.919562, -0.346316,
		45.177612, 27.837906, 27.912542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.751190, 27.470154, 28.282330>,  <45.047649, 27.194212, 28.154964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.751190, 27.470154, 28.282330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495464, 27.777369, 28.297277>,  <45.342030, 27.961697, 28.306246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495464, 27.777369, 28.297277>,  <45.751190, 27.470154, 28.282330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.495464, 27.777369, 28.297277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318846, 0.220557, 0.921787,
		0.699724, 0.601227, -0.385891,
		-0.639315, 0.768037, 0.037370,
		45.303669, 28.007780, 28.308489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.136143, 28.197420, 28.415913>,  <45.751190, 27.470154, 28.282330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.136143, 28.197420, 28.415913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.766796, 28.165356, 28.566092>,  <45.545189, 28.146118, 28.656199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.766796, 28.165356, 28.566092>,  <46.136143, 28.197420, 28.415913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.766796, 28.165356, 28.566092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346192, 0.248863, 0.904554,
		-0.165944, 0.965216, -0.202042,
		-0.923371, -0.080160, 0.375448,
		45.489784, 28.141308, 28.678726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.897209, 28.881914, 28.745440>,  <46.136143, 28.197420, 28.415913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.897209, 28.881914, 28.745440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.664524, 28.605442, 28.916960>,  <45.524910, 28.439558, 29.019873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.664524, 28.605442, 28.916960>,  <45.897209, 28.881914, 28.745440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.664524, 28.605442, 28.916960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232062, 0.364239, 0.901930,
		-0.779585, 0.624177, -0.051488,
		-0.581717, -0.691182, 0.428803,
		45.490009, 28.398087, 29.045601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.534142, 29.234718, 29.266790>,  <45.897209, 28.881914, 28.745440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.534142, 29.234718, 29.266790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506542, 28.848028, 29.365328>,  <45.489983, 28.616014, 29.424450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.506542, 28.848028, 29.365328>,  <45.534142, 29.234718, 29.266790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.506542, 28.848028, 29.365328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081766, 0.240619, 0.967169,
		-0.994260, 0.086877, 0.062442,
		-0.069000, -0.966724, 0.246342,
		45.485844, 28.558010, 29.439230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.068481, 29.240993, 29.857988>,  <45.534142, 29.234718, 29.266790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.068481, 29.240993, 29.857988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.204590, 28.865582, 29.881241>,  <45.286255, 28.640335, 29.895193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.204590, 28.865582, 29.881241>,  <45.068481, 29.240993, 29.857988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.204590, 28.865582, 29.881241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055121, 0.081623, 0.995138,
		-0.938712, -0.335408, 0.079507,
		0.340267, -0.938530, 0.058133,
		45.306671, 28.584023, 29.898682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646797, 28.868811, 30.422092>,  <45.068481, 29.240993, 29.857988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646797, 28.868811, 30.422092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003872, 28.696257, 30.369923>,  <45.218117, 28.592724, 30.338621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003872, 28.696257, 30.369923>,  <44.646797, 28.868811, 30.422092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.003872, 28.696257, 30.369923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209716, 0.141470, 0.967474,
		-0.398901, -0.891007, 0.216757,
		0.892691, -0.431384, -0.130426,
		45.271679, 28.566841, 30.330795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.568855, 28.317532, 30.914839>,  <44.646797, 28.868811, 30.422092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.568855, 28.317532, 30.914839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.935501, 28.448973, 30.823767>,  <45.155487, 28.527838, 30.769123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.935501, 28.448973, 30.823767>,  <44.568855, 28.317532, 30.914839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.935501, 28.448973, 30.823767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104817, 0.352054, 0.930092,
		0.385792, -0.876399, 0.288253,
		0.916612, 0.328609, -0.227681,
		45.210484, 28.547554, 30.755463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.978790, 28.228193, 31.552113>,  <44.568855, 28.317532, 30.914839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.978790, 28.228193, 31.552113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.210094, 28.457663, 31.320072>,  <45.348877, 28.595345, 31.180849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.210094, 28.457663, 31.320072>,  <44.978790, 28.228193, 31.552113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.210094, 28.457663, 31.320072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264962, 0.540438, 0.798575,
		0.771630, -0.615486, 0.160511,
		0.578258, 0.573675, -0.580099,
		45.383572, 28.629765, 31.146042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.633121, 28.195639, 31.845087>,  <44.978790, 28.228193, 31.552113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.633121, 28.195639, 31.845087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.599262, 28.528831, 31.626371>,  <45.578949, 28.728746, 31.495142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.599262, 28.528831, 31.626371>,  <45.633121, 28.195639, 31.845087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.599262, 28.528831, 31.626371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321628, 0.542227, 0.776238,
		0.943075, -0.110159, -0.313806,
		-0.084645, 0.832980, -0.546790,
		45.573868, 28.778725, 31.462334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.206421, 28.628160, 31.943541>,  <45.633121, 28.195639, 31.845087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.206421, 28.628160, 31.943541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.942394, 28.894407, 31.804249>,  <45.783978, 29.054155, 31.720673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.942394, 28.894407, 31.804249>,  <46.206421, 28.628160, 31.943541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.942394, 28.894407, 31.804249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238875, 0.625482, 0.742773,
		0.712214, 0.407097, -0.571859,
		-0.660068, 0.665616, -0.348232,
		45.744373, 29.094091, 31.699780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.566608, 29.230675, 31.919806>,  <46.206421, 28.628160, 31.943541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.566608, 29.230675, 31.919806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.193195, 29.370926, 31.889915>,  <45.969147, 29.455076, 31.871983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.193195, 29.370926, 31.889915>,  <46.566608, 29.230675, 31.919806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.193195, 29.370926, 31.889915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225664, 0.736679, 0.637478,
		0.278564, 0.578242, -0.766836,
		-0.933529, 0.350627, -0.074724,
		45.913136, 29.476114, 31.867498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.479820, 29.948128, 31.571527>,  <46.566608, 29.230675, 31.919806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.479820, 29.948128, 31.571527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.193661, 29.858349, 31.836201>,  <46.021965, 29.804482, 31.995005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.193661, 29.858349, 31.836201>,  <46.479820, 29.948128, 31.571527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.193661, 29.858349, 31.836201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221947, 0.824956, 0.519796,
		-0.662528, 0.518721, -0.540357,
		-0.715400, -0.224448, 0.661685,
		45.979042, 29.791014, 32.034706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.385727, 30.680096, 31.747284>,  <46.479820, 29.948128, 31.571527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.385727, 30.680096, 31.747284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.145035, 30.480152, 31.996464>,  <46.000622, 30.360186, 32.145973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.145035, 30.480152, 31.996464>,  <46.385727, 30.680096, 31.747284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.145035, 30.480152, 31.996464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118481, 0.827187, 0.549294,
		-0.789864, 0.256718, -0.556965,
		-0.601728, -0.499857, 0.622949,
		45.964516, 30.330194, 32.183350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.761898, 31.151239, 31.861921>,  <46.385727, 30.680096, 31.747284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.761898, 31.151239, 31.861921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.784203, 30.892540, 32.166187>,  <45.797585, 30.737320, 32.348747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.784203, 30.892540, 32.166187>,  <45.761898, 31.151239, 31.861921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.784203, 30.892540, 32.166187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261325, 0.725839, 0.636292,
		-0.963639, -0.234259, -0.128539,
		0.055759, -0.646747, 0.760664,
		45.800930, 30.698517, 32.394386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.193188, 31.308870, 32.274925>,  <45.761898, 31.151239, 31.861921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.193188, 31.308870, 32.274925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.436729, 31.109838, 32.522053>,  <45.582855, 30.990419, 32.670330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.436729, 31.109838, 32.522053>,  <45.193188, 31.308870, 32.274925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.436729, 31.109838, 32.522053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190118, 0.664596, 0.722611,
		-0.770160, -0.557427, 0.310046,
		0.608858, -0.497581, 0.617823,
		45.619389, 30.960564, 32.707401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.894066, 31.318199, 32.891201>,  <45.193188, 31.308870, 32.274925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.894066, 31.318199, 32.891201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273209, 31.224829, 32.977989>,  <45.500694, 31.168806, 33.030064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.273209, 31.224829, 32.977989>,  <44.894066, 31.318199, 32.891201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.273209, 31.224829, 32.977989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045515, 0.574678, 0.817113,
		-0.315425, -0.784382, 0.534089,
		0.947859, -0.233428, 0.216969,
		45.557568, 31.154800, 33.043079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.926888, 31.112494, 33.705681>,  <44.894066, 31.318199, 32.891201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.926888, 31.112494, 33.705681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.290775, 31.236378, 33.595058>,  <45.509109, 31.310707, 33.528687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.290775, 31.236378, 33.595058>,  <44.926888, 31.112494, 33.705681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.290775, 31.236378, 33.595058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057426, 0.565808, 0.822535,
		0.411224, -0.764161, 0.496944,
		0.909724, 0.309708, -0.276556,
		45.563694, 31.329290, 33.512093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.272392, 31.130491, 34.313816>,  <44.926888, 31.112494, 33.705681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.272392, 31.130491, 34.313816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.469925, 31.367229, 34.058990>,  <45.588444, 31.509274, 33.906094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.469925, 31.367229, 34.058990>,  <45.272392, 31.130491, 34.313816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.469925, 31.367229, 34.058990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177318, 0.648694, 0.740104,
		0.851287, -0.478448, 0.215399,
		0.493830, 0.591847, -0.637063,
		45.618073, 31.544783, 33.867870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.952358, 31.249716, 34.487038>,  <45.272392, 31.130491, 34.313816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.952358, 31.249716, 34.487038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857738, 31.568377, 34.264545>,  <45.800968, 31.759573, 34.131050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.857738, 31.568377, 34.264545>,  <45.952358, 31.249716, 34.487038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.857738, 31.568377, 34.264545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091543, 0.588206, 0.803513,
		0.967298, 0.139147, -0.212065,
		-0.236545, 0.796650, -0.556233,
		45.786774, 31.807371, 34.097675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.221302, 31.768520, 34.918510>,  <45.952358, 31.249716, 34.487038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.221302, 31.768520, 34.918510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.054882, 32.022625, 34.658253>,  <45.955029, 32.175087, 34.502098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.054882, 32.022625, 34.658253>,  <46.221302, 31.768520, 34.918510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.054882, 32.022625, 34.658253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040824, 0.727841, 0.684529,
		0.908423, 0.258239, -0.328756,
		-0.416055, 0.635263, -0.650645,
		45.930065, 32.213203, 34.463058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.535213, 32.432888, 34.970989>,  <46.221302, 31.768520, 34.918510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.535213, 32.432888, 34.970989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171257, 32.510319, 34.824223>,  <45.952885, 32.556778, 34.736160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171257, 32.510319, 34.824223>,  <46.535213, 32.432888, 34.970989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.171257, 32.510319, 34.824223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011000, 0.872886, 0.487799,
		0.414707, 0.447879, -0.792100,
		-0.909888, 0.193581, -0.366919,
		45.898289, 32.568394, 34.714146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.629852, 33.087879, 34.933155>,  <46.535213, 32.432888, 34.970989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.629852, 33.087879, 34.933155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.237785, 33.032829, 34.876129>,  <46.002544, 32.999798, 34.841911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.237785, 33.032829, 34.876129>,  <46.629852, 33.087879, 34.933155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.237785, 33.032829, 34.876129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193265, 0.822818, 0.534434,
		0.043758, 0.551390, -0.833099,
		-0.980170, -0.137624, -0.142569,
		45.943733, 32.991543, 34.833359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.031864, 33.563564, 35.309418>,  <46.629852, 33.087879, 34.933155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.031864, 33.563564, 35.309418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.421581, 33.566010, 35.219337>,  <46.655411, 33.567478, 35.165291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.421581, 33.566010, 35.219337>,  <46.031864, 33.563564, 35.309418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.421581, 33.566010, 35.219337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156103, 0.739066, -0.655296,
		0.162427, 0.673605, 0.721023,
		0.974294, 0.006116, -0.225196,
		46.713871, 33.567844, 35.151779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.211227, 34.246861, 35.281807>,  <46.031864, 33.563564, 35.309418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.211227, 34.246861, 35.281807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.424698, 33.993206, 35.057999>,  <46.552780, 33.841015, 34.923714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.424698, 33.993206, 35.057999>,  <46.211227, 34.246861, 35.281807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.424698, 33.993206, 35.057999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154281, 0.577506, -0.801676,
		0.831499, 0.514156, 0.210364,
		0.533673, -0.634138, -0.559520,
		46.584801, 33.802963, 34.890144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.719296, 34.666645, 35.004154>,  <46.211227, 34.246861, 35.281807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.719296, 34.666645, 35.004154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.630611, 34.356628, 34.767460>,  <46.577400, 34.170616, 34.625443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.630611, 34.356628, 34.767460>,  <46.719296, 34.666645, 35.004154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.630611, 34.356628, 34.767460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109918, 0.622834, -0.774594,
		0.968898, -0.106691, -0.223279,
		-0.221708, -0.775045, -0.591736,
		46.564098, 34.124115, 34.589939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.490959, 34.629986, 35.063892>,  <46.719296, 34.666645, 35.004154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.490959, 34.629986, 35.063892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.811447, 34.849663, 35.158909>,  <48.003742, 34.981468, 35.215919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.811447, 34.849663, 35.158909>,  <47.490959, 34.629986, 35.063892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.811447, 34.849663, 35.158909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551772, -0.831705, 0.061765,
		0.231489, 0.081583, -0.969410,
		0.801224, 0.549192, 0.237546,
		48.051815, 35.014420, 35.230171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.754623, 34.271202, 43.846535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.410046, 34.096645, 43.742626>,  <34.203300, 33.991913, 43.680283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.410046, 34.096645, 43.742626>,  <34.754623, 34.271202, 43.846535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410046, 34.096645, 43.742626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103797, 0.349421, -0.931199,
		0.497138, -0.829136, -0.255709,
		-0.861441, -0.436392, -0.259772,
		34.151615, 33.965729, 43.664696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874557, 33.869076, 43.113678>,  <34.754623, 34.271202, 43.846535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874557, 33.869076, 43.113678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481266, 33.910553, 43.173702>,  <34.245293, 33.935440, 43.209717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.481266, 33.910553, 43.173702>,  <34.874557, 33.869076, 43.113678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481266, 33.910553, 43.173702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122034, 0.237471, -0.963699,
		-0.135562, -0.965844, -0.220833,
		-0.983224, 0.103692, 0.150058,
		34.186298, 33.941662, 43.218719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534821, 33.441460, 42.686699>,  <34.874557, 33.869076, 43.113678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534821, 33.441460, 42.686699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.262840, 33.728111, 42.748802>,  <34.099651, 33.900105, 42.786064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.262840, 33.728111, 42.748802>,  <34.534821, 33.441460, 42.686699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.262840, 33.728111, 42.748802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017313, 0.195987, -0.980454,
		-0.733053, -0.669349, -0.120854,
		-0.679952, 0.716632, 0.155257,
		34.058853, 33.943100, 42.795380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149323, 33.382397, 42.082958>,  <34.534821, 33.441460, 42.686699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149323, 33.382397, 42.082958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.054005, 33.728992, 42.258419>,  <33.996815, 33.936951, 42.363697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.054005, 33.728992, 42.258419>,  <34.149323, 33.382397, 42.082958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054005, 33.728992, 42.258419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128845, 0.419470, -0.898579,
		-0.962609, -0.270644, 0.011685,
		-0.238293, 0.866485, 0.438657,
		33.982517, 33.988937, 42.390015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.612606, 33.554913, 41.756321>,  <34.149323, 33.382397, 42.082958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.612606, 33.554913, 41.756321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.757141, 33.907078, 41.879154>,  <33.843861, 34.118378, 41.952854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.757141, 33.907078, 41.879154>,  <33.612606, 33.554913, 41.756321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757141, 33.907078, 41.879154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166917, 0.262943, -0.950263,
		-0.917374, 0.394623, -0.051945,
		0.361337, 0.880417, 0.307086,
		33.865543, 34.171204, 41.971279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443687, 33.984554, 41.210464>,  <33.612606, 33.554913, 41.756321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443687, 33.984554, 41.210464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.718613, 34.194901, 41.410889>,  <33.883568, 34.321110, 41.531143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.718613, 34.194901, 41.410889>,  <33.443687, 33.984554, 41.210464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718613, 34.194901, 41.410889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322036, 0.397707, -0.859140,
		-0.651070, 0.751859, 0.104002,
		0.687315, 0.525868, 0.501061,
		33.924809, 34.352661, 41.561207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387318, 34.562740, 41.053566>,  <33.443687, 33.984554, 41.210464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387318, 34.562740, 41.053566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.768299, 34.546085, 41.174294>,  <33.996887, 34.536095, 41.246731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.768299, 34.546085, 41.174294>,  <33.387318, 34.562740, 41.053566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768299, 34.546085, 41.174294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303142, 0.228866, -0.925054,
		-0.030561, 0.972567, 0.230606,
		0.952455, -0.041635, 0.301820,
		34.054035, 34.533596, 41.264839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715923, 35.191639, 40.812908>,  <33.387318, 34.562740, 41.053566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715923, 35.191639, 40.812908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.032887, 34.956326, 40.877419>,  <34.223064, 34.815136, 40.916122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.032887, 34.956326, 40.877419>,  <33.715923, 35.191639, 40.812908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032887, 34.956326, 40.877419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389484, 0.284479, -0.875999,
		0.469459, 0.756961, 0.454552,
		0.792408, -0.588286, 0.161273,
		34.270607, 34.779839, 40.925800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283028, 35.652645, 40.670425>,  <33.715923, 35.191639, 40.812908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283028, 35.652645, 40.670425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.423618, 35.281174, 40.623058>,  <34.507973, 35.058292, 40.594639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.423618, 35.281174, 40.623058>,  <34.283028, 35.652645, 40.670425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423618, 35.281174, 40.623058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545472, 0.305939, -0.780296,
		0.760872, 0.209662, 0.614098,
		0.351475, -0.928678, -0.118416,
		34.529060, 35.002571, 40.587532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006702, 35.662689, 40.596764>,  <34.283028, 35.652645, 40.670425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006702, 35.662689, 40.596764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.868484, 35.323895, 40.435165>,  <34.785553, 35.120617, 40.338207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.868484, 35.323895, 40.435165>,  <35.006702, 35.662689, 40.596764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868484, 35.323895, 40.435165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577672, 0.147283, -0.802871,
		0.739521, -0.510809, 0.438386,
		-0.345547, -0.846984, -0.403999,
		34.764820, 35.069798, 40.313965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615562, 35.324913, 40.156185>,  <35.006702, 35.662689, 40.596764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615562, 35.324913, 40.156185> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.265587, 35.168491, 40.041954>,  <35.055599, 35.074638, 39.973415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.265587, 35.168491, 40.041954>,  <35.615562, 35.324913, 40.156185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265587, 35.168491, 40.041954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294243, 0.039019, -0.954934,
		0.384573, -0.919540, 0.080925,
		-0.874942, -0.391054, -0.285574,
		35.003105, 35.051174, 39.956284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804108, 34.761883, 39.645325>,  <35.615562, 35.324913, 40.156185>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804108, 34.761883, 39.645325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.422813, 34.866070, 39.584003>,  <35.194038, 34.928581, 39.547211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.422813, 34.866070, 39.584003>,  <35.804108, 34.761883, 39.645325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422813, 34.866070, 39.584003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163108, 0.016331, -0.986473,
		-0.254445, -0.965343, -0.058053,
		-0.953233, 0.260472, -0.153300,
		35.136845, 34.944210, 39.538013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649071, 34.311466, 39.108479>,  <35.804108, 34.761883, 39.645325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649071, 34.311466, 39.108479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.389446, 34.615761, 39.108997>,  <35.233669, 34.798336, 39.109310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.389446, 34.615761, 39.108997>,  <35.649071, 34.311466, 39.108479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389446, 34.615761, 39.108997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012820, -0.009233, -0.999875,
		-0.760626, -0.649000, 0.015745,
		-0.649064, 0.760733, 0.001297,
		35.194725, 34.843979, 39.109386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307404, 34.225498, 38.464890>,  <35.649071, 34.311466, 39.108479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307404, 34.225498, 38.464890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.187412, 34.600952, 38.532990>,  <35.115417, 34.826225, 38.573849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.187412, 34.600952, 38.532990>,  <35.307404, 34.225498, 38.464890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187412, 34.600952, 38.532990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196214, 0.113943, -0.973918,
		-0.933549, -0.325558, 0.149993,
		-0.299976, 0.938631, 0.170251,
		35.097420, 34.882542, 38.584064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635891, 34.427395, 38.013344>,  <35.307404, 34.225498, 38.464890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635891, 34.427395, 38.013344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.821163, 34.774673, 38.084553>,  <34.932327, 34.983040, 38.127277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.821163, 34.774673, 38.084553>,  <34.635891, 34.427395, 38.013344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821163, 34.774673, 38.084553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022121, 0.212133, -0.976991,
		-0.885986, 0.448588, 0.117462,
		0.463184, 0.868198, 0.178024,
		34.960117, 35.035133, 38.137959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593571, 34.654800, 37.340179>,  <34.635891, 34.427395, 38.013344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593571, 34.654800, 37.340179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.787922, 34.947865, 37.530815>,  <34.904533, 35.123703, 37.645195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.787922, 34.947865, 37.530815>,  <34.593571, 34.654800, 37.340179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787922, 34.947865, 37.530815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169755, 0.455787, -0.873751,
		-0.857384, 0.505437, 0.097083,
		0.485876, 0.732660, 0.476585,
		34.933685, 35.167664, 37.673790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337257, 35.319500, 37.117516>,  <34.593571, 34.654800, 37.340179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337257, 35.319500, 37.117516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.706406, 35.381496, 37.258533>,  <34.927895, 35.418694, 37.343143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.706406, 35.381496, 37.258533>,  <34.337257, 35.319500, 37.117516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706406, 35.381496, 37.258533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337084, 0.117616, -0.934099,
		-0.186245, 0.980889, 0.056298,
		0.922869, 0.154995, 0.352547,
		34.983265, 35.427994, 37.364296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615147, 35.933041, 36.787746>,  <34.337257, 35.319500, 37.117516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615147, 35.933041, 36.787746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.927612, 35.721409, 36.920319>,  <35.115093, 35.594429, 36.999863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.927612, 35.721409, 36.920319>,  <34.615147, 35.933041, 36.787746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.927612, 35.721409, 36.920319> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491779, 0.194413, -0.848738,
		0.384617, 0.825999, 0.412061,
		0.781168, -0.529083, 0.331435,
		35.161964, 35.562683, 37.019749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234459, 36.286739, 36.437248>,  <34.615147, 35.933041, 36.787746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234459, 36.286739, 36.437248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.389889, 35.933971, 36.544003>,  <35.483147, 35.722309, 36.608055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.389889, 35.933971, 36.544003>,  <35.234459, 36.286739, 36.437248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.389889, 35.933971, 36.544003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687116, 0.084367, -0.721633,
		0.613906, 0.463789, 0.638764,
		0.388576, -0.881920, 0.266883,
		35.506462, 35.669395, 36.624069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993195, 36.334484, 36.461990>,  <35.234459, 36.286739, 36.437248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993195, 36.334484, 36.461990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.934422, 35.944813, 36.393410>,  <35.899158, 35.711010, 36.352261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.934422, 35.944813, 36.393410>,  <35.993195, 36.334484, 36.461990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934422, 35.944813, 36.393410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702057, 0.019389, -0.711857,
		0.696797, -0.224963, 0.681077,
		-0.146936, -0.974174, -0.171447,
		35.890339, 35.652561, 36.341976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626957, 36.103546, 36.300987>,  <35.993195, 36.334484, 36.461990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626957, 36.103546, 36.300987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.378593, 35.819798, 36.167564>,  <36.229576, 35.649548, 36.087509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.378593, 35.819798, 36.167564>,  <36.626957, 36.103546, 36.300987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378593, 35.819798, 36.167564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625931, -0.192502, -0.755748,
		0.471898, -0.678033, 0.563546,
		-0.620905, -0.709376, -0.333560,
		36.192322, 35.606983, 36.067497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926250, 35.389824, 36.326172>,  <36.626957, 36.103546, 36.300987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926250, 35.389824, 36.326172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.654644, 35.421356, 36.034222>,  <36.491680, 35.440273, 35.859051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.654644, 35.421356, 36.034222>,  <36.926250, 35.389824, 36.326172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654644, 35.421356, 36.034222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701965, -0.221299, -0.676957,
		-0.214861, -0.972017, 0.094957,
		-0.679028, 0.078795, -0.729871,
		36.450939, 35.445004, 35.815258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641396, 35.639713, 36.596237>,  <36.926250, 35.389824, 36.326172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641396, 35.639713, 36.596237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.991726, 35.829079, 36.558685>,  <38.201923, 35.942699, 36.536156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.991726, 35.829079, 36.558685>,  <37.641396, 35.639713, 36.596237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991726, 35.829079, 36.558685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036617, 0.259133, 0.965147,
		0.481245, -0.841859, 0.244290,
		0.875821, 0.473417, -0.093880,
		38.254471, 35.971104, 36.530521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116493, 35.441654, 37.103142>,  <37.641396, 35.639713, 36.596237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116493, 35.441654, 37.103142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265396, 35.799644, 37.004803>,  <38.354736, 36.014439, 36.945797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265396, 35.799644, 37.004803>,  <38.116493, 35.441654, 37.103142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265396, 35.799644, 37.004803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101303, 0.224128, 0.969280,
		0.922586, -0.385723, -0.007231,
		0.372253, 0.894977, -0.245852,
		38.377071, 36.068138, 36.931046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759590, 35.512524, 37.362812>,  <38.116493, 35.441654, 37.103142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759590, 35.512524, 37.362812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.633064, 35.887569, 37.305099>,  <38.557148, 36.112598, 37.270473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.633064, 35.887569, 37.305099>,  <38.759590, 35.512524, 37.362812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.633064, 35.887569, 37.305099> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122393, 0.191155, 0.973899,
		0.940725, 0.290401, -0.175223,
		-0.316316, 0.937618, -0.144281,
		38.538170, 36.168854, 37.261814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095402, 35.914982, 37.857971>,  <38.759590, 35.512524, 37.362812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095402, 35.914982, 37.857971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.778774, 36.141609, 37.766392>,  <38.588799, 36.277588, 37.711445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.778774, 36.141609, 37.766392>,  <39.095402, 35.914982, 37.857971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.778774, 36.141609, 37.766392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105617, 0.242182, 0.964465,
		0.601887, 0.787619, -0.131864,
		-0.791566, 0.566572, -0.228952,
		38.541306, 36.311581, 37.697704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122295, 36.380066, 38.272362>,  <39.095402, 35.914982, 37.857971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122295, 36.380066, 38.272362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.738483, 36.440792, 38.177498>,  <38.508194, 36.477230, 38.120579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.738483, 36.440792, 38.177498>,  <39.122295, 36.380066, 38.272362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738483, 36.440792, 38.177498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178211, 0.324683, 0.928882,
		0.218024, 0.933559, -0.284488,
		-0.959535, 0.151819, -0.237159,
		38.450623, 36.486340, 38.106350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915016, 36.952232, 38.589882>,  <39.122295, 36.380066, 38.272362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915016, 36.952232, 38.589882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.575321, 36.756039, 38.511692>,  <38.371502, 36.638321, 38.464779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.575321, 36.756039, 38.511692>,  <38.915016, 36.952232, 38.589882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575321, 36.756039, 38.511692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364713, 0.277213, 0.888896,
		-0.381802, 0.826182, -0.414308,
		-0.849242, -0.490486, -0.195479,
		38.320549, 36.608894, 38.453049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418766, 37.304886, 38.996914>,  <38.915016, 36.952232, 38.589882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418766, 37.304886, 38.996914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.211014, 36.983234, 38.881241>,  <38.086361, 36.790245, 38.811836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.211014, 36.983234, 38.881241>,  <38.418766, 37.304886, 38.996914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211014, 36.983234, 38.881241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538493, 0.045221, 0.841415,
		-0.663528, 0.592735, -0.456504,
		-0.519379, -0.804127, -0.289178,
		38.055199, 36.741997, 38.794487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.753662, 37.415283, 39.112953>,  <38.418766, 37.304886, 38.996914>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.753662, 37.415283, 39.112953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.778446, 37.016171, 39.103172>,  <37.793316, 36.776703, 39.097305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.778446, 37.016171, 39.103172>,  <37.753662, 37.415283, 39.112953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778446, 37.016171, 39.103172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580855, -0.055974, 0.812081,
		-0.811646, -0.036116, -0.583033,
		0.061963, -0.997779, -0.024453,
		37.797035, 36.716835, 39.095837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039871, 37.143627, 39.224545>,  <37.753662, 37.415283, 39.112953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039871, 37.143627, 39.224545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.288513, 36.841972, 39.309292>,  <37.437698, 36.660980, 39.360142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.288513, 36.841972, 39.309292>,  <37.039871, 37.143627, 39.224545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288513, 36.841972, 39.309292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537712, -0.214110, 0.815489,
		-0.569627, -0.620834, -0.538600,
		0.621603, -0.754136, 0.211867,
		37.474995, 36.615730, 39.372852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.635864, 36.610149, 39.308567>,  <37.039871, 37.143627, 39.224545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.635864, 36.610149, 39.308567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.973301, 36.532707, 39.508919>,  <37.175762, 36.486240, 39.629128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.973301, 36.532707, 39.508919>,  <36.635864, 36.610149, 39.308567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973301, 36.532707, 39.508919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532186, -0.425922, 0.731689,
		0.071676, -0.883803, -0.462336,
		0.843588, -0.193604, 0.500877,
		37.226376, 36.474625, 39.659184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377357, 36.124615, 39.809505>,  <36.635864, 36.610149, 39.308567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377357, 36.124615, 39.809505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.746769, 36.191544, 39.947544>,  <36.968418, 36.231701, 40.030369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.746769, 36.191544, 39.947544>,  <36.377357, 36.124615, 39.809505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746769, 36.191544, 39.947544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271996, -0.348628, 0.896926,
		0.270385, -0.922205, -0.276458,
		0.923531, 0.167320, 0.345100,
		37.023827, 36.241741, 40.051075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526569, 35.505451, 40.180672>,  <36.377357, 36.124615, 39.809505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526569, 35.505451, 40.180672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.752502, 35.802513, 40.324570>,  <36.888062, 35.980751, 40.410908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.752502, 35.802513, 40.324570>,  <36.526569, 35.505451, 40.180672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752502, 35.802513, 40.324570> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301719, -0.219905, 0.927689,
		0.768068, -0.632534, 0.099865,
		0.564834, 0.742659, 0.359749,
		36.921951, 36.025311, 40.432495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051628, 35.227497, 40.683697>,  <36.526569, 35.505451, 40.180672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051628, 35.227497, 40.683697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.984955, 35.612408, 40.769718>,  <36.944950, 35.843353, 40.821331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.984955, 35.612408, 40.769718>,  <37.051628, 35.227497, 40.683697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984955, 35.612408, 40.769718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117538, -0.235939, 0.964634,
		0.978981, 0.135508, 0.152430,
		-0.166679, 0.962274, 0.215052,
		36.934952, 35.901089, 40.834232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308064, 35.352539, 41.379387>,  <37.051628, 35.227497, 40.683697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308064, 35.352539, 41.379387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.102901, 35.694206, 41.345150>,  <36.979805, 35.899204, 41.324608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.102901, 35.694206, 41.345150>,  <37.308064, 35.352539, 41.379387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102901, 35.694206, 41.345150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343417, -0.112788, 0.932386,
		0.786759, 0.507621, 0.351185,
		-0.512908, 0.854166, -0.085589,
		36.949028, 35.950455, 41.319473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560696, 35.721367, 41.922382>,  <37.308064, 35.352539, 41.379387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560696, 35.721367, 41.922382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.210037, 35.868427, 41.798237>,  <36.999641, 35.956661, 41.723751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.210037, 35.868427, 41.798237>,  <37.560696, 35.721367, 41.922382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210037, 35.868427, 41.798237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379828, -0.132876, 0.915464,
		0.295330, 0.920423, 0.256128,
		-0.876648, 0.367648, -0.310360,
		36.947044, 35.978722, 41.705128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433029, 36.288570, 42.373062>,  <37.560696, 35.721367, 41.922382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433029, 36.288570, 42.373062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.080498, 36.187107, 42.213604>,  <36.868980, 36.126228, 42.117928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.080498, 36.187107, 42.213604>,  <37.433029, 36.288570, 42.373062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080498, 36.187107, 42.213604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433661, 0.099215, 0.895598,
		-0.187622, 0.962193, -0.197442,
		-0.881327, -0.253656, -0.398650,
		36.816101, 36.111012, 42.094009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928631, 36.623867, 42.804462>,  <37.433029, 36.288570, 42.373062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928631, 36.623867, 42.804462> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.740372, 36.328175, 42.611782>,  <36.627419, 36.150761, 42.496174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.740372, 36.328175, 42.611782>,  <36.928631, 36.623867, 42.804462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740372, 36.328175, 42.611782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469129, -0.252718, 0.846198,
		-0.747269, 0.624236, -0.227854,
		-0.470645, -0.739231, -0.481696,
		36.599178, 36.106407, 42.467274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166176, 36.790874, 42.835247>,  <36.928631, 36.623867, 42.804462>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166176, 36.790874, 42.835247> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.225273, 36.396236, 42.807522>,  <36.260731, 36.159454, 42.790886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.225273, 36.396236, 42.807522>,  <36.166176, 36.790874, 42.835247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225273, 36.396236, 42.807522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477964, -0.132576, 0.868317,
		-0.865866, -0.095158, -0.491143,
		0.147741, -0.986594, -0.069311,
		36.269596, 36.100258, 42.786728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.536293, 36.379086, 43.255447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.807804, 36.090279, 43.201851>,  <35.970711, 35.916996, 43.169693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.807804, 36.090279, 43.201851>,  <35.536293, 36.379086, 43.255447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807804, 36.090279, 43.201851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349812, -0.478341, 0.805494,
		-0.645675, -0.499878, -0.577257,
		0.678775, -0.722019, -0.133990,
		36.011436, 35.873672, 43.161655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205078, 35.683235, 43.375801>,  <35.536293, 36.379086, 43.255447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205078, 35.683235, 43.375801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.599079, 35.639812, 43.429440>,  <35.835480, 35.613758, 43.461624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.599079, 35.639812, 43.429440>,  <35.205078, 35.683235, 43.375801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599079, 35.639812, 43.429440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172412, -0.590509, 0.788399,
		-0.006397, -0.799697, -0.600370,
		0.985004, -0.108555, 0.134100,
		35.894581, 35.607246, 43.469669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250118, 34.997974, 43.539238>,  <35.205078, 35.683235, 43.375801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250118, 34.997974, 43.539238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.599293, 35.158752, 43.649818>,  <35.808796, 35.255219, 43.716167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.599293, 35.158752, 43.649818>,  <35.250118, 34.997974, 43.539238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599293, 35.158752, 43.649818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042493, -0.627178, 0.777716,
		0.485981, -0.667149, -0.564566,
		0.872936, 0.401945, 0.276448,
		35.861172, 35.279335, 43.732754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672626, 34.481064, 43.802116>,  <35.250118, 34.997974, 43.539238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672626, 34.481064, 43.802116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.860142, 34.797478, 43.959343>,  <35.972649, 34.987328, 44.053677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.860142, 34.797478, 43.959343>,  <35.672626, 34.481064, 43.802116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860142, 34.797478, 43.959343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095401, -0.487727, 0.867768,
		0.878145, -0.369298, -0.304105,
		0.468785, 0.791038, 0.393064,
		36.000778, 35.034790, 44.077263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238182, 34.176155, 44.060028>,  <35.672626, 34.481064, 43.802116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238182, 34.176155, 44.060028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.202976, 34.523426, 44.255386>,  <36.181850, 34.731789, 44.372601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.202976, 34.523426, 44.255386>,  <36.238182, 34.176155, 44.060028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202976, 34.523426, 44.255386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172173, -0.469655, 0.865899,
		0.981127, 0.160302, -0.108138,
		-0.088018, 0.868175, 0.488391,
		36.176571, 34.783878, 44.401905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849274, 34.249054, 44.445705>,  <36.238182, 34.176155, 44.060028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849274, 34.249054, 44.445705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.561390, 34.460846, 44.625336>,  <36.388660, 34.587921, 44.733112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.561390, 34.460846, 44.625336>,  <36.849274, 34.249054, 44.445705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561390, 34.460846, 44.625336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190258, -0.471651, 0.861015,
		0.667698, 0.705121, 0.238714,
		-0.719709, 0.529481, 0.449075,
		36.345478, 34.619690, 44.760059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087193, 34.295547, 45.159554>,  <36.849274, 34.249054, 44.445705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087193, 34.295547, 45.159554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.699383, 34.388412, 45.190842>,  <36.466698, 34.444130, 45.209614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.699383, 34.388412, 45.190842>,  <37.087193, 34.295547, 45.159554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699383, 34.388412, 45.190842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015262, -0.375917, 0.926528,
		0.244512, 0.897099, 0.368005,
		-0.969526, 0.232163, 0.078225,
		36.408524, 34.458061, 45.214310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009815, 34.694027, 45.775208>,  <37.087193, 34.295547, 45.159554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009815, 34.694027, 45.775208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654778, 34.531437, 45.688534>,  <36.441753, 34.433884, 45.636532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654778, 34.531437, 45.688534>,  <37.009815, 34.694027, 45.775208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654778, 34.531437, 45.688534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116472, -0.257066, 0.959349,
		-0.445656, 0.876751, 0.180827,
		-0.887595, -0.406479, -0.216680,
		36.388500, 34.409492, 45.623531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716396, 34.772396, 46.390343>,  <37.009815, 34.694027, 45.775208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716396, 34.772396, 46.390343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.485424, 34.519859, 46.183273>,  <36.346840, 34.368336, 46.059032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.485424, 34.519859, 46.183273>,  <36.716396, 34.772396, 46.390343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485424, 34.519859, 46.183273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250301, -0.466634, 0.848294,
		-0.777125, 0.619404, 0.111424,
		-0.577431, -0.631341, -0.517670,
		36.312195, 34.330456, 46.027973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059460, 34.751644, 46.775238>,  <36.716396, 34.772396, 46.390343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059460, 34.751644, 46.775238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.091148, 34.413471, 46.563965>,  <36.110161, 34.210567, 46.437202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.091148, 34.413471, 46.563965>,  <36.059460, 34.751644, 46.775238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091148, 34.413471, 46.563965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110600, -0.519120, 0.847515,
		-0.990703, -0.125555, 0.052381,
		0.079218, -0.845429, -0.528180,
		36.114914, 34.159843, 46.405510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717880, 34.274635, 47.113319>,  <36.059460, 34.751644, 46.775238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717880, 34.274635, 47.113319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.960358, 34.041424, 46.896942>,  <36.105843, 33.901497, 46.767117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.960358, 34.041424, 46.896942>,  <35.717880, 34.274635, 47.113319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960358, 34.041424, 46.896942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240439, -0.513983, 0.823414,
		-0.758105, -0.629208, -0.171389,
		0.606190, -0.583026, -0.540939,
		36.142216, 33.866516, 46.734661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579933, 33.744644, 47.386440>,  <35.717880, 34.274635, 47.113319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579933, 33.744644, 47.386440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.908611, 33.636124, 47.185959>,  <36.105820, 33.571011, 47.065670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.908611, 33.636124, 47.185959>,  <35.579933, 33.744644, 47.386440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908611, 33.636124, 47.185959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220360, -0.659784, 0.718420,
		-0.525595, -0.700770, -0.482360,
		0.821700, -0.271305, -0.501200,
		36.155121, 33.554733, 47.035599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623867, 33.075161, 47.452332>,  <35.579933, 33.744644, 47.386440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623867, 33.075161, 47.452332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.003971, 33.134312, 47.342682>,  <36.232033, 33.169800, 47.276894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.003971, 33.134312, 47.342682>,  <35.623867, 33.075161, 47.452332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003971, 33.134312, 47.342682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306766, -0.596607, 0.741589,
		-0.053879, -0.788792, -0.612294,
		0.950259, 0.147875, -0.274120,
		36.289047, 33.178673, 47.260445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917217, 32.537971, 47.373386>,  <35.623867, 33.075161, 47.452332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917217, 32.537971, 47.373386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.264107, 32.731724, 47.419495>,  <36.472240, 32.847977, 47.447159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.264107, 32.731724, 47.419495>,  <35.917217, 32.537971, 47.373386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264107, 32.731724, 47.419495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297598, -0.689858, 0.659948,
		0.399189, -0.538021, -0.742416,
		0.867228, 0.484386, 0.115270,
		36.524277, 32.877041, 47.454075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.374260, 32.080105, 47.517750>,  <35.917217, 32.537971, 47.373386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.374260, 32.080105, 47.517750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.568462, 32.406544, 47.643139>,  <36.684982, 32.602409, 47.718372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.568462, 32.406544, 47.643139>,  <36.374260, 32.080105, 47.517750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568462, 32.406544, 47.643139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281426, -0.485378, 0.827773,
		0.827698, -0.313669, -0.465326,
		0.485505, 0.816101, 0.313472,
		36.714115, 32.651375, 47.737179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166832, 31.942822, 47.541851>,  <36.374260, 32.080105, 47.517750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166832, 31.942822, 47.541851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.054295, 32.232288, 47.793934>,  <36.986774, 32.405968, 47.945183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.054295, 32.232288, 47.793934>,  <37.166832, 31.942822, 47.541851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054295, 32.232288, 47.793934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454746, -0.477764, 0.751630,
		0.845017, 0.498047, -0.194668,
		-0.281342, 0.723665, 0.630203,
		36.969891, 32.449387, 47.982994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801319, 32.375629, 47.907951>,  <37.166832, 31.942822, 47.541851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801319, 32.375629, 47.907951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.482357, 32.436386, 48.141560>,  <37.290981, 32.472839, 48.281723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.482357, 32.436386, 48.141560>,  <37.801319, 32.375629, 47.907951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482357, 32.436386, 48.141560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474098, -0.441071, 0.762029,
		0.373339, 0.884526, 0.279700,
		-0.797401, 0.151890, 0.584021,
		37.243137, 32.481953, 48.316765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071285, 32.667660, 48.570461>,  <37.801319, 32.375629, 47.907951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071285, 32.667660, 48.570461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.710354, 32.529343, 48.673401>,  <37.493793, 32.446354, 48.735165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.710354, 32.529343, 48.673401>,  <38.071285, 32.667660, 48.570461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710354, 32.529343, 48.673401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406981, -0.486738, 0.772950,
		-0.142018, 0.802193, 0.579929,
		-0.902329, -0.345793, 0.257352,
		37.439655, 32.425606, 48.750607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212688, 32.575592, 49.315704>,  <38.071285, 32.667660, 48.570461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212688, 32.575592, 49.315704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.867184, 32.380161, 49.266380>,  <37.659882, 32.262905, 49.236786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.867184, 32.380161, 49.266380>,  <38.212688, 32.575592, 49.315704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.867184, 32.380161, 49.266380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178851, -0.526045, 0.831438,
		-0.471085, 0.696113, 0.541761,
		-0.863766, -0.488573, -0.123312,
		37.608055, 32.233589, 49.229385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919769, 32.589527, 49.976643>,  <38.212688, 32.575592, 49.315704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919769, 32.589527, 49.976643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.750843, 32.295818, 49.764042>,  <37.649487, 32.119595, 49.636482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.750843, 32.295818, 49.764042>,  <37.919769, 32.589527, 49.976643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750843, 32.295818, 49.764042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195787, -0.646411, 0.737442,
		-0.885052, 0.207371, 0.416750,
		-0.422316, -0.734268, -0.531506,
		37.624149, 32.075539, 49.604591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409786, 32.189766, 50.449318>,  <37.919769, 32.589527, 49.976643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409786, 32.189766, 50.449318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.487465, 31.958925, 50.132019>,  <37.534073, 31.820421, 49.941639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.487465, 31.958925, 50.132019>,  <37.409786, 32.189766, 50.449318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.487465, 31.958925, 50.132019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263624, -0.748192, 0.608861,
		-0.944876, -0.327357, 0.006841,
		0.194196, -0.577101, -0.793248,
		37.545723, 31.785795, 49.894043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046799, 31.401678, 50.522522>,  <37.409786, 32.189766, 50.449318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046799, 31.401678, 50.522522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.380302, 31.405304, 50.301701>,  <37.580406, 31.407478, 50.169209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.380302, 31.405304, 50.301701>,  <37.046799, 31.401678, 50.522522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380302, 31.405304, 50.301701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379071, -0.736367, 0.560418,
		-0.401433, -0.676521, -0.617390,
		0.833760, 0.009064, -0.552051,
		37.630432, 31.408024, 50.136086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121403, 30.778372, 50.149734>,  <37.046799, 31.401678, 50.522522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121403, 30.778372, 50.149734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.481224, 30.927498, 50.240784>,  <37.697117, 31.016973, 50.295414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.481224, 30.927498, 50.240784>,  <37.121403, 30.778372, 50.149734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481224, 30.927498, 50.240784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280936, -0.892814, 0.352077,
		0.334481, -0.252766, -0.907872,
		0.899554, 0.372817, 0.227619,
		37.751091, 31.039343, 50.309071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584709, 30.281403, 50.031590>,  <37.121403, 30.778372, 50.149734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584709, 30.281403, 50.031590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.786163, 30.532583, 50.268917>,  <37.907036, 30.683292, 50.411312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.786163, 30.532583, 50.268917>,  <37.584709, 30.281403, 50.031590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786163, 30.532583, 50.268917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557232, -0.760942, 0.332354,
		0.660182, 0.163229, -0.733155,
		0.503639, 0.627952, 0.593317,
		37.937256, 30.720968, 50.446911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079170, 30.510639, 49.495838>,  <37.584709, 30.281403, 50.031590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079170, 30.510639, 49.495838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.808498, 30.266706, 49.660866>,  <36.646095, 30.120346, 49.759880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.808498, 30.266706, 49.660866>,  <37.079170, 30.510639, 49.495838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.808498, 30.266706, 49.660866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669339, 0.276064, -0.689764,
		0.306752, -0.742889, -0.594995,
		-0.676675, -0.609840, 0.412561,
		36.605495, 30.083757, 49.784637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942062, 29.926321, 49.136173>,  <37.079170, 30.510639, 49.495838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942062, 29.926321, 49.136173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.611877, 29.984371, 49.354362>,  <36.413765, 30.019201, 49.485275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.611877, 29.984371, 49.354362>,  <36.942062, 29.926321, 49.136173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611877, 29.984371, 49.354362> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538181, 0.089030, -0.838114,
		-0.170197, -0.985399, 0.004614,
		-0.825466, 0.145128, 0.545476,
		36.364239, 30.027908, 49.518005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433849, 29.550240, 48.762119>,  <36.942062, 29.926321, 49.136173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433849, 29.550240, 48.762119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.209007, 29.778202, 49.001869>,  <36.074100, 29.914980, 49.145718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.209007, 29.778202, 49.001869>,  <36.433849, 29.550240, 48.762119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209007, 29.778202, 49.001869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683303, 0.088303, -0.724776,
		-0.465979, -0.816953, 0.339782,
		-0.562104, 0.569904, 0.599373,
		36.040375, 29.949173, 49.181683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800510, 29.363447, 48.514908>,  <36.433849, 29.550240, 48.762119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800510, 29.363447, 48.514908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.735149, 29.669853, 48.763592>,  <35.695930, 29.853697, 48.912804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.735149, 29.669853, 48.763592>,  <35.800510, 29.363447, 48.514908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735149, 29.669853, 48.763592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717994, 0.339849, -0.607443,
		-0.676597, -0.545643, 0.494460,
		-0.163406, 0.766014, 0.621709,
		35.686127, 29.899656, 48.950104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042042, 29.411810, 48.723259>,  <35.800510, 29.363447, 48.514908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042042, 29.411810, 48.723259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.156239, 29.792204, 48.770790>,  <35.224758, 30.020441, 48.799309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.156239, 29.792204, 48.770790>,  <35.042042, 29.411810, 48.723259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156239, 29.792204, 48.770790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639612, 0.281396, -0.715341,
		-0.713716, 0.128222, 0.688599,
		0.285491, 0.950987, 0.118824,
		35.241886, 30.077499, 48.806438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444210, 29.862072, 48.702354>,  <35.042042, 29.411810, 48.723259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444210, 29.862072, 48.702354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.741982, 30.105761, 48.593048>,  <34.920647, 30.251974, 48.527466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.741982, 30.105761, 48.593048>,  <34.444210, 29.862072, 48.702354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741982, 30.105761, 48.593048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617225, 0.471786, -0.629644,
		-0.254671, 0.637391, 0.727238,
		0.744430, 0.609221, -0.273263,
		34.965309, 30.288527, 48.511070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123314, 30.483347, 48.753704>,  <34.444210, 29.862072, 48.702354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123314, 30.483347, 48.753704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.447056, 30.535372, 48.524609>,  <34.641300, 30.566587, 48.387154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.447056, 30.535372, 48.524609>,  <34.123314, 30.483347, 48.753704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.447056, 30.535372, 48.524609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543860, 0.534109, -0.647259,
		0.221718, 0.835351, 0.503020,
		0.809356, 0.130064, -0.572736,
		34.689861, 30.574390, 48.352787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188103, 31.170998, 48.574612>,  <34.123314, 30.483347, 48.753704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188103, 31.170998, 48.574612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.419754, 31.005640, 48.293552>,  <34.558746, 30.906425, 48.124916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.419754, 31.005640, 48.293552>,  <34.188103, 31.170998, 48.574612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419754, 31.005640, 48.293552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330241, 0.669051, -0.665817,
		0.745352, 0.617637, 0.250948,
		0.579130, -0.413395, -0.702647,
		34.593494, 30.881622, 48.082760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345879, 31.722115, 48.078293>,  <34.188103, 31.170998, 48.574612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345879, 31.722115, 48.078293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.443741, 31.413612, 47.843239>,  <34.502457, 31.228512, 47.702206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.443741, 31.413612, 47.843239>,  <34.345879, 31.722115, 48.078293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.443741, 31.413612, 47.843239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017956, 0.602342, -0.798036,
		0.969444, 0.205796, 0.133517,
		0.244655, -0.771254, -0.587632,
		34.517136, 31.182236, 47.666950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923840, 32.024918, 47.632534>,  <34.345879, 31.722115, 48.078293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923840, 32.024918, 47.632534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.783649, 31.704237, 47.438854>,  <34.699535, 31.511829, 47.322647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.783649, 31.704237, 47.438854>,  <34.923840, 32.024918, 47.632534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.783649, 31.704237, 47.438854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065747, 0.494653, -0.866600,
		0.934262, -0.335554, -0.120653,
		-0.350473, -0.801699, -0.484197,
		34.678509, 31.463728, 47.293594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293991, 32.115826, 47.089691>,  <34.923840, 32.024918, 47.632534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293991, 32.115826, 47.089691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.982208, 31.894670, 46.971870>,  <34.795139, 31.761978, 46.901176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.982208, 31.894670, 46.971870>,  <35.293991, 32.115826, 47.089691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982208, 31.894670, 46.971870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003318, 0.473833, -0.880609,
		0.626446, -0.685420, -0.371167,
		-0.779458, -0.552885, -0.294556,
		34.748371, 31.728806, 46.883503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385036, 32.004829, 46.364082>,  <35.293991, 32.115826, 47.089691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385036, 32.004829, 46.364082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.994015, 31.922770, 46.383301>,  <34.759403, 31.873533, 46.394833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.994015, 31.922770, 46.383301>,  <35.385036, 32.004829, 46.364082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994015, 31.922770, 46.383301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135777, 0.438972, -0.888182,
		0.161119, -0.874767, -0.456972,
		-0.977551, -0.205149, 0.048047,
		34.700748, 31.861225, 46.397713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280945, 31.884272, 45.715225>,  <35.385036, 32.004829, 46.364082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280945, 31.884272, 45.715225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.922119, 31.940710, 45.882729>,  <34.706821, 31.974573, 45.983231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.922119, 31.940710, 45.882729>,  <35.280945, 31.884272, 45.715225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922119, 31.940710, 45.882729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277847, 0.556793, -0.782804,
		-0.343616, -0.818580, -0.460277,
		-0.897067, 0.141097, 0.418763,
		34.653000, 31.983040, 46.008358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779800, 31.701641, 45.148125>,  <35.280945, 31.884272, 45.715225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779800, 31.701641, 45.148125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.596386, 31.934196, 45.416969>,  <34.486340, 32.073730, 45.578278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.596386, 31.934196, 45.416969>,  <34.779800, 31.701641, 45.148125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596386, 31.934196, 45.416969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342845, 0.582026, -0.737363,
		-0.819881, -0.568534, -0.067551,
		-0.458533, 0.581390, 0.672111,
		34.458828, 32.108612, 45.618603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030807, 31.776577, 44.938999>,  <34.779800, 31.701641, 45.148125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030807, 31.776577, 44.938999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.091724, 32.086231, 45.184772>,  <34.128273, 32.272022, 45.332237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.091724, 32.086231, 45.184772>,  <34.030807, 31.776577, 44.938999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091724, 32.086231, 45.184772> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537552, 0.586564, -0.605789,
		-0.829364, -0.238032, 0.505466,
		0.152290, 0.774134, 0.614430,
		34.137413, 32.318470, 45.369102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391869, 32.108543, 44.972214>,  <34.030807, 31.776577, 44.938999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391869, 32.108543, 44.972214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.671127, 32.378372, 45.068169>,  <33.838684, 32.540268, 45.125740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.671127, 32.378372, 45.068169>,  <33.391869, 32.108543, 44.972214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671127, 32.378372, 45.068169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344100, 0.609967, -0.713818,
		-0.627841, 0.415807, 0.657967,
		0.698148, 0.674571, 0.239883,
		33.880573, 32.580742, 45.140133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038822, 32.785904, 45.055103>,  <33.391869, 32.108543, 44.972214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038822, 32.785904, 45.055103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.423428, 32.888664, 45.016121>,  <33.654190, 32.950321, 44.992733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.423428, 32.888664, 45.016121>,  <33.038822, 32.785904, 45.055103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423428, 32.888664, 45.016121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237273, 0.597479, -0.765977,
		-0.138556, 0.759618, 0.635438,
		0.961511, 0.256903, -0.097452,
		33.711880, 32.965736, 44.986885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090458, 33.590382, 44.882580>,  <33.038822, 32.785904, 45.055103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090458, 33.590382, 44.882580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.454769, 33.456875, 44.785355>,  <33.673355, 33.376770, 44.727020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.454769, 33.456875, 44.785355>,  <33.090458, 33.590382, 44.882580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454769, 33.456875, 44.785355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064345, 0.696221, -0.714938,
		0.407846, 0.635512, 0.655581,
		0.910781, -0.333768, -0.243059,
		33.728004, 33.356743, 44.712437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472656, 34.187721, 44.707249>,  <33.090458, 33.590382, 44.882580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472656, 34.187721, 44.707249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.658978, 33.875015, 44.541420>,  <33.770771, 33.687389, 44.441925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.658978, 33.875015, 44.541420>,  <33.472656, 34.187721, 44.707249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.658978, 33.875015, 44.541420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110626, 0.516268, -0.849252,
		0.877946, 0.349723, 0.326963,
		0.465804, -0.781768, -0.414567,
		33.798717, 33.640484, 44.417049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.012329, 34.404179, 44.422230>,  <33.472656, 34.187721, 44.707249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.012329, 34.404179, 44.422230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.962757, 34.072109, 44.204807>,  <33.933014, 33.872868, 44.074352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.962757, 34.072109, 44.204807>,  <34.012329, 34.404179, 44.422230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962757, 34.072109, 44.204807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258392, 0.501885, -0.825436,
		0.958058, -0.242747, 0.152312,
		-0.123929, -0.830172, -0.543559,
		33.925579, 33.823059, 44.041740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.391922, 29.388779, 28.160295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.145267, 29.498087, 27.864979>,  <44.997272, 29.563673, 27.687788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.145267, 29.498087, 27.864979>,  <45.391922, 29.388779, 28.160295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.145267, 29.498087, 27.864979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364521, 0.732114, 0.575442,
		0.697768, 0.623964, -0.351836,
		-0.616639, 0.273273, -0.738294,
		44.960278, 29.580069, 27.643490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.499512, 30.115929, 27.930859>,  <45.391922, 29.388779, 28.160295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.499512, 30.115929, 27.930859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.126865, 29.987896, 27.861984>,  <44.903278, 29.911077, 27.820660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.126865, 29.987896, 27.861984>,  <45.499512, 30.115929, 27.930859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.126865, 29.987896, 27.861984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358116, 0.727486, 0.585250,
		-0.062064, 0.606888, -0.792360,
		-0.931612, -0.320080, -0.172185,
		44.847382, 29.891872, 27.810329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.158131, 30.739555, 27.948483>,  <45.499512, 30.115929, 27.930859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.158131, 30.739555, 27.948483> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.868347, 30.467899, 27.995707>,  <44.694477, 30.304907, 28.024040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.868347, 30.467899, 27.995707>,  <45.158131, 30.739555, 27.948483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.868347, 30.467899, 27.995707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453200, 0.598309, 0.660785,
		-0.519400, 0.425204, -0.741232,
		-0.724454, -0.679138, 0.118059,
		44.651012, 30.264158, 28.031124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552021, 31.142817, 27.914665>,  <45.158131, 30.739555, 27.948483>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.552021, 31.142817, 27.914665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.443287, 30.804094, 28.097542>,  <44.378048, 30.600861, 28.207268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.443287, 30.804094, 28.097542>,  <44.552021, 31.142817, 27.914665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.443287, 30.804094, 28.097542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531832, 0.528133, 0.661989,
		-0.802035, -0.063197, -0.593925,
		-0.271835, -0.846807, 0.457191,
		44.361736, 30.550053, 28.234699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839123, 31.178509, 27.981087>,  <44.552021, 31.142817, 27.914665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839123, 31.178509, 27.981087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.966778, 30.919464, 28.257853>,  <44.043373, 30.764036, 28.423912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.966778, 30.919464, 28.257853>,  <43.839123, 31.178509, 27.981087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.966778, 30.919464, 28.257853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377226, 0.582958, 0.719625,
		-0.869396, -0.490670, -0.058251,
		0.319140, -0.647613, 0.691915,
		44.062519, 30.725180, 28.465427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.351509, 31.114595, 28.386929>,  <43.839123, 31.178509, 27.981087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.351509, 31.114595, 28.386929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.639446, 30.964085, 28.620251>,  <43.812206, 30.873777, 28.760244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.639446, 30.964085, 28.620251>,  <43.351509, 31.114595, 28.386929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639446, 30.964085, 28.620251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431279, 0.416007, 0.800585,
		-0.543902, -0.827861, 0.137178,
		0.719840, -0.376278, 0.583306,
		43.855400, 30.851202, 28.795242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995529, 30.813189, 28.933174>,  <43.351509, 31.114595, 28.386929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995529, 30.813189, 28.933174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.368347, 30.870775, 29.066185>,  <43.592037, 30.905327, 29.145992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.368347, 30.870775, 29.066185>,  <42.995529, 30.813189, 28.933174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.368347, 30.870775, 29.066185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362215, 0.344778, 0.865984,
		0.010021, -0.927579, 0.373493,
		0.932040, 0.143963, 0.332528,
		43.647961, 30.913965, 29.165943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992619, 30.687386, 29.596909>,  <42.995529, 30.813189, 28.933174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992619, 30.687386, 29.596909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.345814, 30.874310, 29.579182>,  <43.557732, 30.986464, 29.568546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.345814, 30.874310, 29.579182>,  <42.992619, 30.687386, 29.596909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345814, 30.874310, 29.579182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080768, 0.244251, 0.966343,
		0.462403, -0.849685, 0.253413,
		0.882983, 0.467307, -0.044315,
		43.610710, 31.014502, 29.565887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.473171, 30.409472, 30.132067>,  <42.992619, 30.687386, 29.596909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.473171, 30.409472, 30.132067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.581615, 30.784519, 30.045008>,  <43.646683, 31.009548, 29.992771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.581615, 30.784519, 30.045008>,  <43.473171, 30.409472, 30.132067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581615, 30.784519, 30.045008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105222, 0.253632, 0.961561,
		0.956779, -0.237790, 0.167421,
		0.271113, 0.937618, -0.217649,
		43.662949, 31.065804, 29.979713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800728, 30.516663, 30.660051>,  <43.473171, 30.409472, 30.132067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.800728, 30.516663, 30.660051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.739574, 30.881296, 30.507399>,  <43.702881, 31.100077, 30.415808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.739574, 30.881296, 30.507399>,  <43.800728, 30.516663, 30.660051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739574, 30.881296, 30.507399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013280, 0.388031, 0.921551,
		0.988154, 0.135826, -0.071431,
		-0.152888, 0.911583, -0.381631,
		43.693707, 31.154772, 30.392910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.286953, 30.948225, 31.018555>,  <43.800728, 30.516663, 30.660051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.286953, 30.948225, 31.018555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.994019, 31.178474, 30.873043>,  <43.818256, 31.316624, 30.785736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.994019, 31.178474, 30.873043>,  <44.286953, 30.948225, 31.018555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.994019, 31.178474, 30.873043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170382, 0.362336, 0.916342,
		0.659279, 0.733055, -0.167277,
		-0.732340, 0.575624, -0.363779,
		43.774315, 31.351162, 30.763908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.400715, 31.561031, 31.292805>,  <44.286953, 30.948225, 31.018555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.400715, 31.561031, 31.292805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.015789, 31.588709, 31.187616>,  <43.784832, 31.605314, 31.124502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.015789, 31.588709, 31.187616>,  <44.400715, 31.561031, 31.292805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.015789, 31.588709, 31.187616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208737, 0.431826, 0.877471,
		0.174273, 0.899299, -0.401112,
		-0.962319, 0.069193, -0.262973,
		43.727093, 31.609467, 31.108725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273678, 32.206364, 31.506893>,  <44.400715, 31.561031, 31.292805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273678, 32.206364, 31.506893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.922318, 32.021328, 31.458857>,  <43.711502, 31.910307, 31.430035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.922318, 32.021328, 31.458857>,  <44.273678, 32.206364, 31.506893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.922318, 32.021328, 31.458857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350883, 0.453609, 0.819219,
		-0.324486, 0.761742, -0.560765,
		-0.878402, -0.462588, -0.120092,
		43.658798, 31.882551, 31.422829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.694550, 32.728046, 31.650152>,  <44.273678, 32.206364, 31.506893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.694550, 32.728046, 31.650152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.558308, 32.357815, 31.716221>,  <43.476562, 32.135674, 31.755863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.558308, 32.357815, 31.716221>,  <43.694550, 32.728046, 31.650152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.558308, 32.357815, 31.716221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301770, 0.274005, 0.913157,
		-0.890461, 0.261185, -0.372641,
		-0.340609, -0.925583, 0.165173,
		43.456123, 32.080139, 31.765772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.060940, 32.803547, 31.917620>,  <43.694550, 32.728046, 31.650152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.060940, 32.803547, 31.917620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.151390, 32.425838, 32.013306>,  <43.205658, 32.199215, 32.070717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.151390, 32.425838, 32.013306>,  <43.060940, 32.803547, 31.917620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.151390, 32.425838, 32.013306> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408451, 0.131030, 0.903326,
		-0.884328, -0.301968, -0.356060,
		0.226121, -0.944270, 0.239213,
		43.219227, 32.142559, 32.085068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489285, 32.678471, 32.388870>,  <43.060940, 32.803547, 31.917620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489285, 32.678471, 32.388870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.763790, 32.395218, 32.455299>,  <42.928493, 32.225266, 32.495155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.763790, 32.395218, 32.455299>,  <42.489285, 32.678471, 32.388870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.763790, 32.395218, 32.455299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233536, 0.001712, 0.972347,
		-0.688839, -0.706074, -0.164200,
		0.686267, -0.708136, 0.166073,
		42.969669, 32.182777, 32.505119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198238, 32.224991, 32.936077>,  <42.489285, 32.678471, 32.388870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198238, 32.224991, 32.936077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.596706, 32.194790, 32.918400>,  <42.835785, 32.176670, 32.907795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.596706, 32.194790, 32.918400>,  <42.198238, 32.224991, 32.936077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596706, 32.194790, 32.918400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058664, 0.201754, 0.977678,
		-0.064902, -0.976522, 0.205410,
		0.996166, -0.075503, -0.044193,
		42.895557, 32.172138, 32.905144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.313648, 31.854969, 33.615196>,  <42.198238, 32.224991, 32.936077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.313648, 31.854969, 33.615196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.656734, 31.989199, 33.459393>,  <42.862587, 32.069736, 33.365910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.656734, 31.989199, 33.459393>,  <42.313648, 31.854969, 33.615196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.656734, 31.989199, 33.459393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262503, 0.365579, 0.892997,
		0.442065, -0.868182, 0.225472,
		0.857713, 0.335576, -0.389510,
		42.914047, 32.089870, 33.342541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.900349, 31.764120, 34.087219>,  <42.313648, 31.854969, 33.615196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.900349, 31.764120, 34.087219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.039417, 32.043228, 33.836700>,  <43.122856, 32.210693, 33.686390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.039417, 32.043228, 33.836700>,  <42.900349, 31.764120, 34.087219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039417, 32.043228, 33.836700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326806, 0.535893, 0.778471,
		0.878820, -0.475325, -0.041723,
		0.347668, 0.697771, -0.626292,
		43.143719, 32.252560, 33.648811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.620483, 31.861671, 34.193748>,  <42.900349, 31.764120, 34.087219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.620483, 31.861671, 34.193748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.476151, 32.206165, 34.050594>,  <43.389553, 32.412861, 33.964703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.476151, 32.206165, 34.050594>,  <43.620483, 31.861671, 34.193748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.476151, 32.206165, 34.050594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341467, 0.479085, 0.808627,
		0.867872, 0.169572, -0.466951,
		-0.360830, 0.861233, -0.357881,
		43.367901, 32.464535, 33.943230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.102955, 32.344524, 34.250523>,  <43.620483, 31.861671, 34.193748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.102955, 32.344524, 34.250523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.765022, 32.558414, 34.243336>,  <43.562263, 32.686749, 34.239025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.765022, 32.558414, 34.243336>,  <44.102955, 32.344524, 34.250523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765022, 32.558414, 34.243336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273200, 0.460020, 0.844833,
		0.460020, 0.708835, -0.534728,
		-0.844833, 0.534728, -0.017965,
		43.511574, 32.718834, 34.237946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.590786, 32.685776, 34.673664>,  <44.102955, 32.344524, 34.250523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.590786, 32.685776, 34.673664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.970478, 32.802898, 34.719669>,  <45.198292, 32.873173, 34.747272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.970478, 32.802898, 34.719669>,  <44.590786, 32.685776, 34.673664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.970478, 32.802898, 34.719669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230923, -0.400288, -0.886817,
		-0.213630, 0.868351, -0.447582,
		0.949230, 0.292807, 0.115009,
		45.255245, 32.890739, 34.754173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.787464, 32.748234, 34.063293>,  <44.590786, 32.685776, 34.673664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.787464, 32.748234, 34.063293> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.136166, 32.712795, 34.256042>,  <45.345387, 32.691532, 34.371693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.136166, 32.712795, 34.256042>,  <44.787464, 32.748234, 34.063293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.136166, 32.712795, 34.256042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382619, -0.491197, -0.782514,
		0.306022, 0.866531, -0.394302,
		0.871753, -0.088599, 0.481869,
		45.397690, 32.686214, 34.400604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.331539, 32.991631, 33.616714>,  <44.787464, 32.748234, 34.063293>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.331539, 32.991631, 33.616714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.502617, 32.739601, 33.875973>,  <45.605263, 32.588383, 34.031528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.502617, 32.739601, 33.875973>,  <45.331539, 32.991631, 33.616714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.502617, 32.739601, 33.875973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198399, -0.634115, -0.747352,
		0.881882, 0.448228, -0.146201,
		0.427693, -0.630071, 0.648143,
		45.630924, 32.550579, 34.070415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.580814, 32.656456, 33.158829>,  <45.331539, 32.991631, 33.616714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.580814, 32.656456, 33.158829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.678337, 32.432880, 33.475853>,  <45.736851, 32.298737, 33.666065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.678337, 32.432880, 33.475853>,  <45.580814, 32.656456, 33.158829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.678337, 32.432880, 33.475853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274912, -0.743866, -0.609169,
		0.930043, 0.366404, -0.027702,
		0.243809, -0.558938, 0.792556,
		45.751480, 32.265198, 33.713619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.312553, 32.351639, 33.093647>,  <45.580814, 32.656456, 33.158829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.312553, 32.351639, 33.093647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.101490, 32.104843, 33.327194>,  <45.974854, 31.956766, 33.467323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.101490, 32.104843, 33.327194>,  <46.312553, 32.351639, 33.093647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.101490, 32.104843, 33.327194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225968, -0.764530, -0.603682,
		0.818850, -0.186602, 0.542830,
		-0.527658, -0.616987, 0.583870,
		45.943192, 31.919746, 33.502354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.711544, 31.748623, 33.141636>,  <46.312553, 32.351639, 33.093647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.711544, 31.748623, 33.141636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.367981, 31.601170, 33.283836>,  <46.161842, 31.512697, 33.369156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.367981, 31.601170, 33.283836>,  <46.711544, 31.748623, 33.141636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.367981, 31.601170, 33.283836> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147802, -0.843065, -0.517103,
		0.490332, -0.391602, 0.778603,
		-0.858912, -0.368631, 0.355502,
		46.110306, 31.490580, 33.390488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.818775, 30.965618, 33.379074>,  <46.711544, 31.748623, 33.141636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.818775, 30.965618, 33.379074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.437721, 31.029726, 33.275688>,  <46.209087, 31.068190, 33.213657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.437721, 31.029726, 33.275688>,  <46.818775, 30.965618, 33.379074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.437721, 31.029726, 33.275688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001994, -0.853145, -0.521670,
		-0.304114, -0.496445, 0.813054,
		-0.952634, 0.160268, -0.258464,
		46.151932, 31.077806, 33.198151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.487881, 30.288834, 33.472649>,  <46.818775, 30.965618, 33.379074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.487881, 30.288834, 33.472649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.231857, 30.473545, 33.227020>,  <46.078243, 30.584372, 33.079643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.231857, 30.473545, 33.227020>,  <46.487881, 30.288834, 33.472649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.231857, 30.473545, 33.227020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103983, -0.843943, -0.526259,
		-0.761254, -0.272985, 0.588193,
		-0.640062, 0.461778, -0.614069,
		46.039841, 30.612080, 33.042801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.978302, 29.785549, 33.353981>,  <46.487881, 30.288834, 33.472649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.978302, 29.785549, 33.353981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.881756, 30.054218, 33.073811>,  <45.823830, 30.215420, 32.905708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.881756, 30.054218, 33.073811>,  <45.978302, 29.785549, 33.353981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.881756, 30.054218, 33.073811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454148, -0.716033, -0.530138,
		-0.857610, 0.190144, 0.477861,
		-0.241362, 0.671671, -0.700430,
		45.809345, 30.255720, 32.863682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.252254, 29.649473, 33.090443>,  <45.978302, 29.785549, 33.353981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.252254, 29.649473, 33.090443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.443848, 29.854822, 32.805618>,  <45.558804, 29.978031, 32.634724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.443848, 29.854822, 32.805618>,  <45.252254, 29.649473, 33.090443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.443848, 29.854822, 32.805618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400635, -0.593907, -0.697686,
		-0.781067, 0.619456, -0.078797,
		0.478984, 0.513371, -0.712057,
		45.587543, 30.008833, 32.592003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.799408, 29.738138, 32.475105>,  <45.252254, 29.649473, 33.090443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.799408, 29.738138, 32.475105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.182304, 29.763884, 32.362293>,  <45.412045, 29.779331, 32.294605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.182304, 29.763884, 32.362293>,  <44.799408, 29.738138, 32.475105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.182304, 29.763884, 32.362293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194507, -0.578453, -0.792187,
		-0.214128, 0.813173, -0.541202,
		0.957244, 0.064362, -0.282030,
		45.469479, 29.783192, 32.277683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.691521, 29.889570, 31.858450>,  <44.799408, 29.738138, 32.475105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.691521, 29.889570, 31.858450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.074799, 29.775141, 31.856411>,  <45.304764, 29.706482, 31.855188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.074799, 29.775141, 31.856411>,  <44.691521, 29.889570, 31.858450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074799, 29.775141, 31.856411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175449, -0.573402, -0.800268,
		0.226014, 0.767706, -0.599621,
		0.958194, -0.286075, -0.005096,
		45.362255, 29.689318, 31.854881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.962257, 29.933771, 31.152744>,  <44.691521, 29.889570, 31.858450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.962257, 29.933771, 31.152744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.227627, 29.683714, 31.317217>,  <45.386848, 29.533680, 31.415901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.227627, 29.683714, 31.317217>,  <44.962257, 29.933771, 31.152744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.227627, 29.683714, 31.317217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095548, -0.474249, -0.875190,
		0.742123, 0.619905, -0.254895,
		0.663419, -0.625144, 0.411182,
		45.426651, 29.496170, 31.440571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.487823, 29.819660, 30.708853>,  <44.962257, 29.933771, 31.152744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.487823, 29.819660, 30.708853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.537029, 29.502882, 30.948082>,  <45.566551, 29.312815, 31.091619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.537029, 29.502882, 30.948082>,  <45.487823, 29.819660, 30.708853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.537029, 29.502882, 30.948082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143428, -0.582134, -0.800343,
		0.981986, 0.184230, 0.041979,
		0.123010, -0.791947, 0.598071,
		45.573933, 29.265299, 31.127502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.114174, 29.386644, 30.439384>,  <45.487823, 29.819660, 30.708853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.114174, 29.386644, 30.439384> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.869411, 29.159622, 30.659731>,  <45.722553, 29.023409, 30.791939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.869411, 29.159622, 30.659731>,  <46.114174, 29.386644, 30.439384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.869411, 29.159622, 30.659731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062201, -0.728851, -0.681841,
		0.788484, -0.382955, 0.481288,
		-0.611902, -0.567557, 0.550867,
		45.685841, 28.989355, 30.824991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.470772, 28.796810, 30.409895>,  <46.114174, 29.386644, 30.439384>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.470772, 28.796810, 30.409895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.096531, 28.712605, 30.523272>,  <45.871986, 28.662081, 30.591297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.096531, 28.712605, 30.523272>,  <46.470772, 28.796810, 30.409895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.096531, 28.712605, 30.523272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001359, -0.804945, -0.593348,
		0.353063, -0.554750, 0.753391,
		-0.935599, -0.210513, 0.283442,
		45.815853, 28.649450, 30.608305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.423904, 28.074701, 30.188595>,  <46.470772, 28.796810, 30.409895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.423904, 28.074701, 30.188595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.054340, 28.222868, 30.226913>,  <45.832600, 28.311768, 30.249905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.054340, 28.222868, 30.226913>,  <46.423904, 28.074701, 30.188595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.054340, 28.222868, 30.226913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286597, -0.504158, -0.814670,
		-0.253472, -0.780138, 0.571959,
		-0.923912, 0.370418, 0.095795,
		45.777168, 28.333994, 30.255651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.956306, 27.482464, 30.041769>,  <46.423904, 28.074701, 30.188595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.956306, 27.482464, 30.041769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.762890, 27.827990, 29.985182>,  <45.646839, 28.035305, 29.951229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.762890, 27.827990, 29.985182>,  <45.956306, 27.482464, 30.041769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.762890, 27.827990, 29.985182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125025, -0.228116, -0.965573,
		-0.866347, -0.449207, 0.218302,
		-0.483540, 0.863815, -0.141466,
		45.617828, 28.087133, 29.942741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.432446, 27.284718, 29.687862>,  <45.956306, 27.482464, 30.041769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.432446, 27.284718, 29.687862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.448505, 27.677618, 29.614576>,  <45.458141, 27.913359, 29.570604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.448505, 27.677618, 29.614576>,  <45.432446, 27.284718, 29.687862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.448505, 27.677618, 29.614576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312742, -0.161796, -0.935956,
		-0.948989, 0.094882, 0.300695,
		0.040154, 0.982252, -0.183216,
		45.460552, 27.972294, 29.559612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.717751, 27.514711, 29.607201>,  <45.432446, 27.284718, 29.687862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.717751, 27.514711, 29.607201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.943005, 27.793732, 29.429976>,  <45.078156, 27.961143, 29.323641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.943005, 27.793732, 29.429976>,  <44.717751, 27.514711, 29.607201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.943005, 27.793732, 29.429976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441539, -0.199219, -0.874846,
		-0.698518, 0.688281, 0.195810,
		0.563131, 0.697553, -0.443061,
		45.111942, 28.002998, 29.297056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278103, 27.915102, 29.108458>,  <44.717751, 27.514711, 29.607201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278103, 27.915102, 29.108458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.643883, 28.014717, 28.980860>,  <44.863350, 28.074486, 28.904301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.643883, 28.014717, 28.980860>,  <44.278103, 27.915102, 29.108458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.643883, 28.014717, 28.980860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327351, -0.008269, -0.944867,
		-0.237944, 0.968459, 0.073960,
		0.914453, 0.249036, -0.318994,
		44.918221, 28.089428, 28.885162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.569710, 36.984901, 40.966930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367165, 36.693558, 40.782284>,  <37.245640, 36.518749, 40.671497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367165, 36.693558, 40.782284>,  <37.569710, 36.984901, 40.966930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.367165, 36.693558, 40.782284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611384, 0.074275, -0.787841,
		0.608121, -0.681153, 0.407699,
		-0.506359, -0.728363, -0.461614,
		37.215256, 36.475048, 40.643799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097755, 36.597168, 40.673092>,  <37.569710, 36.984901, 40.966930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097755, 36.597168, 40.673092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759045, 36.495941, 40.485935>,  <37.555817, 36.435204, 40.373642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759045, 36.495941, 40.485935>,  <38.097755, 36.597168, 40.673092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759045, 36.495941, 40.485935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503207, -0.095906, -0.858828,
		0.172469, -0.962683, 0.208557,
		-0.846780, -0.253068, -0.467888,
		37.505009, 36.420021, 40.345570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324196, 35.961700, 40.222824>,  <38.097755, 36.597168, 40.673092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324196, 35.961700, 40.222824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990993, 36.127502, 40.076244>,  <37.791073, 36.226982, 39.988297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990993, 36.127502, 40.076244>,  <38.324196, 35.961700, 40.222824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.990993, 36.127502, 40.076244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433267, 0.076828, -0.897985,
		-0.344066, -0.906798, -0.243590,
		-0.833006, 0.414505, -0.366452,
		37.741093, 36.251854, 39.966309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161812, 35.518578, 39.631310>,  <38.324196, 35.961700, 40.222824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161812, 35.518578, 39.631310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965240, 35.859875, 39.561478>,  <37.847298, 36.064651, 39.519577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965240, 35.859875, 39.561478>,  <38.161812, 35.518578, 39.631310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965240, 35.859875, 39.561478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330685, -0.002642, -0.943738,
		-0.805696, -0.521511, -0.280856,
		-0.491428, 0.853241, -0.174584,
		37.817814, 36.115849, 39.509102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.755219, 35.439777, 39.075191>,  <38.161812, 35.518578, 39.631310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.755219, 35.439777, 39.075191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804035, 35.836784, 39.073334>,  <37.833324, 36.074989, 39.072220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804035, 35.836784, 39.073334>,  <37.755219, 35.439777, 39.075191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804035, 35.836784, 39.073334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191011, -0.028080, -0.981186,
		-0.973972, 0.118858, -0.193008,
		0.122041, 0.992514, -0.004646,
		37.840649, 36.134537, 39.071941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378342, 35.668030, 38.491211>,  <37.755219, 35.439777, 39.075191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378342, 35.668030, 38.491211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589447, 35.997055, 38.575920>,  <37.716110, 36.194469, 38.626747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589447, 35.997055, 38.575920>,  <37.378342, 35.668030, 38.491211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589447, 35.997055, 38.575920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219589, 0.108721, -0.969516,
		-0.820516, 0.558178, -0.123248,
		0.527763, 0.822567, 0.211777,
		37.747776, 36.243824, 38.639454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213493, 36.074162, 38.013008>,  <37.378342, 35.668030, 38.491211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213493, 36.074162, 38.013008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551136, 36.238274, 38.151085>,  <37.753719, 36.336742, 38.233929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551136, 36.238274, 38.151085>,  <37.213493, 36.074162, 38.013008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551136, 36.238274, 38.151085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272465, 0.226249, -0.935187,
		-0.461791, 0.883447, 0.079190,
		0.844104, 0.410285, 0.345188,
		37.804367, 36.361359, 38.254642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278625, 36.793365, 37.771526>,  <37.213493, 36.074162, 38.013008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278625, 36.793365, 37.771526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653599, 36.668453, 37.833115>,  <37.878582, 36.593506, 37.870068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653599, 36.668453, 37.833115>,  <37.278625, 36.793365, 37.771526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653599, 36.668453, 37.833115> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234800, 0.240473, -0.941829,
		0.257092, 0.919050, 0.298750,
		0.937429, -0.312283, 0.153969,
		37.934826, 36.574768, 37.879307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618027, 37.104485, 37.190063>,  <37.278625, 36.793365, 37.771526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618027, 37.104485, 37.190063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890896, 36.856636, 37.345348>,  <38.054619, 36.707928, 37.438519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890896, 36.856636, 37.345348>,  <37.618027, 37.104485, 37.190063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890896, 36.856636, 37.345348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391556, -0.138822, -0.909622,
		0.617512, 0.772529, 0.147915,
		0.682175, -0.619619, 0.388212,
		38.095547, 36.670750, 37.461811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253799, 37.368603, 36.911472>,  <37.618027, 37.104485, 37.190063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253799, 37.368603, 36.911472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336746, 36.993473, 37.022816>,  <38.386517, 36.768394, 37.089622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336746, 36.993473, 37.022816>,  <38.253799, 37.368603, 36.911472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336746, 36.993473, 37.022816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357516, -0.192211, -0.913913,
		0.910594, 0.289035, 0.295428,
		0.207369, -0.937824, 0.278361,
		38.398956, 36.712128, 37.106323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.877308, 37.200283, 36.489567>,  <38.253799, 37.368603, 36.911472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.877308, 37.200283, 36.489567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734882, 36.859970, 36.644173>,  <38.649429, 36.655785, 36.736935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734882, 36.859970, 36.644173>,  <38.877308, 37.200283, 36.489567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734882, 36.859970, 36.644173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279342, -0.491617, -0.824792,
		0.891733, -0.185707, 0.412704,
		-0.356061, -0.850780, 0.386515,
		38.628063, 36.604736, 36.760128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425545, 36.611828, 36.422783>,  <38.877308, 37.200283, 36.489567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425545, 36.611828, 36.422783> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073601, 36.425632, 36.461067>,  <38.862434, 36.313915, 36.484039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073601, 36.425632, 36.461067>,  <39.425545, 36.611828, 36.422783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073601, 36.425632, 36.461067> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114419, -0.402980, -0.908028,
		0.461247, -0.787989, 0.407828,
		-0.879863, -0.465489, 0.095712,
		38.809643, 36.285984, 36.489780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.409950, 35.888470, 36.144939>,  <39.425545, 36.611828, 36.422783>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.409950, 35.888470, 36.144939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042686, 36.044792, 36.118870>,  <38.822327, 36.138588, 36.103226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042686, 36.044792, 36.118870>,  <39.409950, 35.888470, 36.144939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042686, 36.044792, 36.118870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044750, -0.265741, -0.963005,
		-0.393673, -0.881277, 0.261482,
		-0.918161, 0.390810, -0.065178,
		38.767239, 36.162033, 36.099316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473274, 35.249588, 35.634769>,  <39.409950, 35.888470, 36.144939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473274, 35.249588, 35.634769> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629433, 35.062229, 35.317734>,  <39.723129, 34.949814, 35.127514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629433, 35.062229, 35.317734>,  <39.473274, 35.249588, 35.634769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.629433, 35.062229, 35.317734> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581435, -0.792927, 0.182209,
		-0.713809, 0.389704, -0.581899,
		0.390396, -0.468399, -0.792586,
		39.746552, 34.921711, 35.079956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971588, 34.879692, 35.243114>,  <39.473274, 35.249588, 35.634769>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.971588, 34.879692, 35.243114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305115, 34.695396, 35.121479>,  <39.505230, 34.584820, 35.048496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305115, 34.695396, 35.121479>,  <38.971588, 34.879692, 35.243114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305115, 34.695396, 35.121479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433746, -0.887533, 0.155400,
		-0.341490, 0.002323, -0.939882,
		0.833815, -0.460738, -0.304092,
		39.555260, 34.557175, 35.030251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770676, 34.317814, 34.729061>,  <38.971588, 34.879692, 35.243114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770676, 34.317814, 34.729061> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112022, 34.229855, 34.918125>,  <39.316830, 34.177078, 35.031563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112022, 34.229855, 34.918125>,  <38.770676, 34.317814, 34.729061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112022, 34.229855, 34.918125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418222, -0.830059, 0.368908,
		0.311217, -0.512492, -0.800310,
		0.853367, -0.219897, 0.472663,
		39.368034, 34.163887, 35.059925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933502, 33.631485, 34.557465>,  <38.770676, 34.317814, 34.729061>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.933502, 33.631485, 34.557465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124447, 33.701012, 34.902004>,  <39.239014, 33.742725, 35.108727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124447, 33.701012, 34.902004>,  <38.933502, 33.631485, 34.557465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124447, 33.701012, 34.902004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462551, -0.783734, 0.414496,
		0.747112, -0.596280, -0.293725,
		0.477358, 0.173812, 0.861347,
		39.267654, 33.753155, 35.160408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002090, 32.999020, 34.863079>,  <38.933502, 33.631485, 34.557465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002090, 32.999020, 34.863079> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090691, 33.227127, 35.179493>,  <39.143848, 33.363991, 35.369343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090691, 33.227127, 35.179493>,  <39.002090, 32.999020, 34.863079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090691, 33.227127, 35.179493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256048, -0.748711, 0.611450,
		0.940946, -0.337977, -0.019822,
		0.221497, 0.570266, 0.791034,
		39.157139, 33.398209, 35.416801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471840, 32.725136, 35.281044>,  <39.002090, 32.999020, 34.863079>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471840, 32.725136, 35.281044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246872, 32.960430, 35.513477>,  <39.111893, 33.101608, 35.652939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246872, 32.960430, 35.513477>,  <39.471840, 32.725136, 35.281044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246872, 32.960430, 35.513477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049754, -0.725570, 0.686347,
		0.825355, 0.357102, 0.437341,
		-0.562418, 0.588239, 0.581086,
		39.078148, 33.136902, 35.687801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441414, 32.365009, 35.922741>,  <39.471840, 32.725136, 35.281044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441414, 32.365009, 35.922741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159714, 32.647030, 35.956059>,  <38.990696, 32.816242, 35.976048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159714, 32.647030, 35.956059>,  <39.441414, 32.365009, 35.922741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.159714, 32.647030, 35.956059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415786, -0.504691, 0.756578,
		0.575463, 0.498186, 0.648577,
		-0.704248, 0.705052, 0.083292,
		38.948441, 32.858547, 35.981045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526951, 32.515369, 36.620117>,  <39.441414, 32.365009, 35.922741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526951, 32.515369, 36.620117> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162491, 32.630905, 36.502563>,  <38.943813, 32.700226, 36.432030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162491, 32.630905, 36.502563>,  <39.526951, 32.515369, 36.620117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162491, 32.630905, 36.502563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407218, -0.522047, 0.749427,
		0.063043, 0.802519, 0.593286,
		-0.911153, 0.288843, -0.293889,
		38.889145, 32.717560, 36.414398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247940, 32.590088, 37.236263>,  <39.526951, 32.515369, 36.620117>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247940, 32.590088, 37.236263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938297, 32.579895, 36.983246>,  <38.752510, 32.573780, 36.831436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938297, 32.579895, 36.983246>,  <39.247940, 32.590088, 37.236263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938297, 32.579895, 36.983246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512841, -0.560572, 0.650195,
		-0.371153, 0.827713, 0.420875,
		-0.774106, -0.025480, -0.632543,
		38.706066, 32.572250, 36.793484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672039, 33.055511, 37.487274>,  <39.247940, 32.590088, 37.236263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672039, 33.055511, 37.487274> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512447, 32.758324, 37.272308>,  <38.416691, 32.580013, 37.143330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512447, 32.758324, 37.272308>,  <38.672039, 33.055511, 37.487274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.512447, 32.758324, 37.272308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512103, -0.305627, 0.802710,
		-0.760635, 0.595477, -0.258536,
		-0.398979, -0.742967, -0.537416,
		38.392754, 32.535435, 37.111084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149460, 32.977818, 37.818741>,  <38.672039, 33.055511, 37.487274>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149460, 32.977818, 37.818741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165440, 32.647129, 37.594265>,  <38.175026, 32.448715, 37.459579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.165440, 32.647129, 37.594265>,  <38.149460, 32.977818, 37.818741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165440, 32.647129, 37.594265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414923, -0.524650, 0.743358,
		-0.908979, 0.203155, -0.363985,
		0.039948, -0.826723, -0.561190,
		38.177425, 32.399113, 37.425907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530148, 32.738537, 37.909496>,  <38.149460, 32.977818, 37.818741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530148, 32.738537, 37.909496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741329, 32.414146, 37.808632>,  <37.868038, 32.219513, 37.748112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741329, 32.414146, 37.808632>,  <37.530148, 32.738537, 37.909496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741329, 32.414146, 37.808632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477350, -0.528943, 0.701681,
		-0.702425, -0.250084, -0.666376,
		0.527954, -0.810973, -0.252166,
		37.899715, 32.170853, 37.732983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034016, 32.154427, 37.872791>,  <37.530148, 32.738537, 37.909496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034016, 32.154427, 37.872791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395683, 31.986542, 37.904613>,  <37.612682, 31.885811, 37.923706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395683, 31.986542, 37.904613>,  <37.034016, 32.154427, 37.872791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395683, 31.986542, 37.904613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345831, -0.609845, 0.713085,
		-0.250772, -0.672260, -0.696549,
		0.904165, -0.419710, 0.079556,
		37.666931, 31.860628, 37.928482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923973, 31.469381, 37.932964>,  <37.034016, 32.154427, 37.872791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923973, 31.469381, 37.932964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285202, 31.527681, 38.094566>,  <37.501938, 31.562662, 38.191528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285202, 31.527681, 38.094566>,  <36.923973, 31.469381, 37.932964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285202, 31.527681, 38.094566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264720, -0.551856, 0.790809,
		0.338216, -0.821104, -0.459781,
		0.903069, 0.145751, 0.404009,
		37.556122, 31.571407, 38.215771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158531, 30.748840, 38.173683>,  <36.923973, 31.469381, 37.932964>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158531, 30.748840, 38.173683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371277, 31.023119, 38.372456>,  <37.498924, 31.187687, 38.491718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371277, 31.023119, 38.372456>,  <37.158531, 30.748840, 38.173683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371277, 31.023119, 38.372456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165728, -0.491184, 0.855145,
		0.830456, -0.537174, -0.147603,
		0.531862, 0.685698, 0.496932,
		37.530834, 31.228828, 38.521534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328163, 29.981438, 38.090313>,  <37.158531, 30.748840, 38.173683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328163, 29.981438, 38.090313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955605, 29.836052, 38.098190>,  <36.732067, 29.748821, 38.102917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.955605, 29.836052, 38.098190>,  <37.328163, 29.981438, 38.090313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955605, 29.836052, 38.098190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151546, 0.338019, -0.928858,
		0.330926, -0.868132, -0.369912,
		-0.931408, -0.363442, 0.019702,
		36.676186, 29.727013, 38.104099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308247, 29.794983, 37.378616>,  <37.328163, 29.981438, 38.090313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308247, 29.794983, 37.378616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939743, 29.805737, 37.533825>,  <36.718639, 29.812189, 37.626949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939743, 29.805737, 37.533825>,  <37.308247, 29.794983, 37.378616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939743, 29.805737, 37.533825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349324, 0.381495, -0.855824,
		-0.171033, -0.923980, -0.342065,
		-0.921260, 0.026883, 0.388017,
		36.663364, 29.813801, 37.650230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943157, 29.496788, 36.863422>,  <37.308247, 29.794983, 37.378616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943157, 29.496788, 36.863422> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679623, 29.695606, 37.089302>,  <36.521503, 29.814898, 37.224831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679623, 29.695606, 37.089302>,  <36.943157, 29.496788, 36.863422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679623, 29.695606, 37.089302> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494163, 0.280035, -0.823033,
		-0.567220, -0.821295, 0.061125,
		-0.658836, 0.497046, 0.564695,
		36.481972, 29.844721, 37.258709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.314106, 29.275780, 36.649597>,  <36.943157, 29.496788, 36.863422>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.314106, 29.275780, 36.649597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261036, 29.632977, 36.821629>,  <36.229195, 29.847294, 36.924847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261036, 29.632977, 36.821629>,  <36.314106, 29.275780, 36.649597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.261036, 29.632977, 36.821629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378269, 0.355448, -0.854733,
		-0.916138, -0.276088, 0.290631,
		-0.132677, 0.892991, 0.430075,
		36.221233, 29.900873, 36.950653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607296, 29.456745, 36.563412>,  <36.314106, 29.275780, 36.649597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607296, 29.456745, 36.563412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780487, 29.809818, 36.636517>,  <35.884403, 30.021662, 36.680378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780487, 29.809818, 36.636517>,  <35.607296, 29.456745, 36.563412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780487, 29.809818, 36.636517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405018, 0.371638, -0.835371,
		-0.805287, 0.287680, 0.518414,
		0.432982, 0.882681, 0.182760,
		35.910381, 30.074623, 36.691345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066425, 29.926056, 36.558556>,  <35.607296, 29.456745, 36.563412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066425, 29.926056, 36.558556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392937, 30.148357, 36.495537>,  <35.588844, 30.281738, 36.457726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392937, 30.148357, 36.495537>,  <35.066425, 29.926056, 36.558556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392937, 30.148357, 36.495537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455403, 0.451341, -0.767398,
		-0.355375, 0.698162, 0.621513,
		0.816282, 0.555753, -0.157550,
		35.637821, 30.315083, 36.448273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864700, 30.637749, 36.377872>,  <35.066425, 29.926056, 36.558556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864700, 30.637749, 36.377872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239532, 30.602276, 36.242813>,  <35.464432, 30.580992, 36.161777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239532, 30.602276, 36.242813>,  <34.864700, 30.637749, 36.377872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239532, 30.602276, 36.242813> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246592, 0.516483, -0.820023,
		0.247111, 0.851693, 0.462121,
		0.937085, -0.088681, -0.337649,
		35.520657, 30.575672, 36.141518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096786, 31.341646, 36.112698>,  <34.864700, 30.637749, 36.377872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096786, 31.341646, 36.112698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328403, 31.071470, 35.930058>,  <35.467373, 30.909365, 35.820473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.328403, 31.071470, 35.930058>,  <35.096786, 31.341646, 36.112698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328403, 31.071470, 35.930058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094281, 0.500815, -0.860404,
		0.809825, 0.541263, 0.226314,
		0.579046, -0.675440, -0.456604,
		35.502117, 30.868837, 35.793076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504704, 31.749138, 35.650467>,  <35.096786, 31.341646, 36.112698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504704, 31.749138, 35.650467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542213, 31.383497, 35.492672>,  <35.564720, 31.164112, 35.397995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542213, 31.383497, 35.492672>,  <35.504704, 31.749138, 35.650467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542213, 31.383497, 35.492672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075274, 0.401612, -0.912711,
		0.992744, 0.055896, 0.106470,
		0.093776, -0.914103, -0.394490,
		35.570347, 31.109266, 35.374325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853863, 31.864738, 35.096859>,  <35.504704, 31.749138, 35.650467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853863, 31.864738, 35.096859> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697449, 31.502041, 35.033737>,  <35.603600, 31.284422, 34.995865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697449, 31.502041, 35.033737>,  <35.853863, 31.864738, 35.096859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.697449, 31.502041, 35.033737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006184, 0.168867, -0.985619,
		0.920354, -0.386390, -0.060426,
		-0.391037, -0.906745, -0.157807,
		35.580139, 31.230017, 34.986397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255592, 31.616753, 34.549252>,  <35.853863, 31.864738, 35.096859>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255592, 31.616753, 34.549252> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924408, 31.392523, 34.555321>,  <35.725697, 31.257984, 34.558964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924408, 31.392523, 34.555321>,  <36.255592, 31.616753, 34.549252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924408, 31.392523, 34.555321> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188294, 0.252414, -0.949122,
		0.528223, -0.788697, -0.314543,
		-0.827965, -0.560574, 0.015176,
		35.676018, 31.224350, 34.559872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228878, 31.141945, 34.000492>,  <36.255592, 31.616753, 34.549252>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228878, 31.141945, 34.000492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855068, 31.240707, 34.103024>,  <35.630783, 31.299965, 34.164543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855068, 31.240707, 34.103024>,  <36.228878, 31.141945, 34.000492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855068, 31.240707, 34.103024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168111, 0.328562, -0.929401,
		-0.313692, -0.911639, -0.265542,
		-0.934525, 0.246905, 0.256324,
		35.574711, 31.314779, 34.179920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.689606, 28.138304, 41.305054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293880, 28.139359, 41.363377>,  <37.056446, 28.139992, 41.398369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293880, 28.139359, 41.363377>,  <37.689606, 28.138304, 41.305054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293880, 28.139359, 41.363377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142083, 0.207794, -0.967799,
		-0.032852, -0.978169, -0.205197,
		-0.989309, 0.002639, 0.145808,
		36.997089, 28.140150, 41.407120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339401, 27.651268, 40.822929>,  <37.689606, 28.138304, 41.305054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339401, 27.651268, 40.822929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.105881, 27.958130, 40.929253>,  <36.965771, 28.142248, 40.993046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.105881, 27.958130, 40.929253>,  <37.339401, 27.651268, 40.822929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105881, 27.958130, 40.929253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167876, 0.206251, -0.963991,
		-0.794355, -0.607396, 0.008379,
		-0.583797, 0.767157, 0.265804,
		36.930740, 28.188276, 41.008995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821243, 27.689756, 40.228725>,  <37.339401, 27.651268, 40.822929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821243, 27.689756, 40.228725> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.730492, 28.029840, 40.418743>,  <36.676041, 28.233891, 40.532753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.730492, 28.029840, 40.418743>,  <36.821243, 27.689756, 40.228725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730492, 28.029840, 40.418743> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252366, 0.419785, -0.871832,
		-0.940658, -0.317687, 0.119323,
		-0.226880, 0.850209, 0.475048,
		36.662426, 28.284903, 40.561256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115082, 27.887661, 39.959454>,  <36.821243, 27.689756, 40.228725>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115082, 27.887661, 39.959454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.303440, 28.208693, 40.105949>,  <36.416454, 28.401312, 40.193848>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.303440, 28.208693, 40.105949>,  <36.115082, 27.887661, 39.959454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303440, 28.208693, 40.105949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125681, 0.471942, -0.872625,
		-0.873192, 0.364884, 0.323103,
		0.470893, 0.802577, 0.366237,
		36.444710, 28.449465, 40.215820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630409, 28.403069, 39.894413>,  <36.115082, 27.887661, 39.959454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630409, 28.403069, 39.894413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.994198, 28.568815, 39.908062>,  <36.212471, 28.668262, 39.916252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.994198, 28.568815, 39.908062>,  <35.630409, 28.403069, 39.894413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994198, 28.568815, 39.908062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180735, 0.467916, -0.865095,
		-0.374432, 0.780612, 0.500446,
		0.909470, 0.414367, 0.034119,
		36.267040, 28.693125, 39.918297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511868, 29.119225, 39.694221>,  <35.630409, 28.403069, 39.894413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511868, 29.119225, 39.694221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.909035, 29.086718, 39.659538>,  <36.147335, 29.067213, 39.638729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.909035, 29.086718, 39.659538>,  <35.511868, 29.119225, 39.694221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909035, 29.086718, 39.659538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029698, 0.536817, -0.843176,
		0.115069, 0.839776, 0.530599,
		0.992913, -0.081266, -0.086711,
		36.206909, 29.062338, 39.633526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765564, 29.762901, 39.412663>,  <35.511868, 29.119225, 39.694221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765564, 29.762901, 39.412663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.073124, 29.517317, 39.341278>,  <36.257660, 29.369967, 39.298447>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.073124, 29.517317, 39.341278>,  <35.765564, 29.762901, 39.412663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.073124, 29.517317, 39.341278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166544, 0.461803, -0.871206,
		0.617301, 0.640147, 0.457331,
		0.768897, -0.613962, -0.178459,
		36.303795, 29.333128, 39.287739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325459, 30.177032, 39.236496>,  <35.765564, 29.762901, 39.412663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325459, 30.177032, 39.236496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.376694, 29.818117, 39.067516>,  <36.407436, 29.602768, 38.966129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.376694, 29.818117, 39.067516>,  <36.325459, 30.177032, 39.236496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376694, 29.818117, 39.067516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049848, 0.431248, -0.900855,
		0.990509, 0.094332, 0.099966,
		0.128090, -0.897288, -0.422453,
		36.415119, 29.548931, 38.940781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921623, 30.228283, 38.852451>,  <36.325459, 30.177032, 39.236496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921623, 30.228283, 38.852451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.749531, 29.890493, 38.724854>,  <36.646275, 29.687819, 38.648293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.749531, 29.890493, 38.724854>,  <36.921623, 30.228283, 38.852451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749531, 29.890493, 38.724854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066705, 0.322668, -0.944159,
		0.900249, -0.427488, -0.082492,
		-0.430234, -0.844476, -0.318998,
		36.620461, 29.637150, 38.629154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663635, 30.358963, 38.645977>,  <36.921623, 30.228283, 38.852451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663635, 30.358963, 38.645977> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.655724, 30.728100, 38.799847>,  <37.650978, 30.949581, 38.892170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.655724, 30.728100, 38.799847>,  <37.663635, 30.358963, 38.645977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.655724, 30.728100, 38.799847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045725, -0.385181, 0.921707,
		0.998758, 0.000642, 0.049816,
		-0.019779, 0.922841, 0.384674,
		37.649792, 31.004951, 38.915249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819611, 30.200068, 39.367802>,  <37.663635, 30.358963, 38.645977>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819611, 30.200068, 39.367802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.734409, 30.590841, 39.373894>,  <37.683289, 30.825306, 39.377548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.734409, 30.590841, 39.373894>,  <37.819611, 30.200068, 39.367802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734409, 30.590841, 39.373894> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231907, 0.035407, 0.972093,
		0.949131, 0.210592, -0.234100,
		-0.213004, 0.976933, 0.015232,
		37.670509, 30.883921, 39.378464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436031, 30.638348, 39.602043>,  <37.819611, 30.200068, 39.367802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436031, 30.638348, 39.602043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.094437, 30.831354, 39.679901>,  <37.889481, 30.947157, 39.726616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.094437, 30.831354, 39.679901>,  <38.436031, 30.638348, 39.602043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094437, 30.831354, 39.679901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279956, 0.110811, 0.953596,
		0.438555, 0.868850, -0.229714,
		-0.853987, 0.482514, 0.194643,
		37.838242, 30.976109, 39.738293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674793, 31.286146, 39.938583>,  <38.436031, 30.638348, 39.602043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674793, 31.286146, 39.938583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.288998, 31.233461, 40.030155>,  <38.057518, 31.201851, 40.085098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.288998, 31.233461, 40.030155>,  <38.674793, 31.286146, 39.938583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288998, 31.233461, 40.030155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227042, 0.029369, 0.973442,
		-0.134937, 0.990853, 0.001578,
		-0.964492, -0.131712, 0.228928,
		37.999649, 31.193949, 40.098835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432732, 31.781609, 40.397144>,  <38.674793, 31.286146, 39.938583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432732, 31.781609, 40.397144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.148033, 31.502804, 40.432007>,  <37.977215, 31.335522, 40.452923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.148033, 31.502804, 40.432007>,  <38.432732, 31.781609, 40.397144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148033, 31.502804, 40.432007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229936, -0.113938, 0.966513,
		-0.663741, 0.707949, 0.241363,
		-0.711743, -0.697012, 0.087158,
		37.934509, 31.293699, 40.458153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029133, 31.993496, 40.974636>,  <38.432732, 31.781609, 40.397144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029133, 31.993496, 40.974636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.944599, 31.606161, 40.921471>,  <37.893879, 31.373760, 40.889572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.944599, 31.606161, 40.921471>,  <38.029133, 31.993496, 40.974636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944599, 31.606161, 40.921471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053606, -0.147261, 0.987644,
		-0.975943, 0.201598, 0.083030,
		-0.211334, -0.968335, -0.132911,
		37.881199, 31.315660, 40.881596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584667, 31.800850, 41.473438>,  <38.029133, 31.993496, 40.974636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584667, 31.800850, 41.473438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.734268, 31.443115, 41.375225>,  <37.824028, 31.228476, 41.316296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.734268, 31.443115, 41.375225>,  <37.584667, 31.800850, 41.473438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734268, 31.443115, 41.375225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063741, -0.239337, 0.968842,
		-0.925235, -0.377999, -0.032507,
		0.374002, -0.894334, -0.245537,
		37.846470, 31.174814, 41.301563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302948, 31.336758, 42.007526>,  <37.584667, 31.800850, 41.473438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302948, 31.336758, 42.007526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.610424, 31.125902, 41.862617>,  <37.794910, 30.999390, 41.775673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.610424, 31.125902, 41.862617>,  <37.302948, 31.336758, 42.007526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610424, 31.125902, 41.862617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351099, -0.125685, 0.927865,
		-0.534647, -0.840433, 0.088466,
		0.768689, -0.527140, -0.362272,
		37.841030, 30.967760, 41.753937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279480, 30.769403, 42.382607>,  <37.302948, 31.336758, 42.007526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279480, 30.769403, 42.382607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.653843, 30.779356, 42.242054>,  <37.878460, 30.785328, 42.157722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.653843, 30.779356, 42.242054>,  <37.279480, 30.769403, 42.382607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653843, 30.779356, 42.242054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347868, -0.222255, 0.910818,
		-0.055433, -0.974671, -0.216665,
		0.935903, 0.024882, -0.351378,
		37.934612, 30.786819, 42.136642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616203, 30.097656, 42.723053>,  <37.279480, 30.769403, 42.382607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616203, 30.097656, 42.723053> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.911877, 30.338642, 42.602619>,  <38.089279, 30.483232, 42.530361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.911877, 30.338642, 42.602619>,  <37.616203, 30.097656, 42.723053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911877, 30.338642, 42.602619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510081, -0.208847, 0.834386,
		0.439807, -0.770339, -0.461680,
		0.739181, 0.602463, -0.301083,
		38.133633, 30.519381, 42.512295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171841, 29.730875, 42.707787>,  <37.616203, 30.097656, 42.723053>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171841, 29.730875, 42.707787> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.319977, 30.101358, 42.736034>,  <38.408859, 30.323648, 42.752983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.319977, 30.101358, 42.736034>,  <38.171841, 29.730875, 42.707787>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319977, 30.101358, 42.736034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441699, -0.242469, 0.863777,
		0.817160, -0.288698, -0.498901,
		0.370339, 0.926208, 0.070618,
		38.431080, 30.379221, 42.757221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916100, 29.738018, 43.024750>,  <38.171841, 29.730875, 42.707787>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916100, 29.738018, 43.024750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.795399, 30.113268, 43.092709>,  <38.722980, 30.338419, 43.133484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.795399, 30.113268, 43.092709>,  <38.916100, 29.738018, 43.024750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795399, 30.113268, 43.092709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392381, -0.040213, 0.918923,
		0.868898, 0.343951, -0.355968,
		-0.301750, 0.938126, 0.169900,
		38.704872, 30.394707, 43.143681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459450, 30.143719, 43.405617>,  <38.916100, 29.738018, 43.024750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459450, 30.143719, 43.405617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.160633, 30.402115, 43.468391>,  <38.981342, 30.557152, 43.506054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.160633, 30.402115, 43.468391>,  <39.459450, 30.143719, 43.405617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160633, 30.402115, 43.468391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302470, 0.120076, 0.945565,
		0.591982, 0.753843, -0.285094,
		-0.747040, 0.645990, 0.156932,
		38.936520, 30.595911, 43.515472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720577, 30.792601, 43.743084>,  <39.459450, 30.143719, 43.405617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720577, 30.792601, 43.743084> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.331154, 30.778845, 43.833424>,  <39.097500, 30.770592, 43.887627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.331154, 30.778845, 43.833424>,  <39.720577, 30.792601, 43.743084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331154, 30.778845, 43.833424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223856, 0.053661, 0.973144,
		-0.045584, 0.997967, -0.044544,
		-0.973556, -0.034388, 0.225847,
		39.039085, 30.768528, 43.901176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.290504, 30.362453, 44.130569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.672489, 30.249859, 44.092999>,  <32.901680, 30.182302, 44.070457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.672489, 30.249859, 44.092999>,  <32.290504, 30.362453, 44.130569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672489, 30.249859, 44.092999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081587, 0.553377, -0.828925,
		0.285308, 0.783925, 0.551417,
		0.954957, -0.281488, -0.093925,
		32.958977, 30.165413, 44.064819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616589, 30.993793, 43.909500>,  <32.290504, 30.362453, 44.130569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616589, 30.993793, 43.909500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.853012, 30.691156, 43.797626>,  <32.994865, 30.509575, 43.730503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.853012, 30.691156, 43.797626>,  <32.616589, 30.993793, 43.909500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853012, 30.691156, 43.797626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174225, 0.458288, -0.871560,
		0.787590, 0.466414, 0.402692,
		0.591057, -0.756591, -0.279682,
		33.030331, 30.464180, 43.713722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.251770, 31.357462, 43.772141>,  <32.616589, 30.993793, 43.909500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.251770, 31.357462, 43.772141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.288101, 31.006798, 43.583157>,  <33.309898, 30.796400, 43.469765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.288101, 31.006798, 43.583157>,  <33.251770, 31.357462, 43.772141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.288101, 31.006798, 43.583157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206130, 0.480698, -0.852314,
		0.974300, -0.019976, 0.224366,
		0.090826, -0.876658, -0.472462,
		33.315350, 30.743801, 43.441418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680275, 31.555811, 43.234276>,  <33.251770, 31.357462, 43.772141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680275, 31.555811, 43.234276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.533020, 31.204857, 43.111202>,  <33.444668, 30.994284, 43.037357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.533020, 31.204857, 43.111202>,  <33.680275, 31.555811, 43.234276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533020, 31.204857, 43.111202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304810, 0.198744, -0.931446,
		0.878389, -0.436683, 0.194271,
		-0.368136, -0.877388, -0.307680,
		33.422581, 30.941641, 43.018898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186539, 31.330896, 42.801689>,  <33.680275, 31.555811, 43.234276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186539, 31.330896, 42.801689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.868553, 31.127737, 42.668980>,  <33.677761, 31.005842, 42.589352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.868553, 31.127737, 42.668980>,  <34.186539, 31.330896, 42.801689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868553, 31.127737, 42.668980> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285694, 0.169028, -0.943297,
		0.535177, -0.844672, 0.010732,
		-0.794962, -0.507896, -0.331778,
		33.630066, 30.975368, 42.569447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499882, 30.980858, 42.245544>,  <34.186539, 31.330896, 42.801689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499882, 30.980858, 42.245544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.101215, 30.998899, 42.218338>,  <33.862015, 31.009724, 42.202015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.101215, 30.998899, 42.218338>,  <34.499882, 30.980858, 42.245544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101215, 30.998899, 42.218338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078298, 0.293548, -0.952732,
		-0.023006, -0.954880, -0.296100,
		-0.996665, 0.045103, -0.068011,
		33.802216, 31.012430, 42.197933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358849, 30.759245, 41.643913>,  <34.499882, 30.980858, 42.245544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358849, 30.759245, 41.643913> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.037838, 30.975922, 41.743935>,  <33.845234, 31.105928, 41.803947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.037838, 30.975922, 41.743935>,  <34.358849, 30.759245, 41.643913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037838, 30.975922, 41.743935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056568, 0.348144, -0.935733,
		-0.593935, -0.765091, -0.248750,
		-0.802522, 0.541693, 0.250054,
		33.797081, 31.138430, 41.818951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961037, 30.763783, 41.099899>,  <34.358849, 30.759245, 41.643913>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961037, 30.763783, 41.099899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.798328, 31.064365, 41.307686>,  <33.700703, 31.244715, 41.432358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.798328, 31.064365, 41.307686>,  <33.961037, 30.763783, 41.099899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798328, 31.064365, 41.307686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002859, 0.569682, -0.821860,
		-0.913524, -0.332827, -0.233880,
		-0.406774, 0.751458, 0.519467,
		33.676296, 31.289803, 41.463528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481499, 31.119312, 40.621433>,  <33.961037, 30.763783, 41.099899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481499, 31.119312, 40.621433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.536213, 31.388758, 40.911961>,  <33.569042, 31.550425, 41.086277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.536213, 31.388758, 40.911961>,  <33.481499, 31.119312, 40.621433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536213, 31.388758, 40.911961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035458, 0.736066, -0.675981,
		-0.989966, 0.066709, 0.124566,
		0.136783, 0.673615, 0.726315,
		33.577248, 31.590843, 41.129856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922348, 31.589607, 40.652393>,  <33.481499, 31.119312, 40.621433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922348, 31.589607, 40.652393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.241608, 31.785530, 40.792702>,  <33.433163, 31.903084, 40.876888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.241608, 31.785530, 40.792702>,  <32.922348, 31.589607, 40.652393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.241608, 31.785530, 40.792702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139517, 0.716684, -0.683300,
		-0.586079, 0.496439, 0.640359,
		0.798152, 0.489809, 0.350772,
		33.481052, 31.932472, 40.897934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.682770, 32.195530, 40.454128>,  <32.922348, 31.589607, 40.652393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.682770, 32.195530, 40.454128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.070660, 32.223480, 40.547726>,  <33.303394, 32.240250, 40.603886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.070660, 32.223480, 40.547726>,  <32.682770, 32.195530, 40.454128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070660, 32.223480, 40.547726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129544, 0.665076, -0.735454,
		-0.207015, 0.743500, 0.635887,
		0.969723, 0.069875, 0.233996,
		33.361576, 32.244442, 40.617924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773533, 32.819584, 40.599796>,  <32.682770, 32.195530, 40.454128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773533, 32.819584, 40.599796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.139839, 32.691956, 40.502171>,  <33.359623, 32.615379, 40.443596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.139839, 32.691956, 40.502171>,  <32.773533, 32.819584, 40.599796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139839, 32.691956, 40.502171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033604, 0.666274, -0.744950,
		0.400306, 0.673998, 0.620872,
		0.915765, -0.319071, -0.244064,
		33.414570, 32.596233, 40.428951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101505, 33.404839, 40.436954>,  <32.773533, 32.819584, 40.599796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101505, 33.404839, 40.436954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.351883, 33.140354, 40.271549>,  <33.502110, 32.981663, 40.172306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.351883, 33.140354, 40.271549>,  <33.101505, 33.404839, 40.436954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351883, 33.140354, 40.271549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042595, 0.500457, -0.864713,
		0.778707, 0.558872, 0.285091,
		0.625940, -0.661215, -0.413514,
		33.539665, 32.941990, 40.147495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565388, 33.711632, 40.088276>,  <33.101505, 33.404839, 40.436954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565388, 33.711632, 40.088276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.562222, 33.348190, 39.921242>,  <33.560322, 33.130127, 39.821022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.562222, 33.348190, 39.921242>,  <33.565388, 33.711632, 40.088276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562222, 33.348190, 39.921242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106536, 0.415987, -0.903108,
		0.994277, 0.037337, -0.100093,
		-0.007918, -0.908603, -0.417585,
		33.559845, 33.075611, 39.795967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356552, 33.836185, 39.997795>,  <33.565388, 33.711632, 40.088276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356552, 33.836185, 39.997795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.489761, 34.205521, 40.074257>,  <34.569687, 34.427124, 40.120132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.489761, 34.205521, 40.074257>,  <34.356552, 33.836185, 39.997795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489761, 34.205521, 40.074257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115775, -0.241228, 0.963538,
		0.935785, -0.298748, -0.187234,
		0.333021, 0.923341, 0.191150,
		34.589668, 34.482521, 40.131603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754631, 33.718685, 40.510559>,  <34.356552, 33.836185, 39.997795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754631, 33.718685, 40.510559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.710594, 34.116219, 40.515900>,  <34.684174, 34.354736, 40.519104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.710594, 34.116219, 40.515900>,  <34.754631, 33.718685, 40.510559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.710594, 34.116219, 40.515900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174030, -0.032499, 0.984204,
		0.978567, 0.106028, 0.176534,
		-0.110091, 0.993832, 0.013351,
		34.677567, 34.414368, 40.519905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134869, 33.888599, 41.198521>,  <34.754631, 33.718685, 40.510559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134869, 33.888599, 41.198521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.886166, 34.183887, 41.093864>,  <34.736946, 34.361061, 41.031071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.886166, 34.183887, 41.093864>,  <35.134869, 33.888599, 41.198521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.886166, 34.183887, 41.093864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242396, 0.136285, 0.960557,
		0.744757, 0.660653, 0.094205,
		-0.621756, 0.738217, -0.261639,
		34.699638, 34.405354, 41.015373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.235115, 34.440968, 41.659695>,  <35.134869, 33.888599, 41.198521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.235115, 34.440968, 41.659695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.862411, 34.494934, 41.524864>,  <34.638790, 34.527313, 41.443966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.862411, 34.494934, 41.524864>,  <35.235115, 34.440968, 41.659695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862411, 34.494934, 41.524864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307867, 0.198563, 0.930479,
		0.192464, 0.970758, -0.143478,
		-0.931759, 0.134912, -0.337081,
		34.582882, 34.535408, 41.423740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850525, 35.056381, 42.107265>,  <35.235115, 34.440968, 41.659695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850525, 35.056381, 42.107265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574635, 34.815079, 41.947083>,  <34.409100, 34.670296, 41.850975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.574635, 34.815079, 41.947083>,  <34.850525, 35.056381, 42.107265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574635, 34.815079, 41.947083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475056, -0.040371, 0.879029,
		-0.546446, 0.796525, -0.258735,
		-0.689723, -0.603256, -0.400455,
		34.367718, 34.634102, 41.826946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269268, 35.314125, 42.480412>,  <34.850525, 35.056381, 42.107265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269268, 35.314125, 42.480412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.141083, 34.972843, 42.315804>,  <34.064171, 34.768074, 42.217037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.141083, 34.972843, 42.315804>,  <34.269268, 35.314125, 42.480412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141083, 34.972843, 42.315804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449883, -0.245223, 0.858761,
		-0.833610, 0.460340, -0.305255,
		-0.320467, -0.853201, -0.411520,
		34.044941, 34.716885, 42.192348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599731, 35.229969, 42.835835>,  <34.269268, 35.314125, 42.480412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599731, 35.229969, 42.835835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.722660, 34.869976, 42.712162>,  <33.796417, 34.653980, 42.637959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.722660, 34.869976, 42.712162>,  <33.599731, 35.229969, 42.835835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722660, 34.869976, 42.712162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283075, -0.396654, 0.873232,
		-0.908527, -0.180843, -0.376662,
		0.307322, -0.899978, -0.309179,
		33.814857, 34.599983, 42.619408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089043, 34.765076, 43.136311>,  <33.599731, 35.229969, 42.835835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089043, 34.765076, 43.136311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.389172, 34.526714, 43.021832>,  <33.569248, 34.383698, 42.953144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.389172, 34.526714, 43.021832>,  <33.089043, 34.765076, 43.136311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389172, 34.526714, 43.021832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092399, -0.523215, 0.847177,
		-0.654582, -0.609212, -0.447641,
		0.750323, -0.595908, -0.286196,
		33.614269, 34.347942, 42.935974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.913136, 34.033272, 43.240364>,  <33.089043, 34.765076, 43.136311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.913136, 34.033272, 43.240364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.310917, 33.993797, 43.225796>,  <33.549587, 33.970112, 43.217056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.310917, 33.993797, 43.225796>,  <32.913136, 34.033272, 43.240364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310917, 33.993797, 43.225796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023665, -0.547222, 0.836653,
		-0.102491, -0.831150, -0.546522,
		0.994452, -0.098683, -0.036416,
		33.609253, 33.964191, 43.214870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180988, 33.261082, 43.201164>,  <32.913136, 34.033272, 43.240364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180988, 33.261082, 43.201164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.452175, 33.496681, 43.377090>,  <33.614887, 33.638042, 43.482647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.452175, 33.496681, 43.377090>,  <33.180988, 33.261082, 43.201164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452175, 33.496681, 43.377090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035011, -0.623505, 0.781035,
		0.734255, -0.514121, -0.443339,
		0.677970, 0.589001, 0.439811,
		33.655567, 33.673382, 43.509033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689575, 32.718052, 43.430305>,  <33.180988, 33.261082, 43.201164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689575, 32.718052, 43.430305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.759388, 33.061924, 43.622345>,  <33.801277, 33.268246, 43.737568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.759388, 33.061924, 43.622345>,  <33.689575, 32.718052, 43.430305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759388, 33.061924, 43.622345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100148, -0.500549, 0.859896,
		0.979545, -0.102002, -0.173458,
		0.174535, 0.859678, 0.480095,
		33.811749, 33.319828, 43.766373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382706, 32.675800, 43.758034>,  <33.689575, 32.718052, 43.430305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382706, 32.675800, 43.758034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.192387, 32.965496, 43.957672>,  <34.078194, 33.139313, 44.077454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.192387, 32.965496, 43.957672>,  <34.382706, 32.675800, 43.758034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192387, 32.965496, 43.957672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284977, -0.409892, 0.866474,
		0.832109, 0.554496, -0.011366,
		-0.475797, 0.724240, 0.499093,
		34.049648, 33.182770, 44.107399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830322, 32.789097, 44.302502>,  <34.382706, 32.675800, 43.758034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830322, 32.789097, 44.302502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.490551, 32.961300, 44.424572>,  <34.286690, 33.064621, 44.497814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.490551, 32.961300, 44.424572>,  <34.830322, 32.789097, 44.302502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490551, 32.961300, 44.424572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159596, -0.341655, 0.926176,
		0.502992, 0.835425, 0.221504,
		-0.849428, 0.430508, 0.305180,
		34.235722, 33.090454, 44.516125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004570, 33.304623, 44.890343>,  <34.830322, 32.789097, 44.302502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004570, 33.304623, 44.890343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.625671, 33.176872, 44.901119>,  <34.398335, 33.100224, 44.907585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.625671, 33.176872, 44.901119>,  <35.004570, 33.304623, 44.890343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625671, 33.176872, 44.901119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145913, -0.354862, 0.923462,
		-0.285371, 0.878676, 0.382742,
		-0.947245, -0.319376, 0.026943,
		34.341499, 33.081059, 44.909203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.307716, 33.908295, 45.143627>,  <35.004570, 33.304623, 44.890343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.307716, 33.908295, 45.143627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.610935, 34.074543, 45.344673>,  <35.792866, 34.174290, 45.465302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.610935, 34.074543, 45.344673>,  <35.307716, 33.908295, 45.143627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610935, 34.074543, 45.344673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058794, 0.723964, -0.687327,
		-0.649539, 0.550580, 0.524366,
		0.758052, 0.415617, 0.502614,
		35.838352, 34.199226, 45.495457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.136871, 34.650131, 45.193008>,  <35.307716, 33.908295, 45.143627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.136871, 34.650131, 45.193008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.531410, 34.585655, 45.206516>,  <35.768131, 34.546970, 45.214622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.531410, 34.585655, 45.206516>,  <35.136871, 34.650131, 45.193008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531410, 34.585655, 45.206516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148434, 0.781224, -0.606347,
		0.071355, 0.603081, 0.794482,
		0.986345, -0.161194, 0.033773,
		35.827312, 34.537296, 45.216648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391705, 35.291950, 45.291149>,  <35.136871, 34.650131, 45.193008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391705, 35.291950, 45.291149> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.701584, 35.093147, 45.134777>,  <35.887512, 34.973866, 45.040955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.701584, 35.093147, 45.134777>,  <35.391705, 35.291950, 45.291149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701584, 35.093147, 45.134777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032019, 0.648274, -0.760733,
		0.631521, 0.576821, 0.518130,
		0.774697, -0.497009, -0.390929,
		35.933994, 34.944046, 45.017498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803829, 35.905914, 44.988670>,  <35.391705, 35.291950, 45.291149>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803829, 35.905914, 44.988670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.932262, 35.571640, 44.810440>,  <36.009323, 35.371075, 44.703503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.932262, 35.571640, 44.810440>,  <35.803829, 35.905914, 44.988670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932262, 35.571640, 44.810440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245027, 0.527771, -0.813277,
		0.914805, 0.151951, 0.374223,
		0.321082, -0.835684, -0.445576,
		36.028587, 35.320934, 44.676769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300034, 36.115154, 44.548000>,  <35.803829, 35.905914, 44.988670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300034, 36.115154, 44.548000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.276508, 35.742474, 44.404633>,  <36.262394, 35.518864, 44.318611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.276508, 35.742474, 44.404633>,  <36.300034, 36.115154, 44.548000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276508, 35.742474, 44.404633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049938, 0.361342, -0.931095,
		0.997019, -0.036861, -0.067779,
		-0.058813, -0.931705, -0.358424,
		36.258865, 35.462963, 44.297104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925404, 35.946163, 44.096725>,  <36.300034, 36.115154, 44.548000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925404, 35.946163, 44.096725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.588879, 35.750961, 44.003735>,  <36.386963, 35.633842, 43.947941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.588879, 35.750961, 44.003735>,  <36.925404, 35.946163, 44.096725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588879, 35.750961, 44.003735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121456, 0.248421, -0.961008,
		0.526727, -0.836744, -0.149729,
		-0.841313, -0.488003, -0.232477,
		36.336483, 35.604561, 43.933990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166622, 35.498791, 43.655613>,  <36.925404, 35.946163, 44.096725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166622, 35.498791, 43.655613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.775089, 35.530846, 43.580292>,  <36.540169, 35.550079, 43.535099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.775089, 35.530846, 43.580292>,  <37.166622, 35.498791, 43.655613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775089, 35.530846, 43.580292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200918, 0.201444, -0.958672,
		-0.038889, -0.976217, -0.213280,
		-0.978836, 0.080133, -0.188306,
		36.481438, 35.554886, 43.523800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021530, 35.045361, 43.052166>,  <37.166622, 35.498791, 43.655613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021530, 35.045361, 43.052166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.711395, 35.296059, 43.083248>,  <36.525314, 35.446476, 43.101898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.711395, 35.296059, 43.083248>,  <37.021530, 35.045361, 43.052166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711395, 35.296059, 43.083248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042005, 0.071586, -0.996549,
		-0.630145, -0.775929, -0.029177,
		-0.775340, 0.626745, 0.077702,
		36.478794, 35.484081, 43.106560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539558, 34.866398, 42.490082>,  <37.021530, 35.045361, 43.052166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539558, 34.866398, 42.490082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.422188, 35.238659, 42.577530>,  <36.351765, 35.462013, 42.629997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.422188, 35.238659, 42.577530>,  <36.539558, 34.866398, 42.490082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422188, 35.238659, 42.577530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050905, 0.213149, -0.975693,
		-0.954626, -0.297420, -0.015168,
		-0.293423, 0.930650, 0.218618,
		36.334160, 35.517853, 42.643116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847271, 35.098465, 42.077057>,  <36.539558, 34.866398, 42.490082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847271, 35.098465, 42.077057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.088871, 35.400986, 42.177612>,  <36.233829, 35.582497, 42.237946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.088871, 35.400986, 42.177612>,  <35.847271, 35.098465, 42.077057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088871, 35.400986, 42.177612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068829, 0.264749, -0.961858,
		-0.794010, 0.598261, 0.107852,
		0.603996, 0.756301, 0.251391,
		36.270069, 35.627876, 42.253029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655289, 35.727840, 41.561638>,  <35.847271, 35.098465, 42.077057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655289, 35.727840, 41.561638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.993301, 35.865086, 41.725685>,  <36.196110, 35.947433, 41.824112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.993301, 35.865086, 41.725685>,  <35.655289, 35.727840, 41.561638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993301, 35.865086, 41.725685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238686, 0.444287, -0.863503,
		-0.478485, 0.827578, 0.293542,
		0.845033, 0.343108, 0.410116,
		36.246811, 35.968018, 41.848721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733143, 36.399109, 41.334549>,  <35.655289, 35.727840, 41.561638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733143, 36.399109, 41.334549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.102123, 36.296158, 41.449677>,  <36.323513, 36.234386, 41.518753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.102123, 36.296158, 41.449677>,  <35.733143, 36.399109, 41.334549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.102123, 36.296158, 41.449677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374396, 0.413963, -0.829736,
		0.094408, 0.873150, 0.478222,
		0.922450, -0.257378, 0.287823,
		36.378857, 36.218945, 41.536022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230576, 37.006790, 41.150074>,  <35.733143, 36.399109, 41.334549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230576, 37.006790, 41.150074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.447697, 36.673828, 41.194729>,  <36.577969, 36.474052, 41.221523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.447697, 36.673828, 41.194729>,  <36.230576, 37.006790, 41.150074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447697, 36.673828, 41.194729> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557754, 0.257899, -0.788923,
		0.627911, 0.490500, 0.604266,
		0.542806, -0.832405, 0.111641,
		36.610538, 36.424107, 41.228222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862782, 37.206764, 40.887547>,  <36.230576, 37.006790, 41.150074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862782, 37.206764, 40.887547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.866749, 36.807106, 40.903557>,  <36.869129, 36.567310, 40.913162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.866749, 36.807106, 40.903557>,  <36.862782, 37.206764, 40.887547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866749, 36.807106, 40.903557> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318961, -0.034774, -0.947129,
		0.947716, 0.022165, 0.318345,
		0.009923, -0.999149, 0.040026,
		36.869724, 36.507362, 40.915565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.382671, 43.259850, 35.697868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.045778, 43.316097, 35.489685>,  <28.843643, 43.349846, 35.364777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.045778, 43.316097, 35.489685>,  <29.382671, 43.259850, 35.697868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045778, 43.316097, 35.489685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332550, -0.895350, 0.296241,
		-0.424331, 0.422581, 0.800855,
		-0.842231, 0.140620, -0.520454,
		28.793108, 43.358284, 35.333549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.796371, 42.941196, 36.149891>,  <29.382671, 43.259850, 35.697868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.796371, 42.941196, 36.149891> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.642870, 42.974155, 35.781990>,  <28.550770, 42.993931, 35.561249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.642870, 42.974155, 35.781990>,  <28.796371, 42.941196, 36.149891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.642870, 42.974155, 35.781990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456053, -0.882981, 0.111179,
		-0.802962, 0.462121, 0.376424,
		-0.383753, 0.082397, -0.919752,
		28.527744, 42.998875, 35.506065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089148, 42.933224, 36.205650>,  <28.796371, 42.941196, 36.149891>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089148, 42.933224, 36.205650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.154396, 42.808887, 35.831108>,  <28.193544, 42.734283, 35.606380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.154396, 42.808887, 35.831108>,  <28.089148, 42.933224, 36.205650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154396, 42.808887, 35.831108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401615, -0.887800, 0.224758,
		-0.901164, 0.339393, -0.269659,
		0.163122, -0.310843, -0.936359,
		28.203333, 42.715633, 35.550201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.439312, 42.752190, 35.858490>,  <28.089148, 42.933224, 36.205650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.439312, 42.752190, 35.858490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.733624, 42.554012, 35.673813>,  <27.910210, 42.435104, 35.563007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.733624, 42.554012, 35.673813>,  <27.439312, 42.752190, 35.858490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.733624, 42.554012, 35.673813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468597, -0.864654, 0.181080,
		-0.488922, 0.083115, -0.868359,
		0.735779, -0.495444, -0.461696,
		27.954357, 42.405380, 35.535305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.123041, 42.205856, 35.525505>,  <27.439312, 42.752190, 35.858490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.123041, 42.205856, 35.525505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.504873, 42.086697, 35.527664>,  <27.733973, 42.015202, 35.528957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.504873, 42.086697, 35.527664>,  <27.123041, 42.205856, 35.525505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.504873, 42.086697, 35.527664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293321, -0.936418, 0.192574,
		-0.052317, -0.185410, -0.981268,
		0.954581, -0.297901, 0.005394,
		27.791248, 41.997326, 35.529282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.090757, 41.721840, 35.129101>,  <27.123041, 42.205856, 35.525505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.090757, 41.721840, 35.129101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.417686, 41.646393, 35.346874>,  <27.613844, 41.601124, 35.477539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.417686, 41.646393, 35.346874>,  <27.090757, 41.721840, 35.129101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.417686, 41.646393, 35.346874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283895, -0.954072, 0.095658,
		0.501388, -0.232746, -0.833330,
		0.817321, -0.188616, 0.544435,
		27.662884, 41.589809, 35.510204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.422960, 41.032894, 34.864014>,  <27.090757, 41.721840, 35.129101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.422960, 41.032894, 34.864014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.580805, 41.091534, 35.226845>,  <27.675512, 41.126717, 35.444542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.580805, 41.091534, 35.226845>,  <27.422960, 41.032894, 34.864014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580805, 41.091534, 35.226845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184974, -0.954306, 0.234701,
		0.900037, -0.260402, -0.349463,
		0.394611, 0.146598, 0.907078,
		27.699188, 41.135513, 35.498970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.851152, 40.477161, 34.964733>,  <27.422960, 41.032894, 34.864014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.851152, 40.477161, 34.964733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.774717, 40.621399, 35.329910>,  <27.728857, 40.707943, 35.549015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.774717, 40.621399, 35.329910>,  <27.851152, 40.477161, 34.964733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.774717, 40.621399, 35.329910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136866, -0.930780, 0.338992,
		0.971984, -0.060173, 0.227213,
		-0.191087, 0.360592, 0.912939,
		27.717392, 40.729576, 35.603790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119223, 39.985874, 35.424194>,  <27.851152, 40.477161, 34.964733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119223, 39.985874, 35.424194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.873672, 40.197483, 35.658558>,  <27.726341, 40.324448, 35.799175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.873672, 40.197483, 35.658558>,  <28.119223, 39.985874, 35.424194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.873672, 40.197483, 35.658558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441099, -0.845412, 0.301182,
		0.654665, -0.073553, 0.752332,
		-0.613878, 0.529026, 0.585905,
		27.689508, 40.356190, 35.834328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133446, 39.612041, 36.024551>,  <28.119223, 39.985874, 35.424194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133446, 39.612041, 36.024551> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.793287, 39.822182, 36.036102>,  <27.589191, 39.948265, 36.043034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.793287, 39.822182, 36.036102>,  <28.133446, 39.612041, 36.024551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793287, 39.822182, 36.036102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474940, -0.790101, 0.387521,
		0.226400, 0.315831, 0.921408,
		-0.850397, 0.525349, 0.028878,
		27.538168, 39.979786, 36.044765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852400, 39.290035, 36.610798>,  <28.133446, 39.612041, 36.024551>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852400, 39.290035, 36.610798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.530529, 39.457851, 36.442757>,  <27.337406, 39.558540, 36.341934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.530529, 39.457851, 36.442757>,  <27.852400, 39.290035, 36.610798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.530529, 39.457851, 36.442757> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564420, -0.760073, 0.322054,
		-0.184192, 0.496261, 0.848409,
		-0.804676, 0.419539, -0.420099,
		27.289125, 39.583714, 36.316727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321346, 39.256439, 37.110023>,  <27.852400, 39.290035, 36.610798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321346, 39.256439, 37.110023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.123821, 39.293850, 36.764214>,  <27.005306, 39.316296, 36.556728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.123821, 39.293850, 36.764214>,  <27.321346, 39.256439, 37.110023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123821, 39.293850, 36.764214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554226, -0.799949, 0.230032,
		-0.670063, 0.592735, 0.446856,
		-0.493810, 0.093524, -0.864526,
		26.975677, 39.321907, 36.504856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.650967, 39.132996, 37.357548>,  <27.321346, 39.256439, 37.110023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.650967, 39.132996, 37.357548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.661383, 39.074268, 36.962021>,  <26.667631, 39.039032, 36.724705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.661383, 39.074268, 36.962021>,  <26.650967, 39.132996, 37.357548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.661383, 39.074268, 36.962021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536244, -0.836848, 0.110129,
		-0.843662, 0.527382, -0.100518,
		0.026038, -0.146814, -0.988821,
		26.669193, 39.030224, 36.665375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.965420, 38.855431, 37.166569>,  <26.650967, 39.132996, 37.357548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.965420, 38.855431, 37.166569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.176281, 38.750576, 36.843239>,  <26.302797, 38.687664, 36.649239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.176281, 38.750576, 36.843239>,  <25.965420, 38.855431, 37.166569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.176281, 38.750576, 36.843239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646994, -0.740505, -0.181802,
		-0.550915, 0.618821, -0.559958,
		0.527154, -0.262132, -0.808329,
		26.334427, 38.671936, 36.600739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.443052, 38.420441, 36.760273>,  <25.965420, 38.855431, 37.166569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.443052, 38.420441, 36.760273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.797386, 38.341240, 36.592419>,  <26.009987, 38.293720, 36.491707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.797386, 38.341240, 36.592419>,  <25.443052, 38.420441, 36.760273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797386, 38.341240, 36.592419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361542, -0.861397, -0.356768,
		-0.290830, 0.467752, -0.834642,
		0.885836, -0.197999, -0.419632,
		26.063137, 38.281841, 36.466530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.319681, 38.380898, 36.003460>,  <25.443052, 38.420441, 36.760273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.319681, 38.380898, 36.003460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.660988, 38.200954, 36.108955>,  <25.865772, 38.092987, 36.172253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.660988, 38.200954, 36.108955>,  <25.319681, 38.380898, 36.003460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.660988, 38.200954, 36.108955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307094, -0.842244, -0.443078,
		0.421460, 0.297070, -0.856809,
		0.853267, -0.449861, 0.263743,
		25.916967, 38.065998, 36.188080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531418, 38.147255, 35.413895>,  <25.319681, 38.380898, 36.003460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.531418, 38.147255, 35.413895> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.706831, 37.901920, 35.676651>,  <25.812078, 37.754719, 35.834305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.706831, 37.901920, 35.676651>,  <25.531418, 38.147255, 35.413895>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.706831, 37.901920, 35.676651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211089, -0.780769, -0.588082,
		0.873572, 0.119232, -0.471863,
		0.438534, -0.613337, 0.656890,
		25.838390, 37.717918, 35.873718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.046955, 37.655930, 35.049088>,  <25.531418, 38.147255, 35.413895>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.046955, 37.655930, 35.049088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.933132, 37.481781, 35.390724>,  <25.864838, 37.377293, 35.595707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.933132, 37.481781, 35.390724>,  <26.046955, 37.655930, 35.049088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.933132, 37.481781, 35.390724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230853, -0.833592, -0.501829,
		0.930448, -0.339971, 0.136701,
		-0.284560, -0.435368, 0.854096,
		25.847765, 37.351170, 35.646954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.137568, 36.905556, 34.936966>,  <26.046955, 37.655930, 35.049088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.137568, 36.905556, 34.936966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.931719, 36.875534, 35.278618>,  <25.808210, 36.857521, 35.483608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.931719, 36.875534, 35.278618>,  <26.137568, 36.905556, 34.936966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.931719, 36.875534, 35.278618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515408, -0.769014, -0.378118,
		0.685215, -0.634811, 0.357067,
		-0.514623, -0.075057, 0.854126,
		25.777332, 36.853016, 35.534855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.213406, 36.234123, 35.337421>,  <26.137568, 36.905556, 34.936966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.213406, 36.234123, 35.337421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.857231, 36.400265, 35.411835>,  <25.643526, 36.499950, 35.456482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.857231, 36.400265, 35.411835>,  <26.213406, 36.234123, 35.337421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.857231, 36.400265, 35.411835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453358, -0.845367, -0.282528,
		0.039918, -0.335912, 0.941047,
		-0.890434, 0.415353, 0.186034,
		25.590101, 36.524872, 35.467644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.796085, 35.759899, 35.768112>,  <26.213406, 36.234123, 35.337421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.796085, 35.759899, 35.768112> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.971167, 35.467197, 35.559135>,  <27.076216, 35.291576, 35.433750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.971167, 35.467197, 35.559135>,  <26.796085, 35.759899, 35.768112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.971167, 35.467197, 35.559135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793275, 0.587815, -0.158712,
		0.423239, -0.344973, 0.837772,
		0.437704, -0.731756, -0.522444,
		27.102478, 35.247669, 35.402401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.478477, 35.752392, 35.963135>,  <26.796085, 35.759899, 35.768112>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.478477, 35.752392, 35.963135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.481129, 35.559956, 35.612476>,  <27.482719, 35.444492, 35.402081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.481129, 35.559956, 35.612476>,  <27.478477, 35.752392, 35.963135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.481129, 35.559956, 35.612476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788600, 0.541561, -0.291241,
		0.614870, -0.689393, 0.382977,
		0.006626, -0.481091, -0.876645,
		27.483116, 35.415627, 35.349483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.134172, 35.509514, 35.811718>,  <27.478477, 35.752392, 35.963135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.134172, 35.509514, 35.811718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.985069, 35.515907, 35.440601>,  <27.895607, 35.519741, 35.217930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.985069, 35.515907, 35.440601>,  <28.134172, 35.509514, 35.811718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.985069, 35.515907, 35.440601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805135, 0.502639, -0.314821,
		0.461313, -0.864349, -0.200229,
		-0.372758, 0.015981, -0.927791,
		27.873241, 35.520702, 35.162266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673855, 35.456966, 35.451511>,  <28.134172, 35.509514, 35.811718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673855, 35.456966, 35.451511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.416756, 35.594273, 35.177563>,  <28.262497, 35.676655, 35.013195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.416756, 35.594273, 35.177563>,  <28.673855, 35.456966, 35.451511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.416756, 35.594273, 35.177563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758232, 0.412684, -0.504754,
		0.109372, -0.843719, -0.525525,
		-0.642746, 0.343264, -0.684871,
		28.223932, 35.697250, 34.972103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052780, 35.469028, 34.785103>,  <28.673855, 35.456966, 35.451511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052780, 35.469028, 34.785103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.737413, 35.706310, 34.719986>,  <28.548193, 35.848679, 34.680916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.737413, 35.706310, 34.719986>,  <29.052780, 35.469028, 34.785103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737413, 35.706310, 34.719986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584411, 0.639738, -0.499198,
		-0.191986, -0.488713, -0.851059,
		-0.788419, 0.593207, -0.162789,
		28.500887, 35.884274, 34.671150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.128201, 35.708664, 34.175827>,  <29.052780, 35.469028, 34.785103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.128201, 35.708664, 34.175827> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.878645, 35.986401, 34.319298>,  <28.728912, 36.153042, 34.405380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.878645, 35.986401, 34.319298>,  <29.128201, 35.708664, 34.175827>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878645, 35.986401, 34.319298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565735, 0.717892, -0.405678,
		-0.539172, -0.050181, -0.840700,
		-0.623889, 0.694343, 0.358678,
		28.691479, 36.194702, 34.426903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081408, 36.124199, 33.582066>,  <29.128201, 35.708664, 34.175827>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081408, 36.124199, 33.582066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.933537, 36.330326, 33.891331>,  <28.844814, 36.454002, 34.076889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.933537, 36.330326, 33.891331>,  <29.081408, 36.124199, 33.582066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.933537, 36.330326, 33.891331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482596, 0.817559, -0.314162,
		-0.794002, 0.256988, -0.550924,
		-0.369678, 0.515319, 0.773165,
		28.822634, 36.484921, 34.123280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153450, 36.796207, 33.328110>,  <29.081408, 36.124199, 33.582066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153450, 36.796207, 33.328110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.077944, 36.850376, 33.717167>,  <29.032640, 36.882877, 33.950600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.077944, 36.850376, 33.717167>,  <29.153450, 36.796207, 33.328110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077944, 36.850376, 33.717167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326513, 0.942751, -0.067894,
		-0.926152, 0.304763, -0.222177,
		-0.188766, 0.135424, 0.972640,
		29.021315, 36.891003, 34.008957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.754774, 37.355400, 33.449360>,  <29.153450, 36.796207, 33.328110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.754774, 37.355400, 33.449360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.920624, 37.314148, 33.811012>,  <29.020134, 37.289394, 34.028004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.920624, 37.314148, 33.811012>,  <28.754774, 37.355400, 33.449360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.920624, 37.314148, 33.811012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305771, 0.951578, -0.031678,
		-0.857083, 0.289591, 0.426081,
		0.414623, -0.103133, 0.904130,
		29.045012, 37.283207, 34.082253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.596018, 37.990704, 33.773506>,  <28.754774, 37.355400, 33.449360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.596018, 37.990704, 33.773506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.903700, 37.825680, 33.968693>,  <29.088308, 37.726665, 34.085804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.903700, 37.825680, 33.968693>,  <28.596018, 37.990704, 33.773506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903700, 37.825680, 33.968693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372740, 0.909958, 0.181775,
		-0.519026, 0.042064, 0.853723,
		0.769206, -0.412562, 0.487970,
		29.134462, 37.701912, 34.115086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644485, 38.302876, 34.360123>,  <28.596018, 37.990704, 33.773506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644485, 38.302876, 34.360123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.015034, 38.155033, 34.331203>,  <29.237364, 38.066330, 34.313854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.015034, 38.155033, 34.331203>,  <28.644485, 38.302876, 34.360123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015034, 38.155033, 34.331203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369099, 0.852881, 0.369270,
		-0.074826, -0.368765, 0.926506,
		0.926373, -0.369603, -0.072294,
		29.292946, 38.044151, 34.309517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888802, 38.394341, 34.993172>,  <28.644485, 38.302876, 34.360123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888802, 38.394341, 34.993172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.191406, 38.379173, 34.732018>,  <29.372969, 38.370075, 34.575325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.191406, 38.379173, 34.732018>,  <28.888802, 38.394341, 34.993172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191406, 38.379173, 34.732018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370571, 0.847432, 0.380179,
		0.538858, -0.529549, 0.655141,
		0.756511, -0.037914, -0.652881,
		29.418360, 38.367798, 34.536152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481468, 38.568459, 35.386688>,  <28.888802, 38.394341, 34.993172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481468, 38.568459, 35.386688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.566484, 38.643337, 35.003067>,  <29.617495, 38.688263, 34.772896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.566484, 38.643337, 35.003067>,  <29.481468, 38.568459, 35.386688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566484, 38.643337, 35.003067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643626, 0.711673, 0.281545,
		0.735236, -0.677112, 0.030779,
		0.212542, 0.187192, -0.959054,
		29.630247, 38.699493, 34.715351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113798, 38.828007, 35.536026>,  <29.481468, 38.568459, 35.386688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113798, 38.828007, 35.536026> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.020359, 38.908344, 35.155479>,  <29.964296, 38.956547, 34.927151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.020359, 38.908344, 35.155479>,  <30.113798, 38.828007, 35.536026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020359, 38.908344, 35.155479> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384488, 0.917769, 0.099347,
		0.893085, -0.342580, -0.291612,
		-0.233598, 0.200846, -0.951364,
		29.950279, 38.968597, 34.870071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726866, 39.131027, 35.257927>,  <30.113798, 38.828007, 35.536026>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726866, 39.131027, 35.257927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.436785, 39.247452, 35.008331>,  <30.262735, 39.317307, 34.858574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.436785, 39.247452, 35.008331>,  <30.726866, 39.131027, 35.257927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436785, 39.247452, 35.008331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458232, 0.880437, -0.121877,
		0.513911, -0.374318, -0.771869,
		-0.725203, 0.291061, -0.623990,
		30.219223, 39.334770, 34.821133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077915, 39.520527, 34.776848>,  <30.726866, 39.131027, 35.257927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.077915, 39.520527, 34.776848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.697849, 39.640968, 34.744541>,  <30.469809, 39.713234, 34.725155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.697849, 39.640968, 34.744541>,  <31.077915, 39.520527, 34.776848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697849, 39.640968, 34.744541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307188, 0.948444, -0.078035,
		0.053111, -0.098959, -0.993673,
		-0.950166, 0.301100, -0.080771,
		30.412800, 39.731297, 34.720310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.005348, 39.951340, 34.159580>,  <31.077915, 39.520527, 34.776848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.005348, 39.951340, 34.159580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.682344, 40.059105, 34.369476>,  <30.488543, 40.123764, 34.495415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.682344, 40.059105, 34.369476>,  <31.005348, 39.951340, 34.159580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682344, 40.059105, 34.369476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123731, 0.947174, -0.295893,
		-0.576732, -0.174010, -0.798186,
		-0.807509, 0.269411, 0.524735,
		30.440092, 40.139927, 34.526897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732519, 40.427437, 33.777523>,  <31.005348, 39.951340, 34.159580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732519, 40.427437, 33.777523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.567198, 40.479507, 34.138020>,  <30.468004, 40.510750, 34.354317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.567198, 40.479507, 34.138020>,  <30.732519, 40.427437, 33.777523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567198, 40.479507, 34.138020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060673, 0.991467, -0.115382,
		-0.908569, 0.006993, -0.417676,
		-0.413304, 0.130174, 0.901240,
		30.443207, 40.518559, 34.408390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311100, 41.030376, 33.687054>,  <30.732519, 40.427437, 33.777523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311100, 41.030376, 33.687054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.319153, 41.019611, 34.086826>,  <30.323984, 41.013153, 34.326691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.319153, 41.019611, 34.086826>,  <30.311100, 41.030376, 33.687054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319153, 41.019611, 34.086826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003669, 0.999629, 0.026987,
		-0.999791, -0.004211, 0.020025,
		0.020131, -0.026908, 0.999435,
		30.325191, 41.011539, 34.386658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796478, 41.498066, 33.953491>,  <30.311100, 41.030376, 33.687054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796478, 41.498066, 33.953491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.069096, 41.452900, 34.242695>,  <30.232666, 41.425800, 34.416218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.069096, 41.452900, 34.242695>,  <29.796478, 41.498066, 33.953491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069096, 41.452900, 34.242695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105508, 0.992863, 0.055600,
		-0.724131, 0.038390, 0.688593,
		0.681544, -0.112913, 0.723013,
		30.273560, 41.419025, 34.459599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.555574, 41.873230, 34.542641>,  <29.796478, 41.498066, 33.953491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.555574, 41.873230, 34.542641> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.947372, 41.843964, 34.617722>,  <30.182451, 41.826405, 34.662769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.947372, 41.843964, 34.617722>,  <29.555574, 41.873230, 34.542641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947372, 41.843964, 34.617722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062011, 0.995981, 0.064632,
		-0.191681, -0.051667, 0.980096,
		0.979496, -0.073165, 0.187707,
		30.241220, 41.822014, 34.674034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717087, 42.250504, 35.179543>,  <29.555574, 41.873230, 34.542641>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717087, 42.250504, 35.179543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.059204, 42.231647, 34.973145>,  <30.264475, 42.220333, 34.849308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.059204, 42.231647, 34.973145>,  <29.717087, 42.250504, 35.179543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.059204, 42.231647, 34.973145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151242, 0.975199, 0.161596,
		0.495577, -0.216252, 0.841212,
		0.855295, -0.047143, -0.515993,
		30.315792, 42.217503, 34.818348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.738251, 31.349197, 44.338188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.412201, 31.117662, 44.329121>,  <39.216572, 30.978741, 44.323681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.412201, 31.117662, 44.329121>,  <39.738251, 31.349197, 44.338188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412201, 31.117662, 44.329121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015135, -0.060398, 0.998060,
		-0.579083, 0.813203, 0.057993,
		-0.815128, -0.578837, -0.022667,
		39.167664, 30.944012, 44.322319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.246227, 31.610178, 44.840137>,  <39.738251, 31.349197, 44.338188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.246227, 31.610178, 44.840137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.139275, 31.226566, 44.802677>,  <39.075104, 30.996399, 44.780201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.139275, 31.226566, 44.802677>,  <39.246227, 31.610178, 44.840137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.139275, 31.226566, 44.802677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050236, -0.110928, 0.992558,
		-0.962281, 0.260684, 0.077837,
		-0.267379, -0.959030, -0.093648,
		39.059059, 30.938858, 44.774582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747658, 31.508665, 45.380524>,  <39.246227, 31.610178, 44.840137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747658, 31.508665, 45.380524> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.903004, 31.157686, 45.267914>,  <38.996212, 30.947098, 45.200348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.903004, 31.157686, 45.267914>,  <38.747658, 31.508665, 45.380524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903004, 31.157686, 45.267914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069568, -0.276714, 0.958431,
		-0.918874, -0.391809, -0.046425,
		0.388368, -0.877448, -0.281522,
		39.019516, 30.894451, 45.183456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465641, 31.108992, 45.939098>,  <38.747658, 31.508665, 45.380524>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.465641, 31.108992, 45.939098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.732212, 30.887886, 45.738968>,  <38.892155, 30.755222, 45.618889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.732212, 30.887886, 45.738968>,  <38.465641, 31.108992, 45.939098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732212, 30.887886, 45.738968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139946, -0.566396, 0.812164,
		-0.732315, -0.611270, -0.300107,
		0.666431, -0.552761, -0.500325,
		38.932140, 30.722057, 45.588871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231117, 30.476631, 46.121307>,  <38.465641, 31.108992, 45.939098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231117, 30.476631, 46.121307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.613117, 30.465904, 46.003151>,  <38.842316, 30.459469, 45.932255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.613117, 30.465904, 46.003151>,  <38.231117, 30.476631, 46.121307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613117, 30.465904, 46.003151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238656, -0.521900, 0.818940,
		-0.176127, -0.852585, -0.492015,
		0.954999, -0.026815, -0.295395,
		38.899616, 30.457859, 45.914532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398693, 29.786213, 46.231686>,  <38.231117, 30.476631, 46.121307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398693, 29.786213, 46.231686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.738827, 29.996443, 46.221100>,  <38.942909, 30.122581, 46.214748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.738827, 29.996443, 46.221100>,  <38.398693, 29.786213, 46.231686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738827, 29.996443, 46.221100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316007, -0.469766, 0.824293,
		0.420795, -0.709290, -0.565544,
		0.850336, 0.525574, -0.026465,
		38.993927, 30.154116, 46.213161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931412, 29.250252, 46.332359>,  <38.398693, 29.786213, 46.231686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931412, 29.250252, 46.332359> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.095795, 29.603231, 46.423920>,  <39.194424, 29.815020, 46.478855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.095795, 29.603231, 46.423920>,  <38.931412, 29.250252, 46.332359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095795, 29.603231, 46.423920> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149691, -0.312993, 0.937885,
		0.899282, -0.351165, -0.260721,
		0.410956, 0.882450, 0.228903,
		39.219082, 29.867966, 46.492592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439590, 29.058302, 46.833897>,  <38.931412, 29.250252, 46.332359>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439590, 29.058302, 46.833897> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.377861, 29.446585, 46.907562>,  <39.340824, 29.679554, 46.951759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.377861, 29.446585, 46.907562>,  <39.439590, 29.058302, 46.833897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377861, 29.446585, 46.907562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087410, -0.172250, 0.981167,
		0.984147, 0.167512, -0.058267,
		-0.154321, 0.970706, 0.184161,
		39.331566, 29.737797, 46.962811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855911, 29.237457, 47.368557>,  <39.439590, 29.058302, 46.833897>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855911, 29.237457, 47.368557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.607204, 29.550390, 47.383320>,  <39.457981, 29.738150, 47.392178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.607204, 29.550390, 47.383320>,  <39.855911, 29.237457, 47.368557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607204, 29.550390, 47.383320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020321, -0.030991, 0.999313,
		0.782940, 0.622088, 0.003371,
		-0.621765, 0.782333, 0.036905,
		39.420673, 29.785089, 47.394390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140907, 29.702839, 47.881413>,  <39.855911, 29.237457, 47.368557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140907, 29.702839, 47.881413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.750690, 29.776518, 47.833424>,  <39.516560, 29.820724, 47.804630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.750690, 29.776518, 47.833424>,  <40.140907, 29.702839, 47.881413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.750690, 29.776518, 47.833424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120338, 0.009242, 0.992690,
		0.183958, 0.982846, 0.013150,
		-0.975540, 0.184195, -0.119974,
		39.458027, 29.831776, 47.797432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970959, 30.214079, 48.283001>,  <40.140907, 29.702839, 47.881413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970959, 30.214079, 48.283001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.606358, 30.060293, 48.224545>,  <39.387596, 29.968021, 48.189472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.606358, 30.060293, 48.224545>,  <39.970959, 30.214079, 48.283001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606358, 30.060293, 48.224545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210096, 0.129768, 0.969030,
		-0.353594, 0.913973, -0.199058,
		-0.911499, -0.384465, -0.146137,
		39.332909, 29.944954, 48.180702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397850, 30.701910, 48.508709>,  <39.970959, 30.214079, 48.283001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397850, 30.701910, 48.508709> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.216797, 30.346094, 48.533493>,  <39.108166, 30.132605, 48.548363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.216797, 30.346094, 48.533493>,  <39.397850, 30.701910, 48.508709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216797, 30.346094, 48.533493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217891, 0.177713, 0.959657,
		-0.864666, 0.420872, -0.274262,
		-0.452632, -0.889542, 0.061959,
		39.081009, 30.079231, 48.552082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705704, 30.634588, 48.565701>,  <39.397850, 30.701910, 48.508709>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705704, 30.634588, 48.565701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.882839, 30.342680, 48.774059>,  <38.989120, 30.167534, 48.899075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.882839, 30.342680, 48.774059>,  <38.705704, 30.634588, 48.565701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882839, 30.342680, 48.774059> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226694, 0.470955, 0.852532,
		-0.867472, -0.495614, 0.043120,
		0.442834, -0.729773, 0.520893,
		39.015690, 30.123749, 48.930328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317928, 30.497562, 49.272766>,  <38.705704, 30.634588, 48.565701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317928, 30.497562, 49.272766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.702183, 30.386793, 49.281723>,  <38.932735, 30.320332, 49.287098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.702183, 30.386793, 49.281723>,  <38.317928, 30.497562, 49.272766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702183, 30.386793, 49.281723> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138594, 0.547520, 0.825236,
		-0.240788, -0.789643, 0.564344,
		0.960632, -0.276921, 0.022396,
		38.990372, 30.303717, 49.288441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412609, 31.238424, 49.174942>,  <38.317928, 30.497562, 49.272766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412609, 31.238424, 49.174942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.172363, 31.307871, 49.487125>,  <38.028214, 31.349539, 49.674435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.172363, 31.307871, 49.487125>,  <38.412609, 31.238424, 49.174942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172363, 31.307871, 49.487125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592085, 0.559400, -0.580092,
		-0.537303, -0.810511, -0.233189,
		-0.600618, 0.173618, 0.780459,
		37.992180, 31.359957, 49.721264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744259, 31.038017, 48.873001>,  <38.412609, 31.238424, 49.174942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744259, 31.038017, 48.873001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.676319, 31.263763, 49.196144>,  <37.635555, 31.399212, 49.390030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.676319, 31.263763, 49.196144>,  <37.744259, 31.038017, 48.873001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676319, 31.263763, 49.196144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662198, 0.541750, -0.517688,
		-0.729825, -0.622894, 0.281706,
		-0.169851, 0.564367, 0.807862,
		37.625362, 31.433073, 49.438503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983509, 31.082407, 48.901318>,  <37.744259, 31.038017, 48.873001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983509, 31.082407, 48.901318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.173904, 31.365644, 49.109947>,  <37.288143, 31.535587, 49.235126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.173904, 31.365644, 49.109947>,  <36.983509, 31.082407, 48.901318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173904, 31.365644, 49.109947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500748, 0.705757, -0.501157,
		-0.722970, -0.022631, 0.690509,
		0.475990, 0.708092, 0.521573,
		37.316700, 31.578072, 49.266418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494331, 31.624180, 48.969681>,  <36.983509, 31.082407, 48.901318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494331, 31.624180, 48.969681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.836349, 31.808695, 49.064426>,  <37.041561, 31.919403, 49.121273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.836349, 31.808695, 49.064426>,  <36.494331, 31.624180, 48.969681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836349, 31.808695, 49.064426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281652, 0.796672, -0.534777,
		-0.435389, 0.390548, 0.811116,
		0.855049, 0.461288, 0.236864,
		37.092865, 31.947081, 49.135487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180393, 32.210213, 49.094002>,  <36.494331, 31.624180, 48.969681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180393, 32.210213, 49.094002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.564571, 32.271126, 49.000740>,  <36.795078, 32.307674, 48.944782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.564571, 32.271126, 49.000740>,  <36.180393, 32.210213, 49.094002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564571, 32.271126, 49.000740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268919, 0.724677, -0.634449,
		0.072341, 0.672050, 0.736964,
		0.960442, 0.152287, -0.233151,
		36.852703, 32.316811, 48.930794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207462, 32.870647, 48.952530>,  <36.180393, 32.210213, 49.094002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207462, 32.870647, 48.952530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.540630, 32.738701, 48.774799>,  <36.740532, 32.659531, 48.668159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.540630, 32.738701, 48.774799>,  <36.207462, 32.870647, 48.952530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540630, 32.738701, 48.774799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154585, 0.632268, -0.759171,
		0.531364, 0.701016, 0.475635,
		0.832920, -0.329870, -0.444331,
		36.790504, 32.639740, 48.641499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554966, 33.521461, 48.713909>,  <36.207462, 32.870647, 48.952530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554966, 33.521461, 48.713909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.672325, 33.199089, 48.508232>,  <36.742741, 33.005665, 48.384827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.672325, 33.199089, 48.508232>,  <36.554966, 33.521461, 48.713909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672325, 33.199089, 48.508232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104336, 0.561648, -0.820771,
		0.950280, 0.187164, 0.248874,
		0.293398, -0.805929, -0.514194,
		36.760345, 32.957310, 48.353973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192116, 33.707752, 48.347488>,  <36.554966, 33.521461, 48.713909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192116, 33.707752, 48.347488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.041527, 33.389458, 48.157722>,  <36.951172, 33.198483, 48.043861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.041527, 33.389458, 48.157722>,  <37.192116, 33.707752, 48.347488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041527, 33.389458, 48.157722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047070, 0.495002, -0.867615,
		0.925230, -0.348967, -0.148901,
		-0.376475, -0.795735, -0.474417,
		36.928585, 33.150738, 48.015396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320889, 33.812851, 47.664234>,  <37.192116, 33.707752, 48.347488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320889, 33.812851, 47.664234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.141880, 33.461067, 47.599388>,  <37.034473, 33.249996, 47.560482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.141880, 33.461067, 47.599388>,  <37.320889, 33.812851, 47.664234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141880, 33.461067, 47.599388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113959, 0.235884, -0.965076,
		0.886981, -0.413421, -0.205785,
		-0.447524, -0.879455, -0.162111,
		37.007622, 33.197231, 47.550755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551750, 33.431870, 46.972118>,  <37.320889, 33.812851, 47.664234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551750, 33.431870, 46.972118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.169998, 33.357178, 47.065327>,  <36.940948, 33.312363, 47.121250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.169998, 33.357178, 47.065327>,  <37.551750, 33.431870, 46.972118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169998, 33.357178, 47.065327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288070, 0.370250, -0.883136,
		0.078632, -0.909970, -0.407149,
		-0.954375, -0.186730, 0.233022,
		36.883686, 33.301159, 47.135235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189556, 33.341660, 46.314392>,  <37.551750, 33.431870, 46.972118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189556, 33.341660, 46.314392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.863873, 33.393291, 46.540810>,  <36.668465, 33.424271, 46.676659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.863873, 33.393291, 46.540810>,  <37.189556, 33.341660, 46.314392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863873, 33.393291, 46.540810> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498316, 0.344903, -0.795439,
		-0.297908, -0.929720, -0.216497,
		-0.814206, 0.129084, 0.566044,
		36.619610, 33.432018, 46.710625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692680, 32.897987, 46.029602>,  <37.189556, 33.341660, 46.314392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692680, 32.897987, 46.029602> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.517239, 33.198570, 46.226757>,  <36.411976, 33.378922, 46.345051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.517239, 33.198570, 46.226757>,  <36.692680, 32.897987, 46.029602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.517239, 33.198570, 46.226757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516844, 0.237750, -0.822403,
		-0.735188, -0.615451, 0.284111,
		-0.438601, 0.751462, 0.492883,
		36.385658, 33.424007, 46.374622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047455, 33.039597, 45.687943>,  <36.692680, 32.897987, 46.029602>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047455, 33.039597, 45.687943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.105938, 33.376598, 45.895329>,  <36.141029, 33.578800, 46.019760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.105938, 33.376598, 45.895329>,  <36.047455, 33.039597, 45.687943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105938, 33.376598, 45.895329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439743, 0.524820, -0.728828,
		-0.886143, -0.121431, 0.447219,
		0.146207, 0.842507, 0.518464,
		36.149799, 33.629349, 46.050869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430592, 33.386147, 45.734550>,  <36.047455, 33.039597, 45.687943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430592, 33.386147, 45.734550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.705364, 33.668545, 45.803482>,  <35.870228, 33.837982, 45.844841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.705364, 33.668545, 45.803482>,  <35.430592, 33.386147, 45.734550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705364, 33.668545, 45.803482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344206, 0.524921, -0.778448,
		-0.640038, 0.475424, 0.603592,
		0.686930, 0.705996, 0.172325,
		35.911442, 33.880344, 45.855179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780632, 33.432556, 45.592197>,  <35.430592, 33.386147, 45.734550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780632, 33.432556, 45.592197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.512840, 33.179184, 45.436985>,  <34.352165, 33.027161, 45.343857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.512840, 33.179184, 45.436985>,  <34.780632, 33.432556, 45.592197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512840, 33.179184, 45.436985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150131, -0.626957, 0.764451,
		-0.727505, 0.453526, 0.514830,
		-0.669475, -0.633434, -0.388026,
		34.311996, 32.989155, 45.320576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394283, 33.315708, 46.113285>,  <34.780632, 33.432556, 45.592197>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394283, 33.315708, 46.113285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324677, 32.991302, 45.889870>,  <34.282913, 32.796658, 45.755821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.324677, 32.991302, 45.889870>,  <34.394283, 33.315708, 46.113285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324677, 32.991302, 45.889870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207169, -0.584652, 0.784386,
		-0.962704, 0.020783, 0.269757,
		-0.174016, -0.811018, -0.558541,
		34.272472, 32.747997, 45.722309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993313, 32.850906, 46.622944>,  <34.394283, 33.315708, 46.113285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993313, 32.850906, 46.622944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.099411, 32.631989, 46.305424>,  <34.163071, 32.500637, 46.114914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.099411, 32.631989, 46.305424>,  <33.993313, 32.850906, 46.622944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099411, 32.631989, 46.305424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157467, -0.787642, 0.595671,
		-0.951236, -0.282996, -0.122737,
		0.265245, -0.547296, -0.793796,
		34.178986, 32.467800, 46.067284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532471, 32.261974, 46.610424>,  <33.993313, 32.850906, 46.622944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532471, 32.261974, 46.610424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.867622, 32.169868, 46.412457>,  <34.068714, 32.114605, 46.293678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.867622, 32.169868, 46.412457>,  <33.532471, 32.261974, 46.610424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867622, 32.169868, 46.412457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139686, -0.786035, 0.602193,
		-0.527682, -0.573697, -0.626438,
		0.837878, -0.230262, -0.494914,
		34.118984, 32.100788, 46.263981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494720, 31.574100, 46.645233>,  <33.532471, 32.261974, 46.610424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494720, 31.574100, 46.645233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.869316, 31.648766, 46.526470>,  <34.094074, 31.693565, 46.455212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.869316, 31.648766, 46.526470>,  <33.494720, 31.574100, 46.645233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.869316, 31.648766, 46.526470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332381, -0.742490, 0.581577,
		-0.111888, -0.643324, -0.757374,
		0.936485, 0.186665, -0.296905,
		34.150261, 31.704765, 46.437397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.795612, 30.991589, 46.340668>,  <33.494720, 31.574100, 46.645233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.795612, 30.991589, 46.340668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080414, 31.215662, 46.510017>,  <34.251297, 31.350105, 46.611626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.080414, 31.215662, 46.510017>,  <33.795612, 30.991589, 46.340668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080414, 31.215662, 46.510017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278385, -0.778735, 0.562204,
		0.644629, -0.282434, -0.710411,
		0.712008, 0.560181, 0.423370,
		34.294018, 31.383717, 46.637028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088284, 30.475252, 46.674206>,  <33.795612, 30.991589, 46.340668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088284, 30.475252, 46.674206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.290684, 30.769733, 46.853970>,  <34.412125, 30.946423, 46.961830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.290684, 30.769733, 46.853970>,  <34.088284, 30.475252, 46.674206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290684, 30.769733, 46.853970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241236, -0.621034, 0.745736,
		0.828113, -0.268926, -0.491840,
		0.505997, 0.736204, 0.449412,
		34.442482, 30.990595, 46.988792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351139, 29.734753, 46.655449>,  <34.088284, 30.475252, 46.674206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351139, 29.734753, 46.655449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.014496, 29.537951, 46.744549>,  <33.812508, 29.419868, 46.798008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.014496, 29.537951, 46.744549>,  <34.351139, 29.734753, 46.655449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014496, 29.537951, 46.744549> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332917, 0.147840, -0.931295,
		0.425270, -0.857948, -0.288221,
		-0.841613, -0.492005, 0.222753,
		33.762012, 29.390348, 46.811375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347893, 29.251160, 46.173340>,  <34.351139, 29.734753, 46.655449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347893, 29.251160, 46.173340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.955105, 29.258347, 46.248615>,  <33.719433, 29.262659, 46.293781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.955105, 29.258347, 46.248615>,  <34.347893, 29.251160, 46.173340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955105, 29.258347, 46.248615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171071, 0.339156, -0.925045,
		-0.080445, -0.940558, -0.329967,
		-0.981969, 0.017967, 0.188186,
		33.660515, 29.263737, 46.305073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.047932, 28.942228, 45.629250>,  <34.347893, 29.251160, 46.173340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.047932, 28.942228, 45.629250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.714481, 29.131674, 45.742916>,  <33.514412, 29.245340, 45.811115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.714481, 29.131674, 45.742916>,  <34.047932, 28.942228, 45.629250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714481, 29.131674, 45.742916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139857, 0.316722, -0.938151,
		-0.534324, -0.821813, -0.197790,
		-0.833629, 0.473614, 0.284169,
		33.464394, 29.273758, 45.828167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706783, 28.848703, 45.053379>,  <34.047932, 28.942228, 45.629250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706783, 28.848703, 45.053379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.485943, 29.134356, 45.225521>,  <33.353439, 29.305748, 45.328804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.485943, 29.134356, 45.225521>,  <33.706783, 28.848703, 45.053379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485943, 29.134356, 45.225521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297979, 0.313064, -0.901776,
		-0.778716, -0.626104, 0.039955,
		-0.552097, 0.714133, 0.430353,
		33.320312, 29.348595, 45.354626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999691, 28.779734, 44.847279>,  <33.706783, 28.848703, 45.053379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999691, 28.779734, 44.847279> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.057781, 29.159815, 44.957569>,  <33.092636, 29.387863, 45.023743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.057781, 29.159815, 44.957569>,  <32.999691, 28.779734, 44.847279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.057781, 29.159815, 44.957569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281111, 0.306826, -0.909304,
		-0.948623, 0.054547, 0.311672,
		0.145229, 0.950201, 0.275729,
		33.101349, 29.444876, 45.040287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674328, 29.101622, 44.326836>,  <32.999691, 28.779734, 44.847279>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674328, 29.101622, 44.326836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.843857, 29.423307, 44.493504>,  <32.945576, 29.616318, 44.593506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.843857, 29.423307, 44.493504>,  <32.674328, 29.101622, 44.326836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843857, 29.423307, 44.493504> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131907, 0.509932, -0.850041,
		-0.896089, 0.305304, 0.322201,
		0.423821, 0.804213, 0.416673,
		32.971004, 29.664572, 44.618504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231167, 29.655151, 44.147324>,  <32.674328, 29.101622, 44.326836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231167, 29.655151, 44.147324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.598660, 29.780674, 44.243206>,  <32.819157, 29.855988, 44.300735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.598660, 29.780674, 44.243206>,  <32.231167, 29.655151, 44.147324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598660, 29.780674, 44.243206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067011, 0.474328, -0.877794,
		-0.389155, 0.822520, 0.414752,
		0.918732, 0.313805, 0.239705,
		32.874279, 29.874815, 44.315117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.207401, 26.670218, 48.101402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.457115, 26.980961, 48.134277>,  <37.606945, 27.167408, 48.154003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.457115, 26.980961, 48.134277>,  <37.207401, 26.670218, 48.101402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457115, 26.980961, 48.134277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247043, 0.296137, -0.922644,
		-0.741105, 0.555690, 0.376792,
		0.624286, 0.776860, 0.082190,
		37.644402, 27.214020, 48.158936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808609, 27.235512, 47.837345>,  <37.207401, 26.670218, 48.101402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808609, 27.235512, 47.837345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.194714, 27.338503, 47.819592>,  <37.426376, 27.400297, 47.808941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.194714, 27.338503, 47.819592>,  <36.808609, 27.235512, 47.837345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194714, 27.338503, 47.819592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176611, 0.517805, -0.837070,
		-0.192544, 0.815833, 0.545292,
		0.965264, 0.257477, -0.044385,
		37.484291, 27.415747, 47.806274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845566, 27.977182, 47.640018>,  <36.808609, 27.235512, 47.837345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845566, 27.977182, 47.640018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.202190, 27.820807, 47.548561>,  <37.416164, 27.726980, 47.493687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.202190, 27.820807, 47.548561>,  <36.845566, 27.977182, 47.640018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202190, 27.820807, 47.548561> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060814, 0.396937, -0.915829,
		0.448791, 0.830425, 0.330121,
		0.891565, -0.390940, -0.228644,
		37.469662, 27.703524, 47.479969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244526, 28.460337, 47.319183>,  <36.845566, 27.977182, 47.640018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244526, 28.460337, 47.319183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.410904, 28.119587, 47.191872>,  <37.510731, 27.915138, 47.115482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.410904, 28.119587, 47.191872>,  <37.244526, 28.460337, 47.319183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410904, 28.119587, 47.191872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201558, 0.254931, -0.945719,
		0.886773, 0.457518, -0.065665,
		0.415943, -0.851873, -0.318282,
		37.535686, 27.864025, 47.096386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.703331, 28.714741, 46.810741>,  <37.244526, 28.460337, 47.319183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.703331, 28.714741, 46.810741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.622822, 28.331339, 46.729984>,  <37.574516, 28.101297, 46.681530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.622822, 28.331339, 46.729984>,  <37.703331, 28.714741, 46.810741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622822, 28.331339, 46.729984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329264, 0.260319, -0.907645,
		0.922536, -0.116212, -0.367997,
		-0.201275, -0.958504, -0.201889,
		37.562439, 28.043787, 46.669418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881596, 28.619701, 46.098831>,  <37.703331, 28.714741, 46.810741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881596, 28.619701, 46.098831> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.679043, 28.282507, 46.171436>,  <37.557510, 28.080191, 46.215000>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.679043, 28.282507, 46.171436>,  <37.881596, 28.619701, 46.098831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679043, 28.282507, 46.171436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237089, -0.066272, -0.969225,
		0.829074, -0.533835, -0.166305,
		-0.506384, -0.842988, 0.181510,
		37.527126, 28.029610, 46.225891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095299, 28.206194, 45.601044>,  <37.881596, 28.619701, 46.098831>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095299, 28.206194, 45.601044> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.746513, 28.068344, 45.740139>,  <37.537243, 27.985634, 45.823597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.746513, 28.068344, 45.740139>,  <38.095299, 28.206194, 45.601044>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746513, 28.068344, 45.740139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333585, -0.101651, -0.937224,
		0.358339, -0.933220, -0.026326,
		-0.871960, -0.344626, 0.347734,
		37.484924, 27.964956, 45.844460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949841, 27.653236, 45.218552>,  <38.095299, 28.206194, 45.601044>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949841, 27.653236, 45.218552> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.587730, 27.755276, 45.354439>,  <37.370464, 27.816500, 45.435970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.587730, 27.755276, 45.354439>,  <37.949841, 27.653236, 45.218552>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587730, 27.755276, 45.354439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361323, -0.041731, -0.931506,
		-0.223452, -0.966013, 0.129952,
		-0.905271, 0.255101, 0.339719,
		37.316151, 27.831806, 45.456356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449322, 27.233503, 44.943382>,  <37.949841, 27.653236, 45.218552>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449322, 27.233503, 44.943382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.223785, 27.547747, 45.045280>,  <37.088463, 27.736294, 45.106419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.223785, 27.547747, 45.045280>,  <37.449322, 27.233503, 44.943382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223785, 27.547747, 45.045280> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439275, -0.024075, -0.898030,
		-0.699369, -0.618253, 0.358674,
		-0.563845, 0.785610, 0.254746,
		37.054630, 27.783430, 45.121704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853977, 26.950052, 44.851154>,  <37.449322, 27.233503, 44.943382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853977, 26.950052, 44.851154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.839382, 27.349295, 44.831329>,  <36.830624, 27.588840, 44.819435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.839382, 27.349295, 44.831329>,  <36.853977, 26.950052, 44.851154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839382, 27.349295, 44.831329> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538841, -0.061418, -0.840166,
		-0.841617, -0.003948, 0.540060,
		-0.036486, 0.998104, -0.049563,
		36.828438, 27.648726, 44.816460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202446, 27.044243, 44.453575>,  <36.853977, 26.950052, 44.851154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202446, 27.044243, 44.453575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.374237, 27.404438, 44.426220>,  <36.477310, 27.620554, 44.409809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.374237, 27.404438, 44.426220>,  <36.202446, 27.044243, 44.453575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374237, 27.404438, 44.426220> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184358, 0.013293, -0.982769,
		-0.884061, 0.434682, 0.171721,
		0.429475, 0.900486, -0.068385,
		36.503078, 27.674583, 44.405704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756557, 27.529409, 43.981308>,  <36.202446, 27.044243, 44.453575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756557, 27.529409, 43.981308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.145477, 27.622902, 43.982555>,  <36.378830, 27.678997, 43.983303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.145477, 27.622902, 43.982555>,  <35.756557, 27.529409, 43.981308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145477, 27.622902, 43.982555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048670, -0.189359, -0.980701,
		-0.228629, 0.953684, -0.195489,
		0.972296, 0.233731, 0.003123,
		36.437164, 27.693022, 43.983494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172638, 27.763781, 43.740196>,  <35.756557, 27.529409, 43.981308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172638, 27.763781, 43.740196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.813610, 27.606039, 43.661346>,  <34.598194, 27.511395, 43.614037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.813610, 27.606039, 43.661346>,  <35.172638, 27.763781, 43.740196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813610, 27.606039, 43.661346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063478, -0.326859, 0.942939,
		-0.436284, 0.858864, 0.268345,
		-0.897567, -0.394355, -0.197122,
		34.544338, 27.487732, 43.602211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758900, 27.979015, 44.271389>,  <35.172638, 27.763781, 43.740196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758900, 27.979015, 44.271389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.564648, 27.674475, 44.099567>,  <34.448097, 27.491751, 43.996475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.564648, 27.674475, 44.099567>,  <34.758900, 27.979015, 44.271389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564648, 27.674475, 44.099567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107334, -0.435734, 0.893653,
		-0.867552, 0.480086, 0.129885,
		-0.485626, -0.761349, -0.429552,
		34.418961, 27.446070, 43.970703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161366, 27.910934, 44.582478>,  <34.758900, 27.979015, 44.271389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161366, 27.910934, 44.582478> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.282623, 27.558773, 44.436607>,  <34.355377, 27.347475, 44.349083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.282623, 27.558773, 44.436607>,  <34.161366, 27.910934, 44.582478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282623, 27.558773, 44.436607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136025, -0.418745, 0.897858,
		-0.943187, -0.222573, -0.246696,
		0.303142, -0.880405, -0.364679,
		34.373566, 27.294651, 44.327202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786129, 27.394232, 44.986206>,  <34.161366, 27.910934, 44.582478>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786129, 27.394232, 44.986206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.092445, 27.203125, 44.814022>,  <34.276237, 27.088461, 44.710712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.092445, 27.203125, 44.814022>,  <33.786129, 27.394232, 44.986206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.092445, 27.203125, 44.814022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013279, -0.657477, 0.753358,
		-0.642946, -0.582635, -0.497149,
		0.765797, -0.477767, -0.430458,
		34.322186, 27.059795, 44.684883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.516785, 26.705084, 44.794327>,  <33.786129, 27.394232, 44.986206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.516785, 26.705084, 44.794327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.911530, 26.710485, 44.858730>,  <34.148376, 26.713726, 44.897373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.911530, 26.710485, 44.858730>,  <33.516785, 26.705084, 44.794327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911530, 26.710485, 44.858730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132859, -0.499287, 0.856190,
		0.091951, -0.866331, -0.490933,
		0.986860, 0.013503, 0.161010,
		34.207588, 26.714537, 44.907032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.611305, 26.130178, 45.240341>,  <33.516785, 26.705084, 44.794327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.611305, 26.130178, 45.240341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.960827, 26.317490, 45.292774>,  <34.170540, 26.429876, 45.324234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.960827, 26.317490, 45.292774>,  <33.611305, 26.130178, 45.240341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960827, 26.317490, 45.292774> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029375, -0.218231, 0.975455,
		0.485391, -0.856206, -0.176935,
		0.873803, 0.468280, 0.131079,
		34.222969, 26.457973, 45.332096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974422, 25.716137, 45.608875>,  <33.611305, 26.130178, 45.240341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974422, 25.716137, 45.608875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.166012, 26.061422, 45.672676>,  <34.280968, 26.268595, 45.710957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.166012, 26.061422, 45.672676>,  <33.974422, 25.716137, 45.608875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166012, 26.061422, 45.672676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078641, -0.223165, 0.971603,
		0.874297, -0.452833, -0.174775,
		0.478978, 0.863215, 0.159502,
		34.309704, 26.320387, 45.720528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.517300, 25.440254, 46.011986>,  <33.974422, 25.716137, 45.608875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.517300, 25.440254, 46.011986> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.522499, 25.836340, 46.067574>,  <34.525620, 26.073992, 46.100925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.522499, 25.836340, 46.067574>,  <34.517300, 25.440254, 46.011986>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522499, 25.836340, 46.067574> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190774, -0.138880, 0.971760,
		0.981548, 0.013881, -0.190711,
		0.012997, 0.990212, 0.138965,
		34.526398, 26.133404, 46.109264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101902, 25.697363, 46.431904>,  <34.517300, 25.440254, 46.011986>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101902, 25.697363, 46.431904> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.818020, 25.976727, 46.468868>,  <34.647690, 26.144344, 46.491047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.818020, 25.976727, 46.468868>,  <35.101902, 25.697363, 46.431904>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818020, 25.976727, 46.468868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319970, 0.202694, 0.925492,
		0.627641, 0.686397, -0.367323,
		-0.709709, 0.698408, 0.092408,
		34.605106, 26.186249, 46.496590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529675, 26.268616, 46.726963>,  <35.101902, 25.697363, 46.431904>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529675, 26.268616, 46.726963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.145409, 26.325293, 46.822502>,  <34.914848, 26.359299, 46.879826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.145409, 26.325293, 46.822502>,  <35.529675, 26.268616, 46.726963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145409, 26.325293, 46.822502> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204906, -0.218874, 0.953996,
		0.187449, 0.965411, 0.181231,
		-0.960665, 0.141690, 0.238846,
		34.857208, 26.367800, 46.894157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532707, 26.675392, 47.402824>,  <35.529675, 26.268616, 46.726963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532707, 26.675392, 47.402824> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.149101, 26.563488, 47.420830>,  <34.918938, 26.496346, 47.431633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.149101, 26.563488, 47.420830>,  <35.532707, 26.675392, 47.402824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.149101, 26.563488, 47.420830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054720, -0.026970, 0.998137,
		-0.278027, 0.959690, 0.041173,
		-0.959013, -0.279762, 0.045016,
		34.861397, 26.479559, 47.434334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176792, 27.041731, 47.956585>,  <35.532707, 26.675392, 47.402824>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176792, 27.041731, 47.956585> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.918659, 26.740444, 47.905663>,  <34.763779, 26.559671, 47.875111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.918659, 26.740444, 47.905663>,  <35.176792, 27.041731, 47.956585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918659, 26.740444, 47.905663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025311, -0.145475, 0.989038,
		-0.763481, 0.641483, 0.074815,
		-0.645335, -0.753218, -0.127304,
		34.725060, 26.514479, 47.867470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571102, 27.090166, 48.453396>,  <35.176792, 27.041731, 47.956585>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571102, 27.090166, 48.453396> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.541203, 26.708723, 48.336746>,  <34.523262, 26.479856, 48.266754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.541203, 26.708723, 48.336746>,  <34.571102, 27.090166, 48.453396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541203, 26.708723, 48.336746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290044, -0.259012, 0.921296,
		-0.954090, 0.153449, -0.257227,
		-0.074747, -0.953607, -0.291628,
		34.518780, 26.422642, 48.249256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979336, 26.913406, 48.708786>,  <34.571102, 27.090166, 48.453396>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979336, 26.913406, 48.708786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.162880, 26.561890, 48.656372>,  <34.273006, 26.350979, 48.624924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.162880, 26.561890, 48.656372>,  <33.979336, 26.913406, 48.708786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162880, 26.561890, 48.656372> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415538, -0.342608, 0.842584,
		-0.785350, -0.332179, -0.522382,
		0.458861, -0.878793, -0.131034,
		34.300537, 26.298252, 48.617062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.644062, 27.459328, 49.048409>,  <33.979336, 26.913406, 48.708786>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.644062, 27.459328, 49.048409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.685390, 27.802368, 49.249939>,  <33.710186, 28.008192, 49.370857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.685390, 27.802368, 49.249939>,  <33.644062, 27.459328, 49.048409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685390, 27.802368, 49.249939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242423, 0.512976, -0.823460,
		-0.964653, -0.037058, 0.260904,
		0.103322, 0.857603, 0.503828,
		33.716389, 28.059649, 49.401089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012875, 27.897381, 48.948509>,  <33.644062, 27.459328, 49.048409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012875, 27.897381, 48.948509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.302212, 28.161600, 49.028965>,  <33.475815, 28.320131, 49.077240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.302212, 28.161600, 49.028965>,  <33.012875, 27.897381, 48.948509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302212, 28.161600, 49.028965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113840, 0.401399, -0.908801,
		-0.681044, 0.634473, 0.365544,
		0.723339, 0.660547, 0.201141,
		33.519215, 28.359764, 49.089306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728149, 28.414343, 48.628174>,  <33.012875, 27.897381, 48.948509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728149, 28.414343, 48.628174> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.118019, 28.484312, 48.683910>,  <33.351940, 28.526293, 48.717350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.118019, 28.484312, 48.683910>,  <32.728149, 28.414343, 48.628174>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118019, 28.484312, 48.683910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023271, 0.540352, -0.841118,
		-0.222421, 0.823057, 0.522595,
		0.974673, 0.174921, 0.139339,
		33.410419, 28.536789, 48.725712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.761845, 29.140255, 48.510563>,  <32.728149, 28.414343, 48.628174>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.761845, 29.140255, 48.510563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.124386, 28.989262, 48.434639>,  <33.341911, 28.898666, 48.389084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.124386, 28.989262, 48.434639>,  <32.761845, 29.140255, 48.510563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124386, 28.989262, 48.434639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047746, 0.537866, -0.841678,
		0.419810, 0.753796, 0.505520,
		0.906355, -0.377481, -0.189811,
		33.396294, 28.876017, 48.377697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.112415, 29.685074, 48.291172>,  <32.761845, 29.140255, 48.510563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.112415, 29.685074, 48.291172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.312054, 29.362440, 48.164474>,  <33.431835, 29.168859, 48.088455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.312054, 29.362440, 48.164474>,  <33.112415, 29.685074, 48.291172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312054, 29.362440, 48.164474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037564, 0.385315, -0.922020,
		0.865733, 0.448277, 0.222607,
		0.499094, -0.806586, -0.316741,
		33.461781, 29.120464, 48.069450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659481, 29.936625, 47.857990>,  <33.112415, 29.685074, 48.291172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659481, 29.936625, 47.857990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.643257, 29.551880, 47.749786>,  <33.633522, 29.321033, 47.684864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.643257, 29.551880, 47.749786>,  <33.659481, 29.936625, 47.857990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643257, 29.551880, 47.749786> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134859, 0.262983, -0.955329,
		0.990034, -0.075229, 0.119049,
		-0.040561, -0.961863, -0.270507,
		33.631088, 29.263321, 47.668633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268723, 29.855322, 47.337025>,  <33.659481, 29.936625, 47.857990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268723, 29.855322, 47.337025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.995956, 29.567970, 47.281998>,  <33.832298, 29.395559, 47.248981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.995956, 29.567970, 47.281998>,  <34.268723, 29.855322, 47.337025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995956, 29.567970, 47.281998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061503, 0.243729, -0.967891,
		0.728843, -0.651556, -0.210385,
		-0.681913, -0.718381, -0.137567,
		33.791382, 29.352457, 47.240726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867733, 30.150997, 46.939766>,  <34.268723, 29.855322, 47.337025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867733, 30.150997, 46.939766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.765804, 30.468245, 47.161045>,  <34.704647, 30.658592, 47.293816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.765804, 30.468245, 47.161045>,  <34.867733, 30.150997, 46.939766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765804, 30.468245, 47.161045> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189304, -0.520103, 0.832861,
		0.948278, 0.316951, -0.017609,
		-0.254817, 0.793117, 0.553203,
		34.689358, 30.706181, 47.327007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462143, 30.249716, 47.361908>,  <34.867733, 30.150997, 46.939766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462143, 30.249716, 47.361908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.179970, 30.454975, 47.557472>,  <35.010666, 30.578131, 47.674812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.179970, 30.454975, 47.557472>,  <35.462143, 30.249716, 47.361908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179970, 30.454975, 47.557472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386183, -0.300140, 0.872226,
		0.594326, 0.804110, 0.013560,
		-0.705436, 0.513150, 0.488915,
		34.968338, 30.608921, 47.704147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.821880, 30.624559, 47.714455>,  <35.462143, 30.249716, 47.361908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.821880, 30.624559, 47.714455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.472347, 30.627567, 47.908920>,  <35.262627, 30.629372, 48.025600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.472347, 30.627567, 47.908920>,  <35.821880, 30.624559, 47.714455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472347, 30.627567, 47.908920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473346, -0.215401, 0.854134,
		0.111142, 0.976497, 0.184667,
		-0.873837, 0.007519, 0.486161,
		35.210197, 30.629824, 48.054768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891796, 31.143503, 48.373676>,  <35.821880, 30.624559, 47.714455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891796, 31.143503, 48.373676> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.608192, 30.863695, 48.409393>,  <35.438030, 30.695810, 48.430824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.608192, 30.863695, 48.409393>,  <35.891796, 31.143503, 48.373676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608192, 30.863695, 48.409393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358456, -0.248454, 0.899877,
		-0.607298, 0.670031, 0.426905,
		-0.709012, -0.699521, 0.089291,
		35.395489, 30.653839, 48.436180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728539, 31.244785, 48.973911>,  <35.891796, 31.143503, 48.373676>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728539, 31.244785, 48.973911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.575100, 30.879242, 48.920677>,  <35.483036, 30.659916, 48.888737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.575100, 30.879242, 48.920677>,  <35.728539, 31.244785, 48.973911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575100, 30.879242, 48.920677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255702, -0.243579, 0.935567,
		-0.887393, 0.324854, 0.327113,
		-0.383601, -0.913859, -0.133084,
		35.460018, 30.605083, 48.880753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721588, 30.955563, 49.657131>,  <35.728539, 31.244785, 48.973911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721588, 30.955563, 49.657131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.674732, 30.628714, 49.431358>,  <35.646618, 30.432604, 49.295895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.674732, 30.628714, 49.431358>,  <35.721588, 30.955563, 49.657131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674732, 30.628714, 49.431358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368943, -0.563480, 0.739169,
		-0.922040, -0.121658, 0.367479,
		-0.117141, -0.817123, -0.564436,
		35.639591, 30.383577, 49.262028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264324, 30.649254, 50.021950>,  <35.721588, 30.955563, 49.657131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264324, 30.649254, 50.021950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.515423, 30.443966, 49.787846>,  <35.666084, 30.320793, 49.647381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.515423, 30.443966, 49.787846>,  <35.264324, 30.649254, 50.021950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515423, 30.443966, 49.787846> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443446, -0.382154, 0.810749,
		-0.639753, -0.768481, -0.012312,
		0.627751, -0.513220, -0.585265,
		35.703747, 30.290001, 49.612267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335609, 30.036879, 50.263634>,  <35.264324, 30.649254, 50.021950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335609, 30.036879, 50.263634> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.657982, 30.043421, 50.026924>,  <35.851406, 30.047346, 49.884899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.657982, 30.043421, 50.026924>,  <35.335609, 30.036879, 50.263634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657982, 30.043421, 50.026924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580436, -0.218480, 0.784449,
		-0.116460, -0.975705, -0.185574,
		0.805935, 0.016357, -0.591778,
		35.899761, 30.048328, 49.849392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613781, 29.377325, 50.392345>,  <35.335609, 30.036879, 50.263634>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613781, 29.377325, 50.392345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.906967, 29.591328, 50.224285>,  <36.082878, 29.719728, 50.123447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.906967, 29.591328, 50.224285>,  <35.613781, 29.377325, 50.392345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906967, 29.591328, 50.224285> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635344, -0.317681, 0.703858,
		0.243094, -0.782846, -0.572763,
		0.732968, 0.535006, -0.420150,
		36.126858, 29.751829, 50.098240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.523518, 35.069206, 35.142841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855080, 35.086510, 35.365929>,  <36.054016, 35.096893, 35.499783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855080, 35.086510, 35.365929>,  <35.523518, 35.069206, 35.142841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855080, 35.086510, 35.365929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555784, -0.049420, 0.829857,
		0.063464, -0.997841, -0.016920,
		0.828901, 0.043262, 0.557720,
		36.103748, 35.099487, 35.533245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615768, 34.537594, 35.650375>,  <35.523518, 35.069206, 35.142841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615768, 34.537594, 35.650375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793640, 34.869747, 35.784672>,  <35.900364, 35.069038, 35.865250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.793640, 34.869747, 35.784672>,  <35.615768, 34.537594, 35.650375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793640, 34.869747, 35.784672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504036, -0.077870, 0.860165,
		0.740412, -0.551722, 0.383916,
		0.444677, 0.830385, 0.335744,
		35.927044, 35.118862, 35.885395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568550, 34.388321, 36.374004>,  <35.615768, 34.537594, 35.650375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568550, 34.388321, 36.374004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672768, 34.773258, 36.342976>,  <35.735298, 35.004219, 36.324360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.672768, 34.773258, 36.342976>,  <35.568550, 34.388321, 36.374004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672768, 34.773258, 36.342976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296877, 0.156310, 0.942036,
		0.918685, -0.222413, 0.326422,
		0.260544, 0.962341, -0.077571,
		35.750931, 35.061962, 36.319706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895233, 34.489410, 37.045494>,  <35.568550, 34.388321, 36.374004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895233, 34.489410, 37.045494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798950, 34.858456, 36.924931>,  <35.741180, 35.079884, 36.852592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798950, 34.858456, 36.924931>,  <35.895233, 34.489410, 37.045494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798950, 34.858456, 36.924931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305035, 0.222900, 0.925888,
		0.921420, 0.314807, 0.227776,
		-0.240705, 0.922612, -0.301411,
		35.726738, 35.135239, 36.834507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244301, 34.939533, 37.461235>,  <35.895233, 34.489410, 37.045494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244301, 34.939533, 37.461235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915115, 35.120705, 37.324066>,  <35.717606, 35.229408, 37.241764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915115, 35.120705, 37.324066>,  <36.244301, 34.939533, 37.461235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915115, 35.120705, 37.324066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324158, 0.121340, 0.938189,
		0.466539, 0.883253, 0.046961,
		-0.822960, 0.452924, -0.342923,
		35.668228, 35.256580, 37.221188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192341, 35.490852, 37.806755>,  <36.244301, 34.939533, 37.461235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192341, 35.490852, 37.806755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817856, 35.467533, 37.668133>,  <35.593163, 35.453541, 37.584961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.817856, 35.467533, 37.668133>,  <36.192341, 35.490852, 37.806755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817856, 35.467533, 37.668133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351187, 0.191661, 0.916479,
		0.012989, 0.979728, -0.199911,
		-0.936215, -0.058302, -0.346557,
		35.536991, 35.450043, 37.564167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878181, 35.959377, 38.102108>,  <36.192341, 35.490852, 37.806755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878181, 35.959377, 38.102108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579517, 35.713840, 37.999584>,  <35.400318, 35.566517, 37.938072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579517, 35.713840, 37.999584>,  <35.878181, 35.959377, 38.102108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579517, 35.713840, 37.999584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327227, 0.003475, 0.944940,
		-0.579155, 0.789420, -0.203461,
		-0.746660, -0.613845, -0.256307,
		35.355518, 35.529686, 37.922691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316982, 36.243252, 38.366459>,  <35.878181, 35.959377, 38.102108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316982, 36.243252, 38.366459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212933, 35.860760, 38.312851>,  <35.150505, 35.631264, 38.280685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212933, 35.860760, 38.312851>,  <35.316982, 36.243252, 38.366459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212933, 35.860760, 38.312851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386487, -0.024083, 0.921980,
		-0.884853, 0.291624, -0.363306,
		-0.260122, -0.956230, -0.134019,
		35.134895, 35.573891, 38.272644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743011, 36.048820, 38.885418>,  <35.316982, 36.243252, 38.366459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743011, 36.048820, 38.885418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823250, 35.673702, 38.772072>,  <34.871395, 35.448631, 38.704063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.823250, 35.673702, 38.772072>,  <34.743011, 36.048820, 38.885418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823250, 35.673702, 38.772072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456242, -0.345392, 0.820090,
		-0.866951, -0.035225, -0.497147,
		0.200598, -0.937797, -0.283367,
		34.883430, 35.392365, 38.687061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180107, 35.666954, 39.071796>,  <34.743011, 36.048820, 38.885418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180107, 35.666954, 39.071796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478916, 35.401077, 39.067085>,  <34.658203, 35.241550, 39.064259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478916, 35.401077, 39.067085>,  <34.180107, 35.666954, 39.071796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478916, 35.401077, 39.067085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304246, -0.357574, 0.882936,
		-0.591093, -0.655990, -0.469346,
		0.747023, -0.664694, -0.011777,
		34.703022, 35.201668, 39.063553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849125, 35.114571, 39.334427>,  <34.180107, 35.666954, 39.071796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849125, 35.114571, 39.334427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240929, 35.048199, 39.380077>,  <34.476009, 35.008373, 39.407467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240929, 35.048199, 39.380077>,  <33.849125, 35.114571, 39.334427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240929, 35.048199, 39.380077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162116, -0.313423, 0.935673,
		-0.119489, -0.935004, -0.333901,
		0.979510, -0.165933, 0.114129,
		34.534782, 34.998417, 39.414314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947861, 34.356800, 39.548485>,  <33.849125, 35.114571, 39.334427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947861, 34.356800, 39.548485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273232, 34.552471, 39.674362>,  <34.468456, 34.669876, 39.749889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273232, 34.552471, 39.674362>,  <33.947861, 34.356800, 39.548485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273232, 34.552471, 39.674362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220442, -0.241402, 0.945056,
		0.538273, -0.838108, -0.088527,
		0.813430, 0.489183, 0.314694,
		34.517262, 34.699226, 39.768772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205288, 33.647755, 39.295509>,  <33.947861, 34.356800, 39.548485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205288, 33.647755, 39.295509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969601, 33.324600, 39.300354>,  <33.828190, 33.130707, 39.303261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.969601, 33.324600, 39.300354>,  <34.205288, 33.647755, 39.295509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.969601, 33.324600, 39.300354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273750, 0.185509, -0.943741,
		0.760187, -0.559383, -0.330463,
		-0.589217, -0.807884, 0.012109,
		33.792835, 33.082233, 39.303986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373848, 33.253754, 38.679855>,  <34.205288, 33.647755, 39.295509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373848, 33.253754, 38.679855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002956, 33.156071, 38.793427>,  <33.780422, 33.097462, 38.861568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002956, 33.156071, 38.793427>,  <34.373848, 33.253754, 38.679855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002956, 33.156071, 38.793427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302961, 0.043466, -0.952011,
		0.220143, -0.968749, -0.114287,
		-0.927228, -0.244203, 0.283925,
		33.724789, 33.082809, 38.878605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149258, 32.744335, 38.181175>,  <34.373848, 33.253754, 38.679855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149258, 32.744335, 38.181175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814026, 32.891796, 38.342033>,  <33.612888, 32.980270, 38.438549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814026, 32.891796, 38.342033>,  <34.149258, 32.744335, 38.181175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814026, 32.891796, 38.342033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419263, 0.036410, -0.907134,
		-0.349056, -0.928855, 0.124046,
		-0.838080, 0.368649, 0.402144,
		33.562603, 33.002392, 38.462677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600452, 32.275352, 38.038418>,  <34.149258, 32.744335, 38.181175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600452, 32.275352, 38.038418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400616, 32.619762, 38.076454>,  <33.280716, 32.826408, 38.099277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400616, 32.619762, 38.076454>,  <33.600452, 32.275352, 38.038418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400616, 32.619762, 38.076454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415614, -0.141933, -0.898399,
		-0.760050, -0.488351, 0.428763,
		-0.499589, 0.861027, 0.095090,
		33.250740, 32.878071, 38.104980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946999, 32.088440, 37.830021>,  <33.600452, 32.275352, 38.038418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946999, 32.088440, 37.830021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955055, 32.488358, 37.829613>,  <32.959888, 32.728310, 37.829369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955055, 32.488358, 37.829613>,  <32.946999, 32.088440, 37.830021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955055, 32.488358, 37.829613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621481, 0.011721, -0.783342,
		-0.783171, 0.016409, 0.621590,
		0.020139, 0.999797, -0.001019,
		32.961098, 32.788296, 37.829308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263275, 32.304832, 37.893364>,  <32.946999, 32.088440, 37.830021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263275, 32.304832, 37.893364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459011, 32.599239, 37.706249>,  <32.576450, 32.775883, 37.593979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.459011, 32.599239, 37.706249>,  <32.263275, 32.304832, 37.893364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459011, 32.599239, 37.706249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628224, -0.074547, -0.774453,
		-0.604883, 0.672845, 0.425906,
		0.489337, 0.736018, -0.467790,
		32.605812, 32.820045, 37.565914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.717566, 32.724976, 37.737228>,  <32.263275, 32.304832, 37.893364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.717566, 32.724976, 37.737228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039764, 32.826393, 37.522980>,  <32.233082, 32.887241, 37.394432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039764, 32.826393, 37.522980>,  <31.717566, 32.724976, 37.737228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039764, 32.826393, 37.522980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588399, 0.234750, -0.773744,
		-0.070439, 0.938408, 0.338274,
		0.805497, 0.253542, -0.535622,
		32.281414, 32.902454, 37.362293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495234, 33.275665, 37.433395>,  <31.717566, 32.724976, 37.737228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495234, 33.275665, 37.433395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791212, 33.139683, 37.201221>,  <31.968800, 33.058094, 37.061916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791212, 33.139683, 37.201221>,  <31.495234, 33.275665, 37.433395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791212, 33.139683, 37.201221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556794, 0.174630, -0.812086,
		0.377438, 0.924084, -0.060071,
		0.739946, -0.339960, -0.580437,
		32.013195, 33.037693, 37.027092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681684, 33.781429, 36.912731>,  <31.495234, 33.275665, 37.433395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681684, 33.781429, 36.912731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780527, 33.419144, 36.774967>,  <31.839832, 33.201771, 36.692307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780527, 33.419144, 36.774967>,  <31.681684, 33.781429, 36.912731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780527, 33.419144, 36.774967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386036, 0.233996, -0.892313,
		0.888771, 0.353454, -0.291816,
		0.247107, -0.905713, -0.344415,
		31.854660, 33.147430, 36.671642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666210, 33.893612, 36.261597>,  <31.681684, 33.781429, 36.912731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666210, 33.893612, 36.261597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707933, 33.497765, 36.222034>,  <31.732967, 33.260258, 36.198296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.707933, 33.497765, 36.222034>,  <31.666210, 33.893612, 36.261597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.707933, 33.497765, 36.222034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413178, 0.047342, -0.909419,
		0.904657, 0.135724, -0.403949,
		0.104306, -0.989615, -0.098906,
		31.739225, 33.200882, 36.192364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869259, 33.856796, 35.599041>,  <31.666210, 33.893612, 36.261597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869259, 33.856796, 35.599041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719769, 33.506794, 35.722134>,  <31.630074, 33.296795, 35.795990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.719769, 33.506794, 35.722134>,  <31.869259, 33.856796, 35.599041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719769, 33.506794, 35.722134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481269, -0.100687, -0.870771,
		0.792912, -0.473533, -0.383482,
		-0.373727, -0.875002, 0.307732,
		31.607651, 33.244293, 35.814453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929451, 33.356171, 35.073029>,  <31.869259, 33.856796, 35.599041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929451, 33.356171, 35.073029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626917, 33.239468, 35.307236>,  <31.445396, 33.169445, 35.447762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.626917, 33.239468, 35.307236>,  <31.929451, 33.356171, 35.073029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.626917, 33.239468, 35.307236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601233, -0.042739, -0.797930,
		0.257824, -0.955538, -0.143088,
		-0.756337, -0.291755, 0.585519,
		31.400015, 33.151943, 35.482891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513887, 32.857334, 34.763359>,  <31.929451, 33.356171, 35.073029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513887, 32.857334, 34.763359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279615, 33.019299, 35.044224>,  <31.139053, 33.116478, 35.212742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.279615, 33.019299, 35.044224>,  <31.513887, 32.857334, 34.763359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279615, 33.019299, 35.044224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724900, 0.125905, -0.677251,
		-0.362632, -0.905646, 0.219780,
		-0.585678, 0.404912, 0.702160,
		31.103912, 33.140774, 35.254871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.438545, 32.118729, 34.955982>,  <31.513887, 32.857334, 34.763359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.438545, 32.118729, 34.955982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112940, 32.243244, 34.759827>,  <30.917576, 32.317955, 34.642132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.112940, 32.243244, 34.759827>,  <31.438545, 32.118729, 34.955982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.112940, 32.243244, 34.759827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219059, -0.617396, -0.755537,
		-0.537954, -0.722441, 0.434378,
		-0.814014, 0.311290, -0.490388,
		30.868736, 32.336632, 34.612709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188969, 32.099171, 35.050919>,  <31.438545, 32.118729, 34.955982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188969, 32.099171, 35.050919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239201, 32.493984, 35.010918>,  <32.269341, 32.730873, 34.986916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239201, 32.493984, 35.010918>,  <32.188969, 32.099171, 35.050919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239201, 32.493984, 35.010918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046152, 0.106503, 0.993241,
		0.991009, -0.120116, 0.058929,
		0.125580, 0.987031, -0.100002,
		32.276875, 32.790092, 34.980919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034538, 31.808043, 34.376461>,  <32.188969, 32.099171, 35.050919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034538, 31.808043, 34.376461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403866, 31.744993, 34.236378>,  <32.625462, 31.707163, 34.152328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403866, 31.744993, 34.236378>,  <32.034538, 31.808043, 34.376461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403866, 31.744993, 34.236378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109550, -0.765902, 0.633555,
		-0.368086, -0.623337, -0.689902,
		0.923315, -0.157624, -0.350204,
		32.680859, 31.697706, 34.131317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180218, 31.147129, 34.087852>,  <32.034538, 31.808043, 34.376461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180218, 31.147129, 34.087852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534290, 31.294889, 34.200985>,  <32.746735, 31.383545, 34.268864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.534290, 31.294889, 34.200985>,  <32.180218, 31.147129, 34.087852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534290, 31.294889, 34.200985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137299, -0.788263, 0.599825,
		0.444519, -0.492124, -0.748477,
		0.885185, 0.369399, 0.282829,
		32.799847, 31.405708, 34.285835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575897, 30.614611, 34.034306>,  <32.180218, 31.147129, 34.087852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575897, 30.614611, 34.034306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790138, 30.874521, 34.250053>,  <32.918682, 31.030468, 34.379501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.790138, 30.874521, 34.250053>,  <32.575897, 30.614611, 34.034306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790138, 30.874521, 34.250053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226994, -0.725979, 0.649175,
		0.813389, -0.225267, -0.536333,
		0.535604, 0.649776, 0.539369,
		32.950821, 31.069454, 34.411865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178532, 30.253012, 34.147583>,  <32.575897, 30.614611, 34.034306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178532, 30.253012, 34.147583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138996, 30.529654, 34.433777>,  <33.115273, 30.695639, 34.605492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138996, 30.529654, 34.433777>,  <33.178532, 30.253012, 34.147583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138996, 30.529654, 34.433777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221954, -0.685567, 0.693350,
		0.970035, 0.227335, -0.085742,
		-0.098841, 0.691605, 0.715481,
		33.109344, 30.737135, 34.648422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762688, 30.280247, 34.648907>,  <33.178532, 30.253012, 34.147583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762688, 30.280247, 34.648907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440506, 30.433285, 34.829956>,  <33.247196, 30.525108, 34.938587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.440506, 30.433285, 34.829956>,  <33.762688, 30.280247, 34.648907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440506, 30.433285, 34.829956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060722, -0.706422, 0.705182,
		0.589543, 0.595474, 0.545756,
		-0.805451, 0.382596, 0.452625,
		33.198872, 30.548063, 34.965744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873669, 30.176052, 35.331280>,  <33.762688, 30.280247, 34.648907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873669, 30.176052, 35.331280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490307, 30.290054, 35.337280>,  <33.260288, 30.358456, 35.340881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490307, 30.290054, 35.337280>,  <33.873669, 30.176052, 35.331280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490307, 30.290054, 35.337280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156568, -0.568997, 0.807297,
		0.238618, 0.771372, 0.589955,
		-0.958409, 0.285004, 0.015001,
		33.202785, 30.375555, 35.341782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759377, 30.389017, 35.973839>,  <33.873669, 30.176052, 35.331280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759377, 30.389017, 35.973839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392216, 30.309629, 35.836395>,  <33.171921, 30.261997, 35.753929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392216, 30.309629, 35.836395>,  <33.759377, 30.389017, 35.973839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392216, 30.309629, 35.836395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275261, -0.305234, 0.911627,
		-0.285810, 0.931366, 0.225544,
		-0.917902, -0.198469, -0.343608,
		33.116844, 30.250090, 35.733315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353497, 30.739147, 36.453594>,  <33.759377, 30.389017, 35.973839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353497, 30.739147, 36.453594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128048, 30.467358, 36.265701>,  <32.992779, 30.304283, 36.152966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128048, 30.467358, 36.265701>,  <33.353497, 30.739147, 36.453594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128048, 30.467358, 36.265701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152322, -0.473416, 0.867569,
		-0.811868, 0.560530, 0.163328,
		-0.563621, -0.679473, -0.469732,
		32.958961, 30.263515, 36.124783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666077, 30.716473, 36.846657>,  <33.353497, 30.739147, 36.453594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666077, 30.716473, 36.846657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701309, 30.376268, 36.639244>,  <32.722446, 30.172146, 36.514797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701309, 30.376268, 36.639244>,  <32.666077, 30.716473, 36.846657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701309, 30.376268, 36.639244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294219, -0.519543, 0.802191,
		-0.951671, 0.081907, -0.295996,
		0.088078, -0.850510, -0.518532,
		32.727734, 30.121115, 36.483685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036259, 30.312786, 36.973640>,  <32.666077, 30.716473, 36.846657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036259, 30.312786, 36.973640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333839, 30.072571, 36.856415>,  <32.512390, 29.928442, 36.786079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333839, 30.072571, 36.856415>,  <32.036259, 30.312786, 36.973640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333839, 30.072571, 36.856415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084335, -0.519436, 0.850338,
		-0.662886, -0.607898, -0.437083,
		0.743955, -0.600539, -0.293060,
		32.557026, 29.892408, 36.768497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824486, 29.575487, 37.147648>,  <32.036259, 30.312786, 36.973640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824486, 29.575487, 37.147648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221298, 29.572813, 37.097317>,  <32.459385, 29.571209, 37.067120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.221298, 29.572813, 37.097317>,  <31.824486, 29.575487, 37.147648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.221298, 29.572813, 37.097317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097412, -0.592737, 0.799483,
		-0.079927, -0.805368, -0.587362,
		0.992030, -0.006684, -0.125829,
		32.518906, 29.570808, 37.059566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984993, 28.873873, 37.278290>,  <31.824486, 29.575487, 37.147648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984993, 28.873873, 37.278290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322067, 29.080198, 37.340019>,  <32.524311, 29.203995, 37.377056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.322067, 29.080198, 37.340019>,  <31.984993, 28.873873, 37.278290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.322067, 29.080198, 37.340019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204650, -0.571988, 0.794322,
		0.497997, -0.637780, -0.587568,
		0.842685, 0.515816, 0.154327,
		32.574871, 29.234943, 37.386318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290691, 28.434319, 37.661156>,  <31.984993, 28.873873, 37.278290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290691, 28.434319, 37.661156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520782, 28.753895, 37.731369>,  <32.658836, 28.945641, 37.773499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.520782, 28.753895, 37.731369>,  <32.290691, 28.434319, 37.661156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520782, 28.753895, 37.731369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236991, -0.368160, 0.899051,
		0.782913, -0.475555, -0.401116,
		0.575224, 0.798940, 0.175535,
		32.693348, 28.993576, 37.784031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938683, 28.235878, 37.935703>,  <32.290691, 28.434319, 37.661156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938683, 28.235878, 37.935703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910984, 28.618820, 38.047897>,  <32.894367, 28.848585, 38.115215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910984, 28.618820, 38.047897>,  <32.938683, 28.235878, 37.935703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910984, 28.618820, 38.047897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271210, -0.252509, 0.928808,
		0.960026, 0.140386, -0.242159,
		-0.069245, 0.957356, 0.280489,
		32.890209, 28.906027, 38.132046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573601, 28.332273, 38.272598>,  <32.938683, 28.235878, 37.935703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573601, 28.332273, 38.272598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325111, 28.619690, 38.397678>,  <33.176018, 28.792141, 38.472725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325111, 28.619690, 38.397678>,  <33.573601, 28.332273, 38.272598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325111, 28.619690, 38.397678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269515, -0.178780, 0.946255,
		0.735829, 0.672112, -0.082596,
		-0.621223, 0.718543, 0.312696,
		33.138744, 28.835253, 38.491486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036625, 28.756504, 38.591381>,  <33.573601, 28.332273, 38.272598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036625, 28.756504, 38.591381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669086, 28.825317, 38.733437>,  <33.448563, 28.866606, 38.818672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669086, 28.825317, 38.733437>,  <34.036625, 28.756504, 38.591381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669086, 28.825317, 38.733437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347901, -0.071600, 0.934793,
		0.186242, 0.982486, 0.005939,
		-0.918846, 0.172031, 0.355143,
		33.393433, 28.876926, 38.839981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095657, 29.202881, 39.183388>,  <34.036625, 28.756504, 38.591381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095657, 29.202881, 39.183388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727528, 29.058332, 39.243286>,  <33.506649, 28.971603, 39.279224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.727528, 29.058332, 39.243286>,  <34.095657, 29.202881, 39.183388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727528, 29.058332, 39.243286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219423, -0.160011, 0.962419,
		-0.323829, 0.918590, 0.226554,
		-0.920320, -0.361370, 0.149744,
		33.451431, 28.949921, 39.288208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735203, 29.573807, 39.726425>,  <34.095657, 29.202881, 39.183388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735203, 29.573807, 39.726425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563858, 29.212463, 39.717918>,  <33.461052, 28.995657, 39.712814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.563858, 29.212463, 39.717918>,  <33.735203, 29.573807, 39.726425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.563858, 29.212463, 39.717918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129099, -0.084476, 0.988027,
		-0.894338, 0.420486, 0.152809,
		-0.428361, -0.903358, -0.021266,
		33.435349, 28.941456, 39.711540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204411, 29.546276, 40.273048>,  <33.735203, 29.573807, 39.726425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204411, 29.546276, 40.273048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294262, 29.164808, 40.192986>,  <33.348171, 28.935928, 40.144947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294262, 29.164808, 40.192986>,  <33.204411, 29.546276, 40.273048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294262, 29.164808, 40.192986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021476, -0.200509, 0.979457,
		-0.974209, -0.224308, -0.024558,
		0.224624, -0.953668, -0.200155,
		33.361649, 28.878708, 40.132938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900669, 29.286064, 40.872089>,  <33.204411, 29.546276, 40.273048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900669, 29.286064, 40.872089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119659, 28.979698, 40.737247>,  <33.251053, 28.795879, 40.656342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119659, 28.979698, 40.737247>,  <32.900669, 29.286064, 40.872089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119659, 28.979698, 40.737247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086219, -0.349067, 0.933123,
		-0.832365, -0.539931, -0.125071,
		0.547480, -0.765915, -0.337104,
		33.283905, 28.749924, 40.636116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581940, 28.670218, 41.211716>,  <32.900669, 29.286064, 40.872089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581940, 28.670218, 41.211716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962833, 28.604458, 41.108776>,  <33.191368, 28.565002, 41.047012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962833, 28.604458, 41.108776>,  <32.581940, 28.670218, 41.211716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962833, 28.604458, 41.108776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182800, -0.368212, 0.911594,
		-0.244624, -0.915092, -0.320570,
		0.952231, -0.164397, -0.257353,
		33.248501, 28.555138, 41.031570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629696, 28.189623, 41.686352>,  <32.581940, 28.670218, 41.211716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629696, 28.189623, 41.686352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005787, 28.230125, 41.556290>,  <33.231441, 28.254427, 41.478252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005787, 28.230125, 41.556290>,  <32.629696, 28.189623, 41.686352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005787, 28.230125, 41.556290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332215, -0.482739, 0.810306,
		-0.074917, -0.869891, -0.487521,
		0.940223, 0.101256, -0.325157,
		33.287853, 28.260502, 41.458744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095421, 27.468241, 41.621571>,  <32.629696, 28.189623, 41.686352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095421, 27.468241, 41.621571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363167, 27.763878, 41.651752>,  <33.523815, 27.941259, 41.669861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.363167, 27.763878, 41.651752>,  <33.095421, 27.468241, 41.621571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.363167, 27.763878, 41.651752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453872, -0.487222, 0.746066,
		0.588176, -0.465143, -0.661582,
		0.669365, 0.739092, 0.075457,
		33.563976, 27.985605, 41.674389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715862, 27.171158, 41.679325>,  <33.095421, 27.468241, 41.621571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715862, 27.171158, 41.679325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742981, 27.522320, 41.868931>,  <33.759251, 27.733017, 41.982693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742981, 27.522320, 41.868931>,  <33.715862, 27.171158, 41.679325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742981, 27.522320, 41.868931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402946, -0.458729, 0.791961,
		0.912709, 0.137311, -0.384847,
		0.067795, 0.877903, 0.474015,
		33.763321, 27.785690, 42.011135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.328091, 27.050905, 42.050945>,  <33.715862, 27.171158, 41.679325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.328091, 27.050905, 42.050945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209045, 27.392071, 42.222507>,  <34.137619, 27.596771, 42.325447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209045, 27.392071, 42.222507>,  <34.328091, 27.050905, 42.050945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209045, 27.392071, 42.222507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475848, -0.256955, 0.841155,
		0.827645, 0.454433, -0.329386,
		-0.297611, 0.852916, 0.428908,
		34.119762, 27.647945, 42.351181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828403, 27.104780, 42.579487>,  <34.328091, 27.050905, 42.050945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828403, 27.104780, 42.579487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512569, 27.330725, 42.675396>,  <34.323071, 27.466291, 42.732941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512569, 27.330725, 42.675396>,  <34.828403, 27.104780, 42.579487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512569, 27.330725, 42.675396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245076, -0.067950, 0.967120,
		0.562582, 0.822383, -0.084782,
		-0.789582, 0.564862, 0.239774,
		34.275696, 27.500183, 42.747330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141888, 27.721148, 43.029865>,  <34.828403, 27.104780, 42.579487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141888, 27.721148, 43.029865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760986, 27.623392, 43.103069>,  <34.532448, 27.564739, 43.146992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760986, 27.623392, 43.103069>,  <35.141888, 27.721148, 43.029865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760986, 27.623392, 43.103069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263273, -0.353698, 0.897544,
		-0.154616, 0.902869, 0.401150,
		-0.952251, -0.244387, 0.183013,
		34.475311, 27.550076, 43.157974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785099, 28.148624, 43.315006>,  <35.141888, 27.721148, 43.029865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785099, 28.148624, 43.315006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157455, 28.068247, 43.437027>,  <36.380871, 28.020021, 43.510239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157455, 28.068247, 43.437027>,  <35.785099, 28.148624, 43.315006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157455, 28.068247, 43.437027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352368, 0.273863, -0.894895,
		0.096281, 0.940543, 0.325743,
		0.930896, -0.200942, 0.305050,
		36.436726, 28.007963, 43.528542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.054272, 28.639362, 43.097160>,  <35.785099, 28.148624, 43.315006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.054272, 28.639362, 43.097160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369667, 28.395218, 43.127472>,  <36.558903, 28.248732, 43.145660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369667, 28.395218, 43.127472>,  <36.054272, 28.639362, 43.097160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369667, 28.395218, 43.127472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239300, 0.190943, -0.951985,
		0.566587, 0.768764, 0.296617,
		0.788489, -0.610363, 0.075779,
		36.606213, 28.212109, 43.150204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.591564, 29.022259, 42.810165>,  <36.054272, 28.639362, 43.097160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.591564, 29.022259, 42.810165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678986, 28.632229, 42.794876>,  <36.731438, 28.398211, 42.785702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678986, 28.632229, 42.794876>,  <36.591564, 29.022259, 42.810165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678986, 28.632229, 42.794876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290043, 0.102311, -0.951529,
		0.931725, 0.196869, 0.305175,
		0.218549, -0.975077, -0.038226,
		36.744549, 28.339706, 42.783409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162025, 29.004566, 42.374527>,  <36.591564, 29.022259, 42.810165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162025, 29.004566, 42.374527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015995, 28.632872, 42.351761>,  <36.928379, 28.409855, 42.338100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015995, 28.632872, 42.351761>,  <37.162025, 29.004566, 42.374527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015995, 28.632872, 42.351761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141561, 0.005020, -0.989917,
		0.920154, -0.369448, 0.129711,
		-0.365072, -0.929238, -0.056919,
		36.906475, 28.354101, 42.334686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692631, 28.532681, 41.993515>,  <37.162025, 29.004566, 42.374527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692631, 28.532681, 41.993515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307816, 28.433311, 41.948326>,  <37.076927, 28.373690, 41.921211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307816, 28.433311, 41.948326>,  <37.692631, 28.532681, 41.993515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307816, 28.433311, 41.948326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145025, -0.114701, -0.982757,
		0.231182, -0.961837, 0.146375,
		-0.962041, -0.248424, -0.112974,
		37.019203, 28.358784, 41.914433>
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
