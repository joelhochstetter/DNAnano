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
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
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
	<5.547830, 5.004570, 1.917688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.785164, 4.940453, 1.602154>,  <5.927564, 4.901982, 1.412833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.785164, 4.940453, 1.602154>,  <5.547830, 5.004570, 1.917688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.785164, 4.940453, 1.602154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710046, -0.565863, -0.419087,
		-0.379195, 0.808768, -0.449561,
		0.593334, -0.160293, -0.788835,
		5.963164, 4.892365, 1.365503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.292845, 5.277200, 1.141169>,  <5.547830, 5.004570, 1.917688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.292845, 5.277200, 1.141169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.533516, 4.958965, 1.112808>,  <5.677918, 4.768024, 1.095792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.533516, 4.958965, 1.112808>,  <5.292845, 5.277200, 1.141169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.533516, 4.958965, 1.112808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644176, -0.430847, -0.631987,
		0.472252, 0.425926, -0.771728,
		0.601677, -0.795586, -0.070903,
		5.714019, 4.720289, 1.091537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.396221, 5.202129, 0.408447>,  <5.292845, 5.277200, 1.141169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.396221, 5.202129, 0.408447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.440145, 4.863930, 0.617472>,  <5.466500, 4.661010, 0.742887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.440145, 4.863930, 0.617472>,  <5.396221, 5.202129, 0.408447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.440145, 4.863930, 0.617472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715844, -0.432016, -0.548570,
		0.689571, -0.313834, -0.652686,
		0.109811, -0.845500, 0.522563,
		5.473089, 4.610280, 0.774241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.538377, 4.602204, 0.034635>,  <5.396221, 5.202129, 0.408447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.538377, 4.602204, 0.034635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.344751, 4.452431, 0.350985>,  <5.228576, 4.362567, 0.540794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.344751, 4.452431, 0.350985>,  <5.538377, 4.602204, 0.034635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.344751, 4.452431, 0.350985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743663, -0.300270, -0.597330,
		0.461136, -0.877290, -0.133101,
		-0.484065, -0.374433, 0.790874,
		5.199532, 4.340101, 0.588247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.297682, 3.878018, -0.010048>,  <5.538377, 4.602204, 0.034635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.297682, 3.878018, -0.010048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.047523, 4.075500, 0.231657>,  <4.897429, 4.193990, 0.376680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.047523, 4.075500, 0.231657>,  <5.297682, 3.878018, -0.010048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.047523, 4.075500, 0.231657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707430, -0.031956, -0.706060,
		-0.329277, -0.869041, 0.369248,
		-0.625395, 0.493707, 0.604264,
		4.859905, 4.223612, 0.412936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.694865, 3.537076, 0.049307>,  <5.297682, 3.878018, -0.010048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.694865, 3.537076, 0.049307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.572948, 3.905678, 0.145580>,  <4.499798, 4.126839, 0.203345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.572948, 3.905678, 0.145580>,  <4.694865, 3.537076, 0.049307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.572948, 3.905678, 0.145580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709725, -0.051232, -0.702613,
		-0.635131, -0.384970, 0.669631,
		-0.304791, 0.921506, 0.240684,
		4.481511, 4.182129, 0.217786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.953006, 3.473438, 0.319315>,  <4.694865, 3.537076, 0.049307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.953006, 3.473438, 0.319315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.048304, 3.838707, 0.187038>,  <4.105482, 4.057868, 0.107672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.048304, 3.838707, 0.187038>,  <3.953006, 3.473438, 0.319315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.048304, 3.838707, 0.187038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744931, -0.046654, -0.665508,
		-0.623151, 0.404896, 0.669135,
		0.238244, 0.913172, -0.330692,
		4.119777, 4.112659, 0.087831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.283710, 3.805417, 0.326305>,  <3.953006, 3.473438, 0.319315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.283710, 3.805417, 0.326305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.530210, 4.000835, 0.079224>,  <3.678111, 4.118087, -0.069025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.530210, 4.000835, 0.079224>,  <3.283710, 3.805417, 0.326305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.530210, 4.000835, 0.079224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621677, -0.179739, -0.762372,
		-0.483480, 0.853824, 0.192954,
		0.616251, 0.488547, -0.617703,
		3.715086, 4.147399, -0.106087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.432644, 3.662459, 4.046275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.704201, 3.775635, 3.775261>,  <2.867135, 3.843540, 3.612653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.704201, 3.775635, 3.775261>,  <2.432644, 3.662459, 4.046275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.704201, 3.775635, 3.775261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524179, 0.459396, 0.717072,
		0.514144, -0.841963, 0.163569,
		0.678891, 0.282939, -0.677534,
		2.907868, 3.860516, 3.572001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.051277, 3.503329, 4.282806>,  <2.432644, 3.662459, 4.046275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.051277, 3.503329, 4.282806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.132702, 3.792778, 4.019009>,  <3.181556, 3.966447, 3.860730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.132702, 3.792778, 4.019009>,  <3.051277, 3.503329, 4.282806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.132702, 3.792778, 4.019009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595945, 0.442860, 0.669869,
		0.776796, -0.529382, -0.341090,
		0.203561, 0.723623, -0.659494,
		3.193770, 4.009865, 3.821160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.761871, 3.579482, 4.091085>,  <3.051277, 3.503329, 4.282806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.761871, 3.579482, 4.091085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.584908, 3.938080, 4.081520>,  <3.478729, 4.153239, 4.075781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.584908, 3.938080, 4.081520>,  <3.761871, 3.579482, 4.091085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.584908, 3.938080, 4.081520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574884, 0.303962, 0.759681,
		0.688319, 0.322342, -0.649856,
		-0.442409, 0.896495, -0.023913,
		3.452185, 4.207028, 4.074346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.262084, 4.138605, 4.059633>,  <3.761871, 3.579482, 4.091085>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.262084, 4.138605, 4.059633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.935646, 4.293877, 4.230888>,  <3.739783, 4.387040, 4.333642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.935646, 4.293877, 4.230888>,  <4.262084, 4.138605, 4.059633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.935646, 4.293877, 4.230888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562618, 0.364332, 0.742107,
		0.132086, 0.846509, -0.515728,
		-0.816097, 0.388180, 0.428139,
		3.690817, 4.410331, 4.359330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.406792, 4.908482, 4.095797>,  <4.262084, 4.138605, 4.059633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.406792, 4.908482, 4.095797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.165035, 4.725761, 4.356884>,  <4.019981, 4.616129, 4.513536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.165035, 4.725761, 4.356884>,  <4.406792, 4.908482, 4.095797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.165035, 4.725761, 4.356884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624781, 0.236583, 0.744094,
		-0.494326, 0.857532, 0.142413,
		-0.604392, -0.456802, 0.652719,
		3.983718, 4.588721, 4.552700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.182919, 5.369832, 4.696642>,  <4.406792, 4.908482, 4.095797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.182919, 5.369832, 4.696642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.185360, 4.983727, 4.801125>,  <4.186825, 4.752063, 4.863814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.185360, 4.983727, 4.801125>,  <4.182919, 5.369832, 4.696642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.185360, 4.983727, 4.801125> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643450, 0.203741, 0.737876,
		-0.765464, 0.163569, 0.622343,
		0.006103, -0.965264, 0.261205,
		4.187191, 4.694147, 4.879486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.208650, 5.417532, 5.406966>,  <4.182919, 5.369832, 4.696642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.208650, 5.417532, 5.406966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.302475, 5.031197, 5.362904>,  <4.358770, 4.799395, 5.336466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.302475, 5.031197, 5.362904>,  <4.208650, 5.417532, 5.406966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.302475, 5.031197, 5.362904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635966, 0.066763, 0.768824,
		-0.735206, -0.250393, 0.629901,
		0.234563, -0.965840, -0.110157,
		4.372844, 4.741445, 5.329856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.200629, 5.110791, 6.086653>,  <4.208650, 5.417532, 5.406966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.200629, 5.110791, 6.086653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.420948, 4.864159, 5.861637>,  <4.553140, 4.716179, 5.726627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.420948, 4.864159, 5.861637>,  <4.200629, 5.110791, 6.086653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.420948, 4.864159, 5.861637> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700283, -0.025320, 0.713417,
		-0.454122, -0.786885, 0.417834,
		0.550798, -0.616580, -0.562540,
		4.586187, 4.679185, 5.692875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
