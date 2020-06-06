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
	<24.143549, 34.695492, 35.046108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.471872, 34.892784, 34.930870>,  <24.668867, 35.011158, 34.861729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.471872, 34.892784, 34.930870>,  <24.143549, 34.695492, 35.046108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.471872, 34.892784, 34.930870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566255, -0.636366, 0.523827,
		0.075033, -0.593096, -0.801628,
		0.820808, 0.493230, -0.288095,
		24.718115, 35.040752, 34.844440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.781038, 34.229347, 34.919933>,  <24.143549, 34.695492, 35.046108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.781038, 34.229347, 34.919933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.928286, 34.592979, 34.997971>,  <25.016634, 34.811157, 35.044792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.928286, 34.592979, 34.997971>,  <24.781038, 34.229347, 34.919933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.928286, 34.592979, 34.997971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723819, -0.411900, 0.553556,
		0.583587, -0.062560, -0.809637,
		0.368120, 0.909079, 0.195097,
		25.038721, 34.865704, 35.056499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551834, 34.239399, 34.849251>,  <24.781038, 34.229347, 34.919933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.551834, 34.239399, 34.849251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.441023, 34.545948, 35.081089>,  <25.374537, 34.729877, 35.220192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.441023, 34.545948, 35.081089>,  <25.551834, 34.239399, 34.849251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.441023, 34.545948, 35.081089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546132, -0.370711, 0.751208,
		0.790566, 0.524641, -0.315843,
		-0.277028, 0.766371, 0.579595,
		25.357914, 34.775860, 35.254967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.103746, 34.726143, 34.591652>,  <25.551834, 34.239399, 34.849251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.103746, 34.726143, 34.591652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989492, 35.053101, 34.391541>,  <25.920940, 35.249275, 34.271473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.989492, 35.053101, 34.391541>,  <26.103746, 34.726143, 34.591652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.989492, 35.053101, 34.391541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839880, 0.464919, 0.280090,
		0.461534, -0.340172, -0.819310,
		-0.285634, 0.817394, -0.500280,
		25.903803, 35.298317, 34.241455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.494312, 34.892601, 33.924419>,  <26.103746, 34.726143, 34.591652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.494312, 34.892601, 33.924419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351410, 35.216633, 34.110378>,  <26.265669, 35.411053, 34.221954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.351410, 35.216633, 34.110378>,  <26.494312, 34.892601, 33.924419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.351410, 35.216633, 34.110378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924752, 0.376680, 0.054275,
		-0.131151, 0.449306, -0.883699,
		-0.357258, 0.810084, 0.464898,
		26.244232, 35.459660, 34.249847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.972446, 34.533405, 33.585762>,  <26.494312, 34.892601, 33.924419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.972446, 34.533405, 33.585762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268724, 34.326843, 33.757668>,  <27.446491, 34.202908, 33.860809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268724, 34.326843, 33.757668>,  <26.972446, 34.533405, 33.585762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268724, 34.326843, 33.757668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005494, -0.644315, -0.764741,
		0.671821, 0.564077, -0.480077,
		0.740694, -0.516406, 0.429765,
		27.490932, 34.171921, 33.886597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386885, 34.034813, 33.226715>,  <26.972446, 34.533405, 33.585762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386885, 34.034813, 33.226715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734825, 34.230560, 33.251640>,  <27.943588, 34.348007, 33.266598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734825, 34.230560, 33.251640>,  <27.386885, 34.034813, 33.226715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734825, 34.230560, 33.251640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119039, -0.085627, -0.989190,
		-0.478739, 0.867865, -0.132736,
		0.869850, 0.489365, 0.062317,
		27.995781, 34.377369, 33.270336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356447, 34.609215, 32.742222>,  <27.386885, 34.034813, 33.226715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.356447, 34.609215, 32.742222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.747332, 34.553280, 32.806099>,  <27.981863, 34.519718, 32.844425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.747332, 34.553280, 32.806099>,  <27.356447, 34.609215, 32.742222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747332, 34.553280, 32.806099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164594, 0.024169, -0.986065,
		0.134031, 0.989879, 0.046635,
		0.977213, -0.139839, 0.159688,
		28.040495, 34.511330, 32.854004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635347, 35.072926, 32.304592>,  <27.356447, 34.609215, 32.742222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635347, 35.072926, 32.304592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944641, 34.842144, 32.409840>,  <28.130217, 34.703674, 32.472988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944641, 34.842144, 32.409840>,  <27.635347, 35.072926, 32.304592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944641, 34.842144, 32.409840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301724, -0.030206, -0.952917,
		0.557738, 0.816217, 0.150725,
		0.773234, -0.576955, 0.263119,
		28.176611, 34.669056, 32.488777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268446, 35.417000, 32.123199>,  <27.635347, 35.072926, 32.304592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268446, 35.417000, 32.123199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358082, 35.027172, 32.123753>,  <28.411863, 34.793278, 32.124084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.358082, 35.027172, 32.123753>,  <28.268446, 35.417000, 32.123199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358082, 35.027172, 32.123753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257644, 0.057875, -0.964505,
		0.939895, 0.216492, 0.264061,
		0.224090, -0.974568, 0.001382,
		28.425308, 34.734802, 32.124168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923094, 35.337723, 31.748625>,  <28.268446, 35.417000, 32.123199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923094, 35.337723, 31.748625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.749872, 34.977177, 31.749744>,  <28.645939, 34.760849, 31.750416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.749872, 34.977177, 31.749744>,  <28.923094, 35.337723, 31.748625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.749872, 34.977177, 31.749744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385711, -0.188118, -0.903238,
		0.814673, -0.390069, 0.429131,
		-0.433052, -0.901365, 0.002801,
		28.619957, 34.706768, 31.750586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405500, 34.901031, 31.337215>,  <28.923094, 35.337723, 31.748625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405500, 34.901031, 31.337215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054426, 34.709618, 31.347580>,  <28.843782, 34.594769, 31.353798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054426, 34.709618, 31.347580>,  <29.405500, 34.901031, 31.337215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054426, 34.709618, 31.347580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057770, -0.159318, -0.985536,
		0.475742, -0.863494, 0.167476,
		-0.877686, -0.478535, 0.025910,
		28.791121, 34.566055, 31.355352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614532, 34.342369, 31.001333>,  <29.405500, 34.901031, 31.337215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614532, 34.342369, 31.001333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215300, 34.347061, 30.977011>,  <28.975760, 34.349876, 30.962418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215300, 34.347061, 30.977011>,  <29.614532, 34.342369, 31.001333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215300, 34.347061, 30.977011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061170, 0.033660, -0.997559,
		-0.009663, -0.999364, -0.034314,
		-0.998080, 0.011738, -0.060806,
		28.915874, 34.350582, 30.958769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454390, 33.923981, 30.465359>,  <29.614532, 34.342369, 31.001333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454390, 33.923981, 30.465359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113262, 34.131218, 30.491518>,  <28.908585, 34.255562, 30.507214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.113262, 34.131218, 30.491518>,  <29.454390, 33.923981, 30.465359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.113262, 34.131218, 30.491518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161513, -0.142603, -0.976513,
		-0.496599, -0.843353, 0.205293,
		-0.852821, 0.518093, 0.065396,
		28.857416, 34.286644, 30.511137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.103804, 33.656219, 29.985113>,  <29.454390, 33.923981, 30.465359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.103804, 33.656219, 29.985113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883661, 33.986824, 30.032423>,  <28.751575, 34.185188, 30.060808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.883661, 33.986824, 30.032423>,  <29.103804, 33.656219, 29.985113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.883661, 33.986824, 30.032423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184475, 0.017784, -0.982677,
		-0.814297, -0.562639, 0.142683,
		-0.550355, 0.826511, 0.118274,
		28.718555, 34.234776, 30.067905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.429937, 33.513611, 29.700876>,  <29.103804, 33.656219, 29.985113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.429937, 33.513611, 29.700876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468973, 33.911373, 29.684677>,  <28.492393, 34.150028, 29.674957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468973, 33.911373, 29.684677>,  <28.429937, 33.513611, 29.700876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468973, 33.911373, 29.684677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348892, -0.003929, -0.937155,
		-0.932068, 0.105585, 0.346555,
		0.097588, 0.994403, -0.040500,
		28.498249, 34.209694, 29.672527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.795984, 33.723595, 29.382008>,  <28.429937, 33.513611, 29.700876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.795984, 33.723595, 29.382008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052519, 34.029076, 29.352463>,  <28.206440, 34.212364, 29.334736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052519, 34.029076, 29.352463>,  <27.795984, 33.723595, 29.382008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052519, 34.029076, 29.352463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212905, 0.084649, -0.973399,
		-0.737131, 0.640000, 0.216883,
		0.641334, 0.763698, -0.073862,
		28.244919, 34.258186, 29.330305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.401764, 34.395866, 29.044525>,  <27.795984, 33.723595, 29.382008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.401764, 34.395866, 29.044525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.795010, 34.402561, 28.971640>,  <28.030958, 34.406578, 28.927908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.795010, 34.402561, 28.971640>,  <27.401764, 34.395866, 29.044525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.795010, 34.402561, 28.971640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169132, 0.463158, -0.869988,
		0.069833, 0.886117, 0.458169,
		0.983116, 0.016737, -0.182215,
		28.089945, 34.407581, 28.916975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442404, 34.856541, 28.526800>,  <27.401764, 34.395866, 29.044525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.442404, 34.856541, 28.526800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816736, 34.715813, 28.518356>,  <28.041336, 34.631378, 28.513290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.816736, 34.715813, 28.518356>,  <27.442404, 34.856541, 28.526800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816736, 34.715813, 28.518356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113062, 0.356393, -0.927470,
		0.333823, 0.865568, 0.373301,
		0.935831, -0.351817, -0.021110,
		28.097485, 34.610268, 28.512024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814611, 35.423721, 28.317783>,  <27.442404, 34.856541, 28.526800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814611, 35.423721, 28.317783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038036, 35.102940, 28.233042>,  <28.172091, 34.910473, 28.182198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.038036, 35.102940, 28.233042>,  <27.814611, 35.423721, 28.317783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.038036, 35.102940, 28.233042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228383, 0.394231, -0.890181,
		0.797402, 0.448838, 0.403355,
		0.558562, -0.801952, -0.211854,
		28.205605, 34.862354, 28.169485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.484093, 35.630131, 28.070238>,  <27.814611, 35.423721, 28.317783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.484093, 35.630131, 28.070238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379679, 35.270390, 27.929941>,  <28.317030, 35.054543, 27.845762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.379679, 35.270390, 27.929941>,  <28.484093, 35.630131, 28.070238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.379679, 35.270390, 27.929941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035499, 0.354150, -0.934515,
		0.964676, -0.256394, -0.060520,
		-0.261037, -0.899355, -0.350742,
		28.301367, 35.000584, 27.824718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946323, 35.489216, 27.571360>,  <28.484093, 35.630131, 28.070238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946323, 35.489216, 27.571360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647823, 35.234257, 27.494585>,  <28.468723, 35.081280, 27.448521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.647823, 35.234257, 27.494585>,  <28.946323, 35.489216, 27.571360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647823, 35.234257, 27.494585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131481, 0.423794, -0.896165,
		0.652555, -0.643525, -0.400061,
		-0.746247, -0.637397, -0.191937,
		28.423948, 35.043037, 27.437004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.848326, 35.308582, 26.822033>,  <28.946323, 35.489216, 27.571360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.848326, 35.308582, 26.822033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485971, 35.197006, 26.949509>,  <28.268559, 35.130058, 27.025993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.485971, 35.197006, 26.949509>,  <28.848326, 35.308582, 26.822033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.485971, 35.197006, 26.949509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400057, 0.316587, -0.860074,
		0.139018, -0.906622, -0.398385,
		-0.905885, -0.278942, 0.318689,
		28.214207, 35.113323, 27.045116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.689438, 34.957996, 26.237015>,  <28.848326, 35.308582, 26.822033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.689438, 34.957996, 26.237015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362301, 35.064827, 26.440899>,  <28.166019, 35.128925, 26.563231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.362301, 35.064827, 26.440899>,  <28.689438, 34.957996, 26.237015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.362301, 35.064827, 26.440899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457509, 0.235470, -0.857461,
		-0.349031, -0.934464, -0.070386,
		-0.817840, 0.267078, 0.509712,
		28.116949, 35.144951, 26.593813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142448, 34.650902, 25.912476>,  <28.689438, 34.957996, 26.237015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142448, 34.650902, 25.912476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995531, 34.954689, 26.127253>,  <27.907381, 35.136963, 26.256119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.995531, 34.954689, 26.127253>,  <28.142448, 34.650902, 25.912476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.995531, 34.954689, 26.127253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467944, 0.348022, -0.812348,
		-0.803819, -0.549628, 0.227563,
		-0.367292, 0.759467, 0.536942,
		27.885344, 35.182529, 26.288336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.344297, 34.715672, 25.883423>,  <28.142448, 34.650902, 25.912476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.344297, 34.715672, 25.883423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556444, 35.048943, 25.946064>,  <27.683733, 35.248905, 25.983648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556444, 35.048943, 25.946064>,  <27.344297, 34.715672, 25.883423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556444, 35.048943, 25.946064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314385, 0.364847, -0.876384,
		-0.787319, 0.415573, 0.455442,
		0.530368, 0.833178, 0.156601,
		27.715555, 35.298897, 25.993044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824738, 35.215187, 25.855976>,  <27.344297, 34.715672, 25.883423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824738, 35.215187, 25.855976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186733, 35.354355, 25.758039>,  <27.403931, 35.437855, 25.699278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186733, 35.354355, 25.758039>,  <26.824738, 35.215187, 25.855976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186733, 35.354355, 25.758039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369205, 0.356323, -0.858325,
		-0.211384, 0.867171, 0.450922,
		0.904989, 0.347919, -0.244843,
		27.458229, 35.458729, 25.684587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949562, 36.023563, 25.720642>,  <26.824738, 35.215187, 25.855976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949562, 36.023563, 25.720642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198517, 35.784725, 25.518213>,  <27.347891, 35.641422, 25.396755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.198517, 35.784725, 25.518213>,  <26.949562, 36.023563, 25.720642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198517, 35.784725, 25.518213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424663, 0.285528, -0.859148,
		0.657491, 0.749634, -0.075855,
		0.622388, -0.597095, -0.506073,
		27.385233, 35.605598, 25.366392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.873419, 36.539696, 25.179821>,  <26.949562, 36.023563, 25.720642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.873419, 36.539696, 25.179821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006004, 36.789192, 24.896673>,  <27.085556, 36.938889, 24.726786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.006004, 36.789192, 24.896673>,  <26.873419, 36.539696, 25.179821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006004, 36.789192, 24.896673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516743, 0.507717, 0.689347,
		0.789372, -0.594280, -0.154025,
		0.331464, 0.623742, -0.707868,
		27.105444, 36.976315, 24.684313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.591574, 36.375187, 25.110374>,  <26.873419, 36.539696, 25.179821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.591574, 36.375187, 25.110374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473150, 36.751965, 25.047020>,  <27.402096, 36.978031, 25.009007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.473150, 36.751965, 25.047020>,  <27.591574, 36.375187, 25.110374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.473150, 36.751965, 25.047020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570995, 0.307464, 0.761204,
		0.765711, 0.134924, -0.628874,
		-0.296061, 0.941945, -0.158387,
		27.384333, 37.034550, 24.999504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186069, 36.749355, 24.960995>,  <27.591574, 36.375187, 25.110374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186069, 36.749355, 24.960995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.876719, 36.943661, 25.123930>,  <27.691109, 37.060246, 25.221691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.876719, 36.943661, 25.123930>,  <28.186069, 36.749355, 24.960995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.876719, 36.943661, 25.123930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588692, 0.311881, 0.745770,
		0.235228, 0.816556, -0.527167,
		-0.773375, 0.485765, 0.407336,
		27.644707, 37.089390, 25.246130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394562, 37.457901, 25.166283>,  <28.186069, 36.749355, 24.960995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394562, 37.457901, 25.166283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091412, 37.302765, 25.376122>,  <27.909521, 37.209682, 25.502024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091412, 37.302765, 25.376122>,  <28.394562, 37.457901, 25.166283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091412, 37.302765, 25.376122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388160, 0.378228, 0.840402,
		-0.524361, 0.840548, -0.136105,
		-0.757877, -0.387843, 0.524595,
		27.864048, 37.186413, 25.533501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820562, 37.640797, 24.469984>,  <28.394562, 37.457901, 25.166283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820562, 37.640797, 24.469984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058971, 37.911926, 24.297791>,  <29.202017, 38.074604, 24.194473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058971, 37.911926, 24.297791>,  <28.820562, 37.640797, 24.469984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058971, 37.911926, 24.297791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596280, -0.014561, 0.802644,
		0.537781, -0.735082, -0.412850,
		0.596021, 0.677822, -0.430484,
		29.237778, 38.115273, 24.168646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504055, 37.350300, 24.395758>,  <28.820562, 37.640797, 24.469984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504055, 37.350300, 24.395758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517603, 37.749638, 24.414394>,  <29.525732, 37.989239, 24.425575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517603, 37.749638, 24.414394>,  <29.504055, 37.350300, 24.395758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517603, 37.749638, 24.414394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572029, -0.057590, 0.818209,
		0.819533, -0.001061, -0.573030,
		0.033869, 0.998340, 0.046590,
		29.527763, 38.049141, 24.428371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241991, 37.580463, 24.358232>,  <29.504055, 37.350300, 24.395758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241991, 37.580463, 24.358232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996063, 37.846779, 24.527334>,  <29.848507, 38.006569, 24.628796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996063, 37.846779, 24.527334>,  <30.241991, 37.580463, 24.358232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996063, 37.846779, 24.527334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567424, 0.001135, 0.823425,
		0.547747, 0.746140, -0.378482,
		-0.614820, 0.665788, 0.422755,
		29.811617, 38.046516, 24.654161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713602, 37.908829, 24.844391>,  <30.241991, 37.580463, 24.358232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713602, 37.908829, 24.844391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345110, 37.999332, 24.970974>,  <30.124016, 38.053635, 25.046923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345110, 37.999332, 24.970974>,  <30.713602, 37.908829, 24.844391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345110, 37.999332, 24.970974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369558, 0.254918, 0.893557,
		0.121503, 0.940119, -0.318453,
		-0.921229, 0.226257, 0.316456,
		30.068741, 38.067211, 25.065910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846684, 38.447536, 25.270601>,  <30.713602, 37.908829, 24.844391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846684, 38.447536, 25.270601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485214, 38.304634, 25.365040>,  <30.268332, 38.218891, 25.421703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485214, 38.304634, 25.365040>,  <30.846684, 38.447536, 25.270601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485214, 38.304634, 25.365040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124627, 0.308060, 0.943169,
		-0.409684, 0.881741, -0.233862,
		-0.903674, -0.357256, 0.236096,
		30.214111, 38.197456, 25.435869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469347, 38.950420, 25.680344>,  <30.846684, 38.447536, 25.270601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469347, 38.950420, 25.680344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285511, 38.604786, 25.762444>,  <30.175209, 38.397404, 25.811703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.285511, 38.604786, 25.762444>,  <30.469347, 38.950420, 25.680344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285511, 38.604786, 25.762444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053696, 0.257713, 0.964728,
		-0.886506, 0.432360, -0.164841,
		-0.459591, -0.864089, 0.205248,
		30.147635, 38.345558, 25.824018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.103863, 39.132896, 26.390411>,  <30.469347, 38.950420, 25.680344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.103863, 39.132896, 26.390411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094727, 38.734730, 26.353256>,  <30.089245, 38.495831, 26.330963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.094727, 38.734730, 26.353256>,  <30.103863, 39.132896, 26.390411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.094727, 38.734730, 26.353256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022317, -0.093397, 0.995379,
		-0.999490, 0.020662, 0.024348,
		-0.022840, -0.995415, -0.092888,
		30.087875, 38.436104, 26.325390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551685, 38.828293, 26.799112>,  <30.103863, 39.132896, 26.390411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551685, 38.828293, 26.799112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825777, 38.541454, 26.748158>,  <29.990232, 38.369350, 26.717585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825777, 38.541454, 26.748158>,  <29.551685, 38.828293, 26.799112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825777, 38.541454, 26.748158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141068, -0.302269, 0.942726,
		-0.714534, -0.628014, -0.308284,
		0.685230, -0.717099, -0.127389,
		30.031345, 38.326324, 26.709940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381527, 38.331898, 27.312428>,  <29.551685, 38.828293, 26.799112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381527, 38.331898, 27.312428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737064, 38.196712, 27.188660>,  <29.950386, 38.115601, 27.114399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737064, 38.196712, 27.188660>,  <29.381527, 38.331898, 27.312428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737064, 38.196712, 27.188660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106889, -0.503719, 0.857229,
		-0.445568, -0.795017, -0.411603,
		0.888844, -0.337958, -0.309420,
		30.003717, 38.095325, 27.095833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481266, 37.665752, 27.640430>,  <29.381527, 38.331898, 27.312428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481266, 37.665752, 27.640430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852266, 37.788910, 27.555632>,  <30.074865, 37.862804, 27.504751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852266, 37.788910, 27.555632>,  <29.481266, 37.665752, 27.640430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852266, 37.788910, 27.555632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284408, -0.213162, 0.934705,
		0.242605, -0.927233, -0.285276,
		0.927499, 0.307899, -0.211998,
		30.130516, 37.881279, 27.492031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907469, 37.187664, 27.915222>,  <29.481266, 37.665752, 27.640430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907469, 37.187664, 27.915222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142702, 37.508999, 27.877691>,  <30.283842, 37.701801, 27.855173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.142702, 37.508999, 27.877691>,  <29.907469, 37.187664, 27.915222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142702, 37.508999, 27.877691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297376, -0.106880, 0.948759,
		0.752147, -0.585853, -0.301748,
		0.588084, 0.803339, -0.093829,
		30.319128, 37.750000, 27.849543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549219, 36.949173, 28.198109>,  <29.907469, 37.187664, 27.915222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549219, 36.949173, 28.198109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571991, 37.348469, 28.204809>,  <30.585653, 37.588047, 28.208830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571991, 37.348469, 28.204809>,  <30.549219, 36.949173, 28.198109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571991, 37.348469, 28.204809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288880, -0.032530, 0.956813,
		0.955671, -0.049631, -0.290223,
		0.056928, 0.998238, 0.016750,
		30.589069, 37.647942, 28.209835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190681, 37.196213, 28.392689>,  <30.549219, 36.949173, 28.198109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190681, 37.196213, 28.392689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928938, 37.485687, 28.480408>,  <30.771891, 37.659370, 28.533039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.928938, 37.485687, 28.480408>,  <31.190681, 37.196213, 28.392689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928938, 37.485687, 28.480408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312375, -0.005408, 0.949943,
		0.688646, 0.690109, -0.222523,
		-0.654361, 0.723685, 0.219297,
		30.732630, 37.702793, 28.546196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396378, 37.347591, 29.021601>,  <31.190681, 37.196213, 28.392689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396378, 37.347591, 29.021601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045912, 37.539352, 29.001537>,  <30.835632, 37.654408, 28.989500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045912, 37.539352, 29.001537>,  <31.396378, 37.347591, 29.021601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045912, 37.539352, 29.001537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058178, -0.001880, 0.998305,
		0.478491, 0.877596, 0.029538,
		-0.876163, 0.479398, -0.050157,
		30.783062, 37.683170, 28.986490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429249, 37.929764, 29.476580>,  <31.396378, 37.347591, 29.021601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429249, 37.929764, 29.476580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044365, 37.836510, 29.420290>,  <30.813435, 37.780556, 29.386517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.044365, 37.836510, 29.420290>,  <31.429249, 37.929764, 29.476580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.044365, 37.836510, 29.420290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115363, -0.119131, 0.986154,
		-0.246674, 0.965119, 0.087733,
		-0.962208, -0.233137, -0.140725,
		30.755703, 37.766567, 29.378073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143238, 38.183640, 30.053282>,  <31.429249, 37.929764, 29.476580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143238, 38.183640, 30.053282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877174, 37.912148, 29.928774>,  <30.717535, 37.749252, 29.854069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.877174, 37.912148, 29.928774>,  <31.143238, 38.183640, 30.053282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.877174, 37.912148, 29.928774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140213, -0.295914, 0.944868,
		-0.733418, 0.672133, 0.101664,
		-0.665160, -0.678729, -0.311270,
		30.677626, 37.708530, 29.835392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540323, 38.250031, 30.536697>,  <31.143238, 38.183640, 30.053282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540323, 38.250031, 30.536697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496496, 37.883953, 30.381563>,  <30.470200, 37.664307, 30.288483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.496496, 37.883953, 30.381563>,  <30.540323, 38.250031, 30.536697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496496, 37.883953, 30.381563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227155, -0.356803, 0.906141,
		-0.967675, 0.187384, -0.168797,
		-0.109569, -0.915193, -0.387835,
		30.463625, 37.609394, 30.265213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.929890, 37.968060, 30.818640>,  <30.540323, 38.250031, 30.536697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.929890, 37.968060, 30.818640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159197, 37.657211, 30.714756>,  <30.296782, 37.470703, 30.652426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.159197, 37.657211, 30.714756>,  <29.929890, 37.968060, 30.818640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159197, 37.657211, 30.714756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173838, -0.425103, 0.888295,
		-0.800715, -0.464083, -0.378791,
		0.573268, -0.777120, -0.259711,
		30.331177, 37.424076, 30.636843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655308, 37.497959, 31.183058>,  <29.929890, 37.968060, 30.818640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655308, 37.497959, 31.183058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977528, 37.290516, 31.068424>,  <30.170860, 37.166050, 30.999645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977528, 37.290516, 31.068424>,  <29.655308, 37.497959, 31.183058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977528, 37.290516, 31.068424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046602, -0.537616, 0.841901,
		-0.590692, -0.664838, -0.457245,
		0.805550, -0.518613, -0.286583,
		30.219193, 37.134933, 30.982450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422871, 36.846897, 31.319635>,  <29.655308, 37.497959, 31.183058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422871, 36.846897, 31.319635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822363, 36.851524, 31.300020>,  <30.062057, 36.854301, 31.288252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.822363, 36.851524, 31.300020>,  <29.422871, 36.846897, 31.319635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.822363, 36.851524, 31.300020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046716, -0.577191, 0.815272,
		-0.018872, -0.816527, -0.576998,
		0.998730, 0.011569, -0.049037,
		30.121983, 36.854996, 31.285309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581093, 36.187206, 31.305223>,  <29.422871, 36.846897, 31.319635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581093, 36.187206, 31.305223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911652, 36.366520, 31.441521>,  <30.109987, 36.474110, 31.523298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.911652, 36.366520, 31.441521>,  <29.581093, 36.187206, 31.305223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911652, 36.366520, 31.441521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013128, -0.620309, 0.784247,
		0.562933, -0.643627, -0.518507,
		0.826398, 0.448286, 0.340743,
		30.159571, 36.501007, 31.543743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685966, 35.832771, 31.807209>,  <29.581093, 36.187206, 31.305223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.685966, 35.832771, 31.807209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980394, 36.098316, 31.860111>,  <30.157051, 36.257641, 31.891853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.980394, 36.098316, 31.860111>,  <29.685966, 35.832771, 31.807209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980394, 36.098316, 31.860111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123668, -0.323981, 0.937946,
		0.665514, -0.674037, -0.320570,
		0.736069, 0.663860, 0.132257,
		30.201216, 36.297474, 31.899788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310390, 35.437904, 32.054539>,  <29.685966, 35.832771, 31.807209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310390, 35.437904, 32.054539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312841, 35.817921, 32.179367>,  <30.314312, 36.045929, 32.254265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.312841, 35.817921, 32.179367>,  <30.310390, 35.437904, 32.054539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312841, 35.817921, 32.179367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000963, -0.312083, 0.950054,
		0.999981, -0.005520, -0.002826,
		0.006126, 0.950039, 0.312072,
		30.314680, 36.102932, 32.272987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.955761, 35.556286, 32.473854>,  <30.310390, 35.437904, 32.054539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.955761, 35.556286, 32.473854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705723, 35.857452, 32.556187>,  <30.555700, 36.038155, 32.605587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705723, 35.857452, 32.556187>,  <30.955761, 35.556286, 32.473854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705723, 35.857452, 32.556187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148581, -0.144103, 0.978345,
		0.766275, 0.642143, -0.021791,
		-0.625097, 0.752919, 0.205832,
		30.518194, 36.083328, 32.617935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257647, 35.932201, 33.047649>,  <30.955761, 35.556286, 32.473854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257647, 35.932201, 33.047649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.868202, 36.023472, 33.049183>,  <30.634535, 36.078232, 33.050102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.868202, 36.023472, 33.049183>,  <31.257647, 35.932201, 33.047649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.868202, 36.023472, 33.049183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029312, -0.141695, 0.989476,
		0.226314, 0.963255, 0.144645,
		-0.973613, 0.228173, 0.003832,
		30.576118, 36.091923, 33.050331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217699, 36.152294, 33.741631>,  <31.257647, 35.932201, 33.047649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217699, 36.152294, 33.741631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846659, 36.072746, 33.615135>,  <30.624035, 36.025017, 33.539238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.846659, 36.072746, 33.615135>,  <31.217699, 36.152294, 33.741631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.846659, 36.072746, 33.615135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310514, -0.060175, 0.948662,
		-0.207693, 0.978176, -0.005934,
		-0.927602, -0.198874, -0.316235,
		30.568378, 36.013084, 33.520264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760262, 36.689060, 34.099323>,  <31.217699, 36.152294, 33.741631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760262, 36.689060, 34.099323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578611, 36.347034, 33.999214>,  <30.469622, 36.141819, 33.939148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.578611, 36.347034, 33.999214>,  <30.760262, 36.689060, 34.099323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578611, 36.347034, 33.999214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455600, -0.018530, 0.889992,
		-0.765636, 0.518194, -0.381151,
		-0.454126, -0.855062, -0.250277,
		30.442373, 36.090515, 33.924129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976143, 37.022381, 34.724186>,  <30.760262, 36.689060, 34.099323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976143, 37.022381, 34.724186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187490, 36.918591, 34.400829>,  <31.314299, 36.856316, 34.206814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187490, 36.918591, 34.400829>,  <30.976143, 37.022381, 34.724186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187490, 36.918591, 34.400829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821297, -0.085107, 0.564118,
		-0.215174, -0.961993, 0.168138,
		0.528367, -0.259475, -0.808394,
		31.346001, 36.840748, 34.158310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591881, 36.619869, 34.752998>,  <30.976143, 37.022381, 34.724186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591881, 36.619869, 34.752998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743935, 36.821075, 34.442520>,  <31.835167, 36.941799, 34.256233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.743935, 36.821075, 34.442520>,  <31.591881, 36.619869, 34.752998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743935, 36.821075, 34.442520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844817, 0.152807, 0.512771,
		0.376539, -0.850662, -0.366869,
		0.380134, 0.503016, -0.776191,
		31.857975, 36.971981, 34.209663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269047, 36.382492, 34.518044>,  <31.591881, 36.619869, 34.752998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269047, 36.382492, 34.518044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156898, 36.765205, 34.487148>,  <32.089611, 36.994831, 34.468613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156898, 36.765205, 34.487148>,  <32.269047, 36.382492, 34.518044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156898, 36.765205, 34.487148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809891, 0.278979, 0.515991,
		0.515237, 0.082113, -0.853105,
		-0.280368, 0.956780, -0.077238,
		32.072788, 37.052238, 34.463978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797455, 36.702618, 34.300468>,  <32.269047, 36.382492, 34.518044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797455, 36.702618, 34.300468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584423, 36.955627, 34.525421>,  <32.456604, 37.107433, 34.660393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584423, 36.955627, 34.525421>,  <32.797455, 36.702618, 34.300468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584423, 36.955627, 34.525421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791667, 0.137261, 0.595334,
		0.299374, 0.762277, -0.573854,
		-0.532578, 0.632529, 0.562377,
		32.424648, 37.145386, 34.694134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047318, 35.886494, 34.410824>,  <32.797455, 36.702618, 34.300468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047318, 35.886494, 34.410824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286293, 35.590412, 34.287426>,  <33.429680, 35.412766, 34.213387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286293, 35.590412, 34.287426>,  <33.047318, 35.886494, 34.410824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286293, 35.590412, 34.287426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112846, -0.458467, 0.881518,
		-0.793934, -0.491842, -0.357436,
		0.597440, -0.740202, -0.308491,
		33.465527, 35.368351, 34.194878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826309, 35.214977, 34.758263>,  <33.047318, 35.886494, 34.410824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826309, 35.214977, 34.758263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201405, 35.120716, 34.656189>,  <33.426460, 35.064159, 34.594944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201405, 35.120716, 34.656189>,  <32.826309, 35.214977, 34.758263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201405, 35.120716, 34.656189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053278, -0.628384, 0.776077,
		-0.343236, -0.741352, -0.576704,
		0.937737, -0.235651, -0.255182,
		33.482727, 35.050022, 34.579636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977657, 34.418396, 34.666569>,  <32.826309, 35.214977, 34.758263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977657, 34.418396, 34.666569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335793, 34.583542, 34.733398>,  <33.550674, 34.682629, 34.773499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.335793, 34.583542, 34.733398>,  <32.977657, 34.418396, 34.666569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.335793, 34.583542, 34.733398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082149, -0.521767, 0.849124,
		0.437748, -0.746527, -0.501073,
		0.895337, 0.412865, 0.167076,
		33.604393, 34.707401, 34.783520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252686, 33.938995, 35.052959>,  <32.977657, 34.418396, 34.666569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252686, 33.938995, 35.052959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504143, 34.241520, 35.125412>,  <33.655018, 34.423035, 35.168884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504143, 34.241520, 35.125412>,  <33.252686, 33.938995, 35.052959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504143, 34.241520, 35.125412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269585, -0.430391, 0.861445,
		0.729476, -0.492709, -0.474450,
		0.628641, 0.756308, 0.181133,
		33.692734, 34.468410, 35.179752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771183, 33.554855, 35.349087>,  <33.252686, 33.938995, 35.052959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771183, 33.554855, 35.349087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817493, 33.939774, 35.447544>,  <33.845280, 34.170723, 35.506618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.817493, 33.939774, 35.447544>,  <33.771183, 33.554855, 35.349087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817493, 33.939774, 35.447544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401387, -0.272005, 0.874587,
		0.908562, -0.002456, -0.417744,
		0.115776, 0.962293, 0.246147,
		33.852226, 34.228462, 35.521389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465126, 33.629639, 35.575665>,  <33.771183, 33.554855, 35.349087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465126, 33.629639, 35.575665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256924, 33.928528, 35.740944>,  <34.132004, 34.107861, 35.840111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256924, 33.928528, 35.740944>,  <34.465126, 33.629639, 35.575665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256924, 33.928528, 35.740944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414048, -0.202339, 0.887482,
		0.746752, 0.633023, -0.204067,
		-0.520506, 0.747222, 0.413199,
		34.100773, 34.152695, 35.864902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904682, 33.926777, 35.983696>,  <34.465126, 33.629639, 35.575665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904682, 33.926777, 35.983696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563663, 34.074661, 36.131466>,  <34.359051, 34.163391, 36.220127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.563663, 34.074661, 36.131466>,  <34.904682, 33.926777, 35.983696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563663, 34.074661, 36.131466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364122, -0.086914, 0.927287,
		0.374939, 0.925072, -0.060522,
		-0.852547, 0.369714, 0.369427,
		34.307899, 34.185574, 36.242294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160133, 34.234570, 36.566120>,  <34.904682, 33.926777, 35.983696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160133, 34.234570, 36.566120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763821, 34.201618, 36.609135>,  <34.526031, 34.181847, 36.634945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763821, 34.201618, 36.609135>,  <35.160133, 34.234570, 36.566120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763821, 34.201618, 36.609135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116515, -0.113291, 0.986706,
		-0.069103, 0.990141, 0.121845,
		-0.990782, -0.082381, 0.107538,
		34.466587, 34.176903, 36.641396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057259, 34.661476, 37.129654>,  <35.160133, 34.234570, 36.566120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057259, 34.661476, 37.129654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733841, 34.427757, 37.101803>,  <34.539791, 34.287525, 37.085094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733841, 34.427757, 37.101803>,  <35.057259, 34.661476, 37.129654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733841, 34.427757, 37.101803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025000, -0.152327, 0.988014,
		-0.587900, 0.797115, 0.137772,
		-0.808547, -0.584298, -0.069625,
		34.491276, 34.252468, 37.080914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575607, 34.790939, 37.691734>,  <35.057259, 34.661476, 37.129654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575607, 34.790939, 37.691734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430836, 34.432030, 37.590622>,  <34.343971, 34.216682, 37.529953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430836, 34.432030, 37.590622>,  <34.575607, 34.790939, 37.691734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430836, 34.432030, 37.590622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027748, -0.281419, 0.959184,
		-0.931792, 0.340144, 0.126752,
		-0.361931, -0.897277, -0.252785,
		34.322258, 34.162846, 37.514786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069706, 34.719738, 38.115276>,  <34.575607, 34.790939, 37.691734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069706, 34.719738, 38.115276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190018, 34.358036, 37.994045>,  <34.262203, 34.141014, 37.921307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190018, 34.358036, 37.994045>,  <34.069706, 34.719738, 38.115276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190018, 34.358036, 37.994045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024525, -0.325024, 0.945388,
		-0.953379, -0.276918, -0.119937,
		0.300777, -0.904254, -0.303079,
		34.280251, 34.086761, 37.903122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703899, 34.336926, 38.503021>,  <34.069706, 34.719738, 38.115276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703899, 34.336926, 38.503021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002754, 34.097450, 38.387531>,  <34.182068, 33.953766, 38.318237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002754, 34.097450, 38.387531>,  <33.703899, 34.336926, 38.503021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002754, 34.097450, 38.387531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006850, -0.441294, 0.897336,
		-0.664639, -0.668452, -0.333806,
		0.747133, -0.598692, -0.288723,
		34.226894, 33.917843, 38.300915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498718, 33.615105, 38.621967>,  <33.703899, 34.336926, 38.503021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498718, 33.615105, 38.621967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896881, 33.653347, 38.620014>,  <34.135780, 33.676292, 38.618843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896881, 33.653347, 38.620014>,  <33.498718, 33.615105, 38.621967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896881, 33.653347, 38.620014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059192, -0.574572, 0.816311,
		0.075240, -0.812851, -0.577592,
		0.995407, 0.095608, -0.004883,
		34.195503, 33.682030, 38.618549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682323, 32.911861, 38.563309>,  <33.498718, 33.615105, 38.621967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682323, 32.911861, 38.563309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980125, 33.128639, 38.719261>,  <34.158806, 33.258705, 38.812832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980125, 33.128639, 38.719261>,  <33.682323, 32.911861, 38.563309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980125, 33.128639, 38.719261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081920, -0.653731, 0.752280,
		0.662570, -0.528139, -0.531103,
		0.744507, 0.541946, 0.389877,
		34.203476, 33.291222, 38.836224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217014, 32.422188, 38.651550>,  <33.682323, 32.911861, 38.563309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217014, 32.422188, 38.651550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297344, 32.726429, 38.898502>,  <34.345543, 32.908974, 39.046673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.297344, 32.726429, 38.898502>,  <34.217014, 32.422188, 38.651550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297344, 32.726429, 38.898502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017846, -0.627276, 0.778593,
		0.979465, -0.167375, -0.112396,
		0.200821, 0.760599, 0.617382,
		34.357590, 32.954609, 39.083717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450970, 32.095985, 39.164509>,  <34.217014, 32.422188, 38.651550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450970, 32.095985, 39.164509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411701, 32.459888, 39.325855>,  <34.388138, 32.678230, 39.422661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411701, 32.459888, 39.325855>,  <34.450970, 32.095985, 39.164509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411701, 32.459888, 39.325855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207359, -0.415126, 0.885817,
		0.973326, 0.003323, 0.229401,
		-0.098174, 0.909758, 0.403364,
		34.382248, 32.732815, 39.446865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.843330, 32.061352, 39.720188>,  <34.450970, 32.095985, 39.164509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.843330, 32.061352, 39.720188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581470, 32.359047, 39.773174>,  <34.424355, 32.537663, 39.804966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581470, 32.359047, 39.773174>,  <34.843330, 32.061352, 39.720188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581470, 32.359047, 39.773174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283929, -0.404488, 0.869352,
		0.700587, 0.531507, 0.476108,
		-0.654646, 0.744238, 0.132469,
		34.385078, 32.582317, 39.812916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.874535, 32.181961, 40.482002>,  <34.843330, 32.061352, 39.720188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.874535, 32.181961, 40.482002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525398, 32.353836, 40.389469>,  <34.315918, 32.456963, 40.333950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525398, 32.353836, 40.389469>,  <34.874535, 32.181961, 40.482002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525398, 32.353836, 40.389469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425656, -0.438497, 0.791541,
		0.238676, 0.789359, 0.565638,
		-0.872841, 0.429689, -0.231336,
		34.263546, 32.482742, 40.320068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.601303, 32.352276, 41.096310>,  <34.874535, 32.181961, 40.482002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.601303, 32.352276, 41.096310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299450, 32.329361, 40.834854>,  <34.118340, 32.315613, 40.677979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.299450, 32.329361, 40.834854>,  <34.601303, 32.352276, 41.096310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299450, 32.329361, 40.834854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526457, -0.541724, 0.655270,
		-0.391630, 0.838602, 0.378645,
		-0.754632, -0.057283, -0.653643,
		34.073059, 32.312176, 40.638760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909145, 32.309044, 41.572697>,  <34.601303, 32.352276, 41.096310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909145, 32.309044, 41.572697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806843, 32.194141, 41.203465>,  <33.745461, 32.125198, 40.981926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806843, 32.194141, 41.203465>,  <33.909145, 32.309044, 41.572697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806843, 32.194141, 41.203465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636530, -0.668613, 0.384431,
		-0.727612, 0.685886, -0.011850,
		-0.255753, -0.287259, -0.923078,
		33.730118, 32.107964, 40.926540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134991, 32.376842, 41.565685>,  <33.909145, 32.309044, 41.572697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134991, 32.376842, 41.565685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270477, 32.109631, 41.300655>,  <33.351768, 31.949303, 41.141636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270477, 32.109631, 41.300655>,  <33.134991, 32.376842, 41.565685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270477, 32.109631, 41.300655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642645, -0.678607, 0.355667,
		-0.687228, 0.305336, -0.659157,
		0.338710, -0.668028, -0.662581,
		33.372093, 31.909222, 41.101883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.561138, 31.975033, 41.334015>,  <33.134991, 32.376842, 41.565685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.561138, 31.975033, 41.334015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886848, 31.752590, 41.267445>,  <33.082275, 31.619123, 41.227505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.886848, 31.752590, 41.267445>,  <32.561138, 31.975033, 41.334015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.886848, 31.752590, 41.267445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452691, -0.787826, 0.417612,
		-0.363349, -0.264715, -0.893254,
		0.814278, -0.556108, -0.166422,
		33.131130, 31.585758, 41.217518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312241, 31.360155, 41.298546>,  <32.561138, 31.975033, 41.334015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312241, 31.360155, 41.298546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700020, 31.263504, 41.315456>,  <32.932686, 31.205513, 41.325603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700020, 31.263504, 41.315456>,  <32.312241, 31.360155, 41.298546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700020, 31.263504, 41.315456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228143, -0.824832, 0.517304,
		-0.090121, -0.511145, -0.854757,
		0.969448, -0.241627, 0.042280,
		32.990852, 31.191015, 41.328140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223774, 30.702984, 41.365257>,  <32.312241, 31.360155, 41.298546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223774, 30.702984, 41.365257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615852, 30.727371, 41.440628>,  <32.851097, 30.742004, 41.485851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615852, 30.727371, 41.440628>,  <32.223774, 30.702984, 41.365257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615852, 30.727371, 41.440628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072007, -0.776602, 0.625862,
		0.184492, -0.627034, -0.756830,
		0.980193, 0.060970, 0.188428,
		32.909908, 30.745663, 41.497158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492817, 29.985994, 41.339058>,  <32.223774, 30.702984, 41.365257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492817, 29.985994, 41.339058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751953, 30.201067, 41.554909>,  <32.907436, 30.330111, 41.684418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751953, 30.201067, 41.554909>,  <32.492817, 29.985994, 41.339058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751953, 30.201067, 41.554909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187979, -0.573638, 0.797247,
		0.738215, -0.617930, -0.270555,
		0.647844, 0.537681, 0.539627,
		32.946308, 30.362371, 41.716797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831783, 29.489208, 41.769997>,  <32.492817, 29.985994, 41.339058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831783, 29.489208, 41.769997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933750, 29.822721, 41.965885>,  <32.994930, 30.022829, 42.083416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933750, 29.822721, 41.965885>,  <32.831783, 29.489208, 41.769997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933750, 29.822721, 41.965885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128520, -0.531171, 0.837461,
		0.958384, -0.150544, -0.242562,
		0.254916, 0.833783, 0.489718,
		33.010223, 30.072857, 42.112801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582855, 29.449051, 41.971413>,  <32.831783, 29.489208, 41.769997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582855, 29.449051, 41.971413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361244, 29.672182, 42.218597>,  <33.228279, 29.806061, 42.366909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.361244, 29.672182, 42.218597>,  <33.582855, 29.449051, 41.971413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.361244, 29.672182, 42.218597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255779, -0.592340, 0.764009,
		0.792231, 0.581346, 0.185493,
		-0.554028, 0.557826, 0.617966,
		33.195034, 29.839531, 42.403988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933094, 29.397995, 42.645527>,  <33.582855, 29.449051, 41.971413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933094, 29.397995, 42.645527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571156, 29.541845, 42.736671>,  <33.353992, 29.628155, 42.791359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571156, 29.541845, 42.736671>,  <33.933094, 29.397995, 42.645527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571156, 29.541845, 42.736671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119803, -0.298506, 0.946859,
		0.408532, 0.884061, 0.227018,
		-0.904847, 0.359625, 0.227863,
		33.299702, 29.649733, 42.805031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950222, 29.793943, 43.318775>,  <33.933094, 29.397995, 42.645527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950222, 29.793943, 43.318775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564945, 29.695999, 43.274399>,  <33.333778, 29.637232, 43.247772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.564945, 29.695999, 43.274399>,  <33.950222, 29.793943, 43.318775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564945, 29.695999, 43.274399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053305, -0.230516, 0.971607,
		-0.263482, 0.941756, 0.208979,
		-0.963191, -0.244861, -0.110937,
		33.275990, 29.622541, 43.241119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618992, 30.087206, 43.849117>,  <33.950222, 29.793943, 43.318775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618992, 30.087206, 43.849117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366535, 29.801258, 43.728706>,  <33.215061, 29.629688, 43.656460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.366535, 29.801258, 43.728706>,  <33.618992, 30.087206, 43.849117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366535, 29.801258, 43.728706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212300, -0.214070, 0.953469,
		-0.746049, 0.665683, -0.016659,
		-0.631142, -0.714871, -0.301031,
		33.177193, 29.586798, 43.638397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880722, 30.221764, 44.037907>,  <33.618992, 30.087206, 43.849117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880722, 30.221764, 44.037907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964596, 29.833012, 43.995049>,  <33.014919, 29.599760, 43.969334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964596, 29.833012, 43.995049>,  <32.880722, 30.221764, 44.037907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964596, 29.833012, 43.995049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345227, -0.176116, 0.921847,
		-0.914796, -0.156305, -0.372448,
		0.209683, -0.971881, -0.107150,
		33.027500, 29.541447, 43.962902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690037, 30.126587, 44.812622>,  <32.880722, 30.221764, 44.037907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690037, 30.126587, 44.812622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757660, 29.772778, 44.638710>,  <32.798233, 29.560492, 44.534363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.757660, 29.772778, 44.638710>,  <32.690037, 30.126587, 44.812622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757660, 29.772778, 44.638710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122885, -0.456608, 0.881140,
		-0.977916, -0.095532, -0.185887,
		0.169055, -0.884524, -0.434785,
		32.808376, 29.507420, 44.508274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207531, 29.620338, 45.065834>,  <32.690037, 30.126587, 44.812622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207531, 29.620338, 45.065834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530792, 29.411907, 44.956024>,  <32.724751, 29.286848, 44.890141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530792, 29.411907, 44.956024>,  <32.207531, 29.620338, 45.065834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530792, 29.411907, 44.956024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005962, -0.473316, 0.880872,
		-0.588940, -0.710245, -0.385620,
		0.808155, -0.521080, -0.274520,
		32.773239, 29.255583, 44.873669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066116, 28.926868, 45.240448>,  <32.207531, 29.620338, 45.065834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066116, 28.926868, 45.240448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462811, 28.945009, 45.192448>,  <32.700829, 28.955894, 45.163647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462811, 28.945009, 45.192448>,  <32.066116, 28.926868, 45.240448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462811, 28.945009, 45.192448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121482, -0.632614, 0.764880,
		-0.041226, -0.773138, -0.632896,
		0.991737, 0.045353, -0.120002,
		32.760330, 28.958614, 45.156448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226349, 28.293127, 45.178848>,  <32.066116, 28.926868, 45.240448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226349, 28.293127, 45.178848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576630, 28.458868, 45.278011>,  <32.786797, 28.558313, 45.337509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576630, 28.458868, 45.278011>,  <32.226349, 28.293127, 45.178848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576630, 28.458868, 45.278011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121209, -0.685624, 0.717793,
		0.467394, -0.598523, -0.650625,
		0.875701, 0.414354, 0.247910,
		32.839340, 28.583174, 45.352383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709377, 27.750399, 45.173050>,  <32.226349, 28.293127, 45.178848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709377, 27.750399, 45.173050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881660, 28.019804, 45.413338>,  <32.985031, 28.181448, 45.557510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881660, 28.019804, 45.413338>,  <32.709377, 27.750399, 45.173050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881660, 28.019804, 45.413338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197785, -0.719890, 0.665312,
		0.880552, -0.167742, -0.443274,
		0.430709, 0.673514, 0.600723,
		33.010872, 28.221859, 45.593555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248371, 27.401089, 45.441971>,  <32.709377, 27.750399, 45.173050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248371, 27.401089, 45.441971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223663, 27.712479, 45.691822>,  <33.208839, 27.899313, 45.841732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.223663, 27.712479, 45.691822>,  <33.248371, 27.401089, 45.441971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223663, 27.712479, 45.691822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253123, -0.593149, 0.764266,
		0.965460, 0.205316, -0.160412,
		-0.061768, 0.778472, 0.624632,
		33.205132, 27.946020, 45.879211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713787, 27.312077, 45.851311>,  <33.248371, 27.401089, 45.441971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713787, 27.312077, 45.851311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475891, 27.561356, 46.054451>,  <33.333153, 27.710922, 46.176334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475891, 27.561356, 46.054451>,  <33.713787, 27.312077, 45.851311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475891, 27.561356, 46.054451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217001, -0.483826, 0.847834,
		0.774080, 0.614443, 0.152514,
		-0.594736, 0.623196, 0.507854,
		33.297470, 27.748314, 46.206806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127670, 27.472195, 46.344513>,  <33.713787, 27.312077, 45.851311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127670, 27.472195, 46.344513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753513, 27.559561, 46.455750>,  <33.529018, 27.611980, 46.522491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.753513, 27.559561, 46.455750>,  <34.127670, 27.472195, 46.344513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.753513, 27.559561, 46.455750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145495, -0.479051, 0.865645,
		0.322289, 0.850179, 0.416322,
		-0.935393, 0.218415, 0.278090,
		33.472897, 27.625086, 46.539177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142223, 27.512068, 47.065914>,  <34.127670, 27.472195, 46.344513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142223, 27.512068, 47.065914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751690, 27.446936, 47.008980>,  <33.517368, 27.407856, 46.974819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.751690, 27.446936, 47.008980>,  <34.142223, 27.512068, 47.065914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751690, 27.446936, 47.008980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029125, -0.553144, 0.832576,
		-0.214299, 0.817018, 0.535311,
		-0.976334, -0.162829, -0.142334,
		33.458790, 27.398087, 46.966278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858414, 27.728550, 47.744789>,  <34.142223, 27.512068, 47.065914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858414, 27.728550, 47.744789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574383, 27.531338, 47.543705>,  <33.403965, 27.413012, 47.423054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574383, 27.531338, 47.543705>,  <33.858414, 27.728550, 47.744789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574383, 27.531338, 47.543705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210414, -0.532750, 0.819697,
		-0.671953, 0.687823, 0.274552,
		-0.710074, -0.493029, -0.502711,
		33.361362, 27.383429, 47.392891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.171700, 27.838968, 48.093830>,  <33.858414, 27.728550, 47.744789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.171700, 27.838968, 48.093830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162762, 27.494236, 47.891148>,  <33.157398, 27.287397, 47.769539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162762, 27.494236, 47.891148>,  <33.171700, 27.838968, 48.093830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162762, 27.494236, 47.891148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169858, -0.496193, 0.851435,
		-0.985215, 0.105091, -0.135302,
		-0.022343, -0.861828, -0.506707,
		33.156059, 27.235687, 47.739136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644485, 27.489935, 48.374729>,  <33.171700, 27.838968, 48.093830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644485, 27.489935, 48.374729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904873, 27.211245, 48.254181>,  <33.061104, 27.044031, 48.181854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904873, 27.211245, 48.254181>,  <32.644485, 27.489935, 48.374729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904873, 27.211245, 48.254181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206312, -0.544438, 0.813033,
		-0.730535, -0.467079, -0.498152,
		0.650964, -0.696724, -0.301367,
		33.100163, 27.002228, 48.163773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323303, 26.838343, 48.343159>,  <32.644485, 27.489935, 48.374729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323303, 26.838343, 48.343159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701744, 26.711004, 48.366951>,  <32.928810, 26.634602, 48.381226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.701744, 26.711004, 48.366951>,  <32.323303, 26.838343, 48.343159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.701744, 26.711004, 48.366951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285574, -0.733460, 0.616834,
		-0.152743, -0.600576, -0.784843,
		0.946106, -0.318348, 0.059478,
		32.985577, 26.615499, 48.384796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184868, 26.117722, 48.273365>,  <32.323303, 26.838343, 48.343159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184868, 26.117722, 48.273365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556885, 26.155155, 48.415493>,  <32.780094, 26.177616, 48.500771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556885, 26.155155, 48.415493>,  <32.184868, 26.117722, 48.273365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556885, 26.155155, 48.415493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150435, -0.785283, 0.600583,
		0.335235, -0.612023, -0.716271,
		0.930046, 0.093585, 0.355324,
		32.835899, 26.183231, 48.522091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413528, 25.494308, 48.372196>,  <32.184868, 26.117722, 48.273365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413528, 25.494308, 48.372196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617252, 25.731585, 48.621590>,  <32.739487, 25.873951, 48.771225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617252, 25.731585, 48.621590>,  <32.413528, 25.494308, 48.372196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617252, 25.731585, 48.621590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189110, -0.629636, 0.753523,
		0.839550, -0.501680, -0.208499,
		0.509306, 0.593191, 0.623484,
		32.770042, 25.909542, 48.808636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.848698, 25.091135, 48.799969>,  <32.413528, 25.494308, 48.372196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.848698, 25.091135, 48.799969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783638, 25.419739, 49.018570>,  <32.744602, 25.616901, 49.149731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.783638, 25.419739, 49.018570>,  <32.848698, 25.091135, 48.799969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783638, 25.419739, 49.018570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255492, -0.570054, 0.780873,
		0.953032, -0.012623, 0.302606,
		-0.162645, 0.821510, 0.546505,
		32.734844, 25.666191, 49.182522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133450, 24.947948, 49.413708>,  <32.848698, 25.091135, 48.799969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133450, 24.947948, 49.413708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860477, 25.237368, 49.455212>,  <32.696693, 25.411020, 49.480114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.860477, 25.237368, 49.455212>,  <33.133450, 24.947948, 49.413708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860477, 25.237368, 49.455212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486703, -0.555701, 0.674030,
		0.545353, 0.409479, 0.731380,
		-0.682430, 0.723549, 0.103759,
		32.655750, 25.454432, 49.486340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476124, 24.640018, 48.795746>,  <33.133450, 24.947948, 49.413708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476124, 24.640018, 48.795746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507694, 25.030775, 48.716293>,  <33.526638, 25.265228, 48.668621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.507694, 25.030775, 48.716293>,  <33.476124, 24.640018, 48.795746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507694, 25.030775, 48.716293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027802, -0.197021, -0.980005,
		-0.996493, 0.082871, 0.011609,
		0.078927, 0.976890, -0.198634,
		33.531372, 25.323843, 48.656704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771034, 25.039886, 48.055450>,  <33.476124, 24.640018, 48.795746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771034, 25.039886, 48.055450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757767, 24.656500, 47.942142>,  <33.749805, 24.426468, 47.874157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.757767, 24.656500, 47.942142>,  <33.771034, 25.039886, 48.055450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757767, 24.656500, 47.942142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586252, 0.210884, -0.782199,
		0.809449, -0.192014, 0.554908,
		-0.033172, -0.958467, -0.283268,
		33.747814, 24.368959, 47.857162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402912, 24.728214, 48.124344>,  <33.771034, 25.039886, 48.055450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402912, 24.728214, 48.124344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211369, 24.561684, 47.815186>,  <34.096443, 24.461765, 47.629692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211369, 24.561684, 47.815186>,  <34.402912, 24.728214, 48.124344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211369, 24.561684, 47.815186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665753, 0.401664, -0.628839,
		0.572246, -0.815683, 0.084828,
		-0.478861, -0.416325, -0.772894,
		34.067711, 24.436787, 47.583317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891304, 24.415840, 47.502956>,  <34.402912, 24.728214, 48.124344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891304, 24.415840, 47.502956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535892, 24.544436, 47.372017>,  <34.322643, 24.621592, 47.293453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535892, 24.544436, 47.372017>,  <34.891304, 24.415840, 47.502956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535892, 24.544436, 47.372017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445501, 0.433878, -0.783121,
		-0.109732, -0.841663, -0.528736,
		-0.888531, 0.321487, -0.327352,
		34.269333, 24.640881, 47.273811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970467, 24.255230, 46.821796>,  <34.891304, 24.415840, 47.502956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970467, 24.255230, 46.821796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665623, 24.510822, 46.863560>,  <34.482719, 24.664177, 46.888618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665623, 24.510822, 46.863560>,  <34.970467, 24.255230, 46.821796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665623, 24.510822, 46.863560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274353, 0.464778, -0.841850,
		-0.586452, -0.612933, -0.529516,
		-0.762105, 0.638979, 0.104410,
		34.436993, 24.702517, 46.894882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536507, 24.123430, 46.303207>,  <34.970467, 24.255230, 46.821796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536507, 24.123430, 46.303207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489006, 24.502951, 46.420288>,  <34.460506, 24.730663, 46.490536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489006, 24.502951, 46.420288>,  <34.536507, 24.123430, 46.303207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489006, 24.502951, 46.420288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334465, 0.315781, -0.887928,
		-0.934896, -0.007548, -0.354842,
		-0.118754, 0.948802, 0.292698,
		34.453381, 24.787592, 46.508099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522488, 24.443584, 45.786224>,  <34.536507, 24.123430, 46.303207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522488, 24.443584, 45.786224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556133, 24.777578, 46.003750>,  <34.576321, 24.977974, 46.134266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556133, 24.777578, 46.003750>,  <34.522488, 24.443584, 45.786224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556133, 24.777578, 46.003750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465723, 0.449525, -0.762253,
		-0.880924, 0.317382, -0.351058,
		0.084115, 0.834982, 0.543810,
		34.581367, 25.028072, 46.166893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284454, 25.068415, 45.385815>,  <34.522488, 24.443584, 45.786224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284454, 25.068415, 45.385815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550167, 25.194981, 45.656696>,  <34.709595, 25.270920, 45.819225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550167, 25.194981, 45.656696>,  <34.284454, 25.068415, 45.385815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550167, 25.194981, 45.656696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464693, 0.534817, -0.705713,
		-0.585481, 0.783486, 0.208234,
		0.664284, 0.316417, 0.677206,
		34.749451, 25.289906, 45.859859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290108, 25.808891, 45.344917>,  <34.284454, 25.068415, 45.385815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290108, 25.808891, 45.344917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632179, 25.727274, 45.535511>,  <34.837421, 25.678303, 45.649868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632179, 25.727274, 45.535511>,  <34.290108, 25.808891, 45.344917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632179, 25.727274, 45.535511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464724, 0.708964, -0.530473,
		-0.229569, 0.675082, 0.701115,
		0.855178, -0.204044, 0.476483,
		34.888733, 25.666061, 45.678455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667614, 26.469028, 45.388615>,  <34.290108, 25.808891, 45.344917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667614, 26.469028, 45.388615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962284, 26.212568, 45.474628>,  <35.139084, 26.058693, 45.526237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962284, 26.212568, 45.474628>,  <34.667614, 26.469028, 45.388615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962284, 26.212568, 45.474628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643772, 0.567537, -0.513283,
		0.207052, 0.516555, 0.830843,
		0.736673, -0.641150, 0.215034,
		35.183285, 26.020224, 45.539139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257759, 26.885054, 45.775463>,  <34.667614, 26.469028, 45.388615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257759, 26.885054, 45.775463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405266, 26.557320, 45.599869>,  <35.493771, 26.360680, 45.494514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.405266, 26.557320, 45.599869>,  <35.257759, 26.885054, 45.775463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405266, 26.557320, 45.599869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529703, 0.573314, -0.625080,
		0.763824, -0.002023, 0.645421,
		0.368764, -0.819333, -0.438983,
		35.515896, 26.311520, 45.468174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822048, 27.127752, 45.470261>,  <35.257759, 26.885054, 45.775463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822048, 27.127752, 45.470261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788292, 26.772686, 45.289185>,  <35.768036, 26.559647, 45.180538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788292, 26.772686, 45.289185>,  <35.822048, 27.127752, 45.470261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788292, 26.772686, 45.289185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558720, 0.334011, -0.759123,
		0.825051, -0.316991, 0.467769,
		-0.084395, -0.887667, -0.452685,
		35.762974, 26.506386, 45.153378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503807, 26.976082, 45.271072>,  <35.822048, 27.127752, 45.470261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503807, 26.976082, 45.271072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275650, 26.785225, 45.003643>,  <36.138756, 26.670710, 44.843185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275650, 26.785225, 45.003643>,  <36.503807, 26.976082, 45.271072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275650, 26.785225, 45.003643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547271, 0.386202, -0.742524,
		0.612495, -0.789419, 0.040841,
		-0.570390, -0.477143, -0.668573,
		36.104534, 26.642082, 44.803070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.999950, 26.841007, 44.712296>,  <36.503807, 26.976082, 45.271072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.999950, 26.841007, 44.712296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629757, 26.835958, 44.560867>,  <36.407639, 26.832930, 44.470009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629757, 26.835958, 44.560867>,  <36.999950, 26.841007, 44.712296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629757, 26.835958, 44.560867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326567, 0.479772, -0.814354,
		0.191906, -0.877302, -0.439901,
		-0.925487, -0.012623, -0.378569,
		36.352112, 26.832172, 44.447296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045826, 26.627590, 44.029232>,  <36.999950, 26.841007, 44.712296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045826, 26.627590, 44.029232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695061, 26.819485, 44.041119>,  <36.484604, 26.934622, 44.048248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.695061, 26.819485, 44.041119>,  <37.045826, 26.627590, 44.029232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695061, 26.819485, 44.041119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193525, 0.408976, -0.891788,
		-0.439977, -0.776267, -0.451476,
		-0.876909, 0.479738, 0.029713,
		36.431988, 26.963406, 44.050034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923462, 26.656925, 43.342041>,  <37.045826, 26.627590, 44.029232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923462, 26.656925, 43.342041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652000, 26.911123, 43.489323>,  <36.489124, 27.063643, 43.577690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.652000, 26.911123, 43.489323>,  <36.923462, 26.656925, 43.342041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652000, 26.911123, 43.489323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063556, 0.448630, -0.891455,
		-0.731701, -0.628393, -0.264076,
		-0.678657, 0.635495, 0.368201,
		36.448402, 27.101772, 43.599781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291779, 26.666758, 42.830437>,  <36.923462, 26.656925, 43.342041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291779, 26.666758, 42.830437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288967, 27.008177, 43.038822>,  <36.287281, 27.213028, 43.163853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288967, 27.008177, 43.038822>,  <36.291779, 26.666758, 42.830437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288967, 27.008177, 43.038822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031026, 0.520542, -0.853272,
		-0.999494, -0.022161, 0.022823,
		-0.007029, 0.853548, 0.520966,
		36.286858, 27.264242, 43.195110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947655, 27.082954, 42.433685>,  <36.291779, 26.666758, 42.830437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947655, 27.082954, 42.433685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113731, 27.335682, 42.695499>,  <36.213379, 27.487318, 42.852589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113731, 27.335682, 42.695499>,  <35.947655, 27.082954, 42.433685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113731, 27.335682, 42.695499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113907, 0.677717, -0.726447,
		-0.902574, 0.376172, 0.209415,
		0.415193, 0.631818, 0.654539,
		36.238289, 27.525227, 42.891861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464626, 27.582111, 42.605011>,  <35.947655, 27.082954, 42.433685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464626, 27.582111, 42.605011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833843, 27.734701, 42.624866>,  <36.055374, 27.826256, 42.636780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833843, 27.734701, 42.624866>,  <35.464626, 27.582111, 42.605011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833843, 27.734701, 42.624866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248296, 0.689348, -0.680550,
		-0.293832, 0.615854, 0.731018,
		0.923045, 0.381476, 0.049638,
		36.110756, 27.849144, 42.639759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384327, 28.336132, 42.458534>,  <35.464626, 27.582111, 42.605011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384327, 28.336132, 42.458534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774601, 28.283899, 42.388111>,  <36.008766, 28.252560, 42.345856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774601, 28.283899, 42.388111>,  <35.384327, 28.336132, 42.458534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774601, 28.283899, 42.388111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026391, 0.727368, -0.685741,
		0.217602, 0.673710, 0.706232,
		0.975681, -0.130580, -0.176057,
		36.067307, 28.244726, 42.335293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745419, 29.037134, 42.402332>,  <35.384327, 28.336132, 42.458534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745419, 29.037134, 42.402332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996155, 28.769154, 42.243217>,  <36.146599, 28.608366, 42.147747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996155, 28.769154, 42.243217>,  <35.745419, 29.037134, 42.402332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996155, 28.769154, 42.243217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125766, 0.590850, -0.796919,
		0.768927, 0.449516, 0.454628,
		0.626844, -0.669949, -0.397786,
		36.184208, 28.568169, 42.123882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051453, 29.404325, 41.931454>,  <35.745419, 29.037134, 42.402332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051453, 29.404325, 41.931454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163818, 29.046413, 41.792625>,  <36.231239, 28.831667, 41.709328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163818, 29.046413, 41.792625>,  <36.051453, 29.404325, 41.931454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163818, 29.046413, 41.792625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192948, 0.406900, -0.892862,
		0.940137, 0.183854, 0.286951,
		0.280916, -0.894780, -0.347067,
		36.248093, 28.777979, 41.688507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520134, 29.591845, 41.508945>,  <36.051453, 29.404325, 41.931454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520134, 29.591845, 41.508945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447578, 29.220720, 41.378551>,  <36.404045, 28.998045, 41.300316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447578, 29.220720, 41.378551>,  <36.520134, 29.591845, 41.508945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447578, 29.220720, 41.378551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017909, 0.328310, -0.944400,
		0.983248, -0.177142, -0.042936,
		-0.181389, -0.927811, -0.325983,
		36.393162, 28.942377, 41.280758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054214, 29.552631, 40.933075>,  <36.520134, 29.591845, 41.508945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054214, 29.552631, 40.933075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790058, 29.258392, 40.872696>,  <36.631565, 29.081850, 40.836468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790058, 29.258392, 40.872696>,  <37.054214, 29.552631, 40.933075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790058, 29.258392, 40.872696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207940, 0.014024, -0.978041,
		0.721561, -0.677275, 0.143698,
		-0.660387, -0.735596, -0.150952,
		36.591942, 29.037714, 40.827412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392002, 29.243452, 40.343090>,  <37.054214, 29.552631, 40.933075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392002, 29.243452, 40.343090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028748, 29.078028, 40.369202>,  <36.810795, 28.978773, 40.384869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028748, 29.078028, 40.369202>,  <37.392002, 29.243452, 40.343090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028748, 29.078028, 40.369202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032686, -0.085400, -0.995810,
		0.417401, -0.906463, 0.064037,
		-0.908134, -0.413559, 0.065275,
		36.756306, 28.953960, 40.388783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389961, 28.794680, 39.888416>,  <37.392002, 29.243452, 40.343090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.389961, 28.794680, 39.888416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004395, 28.884619, 39.945427>,  <36.773056, 28.938581, 39.979633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.004395, 28.884619, 39.945427>,  <37.389961, 28.794680, 39.888416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004395, 28.884619, 39.945427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088116, 0.235725, -0.967817,
		-0.251207, -0.945451, -0.207406,
		-0.963915, 0.224846, 0.142525,
		36.715221, 28.952072, 39.988186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017357, 28.552185, 39.223602>,  <37.389961, 28.794680, 39.888416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017357, 28.552185, 39.223602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766418, 28.805969, 39.404224>,  <36.615856, 28.958239, 39.512596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766418, 28.805969, 39.404224>,  <37.017357, 28.552185, 39.223602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766418, 28.805969, 39.404224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336385, 0.302186, -0.891924,
		-0.702343, -0.711439, 0.023848,
		-0.627343, 0.634458, 0.451555,
		36.578217, 28.996307, 39.539692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292831, 28.434313, 38.995113>,  <37.017357, 28.552185, 39.223602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292831, 28.434313, 38.995113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326477, 28.812933, 39.119671>,  <36.346664, 29.040106, 39.194405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.326477, 28.812933, 39.119671>,  <36.292831, 28.434313, 38.995113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.326477, 28.812933, 39.119671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449204, 0.314965, -0.836070,
		-0.889461, -0.069554, 0.451688,
		0.084115, 0.946551, 0.311393,
		36.351711, 29.096899, 39.213089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704575, 28.658487, 38.835590>,  <36.292831, 28.434313, 38.995113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704575, 28.658487, 38.835590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928520, 28.986975, 38.879688>,  <36.062889, 29.184067, 38.906147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.928520, 28.986975, 38.879688>,  <35.704575, 28.658487, 38.835590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928520, 28.986975, 38.879688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465221, 0.421652, -0.778318,
		-0.685655, 0.384463, 0.618115,
		0.559863, 0.821218, 0.110247,
		36.096478, 29.233339, 38.912762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283821, 29.091270, 38.620251>,  <35.704575, 28.658487, 38.835590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283821, 29.091270, 38.620251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614384, 29.315910, 38.636539>,  <35.812721, 29.450693, 38.646313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614384, 29.315910, 38.636539>,  <35.283821, 29.091270, 38.620251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614384, 29.315910, 38.636539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345023, 0.562216, -0.751580,
		-0.444983, 0.607060, 0.658383,
		0.826408, 0.561598, 0.040726,
		35.862305, 29.484390, 38.648758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040581, 29.831408, 38.588428>,  <35.283821, 29.091270, 38.620251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040581, 29.831408, 38.588428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429974, 29.815676, 38.498287>,  <35.663609, 29.806236, 38.444202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.429974, 29.815676, 38.498287>,  <35.040581, 29.831408, 38.588428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429974, 29.815676, 38.498287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155405, 0.609201, -0.777639,
		0.167872, 0.792040, 0.586935,
		0.973482, -0.039331, -0.225355,
		35.722019, 29.803877, 38.430679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280357, 30.537289, 38.553177>,  <35.040581, 29.831408, 38.588428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280357, 30.537289, 38.553177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536007, 30.316877, 38.338558>,  <35.689396, 30.184629, 38.209785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.536007, 30.316877, 38.338558>,  <35.280357, 30.537289, 38.553177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536007, 30.316877, 38.338558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125252, 0.613746, -0.779505,
		0.758837, 0.565404, 0.323241,
		0.639123, -0.551030, -0.536551,
		35.727745, 30.151567, 38.177593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619507, 31.008055, 38.180676>,  <35.280357, 30.537289, 38.553177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619507, 31.008055, 38.180676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717068, 30.676403, 37.979458>,  <35.775604, 30.477413, 37.858727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.717068, 30.676403, 37.979458>,  <35.619507, 31.008055, 38.180676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717068, 30.676403, 37.979458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053843, 0.506337, -0.860653,
		0.968304, 0.237001, 0.078854,
		0.243902, -0.829128, -0.503049,
		35.790237, 30.427664, 37.828545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158722, 31.254364, 37.754993>,  <35.619507, 31.008055, 38.180676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158722, 31.254364, 37.754993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956215, 30.938477, 37.616409>,  <35.834709, 30.748943, 37.533257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956215, 30.938477, 37.616409>,  <36.158722, 31.254364, 37.754993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956215, 30.938477, 37.616409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064257, 0.435182, -0.898046,
		0.859978, -0.432390, -0.271064,
		-0.506269, -0.789718, -0.346463,
		35.804333, 30.701561, 37.512470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454300, 31.224569, 37.076687>,  <36.158722, 31.254364, 37.754993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454300, 31.224569, 37.076687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111637, 31.019306, 37.055481>,  <35.906040, 30.896149, 37.042759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.111637, 31.019306, 37.055481>,  <36.454300, 31.224569, 37.076687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.111637, 31.019306, 37.055481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090845, 0.251211, -0.963660,
		0.507826, -0.820709, -0.261820,
		-0.856656, -0.513156, -0.053014,
		35.854641, 30.865360, 37.039577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490231, 30.943188, 36.467731>,  <36.454300, 31.224569, 37.076687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490231, 30.943188, 36.467731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098690, 30.936247, 36.549274>,  <35.863766, 30.932081, 36.598198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098690, 30.936247, 36.549274>,  <36.490231, 30.943188, 36.467731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098690, 30.936247, 36.549274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202336, 0.229682, -0.952001,
		-0.030301, -0.973111, -0.228335,
		-0.978847, -0.017354, 0.203855,
		35.805035, 30.931040, 36.610432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147648, 30.519266, 35.903954>,  <36.490231, 30.943188, 36.467731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147648, 30.519266, 35.903954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907833, 30.785601, 36.081593>,  <35.763947, 30.945402, 36.188175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907833, 30.785601, 36.081593>,  <36.147648, 30.519266, 35.903954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907833, 30.785601, 36.081593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200910, 0.411904, -0.888803,
		-0.774722, -0.622090, -0.113177,
		-0.599533, 0.665837, 0.444095,
		35.727974, 30.985352, 36.214821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635300, 30.525774, 35.426853>,  <36.147648, 30.519266, 35.903954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635300, 30.525774, 35.426853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570328, 30.856544, 35.642189>,  <35.531345, 31.055006, 35.771389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570328, 30.856544, 35.642189>,  <35.635300, 30.525774, 35.426853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570328, 30.856544, 35.642189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313655, 0.474013, -0.822759,
		-0.935540, -0.302496, 0.182374,
		-0.162433, 0.826927, 0.538338,
		35.521599, 31.104622, 35.803692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019760, 30.786549, 35.147095>,  <35.635300, 30.525774, 35.426853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019760, 30.786549, 35.147095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193138, 31.102705, 35.320255>,  <35.297165, 31.292398, 35.424152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193138, 31.102705, 35.320255>,  <35.019760, 30.786549, 35.147095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193138, 31.102705, 35.320255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333054, 0.586864, -0.738014,
		-0.837375, 0.175711, 0.517619,
		0.433449, 0.790390, 0.432904,
		35.323174, 31.339823, 35.450127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598343, 31.291780, 35.114429>,  <35.019760, 30.786549, 35.147095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598343, 31.291780, 35.114429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912331, 31.527945, 35.189522>,  <35.100723, 31.669643, 35.234577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912331, 31.527945, 35.189522>,  <34.598343, 31.291780, 35.114429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912331, 31.527945, 35.189522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323216, 0.648781, -0.688923,
		-0.528545, 0.480103, 0.700101,
		0.784966, 0.590411, 0.187733,
		35.147820, 31.705069, 35.245842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384251, 32.035362, 35.163460>,  <34.598343, 31.291780, 35.114429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384251, 32.035362, 35.163460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780792, 32.086956, 35.153889>,  <35.018719, 32.117912, 35.148148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.780792, 32.086956, 35.153889>,  <34.384251, 32.035362, 35.163460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.780792, 32.086956, 35.153889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129144, 0.927571, -0.350621,
		-0.023029, 0.350681, 0.936212,
		0.991358, 0.128980, -0.023928,
		35.078201, 32.125648, 35.146709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472744, 32.662697, 35.452942>,  <34.384251, 32.035362, 35.163460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472744, 32.662697, 35.452942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798565, 32.592964, 35.231632>,  <34.994057, 32.551125, 35.098846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798565, 32.592964, 35.231632>,  <34.472744, 32.662697, 35.452942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798565, 32.592964, 35.231632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098774, 0.898164, -0.428421,
		0.571620, 0.403620, 0.714381,
		0.814551, -0.174332, -0.553276,
		35.042931, 32.540665, 35.065651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970688, 33.116245, 35.588898>,  <34.472744, 32.662697, 35.452942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970688, 33.116245, 35.588898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063004, 33.004395, 35.216114>,  <35.118393, 32.937286, 34.992443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063004, 33.004395, 35.216114>,  <34.970688, 33.116245, 35.588898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063004, 33.004395, 35.216114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233074, 0.914043, -0.331968,
		0.944676, 0.293830, 0.145777,
		0.230788, -0.279625, -0.931958,
		35.132240, 32.920506, 34.936527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456741, 33.625423, 35.277405>,  <34.970688, 33.116245, 35.588898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456741, 33.625423, 35.277405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278580, 33.467281, 34.956081>,  <35.171684, 33.372395, 34.763287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278580, 33.467281, 34.956081>,  <35.456741, 33.625423, 35.277405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278580, 33.467281, 34.956081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178377, 0.918420, -0.353110,
		0.877383, -0.013983, -0.479588,
		-0.445400, -0.395360, -0.803311,
		35.144958, 33.348675, 34.715088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526463, 33.521339, 35.993378>,  <35.456741, 33.625423, 35.277405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526463, 33.521339, 35.993378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865692, 33.728764, 35.949818>,  <36.069229, 33.853218, 35.923679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.865692, 33.728764, 35.949818>,  <35.526463, 33.521339, 35.993378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.865692, 33.728764, 35.949818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483898, -0.674224, 0.557912,
		0.215886, -0.525850, -0.822724,
		0.848078, 0.518560, -0.108902,
		36.120117, 33.884331, 35.917149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104713, 33.099407, 35.797394>,  <35.526463, 33.521339, 35.993378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104713, 33.099407, 35.797394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280334, 33.426437, 35.946423>,  <36.385708, 33.622654, 36.035839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280334, 33.426437, 35.946423>,  <36.104713, 33.099407, 35.797394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280334, 33.426437, 35.946423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558646, -0.573183, 0.599479,
		0.703669, -0.055067, -0.708390,
		0.439049, 0.817575, 0.372569,
		36.412048, 33.671711, 36.058193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951702, 33.018692, 35.706436>,  <36.104713, 33.099407, 35.797394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951702, 33.018692, 35.706436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847195, 33.267017, 36.002094>,  <36.784492, 33.416012, 36.179489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.847195, 33.267017, 36.002094>,  <36.951702, 33.018692, 35.706436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847195, 33.267017, 36.002094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486344, -0.576781, 0.656348,
		0.833793, 0.530960, -0.151235,
		-0.261265, 0.620810, 0.739145,
		36.768814, 33.453262, 36.223839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583218, 33.037380, 36.089256>,  <36.951702, 33.018692, 35.706436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583218, 33.037380, 36.089256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307873, 33.190487, 36.335716>,  <37.142666, 33.282352, 36.483593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.307873, 33.190487, 36.335716>,  <37.583218, 33.037380, 36.089256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307873, 33.190487, 36.335716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612745, -0.147753, 0.776346,
		0.388198, 0.911953, -0.132831,
		-0.688365, 0.382767, 0.616152,
		37.101364, 33.305317, 36.520561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901245, 33.662201, 36.525326>,  <37.583218, 33.037380, 36.089256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901245, 33.662201, 36.525326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582306, 33.530685, 36.727764>,  <37.390942, 33.451775, 36.849228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.582306, 33.530685, 36.727764>,  <37.901245, 33.662201, 36.525326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582306, 33.530685, 36.727764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533106, 0.009386, 0.845996,
		-0.282907, 0.944356, 0.167797,
		-0.797346, -0.328792, 0.506097,
		37.343102, 33.432049, 36.879593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972305, 34.117065, 37.100662>,  <37.901245, 33.662201, 36.525326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972305, 34.117065, 37.100662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737896, 33.812309, 37.211010>,  <37.597252, 33.629456, 37.277218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.737896, 33.812309, 37.211010>,  <37.972305, 34.117065, 37.100662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.737896, 33.812309, 37.211010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433725, -0.007361, 0.901015,
		-0.684442, 0.647667, 0.334764,
		-0.586022, -0.761888, 0.275871,
		37.562088, 33.583744, 37.293770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874386, 34.147236, 37.795246>,  <37.972305, 34.117065, 37.100662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874386, 34.147236, 37.795246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780804, 33.766663, 37.715206>,  <37.724655, 33.538319, 37.667183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.780804, 33.766663, 37.715206>,  <37.874386, 34.147236, 37.795246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780804, 33.766663, 37.715206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459080, -0.289528, 0.839893,
		-0.857036, 0.104636, 0.504520,
		-0.233955, -0.951433, -0.200100,
		37.710617, 33.481232, 37.655178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540092, 33.947685, 38.395290>,  <37.874386, 34.147236, 37.795246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540092, 33.947685, 38.395290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648380, 33.599354, 38.231155>,  <37.713352, 33.390354, 38.132675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648380, 33.599354, 38.231155>,  <37.540092, 33.947685, 38.395290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648380, 33.599354, 38.231155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424470, -0.274591, 0.862800,
		-0.864022, -0.407755, 0.295301,
		0.270724, -0.870825, -0.410333,
		37.729599, 33.338108, 38.108055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247021, 33.391399, 38.824448>,  <37.540092, 33.947685, 38.395290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247021, 33.391399, 38.824448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544765, 33.251091, 38.597157>,  <37.723412, 33.166904, 38.460781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544765, 33.251091, 38.597157>,  <37.247021, 33.391399, 38.824448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544765, 33.251091, 38.597157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342987, -0.529271, 0.776036,
		-0.572959, -0.772547, -0.273659,
		0.744365, -0.350776, -0.568224,
		37.768074, 33.145859, 38.426689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105659, 32.711021, 38.890888>,  <37.247021, 33.391399, 38.824448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105659, 32.711021, 38.890888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491703, 32.762062, 38.799431>,  <37.723331, 32.792686, 38.744556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491703, 32.762062, 38.799431>,  <37.105659, 32.711021, 38.890888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491703, 32.762062, 38.799431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259498, -0.582644, 0.770186,
		-0.034935, -0.802648, -0.595430,
		0.965112, 0.127606, -0.228640,
		37.781235, 32.800343, 38.730839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387764, 32.069885, 38.886021>,  <37.105659, 32.711021, 38.890888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387764, 32.069885, 38.886021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714520, 32.298145, 38.919613>,  <37.910572, 32.435101, 38.939766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.714520, 32.298145, 38.919613>,  <37.387764, 32.069885, 38.886021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714520, 32.298145, 38.919613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385278, -0.648179, 0.656830,
		0.429254, -0.504200, -0.749348,
		0.816885, 0.570654, 0.083977,
		37.959583, 32.469341, 38.944805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908188, 31.648746, 38.812946>,  <37.387764, 32.069885, 38.886021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908188, 31.648746, 38.812946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049122, 31.951809, 39.032700>,  <38.133682, 32.133648, 39.164551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.049122, 31.951809, 39.032700>,  <37.908188, 31.648746, 38.812946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049122, 31.951809, 39.032700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362330, -0.651675, 0.666360,
		0.862890, -0.035724, -0.504129,
		0.352333, 0.757656, 0.549380,
		38.154823, 32.179108, 39.197514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449474, 31.387175, 39.286903>,  <37.908188, 31.648746, 38.812946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449474, 31.387175, 39.286903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493019, 31.763988, 39.413849>,  <38.519146, 31.990076, 39.490017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493019, 31.763988, 39.413849>,  <38.449474, 31.387175, 39.286903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493019, 31.763988, 39.413849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585988, -0.318705, 0.745013,
		0.802974, 0.104867, -0.586716,
		0.108862, 0.942035, 0.317363,
		38.525677, 32.046600, 39.509056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171890, 31.605650, 39.317577>,  <38.449474, 31.387175, 39.286903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171890, 31.605650, 39.317577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908691, 31.755758, 39.578720>,  <38.750774, 31.845823, 39.735405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908691, 31.755758, 39.578720>,  <39.171890, 31.605650, 39.317577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908691, 31.755758, 39.578720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513480, -0.410553, 0.753514,
		0.550802, 0.831035, 0.077448,
		-0.657993, 0.375269, 0.652854,
		38.711292, 31.868340, 39.774574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533630, 31.918600, 39.902843>,  <39.171890, 31.605650, 39.317577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533630, 31.918600, 39.902843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165016, 31.834166, 40.033207>,  <38.943848, 31.783504, 40.111427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.165016, 31.834166, 40.033207>,  <39.533630, 31.918600, 39.902843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.165016, 31.834166, 40.033207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387996, -0.467451, 0.794323,
		-0.015324, 0.858447, 0.512673,
		-0.921533, -0.211088, 0.325911,
		38.888557, 31.770840, 40.130981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711254, 31.584612, 40.488052>,  <39.533630, 31.918600, 39.902843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711254, 31.584612, 40.488052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315403, 31.529655, 40.471241>,  <39.077892, 31.496681, 40.461155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315403, 31.529655, 40.471241>,  <39.711254, 31.584612, 40.488052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315403, 31.529655, 40.471241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067787, -0.704417, 0.706542,
		-0.126679, 0.696363, 0.706421,
		-0.989625, -0.137390, -0.042030,
		39.018517, 31.488438, 40.458633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466564, 31.672958, 41.184444>,  <39.711254, 31.584612, 40.488052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466564, 31.672958, 41.184444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204292, 31.434660, 40.998898>,  <39.046928, 31.291681, 40.887569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.204292, 31.434660, 40.998898>,  <39.466564, 31.672958, 41.184444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204292, 31.434660, 40.998898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008791, -0.608293, 0.793664,
		-0.754985, 0.524470, 0.393610,
		-0.655683, -0.595744, -0.463863,
		39.007587, 31.255938, 40.859737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.993469, 31.520199, 41.768692>,  <39.466564, 31.672958, 41.184444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.993469, 31.520199, 41.768692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956821, 31.236927, 41.488667>,  <38.934834, 31.066963, 41.320652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.956821, 31.236927, 41.488667>,  <38.993469, 31.520199, 41.768692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956821, 31.236927, 41.488667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032043, -0.700559, 0.712874,
		-0.995279, 0.087742, 0.041491,
		-0.091616, -0.708179, -0.700063,
		38.929337, 31.024473, 41.278648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481384, 31.038181, 42.011791>,  <38.993469, 31.520199, 41.768692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481384, 31.038181, 42.011791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641834, 30.833225, 41.708065>,  <38.738106, 30.710253, 41.525829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.641834, 30.833225, 41.708065>,  <38.481384, 31.038181, 42.011791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641834, 30.833225, 41.708065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037419, -0.837397, 0.545312,
		-0.915257, -0.190327, -0.355077,
		0.401129, -0.512388, -0.759312,
		38.762173, 30.679508, 41.480270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967434, 30.494947, 41.895554>,  <38.481384, 31.038181, 42.011791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967434, 30.494947, 41.895554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324474, 30.376553, 41.759525>,  <38.538700, 30.305515, 41.677906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324474, 30.376553, 41.759525>,  <37.967434, 30.494947, 41.895554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324474, 30.376553, 41.759525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045838, -0.809979, 0.584665,
		-0.448506, -0.506286, -0.736558,
		0.892604, -0.295988, -0.340073,
		38.592255, 30.287756, 41.657505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924248, 29.833866, 41.847492>,  <37.967434, 30.494947, 41.895554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924248, 29.833866, 41.847492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323334, 29.860294, 41.853012>,  <38.562786, 29.876152, 41.856323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323334, 29.860294, 41.853012>,  <37.924248, 29.833866, 41.847492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323334, 29.860294, 41.853012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039323, -0.735143, 0.676770,
		0.054858, -0.674685, -0.736065,
		0.997720, 0.066070, 0.013798,
		38.622650, 29.880116, 41.857151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194698, 29.180574, 41.835377>,  <37.924248, 29.833866, 41.847492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194698, 29.180574, 41.835377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451302, 29.426920, 42.018322>,  <38.605263, 29.574728, 42.128090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.451302, 29.426920, 42.018322>,  <38.194698, 29.180574, 41.835377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451302, 29.426920, 42.018322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036035, -0.571357, 0.819910,
		0.766271, -0.542458, -0.344336,
		0.641506, 0.615865, 0.457362,
		38.643753, 29.611679, 42.155529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664211, 28.773621, 42.136951>,  <38.194698, 29.180574, 41.835377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664211, 28.773621, 42.136951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675732, 29.125168, 42.327431>,  <38.682644, 29.336096, 42.441719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.675732, 29.125168, 42.327431>,  <38.664211, 28.773621, 42.136951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.675732, 29.125168, 42.327431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002566, -0.476457, 0.879194,
		0.999582, -0.024103, -0.015980,
		0.028805, 0.878868, 0.476195,
		38.684372, 29.388828, 42.470291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080547, 28.637825, 42.720219>,  <38.664211, 28.773621, 42.136951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080547, 28.637825, 42.720219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880135, 28.974380, 42.801243>,  <38.759888, 29.176313, 42.849857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880135, 28.974380, 42.801243>,  <39.080547, 28.637825, 42.720219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880135, 28.974380, 42.801243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046136, -0.259694, 0.964588,
		0.864199, 0.473943, 0.168933,
		-0.501031, 0.841390, 0.202561,
		38.729824, 29.226797, 42.862011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465374, 29.015316, 43.265690>,  <39.080547, 28.637825, 42.720219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465374, 29.015316, 43.265690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078514, 29.116947, 43.262222>,  <38.846397, 29.177925, 43.260139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078514, 29.116947, 43.262222>,  <39.465374, 29.015316, 43.265690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078514, 29.116947, 43.262222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040138, -0.118922, 0.992092,
		0.251035, 0.959845, 0.125213,
		-0.967146, 0.254076, -0.008673,
		38.788372, 29.193171, 43.259621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357548, 29.534122, 43.945095>,  <39.465374, 29.015316, 43.265690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357548, 29.534122, 43.945095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007690, 29.394333, 43.810711>,  <38.797775, 29.310459, 43.730080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.007690, 29.394333, 43.810711>,  <39.357548, 29.534122, 43.945095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007690, 29.394333, 43.810711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277919, -0.206347, 0.938180,
		-0.397192, 0.913942, 0.083355,
		-0.874643, -0.349472, -0.335961,
		38.745296, 29.289492, 43.709923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892235, 29.767691, 44.480572>,  <39.357548, 29.534122, 43.945095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892235, 29.767691, 44.480572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682613, 29.501303, 44.268215>,  <38.556839, 29.341469, 44.140800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682613, 29.501303, 44.268215>,  <38.892235, 29.767691, 44.480572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682613, 29.501303, 44.268215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505200, -0.258760, 0.823296,
		-0.685665, 0.699661, -0.200843,
		-0.524058, -0.665972, -0.530891,
		38.525394, 29.301512, 44.108948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212994, 29.810110, 44.684849>,  <38.892235, 29.767691, 44.480572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212994, 29.810110, 44.684849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202549, 29.453281, 44.504395>,  <38.196281, 29.239183, 44.396122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202549, 29.453281, 44.504395>,  <38.212994, 29.810110, 44.684849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202549, 29.453281, 44.504395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461490, -0.389568, 0.797035,
		-0.886761, 0.229010, -0.401508,
		-0.026114, -0.892071, -0.451140,
		38.194714, 29.185659, 44.369053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502285, 29.571470, 44.810478>,  <38.212994, 29.810110, 44.684849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502285, 29.571470, 44.810478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681080, 29.226780, 44.714451>,  <37.788357, 29.019966, 44.656834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.681080, 29.226780, 44.714451>,  <37.502285, 29.571470, 44.810478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681080, 29.226780, 44.714451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430069, -0.442332, 0.787009,
		-0.784374, -0.248540, -0.568319,
		0.446988, -0.861725, -0.240064,
		37.815178, 28.968262, 44.642433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.983799, 29.142935, 45.008720>,  <37.502285, 29.571470, 44.810478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.983799, 29.142935, 45.008720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306477, 28.908550, 44.978016>,  <37.500084, 28.767920, 44.959591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.306477, 28.908550, 44.978016>,  <36.983799, 29.142935, 45.008720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.306477, 28.908550, 44.978016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298211, -0.515767, 0.803153,
		-0.510172, -0.625034, -0.590811,
		0.806719, -0.585932, -0.076737,
		37.548485, 28.732761, 44.954987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811066, 28.463013, 45.119774>,  <36.983799, 29.142935, 45.008720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.811066, 28.463013, 45.119774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199139, 28.467163, 45.216633>,  <37.431984, 28.469654, 45.274746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.199139, 28.467163, 45.216633>,  <36.811066, 28.463013, 45.119774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199139, 28.467163, 45.216633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197833, -0.543258, 0.815925,
		0.140012, -0.839502, -0.525008,
		0.970185, 0.010376, 0.242144,
		37.490192, 28.470276, 45.289276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943035, 27.837303, 45.460396>,  <36.811066, 28.463013, 45.119774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.943035, 27.837303, 45.460396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270679, 28.038120, 45.571400>,  <37.467266, 28.158611, 45.638000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270679, 28.038120, 45.571400>,  <36.943035, 27.837303, 45.460396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270679, 28.038120, 45.571400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014921, -0.464958, 0.885207,
		0.573443, -0.729222, -0.373361,
		0.819109, 0.502045, 0.277508,
		37.516411, 28.188734, 45.654652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489525, 27.269539, 45.648609>,  <36.943035, 27.837303, 45.460396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489525, 27.269539, 45.648609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540638, 27.616911, 45.840237>,  <37.571308, 27.825335, 45.955212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540638, 27.616911, 45.840237>,  <37.489525, 27.269539, 45.648609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540638, 27.616911, 45.840237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013744, -0.484530, 0.874667,
		0.991707, -0.105185, -0.073851,
		0.127785, 0.868428, 0.479066,
		37.578972, 27.877439, 45.983955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890686, 27.032587, 46.226997>,  <37.489525, 27.269539, 45.648609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890686, 27.032587, 46.226997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803280, 27.411545, 46.320545>,  <37.750835, 27.638920, 46.376675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.803280, 27.411545, 46.320545>,  <37.890686, 27.032587, 46.226997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803280, 27.411545, 46.320545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063093, -0.252875, 0.965440,
		0.973792, 0.196206, 0.115030,
		-0.218513, 0.947395, 0.233869,
		37.737724, 27.695763, 46.390705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251442, 27.126202, 46.798378>,  <37.890686, 27.032587, 46.226997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251442, 27.126202, 46.798378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969841, 27.410280, 46.797394>,  <37.800880, 27.580727, 46.796803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969841, 27.410280, 46.797394>,  <38.251442, 27.126202, 46.798378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969841, 27.410280, 46.797394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250306, -0.244874, 0.936687,
		0.664630, 0.660043, 0.350158,
		-0.703999, 0.710197, -0.002462,
		37.758640, 27.623339, 46.796654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278133, 27.472412, 47.467098>,  <38.251442, 27.126202, 46.798378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278133, 27.472412, 47.467098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905327, 27.534159, 47.335945>,  <37.681641, 27.571207, 47.257252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.905327, 27.534159, 47.335945>,  <38.278133, 27.472412, 47.467098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905327, 27.534159, 47.335945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361789, -0.343574, 0.866640,
		0.021127, 0.926352, 0.376066,
		-0.932021, 0.154366, -0.327885,
		37.625721, 27.580469, 47.237579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915203, 27.801483, 47.996170>,  <38.278133, 27.472412, 47.467098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915203, 27.801483, 47.996170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631290, 27.641188, 47.764442>,  <37.460941, 27.545012, 47.625404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631290, 27.641188, 47.764442>,  <37.915203, 27.801483, 47.996170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631290, 27.641188, 47.764442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437587, -0.393648, 0.808429,
		-0.552017, 0.827315, 0.104048,
		-0.709785, -0.400737, -0.579324,
		37.418354, 27.520967, 47.590645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238129, 28.055729, 48.227596>,  <37.915203, 27.801483, 47.996170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238129, 28.055729, 48.227596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272099, 27.692493, 48.063568>,  <37.292480, 27.474552, 47.965153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.272099, 27.692493, 48.063568>,  <37.238129, 28.055729, 48.227596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272099, 27.692493, 48.063568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257362, -0.417585, 0.871428,
		-0.962576, 0.031531, -0.269172,
		0.084925, -0.908091, -0.410072,
		37.297577, 27.420067, 47.940548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379307, 28.547348, 48.787041>,  <37.238129, 28.055729, 48.227596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379307, 28.547348, 48.787041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485256, 28.783457, 49.092045>,  <37.548828, 28.925121, 49.275047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.485256, 28.783457, 49.092045>,  <37.379307, 28.547348, 48.787041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485256, 28.783457, 49.092045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389761, 0.657743, -0.644562,
		-0.882002, 0.467926, -0.055844,
		0.264876, 0.590270, 0.762510,
		37.564720, 28.960537, 49.320797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.988239, 29.239094, 48.702572>,  <37.379307, 28.547348, 48.787041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.988239, 29.239094, 48.702572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305859, 29.303308, 48.937077>,  <37.496429, 29.341837, 49.077782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.305859, 29.303308, 48.937077>,  <36.988239, 29.239094, 48.702572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.305859, 29.303308, 48.937077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312114, 0.719953, -0.619881,
		-0.521599, 0.675200, 0.521574,
		0.794052, 0.160539, 0.586266,
		37.544075, 29.351471, 49.112957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993752, 29.912540, 48.893036>,  <36.988239, 29.239094, 48.702572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993752, 29.912540, 48.893036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377087, 29.810671, 48.944782>,  <37.607086, 29.749548, 48.975830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377087, 29.810671, 48.944782>,  <36.993752, 29.912540, 48.893036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377087, 29.810671, 48.944782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275962, 0.708522, -0.649494,
		0.073754, 0.658131, 0.749282,
		0.958335, -0.254676, 0.129362,
		37.664589, 29.734268, 48.983589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390259, 30.613279, 49.029522>,  <36.993752, 29.912540, 48.893036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390259, 30.613279, 49.029522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651211, 30.329821, 48.922028>,  <37.807781, 30.159746, 48.857533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651211, 30.329821, 48.922028>,  <37.390259, 30.613279, 49.029522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651211, 30.329821, 48.922028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445676, 0.645502, -0.620242,
		0.613000, 0.284867, 0.736941,
		0.652383, -0.708645, -0.268734,
		37.846928, 30.117228, 48.841408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.084465, 30.891525, 49.023098>,  <37.390259, 30.613279, 49.029522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.084465, 30.891525, 49.023098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078526, 30.586578, 48.764309>,  <38.074963, 30.403610, 48.609035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078526, 30.586578, 48.764309>,  <38.084465, 30.891525, 49.023098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078526, 30.586578, 48.764309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420068, 0.582419, -0.695938,
		0.907371, -0.282110, 0.311596,
		-0.014852, -0.762366, -0.646976,
		38.074070, 30.357868, 48.570217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623817, 31.139074, 48.497231>,  <38.084465, 30.891525, 49.023098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623817, 31.139074, 48.497231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534279, 30.780750, 48.343651>,  <38.480556, 30.565756, 48.251503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534279, 30.780750, 48.343651>,  <38.623817, 31.139074, 48.497231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534279, 30.780750, 48.343651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400753, 0.274501, -0.874097,
		0.888418, -0.349537, 0.297551,
		-0.223851, -0.895809, -0.383950,
		38.467125, 30.512007, 48.228466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217743, 30.902016, 48.178696>,  <38.623817, 31.139074, 48.497231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217743, 30.902016, 48.178696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908993, 30.727182, 47.994019>,  <38.723743, 30.622282, 47.883213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908993, 30.727182, 47.994019>,  <39.217743, 30.902016, 48.178696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908993, 30.727182, 47.994019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439826, 0.157270, -0.884206,
		0.459080, -0.885566, 0.070846,
		-0.771880, -0.437081, -0.461694,
		38.677429, 30.596058, 47.855511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562496, 30.604025, 47.664062>,  <39.217743, 30.902016, 48.178696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562496, 30.604025, 47.664062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176838, 30.588537, 47.559044>,  <38.945442, 30.579245, 47.496033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176838, 30.588537, 47.559044>,  <39.562496, 30.604025, 47.664062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176838, 30.588537, 47.559044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253600, 0.157100, -0.954467,
		0.078202, -0.986823, -0.141647,
		-0.964143, -0.038720, -0.262544,
		38.887596, 30.576921, 47.480282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542740, 30.212250, 47.084705>,  <39.562496, 30.604025, 47.664062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542740, 30.212250, 47.084705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224949, 30.454836, 47.072037>,  <39.034275, 30.600388, 47.064434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224949, 30.454836, 47.072037>,  <39.542740, 30.212250, 47.084705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224949, 30.454836, 47.072037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291576, 0.335184, -0.895899,
		-0.532717, -0.721007, -0.443127,
		-0.794479, 0.606466, -0.031670,
		38.986607, 30.636776, 47.062534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.179859, 30.108326, 46.388916>,  <39.542740, 30.212250, 47.084705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.179859, 30.108326, 46.388916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059437, 30.475437, 46.492485>,  <38.987183, 30.695704, 46.554626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059437, 30.475437, 46.492485>,  <39.179859, 30.108326, 46.388916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059437, 30.475437, 46.492485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060136, 0.289254, -0.955362,
		-0.951707, -0.272051, -0.142275,
		-0.301061, 0.917780, 0.258925,
		38.969120, 30.750771, 46.570164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561165, 30.397327, 45.995743>,  <39.179859, 30.108326, 46.388916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.561165, 30.397327, 45.995743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762215, 30.715717, 46.130676>,  <38.882843, 30.906752, 46.211636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.762215, 30.715717, 46.130676>,  <38.561165, 30.397327, 45.995743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.762215, 30.715717, 46.130676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191172, 0.278208, -0.941304,
		-0.843104, 0.537608, -0.012335,
		0.502621, 0.795976, 0.337334,
		38.913002, 30.954510, 46.231876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370670, 30.895113, 45.567860>,  <38.561165, 30.397327, 45.995743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370670, 30.895113, 45.567860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711578, 31.035671, 45.722862>,  <38.916122, 31.120007, 45.815865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711578, 31.035671, 45.722862>,  <38.370670, 30.895113, 45.567860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711578, 31.035671, 45.722862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272046, 0.334981, -0.902097,
		-0.446802, 0.874247, 0.189897,
		0.852267, 0.351398, 0.387506,
		38.967258, 31.141090, 45.839115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400974, 31.626261, 45.488033>,  <38.370670, 30.895113, 45.567860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400974, 31.626261, 45.488033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775524, 31.486834, 45.504509>,  <39.000256, 31.403177, 45.514397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775524, 31.486834, 45.504509>,  <38.400974, 31.626261, 45.488033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775524, 31.486834, 45.504509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204555, 0.446572, -0.871051,
		0.285226, 0.824059, 0.489462,
		0.936378, -0.348568, 0.041192,
		39.056438, 31.382263, 45.516865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884853, 32.234928, 45.616096>,  <38.400974, 31.626261, 45.488033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884853, 32.234928, 45.616096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037594, 31.917021, 45.427402>,  <39.129238, 31.726276, 45.314186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037594, 31.917021, 45.427402>,  <38.884853, 32.234928, 45.616096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037594, 31.917021, 45.427402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113470, 0.546862, -0.829498,
		0.917232, 0.263216, 0.299001,
		0.381850, -0.794770, -0.471733,
		39.152149, 31.678591, 45.285881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481651, 32.500305, 45.266338>,  <38.884853, 32.234928, 45.616096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481651, 32.500305, 45.266338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446449, 32.134270, 45.108921>,  <39.425327, 31.914650, 45.014469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.446449, 32.134270, 45.108921>,  <39.481651, 32.500305, 45.266338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446449, 32.134270, 45.108921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171164, 0.375307, -0.910959,
		0.981304, -0.147530, 0.123601,
		-0.088006, -0.915084, -0.393543,
		39.420048, 31.859745, 44.990860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087906, 32.405502, 44.897270>,  <39.481651, 32.500305, 45.266338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087906, 32.405502, 44.897270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808792, 32.163902, 44.743244>,  <39.641323, 32.018944, 44.650829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808792, 32.163902, 44.743244>,  <40.087906, 32.405502, 44.897270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808792, 32.163902, 44.743244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226000, 0.324478, -0.918498,
		0.679717, -0.727943, -0.089913,
		-0.697789, -0.603998, -0.385068,
		39.599457, 31.982702, 44.627724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430260, 32.085384, 44.322544>,  <40.087906, 32.405502, 44.897270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430260, 32.085384, 44.322544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042587, 32.048412, 44.231205>,  <39.809982, 32.026230, 44.176403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.042587, 32.048412, 44.231205>,  <40.430260, 32.085384, 44.322544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.042587, 32.048412, 44.231205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187463, 0.324631, -0.927077,
		0.159820, -0.941313, -0.297299,
		-0.969182, -0.092433, -0.228344,
		39.751831, 32.020683, 44.162701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.430344, 31.884909, 43.565636>,  <40.430260, 32.085384, 44.322544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.430344, 31.884909, 43.565636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063953, 32.021626, 43.649696>,  <39.844120, 32.103657, 43.700134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063953, 32.021626, 43.649696>,  <40.430344, 31.884909, 43.565636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063953, 32.021626, 43.649696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106018, 0.298979, -0.948352,
		-0.386973, -0.890947, -0.237622,
		-0.915976, 0.341795, 0.210153,
		39.789162, 32.124165, 43.712742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040218, 31.701498, 43.009274>,  <40.430344, 31.884909, 43.565636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040218, 31.701498, 43.009274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810173, 31.983414, 43.175415>,  <39.672146, 32.152561, 43.275101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.810173, 31.983414, 43.175415>,  <40.040218, 31.701498, 43.009274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810173, 31.983414, 43.175415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098019, 0.444698, -0.890301,
		-0.812180, -0.552737, -0.186669,
		-0.575113, 0.704788, 0.415354,
		39.637638, 32.194851, 43.300022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490456, 31.781994, 42.531120>,  <40.040218, 31.701498, 43.009274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490456, 31.781994, 42.531120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502468, 32.115604, 42.751484>,  <39.509674, 32.315773, 42.883701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502468, 32.115604, 42.751484>,  <39.490456, 31.781994, 42.531120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502468, 32.115604, 42.751484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110560, 0.550542, -0.827454,
		-0.993416, -0.036061, 0.108741,
		0.030027, 0.834028, 0.550905,
		39.511475, 32.365814, 42.916756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.970200, 32.267132, 42.160648>,  <39.490456, 31.781994, 42.531120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.970200, 32.267132, 42.160648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184395, 32.512543, 42.392799>,  <39.312912, 32.659790, 42.532089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184395, 32.512543, 42.392799>,  <38.970200, 32.267132, 42.160648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184395, 32.512543, 42.392799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009419, 0.682833, -0.730514,
		-0.844491, 0.396647, 0.359869,
		0.535487, 0.613523, 0.580382,
		39.345039, 32.696598, 42.566914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627914, 32.930603, 42.187744>,  <38.970200, 32.267132, 42.160648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627914, 32.930603, 42.187744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996902, 33.031086, 42.305008>,  <39.218296, 33.091377, 42.375366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996902, 33.031086, 42.305008>,  <38.627914, 32.930603, 42.187744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996902, 33.031086, 42.305008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058204, 0.660184, -0.748845,
		-0.381657, 0.707850, 0.594379,
		0.922470, 0.251207, 0.293164,
		39.273643, 33.106449, 42.392956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559975, 33.642185, 42.209660>,  <38.627914, 32.930603, 42.187744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559975, 33.642185, 42.209660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950451, 33.566772, 42.166733>,  <39.184734, 33.521526, 42.140976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950451, 33.566772, 42.166733>,  <38.559975, 33.642185, 42.209660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950451, 33.566772, 42.166733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016320, 0.557125, -0.830268,
		0.216321, 0.808744, 0.546935,
		0.976186, -0.188531, -0.107319,
		39.243305, 33.510212, 42.134537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874443, 34.278538, 41.850960>,  <38.559975, 33.642185, 42.209660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874443, 34.278538, 41.850960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163551, 34.007786, 41.795200>,  <39.337017, 33.845333, 41.761745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163551, 34.007786, 41.795200>,  <38.874443, 34.278538, 41.850960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163551, 34.007786, 41.795200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345272, 0.528412, -0.775608,
		0.598658, 0.512455, 0.615629,
		0.722769, -0.676883, -0.139402,
		39.380383, 33.804722, 41.753380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562683, 34.571548, 41.742195>,  <38.874443, 34.278538, 41.850960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562683, 34.571548, 41.742195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566868, 34.223167, 41.545692>,  <39.569378, 34.014137, 41.427792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566868, 34.223167, 41.545692>,  <39.562683, 34.571548, 41.742195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566868, 34.223167, 41.545692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379076, 0.458069, -0.804037,
		0.925306, -0.177813, 0.334949,
		0.010461, -0.870951, -0.491258,
		39.570007, 33.961884, 41.398315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162468, 34.654285, 41.331654>,  <39.562683, 34.571548, 41.742195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162468, 34.654285, 41.331654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955223, 34.356060, 41.163986>,  <39.830875, 34.177124, 41.063385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.955223, 34.356060, 41.163986>,  <40.162468, 34.654285, 41.331654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955223, 34.356060, 41.163986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186859, 0.379570, -0.906096,
		0.834654, -0.547782, -0.057343,
		-0.518109, -0.745561, -0.419168,
		39.799789, 34.132393, 41.038235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611996, 34.322853, 40.843803>,  <40.162468, 34.654285, 41.331654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611996, 34.322853, 40.843803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253017, 34.218914, 40.701218>,  <40.037632, 34.156551, 40.615665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253017, 34.218914, 40.701218>,  <40.611996, 34.322853, 40.843803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253017, 34.218914, 40.701218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279711, 0.289651, -0.915349,
		0.341104, -0.921184, -0.187264,
		-0.897446, -0.259849, -0.356467,
		39.983784, 34.140961, 40.594276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661175, 33.890285, 40.260162>,  <40.611996, 34.322853, 40.843803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661175, 33.890285, 40.260162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292694, 34.035183, 40.203358>,  <40.071606, 34.122120, 40.169273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292694, 34.035183, 40.203358>,  <40.661175, 33.890285, 40.260162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292694, 34.035183, 40.203358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241654, 0.246601, -0.938505,
		-0.304948, -0.898870, -0.314707,
		-0.921200, 0.362245, -0.142016,
		40.016335, 34.143856, 40.160751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469276, 33.748592, 39.511234>,  <40.661175, 33.890285, 40.260162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469276, 33.748592, 39.511234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202290, 34.020451, 39.632935>,  <40.042095, 34.183563, 39.705956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.202290, 34.020451, 39.632935>,  <40.469276, 33.748592, 39.511234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.202290, 34.020451, 39.632935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062413, 0.356086, -0.932366,
		-0.742015, -0.641317, -0.195258,
		-0.667471, 0.679643, 0.304248,
		40.002048, 34.224342, 39.724209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059223, 33.776047, 38.958870>,  <40.469276, 33.748592, 39.511234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059223, 33.776047, 38.958870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003448, 34.117615, 39.159416>,  <39.969982, 34.322556, 39.279743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003448, 34.117615, 39.159416>,  <40.059223, 33.776047, 38.958870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003448, 34.117615, 39.159416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077827, 0.514201, -0.854131,
		-0.987168, -0.080079, -0.138158,
		-0.139439, 0.853923, 0.501370,
		39.961617, 34.373791, 39.309826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647919, 34.040123, 38.480347>,  <40.059223, 33.776047, 38.958870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647919, 34.040123, 38.480347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763206, 34.329391, 38.731407>,  <39.832378, 34.502953, 38.882046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763206, 34.329391, 38.731407>,  <39.647919, 34.040123, 38.480347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763206, 34.329391, 38.731407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025424, 0.649459, -0.759972,
		-0.957226, 0.234997, 0.168802,
		0.288221, 0.723173, 0.627654,
		39.849674, 34.546345, 38.919704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362942, 34.655224, 38.165981>,  <39.647919, 34.040123, 38.480347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362942, 34.655224, 38.165981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635174, 34.790142, 38.426147>,  <39.798512, 34.871094, 38.582249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.635174, 34.790142, 38.426147>,  <39.362942, 34.655224, 38.165981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.635174, 34.790142, 38.426147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121732, 0.823337, -0.554345,
		-0.722492, 0.456452, 0.519285,
		0.680578, 0.337296, 0.650419,
		39.839348, 34.891331, 38.621273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222328, 35.398388, 38.232185>,  <39.362942, 34.655224, 38.165981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222328, 35.398388, 38.232185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601105, 35.317001, 38.331711>,  <39.828369, 35.268169, 38.391426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601105, 35.317001, 38.331711>,  <39.222328, 35.398388, 38.232185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601105, 35.317001, 38.331711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316328, 0.727126, -0.609282,
		-0.056954, 0.655661, 0.752905,
		0.946939, -0.203464, 0.248816,
		39.885185, 35.255962, 38.406357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463326, 36.035900, 38.438469>,  <39.222328, 35.398388, 38.232185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463326, 36.035900, 38.438469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786686, 35.816189, 38.353817>,  <39.980701, 35.684364, 38.303024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786686, 35.816189, 38.353817>,  <39.463326, 36.035900, 38.438469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786686, 35.816189, 38.353817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335500, 0.725361, -0.601076,
		0.483666, 0.414906, 0.770662,
		0.808398, -0.549277, -0.211631,
		40.029205, 35.651405, 38.290329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.078449, 36.435719, 38.591492>,  <39.463326, 36.035900, 38.438469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.078449, 36.435719, 38.591492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186584, 36.162106, 38.320488>,  <40.251465, 35.997940, 38.157887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.186584, 36.162106, 38.320488>,  <40.078449, 36.435719, 38.591492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186584, 36.162106, 38.320488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262427, 0.729421, -0.631726,
		0.926308, -0.007014, 0.376701,
		0.270342, -0.684030, -0.677509,
		40.267689, 35.956898, 38.117237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457001, 36.860657, 38.141685>,  <40.078449, 36.435719, 38.591492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457001, 36.860657, 38.141685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467979, 36.520390, 37.931690>,  <40.474567, 36.316231, 37.805691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.467979, 36.520390, 37.931690>,  <40.457001, 36.860657, 38.141685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.467979, 36.520390, 37.931690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357054, 0.498886, -0.789700,
		0.933680, -0.165774, 0.317427,
		0.027448, -0.850666, -0.524990,
		40.476215, 36.265190, 37.774193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159691, 36.804470, 37.870346>,  <40.457001, 36.860657, 38.141685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159691, 36.804470, 37.870346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908230, 36.590015, 37.645012>,  <40.757351, 36.461342, 37.509811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.908230, 36.590015, 37.645012>,  <41.159691, 36.804470, 37.870346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908230, 36.590015, 37.645012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334399, 0.467638, -0.818225,
		0.702120, -0.702760, -0.114698,
		-0.628653, -0.536137, -0.563340,
		40.719635, 36.429176, 37.476009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585327, 36.312462, 37.394531>,  <41.159691, 36.804470, 37.870346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585327, 36.312462, 37.394531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218128, 36.413326, 37.272095>,  <40.997807, 36.473846, 37.198631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.218128, 36.413326, 37.272095>,  <41.585327, 36.312462, 37.394531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.218128, 36.413326, 37.272095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393772, 0.487839, -0.779074,
		-0.047132, -0.835719, -0.547131,
		-0.917999, 0.252164, -0.306090,
		40.942730, 36.488976, 37.180267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.600334, 36.152252, 36.748413>,  <41.585327, 36.312462, 37.394531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.600334, 36.152252, 36.748413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.291405, 36.403973, 36.783039>,  <41.106049, 36.555004, 36.803814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.291405, 36.403973, 36.783039>,  <41.600334, 36.152252, 36.748413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.291405, 36.403973, 36.783039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325341, 0.508911, -0.796971,
		-0.545591, -0.587356, -0.597782,
		-0.772323, 0.629304, 0.086566,
		41.059708, 36.592762, 36.809010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485287, 36.351002, 36.061199>,  <41.600334, 36.152252, 36.748413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485287, 36.351002, 36.061199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312244, 36.632763, 36.286289>,  <41.208420, 36.801819, 36.421345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312244, 36.632763, 36.286289>,  <41.485287, 36.351002, 36.061199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312244, 36.632763, 36.286289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096792, 0.656835, -0.747796,
		-0.896373, -0.269032, -0.352330,
		-0.432604, 0.704407, 0.562729,
		41.182465, 36.844086, 36.455109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567844, 35.666050, 35.806030>,  <41.485287, 36.351002, 36.061199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567844, 35.666050, 35.806030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209660, 35.612888, 35.975960>,  <40.994747, 35.580994, 36.077919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209660, 35.612888, 35.975960>,  <41.567844, 35.666050, 35.806030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209660, 35.612888, 35.975960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156728, 0.987409, -0.021459,
		-0.416625, -0.085798, -0.905020,
		-0.895466, -0.132901, 0.424827,
		40.941021, 35.573017, 36.103409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114769, 35.949017, 35.363331>,  <41.567844, 35.666050, 35.806030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114769, 35.949017, 35.363331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212006, 35.584999, 35.497627>,  <42.270348, 35.366589, 35.578205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212006, 35.584999, 35.497627>,  <42.114769, 35.949017, 35.363331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212006, 35.584999, 35.497627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005711, -0.347459, -0.937678,
		0.969987, 0.226024, -0.089661,
		0.243091, -0.910047, 0.335740,
		42.284931, 35.311985, 35.598351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560795, 35.725861, 34.777237>,  <42.114769, 35.949017, 35.363331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560795, 35.725861, 34.777237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424911, 35.427238, 35.006062>,  <42.343380, 35.248066, 35.143356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424911, 35.427238, 35.006062>,  <42.560795, 35.725861, 34.777237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424911, 35.427238, 35.006062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248965, -0.515158, -0.820139,
		0.906980, -0.421035, -0.010860,
		-0.339712, -0.746553, 0.572061,
		42.322998, 35.203274, 35.177681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.817085, 35.122997, 34.457428>,  <42.560795, 35.725861, 34.777237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.817085, 35.122997, 34.457428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474480, 35.101200, 34.662724>,  <42.268917, 35.088123, 34.785900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.474480, 35.101200, 34.662724>,  <42.817085, 35.122997, 34.457428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474480, 35.101200, 34.662724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382511, -0.600597, -0.702117,
		0.346506, -0.797693, 0.493579,
		-0.856516, -0.054488, 0.513236,
		42.217525, 35.084854, 34.816696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.644138, 34.361084, 34.523426>,  <42.817085, 35.122997, 34.457428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.644138, 34.361084, 34.523426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355053, 34.637543, 34.523308>,  <42.181602, 34.803417, 34.523239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355053, 34.637543, 34.523308>,  <42.644138, 34.361084, 34.523426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.355053, 34.637543, 34.523308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490610, -0.513318, -0.704135,
		-0.486804, -0.508752, 0.710066,
		-0.722720, 0.691141, -0.000286,
		42.138237, 34.844887, 34.523220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955269, 34.008636, 34.554733>,  <42.644138, 34.361084, 34.523426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955269, 34.008636, 34.554733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889072, 34.385826, 34.439209>,  <41.849354, 34.612141, 34.369896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.889072, 34.385826, 34.439209>,  <41.955269, 34.008636, 34.554733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.889072, 34.385826, 34.439209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462622, -0.332851, -0.821700,
		-0.870973, -0.002373, 0.491325,
		-0.165488, 0.942976, -0.288807,
		41.839424, 34.668720, 34.352566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524532, 33.593987, 34.681221>,  <41.955269, 34.008636, 34.554733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524532, 33.593987, 34.681221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450813, 33.261402, 34.471573>,  <42.406582, 33.061852, 34.345783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450813, 33.261402, 34.471573>,  <42.524532, 33.593987, 34.681221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450813, 33.261402, 34.471573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918013, -0.044882, 0.394001,
		-0.351121, 0.553767, -0.755020,
		-0.184298, -0.831461, -0.524125,
		42.395523, 33.011963, 34.314335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.117191, 33.583988, 34.277004>,  <42.524532, 33.593987, 34.681221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.117191, 33.583988, 34.277004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.476006, 33.416138, 34.332481>,  <43.691296, 33.315426, 34.365768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.476006, 33.416138, 34.332481>,  <43.117191, 33.583988, 34.277004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.476006, 33.416138, 34.332481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427556, -0.903425, 0.031942,
		0.111897, -0.087953, -0.989820,
		0.897037, -0.419629, 0.138695,
		43.745117, 33.290249, 34.374088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134048, 32.997463, 33.769337>,  <43.117191, 33.583988, 34.277004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134048, 32.997463, 33.769337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.397881, 32.915993, 34.058743>,  <43.556179, 32.867111, 34.232388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.397881, 32.915993, 34.058743>,  <43.134048, 32.997463, 33.769337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.397881, 32.915993, 34.058743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389463, -0.915897, 0.097219,
		0.642863, -0.345906, -0.683430,
		0.659580, -0.203673, 0.723514,
		43.595753, 32.854893, 34.275795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418758, 32.376869, 33.629509>,  <43.134048, 32.997463, 33.769337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418758, 32.376869, 33.629509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.483864, 32.425850, 34.021122>,  <43.522926, 32.455238, 34.256092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.483864, 32.425850, 34.021122>,  <43.418758, 32.376869, 33.629509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483864, 32.425850, 34.021122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546576, -0.814914, 0.192793,
		0.821440, -0.566497, -0.065704,
		0.162760, 0.122455, 0.979037,
		43.532692, 32.462585, 34.314835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.551067, 31.738726, 33.826958>,  <43.418758, 32.376869, 33.629509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.551067, 31.738726, 33.826958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.476810, 31.927130, 34.171906>,  <43.432255, 32.040173, 34.378876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.476810, 31.927130, 34.171906>,  <43.551067, 31.738726, 33.826958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.476810, 31.927130, 34.171906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453921, -0.819481, 0.349867,
		0.871488, -0.326497, 0.365934,
		-0.185645, 0.471010, 0.862372,
		43.421116, 32.068432, 34.430618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.946228, 31.358973, 34.478592>,  <43.551067, 31.738726, 33.826958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.946228, 31.358973, 34.478592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.635944, 31.566071, 34.622936>,  <43.449776, 31.690329, 34.709541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.635944, 31.566071, 34.622936>,  <43.946228, 31.358973, 34.478592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.635944, 31.566071, 34.622936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300808, -0.805996, 0.509789,
		0.554792, 0.286897, 0.780958,
		-0.775707, 0.517745, 0.360859,
		43.403233, 31.721394, 34.731194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963387, 31.053768, 35.111328>,  <43.946228, 31.358973, 34.478592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.963387, 31.053768, 35.111328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615063, 31.248920, 35.087124>,  <43.406067, 31.366013, 35.072601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615063, 31.248920, 35.087124>,  <43.963387, 31.053768, 35.111328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615063, 31.248920, 35.087124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428147, -0.692123, 0.581082,
		0.241620, 0.531918, 0.811593,
		-0.870810, 0.487883, -0.060508,
		43.353821, 31.395285, 35.068970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.756100, 31.227451, 35.743847>,  <43.963387, 31.053768, 35.111328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.756100, 31.227451, 35.743847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429291, 31.198774, 35.514996>,  <43.233204, 31.181568, 35.377686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429291, 31.198774, 35.514996>,  <43.756100, 31.227451, 35.743847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429291, 31.198774, 35.514996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382300, -0.675436, 0.630582,
		-0.431644, 0.733925, 0.524440,
		-0.817025, -0.071693, -0.572127,
		43.184185, 31.177267, 35.343357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292648, 31.101353, 36.189194>,  <43.756100, 31.227451, 35.743847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292648, 31.101353, 36.189194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080936, 31.000206, 35.865238>,  <42.953911, 30.939518, 35.670864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.080936, 31.000206, 35.865238>,  <43.292648, 31.101353, 36.189194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080936, 31.000206, 35.865238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380504, -0.782436, 0.492961,
		-0.758342, 0.569080, 0.317909,
		-0.529277, -0.252867, -0.809891,
		42.922153, 30.924345, 35.622272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.635242, 30.956739, 36.478455>,  <43.292648, 31.101353, 36.189194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.635242, 30.956739, 36.478455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694958, 30.779671, 36.124786>,  <42.730785, 30.673429, 35.912586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.694958, 30.779671, 36.124786>,  <42.635242, 30.956739, 36.478455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.694958, 30.779671, 36.124786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153608, -0.893716, 0.421516,
		-0.976790, 0.072890, -0.201417,
		0.149285, -0.442671, -0.884170,
		42.739742, 30.646870, 35.859535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054684, 30.488560, 36.464310>,  <42.635242, 30.956739, 36.478455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054684, 30.488560, 36.464310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323952, 30.351851, 36.202003>,  <42.485512, 30.269825, 36.044621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323952, 30.351851, 36.202003>,  <42.054684, 30.488560, 36.464310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323952, 30.351851, 36.202003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090328, -0.918153, 0.385793,
		-0.733949, -0.200470, -0.648946,
		0.673171, -0.341771, -0.655770,
		42.525902, 30.249319, 36.005272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.710888, 30.004646, 36.219341>,  <42.054684, 30.488560, 36.464310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.710888, 30.004646, 36.219341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096176, 29.928768, 36.143211>,  <42.327351, 29.883242, 36.097534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096176, 29.928768, 36.143211>,  <41.710888, 30.004646, 36.219341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096176, 29.928768, 36.143211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115570, -0.931871, 0.343889,
		-0.242589, -0.309245, -0.919520,
		0.963220, -0.189693, -0.190322,
		42.385143, 29.871861, 36.086113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.750271, 29.302923, 35.793568>,  <41.710888, 30.004646, 36.219341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.750271, 29.302923, 35.793568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105698, 29.370001, 35.964367>,  <42.318954, 29.410248, 36.066845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.105698, 29.370001, 35.964367>,  <41.750271, 29.302923, 35.793568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.105698, 29.370001, 35.964367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011185, -0.938435, 0.345276,
		0.458611, -0.302025, -0.835737,
		0.888567, 0.167695, 0.426998,
		42.372269, 29.420309, 36.092464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.045681, 28.642078, 35.685825>,  <41.750271, 29.302923, 35.793568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.045681, 28.642078, 35.685825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332485, 28.788490, 35.923119>,  <42.504566, 28.876337, 36.065495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.332485, 28.788490, 35.923119>,  <42.045681, 28.642078, 35.685825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.332485, 28.788490, 35.923119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370668, -0.920951, 0.120229,
		0.590344, 0.133687, -0.796004,
		0.717007, 0.366030, 0.593231,
		42.547588, 28.898300, 36.101089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.793396, 28.401430, 35.581215>,  <42.045681, 28.642078, 35.685825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.793396, 28.401430, 35.581215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762070, 28.515184, 35.963417>,  <42.743275, 28.583437, 36.192738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.762070, 28.515184, 35.963417>,  <42.793396, 28.401430, 35.581215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.762070, 28.515184, 35.963417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285345, -0.911957, 0.294810,
		0.955220, 0.295737, -0.009729,
		-0.078314, 0.284385, 0.955506,
		42.738575, 28.600500, 36.250069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.243149, 28.015282, 35.864700>,  <42.793396, 28.401430, 35.581215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.243149, 28.015282, 35.864700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030762, 28.137794, 36.180740>,  <42.903328, 28.211302, 36.370365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.030762, 28.137794, 36.180740>,  <43.243149, 28.015282, 35.864700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030762, 28.137794, 36.180740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303184, -0.802012, 0.514642,
		0.791298, 0.512806, 0.332983,
		-0.530968, 0.306280, 0.790105,
		42.871471, 28.229679, 36.417770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.701050, 27.788828, 36.477432>,  <43.243149, 28.015282, 35.864700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.701050, 27.788828, 36.477432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.336567, 27.884462, 36.611618>,  <43.117878, 27.941843, 36.692131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.336567, 27.884462, 36.611618>,  <43.701050, 27.788828, 36.477432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.336567, 27.884462, 36.611618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023800, -0.782430, 0.622284,
		0.411260, 0.575014, 0.707265,
		-0.911207, 0.239087, 0.335467,
		43.063206, 27.956188, 36.712257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.739220, 27.705204, 37.213852>,  <43.701050, 27.788828, 36.477432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.739220, 27.705204, 37.213852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345196, 27.687994, 37.147152>,  <43.108780, 27.677668, 37.107132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345196, 27.687994, 37.147152>,  <43.739220, 27.705204, 37.213852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345196, 27.687994, 37.147152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064565, -0.805391, 0.589217,
		-0.159653, 0.591180, 0.790580,
		-0.985059, -0.043027, -0.166753,
		43.049679, 27.675085, 37.097126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.572346, 27.502485, 37.910671>,  <43.739220, 27.705204, 37.213852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.572346, 27.502485, 37.910671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277412, 27.428360, 37.650826>,  <43.100452, 27.383884, 37.494919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.277412, 27.428360, 37.650826>,  <43.572346, 27.502485, 37.910671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.277412, 27.428360, 37.650826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140939, -0.898274, 0.416221,
		-0.660663, 0.398449, 0.636209,
		-0.737333, -0.185315, -0.649614,
		43.056213, 27.372766, 37.455940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.121082, 27.210161, 38.379089>,  <43.572346, 27.502485, 37.910671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.121082, 27.210161, 38.379089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997959, 27.109226, 38.012138>,  <42.924084, 27.048664, 37.791969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.997959, 27.109226, 38.012138>,  <43.121082, 27.210161, 38.379089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.997959, 27.109226, 38.012138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071249, -0.955369, 0.286695,
		-0.948776, 0.153611, 0.276093,
		-0.307811, -0.252338, -0.917376,
		42.905617, 27.033525, 37.736927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.487198, 26.692808, 38.403744>,  <43.121082, 27.210161, 38.379089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.487198, 26.692808, 38.403744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671089, 26.629150, 38.054272>,  <42.781425, 26.590956, 37.844589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.671089, 26.629150, 38.054272>,  <42.487198, 26.692808, 38.403744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.671089, 26.629150, 38.054272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173532, -0.948747, 0.264132,
		-0.870939, -0.273041, -0.408551,
		0.459731, -0.159146, -0.873682,
		42.809010, 26.581406, 37.792168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.103271, 26.160746, 38.167435>,  <42.487198, 26.692808, 38.403744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.103271, 26.160746, 38.167435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464134, 26.176186, 37.995564>,  <42.680653, 26.185450, 37.892441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464134, 26.176186, 37.995564>,  <42.103271, 26.160746, 38.167435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464134, 26.176186, 37.995564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151057, -0.961201, 0.230813,
		-0.404102, -0.273136, -0.872983,
		0.902155, 0.038599, -0.429682,
		42.734779, 26.187765, 37.866657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.179359, 25.614676, 37.686726>,  <42.103271, 26.160746, 38.167435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.179359, 25.614676, 37.686726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528252, 25.732136, 37.843178>,  <42.737587, 25.802612, 37.937050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528252, 25.732136, 37.843178>,  <42.179359, 25.614676, 37.686726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528252, 25.732136, 37.843178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210153, -0.947132, 0.242440,
		0.441644, -0.129266, -0.887829,
		0.872231, 0.293652, 0.391129,
		42.789921, 25.820230, 37.960518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.201500, 25.388184, 36.962101>,  <42.179359, 25.614676, 37.686726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.201500, 25.388184, 36.962101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409821, 25.058279, 36.873978>,  <42.534813, 24.860336, 36.821102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.409821, 25.058279, 36.873978>,  <42.201500, 25.388184, 36.962101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.409821, 25.058279, 36.873978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806951, 0.559828, -0.188210,
		0.278565, -0.079761, 0.957100,
		0.520800, -0.824761, -0.220311,
		42.566059, 24.810850, 36.807884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.844929, 25.336391, 37.312656>,  <42.201500, 25.388184, 36.962101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.844929, 25.336391, 37.312656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894707, 25.132114, 36.972374>,  <42.924576, 25.009548, 36.768204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.894707, 25.132114, 36.972374>,  <42.844929, 25.336391, 37.312656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.894707, 25.132114, 36.972374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874719, 0.461189, -0.148898,
		0.468378, -0.725600, 0.504109,
		0.124449, -0.510694, -0.850708,
		42.932041, 24.978907, 36.717163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.511864, 25.007444, 37.359486>,  <42.844929, 25.336391, 37.312656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.511864, 25.007444, 37.359486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392834, 25.070543, 36.982857>,  <43.321415, 25.108402, 36.756878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.392834, 25.070543, 36.982857>,  <43.511864, 25.007444, 37.359486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.392834, 25.070543, 36.982857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891720, 0.398204, -0.215102,
		0.341008, -0.903631, -0.259162,
		-0.297572, 0.157748, -0.941577,
		43.303562, 25.117868, 36.700382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027145, 24.957159, 36.905373>,  <43.511864, 25.007444, 37.359486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027145, 24.957159, 36.905373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.752357, 25.191278, 36.733093>,  <43.587486, 25.331749, 36.629726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.752357, 25.191278, 36.733093>,  <44.027145, 24.957159, 36.905373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752357, 25.191278, 36.733093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722481, 0.486406, -0.491356,
		-0.078093, -0.648720, -0.757010,
		-0.686967, 0.585297, -0.430703,
		43.546268, 25.366867, 36.603882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.404987, 25.236580, 36.383442>,  <44.027145, 24.957159, 36.905373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.404987, 25.236580, 36.383442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.050751, 25.417582, 36.341553>,  <43.838207, 25.526182, 36.316418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.050751, 25.417582, 36.341553>,  <44.404987, 25.236580, 36.383442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.050751, 25.417582, 36.341553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402417, 0.634933, -0.659486,
		-0.231927, -0.626178, -0.744387,
		-0.885590, 0.452506, -0.104727,
		43.785072, 25.553333, 36.310135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.087215, 25.305769, 35.725853>,  <44.404987, 25.236580, 36.383442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.087215, 25.305769, 35.725853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734795, 25.124153, 35.778908>,  <43.523342, 25.015184, 35.810741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.734795, 25.124153, 35.778908>,  <44.087215, 25.305769, 35.725853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.734795, 25.124153, 35.778908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461780, 0.886372, -0.033209,
		-0.102484, -0.090506, -0.990609,
		-0.881054, -0.454040, 0.132633,
		43.470478, 24.987942, 35.818699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.524246, 25.372648, 35.166290>,  <44.087215, 25.305769, 35.725853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.524246, 25.372648, 35.166290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313377, 25.323015, 35.502552>,  <43.186855, 25.293236, 35.704308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313377, 25.323015, 35.502552>,  <43.524246, 25.372648, 35.166290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313377, 25.323015, 35.502552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694684, 0.632678, -0.342246,
		-0.489396, -0.764409, -0.419726,
		-0.527167, -0.124083, 0.840653,
		43.155228, 25.285789, 35.754749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.129360, 25.308817, 34.603851>,  <43.524246, 25.372648, 35.166290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.129360, 25.308817, 34.603851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.272892, 25.388704, 34.239136>,  <44.359013, 25.436638, 34.020306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.272892, 25.388704, 34.239136>,  <44.129360, 25.308817, 34.603851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.272892, 25.388704, 34.239136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505724, 0.779438, 0.369755,
		0.784532, -0.593789, 0.178672,
		0.358821, 0.199726, -0.911788,
		44.380543, 25.448620, 33.965599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.783966, 25.159679, 34.676682>,  <44.129360, 25.308817, 34.603851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.783966, 25.159679, 34.676682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.679916, 25.434528, 34.405327>,  <44.617489, 25.599438, 34.242516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.679916, 25.434528, 34.405327>,  <44.783966, 25.159679, 34.676682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.679916, 25.434528, 34.405327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522853, 0.690886, 0.499301,
		0.811765, -0.224815, -0.538976,
		-0.260121, 0.687120, -0.678383,
		44.601879, 25.640665, 34.201813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.321815, 25.543676, 34.528244>,  <44.783966, 25.159679, 34.676682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.321815, 25.543676, 34.528244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989449, 25.755316, 34.459389>,  <44.790028, 25.882299, 34.418076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989449, 25.755316, 34.459389>,  <45.321815, 25.543676, 34.528244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.989449, 25.755316, 34.459389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422394, 0.801229, 0.423811,
		0.362160, 0.279442, -0.889243,
		-0.830918, 0.529098, -0.172138,
		44.740173, 25.914045, 34.407745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.529602, 26.154543, 34.254696>,  <45.321815, 25.543676, 34.528244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.529602, 26.154543, 34.254696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.176769, 26.222696, 34.430374>,  <44.965069, 26.263588, 34.535782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.176769, 26.222696, 34.430374>,  <45.529602, 26.154543, 34.254696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.176769, 26.222696, 34.430374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376823, 0.814699, 0.440761,
		-0.282715, 0.554289, -0.782839,
		-0.882086, 0.170382, 0.439197,
		44.912144, 26.273811, 34.562134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.308975, 26.941864, 34.066444>,  <45.529602, 26.154543, 34.254696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.308975, 26.941864, 34.066444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.112759, 26.828020, 34.395897>,  <44.995029, 26.759714, 34.593567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.112759, 26.828020, 34.395897>,  <45.308975, 26.941864, 34.066444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.112759, 26.828020, 34.395897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211844, 0.877858, 0.429521,
		-0.845277, 0.385178, -0.370330,
		-0.490539, -0.284612, 0.823631,
		44.965595, 26.742636, 34.642986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.900818, 27.550257, 34.237862>,  <45.308975, 26.941864, 34.066444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.900818, 27.550257, 34.237862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.862858, 27.346718, 34.580105>,  <44.840080, 27.224594, 34.785450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.862858, 27.346718, 34.580105>,  <44.900818, 27.550257, 34.237862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.862858, 27.346718, 34.580105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069276, 0.854030, 0.515590,
		-0.993073, 0.108203, -0.045798,
		-0.094901, -0.508846, 0.855610,
		44.834389, 27.194063, 34.836788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.376911, 27.883398, 34.588726>,  <44.900818, 27.550257, 34.237862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.376911, 27.883398, 34.588726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619781, 27.692968, 34.843189>,  <44.765503, 27.578711, 34.995865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.619781, 27.692968, 34.843189>,  <44.376911, 27.883398, 34.588726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.619781, 27.692968, 34.843189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057798, 0.824973, 0.562210,
		-0.792463, -0.304591, 0.528419,
		0.607175, -0.476072, 0.636155,
		44.801933, 27.550146, 35.034035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.201248, 28.001421, 35.278069>,  <44.376911, 27.883398, 34.588726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.201248, 28.001421, 35.278069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577648, 27.881804, 35.341423>,  <44.803490, 27.810034, 35.379436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.577648, 27.881804, 35.341423>,  <44.201248, 28.001421, 35.278069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.577648, 27.881804, 35.341423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103024, 0.699002, 0.707659,
		-0.322337, -0.649591, 0.688571,
		0.941002, -0.299044, 0.158391,
		44.859947, 27.792089, 35.388939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325172, 28.033215, 36.028820>,  <44.201248, 28.001421, 35.278069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325172, 28.033215, 36.028820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.688820, 28.040007, 35.862347>,  <44.907009, 28.044083, 35.762463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.688820, 28.040007, 35.862347>,  <44.325172, 28.033215, 36.028820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.688820, 28.040007, 35.862347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200305, 0.858232, 0.472563,
		0.365210, -0.512981, 0.776835,
		0.909120, 0.016981, -0.416188,
		44.961555, 28.045101, 35.737492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.789211, 28.173901, 36.573357>,  <44.325172, 28.033215, 36.028820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.789211, 28.173901, 36.573357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.992462, 28.255741, 36.238705>,  <45.114414, 28.304846, 36.037914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.992462, 28.255741, 36.238705>,  <44.789211, 28.173901, 36.573357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.992462, 28.255741, 36.238705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373076, 0.823227, 0.427915,
		0.776285, -0.529562, 0.341974,
		0.508130, 0.204602, -0.836626,
		45.144901, 28.317122, 35.987717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.387997, 28.456219, 36.755295>,  <44.789211, 28.173901, 36.573357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.387997, 28.456219, 36.755295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377956, 28.578114, 36.374454>,  <45.371933, 28.651251, 36.145950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.377956, 28.578114, 36.374454>,  <45.387997, 28.456219, 36.755295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.377956, 28.578114, 36.374454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379685, 0.883944, 0.272913,
		0.924775, -0.354651, -0.137890,
		-0.025098, 0.304738, -0.952105,
		45.370426, 28.669535, 36.088821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.953217, 28.959835, 36.710987>,  <45.387997, 28.456219, 36.755295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.953217, 28.959835, 36.710987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759853, 29.033688, 36.368706>,  <45.643837, 29.077999, 36.163338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.759853, 29.033688, 36.368706>,  <45.953217, 28.959835, 36.710987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.759853, 29.033688, 36.368706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274661, 0.960134, 0.052003,
		0.831191, -0.209889, -0.514848,
		-0.483409, 0.184633, -0.855703,
		45.614830, 29.089077, 36.111996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.471333, 29.271494, 36.203632>,  <45.953217, 28.959835, 36.710987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.471333, 29.271494, 36.203632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.103283, 29.370956, 36.082611>,  <45.882454, 29.430634, 36.009998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.103283, 29.370956, 36.082611>,  <46.471333, 29.271494, 36.203632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.103283, 29.370956, 36.082611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308083, 0.936545, -0.167237,
		0.241766, -0.247090, -0.938347,
		-0.920127, 0.248657, -0.302549,
		45.827244, 29.445553, 35.991848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.636436, 29.663689, 35.655220>,  <46.471333, 29.271494, 36.203632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.636436, 29.663689, 35.655220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277946, 29.783783, 35.785847>,  <46.062855, 29.855839, 35.864223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.277946, 29.783783, 35.785847>,  <46.636436, 29.663689, 35.655220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.277946, 29.783783, 35.785847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225748, 0.942388, -0.246864,
		-0.381869, -0.147523, -0.912366,
		-0.896222, 0.300235, 0.326566,
		46.009079, 29.873854, 35.883816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.580257, 30.180759, 35.238472>,  <46.636436, 29.663689, 35.655220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.580257, 30.180759, 35.238472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.288704, 30.220646, 35.509407>,  <46.113773, 30.244577, 35.671967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.288704, 30.220646, 35.509407>,  <46.580257, 30.180759, 35.238472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.288704, 30.220646, 35.509407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020222, 0.992041, -0.124284,
		-0.684337, -0.076892, -0.725100,
		-0.728885, 0.099715, 0.677335,
		46.070038, 30.250561, 35.712608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.059223, 30.513578, 34.915833>,  <46.580257, 30.180759, 35.238472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.059223, 30.513578, 34.915833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.005726, 30.601574, 35.302349>,  <45.973629, 30.654371, 35.534260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.005726, 30.601574, 35.302349>,  <46.059223, 30.513578, 34.915833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.005726, 30.601574, 35.302349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083709, 0.969059, -0.232203,
		-0.987475, -0.111943, -0.111189,
		-0.133742, 0.219987, 0.966291,
		45.965603, 30.667570, 35.592236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.507927, 30.895527, 34.888451>,  <46.059223, 30.513578, 34.915833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.507927, 30.895527, 34.888451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.659367, 30.990431, 35.246304>,  <45.750229, 31.047373, 35.461018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.659367, 30.990431, 35.246304>,  <45.507927, 30.895527, 34.888451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.659367, 30.990431, 35.246304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285294, 0.949437, -0.131059,
		-0.880494, -0.205614, 0.427146,
		0.378600, 0.237259, 0.894634,
		45.772945, 31.061609, 35.514694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.066380, 31.374222, 35.162170>,  <45.507927, 30.895527, 34.888451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.066380, 31.374222, 35.162170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.373932, 31.452372, 35.405693>,  <45.558464, 31.499262, 35.551807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.373932, 31.452372, 35.405693>,  <45.066380, 31.374222, 35.162170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.373932, 31.452372, 35.405693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129386, 0.980015, -0.151093,
		-0.626161, 0.037402, 0.778796,
		0.768883, 0.195374, 0.608808,
		45.604595, 31.510984, 35.588337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.902718, 31.964153, 35.497292>,  <45.066380, 31.374222, 35.162170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.902718, 31.964153, 35.497292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.299274, 31.985308, 35.545193>,  <45.537209, 31.998001, 35.573933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.299274, 31.985308, 35.545193>,  <44.902718, 31.964153, 35.497292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.299274, 31.985308, 35.545193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054244, 0.998495, 0.008088,
		-0.119148, -0.014515, 0.992770,
		0.991393, 0.052888, 0.119756,
		45.596691, 32.001175, 35.581120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.046490, 32.482452, 35.925293>,  <44.902718, 31.964153, 35.497292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.046490, 32.482452, 35.925293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400639, 32.435596, 35.745338>,  <45.613129, 32.407482, 35.637367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.400639, 32.435596, 35.745338>,  <45.046490, 32.482452, 35.925293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.400639, 32.435596, 35.745338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137259, 0.990460, 0.012236,
		0.444156, -0.072584, 0.893004,
		0.885373, -0.117138, -0.449882,
		45.666252, 32.400455, 35.610374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.538193, 32.921459, 36.267426>,  <45.046490, 32.482452, 35.925293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.538193, 32.921459, 36.267426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.689777, 32.849339, 35.904354>,  <45.780727, 32.806065, 35.686512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.689777, 32.849339, 35.904354>,  <45.538193, 32.921459, 36.267426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.689777, 32.849339, 35.904354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005941, 0.980341, -0.197220,
		0.925393, 0.080131, 0.370441,
		0.378962, -0.180305, -0.907677,
		45.803467, 32.795246, 35.632050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.078690, 33.453285, 36.130436>,  <45.538193, 32.921459, 36.267426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.078690, 33.453285, 36.130436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.979362, 33.325081, 35.764790>,  <45.919765, 33.248158, 35.545403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.979362, 33.325081, 35.764790>,  <46.078690, 33.453285, 36.130436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.979362, 33.325081, 35.764790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108485, 0.928536, -0.355037,
		0.962584, -0.187331, -0.195805,
		-0.248321, -0.320511, -0.914117,
		45.904865, 33.228928, 35.490555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.596008, 33.571926, 35.586540>,  <46.078690, 33.453285, 36.130436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.596008, 33.571926, 35.586540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.238350, 33.560940, 35.407768>,  <46.023754, 33.554348, 35.300503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.238350, 33.560940, 35.407768>,  <46.596008, 33.571926, 35.586540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.238350, 33.560940, 35.407768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169994, 0.902573, -0.395554,
		0.414252, -0.429659, -0.802364,
		-0.894146, -0.027462, -0.446932,
		45.970104, 33.552700, 35.273689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.361542, 33.516747, 35.592999>,  <46.596008, 33.571926, 35.586540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.361542, 33.516747, 35.592999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.549854, 33.687962, 35.284416>,  <47.662842, 33.790691, 35.099266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.549854, 33.687962, 35.284416>,  <47.361542, 33.516747, 35.592999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.549854, 33.687962, 35.284416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499229, 0.850209, 0.167078,
		0.727417, 0.306477, 0.613951,
		0.470781, 0.428038, -0.771459,
		47.691090, 33.816372, 35.052979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.645443, 34.195538, 35.846020>,  <47.361542, 33.516747, 35.592999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.645443, 34.195538, 35.846020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.596489, 34.225254, 35.450142>,  <47.567116, 34.243084, 35.212616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.596489, 34.225254, 35.450142>,  <47.645443, 34.195538, 35.846020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.596489, 34.225254, 35.450142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398241, 0.909720, 0.117531,
		0.909079, 0.408523, -0.081754,
		-0.122387, 0.074287, -0.989698,
		47.559772, 34.247540, 35.153233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.194504, 34.611275, 35.391521>,  <47.645443, 34.195538, 35.846020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.194504, 34.611275, 35.391521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.814857, 34.610310, 35.265556>,  <47.587070, 34.609730, 35.189976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.814857, 34.610310, 35.265556>,  <48.194504, 34.611275, 35.391521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.814857, 34.610310, 35.265556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009944, 0.999701, 0.022322,
		0.314767, 0.024318, -0.948857,
		-0.949117, -0.002409, -0.314915,
		47.530121, 34.609589, 35.171082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.065796, 35.185165, 34.799271>,  <48.194504, 34.611275, 35.391521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.065796, 35.185165, 34.799271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.740273, 35.076500, 35.004765>,  <47.544960, 35.011299, 35.128059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.740273, 35.076500, 35.004765>,  <48.065796, 35.185165, 34.799271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.740273, 35.076500, 35.004765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210038, 0.961748, 0.175855,
		-0.541856, 0.035208, -0.839734,
		-0.813804, -0.271664, 0.513733,
		47.496132, 34.995003, 35.158886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.129871, 33.888447, 43.948158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.949299, 33.661606, 43.672592>,  <34.840958, 33.525501, 43.507252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.949299, 33.661606, 43.672592>,  <35.129871, 33.888447, 43.948158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949299, 33.661606, 43.672592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314198, 0.621592, -0.717567,
		0.835160, -0.540387, -0.102421,
		-0.451428, -0.567103, -0.688917,
		34.813869, 33.491474, 43.465916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556385, 33.936016, 43.413647>,  <35.129871, 33.888447, 43.948158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556385, 33.936016, 43.413647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.205997, 33.821350, 43.258472>,  <34.995766, 33.752548, 43.165367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.205997, 33.821350, 43.258472>,  <35.556385, 33.936016, 43.413647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205997, 33.821350, 43.258472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223072, 0.472321, -0.852732,
		0.427678, -0.833508, -0.349794,
		-0.875974, -0.286665, -0.387933,
		34.943207, 33.735348, 43.142094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723087, 33.780388, 42.746513>,  <35.556385, 33.936016, 43.413647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723087, 33.780388, 42.746513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.325676, 33.825317, 42.739674>,  <35.087231, 33.852276, 42.735569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.325676, 33.825317, 42.739674>,  <35.723087, 33.780388, 42.746513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325676, 33.825317, 42.739674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058609, 0.377741, -0.924054,
		-0.097334, -0.919073, -0.381878,
		-0.993524, 0.112324, -0.017099,
		35.027618, 33.859013, 42.734543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546627, 33.545689, 42.097580>,  <35.723087, 33.780388, 42.746513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546627, 33.545689, 42.097580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.252628, 33.790890, 42.213524>,  <35.076229, 33.938011, 42.283089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.252628, 33.790890, 42.213524>,  <35.546627, 33.545689, 42.097580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252628, 33.790890, 42.213524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100018, 0.324784, -0.940485,
		-0.670656, -0.720242, -0.177403,
		-0.734994, 0.612998, 0.289855,
		35.032131, 33.974789, 42.300480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204681, 33.461983, 41.557392>,  <35.546627, 33.545689, 42.097580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204681, 33.461983, 41.557392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.036236, 33.776653, 41.737972>,  <34.935169, 33.965454, 41.846321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.036236, 33.776653, 41.737972>,  <35.204681, 33.461983, 41.557392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036236, 33.776653, 41.737972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120730, 0.444689, -0.887511,
		-0.898938, -0.428244, -0.092288,
		-0.421111, 0.786676, 0.451450,
		34.909901, 34.012657, 41.873405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.633095, 33.625217, 41.169754>,  <35.204681, 33.461983, 41.557392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.633095, 33.625217, 41.169754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.741497, 33.966671, 41.347687>,  <34.806538, 34.171543, 41.454445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.741497, 33.966671, 41.347687>,  <34.633095, 33.625217, 41.169754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741497, 33.966671, 41.347687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000208, 0.462175, -0.886789,
		-0.962578, 0.240230, 0.125429,
		0.271004, 0.853630, 0.444829,
		34.822800, 34.222759, 41.481136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069901, 34.108181, 41.102222>,  <34.633095, 33.625217, 41.169754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069901, 34.108181, 41.102222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.400631, 34.320763, 41.175888>,  <34.599068, 34.448311, 41.220085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.400631, 34.320763, 41.175888>,  <34.069901, 34.108181, 41.102222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400631, 34.320763, 41.175888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140380, 0.512047, -0.847409,
		-0.544660, 0.674806, 0.497979,
		0.826825, 0.531455, 0.184162,
		34.648678, 34.480198, 41.231136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897774, 34.794796, 40.966885>,  <34.069901, 34.108181, 41.102222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897774, 34.794796, 40.966885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.296730, 34.782722, 40.940674>,  <34.536106, 34.775478, 40.924946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.296730, 34.782722, 40.940674>,  <33.897774, 34.794796, 40.966885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296730, 34.782722, 40.940674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034006, 0.604330, -0.796008,
		0.063631, 0.796162, 0.601728,
		0.997394, -0.030188, -0.065529,
		34.595947, 34.773666, 40.921017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134872, 35.428871, 40.764431>,  <33.897774, 34.794796, 40.966885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134872, 35.428871, 40.764431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.502544, 35.282452, 40.706310>,  <34.723148, 35.194599, 40.671436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.502544, 35.282452, 40.706310>,  <34.134872, 35.428871, 40.764431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502544, 35.282452, 40.706310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200601, 0.752664, -0.627101,
		0.338910, 0.547274, 0.765266,
		0.919184, -0.366044, -0.145302,
		34.778301, 35.172638, 40.662720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574711, 35.987293, 40.570503>,  <34.134872, 35.428871, 40.764431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574711, 35.987293, 40.570503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.753639, 35.660385, 40.425194>,  <34.860996, 35.464241, 40.338009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.753639, 35.660385, 40.425194>,  <34.574711, 35.987293, 40.570503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753639, 35.660385, 40.425194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445740, 0.555858, -0.701668,
		0.775384, 0.151945, 0.612938,
		0.447321, -0.817273, -0.363275,
		34.887836, 35.415203, 40.316212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144684, 36.305367, 40.336109>,  <34.574711, 35.987293, 40.570503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144684, 36.305367, 40.336109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.100044, 35.956951, 40.144760>,  <35.073261, 35.747902, 40.029949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.100044, 35.956951, 40.144760>,  <35.144684, 36.305367, 40.336109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100044, 35.956951, 40.144760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537105, 0.352143, -0.766494,
		0.836100, -0.342478, 0.428538,
		-0.111600, -0.871036, -0.478374,
		35.066563, 35.695641, 40.001247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800362, 36.118027, 40.143902>,  <35.144684, 36.305367, 40.336109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800362, 36.118027, 40.143902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.523758, 35.957767, 39.903469>,  <35.357796, 35.861614, 39.759209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.523758, 35.957767, 39.903469>,  <35.800362, 36.118027, 40.143902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523758, 35.957767, 39.903469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393224, 0.489231, -0.778478,
		0.605961, -0.774684, -0.180764,
		-0.691510, -0.400646, -0.601079,
		35.316303, 35.837574, 39.723145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103558, 35.988071, 39.542313>,  <35.800362, 36.118027, 40.143902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103558, 35.988071, 39.542313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.725185, 35.941422, 39.421242>,  <35.498161, 35.913433, 39.348598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.725185, 35.941422, 39.421242>,  <36.103558, 35.988071, 39.542313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725185, 35.941422, 39.421242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265323, 0.258612, -0.928829,
		0.186602, -0.958915, -0.213685,
		-0.945930, -0.116625, -0.302680,
		35.441406, 35.906433, 39.330437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197372, 35.581093, 38.925667>,  <36.103558, 35.988071, 39.542313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197372, 35.581093, 38.925667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.847267, 35.773792, 38.908520>,  <35.637203, 35.889412, 38.898232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.847267, 35.773792, 38.908520>,  <36.197372, 35.581093, 38.925667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847267, 35.773792, 38.908520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227254, 0.331394, -0.915715,
		-0.426938, -0.811230, -0.399535,
		-0.875259, 0.481750, -0.042870,
		35.584690, 35.918316, 38.895660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766159, 35.416817, 38.254814>,  <36.197372, 35.581093, 38.925667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766159, 35.416817, 38.254814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.646393, 35.768967, 38.401943>,  <35.574532, 35.980255, 38.490223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.646393, 35.768967, 38.401943>,  <35.766159, 35.416817, 38.254814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646393, 35.768967, 38.401943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036192, 0.395714, -0.917661,
		-0.953435, -0.261452, -0.150346,
		-0.299418, 0.880371, 0.367825,
		35.556568, 36.033077, 38.512291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481762, 35.833103, 37.650116>,  <35.766159, 35.416817, 38.254814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481762, 35.833103, 37.650116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.515076, 36.116123, 37.930813>,  <35.535065, 36.285934, 38.099232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.515076, 36.116123, 37.930813>,  <35.481762, 35.833103, 37.650116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515076, 36.116123, 37.930813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177868, 0.682322, -0.709083,
		-0.980524, 0.183872, -0.069024,
		0.083284, 0.707550, 0.701738,
		35.540062, 36.328388, 38.141335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164814, 36.372349, 37.350922>,  <35.481762, 35.833103, 37.650116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164814, 36.372349, 37.350922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.400482, 36.527424, 37.634495>,  <35.541882, 36.620468, 37.804638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.400482, 36.527424, 37.634495>,  <35.164814, 36.372349, 37.350922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.400482, 36.527424, 37.634495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214255, 0.771013, -0.599695,
		-0.779087, 0.505213, 0.371192,
		0.589168, 0.387684, 0.708930,
		35.577232, 36.643730, 37.847176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.983093, 37.052090, 37.209785>,  <35.164814, 36.372349, 37.350922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.983093, 37.052090, 37.209785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.320484, 37.053257, 37.424648>,  <35.522919, 37.053959, 37.553566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.320484, 37.053257, 37.424648>,  <34.983093, 37.052090, 37.209785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320484, 37.053257, 37.424648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358035, 0.742414, -0.566244,
		-0.400451, 0.669935, 0.625161,
		0.843475, 0.002923, 0.537161,
		35.573528, 37.054134, 37.585796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172497, 37.745972, 37.375950>,  <34.983093, 37.052090, 37.209785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172497, 37.745972, 37.375950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.522877, 37.555843, 37.408890>,  <35.733105, 37.441765, 37.428654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.522877, 37.555843, 37.408890>,  <35.172497, 37.745972, 37.375950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522877, 37.555843, 37.408890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459156, 0.769151, -0.444503,
		0.147943, 0.427173, 0.891984,
		0.875950, -0.475322, 0.082349,
		35.785660, 37.413246, 37.433594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731529, 38.215103, 37.664364>,  <35.172497, 37.745972, 37.375950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731529, 38.215103, 37.664364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.916889, 37.931686, 37.451485>,  <36.028103, 37.761639, 37.323757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.916889, 37.931686, 37.451485>,  <35.731529, 38.215103, 37.664364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916889, 37.931686, 37.451485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607972, 0.691138, -0.390766,
		0.644695, -0.142481, 0.751044,
		0.463398, -0.708539, -0.532198,
		36.055908, 37.719124, 37.291824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413208, 38.398190, 37.770969>,  <35.731529, 38.215103, 37.664364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413208, 38.398190, 37.770969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.375618, 38.178299, 37.438953>,  <36.353065, 38.046364, 37.239742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.375618, 38.178299, 37.438953>,  <36.413208, 38.398190, 37.770969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375618, 38.178299, 37.438953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582348, 0.645867, -0.493686,
		0.807490, -0.529766, 0.259438,
		-0.093976, -0.549730, -0.830039,
		36.347424, 38.013378, 37.189941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154625, 38.428879, 37.504234>,  <36.413208, 38.398190, 37.770969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154625, 38.428879, 37.504234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.897781, 38.339745, 37.210831>,  <36.743675, 38.286263, 37.034790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.897781, 38.339745, 37.210831>,  <37.154625, 38.428879, 37.504234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897781, 38.339745, 37.210831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432814, 0.684359, -0.586792,
		0.632742, -0.694259, -0.342989,
		-0.642113, -0.222838, -0.733508,
		36.705147, 38.272892, 36.990780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632732, 37.795040, 37.650551>,  <37.154625, 38.428879, 37.504234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632732, 37.795040, 37.650551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.958565, 37.974964, 37.797043>,  <38.154064, 38.082920, 37.884937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.958565, 37.974964, 37.797043>,  <37.632732, 37.795040, 37.650551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958565, 37.974964, 37.797043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066558, -0.554721, 0.829370,
		0.576215, -0.699967, -0.421927,
		0.814583, 0.449813, 0.366227,
		38.202938, 38.109909, 37.906910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124474, 37.244343, 37.818665>,  <37.632732, 37.795040, 37.650551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124474, 37.244343, 37.818665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.192432, 37.577061, 38.030041>,  <38.233208, 37.776691, 38.156868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.192432, 37.577061, 38.030041>,  <38.124474, 37.244343, 37.818665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192432, 37.577061, 38.030041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104261, -0.518058, 0.848967,
		0.979932, -0.199329, -0.001290,
		0.169893, 0.831796, 0.528444,
		38.243401, 37.826599, 38.188572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628643, 37.033566, 38.394863>,  <38.124474, 37.244343, 37.818665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628643, 37.033566, 38.394863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.451080, 37.372246, 38.512192>,  <38.344543, 37.575455, 38.582588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.451080, 37.372246, 38.512192>,  <38.628643, 37.033566, 38.394863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.451080, 37.372246, 38.512192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045727, -0.348321, 0.936259,
		0.894905, 0.402200, 0.193339,
		-0.443907, 0.846704, 0.293323,
		38.317909, 37.626259, 38.600189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860870, 37.267204, 39.073200>,  <38.628643, 37.033566, 38.394863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860870, 37.267204, 39.073200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.514740, 37.466717, 39.053513>,  <38.307060, 37.586422, 39.041702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.514740, 37.466717, 39.053513>,  <38.860870, 37.267204, 39.073200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514740, 37.466717, 39.053513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151921, -0.167452, 0.974105,
		0.477622, 0.850399, 0.220676,
		-0.865331, 0.498779, -0.049214,
		38.255142, 37.616352, 39.038750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938469, 37.795288, 39.588814>,  <38.860870, 37.267204, 39.073200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938469, 37.795288, 39.588814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.545670, 37.755173, 39.524776>,  <38.309990, 37.731102, 39.486355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.545670, 37.755173, 39.524776>,  <38.938469, 37.795288, 39.588814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545670, 37.755173, 39.524776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148856, -0.110974, 0.982612,
		-0.116313, 0.988750, 0.094047,
		-0.981995, -0.100291, -0.160089,
		38.251072, 37.725086, 39.476749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597134, 38.167763, 40.133232>,  <38.938469, 37.795288, 39.588814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.597134, 38.167763, 40.133232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.340164, 37.889896, 40.003780>,  <38.185982, 37.723179, 39.926109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.340164, 37.889896, 40.003780>,  <38.597134, 38.167763, 40.133232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340164, 37.889896, 40.003780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406616, -0.048977, 0.912285,
		-0.649580, 0.717667, -0.250997,
		-0.642424, -0.694662, -0.323630,
		38.147438, 37.681499, 39.906693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015129, 38.404022, 40.480141>,  <38.597134, 38.167763, 40.133232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015129, 38.404022, 40.480141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.980755, 38.021008, 40.370052>,  <37.960129, 37.791199, 40.303997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.980755, 38.021008, 40.370052>,  <38.015129, 38.404022, 40.480141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980755, 38.021008, 40.370052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432253, -0.213059, 0.876221,
		-0.897649, 0.194263, -0.395587,
		-0.085934, -0.957532, -0.275223,
		37.954975, 37.733749, 40.287487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540508, 38.261700, 40.869259>,  <38.015129, 38.404022, 40.480141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540508, 38.261700, 40.869259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.622791, 37.891582, 40.741814>,  <37.672161, 37.669510, 40.665348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.622791, 37.891582, 40.741814>,  <37.540508, 38.261700, 40.869259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622791, 37.891582, 40.741814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524640, -0.379105, 0.762255,
		-0.826099, 0.010358, -0.563430,
		0.205704, -0.925296, -0.318612,
		37.684502, 37.613995, 40.646229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974537, 37.840973, 41.076817>,  <37.540508, 38.261700, 40.869259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974537, 37.840973, 41.076817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.263000, 37.571812, 41.010941>,  <37.436081, 37.410316, 40.971413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.263000, 37.571812, 41.010941>,  <36.974537, 37.840973, 41.076817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263000, 37.571812, 41.010941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363691, -0.570082, 0.736706,
		-0.589628, -0.471381, -0.655850,
		0.721158, -0.672909, -0.164700,
		37.479351, 37.369942, 40.961533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619942, 37.191158, 41.088497>,  <36.974537, 37.840973, 41.076817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619942, 37.191158, 41.088497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.009144, 37.127491, 41.155342>,  <37.242664, 37.089291, 41.195450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.009144, 37.127491, 41.155342>,  <36.619942, 37.191158, 41.088497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009144, 37.127491, 41.155342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225157, -0.495802, 0.838740,
		-0.050647, -0.853725, -0.518256,
		0.973005, -0.159168, 0.167111,
		37.301044, 37.079739, 41.205475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736259, 36.419727, 41.156673>,  <36.619942, 37.191158, 41.088497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736259, 36.419727, 41.156673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.054008, 36.598099, 41.321651>,  <37.244659, 36.705120, 41.420639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.054008, 36.598099, 41.321651>,  <36.736259, 36.419727, 41.156673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054008, 36.598099, 41.321651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133252, -0.534539, 0.834573,
		0.592629, -0.717925, -0.365204,
		0.794377, 0.445928, 0.412449,
		37.292320, 36.731876, 41.445385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215855, 35.907284, 41.397911>,  <36.736259, 36.419727, 41.156673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215855, 35.907284, 41.397911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.300697, 36.236744, 41.608284>,  <37.351604, 36.434422, 41.734509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.300697, 36.236744, 41.608284>,  <37.215855, 35.907284, 41.397911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300697, 36.236744, 41.608284> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033936, -0.531648, 0.846285,
		0.976657, -0.197352, -0.084816,
		0.212108, 0.823652, 0.525934,
		37.364330, 36.483841, 41.766064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665707, 35.676624, 41.960522>,  <37.215855, 35.907284, 41.397911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665707, 35.676624, 41.960522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.509632, 36.019573, 42.094788>,  <37.415989, 36.225342, 42.175346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.509632, 36.019573, 42.094788>,  <37.665707, 35.676624, 41.960522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509632, 36.019573, 42.094788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081913, -0.395436, 0.914834,
		0.917086, 0.329458, 0.224522,
		-0.390183, 0.857373, 0.335662,
		37.392578, 36.276787, 42.195488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076103, 35.791637, 42.631222>,  <37.665707, 35.676624, 41.960522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076103, 35.791637, 42.631222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.743103, 36.013245, 42.632298>,  <37.543304, 36.146210, 42.632942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.743103, 36.013245, 42.632298>,  <38.076103, 35.791637, 42.631222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743103, 36.013245, 42.632298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228192, -0.347320, 0.909559,
		0.504845, 0.756595, 0.415567,
		-0.832502, 0.554016, 0.002694,
		37.493351, 36.179451, 42.633106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029121, 35.921444, 43.321312>,  <38.076103, 35.791637, 42.631222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029121, 35.921444, 43.321312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.671459, 36.003777, 43.162258>,  <37.456860, 36.053177, 43.066826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.671459, 36.003777, 43.162258>,  <38.029121, 35.921444, 43.321312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.671459, 36.003777, 43.162258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445823, -0.491585, 0.748054,
		-0.041500, 0.846155, 0.531319,
		-0.894158, 0.205830, -0.397637,
		37.403214, 36.065525, 43.042969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699093, 36.336567, 43.825577>,  <38.029121, 35.921444, 43.321312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699093, 36.336567, 43.825577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.446423, 36.140289, 43.585510>,  <37.294819, 36.022522, 43.441471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.446423, 36.140289, 43.585510>,  <37.699093, 36.336567, 43.825577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446423, 36.140289, 43.585510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418235, -0.436143, 0.796780,
		-0.652736, 0.754319, 0.070275,
		-0.631677, -0.490695, -0.600169,
		37.256920, 35.993080, 43.405460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084000, 36.452118, 44.019527>,  <37.699093, 36.336567, 43.825577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084000, 36.452118, 44.019527> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.008266, 36.123711, 43.804089>,  <36.962826, 35.926666, 43.674828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.008266, 36.123711, 43.804089>,  <37.084000, 36.452118, 44.019527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.008266, 36.123711, 43.804089> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428176, -0.424584, 0.797743,
		-0.883639, 0.381652, -0.271152,
		-0.189334, -0.821018, -0.538593,
		36.951466, 35.877407, 43.642509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464722, 36.161007, 44.266632>,  <37.084000, 36.452118, 44.019527>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464722, 36.161007, 44.266632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.609509, 35.843018, 44.071903>,  <36.696381, 35.652225, 43.955067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.609509, 35.843018, 44.071903>,  <36.464722, 36.161007, 44.266632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609509, 35.843018, 44.071903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318202, -0.596236, 0.737055,
		-0.876200, -0.111884, -0.468781,
		0.361969, -0.794974, -0.486821,
		36.718098, 35.604527, 43.925858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.975327, 35.573277, 44.171799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.328770, 35.389393, 44.136227>,  <36.540836, 35.279064, 44.114883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.328770, 35.389393, 44.136227>,  <35.975327, 35.573277, 44.171799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328770, 35.389393, 44.136227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289177, -0.685160, 0.668530,
		-0.368259, -0.565001, -0.738349,
		0.883607, -0.459706, -0.088931,
		36.593853, 35.251480, 44.109547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770164, 34.937893, 44.175251>,  <35.975327, 35.573277, 44.171799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770164, 34.937893, 44.175251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.159466, 34.925072, 44.266254>,  <36.393047, 34.917377, 44.320854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.159466, 34.925072, 44.266254>,  <35.770164, 34.937893, 44.175251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159466, 34.925072, 44.266254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176259, -0.739330, 0.649865,
		0.147371, -0.672580, -0.725202,
		0.973249, -0.032052, 0.227504,
		36.451439, 34.915455, 44.334507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937881, 34.215073, 44.101536>,  <35.770164, 34.937893, 44.175251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937881, 34.215073, 44.101536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.228180, 34.377842, 44.323421>,  <36.402359, 34.475502, 44.456551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.228180, 34.377842, 44.323421>,  <35.937881, 34.215073, 44.101536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228180, 34.377842, 44.323421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095990, -0.738528, 0.667355,
		0.681233, -0.537577, -0.496923,
		0.725746, 0.406925, 0.554711,
		36.445904, 34.499920, 44.489834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585052, 33.829609, 44.057663>,  <35.937881, 34.215073, 44.101536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585052, 33.829609, 44.057663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.561737, 34.021328, 44.407951>,  <36.547749, 34.136360, 44.618122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.561737, 34.021328, 44.407951>,  <36.585052, 33.829609, 44.057663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561737, 34.021328, 44.407951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032972, -0.877654, 0.478159,
		0.997755, -0.001004, 0.066959,
		-0.058287, 0.479293, 0.875717,
		36.544250, 34.165115, 44.670666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844547, 33.396637, 44.531067>,  <36.585052, 33.829609, 44.057663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844547, 33.396637, 44.531067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.664509, 33.649685, 44.783165>,  <36.556484, 33.801514, 44.934422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.664509, 33.649685, 44.783165>,  <36.844547, 33.396637, 44.531067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664509, 33.649685, 44.783165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158291, -0.751119, 0.640909,
		0.878839, 0.188709, 0.438214,
		-0.450096, 0.632621, 0.630241,
		36.529480, 33.839470, 44.972237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987339, 33.070656, 45.168354>,  <36.844547, 33.396637, 44.531067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987339, 33.070656, 45.168354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.697586, 33.328503, 45.266113>,  <36.523735, 33.483212, 45.324768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.697586, 33.328503, 45.266113>,  <36.987339, 33.070656, 45.168354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697586, 33.328503, 45.266113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237964, -0.566526, 0.788937,
		0.647023, 0.513336, 0.563779,
		-0.724385, 0.644619, 0.244400,
		36.480270, 33.521889, 45.339432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001472, 33.118500, 45.833164>,  <36.987339, 33.070656, 45.168354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001472, 33.118500, 45.833164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.651138, 33.309647, 45.806179>,  <36.440937, 33.424335, 45.789989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.651138, 33.309647, 45.806179>,  <37.001472, 33.118500, 45.833164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651138, 33.309647, 45.806179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303247, -0.436197, 0.847216,
		0.375429, 0.762481, 0.526949,
		-0.875839, 0.477865, -0.067459,
		36.388386, 33.453007, 45.785942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884705, 33.480900, 46.464401>,  <37.001472, 33.118500, 45.833164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884705, 33.480900, 46.464401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.521725, 33.427834, 46.304935>,  <36.303936, 33.395992, 46.209255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.521725, 33.427834, 46.304935>,  <36.884705, 33.480900, 46.464401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521725, 33.427834, 46.304935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245725, -0.602074, 0.759688,
		-0.340807, 0.787342, 0.513755,
		-0.907453, -0.132665, -0.398660,
		36.249489, 33.388035, 46.185337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407162, 33.616920, 46.927254>,  <36.884705, 33.480900, 46.464401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407162, 33.616920, 46.927254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.239616, 33.363758, 46.666801>,  <36.139088, 33.211861, 46.510529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.239616, 33.363758, 46.666801>,  <36.407162, 33.616920, 46.927254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.239616, 33.363758, 46.666801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262455, -0.602083, 0.754064,
		-0.869292, 0.486745, 0.086081,
		-0.418865, -0.632910, -0.651135,
		36.113956, 33.173885, 46.471462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891323, 33.302502, 47.284466>,  <36.407162, 33.616920, 46.927254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891323, 33.302502, 47.284466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.907169, 33.066837, 46.961651>,  <35.916676, 32.925438, 46.767960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.907169, 33.066837, 46.961651>,  <35.891323, 33.302502, 47.284466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907169, 33.066837, 46.961651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202703, -0.795620, 0.570877,
		-0.978438, 0.140974, -0.150946,
		0.039617, -0.589165, -0.807041,
		35.919056, 32.890087, 46.719540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309456, 32.948269, 47.281952>,  <35.891323, 33.302502, 47.284466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309456, 32.948269, 47.281952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.589226, 32.743546, 47.082409>,  <35.757088, 32.620712, 46.962685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.589226, 32.743546, 47.082409>,  <35.309456, 32.948269, 47.281952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589226, 32.743546, 47.082409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040299, -0.725119, 0.687444,
		-0.713568, -0.460713, -0.527793,
		0.699426, -0.511807, -0.498855,
		35.799053, 32.590004, 46.932751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053284, 32.317104, 47.248932>,  <35.309456, 32.948269, 47.281952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053284, 32.317104, 47.248932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.446487, 32.261822, 47.200623>,  <35.682411, 32.228653, 47.171638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.446487, 32.261822, 47.200623>,  <35.053284, 32.317104, 47.248932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446487, 32.261822, 47.200623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049879, -0.834404, 0.548892,
		-0.176631, -0.533543, -0.827123,
		0.983012, -0.138207, -0.120769,
		35.741390, 32.220360, 47.164391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154213, 31.638504, 47.062710>,  <35.053284, 32.317104, 47.248932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154213, 31.638504, 47.062710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.523354, 31.728706, 47.187611>,  <35.744839, 31.782827, 47.262550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.523354, 31.728706, 47.187611>,  <35.154213, 31.638504, 47.062710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523354, 31.728706, 47.187611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045227, -0.868522, 0.493583,
		0.382501, -0.441380, -0.811712,
		0.922848, 0.225507, 0.312249,
		35.800209, 31.796358, 47.281284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392666, 30.960760, 47.126915>,  <35.154213, 31.638504, 47.062710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392666, 30.960760, 47.126915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.677315, 31.177711, 47.305542>,  <35.848103, 31.307882, 47.412716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.677315, 31.177711, 47.305542>,  <35.392666, 30.960760, 47.126915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.677315, 31.177711, 47.305542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112504, -0.715391, 0.689607,
		0.693498, -0.440498, -0.570107,
		0.711620, 0.542381, 0.446564,
		35.890800, 31.340425, 47.439510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028885, 30.562138, 47.246487>,  <35.392666, 30.960760, 47.126915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028885, 30.562138, 47.246487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.003544, 30.846134, 47.527027>,  <35.988338, 31.016533, 47.695351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.003544, 30.846134, 47.527027>,  <36.028885, 30.562138, 47.246487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003544, 30.846134, 47.527027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048211, -0.699767, 0.712743,
		0.996826, 0.078964, 0.010100,
		-0.063348, 0.709994, 0.701353,
		35.984539, 31.059132, 47.737434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511627, 30.310303, 47.777397>,  <36.028885, 30.562138, 47.246487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511627, 30.310303, 47.777397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.255974, 30.547533, 47.973263>,  <36.102581, 30.689871, 48.090782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.255974, 30.547533, 47.973263>,  <36.511627, 30.310303, 47.777397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255974, 30.547533, 47.973263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171482, -0.510758, 0.842449,
		0.749737, 0.622404, 0.224739,
		-0.639130, 0.593076, 0.489666,
		36.064236, 30.725456, 48.120163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841835, 30.530272, 48.435284>,  <36.511627, 30.310303, 47.777397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841835, 30.530272, 48.435284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.447079, 30.586306, 48.467361>,  <36.210224, 30.619926, 48.486607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.447079, 30.586306, 48.467361>,  <36.841835, 30.530272, 48.435284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447079, 30.586306, 48.467361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011463, -0.434729, 0.900489,
		0.161007, 0.889599, 0.427422,
		-0.986887, 0.140085, 0.080192,
		36.151012, 30.628332, 48.491421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704189, 30.822521, 49.048809>,  <36.841835, 30.530272, 48.435284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704189, 30.822521, 49.048809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.344521, 30.662678, 48.977482>,  <36.128719, 30.566771, 48.934685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.344521, 30.662678, 48.977482>,  <36.704189, 30.822521, 49.048809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344521, 30.662678, 48.977482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009620, -0.389346, 0.921041,
		-0.437484, 0.829893, 0.346246,
		-0.899175, -0.399610, -0.178317,
		36.074768, 30.542795, 48.923988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361538, 30.793818, 49.683197>,  <36.704189, 30.822521, 49.048809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361538, 30.793818, 49.683197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.093170, 30.579803, 49.477829>,  <35.932148, 30.451395, 49.354607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.093170, 30.579803, 49.477829>,  <36.361538, 30.793818, 49.683197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093170, 30.579803, 49.477829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202220, -0.534125, 0.820864,
		-0.713420, 0.654561, 0.250163,
		-0.670923, -0.535033, -0.513421,
		35.891891, 30.419294, 49.323803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826408, 30.678940, 50.160744>,  <36.361538, 30.793818, 49.683197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826408, 30.678940, 50.160744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.762882, 30.408665, 49.872791>,  <35.724766, 30.246500, 49.700020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.762882, 30.408665, 49.872791>,  <35.826408, 30.678940, 50.160744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762882, 30.408665, 49.872791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572051, -0.531300, 0.624882,
		-0.804697, 0.511047, -0.302149,
		-0.158812, -0.675685, -0.719881,
		35.715240, 30.205959, 49.656826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101673, 30.572001, 50.198826>,  <35.826408, 30.678940, 50.160744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101673, 30.572001, 50.198826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.295742, 30.269655, 50.022972>,  <35.412186, 30.088249, 49.917461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.295742, 30.269655, 50.022972>,  <35.101673, 30.572001, 50.198826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295742, 30.269655, 50.022972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376019, -0.634263, 0.675515,
		-0.789439, -0.162432, -0.591947,
		0.485175, -0.755861, -0.439635,
		35.441296, 30.042896, 49.891083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584454, 29.982464, 50.175079>,  <35.101673, 30.572001, 50.198826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584454, 29.982464, 50.175079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.935650, 29.798197, 50.123055>,  <35.146366, 29.687635, 50.091839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.935650, 29.798197, 50.123055>,  <34.584454, 29.982464, 50.175079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935650, 29.798197, 50.123055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324858, -0.772997, 0.544925,
		-0.351565, -0.436189, -0.828336,
		0.877992, -0.460668, -0.130060,
		35.199047, 29.659996, 50.084038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334850, 29.276951, 50.044739>,  <34.584454, 29.982464, 50.175079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334850, 29.276951, 50.044739> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.714722, 29.238810, 50.164078>,  <34.942646, 29.215925, 50.235683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.714722, 29.238810, 50.164078>,  <34.334850, 29.276951, 50.044739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714722, 29.238810, 50.164078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250624, -0.802659, 0.541226,
		0.187865, -0.588766, -0.786169,
		0.949681, -0.095355, 0.298351,
		34.999626, 29.210203, 50.253582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639141, 29.495319, 50.356541>,  <34.334850, 29.276951, 50.044739>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639141, 29.495319, 50.356541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.421574, 29.210030, 50.533386>,  <33.291035, 29.038857, 50.639492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.421574, 29.210030, 50.533386>,  <33.639141, 29.495319, 50.356541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.421574, 29.210030, 50.533386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706281, 0.104608, -0.700160,
		0.453121, -0.693088, -0.560634,
		-0.543919, -0.713223, 0.442115,
		33.258396, 28.996063, 50.666019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.976166, 29.854595, 49.777473>,  <33.639141, 29.495319, 50.356541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.976166, 29.854595, 49.777473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.758354, 29.525064, 49.714481>,  <33.627666, 29.327347, 49.676685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.758354, 29.525064, 49.714481>,  <33.976166, 29.854595, 49.777473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758354, 29.525064, 49.714481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061953, 0.226746, -0.971981,
		0.836452, -0.519513, -0.174509,
		-0.544527, -0.823827, -0.157477,
		33.594997, 29.277916, 49.667240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207096, 29.597288, 49.203861>,  <33.976166, 29.854595, 49.777473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207096, 29.597288, 49.203861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.864521, 29.390816, 49.207230>,  <33.658974, 29.266933, 49.209251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.864521, 29.390816, 49.207230>,  <34.207096, 29.597288, 49.203861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864521, 29.390816, 49.207230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091473, 0.135669, -0.986522,
		0.508080, -0.845667, -0.163409,
		-0.856439, -0.516180, 0.008425,
		33.607590, 29.235962, 49.209759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197433, 29.187086, 48.540245>,  <34.207096, 29.597288, 49.203861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197433, 29.187086, 48.540245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.817745, 29.164865, 48.664108>,  <33.589931, 29.151533, 48.738426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.817745, 29.164865, 48.664108>,  <34.197433, 29.187086, 48.540245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817745, 29.164865, 48.664108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314412, 0.202038, -0.927537,
		-0.011038, -0.977801, -0.209245,
		-0.949223, -0.055551, 0.309663,
		33.532978, 29.148199, 48.757008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821278, 28.895376, 47.971226>,  <34.197433, 29.187086, 48.540245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821278, 28.895376, 47.971226> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.529606, 29.080744, 48.172638>,  <33.354603, 29.191965, 48.293484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.529606, 29.080744, 48.172638>,  <33.821278, 28.895376, 47.971226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.529606, 29.080744, 48.172638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306053, 0.437276, -0.845649,
		-0.612072, -0.770734, -0.177021,
		-0.729177, 0.463421, 0.503530,
		33.310852, 29.219770, 48.323696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181114, 28.829630, 47.590126>,  <33.821278, 28.895376, 47.971226>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181114, 28.829630, 47.590126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.151413, 29.152946, 47.823757>,  <33.133595, 29.346937, 47.963936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.151413, 29.152946, 47.823757>,  <33.181114, 28.829630, 47.590126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.151413, 29.152946, 47.823757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137995, 0.571733, -0.808751,
		-0.987646, -0.140650, 0.069088,
		-0.074251, 0.808294, 0.584079,
		33.129139, 29.395435, 47.998981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673717, 29.152321, 47.385738>,  <33.181114, 28.829630, 47.590126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673717, 29.152321, 47.385738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.852814, 29.453392, 47.578823>,  <32.960270, 29.634035, 47.694672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.852814, 29.453392, 47.578823>,  <32.673717, 29.152321, 47.385738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852814, 29.453392, 47.578823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070867, 0.568014, -0.819962,
		-0.891353, 0.332919, 0.307660,
		0.447736, 0.752679, 0.482709,
		32.987133, 29.679195, 47.723637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204903, 29.822062, 47.209095>,  <32.673717, 29.152321, 47.385738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204903, 29.822062, 47.209095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.566113, 29.951641, 47.321957>,  <32.782837, 30.029388, 47.389675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.566113, 29.951641, 47.321957>,  <32.204903, 29.822062, 47.209095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566113, 29.951641, 47.321957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105385, 0.469683, -0.876523,
		-0.416471, 0.821253, 0.389994,
		0.903021, 0.323947, 0.282157,
		32.837017, 30.048824, 47.406605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230000, 30.566101, 46.939842>,  <32.204903, 29.822062, 47.209095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230000, 30.566101, 46.939842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.602127, 30.434994, 47.005661>,  <32.825405, 30.356329, 47.045151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.602127, 30.434994, 47.005661>,  <32.230000, 30.566101, 46.939842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602127, 30.434994, 47.005661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316644, 0.491452, -0.811302,
		0.185055, 0.806871, 0.560993,
		0.930318, -0.327771, 0.164545,
		32.881222, 30.336662, 47.055023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593315, 31.168285, 46.873768>,  <32.230000, 30.566101, 46.939842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593315, 31.168285, 46.873768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.860867, 30.874859, 46.825645>,  <33.021397, 30.698803, 46.796772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.860867, 30.874859, 46.825645>,  <32.593315, 31.168285, 46.873768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860867, 30.874859, 46.825645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372303, 0.470661, -0.799918,
		0.643417, 0.490262, 0.587927,
		0.668883, -0.733568, -0.120306,
		33.061531, 30.654789, 46.789555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304672, 31.474794, 46.898708>,  <32.593315, 31.168285, 46.873768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304672, 31.474794, 46.898708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.357487, 31.125402, 46.711262>,  <33.389175, 30.915768, 46.598793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.357487, 31.125402, 46.711262>,  <33.304672, 31.474794, 46.898708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357487, 31.125402, 46.711262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649453, 0.433381, -0.624814,
		0.748851, -0.221846, 0.624505,
		0.132036, -0.873479, -0.468616,
		33.397099, 30.863359, 46.570679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071125, 31.394785, 46.738441>,  <33.304672, 31.474794, 46.898708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071125, 31.394785, 46.738441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.872986, 31.144028, 46.497898>,  <33.754101, 30.993574, 46.353573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.872986, 31.144028, 46.497898>,  <34.071125, 31.394785, 46.738441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872986, 31.144028, 46.497898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573944, 0.283467, -0.768267,
		0.652088, -0.725707, 0.219387,
		-0.495348, -0.626893, -0.601361,
		33.724380, 30.955959, 46.317490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639652, 31.084177, 46.258121>,  <34.071125, 31.394785, 46.738441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639652, 31.084177, 46.258121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.284054, 31.038477, 46.080746>,  <34.070694, 31.011057, 45.974319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.284054, 31.038477, 46.080746>,  <34.639652, 31.084177, 46.258121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284054, 31.038477, 46.080746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368510, 0.396355, -0.840894,
		0.271829, -0.910961, -0.310256,
		-0.888994, -0.114247, -0.443439,
		34.017357, 31.004202, 45.947716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863644, 30.799917, 45.684120>,  <34.639652, 31.084177, 46.258121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863644, 30.799917, 45.684120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.490273, 30.930500, 45.624603>,  <34.266251, 31.008850, 45.588894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.490273, 30.930500, 45.624603>,  <34.863644, 30.799917, 45.684120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490273, 30.930500, 45.624603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319567, 0.568081, -0.758394,
		-0.163058, -0.755454, -0.634587,
		-0.933429, 0.326455, -0.148788,
		34.210243, 31.028437, 45.579967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840160, 30.730352, 44.953342>,  <34.863644, 30.799917, 45.684120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840160, 30.730352, 44.953342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.589233, 31.015881, 45.077881>,  <34.438679, 31.187197, 45.152603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.589233, 31.015881, 45.077881>,  <34.840160, 30.730352, 44.953342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589233, 31.015881, 45.077881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206005, 0.537660, -0.817608,
		-0.751025, -0.448758, -0.484332,
		-0.627314, 0.713819, 0.311350,
		34.401039, 31.230026, 45.171288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623692, 31.047331, 44.305004>,  <34.840160, 30.730352, 44.953342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623692, 31.047331, 44.305004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.508072, 31.298473, 44.594070>,  <34.438702, 31.449160, 44.767509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.508072, 31.298473, 44.594070>,  <34.623692, 31.047331, 44.305004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508072, 31.298473, 44.594070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098193, 0.770353, -0.630012,
		-0.952266, -0.111143, -0.284320,
		-0.289048, 0.627856, 0.722667,
		34.421356, 31.486830, 44.810871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076763, 31.429108, 44.039474>,  <34.623692, 31.047331, 44.305004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076763, 31.429108, 44.039474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.211723, 31.661644, 44.335640>,  <34.292698, 31.801165, 44.513340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.211723, 31.661644, 44.335640>,  <34.076763, 31.429108, 44.039474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211723, 31.661644, 44.335640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035303, 0.793792, -0.607164,
		-0.940699, 0.178719, 0.288348,
		0.337400, 0.581339, 0.740410,
		34.312943, 31.836046, 44.557762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576031, 31.958330, 44.110359>,  <34.076763, 31.429108, 44.039474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576031, 31.958330, 44.110359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.935528, 32.060608, 44.252838>,  <34.151226, 32.121975, 44.338326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.935528, 32.060608, 44.252838>,  <33.576031, 31.958330, 44.110359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935528, 32.060608, 44.252838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002919, 0.808852, -0.588005,
		-0.438458, 0.529508, 0.726206,
		0.898747, 0.255696, 0.356193,
		34.205151, 32.137318, 44.359695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481026, 32.608932, 44.192310>,  <33.576031, 31.958330, 44.110359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481026, 32.608932, 44.192310> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.880226, 32.583649, 44.192520>,  <34.119747, 32.568478, 44.192646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.880226, 32.583649, 44.192520>,  <33.481026, 32.608932, 44.192310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.880226, 32.583649, 44.192520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052437, 0.823194, -0.565333,
		0.035302, 0.564230, 0.824863,
		0.998000, -0.063211, 0.000526,
		34.179626, 32.564686, 44.192677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766300, 33.298664, 44.381786>,  <33.481026, 32.608932, 44.192310>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766300, 33.298664, 44.381786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.042660, 33.099583, 44.172043>,  <34.208473, 32.980133, 44.046196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.042660, 33.099583, 44.172043>,  <33.766300, 33.298664, 44.381786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042660, 33.099583, 44.172043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184744, 0.822764, -0.537521,
		0.698950, 0.274500, 0.660393,
		0.690897, -0.497703, -0.524359,
		34.249928, 32.950272, 44.014736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420368, 33.716827, 44.313072>,  <33.766300, 33.298664, 44.381786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420368, 33.716827, 44.313072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.494968, 33.456871, 44.018356>,  <34.539730, 33.300896, 43.841526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.494968, 33.456871, 44.018356>,  <34.420368, 33.716827, 44.313072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.494968, 33.456871, 44.018356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337007, 0.746765, -0.573383,
		0.922845, -0.141365, 0.358292,
		0.186504, -0.649890, -0.736790,
		34.550919, 33.261906, 43.797321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.834953, 26.333344, 37.265594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.479321, 26.219374, 37.408901>,  <43.265942, 26.150991, 37.494884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.479321, 26.219374, 37.408901>,  <43.834953, 26.333344, 37.265594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.479321, 26.219374, 37.408901> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443806, 0.728266, -0.522173,
		-0.112136, -0.623255, -0.773937,
		-0.889079, -0.284924, 0.358270,
		43.212597, 26.133896, 37.516380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.342976, 26.357857, 36.649036>,  <43.834953, 26.333344, 37.265594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.342976, 26.357857, 36.649036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.167053, 26.422428, 37.002422>,  <43.061501, 26.461172, 37.214455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.167053, 26.422428, 37.002422>,  <43.342976, 26.357857, 36.649036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167053, 26.422428, 37.002422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387898, 0.853082, -0.348979,
		-0.810006, -0.496177, -0.312569,
		-0.439802, 0.161430, 0.883467,
		43.035114, 26.470858, 37.267464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.659050, 26.579935, 36.485477>,  <43.342976, 26.357857, 36.649036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.659050, 26.579935, 36.485477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.742123, 26.714117, 36.853031>,  <42.791965, 26.794626, 37.073563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.742123, 26.714117, 36.853031>,  <42.659050, 26.579935, 36.485477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742123, 26.714117, 36.853031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375206, 0.894829, -0.241871,
		-0.903377, -0.294537, 0.311703,
		0.207681, 0.335453, 0.918880,
		42.804428, 26.814753, 37.128696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151234, 27.001429, 36.595135>,  <42.659050, 26.579935, 36.485477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151234, 27.001429, 36.595135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.425735, 27.127579, 36.857307>,  <42.590439, 27.203268, 37.014610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.425735, 27.127579, 36.857307>,  <42.151234, 27.001429, 36.595135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425735, 27.127579, 36.857307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279343, 0.946282, -0.162841,
		-0.671579, -0.071339, 0.737490,
		0.686257, 0.315374, 0.655432,
		42.631611, 27.222191, 37.053936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.795177, 27.609777, 36.983826>,  <42.151234, 27.001429, 36.595135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.795177, 27.609777, 36.983826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.194736, 27.620590, 36.968430>,  <42.434471, 27.627077, 36.959194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.194736, 27.620590, 36.968430>,  <41.795177, 27.609777, 36.983826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194736, 27.620590, 36.968430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040317, 0.913544, -0.404736,
		0.024220, 0.405840, 0.913623,
		0.998893, 0.027032, -0.038488,
		42.494404, 27.628700, 36.956882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856571, 28.232422, 37.136814>,  <41.795177, 27.609777, 36.983826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856571, 28.232422, 37.136814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.215115, 28.133774, 36.989449>,  <42.430241, 28.074585, 36.901028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.215115, 28.133774, 36.989449>,  <41.856571, 28.232422, 37.136814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.215115, 28.133774, 36.989449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132159, 0.941855, -0.308939,
		0.423182, 0.228229, 0.876828,
		0.896354, -0.246618, -0.368413,
		42.484020, 28.059788, 36.878925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.392387, 28.599936, 37.569645>,  <41.856571, 28.232422, 37.136814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.392387, 28.599936, 37.569645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.508308, 28.498608, 37.200462>,  <42.577862, 28.437811, 36.978954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.508308, 28.498608, 37.200462>,  <42.392387, 28.599936, 37.569645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508308, 28.498608, 37.200462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006483, 0.964834, -0.262780,
		0.957065, 0.070170, 0.281252,
		0.289801, -0.253321, -0.922954,
		42.595249, 28.422611, 36.923576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705589, 29.098928, 37.443748>,  <42.392387, 28.599936, 37.569645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705589, 29.098928, 37.443748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.706131, 28.942684, 37.075527>,  <42.706455, 28.848938, 36.854595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.706131, 28.942684, 37.075527>,  <42.705589, 29.098928, 37.443748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.706131, 28.942684, 37.075527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038787, 0.919843, -0.390363,
		0.999247, 0.036234, -0.013905,
		0.001354, -0.390609, -0.920556,
		42.706535, 28.825502, 36.799362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137871, 29.462137, 37.063511>,  <42.705589, 29.098928, 37.443748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137871, 29.462137, 37.063511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.964474, 29.284048, 36.750114>,  <42.860435, 29.177195, 36.562077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.964474, 29.284048, 36.750114>,  <43.137871, 29.462137, 37.063511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.964474, 29.284048, 36.750114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063703, 0.852114, -0.519465,
		0.898905, -0.275092, -0.341019,
		-0.433488, -0.445226, -0.783494,
		42.834427, 29.150480, 36.515068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.580914, 29.472601, 36.477482>,  <43.137871, 29.462137, 37.063511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.580914, 29.472601, 36.477482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.199833, 29.488337, 36.356941>,  <42.971184, 29.497778, 36.284615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.199833, 29.488337, 36.356941>,  <43.580914, 29.472601, 36.477482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199833, 29.488337, 36.356941> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198541, 0.831301, -0.519153,
		0.230092, -0.554429, -0.799791,
		-0.952701, 0.039338, -0.301353,
		42.914024, 29.500137, 36.266537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623436, 29.552513, 35.855225>,  <43.580914, 29.472601, 36.477482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623436, 29.552513, 35.855225> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.244434, 29.660097, 35.924389>,  <43.017033, 29.724648, 35.965889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.244434, 29.660097, 35.924389>,  <43.623436, 29.552513, 35.855225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.244434, 29.660097, 35.924389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076746, 0.716265, -0.693596,
		-0.310401, -0.643914, -0.699304,
		-0.947502, 0.268962, 0.172912,
		42.960182, 29.740786, 35.976261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.428814, 29.856873, 35.134296>,  <43.623436, 29.552513, 35.855225>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.428814, 29.856873, 35.134296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.160793, 29.970078, 35.408794>,  <42.999981, 30.038000, 35.573494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.160793, 29.970078, 35.408794>,  <43.428814, 29.856873, 35.134296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.160793, 29.970078, 35.408794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175557, 0.837828, -0.516938,
		-0.721257, -0.466850, -0.511702,
		-0.670051, 0.283012, 0.686248,
		42.959778, 30.054981, 35.614670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857979, 30.009357, 34.737381>,  <43.428814, 29.856873, 35.134296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857979, 30.009357, 34.737381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.789684, 30.205711, 35.079113>,  <42.748707, 30.323524, 35.284153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.789684, 30.205711, 35.079113>,  <42.857979, 30.009357, 34.737381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.789684, 30.205711, 35.079113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098417, 0.854229, -0.510496,
		-0.980389, -0.171243, -0.097539,
		-0.170740, 0.490885, 0.854330,
		42.738461, 30.352978, 35.335411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410408, 30.455355, 34.510063>,  <42.857979, 30.009357, 34.737381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.410408, 30.455355, 34.510063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.531776, 30.612833, 34.857151>,  <42.604595, 30.707321, 35.065403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.531776, 30.612833, 34.857151>,  <42.410408, 30.455355, 34.510063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531776, 30.612833, 34.857151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090415, 0.894647, -0.437530,
		-0.948558, 0.211209, 0.235856,
		0.303419, 0.393698, 0.867721,
		42.622803, 30.730942, 35.117466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140591, 31.220327, 34.556828>,  <42.410408, 30.455355, 34.510063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140591, 31.220327, 34.556828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.453983, 31.206808, 34.805027>,  <42.642017, 31.198696, 34.953945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.453983, 31.206808, 34.805027>,  <42.140591, 31.220327, 34.556828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453983, 31.206808, 34.805027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223699, 0.946918, -0.230877,
		-0.579760, 0.319693, 0.749450,
		0.783478, -0.033798, 0.620500,
		42.689026, 31.196669, 34.991177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135742, 31.882782, 34.954769>,  <42.140591, 31.220327, 34.556828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135742, 31.882782, 34.954769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.514526, 31.757429, 34.983219>,  <42.741798, 31.682217, 35.000290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.514526, 31.757429, 34.983219>,  <42.135742, 31.882782, 34.954769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.514526, 31.757429, 34.983219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320117, 0.939314, -0.123345,
		-0.028157, 0.139572, 0.989811,
		0.946959, -0.313383, 0.071128,
		42.798615, 31.663414, 35.004559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477230, 32.447571, 35.233021>,  <42.135742, 31.882782, 34.954769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477230, 32.447571, 35.233021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.771397, 32.215187, 35.093513>,  <42.947899, 32.075756, 35.009808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.771397, 32.215187, 35.093513>,  <42.477230, 32.447571, 35.233021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.771397, 32.215187, 35.093513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545945, 0.812886, -0.202880,
		0.401377, -0.041208, 0.914986,
		0.735419, -0.580963, -0.348771,
		42.992023, 32.040897, 34.988884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167896, 32.698540, 35.513500>,  <42.477230, 32.447571, 35.233021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167896, 32.698540, 35.513500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.250946, 32.495293, 35.179146>,  <43.300777, 32.373344, 34.978535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.250946, 32.495293, 35.179146>,  <43.167896, 32.698540, 35.513500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250946, 32.495293, 35.179146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786344, 0.594971, -0.166350,
		0.581854, -0.622756, 0.523088,
		0.207627, -0.508119, -0.835887,
		43.313232, 32.342857, 34.928379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797821, 32.882782, 35.485622>,  <43.167896, 32.698540, 35.513500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797821, 32.882782, 35.485622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.719154, 32.729881, 35.124470>,  <43.671955, 32.638142, 34.907776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.719154, 32.729881, 35.124470>,  <43.797821, 32.882782, 35.485622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.719154, 32.729881, 35.124470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732154, 0.555232, -0.394549,
		0.652130, -0.738646, 0.170673,
		-0.196669, -0.382256, -0.902886,
		43.660152, 32.615204, 34.853603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.400700, 32.503670, 35.227169>,  <43.797821, 32.882782, 35.485622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.400700, 32.503670, 35.227169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.161762, 32.653046, 34.943275>,  <44.018402, 32.742672, 34.772938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.161762, 32.653046, 34.943275>,  <44.400700, 32.503670, 35.227169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.161762, 32.653046, 34.943275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744681, 0.586792, -0.318002,
		0.297713, -0.718483, -0.628609,
		-0.597342, 0.373440, -0.709736,
		43.982559, 32.765079, 34.730354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.784832, 32.658852, 34.700485>,  <44.400700, 32.503670, 35.227169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.784832, 32.658852, 34.700485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.473476, 32.888908, 34.599827>,  <44.286663, 33.026943, 34.539433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.473476, 32.888908, 34.599827>,  <44.784832, 32.658852, 34.700485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.473476, 32.888908, 34.599827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627164, 0.694544, -0.352526,
		-0.027972, -0.432226, -0.901331,
		-0.778385, 0.575143, -0.251649,
		44.239960, 33.061451, 34.524334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.807991, 32.802940, 34.024284>,  <44.784832, 32.658852, 34.700485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.807991, 32.802940, 34.024284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.598560, 33.113510, 34.164589>,  <44.472900, 33.299850, 34.248772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.598560, 33.113510, 34.164589>,  <44.807991, 32.802940, 34.024284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.598560, 33.113510, 34.164589> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621436, 0.629668, -0.466193,
		-0.582825, -0.026113, -0.812178,
		-0.523576, 0.776425, 0.350759,
		44.441486, 33.346439, 34.269817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.476681, 32.697514, 34.375977>,  <44.807991, 32.802940, 34.024284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.476681, 32.697514, 34.375977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.642872, 32.862095, 34.700466>,  <45.742588, 32.960842, 34.895161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.642872, 32.862095, 34.700466>,  <45.476681, 32.697514, 34.375977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.642872, 32.862095, 34.700466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301884, -0.903670, 0.303722,
		0.858046, 0.118706, -0.499666,
		0.415480, 0.411449, 0.811226,
		45.767517, 32.985531, 34.943832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.136101, 32.478600, 34.402393>,  <45.476681, 32.697514, 34.375977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.136101, 32.478600, 34.402393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.027546, 32.576183, 34.774807>,  <45.962414, 32.634735, 34.998257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.027546, 32.576183, 34.774807>,  <46.136101, 32.478600, 34.402393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.027546, 32.576183, 34.774807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344410, -0.878671, 0.330633,
		0.898738, 0.410388, 0.154438,
		-0.271388, 0.243963, 0.931037,
		45.946129, 32.649372, 35.054119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.723083, 32.261166, 34.897179>,  <46.136101, 32.478600, 34.402393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.723083, 32.261166, 34.897179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.403248, 32.290768, 35.135567>,  <46.211346, 32.308529, 35.278599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.403248, 32.290768, 35.135567>,  <46.723083, 32.261166, 34.897179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.403248, 32.290768, 35.135567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279032, -0.832972, 0.477806,
		0.531787, 0.548343, 0.645386,
		-0.799590, 0.074008, 0.595968,
		46.163372, 32.312969, 35.314358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.896660, 31.918310, 35.543324>,  <46.723083, 32.261166, 34.897179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.896660, 31.918310, 35.543324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.497925, 31.935991, 35.569721>,  <46.258682, 31.946600, 35.585560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.497925, 31.935991, 35.569721>,  <46.896660, 31.918310, 35.543324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.497925, 31.935991, 35.569721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016370, -0.927323, 0.373903,
		0.077723, 0.371641, 0.925117,
		-0.996840, 0.044205, 0.065991,
		46.198872, 31.949253, 35.589520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.791687, 31.600677, 36.176952>,  <46.896660, 31.918310, 35.543324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.791687, 31.600677, 36.176952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.441086, 31.586332, 35.984928>,  <46.230724, 31.577726, 35.869713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.441086, 31.586332, 35.984928>,  <46.791687, 31.600677, 36.176952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.441086, 31.586332, 35.984928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154507, -0.923505, 0.351093,
		-0.455925, 0.381907, 0.803915,
		-0.876504, -0.035862, -0.480056,
		46.178135, 31.575573, 35.840912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.305119, 31.403414, 36.656296>,  <46.791687, 31.600677, 36.176952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.305119, 31.403414, 36.656296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.138958, 31.292973, 36.309605>,  <46.039261, 31.226707, 36.101589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.138958, 31.292973, 36.309605>,  <46.305119, 31.403414, 36.656296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.138958, 31.292973, 36.309605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387455, -0.808359, 0.443210,
		-0.822995, 0.519926, 0.228814,
		-0.415400, -0.276104, -0.866723,
		46.014339, 31.210142, 36.049587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.781837, 30.917757, 36.831745>,  <46.305119, 31.403414, 36.656296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.781837, 30.917757, 36.831745> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.826462, 30.844229, 36.441101>,  <45.853237, 30.800112, 36.206715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.826462, 30.844229, 36.441101>,  <45.781837, 30.917757, 36.831745>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.826462, 30.844229, 36.441101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363756, -0.922093, 0.132007,
		-0.924790, 0.340520, -0.169734,
		0.111559, -0.183821, -0.976609,
		45.859928, 30.789083, 36.148117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.159420, 30.497707, 36.650311>,  <45.781837, 30.917757, 36.831745>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.159420, 30.497707, 36.650311> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.429913, 30.421719, 36.365601>,  <45.592209, 30.376125, 36.194775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.429913, 30.421719, 36.365601>,  <45.159420, 30.497707, 36.650311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.429913, 30.421719, 36.365601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322746, -0.944919, -0.054434,
		-0.662224, 0.266531, -0.700300,
		0.676235, -0.189971, -0.711770,
		45.632782, 30.364727, 36.152069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780220, 30.164791, 36.120823>,  <45.159420, 30.497707, 36.650311>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780220, 30.164791, 36.120823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.155495, 30.060019, 36.030308>,  <45.380657, 29.997156, 35.975998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.155495, 30.060019, 36.030308>,  <44.780220, 30.164791, 36.120823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.155495, 30.060019, 36.030308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281527, -0.957763, -0.058586,
		-0.201385, 0.118670, -0.972297,
		0.938182, -0.261929, -0.226288,
		45.436951, 29.981440, 35.962421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.579739, 29.754313, 35.589474>,  <44.780220, 30.164791, 36.120823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.579739, 29.754313, 35.589474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.960339, 29.687405, 35.692760>,  <45.188698, 29.647261, 35.754734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.960339, 29.687405, 35.692760>,  <44.579739, 29.754313, 35.589474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.960339, 29.687405, 35.692760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078405, -0.943415, -0.322213,
		0.297501, 0.286339, -0.910770,
		0.951497, -0.167267, 0.258217,
		45.245789, 29.637224, 35.770226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.867329, 29.391533, 35.083126>,  <44.579739, 29.754313, 35.589474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.867329, 29.391533, 35.083126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.076118, 29.290398, 35.408978>,  <45.201393, 29.229717, 35.604488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.076118, 29.290398, 35.408978>,  <44.867329, 29.391533, 35.083126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.076118, 29.290398, 35.408978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166290, -0.966896, -0.193546,
		0.836592, -0.034437, -0.546742,
		0.521978, -0.252837, 0.814624,
		45.232712, 29.214546, 35.653366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.379681, 29.011745, 34.871521>,  <44.867329, 29.391533, 35.083126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.379681, 29.011745, 34.871521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.379013, 28.908895, 35.258072>,  <45.378613, 28.847185, 35.490002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.379013, 28.908895, 35.258072>,  <45.379681, 29.011745, 34.871521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.379013, 28.908895, 35.258072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081867, -0.963099, -0.256395,
		0.996642, -0.079543, -0.019441,
		-0.001670, -0.257125, 0.966377,
		45.378513, 28.831758, 35.547985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.884655, 28.555681, 34.943676>,  <45.379681, 29.011745, 34.871521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.884655, 28.555681, 34.943676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.651775, 28.472940, 35.258194>,  <45.512047, 28.423296, 35.446903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.651775, 28.472940, 35.258194>,  <45.884655, 28.555681, 34.943676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.651775, 28.472940, 35.258194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058683, -0.953882, -0.294389,
		0.810927, -0.217535, 0.543208,
		-0.582197, -0.206851, 0.786295,
		45.477116, 28.410885, 35.494083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.128609, 27.892038, 35.221008>,  <45.884655, 28.555681, 34.943676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.128609, 27.892038, 35.221008> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.770348, 27.935322, 35.393562>,  <45.555389, 27.961292, 35.497097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.770348, 27.935322, 35.393562>,  <46.128609, 27.892038, 35.221008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.770348, 27.935322, 35.393562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202708, -0.962668, -0.179387,
		0.395873, -0.248115, 0.884151,
		-0.895653, 0.108210, 0.431389,
		45.501652, 27.967785, 35.522980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.041065, 27.300180, 35.621983>,  <46.128609, 27.892038, 35.221008>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.041065, 27.300180, 35.621983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.679619, 27.450901, 35.540489>,  <45.462753, 27.541334, 35.491592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.679619, 27.450901, 35.540489>,  <46.041065, 27.300180, 35.621983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.679619, 27.450901, 35.540489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286565, -0.885270, -0.366303,
		-0.318379, -0.272615, 0.907919,
		-0.903612, 0.376801, -0.203729,
		45.408535, 27.563942, 35.479370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.476883, 26.877966, 35.926624>,  <46.041065, 27.300180, 35.621983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.476883, 26.877966, 35.926624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.284061, 27.079706, 35.640057>,  <45.168369, 27.200750, 35.468117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.284061, 27.079706, 35.640057>,  <45.476883, 26.877966, 35.926624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.284061, 27.079706, 35.640057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403646, -0.853592, -0.329320,
		-0.777620, 0.130429, 0.615057,
		-0.482055, 0.504351, -0.716417,
		45.139446, 27.231012, 35.425133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874477, 26.479038, 35.928642>,  <45.476883, 26.877966, 35.926624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874477, 26.479038, 35.928642> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.890209, 26.690161, 35.589260>,  <44.899647, 26.816835, 35.385632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.890209, 26.690161, 35.589260>,  <44.874477, 26.479038, 35.928642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.890209, 26.690161, 35.589260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406323, -0.767290, -0.496153,
		-0.912883, 0.364260, 0.184282,
		0.039331, 0.527808, -0.848453,
		44.902008, 26.848503, 35.334724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.233555, 26.305700, 35.677124>,  <44.874477, 26.479038, 35.928642>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.233555, 26.305700, 35.677124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.462402, 26.442041, 35.378727>,  <44.599712, 26.523846, 35.199688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.462402, 26.442041, 35.378727>,  <44.233555, 26.305700, 35.677124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.462402, 26.442041, 35.378727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498130, -0.578174, -0.646205,
		-0.651572, 0.741306, -0.160997,
		0.572120, 0.340852, -0.745989,
		44.634037, 26.544296, 35.154930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.742794, 26.497581, 35.099552>,  <44.233555, 26.305700, 35.677124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.742794, 26.497581, 35.099552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.097424, 26.440800, 34.923443>,  <44.310200, 26.406731, 34.817780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.097424, 26.440800, 34.923443>,  <43.742794, 26.497581, 35.099552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.097424, 26.440800, 34.923443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429003, -0.608344, -0.667738,
		-0.173047, 0.780876, -0.600240,
		0.886573, -0.141954, -0.440270,
		44.363396, 26.398214, 34.791363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.661552, 26.630871, 34.345585>,  <43.742794, 26.497581, 35.099552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.661552, 26.630871, 34.345585> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.982044, 26.393972, 34.379715>,  <44.174339, 26.251833, 34.400192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.982044, 26.393972, 34.379715>,  <43.661552, 26.630871, 34.345585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.982044, 26.393972, 34.379715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378546, -0.612146, -0.694247,
		0.463399, 0.523948, -0.714660,
		0.801226, -0.592246, 0.085329,
		44.222412, 26.216299, 34.405315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.611546, 37.600845, 42.334587> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562241, 37.235256, 42.179947>,  <37.532658, 37.015903, 42.087162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562241, 37.235256, 42.179947>,  <37.611546, 37.600845, 42.334587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562241, 37.235256, 42.179947> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370684, 0.318968, -0.872268,
		0.920543, -0.250825, 0.299478,
		-0.123263, -0.913973, -0.386601,
		37.525261, 36.961063, 42.063965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232777, 37.374916, 42.041103>,  <37.611546, 37.600845, 42.334587>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232777, 37.374916, 42.041103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934525, 37.176567, 41.863052>,  <37.755573, 37.057556, 41.756222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934525, 37.176567, 41.863052>,  <38.232777, 37.374916, 42.041103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934525, 37.176567, 41.863052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499901, 0.025429, -0.865709,
		0.440603, -0.868021, 0.228928,
		-0.745632, -0.495876, -0.445129,
		37.710835, 37.027805, 41.729515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527046, 36.784225, 41.503227>,  <38.232777, 37.374916, 42.041103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527046, 36.784225, 41.503227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150360, 36.890812, 41.421082>,  <37.924351, 36.954765, 41.371796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150360, 36.890812, 41.421082>,  <38.527046, 36.784225, 41.503227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150360, 36.890812, 41.421082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250619, 0.148427, -0.956640,
		-0.224432, -0.952346, -0.206557,
		-0.941712, 0.266468, -0.205364,
		37.867847, 36.970753, 41.359474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414967, 36.491962, 40.954876>,  <38.527046, 36.784225, 41.503227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414967, 36.491962, 40.954876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158302, 36.798740, 40.958347>,  <38.004303, 36.982807, 40.960430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158302, 36.798740, 40.958347>,  <38.414967, 36.491962, 40.954876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158302, 36.798740, 40.958347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209807, 0.186395, -0.959811,
		-0.737736, -0.614051, -0.280512,
		-0.641659, 0.766941, 0.008679,
		37.965805, 37.028824, 40.960953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049850, 36.392563, 40.319435>,  <38.414967, 36.491962, 40.954876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049850, 36.392563, 40.319435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908836, 36.752224, 40.423164>,  <37.824226, 36.968021, 40.485401>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908836, 36.752224, 40.423164>,  <38.049850, 36.392563, 40.319435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908836, 36.752224, 40.423164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082602, 0.305932, -0.948463,
		-0.932145, -0.312948, -0.182124,
		-0.352537, 0.899149, 0.259323,
		37.803074, 37.021969, 40.500961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570652, 36.591328, 39.841198>,  <38.049850, 36.392563, 40.319435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570652, 36.591328, 39.841198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698215, 36.937283, 39.996250>,  <37.774754, 37.144855, 40.089283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698215, 36.937283, 39.996250>,  <37.570652, 36.591328, 39.841198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698215, 36.937283, 39.996250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037244, 0.397237, -0.916960,
		-0.947053, 0.306865, 0.094471,
		0.318911, 0.864891, 0.387633,
		37.793888, 37.196751, 40.112541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157303, 37.019653, 39.521046>,  <37.570652, 36.591328, 39.841198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157303, 37.019653, 39.521046> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440910, 37.271694, 39.647701>,  <37.611076, 37.422920, 39.723694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440910, 37.271694, 39.647701>,  <37.157303, 37.019653, 39.521046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.440910, 37.271694, 39.647701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067404, 0.386398, -0.919866,
		-0.701957, 0.673548, 0.231493,
		0.709022, 0.630103, 0.316635,
		37.653618, 37.460724, 39.742691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003319, 37.699936, 39.265293>,  <37.157303, 37.019653, 39.521046>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003319, 37.699936, 39.265293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389885, 37.738525, 39.360577>,  <37.621822, 37.761677, 39.417747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389885, 37.738525, 39.360577>,  <37.003319, 37.699936, 39.265293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389885, 37.738525, 39.360577> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158401, 0.506291, -0.847690,
		-0.202379, 0.856950, 0.474004,
		0.966412, 0.096472, 0.238204,
		37.679810, 37.767467, 39.432037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227005, 38.355251, 38.985203>,  <37.003319, 37.699936, 39.265293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227005, 38.355251, 38.985203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567528, 38.149872, 39.028351>,  <37.771843, 38.026642, 39.054237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567528, 38.149872, 39.028351>,  <37.227005, 38.355251, 38.985203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567528, 38.149872, 39.028351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363005, 0.427988, -0.827680,
		0.378810, 0.743769, 0.550737,
		0.851311, -0.513453, 0.107866,
		37.822922, 37.995834, 39.060711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852158, 38.771763, 39.070625>,  <37.227005, 38.355251, 38.985203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852158, 38.771763, 39.070625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974232, 38.430168, 38.902069>,  <38.047478, 38.225212, 38.800934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974232, 38.430168, 38.902069>,  <37.852158, 38.771763, 39.070625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974232, 38.430168, 38.902069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433449, 0.518576, -0.737022,
		0.847929, 0.042278, 0.528422,
		0.305186, -0.853986, -0.421390,
		38.065788, 38.173973, 38.775654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.617573, 38.886101, 38.907780>,  <37.852158, 38.771763, 39.070625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.617573, 38.886101, 38.907780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482597, 38.586571, 38.679604>,  <38.401611, 38.406853, 38.542698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482597, 38.586571, 38.679604>,  <38.617573, 38.886101, 38.907780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482597, 38.586571, 38.679604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501960, 0.369505, -0.781986,
		0.796349, -0.550209, 0.251195,
		-0.337438, -0.748823, -0.570438,
		38.381367, 38.361923, 38.508472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095585, 38.821552, 38.469604>,  <38.617573, 38.886101, 38.907780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095585, 38.821552, 38.469604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833958, 38.573875, 38.295803>,  <38.676979, 38.425270, 38.191521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833958, 38.573875, 38.295803>,  <39.095585, 38.821552, 38.469604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833958, 38.573875, 38.295803> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343990, 0.268112, -0.899882,
		0.673693, -0.738053, 0.037630,
		-0.654071, -0.619188, -0.434508,
		38.637737, 38.388119, 38.165451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432060, 38.458504, 37.852451>,  <39.095585, 38.821552, 38.469604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432060, 38.458504, 37.852451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038132, 38.488529, 37.789848>,  <38.801773, 38.506546, 37.752289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038132, 38.488529, 37.789848>,  <39.432060, 38.458504, 37.852451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038132, 38.488529, 37.789848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173296, 0.374201, -0.911012,
		-0.009821, -0.924305, -0.381529,
		-0.984821, 0.075064, -0.156503,
		38.742687, 38.511047, 37.742897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938782, 38.229256, 37.358307>,  <39.432060, 38.458504, 37.852451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938782, 38.229256, 37.358307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730488, 37.952457, 37.558300>,  <39.605511, 37.786377, 37.678295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730488, 37.952457, 37.558300>,  <39.938782, 38.229256, 37.358307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730488, 37.952457, 37.558300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550157, 0.175827, 0.816341,
		-0.652814, 0.700163, 0.289147,
		-0.520732, -0.691995, 0.499982,
		39.574268, 37.744858, 37.708294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.413315, 37.791561, 37.171440>,  <39.938782, 38.229256, 37.358307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.413315, 37.791561, 37.171440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622753, 37.518250, 36.967884>,  <40.748417, 37.354263, 36.845749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622753, 37.518250, 36.967884>,  <40.413315, 37.791561, 37.171440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622753, 37.518250, 36.967884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232647, -0.689282, 0.686124,
		-0.819587, -0.240860, -0.519869,
		0.523596, -0.683284, -0.508891,
		40.779831, 37.313263, 36.815216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.970421, 37.288811, 36.916840>,  <40.413315, 37.791561, 37.171440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.970421, 37.288811, 36.916840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330799, 37.115986, 36.900780>,  <40.547028, 37.012291, 36.891144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330799, 37.115986, 36.900780>,  <39.970421, 37.288811, 36.916840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.330799, 37.115986, 36.900780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344386, -0.768256, 0.539612,
		-0.263992, -0.472336, -0.840956,
		0.900948, -0.432067, -0.040147,
		40.601082, 36.986366, 36.888737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783741, 36.553020, 36.570721>,  <39.970421, 37.288811, 36.916840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783741, 36.553020, 36.570721> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123898, 36.511105, 36.776966>,  <40.327991, 36.485954, 36.900711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123898, 36.511105, 36.776966>,  <39.783741, 36.553020, 36.570721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123898, 36.511105, 36.776966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479897, -0.556248, 0.678445,
		0.215714, -0.824383, -0.523316,
		0.850392, -0.104788, 0.515609,
		40.379017, 36.479668, 36.931648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926250, 35.810646, 36.653069>,  <39.783741, 36.553020, 36.570721>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926250, 35.810646, 36.653069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170269, 35.991619, 36.913265>,  <40.316681, 36.100204, 37.069386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170269, 35.991619, 36.913265>,  <39.926250, 35.810646, 36.653069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170269, 35.991619, 36.913265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280848, -0.644192, 0.711436,
		0.740924, -0.616699, -0.265920,
		0.610046, 0.452437, 0.650497,
		40.353283, 36.127350, 37.108414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256748, 35.291954, 36.964245>,  <39.926250, 35.810646, 36.653069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256748, 35.291954, 36.964245> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322941, 35.589924, 37.222767>,  <40.362656, 35.768703, 37.377880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322941, 35.589924, 37.222767>,  <40.256748, 35.291954, 36.964245>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322941, 35.589924, 37.222767> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126380, -0.633916, 0.763006,
		0.978081, -0.207945, -0.010760,
		0.165485, 0.744922, 0.646302,
		40.372585, 35.813400, 37.416656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712990, 35.032906, 37.303478>,  <40.256748, 35.291954, 36.964245>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.712990, 35.032906, 37.303478> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559669, 35.317516, 37.539043>,  <40.467678, 35.488281, 37.680382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559669, 35.317516, 37.539043>,  <40.712990, 35.032906, 37.303478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559669, 35.317516, 37.539043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130846, -0.673008, 0.727970,
		0.914308, 0.201976, 0.351065,
		-0.383302, 0.711524, 0.588908,
		40.444679, 35.530975, 37.715717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.100040, 34.989330, 37.937180>,  <40.712990, 35.032906, 37.303478>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.100040, 34.989330, 37.937180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757103, 35.171494, 38.033157>,  <40.551342, 35.280792, 38.090744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757103, 35.171494, 38.033157>,  <41.100040, 34.989330, 37.937180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757103, 35.171494, 38.033157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080679, -0.579252, 0.811146,
		0.508388, 0.676070, 0.533358,
		-0.857340, 0.455408, 0.239941,
		40.499901, 35.308117, 38.105141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127357, 35.000046, 38.632366>,  <41.100040, 34.989330, 37.937180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127357, 35.000046, 38.632366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739643, 35.060497, 38.554756>,  <40.507015, 35.096767, 38.508190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.739643, 35.060497, 38.554756>,  <41.127357, 35.000046, 38.632366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739643, 35.060497, 38.554756> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245882, -0.579193, 0.777224,
		0.005081, 0.801060, 0.598563,
		-0.969286, 0.151125, -0.194024,
		40.448856, 35.105835, 38.496548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916279, 35.231140, 39.227577>,  <41.127357, 35.000046, 38.632366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916279, 35.231140, 39.227577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583736, 35.112457, 39.039616>,  <40.384209, 35.041248, 38.926838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583736, 35.112457, 39.039616>,  <40.916279, 35.231140, 39.227577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583736, 35.112457, 39.039616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248048, -0.558532, 0.791527,
		-0.497308, 0.774601, 0.390742,
		-0.831359, -0.296710, -0.469900,
		40.334328, 35.023445, 38.898647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383778, 35.421951, 39.711342>,  <40.916279, 35.231140, 39.227577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383778, 35.421951, 39.711342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200783, 35.167480, 39.462830>,  <40.090988, 35.014797, 39.313721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.200783, 35.167480, 39.462830>,  <40.383778, 35.421951, 39.711342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200783, 35.167480, 39.462830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427635, -0.455181, 0.780985,
		-0.779639, 0.622969, -0.063814,
		-0.457483, -0.636176, -0.621281,
		40.063538, 34.976627, 39.276443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763008, 35.528698, 39.882160>,  <40.383778, 35.421951, 39.711342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763008, 35.528698, 39.882160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809086, 35.168640, 39.714123>,  <39.836735, 34.952606, 39.613300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.809086, 35.168640, 39.714123>,  <39.763008, 35.528698, 39.882160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809086, 35.168640, 39.714123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252305, -0.435551, 0.864082,
		-0.960766, 0.006451, -0.277284,
		0.115198, -0.900141, -0.420090,
		39.843643, 34.898598, 39.588097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142506, 35.160576, 40.045090>,  <39.763008, 35.528698, 39.882160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142506, 35.160576, 40.045090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398350, 34.869343, 39.946465>,  <39.551857, 34.694603, 39.887287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398350, 34.869343, 39.946465>,  <39.142506, 35.160576, 40.045090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398350, 34.869343, 39.946465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250985, -0.500979, 0.828267,
		-0.726573, -0.467882, -0.503168,
		0.639608, -0.728084, -0.246567,
		39.590233, 34.650917, 39.872494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815815, 34.577961, 40.014778>,  <39.142506, 35.160576, 40.045090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815815, 34.577961, 40.014778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196201, 34.476147, 40.085064>,  <39.424435, 34.415058, 40.127235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.196201, 34.476147, 40.085064>,  <38.815815, 34.577961, 40.014778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196201, 34.476147, 40.085064> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295027, -0.575941, 0.762399,
		-0.092852, -0.776857, -0.622794,
		0.950967, -0.254531, 0.175716,
		39.481491, 34.399788, 40.137779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781609, 33.890926, 40.200729>,  <38.815815, 34.577961, 40.014778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781609, 33.890926, 40.200729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144356, 33.993855, 40.334217>,  <39.362007, 34.055611, 40.414310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.144356, 33.993855, 40.334217>,  <38.781609, 33.890926, 40.200729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144356, 33.993855, 40.334217> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099508, -0.638762, 0.762943,
		0.409488, -0.725099, -0.553670,
		0.906873, 0.257321, 0.333718,
		39.416416, 34.071053, 40.434334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552002, 33.273991, 39.805569>,  <38.781609, 33.890926, 40.200729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552002, 33.273991, 39.805569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461029, 32.927410, 39.627789>,  <38.406445, 32.719463, 39.521118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.461029, 32.927410, 39.627789>,  <38.552002, 33.273991, 39.805569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461029, 32.927410, 39.627789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133846, 0.479899, -0.867054,
		0.964551, -0.137709, -0.225115,
		-0.227434, -0.866449, -0.444455,
		38.392799, 32.667477, 39.494453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036049, 33.129028, 39.180344>,  <38.552002, 33.273991, 39.805569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036049, 33.129028, 39.180344> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706120, 32.927040, 39.078621>,  <38.508163, 32.805847, 39.017586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706120, 32.927040, 39.078621>,  <39.036049, 33.129028, 39.180344>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706120, 32.927040, 39.078621> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035433, 0.495078, -0.868125,
		0.564282, -0.707037, -0.426244,
		-0.824821, -0.504970, -0.254311,
		38.458672, 32.775551, 39.002327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022133, 32.922619, 38.395264>,  <39.036049, 33.129028, 39.180344>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022133, 32.922619, 38.395264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637257, 32.884972, 38.497509>,  <38.406330, 32.862381, 38.558857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637257, 32.884972, 38.497509>,  <39.022133, 32.922619, 38.395264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637257, 32.884972, 38.497509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272196, 0.296674, -0.915366,
		0.010321, -0.950329, -0.311075,
		-0.962186, -0.094120, 0.255614,
		38.348602, 32.856735, 38.574192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635906, 32.484962, 37.778553>,  <39.022133, 32.922619, 38.395264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635906, 32.484962, 37.778553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357380, 32.689842, 37.979668>,  <38.190266, 32.812771, 38.100338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.357380, 32.689842, 37.979668>,  <38.635906, 32.484962, 37.778553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357380, 32.689842, 37.979668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456392, 0.224682, -0.860944,
		-0.553942, -0.828957, 0.077314,
		-0.696315, 0.512199, 0.502790,
		38.148487, 32.843502, 38.130505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034515, 32.191399, 37.610931>,  <38.635906, 32.484962, 37.778553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034515, 32.191399, 37.610931> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956280, 32.560928, 37.742561>,  <37.909340, 32.782646, 37.821541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956280, 32.560928, 37.742561>,  <38.034515, 32.191399, 37.610931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956280, 32.560928, 37.742561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558697, 0.170814, -0.811591,
		-0.805980, -0.342591, 0.482729,
		-0.195587, 0.923826, 0.329078,
		37.897602, 32.838078, 37.841286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385471, 32.270313, 37.494492>,  <38.034515, 32.191399, 37.610931>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385471, 32.270313, 37.494492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481331, 32.652447, 37.563663>,  <37.538849, 32.881725, 37.605167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.481331, 32.652447, 37.563663>,  <37.385471, 32.270313, 37.494492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481331, 32.652447, 37.563663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739881, 0.295044, -0.604586,
		-0.628604, 0.016944, 0.777541,
		0.239653, 0.955333, 0.172929,
		37.553226, 32.939045, 37.615543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773113, 32.574570, 37.620491>,  <37.385471, 32.270313, 37.494492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773113, 32.574570, 37.620491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014545, 32.879345, 37.526562>,  <37.159405, 33.062210, 37.470203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014545, 32.879345, 37.526562>,  <36.773113, 32.574570, 37.620491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014545, 32.879345, 37.526562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630488, 0.275850, -0.725528,
		-0.488027, 0.585973, 0.646889,
		0.603584, 0.761934, -0.234826,
		37.195621, 33.107925, 37.456116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276470, 33.060551, 37.532444>,  <36.773113, 32.574570, 37.620491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276470, 33.060551, 37.532444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611752, 33.165112, 37.340992>,  <36.812920, 33.227848, 37.226120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611752, 33.165112, 37.340992>,  <36.276470, 33.060551, 37.532444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611752, 33.165112, 37.340992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545360, 0.400076, -0.736561,
		-0.001052, 0.878412, 0.477903,
		0.838201, 0.261404, -0.478630,
		36.863213, 33.243534, 37.197403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214062, 33.722008, 37.375107>,  <36.276470, 33.060551, 37.532444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214062, 33.722008, 37.375107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464764, 33.585213, 37.095039>,  <36.615185, 33.503136, 36.926998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464764, 33.585213, 37.095039>,  <36.214062, 33.722008, 37.375107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.464764, 33.585213, 37.095039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417617, 0.611181, -0.672350,
		0.657859, 0.713797, 0.240241,
		0.626752, -0.341983, -0.700164,
		36.652790, 33.482616, 36.884991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464142, 34.286396, 37.128616>,  <36.214062, 33.722008, 37.375107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464142, 34.286396, 37.128616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606983, 34.036842, 36.850552>,  <36.692688, 33.887112, 36.683712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606983, 34.036842, 36.850552>,  <36.464142, 34.286396, 37.128616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606983, 34.036842, 36.850552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231660, 0.661822, -0.712969,
		0.904883, 0.415642, 0.091808,
		0.357100, -0.623885, -0.695159,
		36.714115, 33.849678, 36.642002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797722, 34.740417, 36.676517>,  <36.464142, 34.286396, 37.128616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797722, 34.740417, 36.676517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693691, 34.403252, 36.488113>,  <36.631271, 34.200951, 36.375072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693691, 34.403252, 36.488113>,  <36.797722, 34.740417, 36.676517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693691, 34.403252, 36.488113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384856, 0.537864, -0.750059,
		0.885577, -0.013803, -0.464288,
		-0.260077, -0.842919, -0.471008,
		36.615669, 34.150375, 36.346809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106480, 34.779343, 36.036297>,  <36.797722, 34.740417, 36.676517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106480, 34.779343, 36.036297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772732, 34.559795, 36.015995>,  <36.572483, 34.428066, 36.003815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772732, 34.559795, 36.015995>,  <37.106480, 34.779343, 36.036297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772732, 34.559795, 36.015995> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327432, 0.567609, -0.755386,
		0.443414, -0.613652, -0.653311,
		-0.834369, -0.548863, -0.050757,
		36.522423, 34.395138, 36.000767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.876884, 30.219805, 41.863934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.496590, 30.096321, 41.852623>,  <39.268414, 30.022230, 41.845837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.496590, 30.096321, 41.852623>,  <39.876884, 30.219805, 41.863934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496590, 30.096321, 41.852623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087645, 0.355155, -0.930690,
		0.297351, -0.882363, -0.364715,
		-0.950737, -0.308707, -0.028271,
		39.211369, 30.003708, 41.844143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719898, 29.837954, 41.191395>,  <39.876884, 30.219805, 41.863934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719898, 29.837954, 41.191395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.393284, 30.000763, 41.355152>,  <39.197315, 30.098448, 41.453407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.393284, 30.000763, 41.355152>,  <39.719898, 29.837954, 41.191395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393284, 30.000763, 41.355152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195908, 0.471710, -0.859715,
		-0.543040, -0.782190, -0.305428,
		-0.816534, 0.407024, 0.409394,
		39.148323, 30.122869, 41.477970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205975, 29.845737, 40.584694>,  <39.719898, 29.837954, 41.191395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205975, 29.845737, 40.584694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.072731, 30.113777, 40.850025>,  <38.992783, 30.274601, 41.009224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.072731, 30.113777, 40.850025>,  <39.205975, 29.845737, 40.584694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072731, 30.113777, 40.850025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174084, 0.647701, -0.741740,
		-0.926677, -0.362557, -0.099104,
		-0.333113, 0.670101, 0.663325,
		38.972797, 30.314808, 41.049023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567493, 30.160376, 40.359016>,  <39.205975, 29.845737, 40.584694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567493, 30.160376, 40.359016> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.700386, 30.417833, 40.634796>,  <38.780121, 30.572308, 40.800266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.700386, 30.417833, 40.634796>,  <38.567493, 30.160376, 40.359016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700386, 30.417833, 40.634796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378118, 0.760553, -0.527812,
		-0.864087, -0.085338, 0.496055,
		0.332234, 0.643643, 0.689452,
		38.800056, 30.610926, 40.841633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015656, 30.563892, 40.703384>,  <38.567493, 30.160376, 40.359016>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015656, 30.563892, 40.703384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.359852, 30.767637, 40.699280>,  <38.566368, 30.889885, 40.696815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.359852, 30.767637, 40.699280>,  <38.015656, 30.563892, 40.703384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359852, 30.767637, 40.699280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418914, 0.695940, -0.583249,
		-0.289943, 0.506179, 0.812229,
		0.860491, 0.509363, -0.010263,
		38.618000, 30.920446, 40.696201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783535, 31.141623, 40.266472>,  <38.015656, 30.563892, 40.703384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783535, 31.141623, 40.266472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.160748, 31.256802, 40.333145>,  <38.387074, 31.325909, 40.373150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.160748, 31.256802, 40.333145>,  <37.783535, 31.141623, 40.266472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160748, 31.256802, 40.333145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136286, 0.791344, -0.595987,
		-0.303518, 0.539316, 0.785503,
		0.943029, 0.287945, 0.166686,
		38.443657, 31.343185, 40.383152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691765, 31.729759, 40.576969>,  <37.783535, 31.141623, 40.266472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.691765, 31.729759, 40.576969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.062794, 31.735384, 40.427612>,  <38.285412, 31.738758, 40.337997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.062794, 31.735384, 40.427612>,  <37.691765, 31.729759, 40.576969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062794, 31.735384, 40.427612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191202, 0.876410, -0.441981,
		0.321027, 0.481361, 0.815619,
		0.927569, 0.014060, -0.373388,
		38.341064, 31.739601, 40.315598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855686, 32.418945, 40.548939>,  <37.691765, 31.729759, 40.576969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855686, 32.418945, 40.548939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.112816, 32.239475, 40.300594>,  <38.267094, 32.131794, 40.151588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.112816, 32.239475, 40.300594>,  <37.855686, 32.418945, 40.548939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.112816, 32.239475, 40.300594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089896, 0.760722, -0.642823,
		0.760722, 0.469034, 0.448675,
		0.642823, -0.448675, -0.620862,
		38.305664, 32.104874, 40.114334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326221, 32.910572, 40.365871>,  <37.855686, 32.418945, 40.548939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326221, 32.910572, 40.365871> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.350204, 32.633839, 40.078045>,  <38.364594, 32.467800, 39.905350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.350204, 32.633839, 40.078045>,  <38.326221, 32.910572, 40.365871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350204, 32.633839, 40.078045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094739, 0.713664, -0.694053,
		0.993695, 0.109785, -0.022753,
		0.059958, -0.691832, -0.719565,
		38.368191, 32.426289, 39.862175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.059490, 33.230400, 40.482380>,  <38.326221, 32.910572, 40.365871>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.059490, 33.230400, 40.482380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.309181, 33.498070, 40.643646>,  <39.458996, 33.658672, 40.740406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.309181, 33.498070, 40.643646>,  <39.059490, 33.230400, 40.482380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309181, 33.498070, 40.643646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053254, -0.478408, 0.876521,
		0.779427, -0.568617, -0.262998,
		0.624226, 0.669179, 0.403166,
		39.496449, 33.698822, 40.764595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630707, 32.812370, 40.867981>,  <39.059490, 33.230400, 40.482380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630707, 32.812370, 40.867981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.588062, 33.175678, 41.029808>,  <39.562473, 33.393665, 41.126904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.588062, 33.175678, 41.029808>,  <39.630707, 32.812370, 40.867981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588062, 33.175678, 41.029808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066449, -0.412483, 0.908539,
		0.992078, 0.069980, 0.104330,
		-0.106614, 0.908274, 0.404565,
		39.556080, 33.448162, 41.151176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123535, 32.790482, 41.424831>,  <39.630707, 32.812370, 40.867981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123535, 32.790482, 41.424831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.887669, 33.103367, 41.505276>,  <39.746151, 33.291096, 41.553543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.887669, 33.103367, 41.505276>,  <40.123535, 32.790482, 41.424831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.887669, 33.103367, 41.505276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058974, -0.206637, 0.976639,
		0.805493, 0.587748, 0.075716,
		-0.589664, 0.782210, 0.201106,
		39.710770, 33.338032, 41.565609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458050, 33.187420, 41.977554>,  <40.123535, 32.790482, 41.424831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458050, 33.187420, 41.977554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.065819, 33.262726, 41.999542>,  <39.830479, 33.307907, 42.012737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.065819, 33.262726, 41.999542>,  <40.458050, 33.187420, 41.977554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065819, 33.262726, 41.999542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036897, -0.452374, 0.891065,
		0.192622, 0.871731, 0.450534,
		-0.980579, 0.188262, 0.054973,
		39.771645, 33.319206, 42.016033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495625, 33.261864, 42.654400>,  <40.458050, 33.187420, 41.977554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495625, 33.261864, 42.654400> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.109833, 33.214443, 42.559971>,  <39.878357, 33.185989, 42.503311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.109833, 33.214443, 42.559971>,  <40.495625, 33.261864, 42.654400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.109833, 33.214443, 42.559971> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139975, -0.528546, 0.837285,
		-0.224037, 0.840586, 0.493176,
		-0.964476, -0.118551, -0.236075,
		39.820492, 33.178879, 42.489147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094139, 33.527100, 43.233776>,  <40.495625, 33.261864, 42.654400>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094139, 33.527100, 43.233776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.866623, 33.268482, 43.030418>,  <39.730114, 33.113312, 42.908405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.866623, 33.268482, 43.030418>,  <40.094139, 33.527100, 43.233776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866623, 33.268482, 43.030418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238752, -0.461712, 0.854295,
		-0.787066, 0.607296, 0.108256,
		-0.568792, -0.646540, -0.508391,
		39.695984, 33.074520, 42.877903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572262, 33.461174, 43.657574>,  <40.094139, 33.527100, 43.233776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572262, 33.461174, 43.657574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.560143, 33.135334, 43.425884>,  <39.552872, 32.939831, 43.286869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.560143, 33.135334, 43.425884>,  <39.572262, 33.461174, 43.657574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560143, 33.135334, 43.425884> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262787, -0.552616, 0.790922,
		-0.964378, 0.176178, -0.197324,
		-0.030299, -0.814602, -0.579228,
		39.551052, 32.890953, 43.252117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954456, 33.127590, 43.859818>,  <39.572262, 33.461174, 43.657574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954456, 33.127590, 43.859818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.182999, 32.848812, 43.686466>,  <39.320126, 32.681545, 43.582455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.182999, 32.848812, 43.686466>,  <38.954456, 33.127590, 43.859818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182999, 32.848812, 43.686466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133010, -0.599712, 0.789084,
		-0.809851, -0.393206, -0.435350,
		0.571357, -0.696947, -0.433377,
		39.354404, 32.639729, 43.556454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564960, 32.519814, 43.816536>,  <38.954456, 33.127590, 43.859818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564960, 32.519814, 43.816536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.945564, 32.397629, 43.801960>,  <39.173927, 32.324318, 43.793217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.945564, 32.397629, 43.801960>,  <38.564960, 32.519814, 43.816536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.945564, 32.397629, 43.801960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152556, -0.571390, 0.806375,
		-0.267139, -0.761712, -0.590281,
		0.951506, -0.305465, -0.036436,
		39.231014, 32.305988, 43.791027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.452518, 31.806681, 43.905830>,  <38.564960, 32.519814, 43.816536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.452518, 31.806681, 43.905830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.836578, 31.883547, 43.987003>,  <39.067013, 31.929667, 44.035709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.836578, 31.883547, 43.987003>,  <38.452518, 31.806681, 43.905830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836578, 31.883547, 43.987003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033124, -0.642753, 0.765357,
		0.277513, -0.741580, -0.610775,
		0.960150, 0.192165, 0.202936,
		39.124622, 31.941196, 44.047886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743187, 31.169855, 44.146240>,  <38.452518, 31.806681, 43.905830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743187, 31.169855, 44.146240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.009018, 31.430952, 44.291710>,  <39.168518, 31.587610, 44.378994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.009018, 31.430952, 44.291710>,  <38.743187, 31.169855, 44.146240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009018, 31.430952, 44.291710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089353, -0.413794, 0.905975,
		0.741858, -0.634586, -0.216673,
		0.664577, 0.652745, 0.363679,
		39.208389, 31.626776, 44.400814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260094, 30.699167, 44.457535>,  <38.743187, 31.169855, 44.146240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260094, 30.699167, 44.457535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.302361, 31.059042, 44.626957>,  <39.327721, 31.274967, 44.728611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.302361, 31.059042, 44.626957>,  <39.260094, 30.699167, 44.457535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302361, 31.059042, 44.626957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271201, -0.435868, 0.858178,
		0.956705, 0.024187, -0.290053,
		0.105668, 0.899686, 0.423557,
		39.334061, 31.328947, 44.754025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827545, 30.587776, 44.880829>,  <39.260094, 30.699167, 44.457535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827545, 30.587776, 44.880829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.645832, 30.921274, 45.006363>,  <39.536804, 31.121372, 45.081684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.645832, 30.921274, 45.006363>,  <39.827545, 30.587776, 44.880829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645832, 30.921274, 45.006363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255585, -0.215501, 0.942463,
		0.853405, 0.508360, -0.115194,
		-0.454286, 0.833744, 0.313839,
		39.509548, 31.171398, 45.100513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158096, 30.769938, 45.427612>,  <39.827545, 30.587776, 44.880829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158096, 30.769938, 45.427612> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.803543, 30.951063, 45.466167>,  <39.590813, 31.059738, 45.489300>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.803543, 30.951063, 45.466167>,  <40.158096, 30.769938, 45.427612>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.803543, 30.951063, 45.466167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021234, -0.168213, 0.985522,
		0.462474, 0.875592, 0.139485,
		-0.886379, 0.452816, 0.096386,
		39.537628, 31.086908, 45.495083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.120850, 30.177107, 43.121937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.475948, 30.019161, 43.027290>,  <32.689007, 29.924393, 42.970501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.475948, 30.019161, 43.027290>,  <32.120850, 30.177107, 43.121937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.475948, 30.019161, 43.027290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163206, 0.750604, -0.640279,
		0.430431, 0.529788, 0.730790,
		0.887746, -0.394865, -0.236619,
		32.742271, 29.900702, 42.956306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570168, 30.693426, 43.233929>,  <32.120850, 30.177107, 43.121937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570168, 30.693426, 43.233929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.770016, 30.459610, 42.978214>,  <32.889927, 30.319321, 42.824787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.770016, 30.459610, 42.978214>,  <32.570168, 30.693426, 43.233929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770016, 30.459610, 42.978214> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246209, 0.803388, -0.542171,
		0.830516, 0.113484, 0.545312,
		0.499624, -0.584542, -0.639286,
		32.919903, 30.284246, 42.786430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074738, 31.085098, 42.915924>,  <32.570168, 30.693426, 43.233929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074738, 31.085098, 42.915924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.050613, 30.786516, 42.650845>,  <33.036140, 30.607367, 42.491798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.050613, 30.786516, 42.650845>,  <33.074738, 31.085098, 42.915924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050613, 30.786516, 42.650845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202866, 0.640885, -0.740346,
		0.977348, -0.179086, 0.112781,
		-0.060306, -0.746455, -0.662698,
		33.032520, 30.562580, 42.452034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672298, 31.127096, 42.445538>,  <33.074738, 31.085098, 42.915924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672298, 31.127096, 42.445538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.418457, 30.902584, 42.233032>,  <33.266151, 30.767876, 42.105530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.418457, 30.902584, 42.233032>,  <33.672298, 31.127096, 42.445538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418457, 30.902584, 42.233032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366079, 0.387091, -0.846254,
		0.680635, -0.731520, -0.040175,
		-0.634604, -0.561283, -0.531262,
		33.228077, 30.734200, 42.073654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081974, 30.810032, 42.002708>,  <33.672298, 31.127096, 42.445538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081974, 30.810032, 42.002708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.712330, 30.828384, 41.850964>,  <33.490543, 30.839396, 41.759914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.712330, 30.828384, 41.850964>,  <34.081974, 30.810032, 42.002708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712330, 30.828384, 41.850964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361420, 0.427325, -0.828715,
		0.124089, -0.902933, -0.411477,
		-0.924109, 0.045881, -0.379364,
		33.435097, 30.842148, 41.737156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138405, 30.742609, 41.304085>,  <34.081974, 30.810032, 42.002708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138405, 30.742609, 41.304085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.778297, 30.913397, 41.338058>,  <33.562233, 31.015869, 41.358440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.778297, 30.913397, 41.338058>,  <34.138405, 30.742609, 41.304085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778297, 30.913397, 41.338058> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165559, 0.516230, -0.840295,
		-0.402626, -0.742430, -0.535434,
		-0.900268, 0.426971, 0.084932,
		33.508217, 31.041489, 41.363537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903610, 30.676800, 40.574646>,  <34.138405, 30.742609, 41.304085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903610, 30.676800, 40.574646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.715088, 30.966551, 40.775898>,  <33.601974, 31.140402, 40.896648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.715088, 30.966551, 40.775898>,  <33.903610, 30.676800, 40.574646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715088, 30.966551, 40.775898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288803, 0.665771, -0.687998,
		-0.833343, -0.178954, -0.522987,
		-0.471310, 0.724378, 0.503133,
		33.573696, 31.183865, 40.926838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840374, 31.138731, 40.126556>,  <33.903610, 30.676800, 40.574646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840374, 31.138731, 40.126556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.701603, 31.375107, 40.417881>,  <33.618340, 31.516932, 40.592674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.701603, 31.375107, 40.417881>,  <33.840374, 31.138731, 40.126556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701603, 31.375107, 40.417881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223274, 0.806250, -0.547823,
		-0.910930, -0.027439, -0.411648,
		-0.346923, 0.590938, 0.728311,
		33.597527, 31.552389, 40.636375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409729, 31.526604, 39.831551>,  <33.840374, 31.138731, 40.126556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409729, 31.526604, 39.831551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.493351, 31.735590, 40.162205>,  <33.543526, 31.860983, 40.360596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.493351, 31.735590, 40.162205>,  <33.409729, 31.526604, 39.831551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493351, 31.735590, 40.162205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289529, 0.774344, -0.562640,
		-0.934060, 0.356959, 0.010613,
		0.209058, 0.522467, 0.826634,
		33.556068, 31.892330, 40.410194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113110, 32.230286, 39.775040>,  <33.409729, 31.526604, 39.831551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113110, 32.230286, 39.775040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.398373, 32.247898, 40.054886>,  <33.569530, 32.258465, 40.222794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.398373, 32.247898, 40.054886>,  <33.113110, 32.230286, 39.775040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.398373, 32.247898, 40.054886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490592, 0.681531, -0.542987,
		-0.500721, 0.730463, 0.464437,
		0.713161, 0.044036, 0.699616,
		33.612320, 32.261108, 40.264771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060581, 32.922459, 39.982994>,  <33.113110, 32.230286, 39.775040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060581, 32.922459, 39.982994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.432384, 32.813896, 40.082878>,  <33.655468, 32.748760, 40.142807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.432384, 32.813896, 40.082878>,  <33.060581, 32.922459, 39.982994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432384, 32.813896, 40.082878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364790, 0.577017, -0.730740,
		0.054241, 0.770319, 0.635347,
		0.929509, -0.271404, 0.249707,
		33.711239, 32.732475, 40.157791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.613350, 33.593510, 40.174526>,  <33.060581, 32.922459, 39.982994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.613350, 33.593510, 40.174526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.814400, 33.279694, 40.029278>,  <33.935032, 33.091404, 39.942131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.814400, 33.279694, 40.029278>,  <33.613350, 33.593510, 40.174526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814400, 33.279694, 40.029278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264114, 0.539305, -0.799621,
		0.823170, 0.306007, 0.478279,
		0.502628, -0.784544, -0.363119,
		33.965187, 33.044331, 39.920341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180218, 33.942940, 39.910450>,  <33.613350, 33.593510, 40.174526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180218, 33.942940, 39.910450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.281113, 33.571999, 39.799889>,  <34.341648, 33.349434, 39.733551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.281113, 33.571999, 39.799889>,  <34.180218, 33.942940, 39.910450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281113, 33.571999, 39.799889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315633, 0.348861, -0.882424,
		0.914742, 0.135339, 0.380698,
		0.252237, -0.927351, -0.276401,
		34.356785, 33.293793, 39.716969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835541, 33.993500, 39.697838>,  <34.180218, 33.942940, 39.910450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835541, 33.993500, 39.697838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.669777, 33.673100, 39.525021>,  <34.570316, 33.480858, 39.421329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.669777, 33.673100, 39.525021>,  <34.835541, 33.993500, 39.697838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669777, 33.673100, 39.525021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387246, 0.274407, -0.880194,
		0.823592, -0.532069, 0.196468,
		-0.414412, -0.801002, -0.432041,
		34.545452, 33.432800, 39.395409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432335, 34.340214, 39.909290>,  <34.835541, 33.993500, 39.697838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432335, 34.340214, 39.909290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.301105, 34.691490, 40.048519>,  <35.222366, 34.902256, 40.132057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.301105, 34.691490, 40.048519>,  <35.432335, 34.340214, 39.909290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.301105, 34.691490, 40.048519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016137, -0.363198, 0.931572,
		0.944513, 0.311243, 0.104986,
		-0.328076, 0.878189, 0.348068,
		35.202682, 34.954948, 40.152939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792538, 34.465698, 40.454910>,  <35.432335, 34.340214, 39.909290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792538, 34.465698, 40.454910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.480480, 34.710140, 40.508453>,  <35.293243, 34.856808, 40.540581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.480480, 34.710140, 40.508453>,  <35.792538, 34.465698, 40.454910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480480, 34.710140, 40.508453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005809, -0.206887, 0.978348,
		0.625571, 0.764031, 0.157852,
		-0.780146, 0.611109, 0.133861,
		35.246437, 34.893475, 40.548611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910538, 34.733845, 41.090652>,  <35.792538, 34.465698, 40.454910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910538, 34.733845, 41.090652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.520290, 34.783852, 41.018505>,  <35.286140, 34.813858, 40.975216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.520290, 34.783852, 41.018505>,  <35.910538, 34.733845, 41.090652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520290, 34.783852, 41.018505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182800, -0.008191, 0.983116,
		0.121433, 0.992120, 0.030845,
		-0.975622, 0.125022, -0.180365,
		35.227604, 34.821358, 40.964397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651989, 35.301723, 41.551384>,  <35.910538, 34.733845, 41.090652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651989, 35.301723, 41.551384> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.345310, 35.055397, 41.478783>,  <35.161301, 34.907600, 41.435223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.345310, 35.055397, 41.478783>,  <35.651989, 35.301723, 41.551384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345310, 35.055397, 41.478783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111376, -0.150851, 0.982262,
		-0.632271, 0.773316, 0.047071,
		-0.766700, -0.615813, -0.181508,
		35.115299, 34.870651, 41.424332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160969, 35.307995, 42.085686>,  <35.651989, 35.301723, 41.551384>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160969, 35.307995, 42.085686> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.061298, 34.964985, 41.905663>,  <35.001495, 34.759178, 41.797649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.061298, 34.964985, 41.905663>,  <35.160969, 35.307995, 42.085686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061298, 34.964985, 41.905663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325695, -0.363451, 0.872826,
		-0.912049, 0.364071, -0.188730,
		-0.249176, -0.857529, -0.450062,
		34.986546, 34.707726, 41.770645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466736, 35.096321, 42.388695>,  <35.160969, 35.307995, 42.085686>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466736, 35.096321, 42.388695> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.618752, 34.760387, 42.233650>,  <34.709961, 34.558826, 42.140621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.618752, 34.760387, 42.233650>,  <34.466736, 35.096321, 42.388695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618752, 34.760387, 42.233650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274202, -0.502509, 0.819938,
		-0.883395, -0.205321, -0.421256,
		0.380035, -0.839838, -0.387614,
		34.732761, 34.508434, 42.117367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031364, 34.671803, 42.710030>,  <34.466736, 35.096321, 42.388695>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031364, 34.671803, 42.710030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.334396, 34.455887, 42.563225>,  <34.516216, 34.326336, 42.475143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.334396, 34.455887, 42.563225>,  <34.031364, 34.671803, 42.710030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334396, 34.455887, 42.563225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062445, -0.619614, 0.782419,
		-0.649749, -0.569827, -0.503115,
		0.757580, -0.539792, -0.367010,
		34.561672, 34.293949, 42.453121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744713, 34.087833, 42.588501>,  <34.031364, 34.671803, 42.710030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744713, 34.087833, 42.588501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.131756, 34.008736, 42.651287>,  <34.363979, 33.961277, 42.688957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.131756, 34.008736, 42.651287>,  <33.744713, 34.087833, 42.588501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131756, 34.008736, 42.651287> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252421, -0.745311, 0.617087,
		-0.005043, -0.636716, -0.771082,
		0.967604, -0.197749, 0.156962,
		34.422039, 33.949409, 42.698376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793926, 33.366810, 42.772465>,  <33.744713, 34.087833, 42.588501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793926, 33.366810, 42.772465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.159767, 33.501007, 42.862743>,  <34.379272, 33.581528, 42.916912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.159767, 33.501007, 42.862743>,  <33.793926, 33.366810, 42.772465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159767, 33.501007, 42.862743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110005, -0.743577, 0.659540,
		0.389097, -0.578391, -0.716985,
		0.914605, 0.335497, 0.225698,
		34.434147, 33.601658, 42.930454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.128563, 32.764042, 42.698311>,  <33.793926, 33.366810, 42.772465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.128563, 32.764042, 42.698311> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.335358, 33.000069, 42.946358>,  <34.459435, 33.141685, 43.095184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.335358, 33.000069, 42.946358>,  <34.128563, 32.764042, 42.698311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335358, 33.000069, 42.946358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040192, -0.740379, 0.670987,
		0.855047, -0.321970, -0.406485,
		0.516991, 0.590063, 0.620118,
		34.490456, 33.177086, 43.132393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749943, 32.453346, 42.858974>,  <34.128563, 32.764042, 42.698311>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.749943, 32.453346, 42.858974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.659500, 32.700798, 43.159950>,  <34.605236, 32.849270, 43.340538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.659500, 32.700798, 43.159950>,  <34.749943, 32.453346, 42.858974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659500, 32.700798, 43.159950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282041, -0.697783, 0.658446,
		0.932377, 0.361100, -0.016705,
		-0.226108, 0.618632, 0.752442,
		34.591667, 32.886387, 43.385681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248791, 32.337067, 43.447941>,  <34.749943, 32.453346, 42.858974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248791, 32.337067, 43.447941> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.949051, 32.527382, 43.632160>,  <34.769207, 32.641571, 43.742691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.949051, 32.527382, 43.632160>,  <35.248791, 32.337067, 43.447941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949051, 32.527382, 43.632160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094503, -0.611544, 0.785546,
		0.655395, 0.632173, 0.413298,
		-0.749351, 0.475785, 0.460545,
		34.724247, 32.670116, 43.770325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.457115, 32.465080, 44.111736>,  <35.248791, 32.337067, 43.447941>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.457115, 32.465080, 44.111736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.059418, 32.492767, 44.144463>,  <34.820801, 32.509380, 44.164101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.059418, 32.492767, 44.144463>,  <35.457115, 32.465080, 44.111736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059418, 32.492767, 44.144463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030495, -0.549151, 0.835166,
		0.102742, 0.832851, 0.543877,
		-0.994241, 0.069221, 0.081819,
		34.761147, 32.513535, 44.169006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350273, 32.683357, 44.731678>,  <35.457115, 32.465080, 44.111736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350273, 32.683357, 44.731678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.010063, 32.497215, 44.633659>,  <34.805935, 32.385532, 44.574848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.010063, 32.497215, 44.633659>,  <35.350273, 32.683357, 44.731678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010063, 32.497215, 44.633659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005006, -0.458751, 0.888551,
		-0.525906, 0.756964, 0.387851,
		-0.850528, -0.465353, -0.245049,
		34.754906, 32.357609, 44.560146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209572, 33.084862, 45.438423>,  <35.350273, 32.683357, 44.731678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209572, 33.084862, 45.438423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.536255, 33.186436, 45.645691>,  <35.732265, 33.247379, 45.770050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.536255, 33.186436, 45.645691>,  <35.209572, 33.084862, 45.438423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.536255, 33.186436, 45.645691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065875, 0.851066, -0.520909,
		-0.573276, 0.459566, 0.678347,
		0.816710, 0.253939, 0.518169,
		35.781269, 33.262619, 45.801140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195457, 33.839203, 45.526554>,  <35.209572, 33.084862, 45.438423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195457, 33.839203, 45.526554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.565731, 33.730511, 45.631832>,  <35.787895, 33.665295, 45.695000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.565731, 33.730511, 45.631832>,  <35.195457, 33.839203, 45.526554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565731, 33.730511, 45.631832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377923, 0.695116, -0.611545,
		-0.016779, 0.665566, 0.746150,
		0.925685, -0.271726, 0.263196,
		35.843437, 33.648994, 45.710793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570347, 34.382927, 45.669533>,  <35.195457, 33.839203, 45.526554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570347, 34.382927, 45.669533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.855492, 34.117039, 45.580116>,  <36.026577, 33.957504, 45.526466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.855492, 34.117039, 45.580116>,  <35.570347, 34.382927, 45.669533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855492, 34.117039, 45.580116> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529734, 0.719257, -0.449502,
		0.459578, 0.202015, 0.864857,
		0.712860, -0.664725, -0.223541,
		36.069351, 33.917622, 45.513054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105389, 34.672794, 45.898388>,  <35.570347, 34.382927, 45.669533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105389, 34.672794, 45.898388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.236012, 34.421040, 45.616329>,  <36.314384, 34.269985, 45.447094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.236012, 34.421040, 45.616329>,  <36.105389, 34.672794, 45.898388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236012, 34.421040, 45.616329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443292, 0.760890, -0.473855,
		0.834777, -0.157844, 0.527478,
		0.326557, -0.629390, -0.705145,
		36.333981, 34.232224, 45.404785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744144, 35.007328, 45.648529>,  <36.105389, 34.672794, 45.898388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744144, 35.007328, 45.648529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.649902, 34.746510, 45.360271>,  <36.593357, 34.590019, 45.187317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.649902, 34.746510, 45.360271>,  <36.744144, 35.007328, 45.648529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649902, 34.746510, 45.360271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393265, 0.614129, -0.684243,
		0.888727, -0.444612, 0.111737,
		-0.235602, -0.652047, -0.720643,
		36.579224, 34.550896, 45.144077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377071, 35.024792, 45.174282>,  <36.744144, 35.007328, 45.648529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377071, 35.024792, 45.174282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.093193, 34.857376, 44.947598>,  <36.922867, 34.756927, 44.811588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.093193, 34.857376, 44.947598>,  <37.377071, 35.024792, 45.174282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093193, 34.857376, 44.947598> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291745, 0.557591, -0.777160,
		0.641266, -0.716879, -0.273610,
		-0.709692, -0.418542, -0.566710,
		36.880283, 34.731815, 44.777584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713432, 34.806850, 44.567261>,  <37.377071, 35.024792, 45.174282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713432, 34.806850, 44.567261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.322678, 34.823383, 44.483368>,  <37.088226, 34.833302, 44.433033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.322678, 34.823383, 44.483368>,  <37.713432, 34.806850, 44.567261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322678, 34.823383, 44.483368> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207303, 0.422681, -0.882251,
		0.052185, -0.905335, -0.421479,
		-0.976884, 0.041334, -0.209736,
		37.029613, 34.835785, 44.420448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673168, 34.638817, 43.869312>,  <37.713432, 34.806850, 44.567261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673168, 34.638817, 43.869312> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.332684, 34.835052, 43.943886>,  <37.128391, 34.952793, 43.988628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.332684, 34.835052, 43.943886>,  <37.673168, 34.638817, 43.869312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.332684, 34.835052, 43.943886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114463, 0.520227, -0.846322,
		-0.512182, -0.699063, -0.498980,
		-0.851215, 0.490586, 0.186435,
		37.077320, 34.982227, 43.999817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242523, 34.640892, 43.233929>,  <37.673168, 34.638817, 43.869312>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242523, 34.640892, 43.233929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.101852, 34.937305, 43.462730>,  <37.017448, 35.115154, 43.600010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.101852, 34.937305, 43.462730>,  <37.242523, 34.640892, 43.233929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101852, 34.937305, 43.462730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026739, 0.618735, -0.785144,
		-0.935738, -0.260826, -0.237412,
		-0.351681, 0.741038, 0.572000,
		36.996349, 35.159618, 43.634331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810909, 34.855072, 42.800663>,  <37.242523, 34.640892, 43.233929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810909, 34.855072, 42.800663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.825497, 35.152794, 43.067398>,  <36.834248, 35.331429, 43.227440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.825497, 35.152794, 43.067398>,  <36.810909, 34.855072, 42.800663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.825497, 35.152794, 43.067398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090823, 0.662054, -0.743933,
		-0.995199, 0.087692, -0.043459,
		0.036465, 0.744308, 0.666840,
		36.836437, 35.376087, 43.267448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355438, 35.427570, 42.673870>,  <36.810909, 34.855072, 42.800663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355438, 35.427570, 42.673870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.635212, 35.608578, 42.895145>,  <36.803078, 35.717182, 43.027912>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.635212, 35.608578, 42.895145>,  <36.355438, 35.427570, 42.673870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635212, 35.608578, 42.895145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024637, 0.758298, -0.651442,
		-0.714272, 0.469270, 0.519231,
		0.699434, 0.452515, 0.553193,
		36.845043, 35.744331, 43.061104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190964, 36.001476, 42.517242>,  <36.355438, 35.427570, 42.673870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190964, 36.001476, 42.517242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.558098, 36.044903, 42.669979>,  <36.778378, 36.070957, 42.761620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.558098, 36.044903, 42.669979>,  <36.190964, 36.001476, 42.517242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558098, 36.044903, 42.669979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215073, 0.672481, -0.708176,
		-0.333661, 0.732109, 0.593875,
		0.917831, 0.108564, 0.381837,
		36.833447, 36.077473, 42.784531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333916, 36.770527, 42.576042>,  <36.190964, 36.001476, 42.517242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333916, 36.770527, 42.576042> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.691563, 36.592175, 42.592785>,  <36.906151, 36.485165, 42.602829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.691563, 36.592175, 42.592785>,  <36.333916, 36.770527, 42.576042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691563, 36.592175, 42.592785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342322, 0.620201, -0.705809,
		0.288745, 0.645402, 0.707165,
		0.894115, -0.445877, 0.041855,
		36.959797, 36.458412, 42.605343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760174, 37.403805, 42.595825>,  <36.333916, 36.770527, 42.576042>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760174, 37.403805, 42.595825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.975494, 37.083515, 42.490700>,  <37.104687, 36.891342, 42.427624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.975494, 37.083515, 42.490700>,  <36.760174, 37.403805, 42.595825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975494, 37.083515, 42.490700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491452, 0.551596, -0.673956,
		0.684622, 0.233630, 0.690442,
		0.538302, -0.800724, -0.262817,
		37.136986, 36.843300, 42.411854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<27.326403, 36.021145, 27.166496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.469887, 35.766136, 26.893764>,  <27.555977, 35.613129, 26.730125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.469887, 35.766136, 26.893764>,  <27.326403, 36.021145, 27.166496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.469887, 35.766136, 26.893764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075002, -0.708394, 0.701821,
		-0.930431, -0.302890, -0.206293,
		0.358711, -0.637523, -0.681829,
		27.577499, 35.574879, 26.689217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.929478, 35.403511, 27.210777>,  <27.326403, 36.021145, 27.166496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.929478, 35.403511, 27.210777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.298534, 35.335888, 27.072128>,  <27.519970, 35.295315, 26.988939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.298534, 35.335888, 27.072128>,  <26.929478, 35.403511, 27.210777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.298534, 35.335888, 27.072128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159151, -0.651773, 0.741528,
		-0.351281, -0.739331, -0.574448,
		0.922644, -0.169061, -0.346621,
		27.575327, 35.285168, 26.968142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.084030, 34.807858, 27.519650>,  <26.929478, 35.403511, 27.210777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.084030, 34.807858, 27.519650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.442715, 34.902813, 27.370220>,  <27.657925, 34.959785, 27.280563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.442715, 34.902813, 27.370220>,  <27.084030, 34.807858, 27.519650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.442715, 34.902813, 27.370220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428358, -0.677931, 0.597427,
		-0.111436, -0.695743, -0.709595,
		0.896711, 0.237386, -0.373573,
		27.711727, 34.974030, 27.258148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417488, 34.100979, 27.296869>,  <27.084030, 34.807858, 27.519650>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417488, 34.100979, 27.296869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.709192, 34.368866, 27.352942>,  <27.884214, 34.529598, 27.386585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.709192, 34.368866, 27.352942>,  <27.417488, 34.100979, 27.296869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709192, 34.368866, 27.352942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386540, -0.572288, 0.723238,
		0.564592, -0.473244, -0.676222,
		0.729262, 0.669721, 0.140182,
		27.927971, 34.569782, 27.394997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.075691, 33.772186, 27.544170>,  <27.417488, 34.100979, 27.296869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.075691, 33.772186, 27.544170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.175341, 34.153355, 27.613306>,  <28.235130, 34.382057, 27.654787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.175341, 34.153355, 27.613306>,  <28.075691, 33.772186, 27.544170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175341, 34.153355, 27.613306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361300, -0.257026, 0.896326,
		0.898555, -0.160848, -0.408323,
		0.249122, 0.952925, 0.172837,
		28.250076, 34.439232, 27.665157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774054, 33.710823, 27.911144>,  <28.075691, 33.772186, 27.544170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774054, 33.710823, 27.911144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.618076, 34.072754, 27.979527>,  <28.524490, 34.289913, 28.020555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.618076, 34.072754, 27.979527>,  <28.774054, 33.710823, 27.911144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618076, 34.072754, 27.979527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190329, -0.102444, 0.976360,
		0.900955, 0.413261, -0.132269,
		-0.389941, 0.904832, 0.170954,
		28.501095, 34.344204, 28.030813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265211, 34.144985, 28.255264>,  <28.774054, 33.710823, 27.911144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265211, 34.144985, 28.255264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.910435, 34.298622, 28.357878>,  <28.697569, 34.390804, 28.419447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.910435, 34.298622, 28.357878>,  <29.265211, 34.144985, 28.255264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.910435, 34.298622, 28.357878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296436, 0.047437, 0.953874,
		0.354204, 0.922076, -0.155932,
		-0.886941, 0.384090, 0.256535,
		28.644352, 34.413849, 28.434837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356089, 34.660595, 28.816990>,  <29.265211, 34.144985, 28.255264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356089, 34.660595, 28.816990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.968683, 34.569782, 28.857853>,  <28.736240, 34.515297, 28.882370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.968683, 34.569782, 28.857853>,  <29.356089, 34.660595, 28.816990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968683, 34.569782, 28.857853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075713, 0.122301, 0.989601,
		-0.237162, 0.966178, -0.101262,
		-0.968515, -0.227029, 0.102157,
		28.678129, 34.501675, 28.888500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084267, 35.209930, 29.179691>,  <29.356089, 34.660595, 28.816990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084267, 35.209930, 29.179691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.832140, 34.903717, 29.231329>,  <28.680864, 34.719990, 29.262312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.832140, 34.903717, 29.231329>,  <29.084267, 35.209930, 29.179691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832140, 34.903717, 29.231329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007049, 0.171922, 0.985085,
		-0.776308, 0.620003, -0.113761,
		-0.630314, -0.765531, 0.129094,
		28.643045, 34.674057, 29.270058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655865, 35.477768, 29.689699>,  <29.084267, 35.209930, 29.179691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655865, 35.477768, 29.689699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.576338, 35.085876, 29.679873>,  <28.528622, 34.850742, 29.673977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.576338, 35.085876, 29.679873>,  <28.655865, 35.477768, 29.689699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576338, 35.085876, 29.679873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182128, 0.012304, 0.983198,
		-0.962964, 0.199954, -0.180882,
		-0.198820, -0.979728, -0.024568,
		28.516691, 34.791958, 29.672503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.161711, 35.395447, 30.213173>,  <28.655865, 35.477768, 29.689699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.161711, 35.395447, 30.213173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.332930, 35.036713, 30.168516>,  <28.435661, 34.821472, 30.141722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.332930, 35.036713, 30.168516>,  <28.161711, 35.395447, 30.213173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332930, 35.036713, 30.168516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093813, -0.166958, 0.981491,
		-0.898874, -0.409651, -0.155601,
		0.428048, -0.896834, -0.111644,
		28.461344, 34.767662, 30.135023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.759497, 34.970673, 30.572346>,  <28.161711, 35.395447, 30.213173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.759497, 34.970673, 30.572346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.103493, 34.767635, 30.551323>,  <28.309891, 34.645813, 30.538710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.103493, 34.767635, 30.551323>,  <27.759497, 34.970673, 30.572346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103493, 34.767635, 30.551323> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035617, -0.162445, 0.986074,
		-0.509065, -0.846143, -0.157780,
		0.859991, -0.507596, -0.052558,
		28.361490, 34.615356, 30.535555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628920, 34.344704, 30.849916>,  <27.759497, 34.970673, 30.572346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628920, 34.344704, 30.849916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.027859, 34.351231, 30.878284>,  <28.267221, 34.355148, 30.895306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.027859, 34.351231, 30.878284>,  <27.628920, 34.344704, 30.849916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.027859, 34.351231, 30.878284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068327, -0.125418, 0.989748,
		0.025048, -0.991970, -0.123970,
		0.997349, 0.016321, 0.070920,
		28.327063, 34.356125, 30.899561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813992, 33.765602, 31.343248>,  <27.628920, 34.344704, 30.849916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813992, 33.765602, 31.343248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.120079, 34.022900, 31.353632>,  <28.303732, 34.177280, 31.359861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.120079, 34.022900, 31.353632>,  <27.813992, 33.765602, 31.343248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120079, 34.022900, 31.353632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131529, -0.195686, 0.971806,
		0.630190, -0.740230, -0.234348,
		0.765219, 0.643246, 0.025958,
		28.349646, 34.215874, 31.361420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365347, 33.437527, 31.582438>,  <27.813992, 33.765602, 31.343248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365347, 33.437527, 31.582438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.425819, 33.827873, 31.645477>,  <28.462103, 34.062080, 31.683302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.425819, 33.827873, 31.645477>,  <28.365347, 33.437527, 31.582438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425819, 33.827873, 31.645477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137492, -0.178641, 0.974260,
		0.978897, -0.125623, -0.161180,
		0.151183, 0.975862, 0.157599,
		28.471174, 34.120632, 31.692757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.686983, 33.494804, 32.238628>,  <28.365347, 33.437527, 31.582438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.686983, 33.494804, 32.238628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.599268, 33.882423, 32.193264>,  <28.546638, 34.114994, 32.166046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.599268, 33.882423, 32.193264>,  <28.686983, 33.494804, 32.238628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599268, 33.882423, 32.193264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074711, 0.132578, 0.988353,
		0.972795, 0.208263, -0.101472,
		-0.219290, 0.969046, -0.113412,
		28.533482, 34.173138, 32.159241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074398, 33.757042, 32.769318>,  <28.686983, 33.494804, 32.238628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074398, 33.757042, 32.769318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.806021, 34.036625, 32.670292>,  <28.644995, 34.204376, 32.610874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.806021, 34.036625, 32.670292>,  <29.074398, 33.757042, 32.769318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806021, 34.036625, 32.670292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008384, 0.341000, 0.940026,
		0.741461, 0.628628, -0.234652,
		-0.670943, 0.698960, -0.247568,
		28.604738, 34.246311, 32.596020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313637, 34.373390, 33.052990>,  <29.074398, 33.757042, 32.769318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313637, 34.373390, 33.052990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.918201, 34.413891, 33.008377>,  <28.680941, 34.438190, 32.981609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.918201, 34.413891, 33.008377>,  <29.313637, 34.373390, 33.052990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918201, 34.413891, 33.008377> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085030, 0.236078, 0.968007,
		0.124344, 0.966445, -0.224774,
		-0.988589, 0.101253, -0.111532,
		28.621624, 34.444267, 32.974918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140038, 34.966572, 33.448860>,  <29.313637, 34.373390, 33.052990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140038, 34.966572, 33.448860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.789194, 34.782505, 33.393833>,  <28.578688, 34.672066, 33.360817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.789194, 34.782505, 33.393833>,  <29.140038, 34.966572, 33.448860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789194, 34.782505, 33.393833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245827, 0.184051, 0.951680,
		-0.412611, 0.868546, -0.274554,
		-0.877109, -0.460167, -0.137570,
		28.526062, 34.644455, 33.352562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429705, 35.660210, 33.132343>,  <29.140038, 34.966572, 33.448860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429705, 35.660210, 33.132343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.768497, 35.832043, 33.257610>,  <29.971773, 35.935143, 33.332771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.768497, 35.832043, 33.257610>,  <29.429705, 35.660210, 33.132343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768497, 35.832043, 33.257610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181285, 0.320391, -0.929777,
		-0.499753, 0.844280, 0.193489,
		0.846984, 0.429582, 0.313172,
		30.022593, 35.960918, 33.351562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347277, 36.426525, 33.064976>,  <29.429705, 35.660210, 33.132343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347277, 36.426525, 33.064976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.728827, 36.307598, 33.048344>,  <29.957756, 36.236240, 33.038364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.728827, 36.307598, 33.048344>,  <29.347277, 36.426525, 33.064976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.728827, 36.307598, 33.048344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101357, 0.449303, -0.887611,
		0.282582, 0.842454, 0.458714,
		0.953873, -0.297317, -0.041577,
		30.014988, 36.218403, 33.035870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581806, 37.012657, 32.913460>,  <29.347277, 36.426525, 33.064976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581806, 37.012657, 32.913460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.858313, 36.737183, 32.825954>,  <30.024216, 36.571896, 32.773449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.858313, 36.737183, 32.825954>,  <29.581806, 37.012657, 32.913460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.858313, 36.737183, 32.825954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304034, 0.551848, -0.776548,
		0.655526, 0.470288, 0.590859,
		0.691266, -0.688689, -0.218767,
		30.065693, 36.530575, 32.760323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206085, 37.350201, 32.687447>,  <29.581806, 37.012657, 32.913460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206085, 37.350201, 32.687447> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.229315, 36.974178, 32.553032>,  <30.243252, 36.748566, 32.472382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.229315, 36.974178, 32.553032>,  <30.206085, 37.350201, 32.687447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229315, 36.974178, 32.553032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279851, 0.338441, -0.898410,
		0.958285, -0.041868, 0.282730,
		0.058073, -0.940056, -0.336039,
		30.246737, 36.692162, 32.452221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850786, 37.270599, 32.416958>,  <30.206085, 37.350201, 32.687447>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850786, 37.270599, 32.416958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.632111, 36.982765, 32.245689>,  <30.500906, 36.810066, 32.142929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.632111, 36.982765, 32.245689>,  <30.850786, 37.270599, 32.416958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.632111, 36.982765, 32.245689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338870, 0.277475, -0.898986,
		0.765702, -0.636559, 0.092153,
		-0.546687, -0.719583, -0.428174,
		30.468105, 36.766891, 32.117237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312689, 37.081100, 31.860649>,  <30.850786, 37.270599, 32.416958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.312689, 37.081100, 31.860649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.962152, 36.909489, 31.773054>,  <30.751831, 36.806522, 31.720497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.962152, 36.909489, 31.773054>,  <31.312689, 37.081100, 31.860649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962152, 36.909489, 31.773054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201338, 0.086752, -0.975673,
		0.437591, -0.899114, 0.010356,
		-0.876343, -0.429031, -0.218987,
		30.699249, 36.780781, 31.707357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488779, 36.677807, 31.355936>,  <31.312689, 37.081100, 31.860649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488779, 36.677807, 31.355936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.098085, 36.753105, 31.314850>,  <30.863668, 36.798283, 31.290199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.098085, 36.753105, 31.314850>,  <31.488779, 36.677807, 31.355936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.098085, 36.753105, 31.314850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120394, 0.085003, -0.989080,
		-0.177461, -0.978436, -0.105689,
		-0.976736, 0.188247, -0.102713,
		30.805065, 36.809578, 31.284037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278545, 36.439129, 30.737850>,  <31.488779, 36.677807, 31.355936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278545, 36.439129, 30.737850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.942238, 36.647537, 30.796700>,  <30.740454, 36.772583, 30.832010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.942238, 36.647537, 30.796700>,  <31.278545, 36.439129, 30.737850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.942238, 36.647537, 30.796700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015754, 0.248093, -0.968608,
		-0.541164, -0.816694, -0.200381,
		-0.840770, 0.521019, 0.147125,
		30.690006, 36.803844, 30.840837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.782562, 36.282715, 30.234856>,  <31.278545, 36.439129, 30.737850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.782562, 36.282715, 30.234856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.658791, 36.639030, 30.367970>,  <30.584528, 36.852821, 30.447838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.658791, 36.639030, 30.367970>,  <30.782562, 36.282715, 30.234856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.658791, 36.639030, 30.367970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006896, 0.352055, -0.935954,
		-0.950897, -0.287317, -0.115079,
		-0.309429, 0.890789, 0.332787,
		30.565962, 36.906269, 30.467806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389008, 36.460724, 29.644205>,  <30.782562, 36.282715, 30.234856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389008, 36.460724, 29.644205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.378653, 36.805706, 29.846394>,  <30.372438, 37.012695, 29.967707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.378653, 36.805706, 29.846394>,  <30.389008, 36.460724, 29.644205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378653, 36.805706, 29.846394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070413, 0.502811, -0.861524,
		-0.997182, -0.057896, 0.047710,
		-0.025890, 0.862456, 0.505470,
		30.370886, 37.064442, 29.998035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743811, 36.837704, 29.583874>,  <30.389008, 36.460724, 29.644205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743811, 36.837704, 29.583874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.028099, 37.108944, 29.658758>,  <30.198673, 37.271690, 29.703688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.028099, 37.108944, 29.658758>,  <29.743811, 36.837704, 29.583874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028099, 37.108944, 29.658758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128592, 0.386870, -0.913124,
		-0.691619, 0.624905, 0.362156,
		0.710723, 0.678105, 0.187209,
		30.241316, 37.312374, 29.714920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518290, 37.453758, 29.189812>,  <29.743811, 36.837704, 29.583874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518290, 37.453758, 29.189812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.892574, 37.564865, 29.276793>,  <30.117146, 37.631531, 29.328981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.892574, 37.564865, 29.276793>,  <29.518290, 37.453758, 29.189812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.892574, 37.564865, 29.276793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048243, 0.509878, -0.858893,
		-0.349446, 0.814168, 0.463700,
		0.935714, 0.277766, 0.217453,
		30.173288, 37.648193, 29.342028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522964, 38.196426, 29.114166>,  <29.518290, 37.453758, 29.189812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522964, 38.196426, 29.114166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.887413, 38.041901, 29.056725>,  <30.106081, 37.949184, 29.022259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.887413, 38.041901, 29.056725>,  <29.522964, 38.196426, 29.114166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887413, 38.041901, 29.056725> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053555, 0.456457, -0.888132,
		0.408647, 0.801504, 0.436576,
		0.911120, -0.386313, -0.143605,
		30.160749, 37.926006, 29.013643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826521, 38.661583, 28.688951>,  <29.522964, 38.196426, 29.114166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.826521, 38.661583, 28.688951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.089699, 38.362011, 28.657419>,  <30.247604, 38.182266, 28.638500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.089699, 38.362011, 28.657419>,  <29.826521, 38.661583, 28.688951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.089699, 38.362011, 28.657419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091374, 0.183302, -0.978801,
		0.747504, 0.636791, 0.189035,
		0.657942, -0.748931, -0.078833,
		30.287081, 38.137333, 28.633770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528341, 38.946259, 28.339233>,  <29.826521, 38.661583, 28.688951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528341, 38.946259, 28.339233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.531755, 38.548416, 28.297899>,  <30.533804, 38.309711, 28.273100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.531755, 38.548416, 28.297899>,  <30.528341, 38.946259, 28.339233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531755, 38.548416, 28.297899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184253, 0.103133, -0.977453,
		0.982842, -0.010697, 0.184140,
		0.008535, -0.994610, -0.103334,
		30.534315, 38.250034, 28.266899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075605, 38.767189, 27.788757>,  <30.528341, 38.946259, 28.339233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075605, 38.767189, 27.788757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.849981, 38.437820, 27.813467>,  <30.714607, 38.240200, 27.828293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.849981, 38.437820, 27.813467>,  <31.075605, 38.767189, 27.788757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849981, 38.437820, 27.813467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029340, -0.054775, -0.998068,
		0.825214, -0.564781, 0.006737,
		-0.564058, -0.823421, 0.061772,
		30.680763, 38.190796, 27.831999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311666, 38.365143, 27.255104>,  <31.075605, 38.767189, 27.788757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311666, 38.365143, 27.255104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.949133, 38.211548, 27.325657>,  <30.731613, 38.119389, 27.367989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.949133, 38.211548, 27.325657>,  <31.311666, 38.365143, 27.255104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949133, 38.211548, 27.325657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191729, 0.001718, -0.981446,
		0.376562, -0.923336, -0.075179,
		-0.906334, -0.383989, 0.176384,
		30.677233, 38.096352, 27.378572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244751, 37.648663, 26.893900>,  <31.311666, 38.365143, 27.255104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244751, 37.648663, 26.893900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.872772, 37.788921, 26.938156>,  <30.649584, 37.873077, 26.964710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.872772, 37.788921, 26.938156>,  <31.244751, 37.648663, 26.893900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.872772, 37.788921, 26.938156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157129, -0.106939, -0.981771,
		-0.332428, -0.930380, 0.154545,
		-0.929948, 0.350652, 0.110640,
		30.593788, 37.894115, 26.971348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762920, 37.283600, 26.535433>,  <31.244751, 37.648663, 26.893900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762920, 37.283600, 26.535433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.534718, 37.608616, 26.583258>,  <30.397795, 37.803627, 26.611952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.534718, 37.608616, 26.583258>,  <30.762920, 37.283600, 26.535433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534718, 37.608616, 26.583258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311875, -0.079662, -0.946778,
		-0.759773, -0.577433, 0.298859,
		-0.570508, 0.812543, 0.119562,
		30.363565, 37.852379, 26.619127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113068, 37.145691, 26.184574>,  <30.762920, 37.283600, 26.535433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113068, 37.145691, 26.184574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.115059, 37.543903, 26.222292>,  <30.116253, 37.782829, 26.244923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.115059, 37.543903, 26.222292>,  <30.113068, 37.145691, 26.184574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115059, 37.543903, 26.222292> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299087, 0.091463, -0.949832,
		-0.954213, -0.023473, 0.298206,
		0.004979, 0.995531, 0.094296,
		30.116552, 37.842564, 26.250580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.373638, 37.377121, 26.093288>,  <30.113068, 37.145691, 26.184574>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.373638, 37.377121, 26.093288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.632660, 37.670780, 26.011599>,  <29.788073, 37.846973, 25.962585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.632660, 37.670780, 26.011599>,  <29.373638, 37.377121, 26.093288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632660, 37.670780, 26.011599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357006, 0.055509, -0.932451,
		-0.673217, 0.676721, 0.298038,
		0.647554, 0.734143, -0.204224,
		29.826925, 37.891022, 25.950331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065327, 37.891369, 25.794878>,  <29.373638, 37.377121, 26.093288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065327, 37.891369, 25.794878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.439396, 37.977333, 25.682261>,  <29.663837, 38.028912, 25.614689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.439396, 37.977333, 25.682261>,  <29.065327, 37.891369, 25.794878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439396, 37.977333, 25.682261> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323667, 0.195687, -0.925714,
		-0.143848, 0.956829, 0.252560,
		0.935172, 0.214907, -0.281545,
		29.719948, 38.041805, 25.597797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953356, 38.450287, 25.419815>,  <29.065327, 37.891369, 25.794878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953356, 38.450287, 25.419815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.311823, 38.307606, 25.314249>,  <29.526903, 38.221996, 25.250910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.311823, 38.307606, 25.314249>,  <28.953356, 38.450287, 25.419815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311823, 38.307606, 25.314249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235586, 0.121527, -0.964225,
		0.376012, 0.926281, 0.024875,
		0.896166, -0.356700, -0.263914,
		29.580673, 38.200596, 25.235075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.039570, 31.560844, 46.390907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.711735, 31.447689, 46.191612>,  <39.515034, 31.379795, 46.072033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.711735, 31.447689, 46.191612>,  <40.039570, 31.560844, 46.390907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711735, 31.447689, 46.191612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492675, -0.095942, 0.864908,
		-0.292476, 0.954342, -0.060740,
		-0.819591, -0.282890, -0.498242,
		39.465858, 31.362822, 46.042141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505840, 31.960932, 46.686203>,  <40.039570, 31.560844, 46.390907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505840, 31.960932, 46.686203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.306267, 31.648695, 46.535610>,  <39.186523, 31.461353, 46.445255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.306267, 31.648695, 46.535610>,  <39.505840, 31.960932, 46.686203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306267, 31.648695, 46.535610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500841, -0.094812, 0.860331,
		-0.707262, 0.617809, -0.343646,
		-0.498938, -0.780591, -0.376481,
		39.156586, 31.414518, 46.422665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.691238, 31.915968, 46.901062>,  <39.505840, 31.960932, 46.686203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.691238, 31.915968, 46.901062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.779316, 31.533716, 46.822796>,  <38.832165, 31.304365, 46.775837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.779316, 31.533716, 46.822796>,  <38.691238, 31.915968, 46.901062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779316, 31.533716, 46.822796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510485, -0.283820, 0.811697,
		-0.831215, -0.078851, -0.550331,
		0.220198, -0.955630, -0.195663,
		38.845375, 31.247026, 46.764095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111954, 31.542379, 47.195419>,  <38.691238, 31.915968, 46.901062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111954, 31.542379, 47.195419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.372662, 31.246721, 47.127464>,  <38.529087, 31.069326, 47.086693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.372662, 31.246721, 47.127464>,  <38.111954, 31.542379, 47.195419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372662, 31.246721, 47.127464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518865, -0.597944, 0.610935,
		-0.553152, -0.310041, -0.773238,
		0.651769, -0.739146, -0.169885,
		38.568192, 31.024977, 47.076496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698650, 30.843750, 46.995960>,  <38.111954, 31.542379, 47.195419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698650, 30.843750, 46.995960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.057777, 30.760290, 47.151077>,  <38.273254, 30.710215, 47.244148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.057777, 30.760290, 47.151077>,  <37.698650, 30.843750, 46.995960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057777, 30.760290, 47.151077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436684, -0.535419, 0.722934,
		0.056793, -0.818408, -0.571823,
		0.897820, -0.208649, 0.387794,
		38.327122, 30.697695, 47.267414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.606148, 30.262320, 47.258545>,  <37.698650, 30.843750, 46.995960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.606148, 30.262320, 47.258545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.928913, 30.368643, 47.469536>,  <38.122574, 30.432436, 47.596130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.928913, 30.368643, 47.469536>,  <37.606148, 30.262320, 47.258545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928913, 30.368643, 47.469536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327996, -0.541039, 0.774400,
		0.491228, -0.797886, -0.349389,
		0.806916, 0.265809, 0.527477,
		38.170986, 30.448385, 47.627777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808861, 29.668152, 47.632374>,  <37.606148, 30.262320, 47.258545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808861, 29.668152, 47.632374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.055634, 29.906647, 47.837856>,  <38.203697, 30.049744, 47.961143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.055634, 29.906647, 47.837856>,  <37.808861, 29.668152, 47.632374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055634, 29.906647, 47.837856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008580, -0.647589, 0.761941,
		0.786967, -0.474477, -0.394405,
		0.616936, 0.596238, 0.513702,
		38.240715, 30.085518, 47.991966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477303, 29.260782, 47.983074>,  <37.808861, 29.668152, 47.632374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477303, 29.260782, 47.983074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.387436, 29.591829, 48.188820>,  <38.333515, 29.790459, 48.312267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.387436, 29.591829, 48.188820>,  <38.477303, 29.260782, 47.983074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387436, 29.591829, 48.188820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061432, -0.538838, 0.840166,
		0.972496, 0.157163, 0.171904,
		-0.224671, 0.827619, 0.514363,
		38.320034, 29.840115, 48.343128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920280, 29.375534, 48.576248>,  <38.477303, 29.260782, 47.983074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920280, 29.375534, 48.576248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.580643, 29.575113, 48.645638>,  <38.376862, 29.694860, 48.687271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.580643, 29.575113, 48.645638>,  <38.920280, 29.375534, 48.576248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580643, 29.575113, 48.645638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061729, -0.419870, 0.905482,
		0.524626, 0.758129, 0.387308,
		-0.849092, 0.498948, 0.173477,
		38.325916, 29.724798, 48.697681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881561, 29.386921, 49.248882>,  <38.920280, 29.375534, 48.576248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881561, 29.386921, 49.248882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.506306, 29.490753, 49.157215>,  <38.281151, 29.553053, 49.102215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.506306, 29.490753, 49.157215>,  <38.881561, 29.386921, 49.248882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506306, 29.490753, 49.157215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336970, -0.532130, 0.776716,
		0.079674, 0.805888, 0.586682,
		-0.938138, 0.259579, -0.229164,
		38.224865, 29.568626, 49.088467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609219, 29.561491, 49.844170>,  <38.881561, 29.386921, 49.248882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609219, 29.561491, 49.844170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.283680, 29.492172, 49.622314>,  <38.088356, 29.450581, 49.489201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.283680, 29.492172, 49.622314>,  <38.609219, 29.561491, 49.844170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.283680, 29.492172, 49.622314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473674, -0.355016, 0.805975,
		-0.336576, 0.918658, 0.206843,
		-0.813848, -0.173296, -0.554635,
		38.039524, 29.440184, 49.455925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083973, 29.689409, 50.274738>,  <38.609219, 29.561491, 49.844170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083973, 29.689409, 50.274738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.902458, 29.476538, 49.988838>,  <37.793549, 29.348814, 49.817299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.902458, 29.476538, 49.988838>,  <38.083973, 29.689409, 50.274738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902458, 29.476538, 49.988838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426397, -0.574628, 0.698561,
		-0.782475, 0.621762, 0.033838,
		-0.453783, -0.532178, -0.714750,
		37.766323, 29.316885, 49.774414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316658, 29.604704, 50.401035>,  <38.083973, 29.689409, 50.274738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316658, 29.604704, 50.401035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.479683, 29.305525, 50.191479>,  <37.577499, 29.126019, 50.065742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.479683, 29.305525, 50.191479>,  <37.316658, 29.604704, 50.401035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479683, 29.305525, 50.191479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368318, -0.659615, 0.655172,
		-0.835602, -0.074066, -0.544319,
		0.407567, -0.747946, -0.523896,
		37.601952, 29.081141, 50.034309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815186, 28.977232, 50.382126>,  <37.316658, 29.604704, 50.401035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815186, 28.977232, 50.382126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.182949, 28.820835, 50.365131>,  <37.403606, 28.726997, 50.354935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.182949, 28.820835, 50.365131>,  <36.815186, 28.977232, 50.382126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182949, 28.820835, 50.365131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306846, -0.780703, 0.544378,
		-0.246019, -0.487470, -0.837763,
		0.919413, -0.390992, -0.042490,
		37.458775, 28.703537, 50.352383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384296, 29.151941, 49.978432>,  <36.815186, 28.977232, 50.382126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384296, 29.151941, 49.978432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.003563, 29.274431, 49.984726>,  <35.775124, 29.347925, 49.988503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.003563, 29.274431, 49.984726>,  <36.384296, 29.151941, 49.978432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003563, 29.274431, 49.984726> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145974, 0.497667, -0.854996,
		-0.269653, -0.811513, -0.518395,
		-0.951829, 0.306225, 0.015738,
		35.718014, 29.366299, 49.989449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061802, 28.997526, 49.323685>,  <36.384296, 29.151941, 49.978432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061802, 28.997526, 49.323685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879814, 29.307596, 49.499004>,  <35.770622, 29.493637, 49.604198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879814, 29.307596, 49.499004>,  <36.061802, 28.997526, 49.323685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879814, 29.307596, 49.499004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113818, 0.538777, -0.834724,
		-0.883205, -0.329885, -0.333354,
		-0.454967, 0.775174, 0.438304,
		35.743324, 29.540148, 49.630497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593750, 29.219294, 48.863655>,  <36.061802, 28.997526, 49.323685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593750, 29.219294, 48.863655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.635006, 29.545288, 49.091747>,  <35.659760, 29.740885, 49.228603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.635006, 29.545288, 49.091747>,  <35.593750, 29.219294, 48.863655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635006, 29.545288, 49.091747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052415, 0.576944, -0.815100,
		-0.993285, 0.054181, 0.102223,
		0.103140, 0.814985, 0.570230,
		35.665947, 29.789783, 49.262817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090862, 29.664028, 48.607876>,  <35.593750, 29.219294, 48.863655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090862, 29.664028, 48.607876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.353539, 29.870354, 48.827946>,  <35.511143, 29.994150, 48.959988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.353539, 29.870354, 48.827946>,  <35.090862, 29.664028, 48.607876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353539, 29.870354, 48.827946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123807, 0.645886, -0.753328,
		-0.743927, 0.562820, 0.360287,
		0.656692, 0.515815, 0.550173,
		35.550545, 30.025099, 48.992996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832230, 30.344942, 48.531326>,  <35.090862, 29.664028, 48.607876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832230, 30.344942, 48.531326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.213161, 30.378040, 48.648777>,  <35.441723, 30.397900, 48.719246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.213161, 30.378040, 48.648777>,  <34.832230, 30.344942, 48.531326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213161, 30.378040, 48.648777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096595, 0.831196, -0.547524,
		-0.289363, 0.549788, 0.783583,
		0.952333, 0.082743, 0.293624,
		35.498863, 30.402863, 48.736866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924706, 31.015759, 48.495583>,  <34.832230, 30.344942, 48.531326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924706, 31.015759, 48.495583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.300972, 30.887741, 48.540695>,  <35.526733, 30.810930, 48.567764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.300972, 30.887741, 48.540695>,  <34.924706, 31.015759, 48.495583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300972, 30.887741, 48.540695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310638, 0.678405, -0.665786,
		0.136567, 0.661317, 0.737570,
		0.940667, -0.320041, 0.112782,
		35.583172, 30.791729, 48.574532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294434, 31.629452, 48.707638>,  <34.924706, 31.015759, 48.495583>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294434, 31.629452, 48.707638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546261, 31.375072, 48.529106>,  <35.697357, 31.222445, 48.421986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.546261, 31.375072, 48.529106>,  <35.294434, 31.629452, 48.707638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546261, 31.375072, 48.529106> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307436, 0.731492, -0.608607,
		0.713529, 0.245943, 0.656040,
		0.629571, -0.635949, -0.446329,
		35.735130, 31.184288, 48.395206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049831, 31.998674, 48.623955>,  <35.294434, 31.629452, 48.707638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049831, 31.998674, 48.623955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.032776, 31.702503, 48.355640>,  <36.022541, 31.524801, 48.194653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.032776, 31.702503, 48.355640>,  <36.049831, 31.998674, 48.623955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032776, 31.702503, 48.355640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285002, 0.634481, -0.718476,
		0.957578, -0.221810, 0.183969,
		-0.042640, -0.740428, -0.670781,
		36.019985, 31.480375, 48.154408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656929, 31.993393, 48.296692>,  <36.049831, 31.998674, 48.623955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656929, 31.993393, 48.296692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.393394, 31.840021, 48.037796>,  <36.235275, 31.747997, 47.882458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.393394, 31.840021, 48.037796>,  <36.656929, 31.993393, 48.296692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393394, 31.840021, 48.037796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288878, 0.665458, -0.688270,
		0.694620, -0.640425, -0.327656,
		-0.658827, -0.383434, -0.647245,
		36.195744, 31.724993, 47.843624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022953, 32.091747, 47.647541>,  <36.656929, 31.993393, 48.296692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022953, 32.091747, 47.647541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.654896, 32.004871, 47.517204>,  <36.434063, 31.952747, 47.439003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.654896, 32.004871, 47.517204>,  <37.022953, 32.091747, 47.647541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654896, 32.004871, 47.517204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115153, 0.645231, -0.755259,
		0.374274, -0.732466, -0.568694,
		-0.920141, -0.217187, -0.325839,
		36.378853, 31.939714, 47.419453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108040, 32.134106, 46.982147>,  <37.022953, 32.091747, 47.647541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108040, 32.134106, 46.982147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.709648, 32.148350, 47.015049>,  <36.470615, 32.156895, 47.034790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.709648, 32.148350, 47.015049>,  <37.108040, 32.134106, 46.982147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709648, 32.148350, 47.015049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029772, 0.734168, -0.678315,
		-0.084539, -0.678034, -0.730153,
		-0.995975, 0.035607, 0.082252,
		36.410854, 32.159031, 47.039726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672306, 31.867027, 46.377407>,  <37.108040, 32.134106, 46.982147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672306, 31.867027, 46.377407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.420891, 32.124691, 46.551762>,  <36.270042, 32.279289, 46.656376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.420891, 32.124691, 46.551762>,  <36.672306, 31.867027, 46.377407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420891, 32.124691, 46.551762> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050036, 0.525779, -0.849148,
		-0.776166, -0.555534, -0.298242,
		-0.628540, 0.644157, 0.435889,
		36.232330, 32.317940, 46.682529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130409, 32.025883, 45.766392>,  <36.672306, 31.867027, 46.377407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130409, 32.025883, 45.766392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.027821, 32.287979, 46.050610>,  <35.966267, 32.445236, 46.221142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.027821, 32.287979, 46.050610>,  <36.130409, 32.025883, 45.766392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027821, 32.287979, 46.050610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364857, 0.615118, -0.698934,
		-0.895043, -0.438505, 0.081310,
		-0.256471, 0.655243, 0.710549,
		35.950878, 32.484550, 46.263775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395824, 32.354374, 45.631878>,  <36.130409, 32.025883, 45.766392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395824, 32.354374, 45.631878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.609097, 32.612541, 45.850658>,  <35.737061, 32.767441, 45.981926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.609097, 32.612541, 45.850658>,  <35.395824, 32.354374, 45.631878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609097, 32.612541, 45.850658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124912, 0.699485, -0.703646,
		-0.836727, 0.306852, 0.453574,
		0.533183, 0.645417, 0.546948,
		35.769051, 32.806168, 46.014744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679398, 32.623844, 45.498772>,  <35.395824, 32.354374, 45.631878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679398, 32.623844, 45.498772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.563313, 32.370102, 45.212173>,  <34.493664, 32.217857, 45.040215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.563313, 32.370102, 45.212173>,  <34.679398, 32.623844, 45.498772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563313, 32.370102, 45.212173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414207, -0.591686, 0.691621,
		-0.862676, 0.497495, -0.091041,
		-0.290211, -0.634355, -0.716500,
		34.476250, 32.179794, 44.997223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116627, 32.300529, 45.774799>,  <34.679398, 32.623844, 45.498772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116627, 32.300529, 45.774799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.200531, 32.059387, 45.466885>,  <34.250874, 31.914703, 45.282135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.200531, 32.059387, 45.466885>,  <34.116627, 32.300529, 45.774799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200531, 32.059387, 45.466885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616904, -0.692413, 0.374155,
		-0.758570, 0.396400, -0.517145,
		0.209762, -0.602852, -0.769785,
		34.263458, 31.878532, 45.235950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444740, 32.076485, 45.506950>,  <34.116627, 32.300529, 45.774799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444740, 32.076485, 45.506950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.710800, 31.794558, 45.408321>,  <33.870438, 31.625401, 45.349144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.710800, 31.794558, 45.408321>,  <33.444740, 32.076485, 45.506950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.710800, 31.794558, 45.408321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588812, -0.698157, 0.407282,
		-0.459208, -0.125719, -0.879388,
		0.665154, -0.704821, -0.246574,
		33.910347, 31.583111, 45.334351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.984932, 31.523546, 45.228737>,  <33.444740, 32.076485, 45.506950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.984932, 31.523546, 45.228737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.338501, 31.397049, 45.366535>,  <33.550640, 31.321152, 45.449215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.338501, 31.397049, 45.366535>,  <32.984932, 31.523546, 45.228737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338501, 31.397049, 45.366535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467639, -0.599254, 0.649775,
		0.000956, -0.735449, -0.677579,
		0.883919, -0.316242, 0.344498,
		33.603676, 31.302176, 45.469883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920807, 30.787333, 45.275398>,  <32.984932, 31.523546, 45.228737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920807, 30.787333, 45.275398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265541, 30.832582, 45.473160>,  <33.472382, 30.859732, 45.591816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.265541, 30.832582, 45.473160>,  <32.920807, 30.787333, 45.275398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265541, 30.832582, 45.473160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328090, -0.619027, 0.713556,
		0.386771, -0.777180, -0.496386,
		0.861838, 0.113123, 0.494407,
		33.524094, 30.866520, 45.621483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137058, 30.141335, 45.535004>,  <32.920807, 30.787333, 45.275398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137058, 30.141335, 45.535004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.329723, 30.396395, 45.775471>,  <33.445324, 30.549431, 45.919750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.329723, 30.396395, 45.775471>,  <33.137058, 30.141335, 45.535004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329723, 30.396395, 45.775471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318779, -0.511505, 0.797961,
		0.816321, -0.575988, -0.043104,
		0.481664, 0.637652, 0.601165,
		33.474224, 30.587690, 45.955822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597305, 29.785587, 45.888992>,  <33.137058, 30.141335, 45.535004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597305, 29.785587, 45.888992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.501755, 30.104700, 46.110435>,  <33.444424, 30.296167, 46.243301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.501755, 30.104700, 46.110435>,  <33.597305, 29.785587, 45.888992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501755, 30.104700, 46.110435> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146629, -0.593209, 0.791583,
		0.959916, 0.107913, 0.258680,
		-0.238874, 0.797783, 0.553608,
		33.430092, 30.344034, 46.276516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924294, 29.206011, 45.705261>,  <33.597305, 29.785587, 45.888992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924294, 29.206011, 45.705261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.588509, 29.016556, 45.598698>,  <33.387039, 28.902882, 45.534760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.588509, 29.016556, 45.598698>,  <33.924294, 29.206011, 45.705261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588509, 29.016556, 45.598698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026678, 0.453727, -0.890741,
		0.542767, -0.754849, -0.368250,
		-0.839460, -0.473641, -0.266405,
		33.336670, 28.874464, 45.518776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029072, 28.854008, 45.068924>,  <33.924294, 29.206011, 45.705261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029072, 28.854008, 45.068924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.634766, 28.910036, 45.106102>,  <33.398182, 28.943653, 45.128407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.634766, 28.910036, 45.106102>,  <34.029072, 28.854008, 45.068924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634766, 28.910036, 45.106102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050761, 0.279055, -0.958933,
		-0.160256, -0.950004, -0.267974,
		-0.985769, 0.140072, 0.092944,
		33.339035, 28.952057, 45.133984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826408, 28.625383, 44.407887>,  <34.029072, 28.854008, 45.068924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826408, 28.625383, 44.407887> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.497517, 28.798792, 44.555397>,  <33.300182, 28.902836, 44.643902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.497517, 28.798792, 44.555397>,  <33.826408, 28.625383, 44.407887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497517, 28.798792, 44.555397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145690, 0.466036, -0.872688,
		-0.550190, -0.771279, -0.320030,
		-0.822232, 0.433519, 0.368776,
		33.250847, 28.928848, 44.666031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392403, 28.408081, 43.976768>,  <33.826408, 28.625383, 44.407887>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392403, 28.408081, 43.976768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.214996, 28.729406, 44.135754>,  <33.108551, 28.922201, 44.231144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.214996, 28.729406, 44.135754>,  <33.392403, 28.408081, 43.976768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214996, 28.729406, 44.135754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304951, 0.281754, -0.909736,
		-0.842792, -0.524690, 0.120010,
		-0.443516, 0.803315, 0.397465,
		33.081940, 28.970402, 44.254993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863068, 28.394373, 43.452675>,  <33.392403, 28.408081, 43.976768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863068, 28.394373, 43.452675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.854034, 28.741642, 43.650974>,  <32.848614, 28.950003, 43.769955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.854034, 28.741642, 43.650974>,  <32.863068, 28.394373, 43.452675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854034, 28.741642, 43.650974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257186, 0.474140, -0.842049,
		-0.966098, -0.146518, 0.212573,
		-0.022586, 0.868173, 0.495748,
		32.847260, 29.002094, 43.799698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387428, 28.699705, 43.129921>,  <32.863068, 28.394373, 43.452675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387428, 28.699705, 43.129921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.611740, 28.977812, 43.309757>,  <32.746326, 29.144676, 43.417660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.611740, 28.977812, 43.309757>,  <32.387428, 28.699705, 43.129921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611740, 28.977812, 43.309757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208413, 0.644056, -0.736041,
		-0.801306, 0.319056, 0.506076,
		0.560780, 0.695266, 0.449590,
		32.779972, 29.186392, 43.444633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046146, 29.287268, 43.200562>,  <32.387428, 28.699705, 43.129921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046146, 29.287268, 43.200562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.422813, 29.421402, 43.211979>,  <32.648815, 29.501883, 43.218830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.422813, 29.421402, 43.211979>,  <32.046146, 29.287268, 43.200562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422813, 29.421402, 43.211979> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209511, 0.650473, -0.730062,
		-0.263379, 0.681495, 0.682785,
		0.941667, 0.335334, 0.028541,
		32.705315, 29.522001, 43.220543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.978172, 26.708073, 47.285271> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.863983, 27.002048, 47.531319>,  <36.795471, 27.178434, 47.678947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.863983, 27.002048, 47.531319>,  <36.978172, 26.708073, 47.285271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863983, 27.002048, 47.531319> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476608, 0.665700, -0.574185,
		-0.831476, 0.129257, -0.540316,
		-0.285471, 0.734939, 0.615118,
		36.778343, 27.222530, 47.715855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436478, 27.124664, 46.985451>,  <36.978172, 26.708073, 47.285271>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436478, 27.124664, 46.985451> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.706318, 27.319420, 47.207390>,  <36.868221, 27.436274, 47.340553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.706318, 27.319420, 47.207390>,  <36.436478, 27.124664, 46.985451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706318, 27.319420, 47.207390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317046, 0.487676, -0.813421,
		-0.666631, 0.724646, 0.174620,
		0.674600, 0.486889, 0.554846,
		36.908699, 27.465487, 47.373844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383091, 27.859932, 46.931660>,  <36.436478, 27.124664, 46.985451>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383091, 27.859932, 46.931660> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.766903, 27.772976, 47.003262>,  <36.997192, 27.720802, 47.046223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.766903, 27.772976, 47.003262>,  <36.383091, 27.859932, 46.931660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766903, 27.772976, 47.003262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261041, 0.448227, -0.854957,
		0.105625, 0.867084, 0.486835,
		0.959532, -0.217388, 0.179000,
		37.054764, 27.707760, 47.056961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816486, 28.501591, 46.862373>,  <36.383091, 27.859932, 46.931660>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816486, 28.501591, 46.862373> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.085426, 28.210009, 46.810879>,  <37.246788, 28.035059, 46.779984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.085426, 28.210009, 46.810879>,  <36.816486, 28.501591, 46.862373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085426, 28.210009, 46.810879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466220, 0.552091, -0.691256,
		0.574967, 0.404746, 0.711051,
		0.672348, -0.728955, -0.128733,
		37.287132, 27.991322, 46.772259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462341, 28.758314, 46.981487>,  <36.816486, 28.501591, 46.862373>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462341, 28.758314, 46.981487> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.480091, 28.440859, 46.738777>,  <37.490742, 28.250385, 46.593151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.480091, 28.440859, 46.738777>,  <37.462341, 28.758314, 46.981487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.480091, 28.440859, 46.738777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480968, 0.549317, -0.683315,
		0.875614, -0.261519, 0.406088,
		0.044371, -0.793636, -0.606772,
		37.493404, 28.202768, 46.556744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066166, 28.806427, 46.711082>,  <37.462341, 28.758314, 46.981487>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066166, 28.806427, 46.711082> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.907562, 28.543667, 46.454563>,  <37.812401, 28.386011, 46.300652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.907562, 28.543667, 46.454563>,  <38.066166, 28.806427, 46.711082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907562, 28.543667, 46.454563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484272, 0.443794, -0.754008,
		0.779912, -0.609533, 0.142150,
		-0.396508, -0.656899, -0.641300,
		37.788609, 28.346598, 46.262173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.529900, 28.798347, 46.160458>,  <38.066166, 28.806427, 46.711082>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.529900, 28.798347, 46.160458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.219086, 28.600536, 46.004684>,  <38.032597, 28.481850, 45.911221>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.219086, 28.600536, 46.004684>,  <38.529900, 28.798347, 46.160458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219086, 28.600536, 46.004684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343006, 0.186091, -0.920716,
		0.527790, -0.849006, 0.025027,
		-0.777036, -0.494529, -0.389431,
		37.985973, 28.452177, 45.887856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801876, 28.507847, 45.517975>,  <38.529900, 28.798347, 46.160458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801876, 28.507847, 45.517975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.404621, 28.499739, 45.471897>,  <38.166267, 28.494875, 45.444252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.404621, 28.499739, 45.471897>,  <38.801876, 28.507847, 45.517975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404621, 28.499739, 45.471897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107265, 0.234843, -0.966097,
		0.046633, -0.971822, -0.231057,
		-0.993136, -0.020268, -0.115194,
		38.106682, 28.493658, 45.437340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724823, 28.046135, 45.035511>,  <38.801876, 28.507847, 45.517975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724823, 28.046135, 45.035511> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.374077, 28.237717, 45.018990>,  <38.163628, 28.352665, 45.009079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.374077, 28.237717, 45.018990>,  <38.724823, 28.046135, 45.035511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374077, 28.237717, 45.018990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124710, 0.143664, -0.981737,
		-0.464274, -0.866005, -0.185704,
		-0.876868, 0.478954, -0.041300,
		38.111015, 28.381403, 45.006599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582172, 27.933016, 44.424469>,  <38.724823, 28.046135, 45.035511>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582172, 27.933016, 44.424469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.328159, 28.234169, 44.493629>,  <38.175751, 28.414862, 44.535126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.328159, 28.234169, 44.493629>,  <38.582172, 27.933016, 44.424469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328159, 28.234169, 44.493629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135090, 0.328612, -0.934754,
		-0.760580, -0.570243, -0.310388,
		-0.635035, 0.752885, 0.172902,
		38.137650, 28.460035, 44.545502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213512, 27.975607, 43.916084>,  <38.582172, 27.933016, 44.424469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213512, 27.975607, 43.916084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.190887, 28.346382, 44.064453>,  <38.177315, 28.568848, 44.153473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.190887, 28.346382, 44.064453>,  <38.213512, 27.975607, 43.916084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190887, 28.346382, 44.064453> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124491, 0.375165, -0.918560,
		-0.990607, -0.005777, -0.136615,
		-0.056560, 0.926940, 0.370922,
		38.173920, 28.624464, 44.175732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744698, 28.389458, 43.529644>,  <38.213512, 27.975607, 43.916084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744698, 28.389458, 43.529644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.994556, 28.645529, 43.708527>,  <38.144470, 28.799171, 43.815857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.994556, 28.645529, 43.708527>,  <37.744698, 28.389458, 43.529644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994556, 28.645529, 43.708527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242418, 0.385417, -0.890330,
		-0.742328, 0.664551, 0.085559,
		0.624646, 0.640176, 0.447205,
		38.181950, 28.837582, 43.842690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038944, 28.171703, 43.613415>,  <37.744698, 28.389458, 43.529644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038944, 28.171703, 43.613415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.742760, 28.012819, 43.396549>,  <36.565048, 27.917490, 43.266430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.742760, 28.012819, 43.396549>,  <37.038944, 28.171703, 43.613415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742760, 28.012819, 43.396549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184600, -0.655452, 0.732328,
		-0.646249, 0.642345, 0.412013,
		-0.740463, -0.397209, -0.542162,
		36.520622, 27.893656, 43.233902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480228, 28.200500, 44.089478>,  <37.038944, 28.171703, 43.613415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480228, 28.200500, 44.089478> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.425499, 27.921309, 43.808308>,  <36.392662, 27.753794, 43.639606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.425499, 27.921309, 43.808308>,  <36.480228, 28.200500, 44.089478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425499, 27.921309, 43.808308> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261217, -0.659061, 0.705269,
		-0.955535, 0.280110, -0.092152,
		-0.136820, -0.697981, -0.702925,
		36.384453, 27.711914, 43.597431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684887, 27.904079, 44.203659>,  <36.480228, 28.200500, 44.089478>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684887, 27.904079, 44.203659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.881187, 27.647297, 43.968014>,  <35.998966, 27.493227, 43.826626>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.881187, 27.647297, 43.968014>,  <35.684887, 27.904079, 44.203659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881187, 27.647297, 43.968014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307718, -0.760259, 0.572115,
		-0.815153, -0.099485, -0.570639,
		0.490751, -0.641957, -0.589114,
		36.028412, 27.454710, 43.791279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236847, 27.433067, 43.993637>,  <35.684887, 27.904079, 44.203659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236847, 27.433067, 43.993637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.608517, 27.288006, 44.022243>,  <35.831520, 27.200970, 44.039406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.608517, 27.288006, 44.022243>,  <35.236847, 27.433067, 43.993637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608517, 27.288006, 44.022243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295748, -0.613334, 0.732362,
		-0.221730, -0.701644, -0.677149,
		0.929177, -0.362653, 0.071516,
		35.887268, 27.179211, 44.043697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193222, 26.737247, 43.906242>,  <35.236847, 27.433067, 43.993637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193222, 26.737247, 43.906242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.558372, 26.773142, 44.065540>,  <35.777462, 26.794678, 44.161121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.558372, 26.773142, 44.065540>,  <35.193222, 26.737247, 43.906242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558372, 26.773142, 44.065540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141610, -0.845360, 0.515085,
		0.382885, -0.526605, -0.759003,
		0.912878, 0.089736, 0.398248,
		35.832237, 26.800062, 44.185013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326122, 26.017246, 44.011799>,  <35.193222, 26.737247, 43.906242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326122, 26.017246, 44.011799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.555027, 26.226997, 44.264000>,  <35.692371, 26.352848, 44.415321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.555027, 26.226997, 44.264000>,  <35.326122, 26.017246, 44.011799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555027, 26.226997, 44.264000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189507, -0.663476, 0.723800,
		0.797873, -0.533690, -0.280310,
		0.572264, 0.524380, 0.630507,
		35.726707, 26.384312, 44.453152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545448, 25.478910, 44.371841>,  <35.326122, 26.017246, 44.011799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545448, 25.478910, 44.371841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.618084, 25.782927, 44.621437>,  <35.661667, 25.965336, 44.771194>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.618084, 25.782927, 44.621437>,  <35.545448, 25.478910, 44.371841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618084, 25.782927, 44.621437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272819, -0.570691, 0.774520,
		0.944772, -0.310881, 0.103722,
		0.181591, 0.760042, 0.623988,
		35.672562, 26.010939, 44.808632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926376, 25.200991, 44.870350>,  <35.545448, 25.478910, 44.371841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926376, 25.200991, 44.870350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.784058, 25.544762, 45.017208>,  <35.698666, 25.751024, 45.105324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.784058, 25.544762, 45.017208>,  <35.926376, 25.200991, 44.870350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784058, 25.544762, 45.017208> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255509, -0.467337, 0.846352,
		0.898959, 0.207317, 0.385867,
		-0.355793, 0.859428, 0.367146,
		35.677319, 25.802589, 45.127354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976418, 25.062241, 45.607449>,  <35.926376, 25.200991, 44.870350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976418, 25.062241, 45.607449> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.734806, 25.381016, 45.610016>,  <35.589840, 25.572281, 45.611557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.734806, 25.381016, 45.610016>,  <35.976418, 25.062241, 45.607449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734806, 25.381016, 45.610016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407106, -0.315465, 0.857174,
		0.685140, 0.515141, 0.514987,
		-0.604026, 0.796938, 0.006421,
		35.553596, 25.620098, 45.611942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960777, 25.354803, 46.311691>,  <35.976418, 25.062241, 45.607449>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960777, 25.354803, 46.311691> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.624214, 25.450127, 46.117683>,  <35.422276, 25.507320, 46.001278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.624214, 25.450127, 46.117683>,  <35.960777, 25.354803, 46.311691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624214, 25.450127, 46.117683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540322, -0.355313, 0.762761,
		0.009440, 0.903858, 0.427727,
		-0.841405, 0.238311, -0.485021,
		35.371792, 25.521620, 45.972176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513298, 25.811935, 46.721081>,  <35.960777, 25.354803, 46.311691>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513298, 25.811935, 46.721081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.272991, 25.642992, 46.449585>,  <35.128807, 25.541626, 46.286686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.272991, 25.642992, 46.449585>,  <35.513298, 25.811935, 46.721081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272991, 25.642992, 46.449585> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594961, -0.330862, 0.732497,
		-0.533945, 0.843887, -0.052513,
		-0.600770, -0.422356, -0.678742,
		35.092762, 25.516285, 46.245964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854622, 25.983150, 46.950684>,  <35.513298, 25.811935, 46.721081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854622, 25.983150, 46.950684> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.755795, 25.697763, 46.688412>,  <34.696499, 25.526531, 46.531048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.755795, 25.697763, 46.688412>,  <34.854622, 25.983150, 46.950684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.755795, 25.697763, 46.688412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714108, -0.323323, 0.620896,
		-0.654988, 0.621631, -0.429612,
		-0.247065, -0.713469, -0.655684,
		34.681675, 25.483723, 46.491707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178917, 26.026436, 46.884014>,  <34.854622, 25.983150, 46.950684>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178917, 26.026436, 46.884014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.271225, 25.657557, 46.759888>,  <34.326611, 25.436230, 46.685413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.271225, 25.657557, 46.759888>,  <34.178917, 26.026436, 46.884014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271225, 25.657557, 46.759888> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651821, -0.383309, 0.654373,
		-0.722408, 0.051260, -0.689564,
		0.230773, -0.922197, -0.310318,
		34.340458, 25.380898, 46.666794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588459, 25.742645, 47.049477>,  <34.178917, 26.026436, 46.884014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588459, 25.742645, 47.049477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.815758, 25.418667, 46.991394>,  <33.952137, 25.224279, 46.956543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.815758, 25.418667, 46.991394>,  <33.588459, 25.742645, 47.049477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815758, 25.418667, 46.991394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475746, -0.467365, 0.745141,
		-0.671388, -0.354342, -0.650907,
		0.568246, -0.809945, -0.145206,
		33.986233, 25.175684, 46.947834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898788, 26.190367, 47.072701>,  <33.588459, 25.742645, 47.049477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898788, 26.190367, 47.072701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.950695, 26.523266, 47.288303>,  <32.981838, 26.723005, 47.417664>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.950695, 26.523266, 47.288303>,  <32.898788, 26.190367, 47.072701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.950695, 26.523266, 47.288303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044114, 0.547908, -0.835375,
		-0.990562, 0.084629, 0.107815,
		0.129769, 0.832247, 0.539004,
		32.989624, 26.772940, 47.450005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551399, 26.557837, 46.666782>,  <32.898788, 26.190367, 47.072701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551399, 26.557837, 46.666782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.770023, 26.805384, 46.892445>,  <32.901199, 26.953913, 47.027843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.770023, 26.805384, 46.892445>,  <32.551399, 26.557837, 46.666782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770023, 26.805384, 46.892445> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210238, 0.753515, -0.622908,
		-0.810599, 0.221850, 0.541952,
		0.546561, 0.618868, 0.564157,
		32.933990, 26.991043, 47.061691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256462, 27.238489, 46.578339>,  <32.551399, 26.557837, 46.666782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256462, 27.238489, 46.578339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.617619, 27.298559, 46.739452>,  <32.834312, 27.334600, 46.836121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.617619, 27.298559, 46.739452>,  <32.256462, 27.238489, 46.578339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617619, 27.298559, 46.739452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096510, 0.842259, -0.530364,
		-0.418897, 0.517734, 0.745974,
		0.902890, 0.150174, 0.402786,
		32.888485, 27.343611, 46.860287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.222965, 27.874897, 46.984005>,  <32.256462, 27.238489, 46.578339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.222965, 27.874897, 46.984005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.598610, 27.820974, 46.857582>,  <32.823997, 27.788620, 46.781727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.598610, 27.820974, 46.857582>,  <32.222965, 27.874897, 46.984005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598610, 27.820974, 46.857582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079627, 0.809403, -0.581830,
		0.334255, 0.571571, 0.749386,
		0.939113, -0.134808, -0.316060,
		32.880344, 27.780533, 46.762764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520393, 28.549379, 46.943974>,  <32.222965, 27.874897, 46.984005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520393, 28.549379, 46.943974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.752079, 28.310490, 46.722042>,  <32.891090, 28.167156, 46.588882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.752079, 28.310490, 46.722042>,  <32.520393, 28.549379, 46.943974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752079, 28.310490, 46.722042> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069778, 0.714451, -0.696197,
		0.812184, 0.364532, 0.455493,
		0.579213, -0.597223, -0.554830,
		32.925842, 28.131323, 46.555592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931347, 29.043312, 46.631462>,  <32.520393, 28.549379, 46.943974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931347, 29.043312, 46.631462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.015141, 28.715189, 46.418591>,  <33.065418, 28.518316, 46.290867>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.015141, 28.715189, 46.418591>,  <32.931347, 29.043312, 46.631462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015141, 28.715189, 46.418591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244069, 0.570894, -0.783907,
		0.946861, 0.034330, 0.319806,
		0.209487, -0.820306, -0.532178,
		33.077988, 28.469097, 46.258938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535416, 29.115665, 46.298801>,  <32.931347, 29.043312, 46.631462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535416, 29.115665, 46.298801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.379234, 28.830122, 46.066269>,  <33.285526, 28.658796, 45.926750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.379234, 28.830122, 46.066269>,  <33.535416, 29.115665, 46.298801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379234, 28.830122, 46.066269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055263, 0.612145, -0.788812,
		0.918963, -0.340120, -0.199564,
		-0.390453, -0.713860, -0.581334,
		33.262100, 28.615963, 45.891869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.897778, 29.707184, 46.651657>,  <33.535416, 29.115665, 46.298801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.897778, 29.707184, 46.651657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.629997, 30.001747, 46.690739>,  <33.469330, 30.178484, 46.714188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.629997, 30.001747, 46.690739>,  <33.897778, 29.707184, 46.651657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629997, 30.001747, 46.690739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138370, -0.252833, 0.957564,
		0.729860, 0.627519, 0.271154,
		-0.669446, 0.736407, 0.097703,
		33.429165, 30.222670, 46.720051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088230, 29.980490, 47.328526>,  <33.897778, 29.707184, 46.651657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088230, 29.980490, 47.328526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.723885, 30.125805, 47.250191>,  <33.505280, 30.212994, 47.203190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.723885, 30.125805, 47.250191>,  <34.088230, 29.980490, 47.328526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723885, 30.125805, 47.250191> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292363, -0.233061, 0.927473,
		0.291297, 0.902056, 0.318498,
		-0.910862, 0.363287, -0.195838,
		33.450626, 30.234791, 47.191441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982578, 30.501270, 47.838425>,  <34.088230, 29.980490, 47.328526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982578, 30.501270, 47.838425> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.637779, 30.365057, 47.688221>,  <33.430901, 30.283329, 47.598099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.637779, 30.365057, 47.688221>,  <33.982578, 30.501270, 47.838425>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637779, 30.365057, 47.688221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272175, -0.314022, 0.909566,
		-0.427654, 0.886244, 0.178000,
		-0.861993, -0.340532, -0.375506,
		33.379181, 30.262897, 47.575569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511772, 30.719608, 48.303879>,  <33.982578, 30.501270, 47.838425>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511772, 30.719608, 48.303879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.354839, 30.402519, 48.117256>,  <33.260681, 30.212267, 48.005283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.354839, 30.402519, 48.117256>,  <33.511772, 30.719608, 48.303879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354839, 30.402519, 48.117256> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111715, -0.462401, 0.879605,
		-0.913016, 0.397214, 0.092854,
		-0.392327, -0.792721, -0.466554,
		33.237141, 30.164703, 47.977291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110157, 30.404715, 48.862473>,  <33.511772, 30.719608, 48.303879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110157, 30.404715, 48.862473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.101322, 30.106606, 48.595917>,  <33.096020, 29.927740, 48.435982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.101322, 30.106606, 48.595917>,  <33.110157, 30.404715, 48.862473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101322, 30.106606, 48.595917> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185333, -0.658055, 0.729805,
		-0.982428, -0.107386, 0.152658,
		-0.022087, -0.745273, -0.666393,
		33.094696, 29.883024, 48.396000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525684, 30.009569, 48.952816>,  <33.110157, 30.404715, 48.862473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525684, 30.009569, 48.952816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.783222, 29.762215, 48.772564>,  <32.937744, 29.613802, 48.664413>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.783222, 29.762215, 48.772564>,  <32.525684, 30.009569, 48.952816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783222, 29.762215, 48.772564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052665, -0.623352, 0.780166,
		-0.763345, -0.478571, -0.433906,
		0.643841, -0.618388, -0.450629,
		32.976376, 29.576698, 48.637375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274582, 29.304724, 49.139114>,  <32.525684, 30.009569, 48.952816>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274582, 29.304724, 49.139114> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.651512, 29.254152, 49.015152>,  <32.877670, 29.223808, 48.940777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.651512, 29.254152, 49.015152>,  <32.274582, 29.304724, 49.139114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651512, 29.254152, 49.015152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187516, -0.567529, 0.801716,
		-0.277239, -0.813588, -0.511089,
		0.942325, -0.126430, -0.309902,
		32.934208, 29.216223, 48.922180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522907, 28.550007, 49.349815>,  <32.274582, 29.304724, 49.139114>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522907, 28.550007, 49.349815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.856678, 28.768045, 49.317303>,  <33.056938, 28.898869, 49.297794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.856678, 28.768045, 49.317303>,  <32.522907, 28.550007, 49.349815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.856678, 28.768045, 49.317303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282078, -0.295698, 0.912686,
		0.473466, -0.784495, -0.400497,
		0.834423, 0.545097, -0.081286,
		33.107006, 28.931574, 49.292915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.025330, 28.090649, 49.520164>,  <32.522907, 28.550007, 49.349815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.025330, 28.090649, 49.520164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.184868, 28.454504, 49.566608>,  <33.280590, 28.672817, 49.594475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.184868, 28.454504, 49.566608>,  <33.025330, 28.090649, 49.520164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184868, 28.454504, 49.566608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405322, -0.288448, 0.867474,
		0.822578, -0.298929, -0.483743,
		0.398847, 0.909637, 0.116108,
		33.304523, 28.727396, 49.601440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.065228, 37.746979, 35.958389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282696, 37.860836, 36.274212>,  <36.413177, 37.929150, 36.463707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.282696, 37.860836, 36.274212>,  <36.065228, 37.746979, 35.958389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282696, 37.860836, 36.274212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413920, -0.727443, 0.547263,
		0.730132, -0.624344, -0.277671,
		0.543670, 0.284641, 0.789558,
		36.445797, 37.946228, 36.511078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367466, 37.175213, 36.212685>,  <36.065228, 37.746979, 35.958389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367466, 37.175213, 36.212685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398674, 37.425282, 36.523315>,  <36.417397, 37.575325, 36.709694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.398674, 37.425282, 36.523315>,  <36.367466, 37.175213, 36.212685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.398674, 37.425282, 36.523315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366022, -0.706591, 0.605605,
		0.927330, -0.331492, 0.173701,
		0.078018, 0.625174, 0.776576,
		36.422081, 37.612835, 36.756287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.742847, 36.755817, 36.742596>,  <36.367466, 37.175213, 36.212685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.742847, 36.755817, 36.742596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539417, 37.053154, 36.916397>,  <36.417358, 37.231556, 37.020679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539417, 37.053154, 36.916397>,  <36.742847, 36.755817, 36.742596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539417, 37.053154, 36.916397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364001, -0.642946, 0.673887,
		0.780291, 0.184562, 0.597564,
		-0.508576, 0.743342, 0.434504,
		36.386845, 37.276157, 37.046749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800228, 36.632946, 37.442673>,  <36.742847, 36.755817, 36.742596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800228, 36.632946, 37.442673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488232, 36.883060, 37.452652>,  <36.301033, 37.033131, 37.458641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488232, 36.883060, 37.452652>,  <36.800228, 36.632946, 37.442673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488232, 36.883060, 37.452652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330298, -0.445231, 0.832269,
		0.531519, 0.640923, 0.553810,
		-0.779994, 0.625289, 0.024953,
		36.254234, 37.070648, 37.460136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745831, 36.774456, 38.135338>,  <36.800228, 36.632946, 37.442673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745831, 36.774456, 38.135338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395657, 36.881222, 37.974159>,  <36.185551, 36.945282, 37.877453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395657, 36.881222, 37.974159>,  <36.745831, 36.774456, 38.135338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395657, 36.881222, 37.974159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482731, -0.524308, 0.701479,
		-0.024030, 0.808614, 0.587848,
		-0.875439, 0.266916, -0.402942,
		36.133026, 36.961296, 37.853275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419205, 37.176540, 38.628296>,  <36.745831, 36.774456, 38.135338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419205, 37.176540, 38.628296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137802, 37.024036, 38.388390>,  <35.968960, 36.932533, 38.244446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137802, 37.024036, 38.388390>,  <36.419205, 37.176540, 38.628296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137802, 37.024036, 38.388390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469935, -0.383533, 0.795024,
		-0.533141, 0.841156, 0.090651,
		-0.703507, -0.381260, -0.599766,
		35.926750, 36.909660, 38.208458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845905, 37.252541, 38.972317>,  <36.419205, 37.176540, 38.628296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845905, 37.252541, 38.972317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738266, 36.972607, 38.707645>,  <35.673683, 36.804646, 38.548843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.738266, 36.972607, 38.707645>,  <35.845905, 37.252541, 38.972317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.738266, 36.972607, 38.707645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506221, -0.481688, 0.715344,
		-0.819345, 0.527452, -0.224651,
		-0.269098, -0.699837, -0.661676,
		35.657536, 36.762657, 38.509144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033825, 37.108528, 38.934566>,  <35.845905, 37.252541, 38.972317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033825, 37.108528, 38.934566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226433, 36.773266, 38.832092>,  <35.341999, 36.572109, 38.770607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226433, 36.773266, 38.832092>,  <35.033825, 37.108528, 38.934566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226433, 36.773266, 38.832092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550749, -0.516749, 0.655474,
		-0.681774, -0.174529, -0.710439,
		0.481518, -0.838159, -0.256185,
		35.370888, 36.521820, 38.755238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480087, 36.611561, 38.888084>,  <35.033825, 37.108528, 38.934566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480087, 36.611561, 38.888084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812069, 36.388657, 38.898144>,  <35.011257, 36.254913, 38.904179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812069, 36.388657, 38.898144>,  <34.480087, 36.611561, 38.888084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812069, 36.388657, 38.898144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476474, -0.684741, 0.551455,
		-0.290083, -0.469667, -0.833825,
		0.829954, -0.557264, 0.025152,
		35.061054, 36.221478, 38.905689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278053, 35.914848, 38.784756>,  <34.480087, 36.611561, 38.888084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278053, 35.914848, 38.784756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624939, 35.913734, 38.983925>,  <34.833073, 35.913067, 39.103428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.624939, 35.913734, 38.983925>,  <34.278053, 35.914848, 38.784756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624939, 35.913734, 38.983925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341088, -0.731847, 0.589965,
		0.362761, -0.681463, -0.635619,
		0.867216, -0.002786, 0.497925,
		34.885105, 35.912899, 39.133301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355499, 35.249767, 39.034622>,  <34.278053, 35.914848, 38.784756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355499, 35.249767, 39.034622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654240, 35.426704, 39.233234>,  <34.833485, 35.532867, 39.352402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.654240, 35.426704, 39.233234>,  <34.355499, 35.249767, 39.034622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.654240, 35.426704, 39.233234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085810, -0.676328, 0.731585,
		0.659430, -0.588994, -0.467160,
		0.746853, 0.442342, 0.496533,
		34.878296, 35.559406, 39.382195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730480, 34.688499, 39.295944>,  <34.355499, 35.249767, 39.034622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730480, 34.688499, 39.295944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838528, 35.003052, 39.518166>,  <34.903355, 35.191784, 39.651497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838528, 35.003052, 39.518166>,  <34.730480, 34.688499, 39.295944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838528, 35.003052, 39.518166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118935, -0.545328, 0.829742,
		0.955454, -0.290201, -0.053774,
		0.270116, 0.786384, 0.555551,
		34.919563, 35.238968, 39.684830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183041, 34.115761, 39.091763>,  <34.730480, 34.688499, 39.295944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183041, 34.115761, 39.091763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933598, 33.814320, 39.008621>,  <34.783932, 33.633457, 38.958736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933598, 33.814320, 39.008621>,  <35.183041, 34.115761, 39.091763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933598, 33.814320, 39.008621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159040, 0.138021, -0.977577,
		0.765389, -0.642681, 0.033782,
		-0.623607, -0.753599, -0.207852,
		34.746517, 33.588242, 38.946266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504730, 33.608273, 38.602390>,  <35.183041, 34.115761, 39.091763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504730, 33.608273, 38.602390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106548, 33.588196, 38.570015>,  <34.867638, 33.576149, 38.550591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.106548, 33.588196, 38.570015>,  <35.504730, 33.608273, 38.602390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106548, 33.588196, 38.570015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078872, 0.041945, -0.996002,
		0.053388, -0.997858, -0.037795,
		-0.995454, -0.050194, -0.080943,
		34.807911, 33.573135, 38.545731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292671, 33.150745, 38.016262>,  <35.504730, 33.608273, 38.602390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292671, 33.150745, 38.016262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974396, 33.384602, 38.079605>,  <34.783428, 33.524914, 38.117611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.974396, 33.384602, 38.079605>,  <35.292671, 33.150745, 38.016262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974396, 33.384602, 38.079605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035005, 0.305397, -0.951582,
		-0.604692, -0.751621, -0.263466,
		-0.795690, 0.584636, 0.158361,
		34.735687, 33.559994, 38.127113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805157, 32.959297, 37.527489>,  <35.292671, 33.150745, 38.016262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805157, 32.959297, 37.527489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637749, 33.300106, 37.653290>,  <34.537304, 33.504589, 37.728771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.637749, 33.300106, 37.653290>,  <34.805157, 32.959297, 37.527489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.637749, 33.300106, 37.653290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209965, 0.246134, -0.946220,
		-0.883605, -0.462043, 0.075883,
		-0.418517, 0.852018, 0.314498,
		34.512192, 33.555710, 37.747639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122089, 32.946629, 37.167805>,  <34.805157, 32.959297, 37.527489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122089, 32.946629, 37.167805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175285, 33.329140, 37.271999>,  <34.207203, 33.558647, 37.334518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175285, 33.329140, 37.271999>,  <34.122089, 32.946629, 37.167805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175285, 33.329140, 37.271999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469604, 0.292248, -0.833105,
		-0.872803, -0.011531, 0.487936,
		0.132991, 0.956273, 0.260490,
		34.215183, 33.616020, 37.350147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546909, 33.321667, 37.044178>,  <34.122089, 32.946629, 37.167805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546909, 33.321667, 37.044178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836441, 33.597610, 37.049248>,  <34.010162, 33.763176, 37.052292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.836441, 33.597610, 37.049248>,  <33.546909, 33.321667, 37.044178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836441, 33.597610, 37.049248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420333, 0.455453, -0.784782,
		-0.547162, 0.562723, 0.619642,
		0.723833, 0.689859, 0.012676,
		34.053593, 33.804569, 37.053051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207535, 33.955982, 37.015575>,  <33.546909, 33.321667, 37.044178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207535, 33.955982, 37.015575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577831, 34.018364, 36.877777>,  <33.800011, 34.055794, 36.795097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577831, 34.018364, 36.877777>,  <33.207535, 33.955982, 37.015575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577831, 34.018364, 36.877777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376772, 0.458012, -0.805151,
		0.032218, 0.875160, 0.482760,
		0.925745, 0.155950, -0.344492,
		33.855556, 34.065147, 36.774429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207829, 34.630283, 36.730904>,  <33.207535, 33.955982, 37.015575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207829, 34.630283, 36.730904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556602, 34.505909, 36.579617>,  <33.765865, 34.431286, 36.488846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556602, 34.505909, 36.579617>,  <33.207829, 34.630283, 36.730904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556602, 34.505909, 36.579617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189497, 0.497965, -0.846240,
		0.451464, 0.809538, 0.375273,
		0.871936, -0.310933, -0.378218,
		33.818184, 34.412628, 36.466152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530235, 35.172989, 36.369991>,  <33.207829, 34.630283, 36.730904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530235, 35.172989, 36.369991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721199, 34.859982, 36.210121>,  <33.835777, 34.672176, 36.114201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721199, 34.859982, 36.210121>,  <33.530235, 35.172989, 36.369991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721199, 34.859982, 36.210121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049748, 0.430059, -0.901429,
		0.877270, 0.450236, 0.166386,
		0.477411, -0.782520, -0.399676,
		33.864422, 34.625225, 36.090218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010002, 35.458725, 35.963482>,  <33.530235, 35.172989, 36.369991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010002, 35.458725, 35.963482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001423, 35.085964, 35.818657>,  <33.996277, 34.862309, 35.731762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001423, 35.085964, 35.818657>,  <34.010002, 35.458725, 35.963482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001423, 35.085964, 35.818657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008228, 0.362302, -0.932024,
		0.999736, -0.017010, -0.015438,
		-0.021447, -0.931906, -0.362066,
		33.994987, 34.806393, 35.710037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423939, 35.516304, 35.438641>,  <34.010002, 35.458725, 35.963482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423939, 35.516304, 35.438641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217957, 35.181408, 35.365051>,  <34.094368, 34.980469, 35.320896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.217957, 35.181408, 35.365051>,  <34.423939, 35.516304, 35.438641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.217957, 35.181408, 35.365051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147160, 0.125089, -0.981171,
		0.844490, -0.532335, 0.058793,
		-0.514957, -0.837241, -0.183975,
		34.063469, 34.930237, 35.309860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794765, 35.187229, 34.917179>,  <34.423939, 35.516304, 35.438641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794765, 35.187229, 34.917179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421730, 35.047260, 34.881786>,  <34.197906, 34.963280, 34.860550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421730, 35.047260, 34.881786>,  <34.794765, 35.187229, 34.917179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421730, 35.047260, 34.881786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019428, 0.196118, -0.980388,
		0.360411, -0.916020, -0.176100,
		-0.932591, -0.349921, -0.088479,
		34.141953, 34.942284, 34.855244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708679, 34.818542, 34.268658>,  <34.794765, 35.187229, 34.917179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708679, 34.818542, 34.268658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329803, 34.870350, 34.386005>,  <34.102478, 34.901436, 34.456413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329803, 34.870350, 34.386005>,  <34.708679, 34.818542, 34.268658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329803, 34.870350, 34.386005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260169, 0.224501, -0.939101,
		-0.187494, -0.965828, -0.178947,
		-0.947184, 0.129519, 0.293371,
		34.045647, 34.909206, 34.474018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194897, 34.388371, 33.892773>,  <34.708679, 34.818542, 34.268658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194897, 34.388371, 33.892773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013046, 34.725697, 34.007412>,  <33.903934, 34.928093, 34.076195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013046, 34.725697, 34.007412>,  <34.194897, 34.388371, 33.892773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013046, 34.725697, 34.007412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163267, 0.237416, -0.957589,
		-0.875591, -0.482136, 0.029750,
		-0.454625, 0.843314, 0.286596,
		33.876659, 34.978691, 34.093391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398190, 33.895180, 34.457989>,  <34.194897, 34.388371, 33.892773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398190, 33.895180, 34.457989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715637, 33.867012, 34.216259>,  <34.906105, 33.850113, 34.071220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715637, 33.867012, 34.216259>,  <34.398190, 33.895180, 34.457989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715637, 33.867012, 34.216259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032104, -0.996743, 0.073980,
		-0.607566, -0.039311, -0.793296,
		0.793620, -0.070416, -0.604325,
		34.953724, 33.845886, 34.034962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240673, 33.332596, 33.976219>,  <34.398190, 33.895180, 34.457989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240673, 33.332596, 33.976219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625641, 33.390198, 34.068310>,  <34.856621, 33.424759, 34.123566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625641, 33.390198, 34.068310>,  <34.240673, 33.332596, 33.976219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625641, 33.390198, 34.068310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081389, -0.961807, 0.261349,
		0.259072, -0.232790, -0.937385,
		0.962423, 0.144001, 0.230231,
		34.914368, 33.433399, 34.137379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682449, 32.797604, 33.640064>,  <34.240673, 33.332596, 33.976219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682449, 32.797604, 33.640064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819019, 32.959946, 33.979172>,  <34.900959, 33.057350, 34.182636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819019, 32.959946, 33.979172>,  <34.682449, 32.797604, 33.640064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819019, 32.959946, 33.979172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159038, -0.913910, 0.373465,
		0.926357, 0.007318, -0.376575,
		0.341422, 0.405852, 0.847771,
		34.921448, 33.081699, 34.233501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370316, 32.440296, 33.782906>,  <34.682449, 32.797604, 33.640064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370316, 32.440296, 33.782906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280003, 32.603390, 34.136803>,  <35.225815, 32.701244, 34.349140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.280003, 32.603390, 34.136803>,  <35.370316, 32.440296, 33.782906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280003, 32.603390, 34.136803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332924, -0.821221, 0.463419,
		0.915524, 0.399184, 0.049671,
		-0.225780, 0.407734, 0.884746,
		35.212269, 32.725712, 34.402225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949089, 32.259033, 34.185654>,  <35.370316, 32.440296, 33.782906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949089, 32.259033, 34.185654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663380, 32.333420, 34.455540>,  <35.491955, 32.378052, 34.617470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663380, 32.333420, 34.455540>,  <35.949089, 32.259033, 34.185654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663380, 32.333420, 34.455540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291925, -0.797019, 0.528716,
		0.636080, 0.574611, 0.514999,
		-0.714270, 0.185964, 0.674712,
		35.449100, 32.389210, 34.657951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320858, 32.149380, 34.777084>,  <35.949089, 32.259033, 34.185654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320858, 32.149380, 34.777084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930748, 32.138790, 34.864838>,  <35.696682, 32.132435, 34.917488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.930748, 32.138790, 34.864838>,  <36.320858, 32.149380, 34.777084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930748, 32.138790, 34.864838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184554, -0.643611, 0.742769,
		0.121530, 0.764895, 0.632587,
		-0.975280, -0.026478, 0.219382,
		35.638165, 32.130848, 34.930653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.230373, 32.276112, 35.518730>,  <36.320858, 32.149380, 34.777084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.230373, 32.276112, 35.518730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873108, 32.123573, 35.423374>,  <35.658749, 32.032051, 35.366161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873108, 32.123573, 35.423374>,  <36.230373, 32.276112, 35.518730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873108, 32.123573, 35.423374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111490, -0.701282, 0.704112,
		-0.435684, 0.602313, 0.668879,
		-0.893168, -0.381344, -0.238386,
		35.605156, 32.009171, 35.351860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726368, 32.375698, 36.127983>,  <36.230373, 32.276112, 35.518730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726368, 32.375698, 36.127983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622761, 32.065132, 35.898170>,  <35.560596, 31.878792, 35.760284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622761, 32.065132, 35.898170>,  <35.726368, 32.375698, 36.127983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622761, 32.065132, 35.898170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151068, -0.620074, 0.769861,
		-0.953986, 0.112612, 0.277901,
		-0.259015, -0.776419, -0.574530,
		35.545055, 31.832207, 35.725811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072254, 32.168613, 36.345024>,  <35.726368, 32.375698, 36.127983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072254, 32.168613, 36.345024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255188, 31.849974, 36.186893>,  <35.364948, 31.658791, 36.092014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.255188, 31.849974, 36.186893>,  <35.072254, 32.168613, 36.345024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.255188, 31.849974, 36.186893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066104, -0.412856, 0.908394,
		-0.886837, -0.441568, -0.136154,
		0.457330, -0.796597, -0.395326,
		35.392387, 31.610994, 36.068295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789139, 31.624372, 36.774361>,  <35.072254, 32.168613, 36.345024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789139, 31.624372, 36.774361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090115, 31.436613, 36.589535>,  <35.270699, 31.323957, 36.478642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.090115, 31.436613, 36.589535>,  <34.789139, 31.624372, 36.774361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090115, 31.436613, 36.589535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014533, -0.689511, 0.724129,
		-0.658497, -0.551581, -0.511996,
		0.752443, -0.469396, -0.462057,
		35.315845, 31.295794, 36.450916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586632, 30.895304, 36.952946>,  <34.789139, 31.624372, 36.774361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586632, 30.895304, 36.952946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970104, 30.884762, 36.839645>,  <35.200188, 30.878437, 36.771664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.970104, 30.884762, 36.839645>,  <34.586632, 30.895304, 36.952946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970104, 30.884762, 36.839645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196321, -0.659288, 0.725808,
		-0.205872, -0.751428, -0.626875,
		0.958684, -0.026355, -0.283250,
		35.257710, 30.876856, 36.754669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759930, 30.153217, 36.945541>,  <34.586632, 30.895304, 36.952946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759930, 30.153217, 36.945541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097553, 30.365316, 36.977539>,  <35.300129, 30.492575, 36.996738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097553, 30.365316, 36.977539>,  <34.759930, 30.153217, 36.945541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097553, 30.365316, 36.977539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304926, -0.597295, 0.741795,
		0.441112, -0.601729, -0.665839,
		0.844062, 0.530247, 0.079991,
		35.350773, 30.524391, 37.001537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279015, 29.714167, 36.894783>,  <34.759930, 30.153217, 36.945541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279015, 29.714167, 36.894783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455490, 30.008263, 37.100609>,  <35.561375, 30.184721, 37.224106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455490, 30.008263, 37.100609>,  <35.279015, 29.714167, 36.894783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455490, 30.008263, 37.100609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334537, -0.666799, 0.665931,
		0.832731, -0.121657, -0.540147,
		0.441185, 0.735241, 0.514565,
		35.587845, 30.228834, 37.254978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882137, 29.420862, 37.066216>,  <35.279015, 29.714167, 36.894783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882137, 29.420862, 37.066216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802727, 29.714300, 37.326191>,  <35.755081, 29.890364, 37.482178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.802727, 29.714300, 37.326191>,  <35.882137, 29.420862, 37.066216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802727, 29.714300, 37.326191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422343, -0.534380, 0.732164,
		0.884428, 0.419854, -0.203739,
		-0.198528, 0.733594, 0.649943,
		35.743168, 29.934378, 37.521175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512573, 29.356745, 37.504562>,  <35.882137, 29.420862, 37.066216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512573, 29.356745, 37.504562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290855, 29.628365, 37.697083>,  <36.157825, 29.791336, 37.812595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.290855, 29.628365, 37.697083>,  <36.512573, 29.356745, 37.504562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290855, 29.628365, 37.697083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356181, -0.329111, 0.874540,
		0.752255, 0.656186, -0.059438,
		-0.554299, 0.679048, 0.481296,
		36.124565, 29.832079, 37.841473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.970654, 29.596714, 38.027763>,  <36.512573, 29.356745, 37.504562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.970654, 29.596714, 38.027763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601791, 29.684755, 38.155003>,  <36.380474, 29.737579, 38.231346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.601791, 29.684755, 38.155003>,  <36.970654, 29.596714, 38.027763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.601791, 29.684755, 38.155003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281491, -0.182216, 0.942104,
		0.265324, 0.958307, 0.106073,
		-0.922153, 0.220104, 0.318101,
		36.325146, 29.750786, 38.250435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043560, 30.027491, 38.636467>,  <36.970654, 29.596714, 38.027763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043560, 30.027491, 38.636467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675236, 29.871489, 38.637566>,  <36.454243, 29.777887, 38.638226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675236, 29.871489, 38.637566>,  <37.043560, 30.027491, 38.636467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675236, 29.871489, 38.637566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041611, -0.091227, 0.994960,
		-0.387788, 0.916283, 0.100231,
		-0.920809, -0.390004, 0.002750,
		36.398994, 29.754488, 38.638390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829254, 30.266949, 39.133621>,  <37.043560, 30.027491, 38.636467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829254, 30.266949, 39.133621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568146, 29.968422, 39.081631>,  <36.411480, 29.789305, 39.050438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568146, 29.968422, 39.081631>,  <36.829254, 30.266949, 39.133621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568146, 29.968422, 39.081631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020215, -0.154347, 0.987810,
		-0.757282, 0.647445, 0.085667,
		-0.652775, -0.746319, -0.129973,
		36.372314, 29.744526, 39.042641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388950, 30.286842, 39.814404>,  <36.829254, 30.266949, 39.133621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388950, 30.286842, 39.814404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359623, 29.935148, 39.626122>,  <36.342026, 29.724131, 39.513153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.359623, 29.935148, 39.626122>,  <36.388950, 30.286842, 39.814404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359623, 29.935148, 39.626122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148107, -0.457146, 0.876974,
		-0.986250, 0.134011, -0.096705,
		-0.073316, -0.879238, -0.470708,
		36.337627, 29.671377, 39.484909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852325, 29.888346, 40.068558>,  <36.388950, 30.286842, 39.814404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852325, 29.888346, 40.068558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058228, 29.597204, 39.887341>,  <36.181770, 29.422520, 39.778610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058228, 29.597204, 39.887341>,  <35.852325, 29.888346, 40.068558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058228, 29.597204, 39.887341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118652, -0.583831, 0.803158,
		-0.849086, -0.359676, -0.386892,
		0.514756, -0.727856, -0.453047,
		36.212654, 29.378847, 39.751427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460255, 29.249367, 40.128654>,  <35.852325, 29.888346, 40.068558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460255, 29.249367, 40.128654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847820, 29.156427, 40.094666>,  <36.080360, 29.100664, 40.074272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.847820, 29.156427, 40.094666>,  <35.460255, 29.249367, 40.128654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847820, 29.156427, 40.094666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035922, -0.471939, 0.880899,
		-0.244776, -0.850463, -0.465615,
		0.968914, -0.232349, -0.084968,
		36.138493, 29.086723, 40.069176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435020, 28.691788, 40.475971>,  <35.460255, 29.249367, 40.128654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435020, 28.691788, 40.475971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827141, 28.764681, 40.445507>,  <36.062412, 28.808416, 40.427227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827141, 28.764681, 40.445507>,  <35.435020, 28.691788, 40.475971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827141, 28.764681, 40.445507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154420, -0.466722, 0.870818,
		0.123145, -0.865425, -0.485669,
		0.980301, 0.182234, -0.076164,
		36.121231, 28.819351, 40.422657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794601, 28.089869, 40.562294>,  <35.435020, 28.691788, 40.475971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794601, 28.089869, 40.562294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054768, 28.381065, 40.648998>,  <36.210869, 28.555782, 40.701019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.054768, 28.381065, 40.648998>,  <35.794601, 28.089869, 40.562294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.054768, 28.381065, 40.648998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069168, -0.340952, 0.937532,
		0.756420, -0.594795, -0.272115,
		0.650418, 0.727990, 0.216762,
		36.249893, 28.599463, 40.714027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339577, 27.749266, 40.787758>,  <35.794601, 28.089869, 40.562294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339577, 27.749266, 40.787758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351177, 28.115246, 40.948769>,  <36.358135, 28.334833, 41.045376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351177, 28.115246, 40.948769>,  <36.339577, 27.749266, 40.787758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351177, 28.115246, 40.948769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179605, -0.400913, 0.898338,
		0.983311, 0.046247, -0.175954,
		0.028997, 0.914948, 0.402528,
		36.359875, 28.389730, 41.069527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017052, 27.857697, 41.139397>,  <36.339577, 27.749266, 40.787758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017052, 27.857697, 41.139397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746918, 28.086983, 41.325020>,  <36.584835, 28.224554, 41.436394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.746918, 28.086983, 41.325020>,  <37.017052, 27.857697, 41.139397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746918, 28.086983, 41.325020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314123, -0.345726, 0.884195,
		0.667268, 0.742899, 0.053422,
		-0.675337, 0.573214, 0.464054,
		36.544315, 28.258947, 41.464237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154049, 27.695454, 41.779327>,  <37.017052, 27.857697, 41.139397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154049, 27.695454, 41.779327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875790, 27.969820, 41.864738>,  <36.708836, 28.134439, 41.915985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875790, 27.969820, 41.864738>,  <37.154049, 27.695454, 41.779327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875790, 27.969820, 41.864738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028538, -0.323391, 0.945835,
		0.717817, 0.651874, 0.244540,
		-0.695647, 0.685915, 0.213532,
		36.667095, 28.175594, 41.928799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408981, 28.146347, 42.359661>,  <37.154049, 27.695454, 41.779327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408981, 28.146347, 42.359661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009262, 28.160408, 42.364964>,  <36.769432, 28.168844, 42.368145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009262, 28.160408, 42.364964>,  <37.408981, 28.146347, 42.359661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009262, 28.160408, 42.364964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001405, -0.317570, 0.948234,
		0.037540, 0.947583, 0.317296,
		-0.999294, 0.035151, 0.013253,
		36.709473, 28.170954, 42.368938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249138, 28.378372, 42.966698>,  <37.408981, 28.146347, 42.359661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249138, 28.378372, 42.966698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902153, 28.209122, 42.862019>,  <36.693962, 28.107573, 42.799213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902153, 28.209122, 42.862019>,  <37.249138, 28.378372, 42.966698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902153, 28.209122, 42.862019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104990, -0.358471, 0.927618,
		-0.486307, 0.832145, 0.266535,
		-0.867457, -0.423124, -0.261694,
		36.641914, 28.082184, 42.783512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586079, 29.014957, 43.241253>,  <37.249138, 28.378372, 42.966698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586079, 29.014957, 43.241253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936417, 29.116407, 43.405483>,  <38.146618, 29.177277, 43.504021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.936417, 29.116407, 43.405483>,  <37.586079, 29.014957, 43.241253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936417, 29.116407, 43.405483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209026, 0.567460, -0.796427,
		-0.434980, 0.783367, 0.443992,
		0.875843, 0.253624, 0.410578,
		38.199169, 29.192495, 43.528656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600109, 29.751841, 43.275723>,  <37.586079, 29.014957, 43.241253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600109, 29.751841, 43.275723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967609, 29.593906, 43.275482>,  <38.188110, 29.499146, 43.275337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967609, 29.593906, 43.275482>,  <37.600109, 29.751841, 43.275723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967609, 29.593906, 43.275482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254433, 0.593200, -0.763792,
		0.301928, 0.701582, 0.645463,
		0.918751, -0.394837, -0.000598,
		38.243237, 29.475454, 43.275303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129467, 30.358627, 43.262547>,  <37.600109, 29.751841, 43.275723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129467, 30.358627, 43.262547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318546, 30.025141, 43.148373>,  <38.431995, 29.825048, 43.079868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.318546, 30.025141, 43.148373>,  <38.129467, 30.358627, 43.262547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318546, 30.025141, 43.148373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361266, 0.478780, -0.800161,
		0.803768, 0.275117, 0.527512,
		0.472700, -0.833715, -0.285437,
		38.460358, 29.775026, 43.062740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847469, 30.543812, 43.079346>,  <38.129467, 30.358627, 43.262547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847469, 30.543812, 43.079346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775681, 30.192169, 42.902729>,  <38.732605, 29.981184, 42.796757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775681, 30.192169, 42.902729>,  <38.847469, 30.543812, 43.079346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775681, 30.192169, 42.902729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395057, 0.346645, -0.850745,
		0.900954, -0.327123, 0.285083,
		-0.179476, -0.879106, -0.441543,
		38.721836, 29.928438, 42.770267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551025, 30.400110, 42.623966>,  <38.847469, 30.543812, 43.079346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551025, 30.400110, 42.623966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262306, 30.159582, 42.486900>,  <39.089073, 30.015265, 42.404659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.262306, 30.159582, 42.486900>,  <39.551025, 30.400110, 42.623966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.262306, 30.159582, 42.486900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279473, 0.199715, -0.939153,
		0.633169, -0.773644, 0.023900,
		-0.721797, -0.601322, -0.342667,
		39.045769, 29.979185, 42.384102>
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
