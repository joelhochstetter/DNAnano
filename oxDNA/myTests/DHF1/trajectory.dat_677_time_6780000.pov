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
	<0.261785, 3.768707, 3.380093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.025522, 3.465425, 3.269638>,  <-0.116235, 3.283457, 3.203365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.025522, 3.465425, 3.269638>,  <0.261785, 3.768707, 3.380093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.025522, 3.465425, 3.269638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794096, -0.606947, -0.032043,
		-0.143306, -0.238206, 0.960584,
		-0.590656, -0.758204, -0.276138,
		-0.151675, 3.237964, 3.186797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.411040, 3.177876, 3.836575>,  <0.261785, 3.768707, 3.380093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.411040, 3.177876, 3.836575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.247826, 2.993965, 3.521079>,  <0.149897, 2.883619, 3.331781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.247826, 2.993965, 3.521079>,  <0.411040, 3.177876, 3.836575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.247826, 2.993965, 3.521079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685757, -0.724678, 0.067675,
		-0.602698, -0.513270, 0.610990,
		-0.408036, -0.459778, -0.788740,
		0.125415, 2.856032, 3.284457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.348286, 2.353527, 3.898378>,  <0.411040, 3.177876, 3.836575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.348286, 2.353527, 3.898378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.452023, 2.545521, 3.563150>,  <0.514264, 2.660717, 3.362014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.452023, 2.545521, 3.563150>,  <0.348286, 2.353527, 3.898378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.452023, 2.545521, 3.563150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867836, -0.496598, -0.015863,
		-0.423797, -0.723191, -0.545335,
		0.259341, 0.479984, -0.838068,
		0.529825, 2.689516, 3.311730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.534283, 1.850449, 3.402606>,  <0.348286, 2.353527, 3.898378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.534283, 1.850449, 3.402606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.715395, 2.203957, 3.355374>,  <0.824062, 2.416061, 3.327036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.715395, 2.203957, 3.355374>,  <0.534283, 1.850449, 3.402606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.715395, 2.203957, 3.355374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891599, -0.447802, 0.067273,
		0.006579, -0.135738, -0.990723,
		0.452779, 0.883770, -0.118078,
		0.851229, 2.469088, 3.319951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.150574, 1.681659, 2.935032>,  <0.534283, 1.850449, 3.402606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.150574, 1.681659, 2.935032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.205360, 2.029343, 3.125070>,  <1.238232, 2.237953, 3.239092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.205360, 2.029343, 3.125070>,  <1.150574, 1.681659, 2.935032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.205360, 2.029343, 3.125070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921428, -0.287846, 0.260990,
		0.363609, 0.402018, -0.840339,
		0.136965, 0.869210, 0.475093,
		1.246450, 2.290106, 3.267598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.836077, 1.795001, 2.722885>,  <1.150574, 1.681659, 2.935032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.836077, 1.795001, 2.722885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.756472, 2.000748, 3.056549>,  <1.708708, 2.124196, 3.256747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.756472, 2.000748, 3.056549>,  <1.836077, 1.795001, 2.722885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.756472, 2.000748, 3.056549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882845, -0.275398, 0.380447,
		0.425415, 0.812147, -0.399297,
		-0.199013, 0.514366, 0.834159,
		1.696768, 2.155057, 3.306797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.405973, 2.215507, 2.880470>,  <1.836077, 1.795001, 2.722885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.405973, 2.215507, 2.880470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.224607, 2.153379, 3.231535>,  <2.115788, 2.116103, 3.442174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.224607, 2.153379, 3.231535>,  <2.405973, 2.215507, 2.880470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.224607, 2.153379, 3.231535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891014, -0.103916, 0.441923,
		0.022564, 0.982384, 0.185508,
		-0.453415, -0.155318, 0.877662,
		2.088583, 2.106784, 3.494834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.908431, 2.453125, 3.279482>,  <2.405973, 2.215507, 2.880470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.908431, 2.453125, 3.279482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.665785, 2.246496, 3.521199>,  <2.520197, 2.122519, 3.666230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.665785, 2.246496, 3.521199>,  <2.908431, 2.453125, 3.279482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.665785, 2.246496, 3.521199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794881, -0.381222, 0.472052,
		-0.013479, 0.766695, 0.641869,
		-0.606615, -0.516573, 0.604293,
		2.483800, 2.091524, 3.702487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.397170, 0.830414, 4.070877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.232765, 1.073717, 4.342491>,  <3.134123, 1.219700, 4.505460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.232765, 1.073717, 4.342491>,  <3.397170, 0.830414, 4.070877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.232765, 1.073717, 4.342491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751672, 0.195332, -0.629948,
		-0.515810, -0.769328, 0.376928,
		-0.411011, 0.608260, 0.679036,
		3.109462, 1.256195, 4.546202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.721764, 0.705700, 3.982424>,  <3.397170, 0.830414, 4.070877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.721764, 0.705700, 3.982424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.770821, 1.059783, 4.161920>,  <2.800255, 1.272233, 4.269618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.770821, 1.059783, 4.161920>,  <2.721764, 0.705700, 3.982424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.770821, 1.059783, 4.161920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909938, 0.280798, -0.305229,
		-0.396196, -0.370891, 0.839922,
		0.122642, 0.885208, 0.448739,
		2.807613, 1.325345, 4.296542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.109232, 0.987062, 4.059908>,  <2.721764, 0.705700, 3.982424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.109232, 0.987062, 4.059908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.298347, 1.325739, 4.157548>,  <2.411817, 1.528944, 4.216132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.298347, 1.325739, 4.157548>,  <2.109232, 0.987062, 4.059908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.298347, 1.325739, 4.157548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859108, 0.504517, -0.086001,
		-0.195969, -0.169047, 0.965929,
		0.472789, 0.846691, 0.244099,
		2.440184, 1.579746, 4.230778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.787907, 1.409588, 4.545299>,  <2.109232, 0.987062, 4.059908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.787907, 1.409588, 4.545299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.996338, 1.659111, 4.312287>,  <2.121396, 1.808826, 4.172481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.996338, 1.659111, 4.312287>,  <1.787907, 1.409588, 4.545299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.996338, 1.659111, 4.312287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853477, 0.374875, -0.362002,
		-0.007445, 0.685806, 0.727746,
		0.521077, 0.623810, -0.582529,
		2.152661, 1.846254, 4.137528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.572755, 2.103584, 4.718553>,  <1.787907, 1.409588, 4.545299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.572755, 2.103584, 4.718553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.711727, 2.112765, 4.343583>,  <1.795111, 2.118273, 4.118601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.711727, 2.112765, 4.343583>,  <1.572755, 2.103584, 4.718553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.711727, 2.112765, 4.343583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765520, 0.584291, -0.269412,
		0.541545, 0.811219, 0.220572,
		0.347431, 0.022953, -0.937425,
		1.815956, 2.119651, 4.062356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.441709, 2.718385, 4.448123>,  <1.572755, 2.103584, 4.718553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.441709, 2.718385, 4.448123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.513744, 2.542550, 4.096139>,  <1.556965, 2.437049, 3.884948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.513744, 2.542550, 4.096139>,  <1.441709, 2.718385, 4.448123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.513744, 2.542550, 4.096139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723150, 0.547259, -0.421381,
		0.666800, 0.712229, -0.219333,
		0.180088, -0.439588, -0.879961,
		1.567771, 2.410674, 3.832151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.614140, 3.332040, 3.989656>,  <1.441709, 2.718385, 4.448123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.614140, 3.332040, 3.989656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.481541, 3.008978, 3.794597>,  <1.401981, 2.815140, 3.677561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.481541, 3.008978, 3.794597>,  <1.614140, 3.332040, 3.989656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.481541, 3.008978, 3.794597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774576, 0.528085, -0.348078,
		0.538652, 0.262345, -0.800643,
		-0.331491, -0.807652, -0.487660,
		1.382091, 2.766681, 3.648302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.516731, 3.575884, 3.327984>,  <1.614140, 3.332040, 3.989656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.516731, 3.575884, 3.327984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.290997, 3.246019, 3.343258>,  <1.155556, 3.048100, 3.352423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.290997, 3.246019, 3.343258>,  <1.516731, 3.575884, 3.327984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.290997, 3.246019, 3.343258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802070, 0.536749, -0.261886,
		0.195472, -0.178419, -0.964343,
		-0.564336, -0.824662, 0.038185,
		1.121696, 2.998621, 3.354714>
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
